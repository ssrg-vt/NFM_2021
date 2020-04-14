	.section	.text
	.align	32
	#Procedure 0x4016e0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	lea	rsi, [rsi]
	push	rax
	lea	rsi, [rsi]
	mov	ebp, edi
	nop	
	test	ebp, ebp
	jne	.label_9
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	lea	rdi, [rdi]
	mov	r8, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.7
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.32
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi, rax
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.17
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	mov	rsp, rsp
	call	__printf_chk
	mov	rsp, rsp
	mov	edi, 5
	xor	esi, esi
	lea	rdi, [rdi]
	call	setlocale
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_8
	mov	esi, OFFSET FLAT:.str.34
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.36
	mov	rsp, rsp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.8
	lea	rdi, [rdi]
	xor	eax, eax
	call	__printf_chk
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.8
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.38
	xor	eax, eax
	lea	rsi, [rsi]
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_9:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
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
	#Procedure 0x4019a0

	.globl main
	.type main, @function
main:
	push	rbp
	nop	
	push	r15
	nop	
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x108
	mov	r15, rsi
	mov	ebp, edi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15]
	lea	rsi, [rsi]
	call	set_program_name
	mov	rsp, rsp
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	mov	rsp, rsp
	call	setlocale
	test	rax, rax
	setne	byte ptr [byte ptr [rip + locale_ok]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.10
	mov	esi, OFFSET FLAT:.str.11
	nop	
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.10
	lea	rsi, [rsi]
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + equal_width]],  0
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + separator]], OFFSET FLAT:.str.12
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	xor	ebx, ebx
	jmp	.label_11
.label_47:
	mov	byte ptr [byte ptr [rip + equal_width]],  1
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	nop	word ptr [rax + rax]
.label_11:
	mov	rbp, rbp
	cmp	eax, ebp
	jge	.label_21
	movsxd	rcx, eax
	mov	rcx, qword ptr [r15 + rcx*8]
	mov	rbp, rbp
	movzx	edx, byte ptr [rcx]
	lea	rdi, [rdi]
	cmp	edx, 0x2d
	jne	.label_25
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rcx + 1]
	cmp	ecx, 0x2e
	je	.label_21
	mov	rsp, rsp
	add	ecx, -0x30
	cmp	ecx, 0xa
	jb	.label_21
.label_25:
	mov	edx, OFFSET FLAT:.str.13
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:long_options
	mov	rsp, rsp
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	edi, ebp
	mov	rsi, r15
	call	getopt_long
	mov	rsp, rsp
	cmp	eax, 0x65
	lea	rsi, [rsi]
	jle	.label_42
	mov	rsp, rsp
	cmp	eax, 0x66
	lea	rdi, [rdi]
	je	.label_44
	mov	rsp, rsp
	cmp	eax, 0x73
	mov	rbp, rbp
	je	.label_46
	cmp	eax, 0x77
	mov	rsp, rsp
	je	.label_47
	mov	rsp, rsp
	jmp	.label_26
.label_44:
	mov	rbp, rbp
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	jmp	.label_11
.label_46:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + separator]],  rax
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	jmp	.label_11
.label_42:
	cmp	eax, -1
	jne	.label_55
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [rip + optind]]
.label_21:
	lea	rdi, [rdi]
	cmp	eax, ebp
	lea	rdi, [rdi]
	je	.label_58
	mov	ecx, ebp
	sub	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rcx
	mov	rsp, rsp
	cmp	ecx, 4
	mov	rbp, rbp
	jae	.label_59
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_63
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x18], ebp
	xor	ebp, ebp
	jmp	.label_65
	nop	word ptr [rax + rax]
.label_73:
	mov	rsp, rsp
	movzx	eax, al
	mov	rbp, rbp
	cmp	eax, 0x25
	lea	rdi, [rdi]
	sete	al
	lea	rsi, [rsi]
	inc	r14
	movzx	eax, al
	mov	rsp, rsp
	lea	rbp, [rax + rbp + 1]
.label_65:
	movzx	eax, byte ptr [rbx + rbp]
	cmp	eax, 0x25
	jne	.label_72
	nop	
	movzx	ecx, byte ptr [rbx + rbp + 1]
	nop	
	cmp	ecx, 0x25
	mov	rbp, rbp
	je	.label_73
	jmp	.label_75
	nop	dword ptr [rax]
.label_72:
	mov	rsp, rsp
	test	al, al
	jne	.label_73
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44
	jmp	.label_14
.label_75:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], r15
	lea	rdi, [rbx + rbp + 1]
	lea	rdi, [rdi]
	inc	rbp
	mov	esi, OFFSET FLAT:.str.45
	mov	rsp, rsp
	call	strspn
	mov	r15, rax
	lea	rdi, [rdi]
	add	r15, rbp
	lea	rdi, [rbx + r15]
	mov	esi, OFFSET FLAT:.str.46
	call	strspn
	mov	r12, rax
	add	r12, r15
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx + r12]
	cmp	eax, 0x2e
	jne	.label_78
	lea	rdi, [rdi]
	lea	rdi, [rbx + r12 + 1]
	mov	esi, OFFSET FLAT:.str.46
	call	strspn
	lea	rdi, [rdi]
	lea	r12, [rax + r12 + 1]
	mov	al, byte ptr [rbx + r12]
.label_78:
	lea	rsi, [rsi]
	movzx	eax, al
	cmp	eax, 0x4c
	sete	al
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rbp, [rax + r12]
	movsx	esi, byte ptr [rbx + rbp]
	mov	rbp, rbp
	test	esi, esi
	lea	rsi, [rsi]
	je	.label_15
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xa0], rax
	nop	
	mov	edi, OFFSET FLAT:.str.48
	lea	rdi, [rdi]
	mov	edx, 9
	lea	rdi, [rdi]
	call	memchr
	test	rax, rax
	je	.label_32
	lea	r13, [rbx + r12]
	mov	rbp, rbp
	inc	rbp
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_35
	nop	
.label_43:
	movzx	eax, al
	cmp	eax, 0x25
	nop	
	sete	al
	lea	rdi, [rdi]
	inc	r15
	movzx	eax, al
	lea	rbp, [rax + rbp + 1]
.label_35:
	movzx	eax, byte ptr [rbx + rbp]
	cmp	eax, 0x25
	jne	.label_40
	movzx	ecx, byte ptr [rbp + rbx + 1]
	cmp	ecx, 0x25
	je	.label_43
	lea	rdi, [rdi]
	jmp	.label_45
	nop	word ptr cs:[rax + rax]
.label_40:
	test	al, al
	jne	.label_43
	add	rbp, 2
	mov	rdi, rbp
	call	xmalloc
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r12
	call	memcpy
	mov	byte ptr [rbp + r12], 0x4c
	mov	rsp, rsp
	lea	rdi, [rbp + r12 + 1]
	add	r13, qword ptr [rsp + 0xa0]
	nop	
	mov	rsi, r13
	lea	rdi, [rdi]
	call	strcpy
	xor	ebx, ebx
	test	rbp, rbp
	nop	
	je	.label_54
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + equal_width]]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	je	.label_56
	mov	al, 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xb0], rax
	nop	
	mov	rbx, rbp
	jmp	.label_66
.label_63:
	mov	qword ptr [rsp + 0x40], r15
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xb0], rax
	nop	
	xor	ebx, ebx
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_61
.label_54:
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0xb0], rax
.label_66:
	mov	ebp, dword ptr [rsp + 0x18]
.label_61:
	lea	rdi, [rdi]
	mov	r12d,  dword ptr [dword ptr [rip + optind]]
	mov	rbp, rbp
	movsxd	r13, r12d
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + r13*8]
	movsx	eax, byte ptr [rsi]
	lea	rsi, [rsi]
	add	eax, -0x30
	lea	rsi, [rsi]
	cmp	eax, 9
	lea	rdi, [rdi]
	ja	.label_64
	nop	
	mov	qword ptr [rsp + 0xa0], rbx
	mov	dword ptr [rsp + 0x18], ebp
	mov	rdi, rsi
	nop	
	mov	rbx, rsi
	call	strlen
	mov	rbp, rbp
	mov	rbp, rax
	mov	esi, OFFSET FLAT:.str.46
	nop	
	mov	rdi, rbx
	nop	
	call	strspn
	cmp	rbp, rax
	lea	rdi, [rdi]
	jne	.label_18
	mov	rax, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	cmp	eax, 1
	je	.label_20
	mov	rax, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rax + r13*8 + 8]
	movsx	ecx, byte ptr [rbp]
	nop	
	lea	eax, [rcx - 0x30]
	cmp	eax, 9
	mov	rsp, rsp
	ja	.label_18
	nop	
	mov	qword ptr [rsp + 0x68], rcx
	mov	rdi, rbp
	mov	rbp, rbp
	call	strlen
	mov	qword ptr [rsp + 0x90], rax
	mov	esi, OFFSET FLAT:.str.46
	nop	
	mov	rdi, rbp
	call	strspn
	cmp	qword ptr [rsp + 0x90], rax
	nop	
	jne	.label_18
	mov	rax, qword ptr [rsp + 0x30]
	nop	
	cmp	eax, 3
	mov	rax, qword ptr [rsp + 0x68]
	mov	rsp, rsp
	jb	.label_20
	nop	
	movzx	eax, al
	mov	rsp, rsp
	cmp	eax, 0x31
	jne	.label_18
	cmp	byte ptr [rbp + 1], 0
	mov	rbp, rbp
	mov	rsi, rbx
	jne	.label_31
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rax + r13*8 + 0x10]
	movsx	eax, byte ptr [rbp]
	add	eax, -0x30
	cmp	eax, 9
	lea	rdi, [rdi]
	ja	.label_31
	mov	rsp, rsp
	mov	rbx, rsi
	mov	rsp, rsp
	mov	rdi, rbp
	call	strlen
	mov	r13, rax
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.46
	lea	rsi, [rsi]
	mov	rdi, rbp
	nop	
	call	strspn
	mov	rsp, rsp
	cmp	r13, rax
	jne	.label_18
.label_20:
	mov	al,  byte ptr [byte ptr [rip + equal_width]]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	or	al, cl
	lea	rsi, [rsi]
	test	al, 1
	mov	ebp, dword ptr [rsp + 0x18]
	mov	rsp, rsp
	jne	.label_49
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + separator]]
	call	strlen
	cmp	rax, 1
	jne	.label_49
	mov	r13d, ebp
	mov	rcx, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	cmp	ecx, 1
	mov	eax, OFFSET FLAT:.str.19
	cmove	rbx, rax
	lea	eax, [rcx + r12 - 1]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp + rax*8]
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	seq_fast
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0xa0]
	lea	rdi, [rdi]
	jne	.label_41
	movsxd	r12,  dword ptr [dword ptr [rip + optind]]
	mov	rsi, qword ptr [rbp + r12*8]
	mov	rsp, rsp
	mov	ebp, r13d
	lea	rsi, [rsi]
	jmp	.label_64
.label_18:
	mov	ebp, dword ptr [rsp + 0x18]
.label_49:
	mov	rsi, rbx
	mov	rbx, qword ptr [rsp + 0xa0]
.label_64:
	mov	rsp, rsp
	inc	r12d
	nop	
	mov	dword ptr [dword ptr [rip + optind]],  r12d
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0xc0]
	lea	rdi, [rdi]
	call	scan_arg
	fld	xword ptr [rsp + 0xc0]
	mov	rdx, qword ptr [rsp + 0xd0]
	mov	r13d, dword ptr [rsp + 0xd8]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rsp, rsp
	fld1	
	mov	rbp, rbp
	xor	r12d, r12d
	mov	edi, 1
	cmp	eax, ebp
	jge	.label_74
	lea	rsi, [rsi]
	fxch	st(1)
	fstp	xword ptr [rsp + 0x90]
	nop	
	mov	qword ptr [rsp + 0x18], rdx
	fstp	xword ptr [rsp + 0xa0]
	nop	
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	rsp, rsp
	mov	r12, qword ptr [rsp + 0x40]
	mov	rsi, qword ptr [r12 + rax*8]
	lea	rdi, [rsp + 0x70]
	lea	rdi, [rdi]
	call	scan_arg
	fld	xword ptr [rsp + 0x70]
	mov	rbp, rbp
	mov	esi, dword ptr [rsp + 0x88]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	rdi, [rdi]
	cmp	eax, ebp
	jge	.label_13
	mov	ebp, esi
	fld	st(0)
	fstp	xword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	fldz	
	nop	
	fxch	st(1)
	fucomip	st(1)
	nop	
	fstp	st(0)
	lea	rdi, [rdi]
	jne	.label_17
	jp	.label_17
	jmp	.label_24
.label_17:
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	nop	
	mov	rsi, qword ptr [r12 + rax*8]
	lea	rdi, [rsp + 0xe0]
	nop	
	call	scan_arg
	nop	
	fld	xword ptr [rsp + 0x30]
	nop	
	fstp	xword ptr [rsp + 0xa0]
	mov	rsp, rsp
	fld	xword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rdi, [rdi]
	mov	r12d, ebp
	mov	ecx, dword ptr [rsp + 0xf8]
	mov	ebp, r13d
	fld	xword ptr [rsp + 0x90]
	nop	
	mov	esi, ecx
	mov	rdx, rax
	jmp	.label_34
.label_74:
	xor	ebp, ebp
	lea	rsi, [rsi]
	fld	st(0)
	lea	rsi, [rsi]
	fxch	st(1)
	fstp	xword ptr [rsp + 0xa0]
	mov	esi, r13d
.label_34:
	lea	rdi, [rdi]
	fxch	st(1)
	fstp	xword ptr [rsp + 0x30]
	mov	rbp, rbp
	jmp	.label_48
.label_13:
	fstp	xword ptr [rsp + 0x30]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x80]
	lea	rsi, [rsi]
	mov	ebp, r13d
	fld	xword ptr [rsp + 0x90]
	mov	rbp, rbp
	mov	rdx, rax
	lea	rdi, [rdi]
	xor	r12d, r12d
.label_48:
	lea	rdi, [rdi]
	fld	st(0)
	mov	rsp, rsp
	fstp	xword ptr [rsp + 0x90]
	fldz	
	nop	
	fmul	st(1), st(0)
	lea	rdi, [rdi]
	fxch	st(1)
	mov	rbp, rbp
	fucomip	st(1)
	jne	.label_36
	lea	rdi, [rdi]
	jp	.label_36
	mov	eax, r12d
	or	eax, ebp
	nop	
	jne	.label_36
	lea	rdi, [rdi]
	fld1	
	fld	xword ptr [rsp + 0xa0]
	fucomip	st(1)
	fstp	st(0)
	jne	.label_36
	mov	rsp, rsp
	jp	.label_36
	lea	rsi, [rsi]
	fld	xword ptr [rsp + 0x90]
	nop	
	fucomip	st(1)
	mov	rbp, rbp
	jb	.label_36
	mov	rsp, rsp
	test	esi, esi
	nop	
	jne	.label_36
	mov	rsp, rsp
	fld	xword ptr [rsp + 0x30]
	mov	rsp, rsp
	fucomip	st(1)
	mov	rsp, rsp
	jb	.label_36
	mov	rax, qword ptr [rsp + 0xb0]
	or	al,  byte ptr [byte ptr [rip + equal_width]]
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_36
	fstp	st(0)
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rdi
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + separator]]
	mov	rsp, rsp
	mov	r13, rdx
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x40], esi
	mov	rbp, rbp
	call	strlen
	mov	rdi, qword ptr [rsp + 0x18]
	mov	esi, dword ptr [rsp + 0x40]
	mov	rsp, rsp
	mov	rdx, r13
	mov	rbp, rbp
	fldz	
	nop	
	cmp	rax, 1
	jne	.label_36
	fstp	st(0)
	nop	
	mov	r13, rdx
	nop	
	fld	xword ptr [rsp + 0x90]
	fstp	xword ptr [rsp]
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x50]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.21
	xor	eax, eax
	lea	rdi, [rdi]
	call	__asprintf_chk
	test	eax, eax
	nop	
	js	.label_16
	nop	
	fld	xword ptr [rsp + 0x30]
	fldz	
	nop	
	fld	st(1)
	lea	rsi, [rsi]
	fmul	st(1)
	mov	rsp, rsp
	fucomip	st(1)
	mov	rsp, rsp
	fstp	st(0)
	jne	.label_67
	jnp	.label_23
.label_67:
	fstp	xword ptr [rsp + 0x30]
	mov	edi, OFFSET FLAT:.str.22
	mov	rbp, rbp
	call	xstrdup
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rax
	jmp	.label_29
.label_23:
	fld	st(0)
	fstp	xword ptr [rsp]
	lea	rdi, [rdi]
	fstp	xword ptr [rsp + 0x30]
	lea	rdi, [rsp + 0x28]
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.21
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	call	__asprintf_chk
	test	eax, eax
	js	.label_16
.label_29:
	mov	rdi, qword ptr [rsp + 0x50]
	movzx	eax, byte ptr [rdi]
	mov	rbp, rbp
	cmp	eax, 0x2d
	mov	rsp, rsp
	je	.label_39
	mov	rsi, qword ptr [rsp + 0x28]
	nop	
	movzx	eax, byte ptr [rsi]
	cmp	eax, 0x2d
	je	.label_39
	call	seq_fast
	test	al, al
	lea	rdi, [rdi]
	jne	.label_41
	mov	rdi, qword ptr [rsp + 0x50]
.label_39:
	call	free
	mov	rdi, qword ptr [rsp + 0x28]
	nop	
	call	free
	mov	rbp, rbp
	fldz	
	lea	rdi, [rdi]
	mov	rdx, r13
	mov	esi, dword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x18]
.label_36:
	test	rbx, rbx
	lea	rsi, [rsi]
	fld	xword ptr [rsp + 0xa0]
	lea	rsi, [rsi]
	jne	.label_53
	lea	rdi, [rdi]
	cmp	ebp, r12d
	mov	rbp, rbp
	cmovge	r12d, ebp
	lea	rsi, [rsi]
	cmp	r12d, 0x7fffffff
	mov	ebx, OFFSET FLAT:.str.59
	je	.label_53
	mov	rsp, rsp
	cmp	esi, 0x7fffffff
	lea	rsi, [rsi]
	je	.label_53
	movzx	eax,  byte ptr [byte ptr [rip + equal_width]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_62
	mov	eax, r12d
	sub	eax, ebp
	cdqe	
	add	rax, rdi
	mov	ecx, r12d
	sub	ecx, esi
	movsxd	rcx, ecx
	nop	
	add	rcx, rdx
	mov	rbp, rbp
	test	r12d, r12d
	sete	r8b
	mov	rbp, rbp
	setne	dil
	test	esi, esi
	lea	rsi, [rsi]
	setne	dl
	sete	bl
	lea	rdi, [rdi]
	and	dl, r8b
	lea	rsi, [rsi]
	movzx	edx, dl
	sub	rcx, rdx
	nop	
	and	bl, dil
	movzx	edx, bl
	nop	
	add	rdx, rcx
	test	ebp, ebp
	sete	cl
	nop	
	and	cl, dil
	movzx	r8d, cl
	nop	
	add	r8, rax
	mov	rbp, rbp
	cmp	r8, rdx
	cmovbe	r8, rdx
	mov	rsp, rsp
	mov	ebx, OFFSET FLAT:.str.59
	nop	
	cmp	r8, 0x7fffffff
	ja	.label_53
	mov	rbp, rbp
	fstp	st(1)
	lea	rsi, [rsi]
	mov	ebx, OFFSET FLAT:get_default_format.format_buf
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:get_default_format.format_buf
	mov	rbp, rbp
	mov	esi, 1
	mov	edx, 0x1c
	mov	ecx, OFFSET FLAT:.str.57
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r9d, r12d
	nop	
	fstp	xword ptr [rsp + 0xa0]
	call	__sprintf_chk
	jmp	.label_12
.label_62:
	lea	rsi, [rsi]
	fstp	st(1)
	lea	rdi, [rdi]
	mov	ebx, OFFSET FLAT:get_default_format.format_buf
	mov	edi, OFFSET FLAT:get_default_format.format_buf
	mov	esi, 1
	lea	rsi, [rsi]
	mov	edx, 0x1c
	mov	ecx, OFFSET FLAT:.str.58
	xor	eax, eax
	mov	r8d, r12d
	mov	rsp, rsp
	fstp	xword ptr [rsp + 0xa0]
	call	__sprintf_chk
.label_12:
	mov	rbp, rbp
	fldz	
	fld	xword ptr [rsp + 0xa0]
.label_53:
	lea	rsi, [rsi]
	fld	xword ptr [rsp + 0x30]
	mov	rbp, rbp
	fld	st(0)
	fstp	xword ptr [rsp + 0x30]
	fld	xword ptr [rsp + 0x90]
	fld	st(0)
	lea	rsi, [rsi]
	fstp	xword ptr [rsp + 0x90]
	mov	rsp, rsp
	fxch	st(1)
	mov	rsp, rsp
	fucomi	st(1)
	lea	rdi, [rdi]
	seta	al
	mov	rbp, rbp
	fxch	st(1)
	fucomip	st(1)
	nop	
	fstp	st(0)
	lea	rsi, [rsi]
	seta	cl
	fxch	st(1)
	mov	rsp, rsp
	fucomip	st(1)
	ja	.label_27
	mov	al, cl
.label_27:
	fstp	xword ptr [rsp + 0xa0]
	test	al, al
	jne	.label_41
	mov	rbp, rbp
	fld	xword ptr [rsp + 0x90]
	lea	rdi, [rdi]
	fstp	xword ptr [rsp]
	lea	rsi, [rsi]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	__printf_chk
	test	eax, eax
	mov	rbp, rbp
	fldz	
	lea	rdi, [rdi]
	js	.label_50
	fstp	st(0)
	mov	rsp, rsp
	fld1	
	nop	
	fstp	xword ptr [rsp + 0x40]
	mov	rbp, rbp
	xor	r13d, r13d
	mov	rbp, rbp
	fld	xword ptr [rsp + 0xa0]
	mov	rbp, rbp
	fldz	
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_51
	fld	xword ptr [rsp + 0x90]
	nop	word ptr cs:[rax + rax]
.label_77:
	lea	rdi, [rdi]
	test	r13b, r13b
	mov	rbp, rbp
	jne	.label_57
	fld	xword ptr [rsp + 0xa0]
	lea	rsi, [rsi]
	fld	xword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	fmulp	st(1)
	mov	rsp, rsp
	fld	xword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	faddp	st(1)
	nop	
	fld	st(0)
	nop	
	fstp	xword ptr [rsp + 0x18]
	fld	xword ptr [rsp + 0x30]
	fucomip	st(1)
	mov	rsp, rsp
	fstp	st(0)
	mov	rsp, rsp
	seta	r13b
	lea	rsi, [rsi]
	jbe	.label_60
	mov	rbp, rbp
	fstp	xword ptr [rsp + 0xb0]
	mov	rsp, rsp
	cmp	byte ptr [byte ptr [rip + locale_ok]],  0
	lea	rsi, [rsi]
	je	.label_70
	mov	rbp, rbp
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str_1
	call	setlocale
.label_70:
	nop	
	fld	xword ptr [rsp + 0x18]
	mov	rsp, rsp
	fstp	xword ptr [rsp]
	nop	
	mov	esi, 1
	xor	eax, eax
	lea	rdi, [rsp + 0x28]
	mov	rbp, rbp
	mov	rdx, rbx
	call	__asprintf_chk
	mov	rbp, rbp
	mov	ebp, eax
	lea	rsi, [rsi]
	cmp	byte ptr [byte ptr [rip + locale_ok]],  0
	je	.label_76
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
.label_76:
	lea	rdi, [rdi]
	test	ebp, ebp
	js	.label_16
	movsxd	rax, ebp
	lea	rsi, [rsi]
	sub	rax, r15
	mov	rcx, qword ptr [rsp + 0x28]
	mov	byte ptr [rcx + rax], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x28]
	add	rdi, r14
	lea	rdi, [rdi]
	xor	r12d, r12d
	lea	rsi, [rsi]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:cl_strtold
	lea	rdi, [rdi]
	lea	rdx, [rsp + 0x50]
	call	xstrtold
	lea	rsi, [rsi]
	fld	xword ptr [rsp + 0x50]
	test	al, al
	lea	rsi, [rsi]
	je	.label_68
	mov	rbp, rbp
	fld	xword ptr [rsp + 0x30]
	mov	rbp, rbp
	fxch	st(1)
	fucomip	st(1)
	mov	rsp, rsp
	fstp	st(0)
	jne	.label_28
	jp	.label_28
	mov	qword ptr [rsp + 0x100], 0
	fld	xword ptr [rsp + 0xb0]
	fstp	xword ptr [rsp]
	mov	rsp, rsp
	mov	esi, 1
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rsp + 0x100]
	lea	rdi, [rdi]
	mov	rdx, rbx
	nop	
	call	__asprintf_chk
	test	eax, eax
	js	.label_16
	mov	rbp, qword ptr [rsp + 0x100]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	rdi, rbp
	call	strcmp
	nop	
	test	eax, eax
	mov	rbp, rbp
	setne	r12b
	mov	rdi, rbp
	call	free
	jmp	.label_28
.label_68:
	fstp	st(0)
.label_28:
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	call	free
	mov	rbp, rbp
	test	r12b, r12b
	fldz	
	je	.label_57
.label_60:
	fstp	st(0)
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + separator]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	call	fputs_unlocked
	cmp	eax, -1
	je	.label_33
	fld	xword ptr [rsp + 0x40]
	mov	rbp, rbp
	fld1	
	faddp	st(1)
	fstp	xword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	fld	xword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	fld	st(0)
	lea	rsi, [rsi]
	fstp	xword ptr [rsp + 0x18]
	fstp	xword ptr [rsp]
	nop	
	mov	edi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsi, rbx
	call	__printf_chk
	test	eax, eax
	lea	rdi, [rdi]
	fld	xword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	jns	.label_77
	mov	rsp, rsp
	jmp	.label_50
.label_51:
	fld	xword ptr [rsp + 0x90]
	nop	dword ptr [rax + rax]
.label_71:
	mov	rsp, rsp
	test	r13b, r13b
	jne	.label_57
	fld	xword ptr [rsp + 0xa0]
	fld	xword ptr [rsp + 0x40]
	fmulp	st(1)
	fld	xword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	faddp	st(1)
	fld	st(0)
	mov	rsp, rsp
	fstp	xword ptr [rsp + 0x18]
	mov	rbp, rbp
	fld	xword ptr [rsp + 0x30]
	fxch	st(1)
	fucomip	st(1)
	lea	rdi, [rdi]
	fstp	st(0)
	seta	r13b
	jbe	.label_69
	fstp	xword ptr [rsp + 0xb0]
	nop	
	cmp	byte ptr [byte ptr [rip + locale_ok]],  0
	mov	rbp, rbp
	je	.label_22
	mov	edi, 1
	nop	
	mov	esi, OFFSET FLAT:.str_1
	call	setlocale
.label_22:
	nop	
	fld	xword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	fstp	xword ptr [rsp]
	mov	rsp, rsp
	mov	esi, 1
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x28]
	lea	rdi, [rdi]
	mov	rdx, rbx
	mov	rbp, rbp
	call	__asprintf_chk
	mov	ebp, eax
	lea	rdi, [rdi]
	cmp	byte ptr [byte ptr [rip + locale_ok]],  0
	je	.label_10
	mov	rsp, rsp
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
.label_10:
	lea	rsi, [rsi]
	test	ebp, ebp
	js	.label_16
	movsxd	rax, ebp
	mov	rbp, rbp
	sub	rax, r15
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x28]
	add	rdi, r14
	lea	rdi, [rdi]
	xor	r12d, r12d
	xor	esi, esi
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:cl_strtold
	lea	rdi, [rdi]
	lea	rdx, [rsp + 0x50]
	call	xstrtold
	nop	
	fld	xword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	test	al, al
	je	.label_52
	fld	xword ptr [rsp + 0x30]
	fxch	st(1)
	lea	rdi, [rdi]
	fucomip	st(1)
	mov	rsp, rsp
	fstp	st(0)
	lea	rdi, [rdi]
	jne	.label_37
	jp	.label_37
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x100], 0
	nop	
	fld	xword ptr [rsp + 0xb0]
	mov	rbp, rbp
	fstp	xword ptr [rsp]
	nop	
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	lea	rdi, [rsp + 0x100]
	mov	rdx, rbx
	call	__asprintf_chk
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	js	.label_16
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x100]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rdi, rbp
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	setne	r12b
	mov	rdi, rbp
	mov	rbp, rbp
	call	free
	jmp	.label_37
.label_52:
	lea	rdi, [rdi]
	fstp	st(0)
.label_37:
	nop	
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	call	free
	lea	rdi, [rdi]
	test	r12b, r12b
	fldz	
	je	.label_57
.label_69:
	fstp	st(0)
	mov	rdi,  qword ptr [word ptr [rip + separator]]
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	cmp	eax, -1
	lea	rsi, [rsi]
	je	.label_33
	mov	rsp, rsp
	fld	xword ptr [rsp + 0x40]
	fld1	
	faddp	st(1)
	fstp	xword ptr [rsp + 0x40]
	mov	rbp, rbp
	fld	xword ptr [rsp + 0x18]
	mov	rbp, rbp
	fld	st(0)
	fstp	xword ptr [rsp + 0x18]
	mov	rbp, rbp
	fstp	xword ptr [rsp]
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	xor	eax, eax
	mov	rsi, rbx
	call	__printf_chk
	test	eax, eax
	fld	xword ptr [rsp + 0x18]
	jns	.label_71
.label_50:
	lea	rsi, [rsi]
	fstp	st(0)
	mov	rbp, rbp
	call	io_error
.label_57:
	nop	
	fstp	st(0)
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.12
	call	fputs_unlocked
	lea	rdi, [rdi]
	cmp	eax, -1
	mov	rsp, rsp
	je	.label_33
.label_41:
	xor	eax, eax
	mov	rsp, rsp
	add	rsp, 0x108
	nop	
	pop	rbx
	nop	
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	nop	
	pop	rbp
	nop	
	ret	
.label_31:
	nop	
	mov	ebp, dword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 0xa0]
	mov	rbp, rbp
	jmp	.label_64
.label_45:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.50
.label_14:
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	quote
	nop	
	mov	rcx, rax
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	error
.label_33:
	lea	rsi, [rsi]
	call	io_error
.label_16:
	nop	
	call	xalloc_die
.label_55:
	mov	rsp, rsp
	cmp	eax, 0xffffff7d
	mov	rsp, rsp
	je	.label_19
	nop	
	cmp	eax, 0xffffff7e
	nop	
	jne	.label_26
	xor	edi, edi
	nop	
	call	usage
.label_58:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	jmp	.label_30
.label_59:
	nop	
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.17_0
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbx, rax
	nop	
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + rax*8 + 0x18]
	lea	rdi, [rdi]
	jmp	.label_38
.label_15:
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.47
	lea	rsi, [rsi]
	jmp	.label_14
.label_32:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.49
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	mov	rbp, rbp
	call	quote
	mov	rcx, rax
	lea	rdi, [rdi]
	movsx	r8d, byte ptr [rbx + rbp]
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	rdx, r14
	nop	
	call	error
.label_19:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, OFFSET FLAT:.str.17
	mov	rsp, rsp
	mov	r8d, OFFSET FLAT:.str.15
	xor	r9d, r9d
	mov	rbp, rbp
	xor	eax, eax
	call	version_etc
	lea	rdi, [rdi]
	xor	edi, edi
	call	exit
.label_26:
	mov	rsp, rsp
	mov	edi, 1
	call	usage
.label_56:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18_0
.label_30:
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	error
	mov	rsp, rsp
	mov	edi, 1
	call	usage
.label_24:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rdi]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rsp, rsp
	mov	rdi, qword ptr [r12 + rax*8 - 8]
.label_38:
	mov	rbp, rbp
	call	quote
	mov	rbp, rbp
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rdx, rbx
	nop	
	call	error
	lea	rdi, [rdi]
	mov	edi, 1
	call	usage
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402bf0

	.globl seq_fast
	.type seq_fast, @function
seq_fast:
	mov	rbp, rbp
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x48
	mov	rsp, rsp
	movzx	eax, byte ptr [rsi]
	lea	rdi, [rdi]
	mov	r15d, 0x69
	mov	rsp, rsp
	sub	r15d, eax
	jne	.label_86
	movzx	ecx, byte ptr [rsi + 1]
	mov	r15d, 0x6e
	sub	r15d, ecx
	mov	rbp, rbp
	jne	.label_86
	movzx	ecx, byte ptr [rsi + 2]
	mov	rsp, rsp
	mov	r15d, 0x66
	sub	r15d, ecx
	mov	rsp, rsp
	jne	.label_86
	nop	
	movzx	r15d, byte ptr [rsi + 3]
	nop	
	neg	r15d
.label_86:
	mov	rbp, rdi
	lea	rdi, [rdi]
	jmp	.label_98
	nop	dword ptr [rax + rax]
.label_103:
	mov	rbp, rbp
	inc	rbp
.label_98:
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp]
	lea	rdi, [rdi]
	cmp	ecx, 0x30
	je	.label_103
	test	cl, cl
	jne	.label_92
	mov	rsp, rsp
	lea	rcx, [rbp - 1]
	mov	rsp, rsp
	cmp	rbp, rdi
	cmovne	rbp, rcx
.label_92:
	mov	rsp, rsp
	mov	rbx, rsi
	jmp	.label_80
	nop	word ptr cs:[rax + rax]
.label_88:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbx + 1]
	nop	
	inc	rbx
.label_80:
	movzx	ecx, al
	mov	rsp, rsp
	cmp	ecx, 0x30
	je	.label_88
	nop	
	test	al, al
	mov	rbp, rbp
	jne	.label_90
	mov	rsp, rsp
	lea	rax, [rbx - 1]
	nop	
	cmp	rbx, rsi
	mov	rsp, rsp
	cmovne	rbx, rax
.label_90:
	mov	rdi, rbp
	call	strlen
	mov	r13, rax
	xor	eax, eax
	test	r15d, r15d
	mov	dword ptr [rsp + 4], r15d
	lea	rsi, [rsi]
	je	.label_99
	mov	rdi, rbx
	mov	rsp, rsp
	call	strlen
.label_99:
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	qword ptr [rsp + 0x28], r13
	mov	rsp, rsp
	lea	rcx, [r13 + 1]
	mov	qword ptr [rsp + 0x30], rcx
	nop	
	cmp	rcx, rax
	mov	rbp, rbp
	cmova	rax, rcx
	cmp	rax, 0x1f
	mov	rbp, rbp
	mov	r14d, 0x1f
	cmova	r14, rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], r14
	lea	r15, [r14 + 1]
	mov	rsp, rsp
	mov	rdi, r15
	call	xmalloc
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], rax
	lea	r12, [rax + r14]
	mov	rbp, rbp
	sub	r12, r13
	mov	rbp, rbp
	mov	rdi, r12
	mov	rsi, rbp
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	call	memcpy
	xor	ebp, ebp
	mov	r13d, dword ptr [rsp + 4]
	mov	rbp, rbp
	test	r13d, r13d
	mov	rbp, rbp
	mov	r14d, 0
	je	.label_104
	mov	rdi, r15
	mov	qword ptr [rsp + 0x30], r15
	call	xmalloc
	mov	r14, rax
	mov	rbp, rbp
	mov	rbp, r14
	lea	rdi, [rdi]
	add	rbp, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rsp + 8]
	sub	rbp, rax
	lea	rsi, [rsi]
	lea	rdx, [rax + 1]
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, rbx
	lea	rsi, [rsi]
	mov	rbx, rax
	call	memcpy
	mov	rax, qword ptr [rsp + 0x28]
	nop	
	cmp	rax, rbx
	jb	.label_94
	mov	rsp, rsp
	cmp	rbx, rax
	jb	.label_97
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, rbp
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	nop	
	jle	.label_94
.label_97:
	xor	ebx, ebx
	lea	rsi, [rsi]
	jmp	.label_105
.label_94:
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x30]
.label_104:
	mov	qword ptr [rsp + 0x40], rbp
	mov	qword ptr [rsp + 0x10], r14
	mov	rsp, rsp
	add	r15, r15
	mov	rbp, rbp
	cmp	r15, 0x2000
	mov	rbp, rbp
	mov	ebp, 0x2000
	mov	rsp, rsp
	cmovae	rbp, r15
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rbp
	nop	
	mov	rdi, rbp
	call	xmalloc
	mov	qword ptr [rsp + 0x30], rax
	nop	
	mov	ebx, r13d
	lea	r13, [rax + rbp]
	mov	rsp, rsp
	mov	rcx, -1
	mov	rdi, rax
	mov	rsi, r12
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rdx, rbp
	nop	
	call	__mempcpy_chk
	mov	rsp, rsp
	mov	r14, rax
	mov	rsp, rsp
	test	ebx, ebx
	nop	
	je	.label_102
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_101:
	mov	rbp, rbp
	cmp	rbp, rbx
	jb	.label_82
	lea	rsi, [rsi]
	cmp	rbx, rbp
	mov	rsp, rsp
	jb	.label_84
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x40]
	call	strcmp
	test	eax, eax
	jns	.label_84
.label_82:
	nop	
	mov	rax,  qword ptr [word ptr [rip + separator]]
	mov	al, byte ptr [rax]
	nop	
	mov	byte ptr [r14], al
	inc	r14
	lea	rsi, [rsi]
	lea	rax, [r12 + rbp - 1]
	nop	word ptr cs:[rax + rax]
.label_106:
	movsx	ecx, byte ptr [rax]
	mov	dl, cl
	mov	rsp, rsp
	inc	dl
	mov	rsp, rsp
	mov	byte ptr [rax], dl
	cmp	ecx, 0x39
	mov	rsp, rsp
	jl	.label_93
	mov	rsp, rsp
	mov	byte ptr [rax], 0x30
	lea	rsi, [rsi]
	dec	rax
	nop	
	cmp	rax, r12
	jae	.label_106
	lea	rdi, [rdi]
	mov	byte ptr [r12 - 1], 0x31
	dec	r12
	mov	rbp, rbp
	inc	rbp
.label_93:
	nop	
	cmp	rbp, r15
	jne	.label_85
	mov	rbx, r13
	lea	rsi, [rsi]
	lea	rsi, [r15 + r15 + 1]
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x38]
	call	xrealloc
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], rax
	lea	rdi, [rdi]
	lea	r12, [rax + r15]
	lea	rdi, [rdi]
	lea	rdx, [r15 + 1]
	lea	r15, [r15 + r15]
	mov	rdi, r12
	mov	rsi, rax
	nop	
	call	memmove
	lea	r13, [r15 + r15 + 2]
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x20], r13
	mov	rbp, rbp
	jae	.label_83
	mov	rdi, qword ptr [rsp + 0x30]
	sub	r14, rdi
	mov	rsp, rsp
	mov	rsi, r13
	mov	rbp, rbp
	call	xrealloc
	mov	qword ptr [rsp + 0x30], rax
	add	r14, rax
	lea	rcx, [rax + r13]
	mov	qword ptr [rsp + 0x20], r13
	mov	r13, rcx
	jmp	.label_96
	nop	word ptr cs:[rax + rax]
.label_83:
	lea	rsi, [rsi]
	mov	r13, rbx
.label_96:
	mov	rbx, qword ptr [rsp + 8]
.label_85:
	mov	rcx, -1
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, rbp
	mov	rsp, rsp
	call	__mempcpy_chk
	mov	rsp, rsp
	mov	r14, rax
	mov	rax, rbp
	not	rax
	add	rax, r13
	lea	rdi, [rdi]
	cmp	rax, r14
	lea	rdi, [rdi]
	jae	.label_101
	mov	qword ptr [rsp + 0x18], r15
	mov	r15, rbx
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	sub	r14, rbx
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	edx, 1
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsi, r14
	call	fwrite_unlocked
	cmp	rax, 1
	mov	r14, rbx
	mov	rbx, r15
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0x18]
	je	.label_101
	mov	rbp, rbp
	jmp	.label_81
.label_84:
	mov	byte ptr [r14], 0xa
	nop	
	inc	r14
	mov	rdi, qword ptr [rsp + 0x30]
	sub	r14, rdi
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	edx, 1
	nop	
	mov	rsi, r14
	lea	rsi, [rsi]
	call	fwrite_unlocked
	nop	
	mov	bl, 1
	nop	
	cmp	rax, 1
	mov	r14, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	jne	.label_95
.label_105:
	nop	
	mov	rdi, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	mov	al, bl
	mov	rsp, rsp
	add	rsp, 0x48
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_102:
	mov	r15, qword ptr [rsp + 0x18]
	nop	dword ptr [rax]
.label_87:
	mov	rax,  qword ptr [word ptr [rip + separator]]
	mov	al, byte ptr [rax]
	mov	rsp, rsp
	mov	byte ptr [r14], al
	nop	
	inc	r14
	lea	rax, [r12 + rbp - 1]
	nop	dword ptr [rax + rax]
.label_79:
	nop	
	movsx	ecx, byte ptr [rax]
	mov	dl, cl
	inc	dl
	nop	
	mov	byte ptr [rax], dl
	nop	
	cmp	ecx, 0x39
	jl	.label_107
	mov	byte ptr [rax], 0x30
	dec	rax
	cmp	rax, r12
	lea	rsi, [rsi]
	jae	.label_79
	mov	byte ptr [r12 - 1], 0x31
	nop	
	dec	r12
	lea	rdi, [rdi]
	inc	rbp
.label_107:
	mov	rbp, rbp
	cmp	rbp, r15
	mov	rsp, rsp
	jne	.label_91
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], rbp
	lea	rdi, [rdi]
	mov	rbp, r13
	lea	rsi, [rsi]
	lea	rsi, [r15 + r15 + 1]
	mov	rdi, qword ptr [rsp + 0x38]
	call	xrealloc
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], rax
	lea	rdi, [rdi]
	lea	r12, [rax + r15]
	lea	rdx, [r15 + 1]
	mov	rbp, rbp
	lea	r15, [r15 + r15]
	mov	rdi, r12
	lea	rdi, [rdi]
	mov	rsi, rax
	mov	rbp, rbp
	call	memmove
	lea	rsi, [rsi]
	lea	r13, [r15 + r15 + 2]
	cmp	qword ptr [rsp + 0x20], r13
	jae	.label_100
	nop	
	mov	rdi, qword ptr [rsp + 0x30]
	nop	
	sub	r14, rdi
	mov	rsi, r13
	mov	rbp, rbp
	call	xrealloc
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	add	r14, rax
	lea	rcx, [rax + r13]
	mov	qword ptr [rsp + 0x20], r13
	nop	
	mov	r13, rcx
	jmp	.label_89
	nop	word ptr [rax + rax]
.label_100:
	mov	r13, rbp
.label_89:
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x28]
.label_91:
	mov	rcx, -1
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, rbp
	call	__mempcpy_chk
	mov	r14, rax
	mov	rax, rbp
	lea	rdi, [rdi]
	not	rax
	nop	
	add	rax, r13
	cmp	rax, r14
	nop	
	jae	.label_87
	mov	rbx, qword ptr [rsp + 0x30]
	sub	r14, rbx
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	edx, 1
	mov	rdi, rbx
	mov	rsi, r14
	lea	rsi, [rsi]
	call	fwrite_unlocked
	mov	rbp, rbp
	cmp	rax, 1
	mov	r14, rbx
	nop	
	je	.label_87
.label_81:
	mov	rbp, rbp
	call	io_error
.label_95:
	call	io_error
	.section	.text
	.align	32
	#Procedure 0x403240

	.globl scan_arg
	.type scan_arg, @function
scan_arg:
	push	rbp
	push	r15
	mov	rsp, rsp
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	push	rbx
	nop	
	sub	rsp, 0x38
	lea	rsi, [rsi]
	mov	rbx, rsi
	lea	rdi, [rdi]
	mov	r14, rdi
	mov	rbp, rbp
	lea	rdx, [rsp + 0x10]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:cl_strtold
	mov	rdi, rbx
	call	xstrtold
	test	al, al
	je	.label_126
	mov	rbp, rbp
	fld	xword ptr [rsp + 0x10]
	fld	st(0)
	nop	
	fstp	xword ptr [rsp]
	lea	rdi, [rdi]
	fucomip	st(0)
	nop	
	jp	.label_108
	call	__ctype_b_loc
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	dec	rbx
	nop	word ptr [rax + rax]
.label_117:
	movzx	edx, byte ptr [rbx + 1]
	nop	
	inc	rbx
	mov	rsp, rsp
	movzx	ecx, word ptr [rax + rdx*2]
	mov	rsp, rsp
	and	ecx, 0x2000
	lea	rdi, [rdi]
	cmp	rdx, 0x2b
	lea	rdi, [rdi]
	je	.label_117
	test	cx, cx
	jne	.label_117
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], 0
	mov	dword ptr [rsp + 0x28], 0x7fffffff
	mov	esi, 0x2e
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	strchr
	lea	rdi, [rdi]
	mov	r15, rax
	lea	rsi, [rsi]
	test	r15, r15
	mov	rax, rbx
	mov	rsp, rsp
	jne	.label_112
	mov	esi, 0x70
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	strchr
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	mov	rax, rbx
	lea	rsi, [rsi]
	jne	.label_112
	mov	dword ptr [rsp + 0x28], 0
	lea	rdi, [rdi]
	mov	rax, rbx
.label_112:
	movsx	ecx, byte ptr [rax]
	test	ecx, ecx
	je	.label_109
	inc	rax
	or	ecx, 0x20
	lea	rdi, [rdi]
	cmp	ecx, 0x78
	jne	.label_112
	jmp	.label_118
.label_109:
	lea	rdi, [rdi]
	fldz	
	fld	xword ptr [rsp]
	fmul	st(1)
	lea	rsi, [rsi]
	fucomip	st(1)
	fstp	st(0)
	jne	.label_118
	jp	.label_118
	mov	rdi, rbx
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_127
	nop	word ptr [rax + rax]
.label_124:
	mov	rbp, rcx
	movsx	edx, byte ptr [r15 + rbp + 1]
	nop	
	test	edx, edx
	lea	rdi, [rdi]
	je	.label_111
	mov	rsp, rsp
	lea	rcx, [rbp + 1]
	or	edx, 0x20
	cmp	edx, 0x65
	jne	.label_124
.label_111:
	mov	rsp, rsp
	cmp	rbp, 0x7fffffff
	nop	
	ja	.label_114
	mov	dword ptr [rsp + 0x28], ebp
	mov	rsp, rsp
	mov	rcx, -1
	nop	
	test	rbp, rbp
	je	.label_120
.label_114:
	mov	cl, 1
	lea	rsi, [rsi]
	cmp	r15, rbx
	mov	rbp, rbp
	je	.label_122
	movsx	ecx, byte ptr [r15 - 1]
	add	ecx, -0x30
	cmp	ecx, 9
	nop	
	seta	cl
.label_122:
	nop	
	movzx	ecx, cl
.label_120:
	lea	rdi, [rdi]
	add	rax, rcx
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_119
.label_127:
	mov	rsp, rsp
	xor	ebp, ebp
.label_119:
	mov	esi, 0x65
	mov	rdi, rbx
	mov	rsp, rsp
	call	strchr
	lea	rsi, [rsi]
	mov	r13, rax
	test	r13, r13
	lea	rdi, [rdi]
	jne	.label_113
	mov	rbp, rbp
	mov	esi, 0x45
	mov	rdi, rbx
	call	strchr
	mov	r13, rax
	test	r13, r13
	mov	rbp, rbp
	je	.label_118
.label_113:
	nop	
	mov	qword ptr [rsp], r14
	lea	rdi, [r13 + 1]
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edx, 0xa
	nop	
	call	strtol
	nop	
	mov	r12, rax
	mov	rsp, rsp
	test	r12, r12
	lea	rsi, [rsi]
	movsxd	r14, dword ptr [rsp + 0x28]
	nop	
	js	.label_123
	cmp	r14, r12
	mov	rax, r12
	lea	rsi, [rsi]
	cmovle	rax, r14
.label_123:
	sub	r14d, eax
	mov	dword ptr [rsp + 0x28], r14d
	mov	rsp, rsp
	mov	rdi, rbx
	call	strlen
	mov	rcx, r13
	lea	rdi, [rdi]
	sub	rcx, rbx
	sub	rcx, rax
	mov	rbp, rbp
	add	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbp, rbp
	test	r12, r12
	js	.label_110
	test	r15, r15
	je	.label_116
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_116
	test	r14d, r14d
	lea	rdi, [rdi]
	jne	.label_116
	dec	rcx
	mov	qword ptr [rsp + 0x20], rcx
.label_116:
	mov	r14, qword ptr [rsp]
	mov	rbp, rbp
	cmp	rbp, r12
	cmovae	rbp, r12
	mov	rsp, rsp
	sub	r12, rbp
	jmp	.label_121
.label_110:
	test	r15, r15
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp]
	lea	rsi, [rsi]
	je	.label_125
	inc	r15
	cmp	r13, r15
	mov	rsp, rsp
	jne	.label_115
.label_125:
	inc	rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rcx
.label_115:
	neg	r12
.label_121:
	mov	rbp, rbp
	add	rcx, r12
	mov	qword ptr [rsp + 0x20], rcx
.label_118:
	mov	rbp, rbp
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movaps	xmm1, xmmword ptr [rsp + 0x20]
	movaps	xmmword ptr [r14 + 0x10], xmm1
	movaps	xmmword ptr [r14], xmm0
	mov	rbp, rbp
	add	rsp, 0x38
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
.label_126:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	r14, rax
	mov	rdi, rbx
	mov	rsp, rsp
	call	quote
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	nop	
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	rdx, r14
	call	error
	mov	edi, 1
	call	usage
.label_108:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	nop	
	mov	r14, rax
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.54
	call	quote_n
	mov	r15, rax
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	quote_n
	mov	rsp, rsp
	mov	rbx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	rdx, r14
	mov	rcx, r15
	mov	r8, rbx
	call	error
	lea	rdi, [rdi]
	mov	edi, 1
	call	usage
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403620

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
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, ebx
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	error
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403670

	.globl cl_strtold
	.type cl_strtold, @function
cl_strtold:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	lea	rdi, [rdi]
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	lea	rsi, [rsp]
	mov	rsp, rsp
	call	strtold
	mov	rbp, rbp
	mov	r12, qword ptr [rsp]
	cmp	byte ptr [r12], 0
	je	.label_130
	fstp	xword ptr [rsp + 0xc]
	call	__errno_location
	mov	rbp, rbp
	mov	r15, rax
	nop	
	mov	ebp, dword ptr [r15]
	lea	rsi, [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	c_strtold
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	cmp	r12, rax
	lea	rdi, [rdi]
	jae	.label_129
	mov	qword ptr [rsp], rax
	mov	r12, rax
	lea	rsi, [rsi]
	jmp	.label_130
.label_129:
	fstp	st(0)
	mov	dword ptr [r15], ebp
	fld	xword ptr [rsp + 0xc]
.label_130:
	test	r14, r14
	mov	rbp, rbp
	je	.label_128
	mov	qword ptr [r14], r12
.label_128:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x403710
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
	#Procedure 0x403720
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403730

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	call	close_stream
	test	eax, eax
	je	.label_132
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_131
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_131
.label_132:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_134
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_131:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_2
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_133
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rdi, [rdi]
	mov	rcx, rbx
	mov	rsp, rsp
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_134:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_133:
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
	mov	r8, rbx
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403830

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
	je	.label_135
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
	jl	.label_137
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_137
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
	jne	.label_136
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_136:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_137:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_135:
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
	.align	32
	#Procedure 0x403920
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
	#Procedure 0x403970
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
	#Procedure 0x403990
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
	#Procedure 0x4039b0
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
	#Procedure 0x403a20
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
	#Procedure 0x403a40
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
	je	.label_138
	test	rdx, rdx
	nop	
	je	.label_138
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_138:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403a80
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
	mov	r8, qword ptr [rbp]
	mov	rax, qword ptr [rbp + 0x28]
	mov	r9, r8
	shr	r9, 0x20
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + 0x30]
	mov	rsp, rsp
	add	rbp, 8
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	qword ptr [rsp], rbp
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x20]
	call	quotearg_buffer_restyled
	mov	dword ptr [rbx], r14d
	add	rsp, 0x28
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b30

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
	sub	rsp, 0xf8
	mov	ebx, r9d
	nop	
	mov	dword ptr [rsp + 0x24], ebx
	mov	r12d, r8d
	mov	r15, rcx
	mov	qword ptr [rsp + 0xe0], rdx
	mov	rbp, rbp
	mov	r13, rsi
	mov	qword ptr [rsp + 0xb8], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x140]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x138]
	mov	qword ptr [rsp + 0x18], rax
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xa8], rax
	mov	dl, bl
	mov	rbp, rbp
	shr	dl, 1
	mov	rbp, rbp
	and	dl, 1
	nop	
	mov	eax, ebx
	and	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x94], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x5c], ebx
	mov	rsp, rsp
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xa0], rax
	mov	eax, 0
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xc8], rcx
.label_253:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r12d
	lea	rsi, [rsi]
	cmp	r12d, 0xa
	lea	rdi, [rdi]
	ja	.label_149
	mov	r9d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	r10, r15
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_158]]
.label_395:
	mov	r15d, edi
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.11_0
	nop	
	mov	esi, r12d
	mov	r14, r10
	nop	
	mov	r13b, r8b
	mov	bl, dl
	mov	rbp, rbp
	call	gettext_quote
	mov	qword ptr [rsp + 0x18], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	rsp, rsp
	mov	esi, r12d
	call	gettext_quote
	mov	rsp, rsp
	mov	dl, bl
	mov	rsp, rsp
	mov	edi, r15d
	mov	r8b, r13b
	mov	r10, r14
	nop	
	mov	qword ptr [rsp + 0x98], rax
.label_396:
	nop	
	mov	qword ptr [rsp + 0xd8], r10
	mov	byte ptr [rsp + 0xf7], r8b
	mov	dword ptr [rsp + 0x38], edi
	test	dl, 1
	mov	rbp, rbp
	mov	r15b, dl
	mov	rbp, rbp
	mov	r14d, 0
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	jne	.label_188
	mov	al, byte ptr [rdx]
	test	al, al
	mov	r14d, 0
	je	.label_188
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_255:
	mov	rsp, rsp
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_203
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_203:
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + r14 + 1]
	mov	rsp, rsp
	inc	r14
	test	al, al
	mov	rbp, rbp
	jne	.label_255
.label_188:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x98]
	nop	
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	strlen
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa0], rax
	mov	rbp, rbp
	mov	r9d, r12d
	mov	qword ptr [rsp + 0x68], rbx
	mov	r13b, 1
	mov	rbp, rbp
	mov	sil, r15b
	mov	r10, qword ptr [rsp + 0xd8]
	nop	
	mov	r8b, byte ptr [rsp + 0xf7]
	mov	edi, dword ptr [rsp + 0x38]
	mov	r11, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	jmp	.label_139
.label_388:
	xor	r9d, r9d
	xor	r14d, r14d
	mov	rbp, rbp
	mov	r13b, al
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_139
.label_391:
	lea	rsi, [rsi]
	mov	al, 1
.label_389:
	lea	rsi, [rsi]
	mov	dl, 1
.label_392:
	nop	
	test	dl, 1
	lea	rsi, [rsi]
	mov	cl, 1
	mov	rbp, rbp
	je	.label_239
	mov	rbp, rbp
	mov	cl, al
.label_239:
	mov	al, cl
.label_390:
	nop	
	mov	r9d, 2
	lea	rsi, [rsi]
	test	dl, 1
	mov	rsp, rsp
	jne	.label_241
	test	rbp, rbp
	je	.label_247
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx], 0x27
	mov	r14d, 1
	lea	rdi, [rdi]
	jmp	.label_248
.label_241:
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_248
.label_393:
	mov	rsp, rsp
	mov	r9d, 5
	test	dl, 1
	jne	.label_256
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_262
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x22
	mov	r14d, 1
	jmp	.label_171
.label_394:
	mov	r13b, 1
	mov	rsp, rsp
	mov	r9d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xa0], rax
	mov	sil, 1
	lea	rsi, [rsi]
	jmp	.label_139
.label_247:
	mov	r14d, 1
	nop	word ptr cs:[rax + rax]
.label_248:
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0x68], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xa0], rcx
	nop	
	mov	r13b, al
	nop	
	mov	sil, dl
	jmp	.label_139
.label_256:
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_171
.label_262:
	nop	
	mov	r14d, 1
.label_171:
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0x68], rax
	mov	rbp, rbp
	mov	eax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa0], rax
	lea	rdi, [rdi]
	mov	r13b, 1
	mov	sil, dl
	nop	word ptr cs:[rax + rax]
.label_139:
	mov	qword ptr [rsp + 0x28], rsi
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x46], r13b
	cmp	qword ptr [rsp + 0x130], 0
	mov	rbp, rbp
	setne	r12b
	mov	rbp, rbp
	cmp	r9d, 2
	nop	
	setne	r15b
	sete	al
	mov	cl, r13b
	mov	rsp, rsp
	and	cl, 1
	mov	byte ptr [rsp + 0x37], cl
	lea	rsi, [rsi]
	sete	byte ptr [rsp + 0xf6]
	mov	bl, r15b
	and	bl, cl
	mov	byte ptr [rsp + 0x83], bl
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0xa0], 0
	lea	rsi, [rsi]
	setne	cl
	mov	dl, cl
	lea	rsi, [rsi]
	and	dl, bl
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x56], dl
	mov	rbp, rbp
	mov	bl, sil
	and	bl, 1
	mov	byte ptr [rsp + 0xc6], bl
	sete	dl
	lea	rdi, [rdi]
	and	al, bl
	mov	byte ptr [rsp + 0x47], al
	and	r12b, bl
	mov	byte ptr [rsp + 0x57], r12b
	mov	rsp, rsp
	or	dl, r15b
	mov	byte ptr [rsp + 0xc7], dl
	and	r13b, sil
	mov	rbp, rbp
	and	r13b, cl
	mov	byte ptr [rsp + 0xb7], r13b
	mov	rsp, rsp
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_190
	nop	dword ptr [rax]
.label_184:
	mov	rsp, rsp
	inc	r15
.label_190:
	lea	rdi, [rdi]
	cmp	r10, -1
	lea	rsi, [rsi]
	je	.label_173
	cmp	r15, r10
	jne	.label_234
	jmp	.label_266
	nop	dword ptr [rax]
.label_173:
	mov	rcx, -1
	nop	
	cmp	byte ptr [r11 + r15], 0
	mov	rsp, rsp
	je	.label_237
.label_234:
	cmp	byte ptr [rsp + 0x56], 0
	nop	
	je	.label_238
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rbx, [r15 + rax]
	mov	qword ptr [rsp + 0x88], r15
	lea	rsi, [rsi]
	cmp	rax, 2
	jb	.label_244
	lea	rdi, [rdi]
	cmp	r10, -1
	nop	
	jne	.label_244
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	rdi, r11
	mov	r12b, r8b
	mov	r13, r9
	mov	r15, r14
	lea	rsi, [rsi]
	mov	r14, r11
	nop	
	call	strlen
	mov	rbp, rbp
	mov	r11, r14
	mov	r14, r15
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0x38]
	mov	r9, r13
	mov	r8b, r12b
	mov	r10, rax
.label_244:
	mov	rsp, rsp
	cmp	rbx, r10
	lea	rdi, [rdi]
	jbe	.label_143
	mov	dword ptr [rsp + 0x84], 0
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	jmp	.label_148
	nop	dword ptr [rax]
.label_238:
	nop	
	mov	dword ptr [rsp + 0x84], 0
	lea	rsi, [rsi]
	jmp	.label_148
	nop	word ptr cs:[rax + rax]
.label_143:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], r14
	mov	r15d, edi
	lea	rdi, [rdi]
	mov	r13, r9
	mov	rsp, rsp
	mov	r12b, r8b
	lea	rsi, [rsi]
	mov	rbx, r10
	mov	rax, qword ptr [rsp + 0x88]
	lea	rdi, [r11 + rax]
	nop	
	mov	r14, r11
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xa0]
	call	memcmp
	lea	rsi, [rsi]
	test	eax, eax
	sete	al
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x84], eax
	mov	rsp, rsp
	jne	.label_187
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xc6], 0
	mov	rsp, rsp
	mov	r10, rbx
	nop	
	mov	r8b, r12b
	lea	rsi, [rsi]
	mov	r9, r13
	nop	
	mov	edi, r15d
	mov	rbp, rbp
	mov	r11, r14
	mov	r14, qword ptr [rsp + 0x38]
	nop	
	mov	r15, qword ptr [rsp + 0x88]
	je	.label_148
	jmp	.label_153
.label_187:
	mov	r10, rbx
	mov	r8b, r12b
	mov	r9, r13
	mov	edi, r15d
	lea	rsi, [rsi]
	mov	r11, r14
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x38]
	mov	r15, qword ptr [rsp + 0x88]
	nop	dword ptr [rax + rax]
.label_148:
	movzx	r12d, byte ptr [r11 + r15]
	cmp	r12, 0x7e
	ja	.label_217
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	r13b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	rsp, rsp
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_219]]
.label_433:
	test	r15, r15
	jne	.label_189
	jmp	.label_226
.label_437:
	xor	eax, eax
	cmp	r10, -1
	je	.label_228
	test	r15, r15
	jne	.label_230
	nop	
	cmp	r10, 1
	je	.label_226
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_179
.label_426:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0x37], 0
	mov	rbp, rbp
	je	.label_235
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_153
	nop	
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_242
	nop	
	mov	al, dil
	nop	
	and	al, 1
	jne	.label_242
	cmp	r14, rbp
	jae	.label_246
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_246:
	nop	
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_185
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x24
.label_185:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_261
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_261:
	nop	
	add	r14, 3
	lea	rdi, [rdi]
	mov	dil, 1
.label_242:
	mov	rcx, r14
	nop	
	cmp	rcx, rbp
	mov	rsp, rsp
	jae	.label_141
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x5c
.label_141:
	lea	r14, [rcx + 1]
	mov	rbp, rbp
	mov	al, 1
	mov	r12b, 0x30
	cmp	r9d, 2
	je	.label_155
	lea	rdx, [r15 + 1]
	cmp	rdx, r10
	jae	.label_161
	nop	
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	mov	rbp, rbp
	movzx	edx, dl
	cmp	edx, 9
	mov	rbp, rbp
	ja	.label_162
	mov	rsp, rsp
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_169
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rdx + r14], 0x30
.label_169:
	nop	
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_180
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + rdx], 0x30
.label_180:
	add	rcx, 3
	xor	r13d, r13d
	lea	rdi, [rdi]
	mov	r14, rcx
	jmp	.label_179
.label_427:
	mov	bl, 0x62
	nop	
	jmp	.label_191
.label_428:
	mov	rsp, rsp
	mov	cl, 0x74
	lea	rsi, [rsi]
	jmp	.label_146
.label_429:
	mov	bl, 0x76
	mov	rbp, rbp
	jmp	.label_191
.label_430:
	lea	rdi, [rdi]
	mov	bl, 0x66
	jmp	.label_191
.label_431:
	mov	cl, 0x72
	lea	rdi, [rdi]
	jmp	.label_146
.label_434:
	nop	
	mov	al, 1
	mov	qword ptr [rsp + 0xc8], rax
	cmp	r9d, 2
	jne	.label_201
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_208
	nop	
	test	rbp, rbp
	sete	al
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rdx, rcx
	mov	rsp, rsp
	test	rdx, rdx
	setne	cl
	lea	rsi, [rsi]
	or	cl, al
	mov	rbp, rbp
	cmove	rdx, rbp
	mov	qword ptr [rsp + 0x48], rdx
	mov	rsp, rsp
	mov	eax, 0
	cmove	rbp, rax
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_212
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_212:
	lea	rax, [r14 + 1]
	lea	rdi, [rdi]
	cmp	rax, rbp
	jae	.label_227
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x5c
.label_227:
	lea	rdi, [rdi]
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_165
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_165:
	mov	rbp, rbp
	add	r14, 3
	lea	rdi, [rdi]
	xor	edi, edi
.label_201:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	r13b, 1
	jmp	.label_179
.label_435:
	lea	rdi, [rdi]
	cmp	r9d, 5
	je	.label_240
	mov	rbp, rbp
	cmp	r9d, 2
	jne	.label_189
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_189
	nop	
	jmp	.label_252
.label_436:
	mov	rsp, rsp
	cmp	r9d, 2
	nop	
	jne	.label_254
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_258
	jmp	.label_263
.label_217:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	qword ptr [rsp + 0xd0], r9
	mov	byte ptr [rsp + 0xf7], r8b
	mov	qword ptr [rsp + 0x78], rbp
	cmp	qword ptr [rsp + 0xa8], 1
	lea	rsi, [rsi]
	jne	.label_236
	mov	rbp, rbp
	mov	rbx, r10
	mov	rbp, r11
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	r11, rbp
	nop	
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r12*2]
	shr	r13d, 0xe
	mov	rsp, rsp
	and	r13b, 1
	lea	rdi, [rdi]
	mov	edx, 1
	lea	rsi, [rsi]
	jmp	.label_211
.label_228:
	lea	rdi, [rdi]
	test	r15, r15
	jne	.label_167
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_167
.label_226:
	mov	dl, 1
.label_432:
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_175
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r13b, dl
	lea	rdi, [rdi]
	jmp	.label_179
.label_235:
	cmp	dword ptr [rsp + 0x94], 0
	mov	rsp, rsp
	jne	.label_184
	jmp	.label_189
.label_254:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	cl, r12b
	je	.label_146
.label_258:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_170
.label_146:
	cmp	byte ptr [rsp + 0xc7], 0
	mov	rbp, rbp
	mov	bl, cl
	je	.label_196
.label_191:
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x37], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_179
	jmp	.label_200
.label_236:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], 0
	lea	rsi, [rsi]
	cmp	r10, -1
	lea	rbp, [rsp + 0x70]
	jne	.label_206
	mov	rdi, r11
	mov	rbx, r11
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	r11, rbx
	mov	r10, rax
.label_206:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd8], r10
	nop	
	mov	r13b, 1
	nop	
	cmp	byte ptr [rsp + 0x47], 0
	lea	rsi, [rsi]
	mov	edx, 0
	je	.label_192
	lea	rax, [r11 + r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe8], rax
	lea	rsi, [rsi]
	mov	r13b, 1
	nop	
	xor	edx, edx
.label_267:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x88], rdx
	lea	rax, [rdx + r15]
	lea	rsi, [r11 + rax]
	mov	rsp, rsp
	mov	rdx, r10
	lea	rsi, [rsi]
	sub	rdx, rax
	lea	rdi, [rsp + 0x58]
	mov	rcx, rbp
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	rbx, rax
	cmp	rbx, -2
	lea	rdi, [rdi]
	je	.label_205
	mov	rsp, rsp
	cmp	rbx, -1
	movabs	rsi, 0x20000002b
	je	.label_197
	test	rbx, rbx
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_152
	lea	rsi, [rsi]
	cmp	rbx, 2
	nop	
	mov	rbp, qword ptr [rsp + 0x78]
	jb	.label_250
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, qword ptr [rsp + 0xe8]
	lea	rdi, [rdi]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax + rax]
.label_218:
	nop	
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	mov	rbp, rbp
	cmp	edx, 0x21
	mov	rbp, rbp
	ja	.label_265
	lea	rsi, [rsi]
	bt	rsi, rdx
	nop	
	jb	.label_142
.label_265:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbx
	jb	.label_218
.label_250:
	mov	edi, dword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_157
	mov	rbp, rbp
	xor	r13d, r13d
.label_157:
	lea	rbp, [rsp + 0x70]
	nop	
	mov	rax, qword ptr [rsp + 0x88]
	lea	rdi, [rdi]
	add	rax, rbx
	mov	rdi, rbp
	nop	
	mov	rbx, rax
	call	mbsinit
	mov	rdx, rbx
	test	eax, eax
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	je	.label_267
	jmp	.label_151
	nop	
.label_192:
	mov	qword ptr [rsp + 0x88], rdx
	lea	rax, [rdx + r15]
	lea	rsi, [rsi]
	lea	rsi, [r11 + rax]
	mov	rdx, r10
	lea	rdi, [rdi]
	sub	rdx, rax
	mov	rsp, rsp
	lea	rdi, [rsp + 0x58]
	lea	rsi, [rsi]
	mov	rcx, rbp
	mov	rbp, rbp
	mov	rbx, rbp
	call	rpl_mbrtowc
	mov	rbp, rax
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_194
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_197
	mov	rbp, rbp
	cmp	rbp, -2
	mov	rsp, rsp
	je	.label_205
	mov	edi, dword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	call	iswprint
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_209
	xor	r13d, r13d
.label_209:
	nop	
	mov	rax, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	add	rax, rbp
	mov	rsp, rsp
	mov	rbp, rbx
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rbx, rax
	lea	rdi, [rdi]
	call	mbsinit
	mov	rdx, rbx
	test	eax, eax
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_192
	lea	rsi, [rsi]
	jmp	.label_151
.label_167:
	lea	rdi, [rdi]
	mov	r10, -1
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_179
.label_240:
	cmp	dword ptr [rsp + 0x5c], 0
	lea	rdi, [rdi]
	je	.label_189
	lea	rcx, [r15 + 2]
	cmp	rcx, r10
	jae	.label_189
	movzx	eax, byte ptr [r15 + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_189
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	nop	
	cmp	edx, 0x3e
	lea	rdi, [rdi]
	ja	.label_259
	movabs	rsi, 0x7000a38200000000
	mov	rbp, rbp
	bt	rsi, rdx
	lea	rsi, [rsi]
	jae	.label_214
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_160
	lea	rdi, [rdi]
	cmp	r14, rbp
	jae	.label_183
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x3f
.label_183:
	mov	rsp, rsp
	lea	rax, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rax, rbp
	jae	.label_257
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x22
.label_257:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_224
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rax], 0x22
.label_224:
	nop	
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_145
	nop	
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x3f
.label_145:
	add	r14, 4
	xor	eax, eax
	nop	
	mov	r15, rcx
	mov	rsp, rsp
	mov	r12b, dl
	mov	rsp, rsp
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_179
.label_189:
	mov	rbp, rbp
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_179:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x83], 0
	je	.label_164
	cmp	qword ptr [rsp + 0x130], 0
	jne	.label_168
	nop	
	jmp	.label_178
	nop	dword ptr [rax + rax]
.label_164:
	cmp	byte ptr [rsp + 0x57], 0
	lea	rdi, [rdi]
	je	.label_178
.label_168:
	lea	rdi, [rdi]
	mov	cl, r12b
	lea	rdi, [rdi]
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	lea	rsi, [rsi]
	mov	cl, r12b
	shl	esi, cl
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
	jne	.label_181
	mov	rcx, qword ptr [rsp + 0x130]
	and	esi, dword ptr [rcx + rdx*4]
	mov	rbp, rbp
	jmp	.label_260
	nop	word ptr cs:[rax + rax]
.label_178:
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
.label_260:
	mov	bl, r12b
	je	.label_170
	jmp	.label_200
.label_181:
	mov	bl, r12b
.label_200:
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_153
	cmp	r9d, 2
	jne	.label_204
	mov	al, dil
	and	al, 1
	jne	.label_204
	lea	rdi, [rdi]
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_210
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_210:
	nop	
	lea	rax, [r14 + 1]
	mov	rsp, rsp
	cmp	rax, rbp
	jae	.label_215
	mov	rcx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_215:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_220
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_220:
	mov	rsp, rsp
	add	r14, 3
	mov	dil, 1
.label_204:
	mov	rbp, rbp
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_225
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_225:
	mov	rbp, rbp
	inc	r14
	jmp	.label_232
.label_230:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_179
.label_155:
	xor	r13d, r13d
	jmp	.label_179
.label_161:
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_179
.label_162:
	mov	rsp, rsp
	xor	r13d, r13d
	jmp	.label_179
.label_197:
	xor	r13d, r13d
.label_194:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	jmp	.label_151
.label_205:
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x88]
	lea	rax, [rdx + r15]
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	cmp	rax, r10
	mov	r11, qword ptr [rsp + 0xe0]
	jae	.label_249
	lea	rax, [r11 + r15]
.label_264:
	mov	rbp, rbp
	cmp	byte ptr [rax + rdx], 0
	mov	rbp, rbp
	je	.label_229
	lea	rcx, [r15 + rdx + 1]
	inc	rdx
	cmp	rcx, r10
	lea	rdi, [rdi]
	jb	.label_264
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_151
.label_249:
	xor	r13d, r13d
	jmp	.label_151
.label_229:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_151
.label_152:
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0x88]
.label_151:
	mov	rbp, rbp
	mov	rbx, r10
.label_211:
	mov	rsp, rsp
	and	r13b, 1
	lea	rdi, [rdi]
	mov	cl, r13b
	lea	rdi, [rdi]
	or	cl, byte ptr [rsp + 0xf6]
	cmp	rdx, 1
	mov	rbp, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	mov	r8b, byte ptr [rsp + 0xf7]
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0xd0]
	mov	edi, dword ptr [rsp + 0x38]
	ja	.label_176
	test	cl, cl
	je	.label_176
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_179
.label_176:
	mov	rsp, rsp
	add	rdx, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x88], rdx
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_182
	nop	dword ptr [rax]
.label_172:
	nop	
	inc	r14
	mov	rbp, rbp
	mov	r12b, byte ptr [r11 + r15 + 1]
	nop	
	mov	r15, rdx
.label_182:
	mov	rsp, rsp
	test	cl, cl
	je	.label_193
	mov	edx, dword ptr [rsp + 0x84]
	test	dl, 1
	lea	rsi, [rsi]
	je	.label_195
	cmp	r14, rbp
	jae	.label_198
	nop	
	mov	rdx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + r14], 0x5c
.label_198:
	inc	r14
	mov	dword ptr [rsp + 0x84], 0
.label_195:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_207
	nop	dword ptr [rax + rax]
.label_193:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_213
	cmp	r9d, 2
	mov	rsp, rsp
	mov	r10, rbx
	jne	.label_174
	mov	rsp, rsp
	mov	al, dil
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_174
	lea	rsi, [rsi]
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_221
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_221:
	lea	rax, [r14 + 1]
	nop	
	cmp	rax, rbp
	jae	.label_243
	mov	rdx, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_243:
	lea	rax, [r14 + 2]
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_231
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdx + rax], 0x27
.label_231:
	lea	rsi, [rsi]
	add	r14, 3
	mov	rsp, rsp
	mov	dil, 1
.label_174:
	cmp	r14, rbp
	jae	.label_216
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_216:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_199
	mov	dl, r12b
	lea	rdi, [rdi]
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], dl
.label_199:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	mov	rsp, rsp
	jae	.label_177
	mov	dl, r12b
	shr	dl, 3
	and	dl, 7
	nop	
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rsi + rax], dl
.label_177:
	nop	
	add	r14, 3
	mov	rsp, rsp
	and	r12b, 7
	or	r12b, 0x30
	mov	rbp, rbp
	mov	al, 1
.label_207:
	lea	rdx, [r15 + 1]
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x88], rdx
	lea	rsi, [rsi]
	jbe	.label_170
	mov	rbp, rbp
	test	dil, 1
	lea	rsi, [rsi]
	je	.label_154
	lea	rsi, [rsi]
	mov	bl, al
	and	bl, 1
	jne	.label_154
	nop	
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_202
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + r14], 0x27
.label_202:
	lea	rsi, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rsi, rbp
	jae	.label_144
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdi + rsi], 0x27
.label_144:
	add	r14, 2
	mov	rsp, rsp
	xor	edi, edi
.label_154:
	nop	
	mov	rbx, r10
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_172
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + r14], r12b
	jmp	.label_172
	nop	word ptr cs:[rax + rax]
.label_170:
	test	dil, 1
	je	.label_186
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_186
	nop	
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_251
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_251:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_166
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_166:
	lea	rdi, [rdi]
	add	r14, 2
	nop	
	xor	edi, edi
.label_186:
	lea	rsi, [rsi]
	mov	bl, r12b
.label_232:
	cmp	r14, rbp
	jae	.label_147
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + r14], bl
.label_147:
	inc	r14
	lea	rsi, [rsi]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	lea	rsi, [rsi]
	mov	r8b, r13b
	jmp	.label_184
.label_259:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_179
.label_214:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_179
	nop	word ptr [rax + rax]
.label_266:
	nop	
	mov	rcx, r15
.label_237:
	mov	rbp, rbp
	cmp	r9d, 2
	nop	
	setne	al
	mov	rbp, rbp
	test	r14, r14
	mov	rsp, rsp
	setne	dl
	cmp	byte ptr [rsp + 0xc6], 0
	lea	rsi, [rsi]
	je	.label_223
	mov	rsp, rsp
	or	al, dl
	je	.label_150
.label_223:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe0], r11
	cmp	r9d, 2
	nop	
	setne	al
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x46]
	nop	
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	je	.label_233
	mov	rsp, rsp
	or	al, dl
	jne	.label_233
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rdi, [rdi]
	jne	.label_245
	cmp	qword ptr [rsp + 0x48], 0
	mov	rsp, rsp
	je	.label_233
	mov	rbp, rbp
	test	rbp, rbp
	mov	rbp, rbp
	mov	r12d, r9d
	mov	al, bl
	mov	r15, rcx
	lea	rsi, [rsi]
	mov	dl, sil
	mov	r13, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	je	.label_253
.label_233:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x68]
	test	rdx, rdx
	je	.label_140
	nop	
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_140
	mov	rsp, rsp
	mov	al, byte ptr [rdx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_140
	mov	rbp, rbp
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_159:
	cmp	r14, rbp
	jae	.label_156
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_156:
	mov	rbp, rbp
	inc	r14
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	lea	rsi, [rsi]
	test	al, al
	jne	.label_159
.label_140:
	cmp	r14, rbp
	jae	.label_163
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + r14], 0
	jmp	.label_163
.label_175:
	lea	rdi, [rdi]
	mov	r9d, 2
	jmp	.label_153
.label_142:
	mov	r9d, 2
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	jmp	.label_153
.label_213:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_153
.label_150:
	lea	rdi, [rdi]
	mov	r10, rcx
	mov	rsp, rsp
	jmp	.label_153
.label_196:
	nop	
	mov	r9d, 2
.label_153:
	cmp	byte ptr [rsp + 0x37], 0
	mov	r8d, 4
	mov	rbp, rbp
	cmove	r8d, r9d
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x24]
	lea	rdi, [rdi]
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	nop	
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], 0
	nop	
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	rsi, rbp
	lea	rdi, [rdi]
	mov	rdx, r11
	nop	
	mov	rcx, r10
.label_222:
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	r14, rax
.label_163:
	lea	rdi, [rdi]
	mov	rax, r14
	lea	rdi, [rdi]
	add	rsp, 0xf8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
.label_245:
	mov	rax, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x130]
	nop	
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x24]
	jmp	.label_222
.label_208:
	mov	r9d, 2
	jmp	.label_153
.label_263:
	nop	
	mov	r9d, 2
	mov	rsp, rsp
	jmp	.label_153
.label_252:
	mov	r9d, 2
	mov	rbp, rbp
	jmp	.label_153
.label_160:
	mov	r9d, 5
	nop	
	jmp	.label_153
.label_149:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404fd0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rdi, [rdi]
	push	r12
	nop	
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x38
	lea	rsi, [rsi]
	mov	r12, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rbx
	mov	rbp, rbp
	test	rdx, rdx
	lea	rdi, [rdi]
	mov	r14d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r14, rdx
	lea	rsi, [rsi]
	call	__errno_location
	mov	qword ptr [rsp + 0x28], rax
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x24], ecx
	mov	rsp, rsp
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	mov	rbp, rbp
	or	ebp, 1
	mov	rbp, rbp
	lea	r15, [r14 + 8]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp], r15
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	rdx, rbx
	lea	rsi, [rsi]
	mov	rcx, r12
	lea	rdi, [rdi]
	mov	r9d, ebp
	nop	
	call	quotearg_buffer_restyled
	mov	rsp, rsp
	mov	rbx, rax
	lea	rdi, [rdi]
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	lea	rsi, [rsi]
	mov	r13, rax
	nop	
	mov	r8d, dword ptr [r14]
	mov	rax, qword ptr [r14 + 0x28]
	nop	
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], r15
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	rcx, r12
	mov	r9d, ebp
	lea	rsi, [rsi]
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x24]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	mov	rsp, rsp
	add	rsp, 0x38
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405110
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
	mov	qword ptr [rsp + 0x40], r14
	mov	r15, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r12, rcx
	mov	rbp, rbp
	call	__errno_location
	mov	qword ptr [rsp + 0x20], rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x3c], ecx
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
	call	xmalloc
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
	mov	rdx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	rax, rax
	mov	ecx, dword ptr [rsp + 0x3c]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	dword ptr [rdx], ecx
	je	.label_268
	mov	qword ptr [rax], rbx
.label_268:
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
	#Procedure 0x405260
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_269
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_273:
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
	jl	.label_273
.label_269:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_272
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_270]], OFFSET FLAT:slot0
.label_272:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_271
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_271:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405320
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x405330

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
	mov	qword ptr [rsp + 0x20], rsi
	mov	ebx, edi
	call	__errno_location
	test	ebx, ebx
	js	.label_280
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_275
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_276
.label_275:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_277
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
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
	jne	.label_279
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_279:
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
.label_276:
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
	mov	qword ptr [rsp + 0x30], rcx
	mov	r8d, dword ptr [rcx]
	mov	r12d, dword ptr [rcx + 4]
	or	r12d, 1
	mov	rsp, rsp
	lea	rdx, [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], rdx
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
	mov	rdx, qword ptr [rsp + 0x20]
	nop	
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	nop	
	mov	r14, rax
	cmp	r15, r14
	ja	.label_278
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
	je	.label_274
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_274:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	call	xmalloc
	mov	rbx, rax
	nop	
	mov	qword ptr [rbp], rbx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rcx]
	nop	
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
.label_278:
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x1c]
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
.label_280:
	lea	rdi, [rdi]
	call	abort
.label_277:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x4055a0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4055b0
	.globl quotearg
	.type quotearg, @function
quotearg:

	nop
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	nop	
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055e0
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rdi, [rdi]
	xor	edi, edi
	mov	ecx, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	mov	rsi, rdx
	mov	rdx, rax
	lea	rdi, [rdi]
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405610
	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:

	nop
	sub	rsp, 0x78
	mov	rbp, rbp
	mov	rax, rdx
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp + 0x30], 0
	lea	rdi, [rdi]
	cmp	esi, 0xa
	je	.label_281
	mov	dword ptr [rsp + 0x40], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x64], xmm2
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x54], xmm1
	lea	rsi, [rsi]
	movups	xmmword ptr [rsp + 0x44], xmm0
	mov	rbp, rbp
	lea	rcx, [rsp + 0x40]
	mov	rdx, -1
	mov	rsp, rsp
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_281:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4056a0
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:

	mov	rbp, rbp
	sub	rsp, 0x78
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp + 0x30], 0
	lea	rdi, [rdi]
	cmp	esi, 0xa
	lea	rsi, [rsi]
	je	.label_282
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x40], esi
	nop	
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	nop	
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	nop	
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	mov	rsp, rsp
	movups	xmmword ptr [rsp + 0x44], xmm0
	mov	rsp, rsp
	lea	rax, [rsp + 0x40]
	mov	rbp, rbp
	mov	rsi, rdx
	nop	
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_282:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405740
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	sub	rsp, 0x78
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	mov	rsp, rsp
	je	.label_283
	mov	dword ptr [rsp + 0x40], edi
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x30]
	nop	
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	mov	rsp, rsp
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	nop	
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x78
	lea	rsi, [rsi]
	ret	
.label_283:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057d0
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	edi, 0xa
	je	.label_284
	mov	dword ptr [rsp + 8], edi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	mov	rsp, rsp
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	mov	rsp, rsp
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	nop	
	lea	rcx, [rsp + 8]
	xor	edi, edi
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x78
	ret	
.label_284:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405840
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_285]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_286]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_287]]
	nop	
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp], xmm0
	lea	rsi, [rsi]
	mov	al, cl
	nop	
	shr	al, 5
	movzx	eax, al
	mov	rbp, rbp
	mov	esi, dword ptr [rsp + rax*4 + 8]
	lea	rsi, [rsi]
	mov	edi, esi
	mov	rsp, rsp
	shr	edi, cl
	not	edi
	mov	rbp, rbp
	and	edi, 1
	lea	rsi, [rsi]
	shl	edi, cl
	xor	edi, esi
	nop	
	mov	dword ptr [rsp + rax*4 + 8], edi
	mov	rsp, rsp
	lea	rcx, [rsp]
	xor	edi, edi
	nop	
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, r8
	nop	
	call	quotearg_n_options
	nop	
	add	rsp, 0x38
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4058e0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_285]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_286]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_287]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dl, cl
	mov	rbp, rbp
	shr	dl, 5
	lea	rsi, [rsi]
	movzx	edx, dl
	lea	rsi, [rsi]
	mov	esi, dword ptr [rsp + rdx*4 + 8]
	lea	rdi, [rdi]
	mov	edi, esi
	shr	edi, cl
	nop	
	not	edi
	mov	rsp, rsp
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rdx*4 + 8], edi
	mov	rsp, rsp
	lea	rcx, [rsp]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	rdx, -1
	mov	rbp, rbp
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405980

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_285]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_286]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_287]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	mov	rsp, rsp
	lea	rcx, [rsp]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rdx, -1
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	call	quotearg_n_options
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4059f0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_285]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_286]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_287]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rsi, [rsi]
	lea	rcx, [rsp]
	xor	edi, edi
	nop	
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	lea	rdi, [rdi]
	call	quotearg_n_options
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405a60
	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:

	sub	rsp, 0xb8
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	mov	rbp, rbp
	je	.label_288
	nop	
	mov	ecx, dword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x70], ecx
	mov	rsp, rsp
	movaps	xmm0, xmmword ptr [rsp]
	mov	rbp, rbp
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movaps	xmmword ptr [rsp + 0x60], xmm2
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x50], xmm1
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x80], esi
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x70]
	nop	
	mov	dword ptr [rsp + 0xb4], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	nop	
	movups	xmmword ptr [rsp + 0xa4], xmm2
	lea	rsi, [rsi]
	movups	xmmword ptr [rsp + 0x94], xmm1
	movups	xmmword ptr [rsp + 0x84], xmm0
	or	byte ptr [rsp + 0x8f], 4
	lea	rcx, [rsp + 0x80]
	mov	rdx, -1
	lea	rsi, [rsi]
	mov	rsi, rax
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0xb8
	mov	rsp, rsp
	ret	
.label_288:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405b40
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_285]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_286]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_287]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_289
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_289
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	lea	rsi, [rsi]
	mov	rdx, -1
	lea	rsi, [rsi]
	mov	rsi, rcx
	mov	rcx, rax
	mov	rbp, rbp
	call	quotearg_n_options
	nop	
	add	rsp, 0x38
	ret	
.label_289:
	nop	
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405bd0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_285]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_286]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_287]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_290
	test	rdx, rdx
	je	.label_290
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	nop	
	call	quotearg_n_options
	mov	rbp, rbp
	add	rsp, 0x38
	ret	
.label_290:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c60
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_285]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_286]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_287]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_291
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_291
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rdi, [rdi]
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rbp, rbp
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x38
	lea	rsi, [rsi]
	ret	
.label_291:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d00
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_285]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_286]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_287]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_292
	test	rsi, rsi
	je	.label_292
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rsi, [rsi]
	lea	rax, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, rax
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x38
	mov	rsp, rsp
	ret	
.label_292:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405da0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405db0
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	nop	
	mov	rdx, rdi
	xor	edi, edi
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x405dd0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsp, rsp
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405df0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rdx, -1
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:quote_quoting_options
	lea	rdi, [rdi]
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e20

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	rbx
	push	rax
	nop	
	mov	ebp, esi
	mov	rbx, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	mov	rbp, rbp
	cmp	rax, rbx
	jne	.label_294
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_296
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_295
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_295
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_295
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_295
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_295
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_295
	nop	
	mov	eax, OFFSET FLAT:.str.14
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_294
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_294
.label_296:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_295
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_295
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_295
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_295
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_295
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_295
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_293
.label_295:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_294:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_293:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_294
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_294
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405f90

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
	je	.label_299
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
	jmp	.label_301
.label_299:
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
.label_301:
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
	ja	.label_303
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_305]]
.label_450:
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
.label_303:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_304
.label_451:
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
.label_452:
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
.label_453:
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
	jmp	.label_298
.label_454:
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
	jmp	.label_297
.label_455:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
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
	jmp	.label_306
.label_456:
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
.label_306:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_297:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_298:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_302
.label_458:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_304:
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
	jmp	.label_300
.label_457:
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
.label_300:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_302:
	mov	rbp, rbp
	call	__fprintf_chk
.label_449:
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
	#Procedure 0x406380
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_307:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_307
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4063b0
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_311:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_308
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_310
	nop	word ptr cs:[rax + rax]
.label_308:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_310:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_309
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_311
.label_309:
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
	#Procedure 0x406440

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_312
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x80], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm1
	nop	
	movaps	xmmword ptr [rsp + 0xa0], xmm2
	movaps	xmmword ptr [rsp + 0xb0], xmm3
	nop	
	movaps	xmmword ptr [rsp + 0xc0], xmm4
	nop	
	movaps	xmmword ptr [rsp + 0xd0], xmm5
	movaps	xmmword ptr [rsp + 0xe0], xmm6
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xf0], xmm7
.label_312:
	mov	qword ptr [rsp + 0x78], r9
	nop	
	mov	qword ptr [rsp + 0x70], r8
	lea	rax, [rsp + 0x50]
	mov	qword ptr [rsp + 0x110], rax
	mov	rbp, rbp
	lea	rax, [rsp + 0x120]
	mov	qword ptr [rsp + 0x108], rax
	mov	dword ptr [rsp + 0x104], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x100], 0x20
	xor	r9d, r9d
	mov	rsp, rsp
	mov	r8d, dword ptr [rsp + 0x100]
	nop	word ptr [rax + rax]
.label_314:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_313
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_315
	nop	dword ptr [rax + rax]
.label_313:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_315:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_316
	inc	r9
	cmp	r9, 0xa
	jb	.label_314
.label_316:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406580
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_0
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
	.align	32
	#Procedure 0x406610
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	div	rbx
	cmp	rax, rdi
	jb	.label_317
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_318
	test	rax, rax
	je	.label_317
.label_318:
	nop	
	pop	rbx
	ret	
.label_317:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406660

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_319
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_320
.label_319:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_320:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406690
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdx
	nop	
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	cmp	rax, rsi
	jb	.label_322
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_321
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_321
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_321:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_323
	test	rax, rax
	je	.label_322
.label_323:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_322:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406710

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_324
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_324
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_324:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_325
	test	rax, rax
	nop	
	je	.label_326
.label_325:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_326:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406760
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_327
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_331
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_330
.label_327:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_333
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_333:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_328
.label_330:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_329
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_329
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_329:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_332
	test	rax, rax
	mov	rbp, rbp
	je	.label_331
.label_332:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_331:
	call	xalloc_die
.label_328:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406840
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_335
	test	rax, rax
	mov	rbp, rbp
	je	.label_334
.label_335:
	pop	rbx
	ret	
.label_334:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x406860
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_336
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_339
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_340
	call	free
	xor	eax, eax
	jmp	.label_337
.label_336:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_338
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_340:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_337
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_338
.label_337:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_338:
	mov	rbp, rbp
	call	xalloc_die
.label_339:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4068f0
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	rbx, rdi
	nop	
	call	malloc
	mov	r14, rax
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_341
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_342
.label_341:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	memset
	lea	rdi, [rdi]
	mov	rax, r14
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	ret	
.label_342:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406950
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
	jb	.label_343
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_343
	pop	rcx
	ret	
.label_343:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x406980

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	rbx
	nop	
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rdi, rbx
	call	malloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_345
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_344
.label_345:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rbp, rbp
	call	memcpy
	mov	rax, r15
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
.label_344:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4069e0

	.globl xstrdup
	.type xstrdup, @function
xstrdup:
	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	r14, rdi
	call	strlen
	mov	rbp, rbp
	mov	rbx, rax
	lea	rdi, [rbx + 1]
	mov	rbp, rbp
	call	malloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rsp, rsp
	inc	rbx
	lea	rsi, [rsi]
	je	.label_346
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_347
.label_346:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	nop	
	pop	r15
	nop	
	ret	
.label_347:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x406a40

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
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406a90

	.globl xstrtold
	.type xstrtold, @function
xstrtold:
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	r13, rcx
	lea	rdi, [rdi]
	mov	r14, rdx
	mov	r15, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	call	__errno_location
	mov	r12, rax
	lea	rsi, [rsi]
	mov	dword ptr [r12], 0
	lea	rdi, [rdi]
	lea	rsi, [rsp + 8]
	mov	rdi, rbx
	call	r13
	mov	rcx, qword ptr [rsp + 8]
	mov	rbp, rbp
	cmp	rcx, rbx
	mov	rbp, rbp
	je	.label_352
	nop	
	test	r15, r15
	jne	.label_349
	cmp	byte ptr [rcx], 0
	je	.label_349
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_351
.label_349:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rdi, [rdi]
	fldz	
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	jne	.label_348
	jnp	.label_350
.label_348:
	cmp	dword ptr [r12], 0x22
	setne	al
	jmp	.label_350
.label_352:
	xor	eax, eax
.label_350:
	lea	rdi, [rdi]
	test	r15, r15
	je	.label_351
	nop	
	mov	qword ptr [r15], rcx
.label_351:
	nop	
	fstp	xword ptr [r14]
	nop	
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406b50

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_353
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_354
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
	je	.label_354
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
.label_353:
	mov	ecx, 1
.label_354:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406bc0

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
	je	.label_355
	nop	
	cmp	r15, -2
	jb	.label_355
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_355
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_355:
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
	#Procedure 0x406c50

	.globl c_strtold
	.type c_strtold, @function
c_strtold:
	push	rbp
	mov	rbp, rbp
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x18
	mov	rsp, rsp
	mov	r15, rsi
	mov	rsp, rsp
	mov	r14, rdi
	mov	rsp, rsp
	cmp	qword ptr [word ptr [rip + c_locale_cache]],  0
	mov	rsp, rsp
	jne	.label_358
	lea	rdi, [rdi]
	mov	edi, 0x1fbf
	mov	esi, OFFSET FLAT:.str_1
	xor	edx, edx
	call	newlocale
	mov	qword ptr [word ptr [rip + c_locale_cache]],  rax
.label_358:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + c_locale_cache]]
	test	rdi, rdi
	je	.label_360
	call	uselocale
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_359
	mov	rdi, r14
	mov	rsi, r15
	mov	rsp, rsp
	call	strtold
	lea	rdi, [rdi]
	fstp	xword ptr [rsp + 0xc]
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	uselocale
	test	rax, rax
	je	.label_357
	mov	dword ptr [r14], ebp
	fld	xword ptr [rsp + 0xc]
	jmp	.label_356
.label_360:
	lea	rsi, [rsi]
	fldz	
	test	r15, r15
	nop	
	je	.label_356
	mov	qword ptr [r15], r14
	jmp	.label_356
.label_359:
	fldz	
	mov	rsp, rsp
	test	r15, r15
	je	.label_356
	lea	rdi, [rdi]
	mov	qword ptr [r15], r14
.label_356:
	mov	rsp, rsp
	add	rsp, 0x18
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
.label_357:
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406d40

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
	mov	ebp, dword ptr [rbx]
	mov	rbp, rbp
	mov	rdi, rbx
	call	rpl_fclose
	test	bpl, 0x20
	nop	
	jne	.label_361
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_362
	test	cl, cl
	mov	rsp, rsp
	jne	.label_362
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_362
.label_361:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_362
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_362:
	mov	eax, ebx
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406dd0

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
	je	.label_364
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_363
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_365
.label_363:
	nop	
	mov	esi, OFFSET FLAT:.str.1_4
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_364
.label_365:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_364:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406e20

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
	je	.label_366
	nop	
	mov	rax, rcx
.label_366:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e60

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	call	fileno
	mov	rbp, rbp
	test	eax, eax
	js	.label_367
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_369
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
	je	.label_367
.label_369:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_367
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_368
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_368:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_367:
	lea	rsi, [rsi]
	mov	rdi, rbx
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	rbp
	nop	
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x406f10

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_370
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_370
	test	byte ptr [rbx + 1], 1
	je	.label_370
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_370:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406f50

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
	jne	.label_371
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_371
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_372
.label_371:
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
.label_372:
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
	je	.label_373
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_373:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	32
	#Procedure 0x407000

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