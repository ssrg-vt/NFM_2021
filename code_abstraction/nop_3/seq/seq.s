	.section	.text
	.align	32
	#Procedure 0x4016e0

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
	mov	r8, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
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
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
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
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.8
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.8
	mov	ecx, OFFSET FLAT:.str.38
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401910

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x108
	mov	r14, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_1
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
	jmp	.label_13
.label_74:
	mov	byte ptr [byte ptr [rip + equal_width]],  1
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	nop	word ptr cs:[rax + rax]
.label_13:
	cmp	eax, ebp
	jge	.label_40
	movsxd	rcx, eax
	mov	rcx, qword ptr [r14 + rcx*8]
	movzx	edx, byte ptr [rcx]
	cmp	edx, 0x2d
	jne	.label_62
	movsx	ecx, byte ptr [rcx + 1]
	cmp	ecx, 0x2e
	je	.label_40
	add	ecx, -0x30
	cmp	ecx, 0xa
	jb	.label_40
.label_62:
	mov	edx, OFFSET FLAT:.str.13
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x65
	jle	.label_72
	cmp	eax, 0x66
	je	.label_73
	cmp	eax, 0x73
	je	.label_42
	cmp	eax, 0x77
	je	.label_74
	jmp	.label_12
.label_73:
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	jmp	.label_13
.label_42:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + separator]],  rax
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	jmp	.label_13
.label_72:
	cmp	eax, -1
	jne	.label_18
	mov	eax,  dword ptr [dword ptr [rip + optind]]
.label_40:
	cmp	eax, ebp
	je	.label_21
	mov	ecx, ebp
	sub	ecx, eax
	mov	qword ptr [rsp + 0x50], rcx
	cmp	ecx, 4
	jae	.label_23
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_61
	mov	dword ptr [rsp + 0x60], ebp
	xor	ebp, ebp
	jmp	.label_27
	nop	word ptr [rax + rax]
.label_31:
	movzx	eax, al
	cmp	eax, 0x25
	sete	al
	inc	r15
	movzx	eax, al
	lea	rbp, [rax + rbp + 1]
.label_27:
	movzx	eax, byte ptr [rbx + rbp]
	cmp	eax, 0x25
	jne	.label_30
	movzx	ecx, byte ptr [rbx + rbp + 1]
	cmp	ecx, 0x25
	je	.label_31
	jmp	.label_34
	nop	dword ptr [rax]
.label_30:
	test	al, al
	jne	.label_31
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44
	jmp	.label_26
.label_34:
	mov	qword ptr [rsp + 0x70], r14
	lea	rdi, [rbx + rbp + 1]
	inc	rbp
	mov	esi, OFFSET FLAT:.str.45
	call	strspn
	mov	r14, rax
	add	r14, rbp
	lea	rdi, [rbx + r14]
	mov	esi, OFFSET FLAT:.str.46
	call	strspn
	mov	r12, rax
	add	r12, r14
	movzx	eax, byte ptr [rbx + r12]
	cmp	eax, 0x2e
	jne	.label_45
	lea	rdi, [rbx + r12 + 1]
	mov	esi, OFFSET FLAT:.str.46
	call	strspn
	lea	r12, [rax + r12 + 1]
	mov	al, byte ptr [rbx + r12]
.label_45:
	movzx	eax, al
	cmp	eax, 0x4c
	sete	al
	movzx	eax, al
	lea	rbp, [rax + r12]
	movsx	esi, byte ptr [rbx + rbp]
	test	esi, esi
	je	.label_67
	mov	qword ptr [rsp + 0x40], rax
	mov	edi, OFFSET FLAT:.str.48
	mov	edx, 9
	call	memchr
	test	rax, rax
	je	.label_48
	lea	r13, [rbx + r12]
	inc	rbp
	xor	r14d, r14d
	jmp	.label_49
	nop	dword ptr [rax + rax]
.label_55:
	movzx	eax, al
	cmp	eax, 0x25
	sete	al
	inc	r14
	movzx	eax, al
	lea	rbp, [rax + rbp + 1]
.label_49:
	movzx	eax, byte ptr [rbx + rbp]
	cmp	eax, 0x25
	jne	.label_54
	movzx	ecx, byte ptr [rbp + rbx + 1]
	cmp	ecx, 0x25
	je	.label_55
	jmp	.label_56
	nop	dword ptr [rax]
.label_54:
	test	al, al
	jne	.label_55
	add	rbp, 2
	mov	rdi, rbp
	call	xmalloc
	mov	rbp, rax
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r12
	call	memcpy
	mov	byte ptr [rbp + r12], 0x4c
	lea	rdi, [rbp + r12 + 1]
	add	r13, qword ptr [rsp + 0x40]
	mov	rsi, r13
	call	strcpy
	xor	ebx, ebx
	test	rbp, rbp
	je	.label_63
	movzx	eax,  byte ptr [byte ptr [rip + equal_width]]
	and	eax, 1
	cmp	eax, 1
	je	.label_66
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
	mov	rbx, rbp
	jmp	.label_69
.label_61:
	mov	qword ptr [rsp + 0x70], r14
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	ebx, ebx
	xor	r14d, r14d
	jmp	.label_71
.label_63:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
.label_69:
	mov	ebp, dword ptr [rsp + 0x60]
.label_71:
	mov	r12d,  dword ptr [dword ptr [rip + optind]]
	movsxd	rcx, r12d
	mov	rax, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rax + rcx*8]
	movsx	eax, byte ptr [rsi]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_41
	mov	qword ptr [rsp + 0x40], rcx
	mov	dword ptr [rsp + 0x60], ebp
	mov	rdi, rsi
	mov	r13, rsi
	call	strlen
	mov	rbp, rax
	mov	esi, OFFSET FLAT:.str.46
	mov	rdi, r13
	call	strspn
	cmp	rbp, rax
	jne	.label_22
	mov	rax, qword ptr [rsp + 0x50]
	cmp	eax, 1
	je	.label_24
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rbp, qword ptr [rax + rcx*8 + 8]
	movsx	ecx, byte ptr [rbp]
	lea	eax, [rcx - 0x30]
	cmp	eax, 9
	ja	.label_22
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, rbp
	call	strlen
	mov	qword ptr [rsp + 0x30], rax
	mov	esi, OFFSET FLAT:.str.46
	mov	rdi, rbp
	call	strspn
	cmp	qword ptr [rsp + 0x30], rax
	jne	.label_22
	mov	rax, qword ptr [rsp + 0x50]
	cmp	eax, 3
	mov	rax, qword ptr [rsp + 0x10]
	jae	.label_35
.label_24:
	mov	al,  byte ptr [byte ptr [rip + equal_width]]
	mov	rcx, qword ptr [rsp + 0x20]
	or	al, cl
	test	al, 1
	mov	ebp, dword ptr [rsp + 0x60]
	je	.label_38
	mov	rsi, r13
	jmp	.label_41
.label_35:
	movzx	eax, al
	cmp	eax, 0x31
	jne	.label_22
	cmp	byte ptr [rbp + 1], 0
	mov	rsi, r13
	jne	.label_44
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rbp, qword ptr [rax + rcx*8 + 0x10]
	movsx	eax, byte ptr [rbp]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_44
	mov	r13, rsi
	mov	rdi, rbp
	call	strlen
	mov	qword ptr [rsp + 0x40], rax
	mov	esi, OFFSET FLAT:.str.46
	mov	rdi, rbp
	call	strspn
	cmp	qword ptr [rsp + 0x40], rax
	jne	.label_22
	mov	al,  byte ptr [byte ptr [rip + equal_width]]
	mov	rcx, qword ptr [rsp + 0x20]
	or	al, cl
	test	al, 1
	mov	ebp, dword ptr [rsp + 0x60]
	jne	.label_46
.label_38:
	mov	rdi,  qword ptr [word ptr [rip + separator]]
	call	strlen
	cmp	rax, 1
	jne	.label_51
	mov	dword ptr [rsp + 0x60], ebp
	mov	rcx, qword ptr [rsp + 0x50]
	cmp	ecx, 1
	mov	eax, OFFSET FLAT:.str.19
	cmove	r13, rax
	lea	eax, [rcx + r12 - 1]
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rbp + rax*8]
	mov	rdi, r13
	call	seq_fast
	test	al, al
	fldz	
	jne	.label_17
	fstp	st(0)
	movsxd	r12,  dword ptr [dword ptr [rip + optind]]
	mov	rsi, qword ptr [rbp + r12*8]
.label_44:
	mov	ebp, dword ptr [rsp + 0x60]
	jmp	.label_41
.label_22:
	mov	ebp, dword ptr [rsp + 0x60]
	mov	rsi, r13
.label_41:
	inc	r12d
	mov	dword ptr [dword ptr [rip + optind]],  r12d
	lea	rdi, [rsp + 0xc0]
	call	scan_arg
	fld	xword ptr [rsp + 0xc0]
	mov	rdi, qword ptr [rsp + 0xd0]
	mov	r13d, dword ptr [rsp + 0xd8]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	fld1	
	xor	r12d, r12d
	mov	edx, 1
	cmp	eax, ebp
	jge	.label_65
	fstp	st(0)
	fstp	xword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x60], rdi
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	r12, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [r12 + rax*8]
	lea	rdi, [rsp + 0xa0]
	call	scan_arg
	fld	xword ptr [rsp + 0xa0]
	mov	ecx, dword ptr [rsp + 0xb8]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, ebp
	jge	.label_14
	mov	ebp, ecx
	fldz	
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	fstp	xword ptr [rsp + 0x40]
	jne	.label_19
	jp	.label_19
	jmp	.label_43
.label_19:
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	rsi, qword ptr [r12 + rax*8]
	lea	rdi, [rsp + 0x80]
	call	scan_arg
	fld	xword ptr [rsp + 0x40]
	fld	xword ptr [rsp + 0x80]
	mov	rdx, qword ptr [rsp + 0x60]
	mov	rax, qword ptr [rsp + 0x90]
	mov	r12d, ebp
	mov	ecx, dword ptr [rsp + 0x98]
	mov	rdi, rax
	mov	ebp, r13d
	fld	xword ptr [rsp + 0x50]
	fxch	st(1)
	fstp	xword ptr [rsp + 0x40]
	jmp	.label_33
.label_65:
	xor	ebp, ebp
	fld	st(0)
	mov	ecx, r13d
	fxch	st(2)
	fstp	xword ptr [rsp + 0x40]
	fxch	st(1)
	jmp	.label_33
.label_14:
	fstp	xword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x60]
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rdi, rax
	mov	ebp, r13d
	fld	xword ptr [rsp + 0x50]
	fld1	
	xor	r12d, r12d
	fxch	st(1)
.label_33:
	fld	st(0)
	fstp	xword ptr [rsp + 0x30]
	fldz	
	fmul	st(1), st(0)
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_20
	jp	.label_20
	mov	eax, r12d
	or	eax, ebp
	jne	.label_20
	fld1	
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	jne	.label_20
	jp	.label_20
	fld	xword ptr [rsp + 0x30]
	fldz	
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jb	.label_20
	test	ecx, ecx
	jne	.label_20
	fld	xword ptr [rsp + 0x40]
	fldz	
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jb	.label_20
	mov	rax, qword ptr [rsp + 0x20]
	or	al,  byte ptr [byte ptr [rip + equal_width]]
	test	al, 1
	jne	.label_20
	mov	qword ptr [rsp + 0x60], rdi
	mov	rdi,  qword ptr [word ptr [rip + separator]]
	fstp	xword ptr [rsp + 0x50]
	mov	r13, rdx
	mov	dword ptr [rsp + 0x70], ecx
	call	strlen
	mov	ecx, dword ptr [rsp + 0x70]
	mov	rdx, r13
	mov	rdi, qword ptr [rsp + 0x60]
	fld	xword ptr [rsp + 0x50]
	cmp	rax, 1
	jne	.label_20
	mov	qword ptr [rsp + 0x20], rdx
	mov	r13, rdi
	fstp	xword ptr [rsp + 0x50]
	fld	xword ptr [rsp + 0x30]
	fstp	xword ptr [rsp]
	lea	rdi, [rsp + 0xf0]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.21
	xor	eax, eax
	call	__asprintf_chk
	test	eax, eax
	js	.label_29
	fld	xword ptr [rsp + 0x40]
	fldz	
	fld	st(1)
	fmul	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_59
	jnp	.label_64
.label_59:
	fstp	xword ptr [rsp + 0x40]
	mov	edi, OFFSET FLAT:.str.22
	call	xstrdup
	mov	qword ptr [rsp + 0xe8], rax
	jmp	.label_68
.label_64:
	fld	st(0)
	fstp	xword ptr [rsp]
	fstp	xword ptr [rsp + 0x40]
	lea	rdi, [rsp + 0xe8]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.21
	xor	eax, eax
	call	__asprintf_chk
	test	eax, eax
	js	.label_29
.label_68:
	mov	rdi, qword ptr [rsp + 0xf0]
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x2d
	je	.label_10
	mov	rsi, qword ptr [rsp + 0xe8]
	movzx	eax, byte ptr [rsi]
	cmp	eax, 0x2d
	je	.label_10
	call	seq_fast
	test	al, al
	je	.label_15
	fldz	
	jmp	.label_17
.label_51:
	mov	rsi, r13
	jmp	.label_41
.label_15:
	mov	rdi, qword ptr [rsp + 0xf0]
.label_10:
	call	free
	mov	rdi, qword ptr [rsp + 0xe8]
	call	free
	fld	xword ptr [rsp + 0x50]
	mov	rdi, r13
	mov	rdx, qword ptr [rsp + 0x20]
	mov	ecx, dword ptr [rsp + 0x70]
.label_20:
	test	rbx, rbx
	jne	.label_28
	cmp	ebp, r12d
	cmovge	r12d, ebp
	cmp	r12d, 0x7fffffff
	mov	ebx, OFFSET FLAT:.str.59
	je	.label_28
	cmp	ecx, 0x7fffffff
	je	.label_28
	movzx	eax,  byte ptr [byte ptr [rip + equal_width]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_32
	mov	eax, r12d
	sub	eax, ebp
	movsxd	r8, eax
	mov	eax, r12d
	sub	eax, ecx
	cdqe	
	test	r12d, r12d
	sete	sil
	setne	r9b
	test	ecx, ecx
	setne	bl
	sete	cl
	and	bl, sil
	and	cl, r9b
	movzx	ecx, cl
	add	rax, rdi
	movzx	esi, bl
	sub	rax, rsi
	add	rax, rcx
	test	ebp, ebp
	sete	cl
	and	cl, r9b
	movzx	ecx, cl
	add	r8, rdx
	add	r8, rcx
	cmp	r8, rax
	cmovbe	r8, rax
	mov	ebx, OFFSET FLAT:.str.59
	cmp	r8, 0x7fffffff
	ja	.label_28
	mov	ebx, OFFSET FLAT:get_default_format.format_buf
	mov	edi, OFFSET FLAT:get_default_format.format_buf
	mov	esi, 1
	mov	edx, 0x1c
	mov	ecx, OFFSET FLAT:.str.57
	xor	eax, eax
	mov	r9d, r12d
	fstp	xword ptr [rsp + 0x50]
	call	__sprintf_chk
	jmp	.label_47
.label_32:
	mov	ebx, OFFSET FLAT:get_default_format.format_buf
	mov	edi, OFFSET FLAT:get_default_format.format_buf
	mov	esi, 1
	mov	edx, 0x1c
	mov	ecx, OFFSET FLAT:.str.58
	xor	eax, eax
	mov	r8d, r12d
	fstp	xword ptr [rsp + 0x50]
	call	__sprintf_chk
.label_47:
	fld	xword ptr [rsp + 0x50]
.label_28:
	fld	xword ptr [rsp + 0x40]
	fld	st(0)
	fstp	xword ptr [rsp + 0x40]
	fld	st(0)
	fstp	xword ptr [rsp + 0x40]
	fld	xword ptr [rsp + 0x30]
	fld	st(0)
	fstp	xword ptr [rsp + 0x30]
	fxch	st(1)
	fucomi	st(1)
	seta	al
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	seta	cl
	fldz	
	fucomip	st(1)
	ja	.label_53
	mov	al, cl
.label_53:
	test	al, al
	jne	.label_17
	fstp	xword ptr [rsp + 0x50]
	fld	xword ptr [rsp + 0x50]
	fstp	xword ptr [rsp + 0x50]
	fld	xword ptr [rsp + 0x30]
	fstp	xword ptr [rsp]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	call	__printf_chk
	test	eax, eax
	fldz	
	js	.label_60
	fstp	st(0)
	fld1	
	xor	r13d, r13d
	fld	xword ptr [rsp + 0x30]
	fxch	st(1)
	fstp	xword ptr [rsp + 0x60]
	nop	dword ptr [rax]
.label_57:
	test	r13b, r13b
	fld	xword ptr [rsp + 0x50]
	jne	.label_36
	fld	xword ptr [rsp + 0x60]
	fmul	st(1)
	fld	xword ptr [rsp + 0x30]
	faddp	st(1)
	fld	st(0)
	fstp	xword ptr [rsp + 0x70]
	fld	xword ptr [rsp + 0x40]
	fucomi	st(1)
	seta	r13b
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	seta	al
	fldz	
	fucomip	st(1)
	ja	.label_70
	mov	r13b, al
.label_70:
	test	r13b, r13b
	je	.label_76
	fstp	st(0)
	fstp	xword ptr [rsp + 0x20]
	cmp	byte ptr [byte ptr [rip + locale_ok]],  0
	je	.label_11
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
.label_11:
	fld	xword ptr [rsp + 0x70]
	fstp	xword ptr [rsp]
	mov	esi, 1
	xor	eax, eax
	lea	rdi, [rsp + 0xe8]
	mov	rdx, rbx
	call	__asprintf_chk
	mov	ebp, eax
	cmp	byte ptr [byte ptr [rip + locale_ok]],  0
	je	.label_25
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str_1
	call	setlocale
.label_25:
	test	ebp, ebp
	js	.label_29
	movsxd	rax, ebp
	sub	rax, r14
	mov	rcx, qword ptr [rsp + 0xe8]
	mov	byte ptr [rcx + rax], 0
	mov	rdi, qword ptr [rsp + 0xe8]
	add	rdi, r15
	xor	r12d, r12d
	xor	esi, esi
	mov	ecx, OFFSET FLAT:cl_strtold
	lea	rdx, [rsp + 0xf0]
	call	xstrtold
	fld	xword ptr [rsp + 0xf0]
	test	al, al
	je	.label_37
	fld	xword ptr [rsp + 0x40]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_39
	jp	.label_39
	mov	qword ptr [rsp + 0xe0], 0
	fld	xword ptr [rsp + 0x20]
	fstp	xword ptr [rsp]
	mov	esi, 1
	xor	eax, eax
	lea	rdi, [rsp + 0xe0]
	mov	rdx, rbx
	call	__asprintf_chk
	test	eax, eax
	js	.label_29
	mov	rbp, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xe8]
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	setne	r12b
	mov	rdi, rbp
	call	free
	jmp	.label_39
.label_37:
	fstp	st(0)
.label_39:
	mov	rdi, qword ptr [rsp + 0xe8]
	call	free
	test	r12b, r12b
	fld	xword ptr [rsp + 0x50]
	fldz	
	fxch	st(1)
	je	.label_36
.label_76:
	fstp	st(1)
	fstp	xword ptr [rsp + 0x50]
	mov	rdi,  qword ptr [word ptr [rip + separator]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	cmp	eax, -1
	je	.label_52
	fld1	
	fld	xword ptr [rsp + 0x60]
	faddp	st(1)
	fstp	xword ptr [rsp + 0x60]
	fld	xword ptr [rsp + 0x70]
	fld	st(0)
	fstp	xword ptr [rsp + 0x70]
	fstp	xword ptr [rsp]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	call	__printf_chk
	test	eax, eax
	fld	xword ptr [rsp + 0x70]
	jns	.label_57
.label_60:
	fstp	st(0)
	call	io_error
.label_36:
	fstp	st(0)
	fstp	st(0)
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.12
	call	fputs_unlocked
	cmp	eax, -1
	fldz	
	je	.label_58
.label_17:
	fstp	st(0)
	xor	eax, eax
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_46:
	mov	rsi, r13
	jmp	.label_41
.label_56:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.50
.label_26:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_52:
	call	io_error
.label_29:
	call	xalloc_die
.label_18:
	cmp	eax, 0xffffff7d
	je	.label_75
	cmp	eax, 0xffffff7e
	jne	.label_12
	xor	edi, edi
	call	usage
.label_21:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	jmp	.label_16
.label_23:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r14 + rax*8 + 0x18]
	jmp	.label_50
.label_67:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.47
	jmp	.label_26
.label_48:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.49
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	movsx	r8d, byte ptr [rbx + rbp]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
.label_75:
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
.label_58:
	fstp	st(0)
	call	io_error
.label_12:
	mov	edi, 1
	call	usage
.label_66:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18_0
.label_16:
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
.label_43:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r12 + rax*8 - 8]
.label_50:
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402540

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
	movzx	eax, byte ptr [rsi]
	mov	ebx, 0x69
	sub	ebx, eax
	jne	.label_91
	movzx	ecx, byte ptr [rsi + 1]
	mov	ebx, 0x6e
	sub	ebx, ecx
	jne	.label_91
	movzx	ecx, byte ptr [rsi + 2]
	mov	ebx, 0x66
	sub	ebx, ecx
	jne	.label_91
	movzx	ebx, byte ptr [rsi + 3]
	neg	ebx
.label_91:
	mov	rbp, rdi
	jmp	.label_96
	nop	
.label_78:
	inc	rbp
.label_96:
	movzx	ecx, byte ptr [rbp]
	cmp	ecx, 0x30
	je	.label_78
	test	cl, cl
	jne	.label_81
	lea	rcx, [rbp - 1]
	cmp	rbp, rdi
	cmovne	rbp, rcx
.label_81:
	mov	r15, rsi
	jmp	.label_84
.label_87:
	mov	al, byte ptr [r15 + 1]
	inc	r15
.label_84:
	movzx	ecx, al
	cmp	ecx, 0x30
	je	.label_87
	test	al, al
	jne	.label_88
	lea	rax, [r15 - 1]
	cmp	r15, rsi
	cmovne	r15, rax
.label_88:
	mov	rdi, rbp
	call	strlen
	mov	r13, rax
	xor	eax, eax
	test	ebx, ebx
	mov	dword ptr [rsp + 0xc], ebx
	je	.label_92
	mov	rdi, r15
	call	strlen
.label_92:
	mov	qword ptr [rsp + 0x18], rax
	lea	r12, [r13 + 1]
	cmp	r12, rax
	cmova	rax, r12
	cmp	rax, 0x1f
	mov	r14d, 0x1f
	cmova	r14, rax
	lea	rdi, [r14 + 1]
	mov	qword ptr [rsp + 0x40], rdi
	call	xmalloc
	mov	qword ptr [rsp + 0x38], rax
	lea	rbx, [rax + r14]
	sub	rbx, r13
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r12
	mov	r12, qword ptr [rsp + 0x40]
	call	memcpy
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	cmp	dword ptr [rsp + 0xc], 0
	mov	ebp, 0
	je	.label_86
	mov	rdi, r12
	call	xmalloc
	mov	rbp, rax
	mov	rdi, rbp
	add	rdi, r14
	mov	qword ptr [rsp + 0x28], r14
	mov	rax, qword ptr [rsp + 0x18]
	sub	rdi, rax
	mov	qword ptr [rsp + 0x10], rdi
	lea	rdx, [rax + 1]
	mov	rsi, r15
	mov	r14, rax
	call	memcpy
	cmp	r13, r14
	jb	.label_77
	cmp	r14, r13
	jb	.label_94
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x10]
	call	strcmp
	test	eax, eax
	jle	.label_77
.label_94:
	xor	ebx, ebx
	jmp	.label_79
.label_77:
	mov	r14, qword ptr [rsp + 0x28]
.label_86:
	mov	qword ptr [rsp], rbp
	add	r12, r12
	cmp	r12, 0x2000
	mov	ebp, 0x2000
	cmovae	rbp, r12
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdi, rbp
	call	xmalloc
	mov	qword ptr [rsp + 0x30], rax
	lea	rcx, [rax + rbp]
	mov	qword ptr [rsp + 0x40], rcx
	mov	rcx, -1
	mov	rdi, rax
	mov	rsi, rbx
	mov	rdx, r13
	call	__mempcpy_chk
	mov	r15, rax
	mov	r12, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp + 0xc]
	nop	word ptr cs:[rax + rax]
.label_80:
	test	ebp, ebp
	je	.label_85
	cmp	r13, r12
	jb	.label_85
	cmp	r12, r13
	jb	.label_82
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x10]
	call	strcmp
	test	eax, eax
	jns	.label_82
.label_85:
	mov	rax,  qword ptr [word ptr [rip + separator]]
	mov	al, byte ptr [rax]
	mov	byte ptr [r15], al
	inc	r15
	lea	rax, [rbx + r13 - 1]
	nop	dword ptr [rax + rax]
.label_90:
	movsx	ecx, byte ptr [rax]
	mov	dl, cl
	inc	dl
	mov	byte ptr [rax], dl
	cmp	ecx, 0x39
	jl	.label_89
	mov	byte ptr [rax], 0x30
	dec	rax
	cmp	rax, rbx
	jae	.label_90
	mov	byte ptr [rbx - 1], 0x31
	dec	rbx
	inc	r13
.label_89:
	cmp	r13, r14
	jne	.label_95
	lea	rsi, [r14 + r14 + 1]
	mov	rdi, qword ptr [rsp + 0x38]
	call	xrealloc
	mov	qword ptr [rsp + 0x38], rax
	lea	rbx, [rax + r14]
	lea	rdx, [r14 + 1]
	lea	r14, [r14 + r14]
	mov	rdi, rbx
	mov	rsi, rax
	call	memmove
	lea	r12, [r14 + r14 + 2]
	cmp	qword ptr [rsp + 0x20], r12
	jae	.label_83
	mov	rdi, qword ptr [rsp + 0x30]
	sub	r15, rdi
	mov	rsi, r12
	call	xrealloc
	mov	qword ptr [rsp + 0x30], rax
	add	r15, rax
	lea	rax, [rax + r12]
	mov	qword ptr [rsp + 0x40], rax
	mov	qword ptr [rsp + 0x20], r12
.label_83:
	mov	r12, qword ptr [rsp + 0x18]
.label_95:
	mov	rcx, -1
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r13
	call	__mempcpy_chk
	mov	r15, rax
	mov	rax, r13
	not	rax
	add	rax, qword ptr [rsp + 0x40]
	cmp	rax, r15
	jae	.label_80
	mov	qword ptr [rsp + 0x28], r14
	mov	r14, r13
	mov	r13, r12
	mov	r12d, ebp
	mov	rbp, qword ptr [rsp + 0x30]
	sub	r15, rbp
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	edx, 1
	mov	rdi, rbp
	mov	rsi, r15
	call	fwrite_unlocked
	cmp	rax, 1
	mov	r15, rbp
	mov	ebp, r12d
	mov	r12, r13
	mov	r13, r14
	mov	r14, qword ptr [rsp + 0x28]
	je	.label_80
	call	io_error
.label_82:
	mov	byte ptr [r15], 0xa
	inc	r15
	mov	rdi, qword ptr [rsp + 0x30]
	sub	r15, rdi
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	edx, 1
	mov	rsi, r15
	call	fwrite_unlocked
	mov	bl, 1
	cmp	rax, 1
	mov	rbp, qword ptr [rsp]
	jne	.label_93
.label_79:
	mov	rdi, qword ptr [rsp + 0x38]
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
.label_93:
	call	io_error
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402890

	.globl scan_arg
	.type scan_arg, @function
scan_arg:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rbx, rsi
	mov	r14, rdi
	lea	rdx, [rsp + 0x10]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:cl_strtold
	mov	rdi, rbx
	call	xstrtold
	test	al, al
	je	.label_113
	fld	xword ptr [rsp + 0x10]
	fld	st(0)
	fstp	xword ptr [rsp]
	fucomip	st(0)
	jp	.label_109
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	dec	rbx
	nop	dword ptr [rax]
.label_115:
	movzx	edx, byte ptr [rbx + 1]
	inc	rbx
	movzx	ecx, word ptr [rax + rdx*2]
	and	ecx, 0x2000
	cmp	rdx, 0x2b
	je	.label_115
	test	cx, cx
	jne	.label_115
	mov	qword ptr [rsp + 0x20], 0
	mov	dword ptr [rsp + 0x28], 0x7fffffff
	mov	esi, 0x2e
	mov	rdi, rbx
	call	strchr
	mov	r15, rax
	test	r15, r15
	mov	rax, rbx
	jne	.label_102
	mov	esi, 0x70
	mov	rdi, rbx
	call	strchr
	test	rax, rax
	mov	rax, rbx
	jne	.label_102
	mov	dword ptr [rsp + 0x28], 0
	mov	rax, rbx
	nop	word ptr cs:[rax + rax]
.label_102:
	movsx	ecx, byte ptr [rax]
	test	ecx, ecx
	je	.label_110
	inc	rax
	or	ecx, 0x20
	cmp	ecx, 0x78
	jne	.label_102
	jmp	.label_101
.label_110:
	fldz	
	fld	xword ptr [rsp]
	fmul	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_101
	jp	.label_101
	mov	rdi, rbx
	call	strlen
	mov	qword ptr [rsp + 0x20], rax
	xor	ecx, ecx
	test	r15, r15
	je	.label_98
	nop	word ptr cs:[rax + rax]
.label_105:
	mov	rbp, rcx
	movsx	edx, byte ptr [r15 + rbp + 1]
	test	edx, edx
	je	.label_103
	lea	rcx, [rbp + 1]
	or	edx, 0x20
	cmp	edx, 0x65
	jne	.label_105
.label_103:
	cmp	rbp, 0x7fffffff
	ja	.label_108
	mov	dword ptr [rsp + 0x28], ebp
	mov	rcx, -1
	test	rbp, rbp
	je	.label_99
.label_108:
	mov	cl, 1
	cmp	r15, rbx
	je	.label_111
	movsx	ecx, byte ptr [r15 - 1]
	add	ecx, -0x30
	cmp	ecx, 9
	seta	cl
.label_111:
	movzx	ecx, cl
.label_99:
	add	rax, rcx
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_116
.label_98:
	xor	ebp, ebp
.label_116:
	mov	esi, 0x65
	mov	rdi, rbx
	call	strchr
	mov	r13, rax
	test	r13, r13
	jne	.label_100
	mov	esi, 0x45
	mov	rdi, rbx
	call	strchr
	mov	r13, rax
	test	r13, r13
	je	.label_101
.label_100:
	mov	qword ptr [rsp], r14
	lea	rdi, [r13 + 1]
	xor	esi, esi
	mov	edx, 0xa
	call	strtol
	mov	r12, rax
	test	r12, r12
	movsxd	r14, dword ptr [rsp + 0x28]
	js	.label_107
	cmp	r14, r12
	mov	rax, r12
	cmovle	rax, r14
.label_107:
	sub	r14d, eax
	mov	dword ptr [rsp + 0x28], r14d
	mov	rdi, rbx
	call	strlen
	mov	rcx, r13
	sub	rcx, rbx
	sub	rcx, rax
	add	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x20], rcx
	test	r12, r12
	js	.label_114
	test	r15, r15
	je	.label_97
	test	rbp, rbp
	je	.label_97
	test	r14d, r14d
	jne	.label_97
	dec	rcx
	mov	qword ptr [rsp + 0x20], rcx
.label_97:
	mov	r14, qword ptr [rsp]
	cmp	rbp, r12
	cmovae	rbp, r12
	sub	r12, rbp
	jmp	.label_112
.label_114:
	test	r15, r15
	mov	r14, qword ptr [rsp]
	je	.label_106
	inc	r15
	cmp	r13, r15
	jne	.label_104
.label_106:
	inc	rcx
	mov	qword ptr [rsp + 0x20], rcx
.label_104:
	neg	r12
.label_112:
	add	rcx, r12
	mov	qword ptr [rsp + 0x20], rcx
.label_101:
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movaps	xmm1, xmmword ptr [rsp + 0x20]
	movaps	xmmword ptr [r14 + 0x10], xmm1
	movaps	xmmword ptr [r14], xmm0
	mov	rax, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_113:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	mov	edi, 1
	call	usage
.label_109:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.54
	call	quote_n
	mov	r15, rax
	mov	edi, 1
	mov	rsi, rbx
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, r15
	mov	r8, rbx
	call	error
	mov	edi, 1
	call	usage
	nop	
	.section	.text
	.align	32
	#Procedure 0x402b70

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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402bb0

	.globl cl_strtold
	.type cl_strtold, @function
cl_strtold:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsp + 0x18]
	call	strtold
	mov	r12, qword ptr [rsp + 0x18]
	cmp	byte ptr [r12], 0
	je	.label_119
	fstp	xword ptr [rsp + 4]
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	lea	rsi, [rsp + 0x10]
	mov	rdi, rbx
	call	c_strtold
	mov	rax, qword ptr [rsp + 0x10]
	cmp	r12, rax
	jae	.label_118
	mov	qword ptr [rsp + 0x18], rax
	mov	r12, rax
	jmp	.label_119
.label_118:
	fstp	st(0)
	mov	dword ptr [r15], ebp
	fld	xword ptr [rsp + 4]
.label_119:
	test	r14, r14
	je	.label_117
	mov	qword ptr [r14], r12
.label_117:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c30
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c40
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c50

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_123
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_122
	cmp	dword ptr [rbp], 0x20
	jne	.label_122
.label_123:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_121
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_122:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_120
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_121:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_120:
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
	#Procedure 0x402d10

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_125
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_124
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_124
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_126
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_126:
	mov	rbx, r14
.label_124:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_125:
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
	#Procedure 0x402dc0
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
	#Procedure 0x402e00
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
	#Procedure 0x402e10
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
	#Procedure 0x402e20
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
	#Procedure 0x402e60
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
	#Procedure 0x402e80
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_127
	test	rdx, rdx
	je	.label_127
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_127:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402eb0
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
	#Procedure 0x402f30

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
.label_196:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_251
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_128]]
.label_392:
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
.label_393:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_154
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_154
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_181:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_172
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_172:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_181
.label_154:
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
	jmp	.label_191
.label_385:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_191
.label_388:
	mov	al, 1
.label_386:
	mov	r12b, 1
.label_389:
	test	r12b, 1
	mov	cl, 1
	je	.label_211
	mov	cl, al
.label_211:
	mov	al, cl
.label_387:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_217
	test	r10, r10
	je	.label_222
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_161
.label_217:
	xor	ecx, ecx
	jmp	.label_161
.label_390:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_167
	test	r10, r10
	je	.label_232
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_234
.label_391:
	mov	dil, 1
	mov	r9d, 5
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_191
.label_222:
	mov	ecx, 1
.label_161:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_191
.label_167:
	xor	eax, eax
	jmp	.label_234
.label_232:
	mov	eax, 1
.label_234:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_191:
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
	jmp	.label_208
.label_194:
	inc	rdi
.label_208:
	cmp	rbp, -1
	je	.label_185
	cmp	rdi, rbp
	jne	.label_188
	jmp	.label_189
	nop	word ptr cs:[rax + rax]
.label_185:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_239
.label_188:
	test	r12b, r12b
	je	.label_199
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_202
	cmp	rbp, -1
	jne	.label_202
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
.label_202:
	cmp	rbx, rbp
	jbe	.label_226
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_227
	nop	word ptr [rax + rax]
.label_199:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_227
.label_226:
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
	jne	.label_248
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_227
	jmp	.label_169
.label_248:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_227:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_218
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_147]]
.label_402:
	test	rdi, rdi
	jne	.label_130
	jmp	.label_156
.label_406:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_159
	test	rdi, rdi
	jne	.label_162
	cmp	rbp, 1
	je	.label_156
	xor	r13d, r13d
	jmp	.label_157
.label_395:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_168
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_169
	cmp	r9d, 2
	jne	.label_174
	mov	al, r14b
	and	al, 1
	jne	.label_176
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_179
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_179:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_201
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_201:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_242
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_242:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_215
.label_396:
	mov	bl, 0x62
	jmp	.label_209
.label_397:
	mov	cl, 0x74
	jmp	.label_198
.label_398:
	mov	bl, 0x76
	jmp	.label_209
.label_399:
	mov	bl, 0x66
	jmp	.label_209
.label_400:
	mov	cl, 0x72
	jmp	.label_198
.label_403:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_219
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_223
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
	jae	.label_164
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_164:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_244
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_244:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_249
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_249:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_219:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_157
.label_404:
	cmp	r9d, 5
	je	.label_134
	cmp	r9d, 2
	jne	.label_130
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_130
	jmp	.label_137
.label_405:
	cmp	r9d, 2
	jne	.label_139
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_143
	jmp	.label_148
.label_218:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_150
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
.label_151:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_170
	test	cl, cl
	je	.label_170
	xor	eax, eax
	jmp	.label_157
.label_159:
	test	rdi, rdi
	jne	.label_184
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_184
.label_156:
	mov	dl, 1
.label_401:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_203
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_157
.label_168:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_194
	jmp	.label_130
.label_139:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_198
.label_143:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_129
.label_198:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_205
.label_209:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_157
	jmp	.label_213
.label_150:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_216
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_216:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_155:
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
	je	.label_243
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_246
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_250
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_187
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_138:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_132
	bt	rsi, rdx
	jb	.label_135
.label_132:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_138
.label_187:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_193
	xor	r13d, r13d
.label_193:
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
	je	.label_155
	jmp	.label_151
.label_184:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_157
.label_134:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_130
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_130
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_130
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_177
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_182
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_195
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_140
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_140:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_197
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_197:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_207
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_207:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_158
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_158:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_157
.label_130:
	xor	eax, eax
	xor	r13d, r13d
.label_157:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_229
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_231
	jmp	.label_235
	nop	word ptr [rax + rax]
.label_229:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_235
.label_231:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_238
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_245
	nop	word ptr cs:[rax + rax]
.label_235:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_245:
	mov	bl, r15b
	je	.label_129
	jmp	.label_213
.label_238:
	mov	bl, r15b
.label_213:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_169
	cmp	r9d, 2
	jne	.label_252
	mov	al, r14b
	and	al, 1
	jne	.label_252
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_133
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_133:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_237
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_237:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_146
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_146:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_252:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_160
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_160:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_190
.label_162:
	xor	r13d, r13d
	jmp	.label_157
.label_170:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_171
	nop	word ptr [rax + rax]
.label_165:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_171:
	test	cl, cl
	je	.label_183
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_144
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_186
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_186:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_144
	nop	word ptr [rax + rax]
.label_183:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_169
	cmp	r9d, 2
	jne	.label_166
	mov	al, r14b
	and	al, 1
	jne	.label_166
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_210
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_210:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_163
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_163:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_173
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_173:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_166:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_236
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_236:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_241
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_241:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_149
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_149:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_144:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_129
	test	r14b, 1
	je	.label_136
	mov	bl, al
	and	bl, 1
	jne	.label_136
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_142
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_142:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_152
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_152:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_136:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_165
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_165
	nop	dword ptr [rax]
.label_129:
	test	r14b, 1
	je	.label_178
	and	al, 1
	jne	.label_178
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_180
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_180:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_214
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_214:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_178:
	mov	bl, r15b
.label_190:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_200
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_200:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_194
.label_174:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_215
.label_176:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_215:
	cmp	rcx, r10
	jae	.label_220
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_220:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_225
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_230
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_233
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_221
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_221:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_240
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_240:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_157
.label_225:
	xor	r13d, r13d
	jmp	.label_157
.label_230:
	xor	r13d, r13d
	jmp	.label_157
.label_233:
	xor	r13d, r13d
	jmp	.label_157
.label_246:
	xor	r13d, r13d
.label_243:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_151
.label_250:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_131
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_212:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_141
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_212
	xor	r13d, r13d
	jmp	.label_151
.label_131:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_151
.label_141:
	xor	r13d, r13d
	jmp	.label_151
.label_177:
	xor	r13d, r13d
	jmp	.label_157
.label_182:
	xor	r13d, r13d
	jmp	.label_157
	nop	dword ptr [rax]
.label_189:
	mov	r13, rdi
.label_239:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_204
	or	al, dl
	je	.label_247
.label_204:
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
	je	.label_175
	or	al, dl
	jne	.label_175
	test	r8b, 1
	jne	.label_192
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_175
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_196
.label_175:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_206
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_206
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_206
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_224:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_153
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_153:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_224
.label_206:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_228
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_228
.label_203:
	mov	r9d, 2
	jmp	.label_169
.label_135:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_169
.label_247:
	mov	rbp, r13
	jmp	.label_169
.label_205:
	mov	r9d, 2
.label_169:
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
.label_145:
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
.label_192:
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
	jmp	.label_145
.label_223:
	mov	r9d, 2
	jmp	.label_169
.label_148:
	mov	r9d, 2
	jmp	.label_169
.label_137:
	mov	r9d, 2
	jmp	.label_169
.label_195:
	mov	r9d, 5
	jmp	.label_169
.label_251:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4040c0
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
	#Procedure 0x404190
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
	je	.label_253
	mov	qword ptr [rax], rbx
.label_253:
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
	#Procedure 0x404290
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_254
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_257:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_257
.label_254:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_258
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_256]], OFFSET FLAT:slot0
.label_258:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_255
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_255:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404330
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x404340

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
	js	.label_259
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_262
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_265
.label_262:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_261
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
	jne	.label_260
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_260:
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
.label_265:
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
	ja	.label_263
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_264
	mov	rdi, rbx
	call	free
.label_264:
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
.label_263:
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
.label_259:
	call	abort
.label_261:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404510
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404520
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
	#Procedure 0x404540
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
	#Procedure 0x404560
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
	je	.label_266
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
.label_266:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x4045d0
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
	je	.label_267
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
.label_267:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404640
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
	je	.label_268
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
.label_268:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4046b0
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
	je	.label_269
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
.label_269:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404720
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_270]]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_271]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_272]]
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
	#Procedure 0x404790
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx,  qword ptr [word ptr [rip + label_270]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_271]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_272]]
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
	#Procedure 0x404800

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_270]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_271]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_272]]
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
	#Procedure 0x404860
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_270]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_271]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_272]]
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
	#Procedure 0x4048c0
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
	je	.label_273
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
.label_273:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x404970
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_270]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_271]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_272]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_274
	test	rdx, rdx
	je	.label_274
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_274:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x4049e0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_270]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_271]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_272]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_275
	test	rdx, rdx
	je	.label_275
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_275:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a50
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_270]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_271]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_272]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_276
	test	rsi, rsi
	je	.label_276
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_276:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404ac0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_270]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_271]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_272]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_277
	test	rsi, rsi
	je	.label_277
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
.label_277:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404b30
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b40
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
	#Procedure 0x404b60

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b80

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
	#Procedure 0x404ba0

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
	jne	.label_278
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_280
	cmp	ecx, 0x55
	jne	.label_279
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_279
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_279
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_279
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_279
	cmp	byte ptr [rax + 5], 0
	jne	.label_279
	mov	eax, OFFSET FLAT:.str.14
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_278
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_278
.label_280:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_279
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_279
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_279
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_279
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_279
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_279
	cmp	byte ptr [rax + 7], 0
	je	.label_281
.label_279:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_278:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_281:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_278
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_278
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c90

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
	je	.label_285
	mov	edx, OFFSET FLAT:.str_5
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_283
.label_285:
	mov	edx, OFFSET FLAT:.str.1_2
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_283:
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
	ja	.label_290
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_291]]
.label_363:
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
.label_290:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_289
.label_364:
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
.label_365:
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
.label_366:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_284
.label_367:
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
	jmp	.label_287
.label_368:
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
	jmp	.label_282
.label_369:
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
.label_282:
	mov	qword ptr [rsp + 0x10], rdi
.label_287:
	mov	qword ptr [rsp + 8], rsi
.label_284:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_288
.label_371:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_289:
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
	jmp	.label_286
.label_370:
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
.label_286:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_288:
	call	__fprintf_chk
.label_362:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f80
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_292:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_292
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404fb0
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_295:
	cmp	r10d, 0x28
	ja	.label_293
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_294
	nop	word ptr cs:[rax + rax]
.label_293:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_294:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_296
	inc	r9
	cmp	r9, 0xa
	jb	.label_295
.label_296:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405010

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x128
	test	al, al
	je	.label_297
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_297:
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
.label_301:
	cmp	r8d, 0x28
	ja	.label_298
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_300
	nop	
.label_298:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_300:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_299
	inc	r9
	cmp	r9, 0xa
	jb	.label_301
.label_299:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405110
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
	#Procedure 0x405190
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_302
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_303
	test	rax, rax
	je	.label_302
.label_303:
	pop	rbx
	ret	
.label_302:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051d0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_304
	test	rax, rax
	je	.label_305
.label_304:
	pop	rbx
	ret	
.label_305:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051f0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_306
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_307
	test	rbx, rbx
	jne	.label_307
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_307:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_308
	test	rax, rax
	je	.label_306
.label_308:
	pop	rbx
	ret	
.label_306:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405240

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_309
	test	rbx, rbx
	jne	.label_309
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_309:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_311
	test	rax, rax
	je	.label_310
.label_311:
	pop	rbx
	ret	
.label_310:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405270
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_315
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_316
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_312
.label_315:
	test	rcx, rcx
	jne	.label_318
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_318:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_317
.label_312:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_313
	test	rbx, rbx
	jne	.label_313
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_313:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_314
	test	rax, rax
	je	.label_316
.label_314:
	pop	rbx
	ret	
.label_316:
	call	xalloc_die
.label_317:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405310
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_319
	test	rax, rax
	je	.label_320
.label_319:
	pop	rbx
	ret	
.label_320:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405330
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_323
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_325
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_322
	call	free
	xor	eax, eax
	jmp	.label_324
.label_323:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_321
	mov	qword ptr [rsi], rbx
.label_322:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_324
	test	rax, rax
	je	.label_321
.label_324:
	pop	rbx
	ret	
.label_321:
	call	xalloc_die
.label_325:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053a0
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
	je	.label_327
	test	r14, r14
	je	.label_326
.label_327:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_326:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053e0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_328
	call	rpl_calloc
	test	rax, rax
	je	.label_328
	pop	rcx
	ret	
.label_328:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405410

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
	je	.label_329
	test	r15, r15
	je	.label_330
.label_329:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_330:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405450

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
	je	.label_332
	test	r15, r15
	je	.label_331
.label_332:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_331:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4054a0

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
	#Procedure 0x4054d0

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
	mov	rcx, qword ptr [rsp + 8]
	cmp	rcx, rbx
	je	.label_333
	test	r15, r15
	jne	.label_335
	cmp	byte ptr [rcx], 0
	je	.label_335
	xor	eax, eax
	jmp	.label_336
.label_335:
	mov	al, 1
	fldz	
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	jne	.label_337
	jnp	.label_334
.label_337:
	cmp	dword ptr [r12], 0x22
	setne	al
	jmp	.label_334
.label_333:
	xor	eax, eax
.label_334:
	test	r15, r15
	je	.label_336
	mov	qword ptr [r15], rcx
.label_336:
	fstp	xword ptr [r14]
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405550

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_338
	test	rsi, rsi
	mov	ecx, 1
	je	.label_339
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_339
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_338:
	mov	ecx, 1
.label_339:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055a0

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
	je	.label_340
	cmp	r15, -2
	jb	.label_340
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_340
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_340:
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
	#Procedure 0x405600

	.globl c_strtold
	.type c_strtold, @function
c_strtold:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	r15, rsi
	mov	r14, rdi
	cmp	qword ptr [word ptr [rip + c_locale_cache]],  0
	jne	.label_341
	mov	edi, 0x1fbf
	mov	esi, OFFSET FLAT:.str_0
	xor	edx, edx
	call	newlocale
	mov	qword ptr [word ptr [rip + c_locale_cache]],  rax
.label_341:
	mov	rdi,  qword ptr [word ptr [rip + c_locale_cache]]
	test	rdi, rdi
	je	.label_345
	call	uselocale
	mov	rbx, rax
	test	rbx, rbx
	je	.label_343
	mov	rdi, r14
	mov	rsi, r15
	call	strtold
	fstp	xword ptr [rsp + 0xc]
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	uselocale
	test	rax, rax
	je	.label_344
	mov	dword ptr [r14], ebp
	fld	xword ptr [rsp + 0xc]
	jmp	.label_342
.label_345:
	fldz	
	test	r15, r15
	je	.label_342
	mov	qword ptr [r15], r14
	jmp	.label_342
.label_343:
	fldz	
	test	r15, r15
	je	.label_342
	mov	qword ptr [r15], r14
.label_342:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_344:
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4056b0

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
	jne	.label_347
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_346
	test	cl, cl
	jne	.label_346
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_346
.label_347:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_346
	call	__errno_location
	mov	dword ptr [rax], 0
.label_346:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405710

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_349
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_350
	cmp	byte ptr [rax + 1], 0
	je	.label_348
.label_350:
	mov	esi, OFFSET FLAT:.str.1_4
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_349
.label_348:
	xor	ebx, ebx
.label_349:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x405750

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_1
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_5
	cmp	byte ptr [rcx], 0
	je	.label_351
	mov	rax, rcx
.label_351:
	add	rsp, 8
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405780

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_352
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_353
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_352
.label_353:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_352
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_354
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_354:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_352:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x405800

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_355
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_355
	test	byte ptr [rbx + 1], 1
	je	.label_355
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_355:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405840

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
	jne	.label_356
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_356
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_357
.label_356:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_357:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_358
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_358:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	32
	#Procedure 0x4058b0

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