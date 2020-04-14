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
	mov	r14, rsi
	mov	ebp, edi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14]
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
	jge	.label_28
	movsxd	rcx, eax
	mov	rcx, qword ptr [r14 + rcx*8]
	mov	rbp, rbp
	movzx	edx, byte ptr [rcx]
	lea	rdi, [rdi]
	cmp	edx, 0x2d
	jne	.label_24
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rcx + 1]
	cmp	ecx, 0x2e
	je	.label_28
	mov	rsp, rsp
	add	ecx, -0x30
	cmp	ecx, 0xa
	jb	.label_28
.label_24:
	mov	edx, OFFSET FLAT:.str.13
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:long_options
	mov	rsp, rsp
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	edi, ebp
	mov	rsi, r14
	call	getopt_long
	mov	rsp, rsp
	cmp	eax, 0x65
	lea	rsi, [rsi]
	jle	.label_13
	mov	rsp, rsp
	cmp	eax, 0x66
	lea	rdi, [rdi]
	je	.label_42
	mov	rsp, rsp
	cmp	eax, 0x73
	mov	rbp, rbp
	je	.label_45
	cmp	eax, 0x77
	mov	rsp, rsp
	je	.label_47
	mov	rsp, rsp
	jmp	.label_37
.label_42:
	mov	rbp, rbp
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	jmp	.label_11
.label_45:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + separator]],  rax
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	jmp	.label_11
.label_13:
	cmp	eax, -1
	jne	.label_51
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [rip + optind]]
.label_28:
	lea	rdi, [rdi]
	cmp	eax, ebp
	lea	rdi, [rdi]
	je	.label_54
	mov	ecx, ebp
	sub	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rcx
	mov	rsp, rsp
	cmp	ecx, 4
	mov	rbp, rbp
	jae	.label_57
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_60
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x18], ebp
	xor	ebp, ebp
	jmp	.label_18
	nop	word ptr [rax + rax]
.label_67:
	mov	rsp, rsp
	movzx	eax, al
	mov	rbp, rbp
	cmp	eax, 0x25
	lea	rdi, [rdi]
	sete	al
	lea	rsi, [rsi]
	inc	r15
	movzx	eax, al
	mov	rsp, rsp
	lea	rbp, [rax + rbp + 1]
.label_18:
	movzx	eax, byte ptr [rbx + rbp]
	cmp	eax, 0x25
	jne	.label_14
	nop	
	movzx	ecx, byte ptr [rbx + rbp + 1]
	nop	
	cmp	ecx, 0x25
	mov	rbp, rbp
	je	.label_67
	jmp	.label_68
	nop	dword ptr [rax]
.label_14:
	mov	rsp, rsp
	test	al, al
	jne	.label_67
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44
	jmp	.label_49
.label_68:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], r14
	lea	rdi, [rbx + rbp + 1]
	lea	rdi, [rdi]
	inc	rbp
	mov	esi, OFFSET FLAT:.str.45
	mov	rsp, rsp
	call	strspn
	mov	r14, rax
	lea	rdi, [rdi]
	add	r14, rbp
	lea	rdi, [rbx + r14]
	mov	esi, OFFSET FLAT:.str.46
	call	strspn
	mov	r12, rax
	add	r12, r14
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx + r12]
	cmp	eax, 0x2e
	jne	.label_76
	lea	rdi, [rdi]
	lea	rdi, [rbx + r12 + 1]
	mov	esi, OFFSET FLAT:.str.46
	call	strspn
	lea	rdi, [rdi]
	lea	r12, [rax + r12 + 1]
	mov	al, byte ptr [rbx + r12]
.label_76:
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
	je	.label_16
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xa0], rax
	nop	
	mov	edi, OFFSET FLAT:.str.48
	lea	rdi, [rdi]
	mov	edx, 9
	lea	rdi, [rdi]
	call	memchr
	test	rax, rax
	je	.label_29
	lea	r13, [rbx + r12]
	mov	rbp, rbp
	inc	rbp
	lea	rdi, [rdi]
	xor	r14d, r14d
	jmp	.label_30
	nop	
.label_15:
	movzx	eax, al
	cmp	eax, 0x25
	nop	
	sete	al
	lea	rdi, [rdi]
	inc	r14
	movzx	eax, al
	lea	rbp, [rax + rbp + 1]
.label_30:
	movzx	eax, byte ptr [rbx + rbp]
	cmp	eax, 0x25
	jne	.label_73
	movzx	ecx, byte ptr [rbp + rbx + 1]
	cmp	ecx, 0x25
	je	.label_15
	lea	rdi, [rdi]
	jmp	.label_25
	nop	word ptr cs:[rax + rax]
.label_73:
	test	al, al
	jne	.label_15
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
	je	.label_50
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + equal_width]]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	je	.label_52
	mov	al, 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xb0], rax
	nop	
	mov	rbx, rbp
	jmp	.label_56
.label_60:
	mov	qword ptr [rsp + 0x40], r14
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xb0], rax
	nop	
	xor	ebx, ebx
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_58
.label_50:
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0xb0], rax
.label_56:
	mov	ebp, dword ptr [rsp + 0x18]
.label_58:
	lea	rdi, [rdi]
	mov	r12d,  dword ptr [dword ptr [rip + optind]]
	mov	rbp, rbp
	movsxd	rcx, r12d
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rcx*8]
	movsx	eax, byte ptr [rsi]
	lea	rsi, [rsi]
	add	eax, -0x30
	lea	rsi, [rsi]
	cmp	eax, 9
	lea	rdi, [rdi]
	ja	.label_19
	nop	
	mov	qword ptr [rsp + 0xa0], rcx
	mov	dword ptr [rsp + 0x18], ebp
	mov	rdi, rsi
	nop	
	mov	r13, rsi
	call	strlen
	mov	rbp, rbp
	mov	rbp, rax
	mov	esi, OFFSET FLAT:.str.46
	nop	
	mov	rdi, r13
	nop	
	call	strspn
	cmp	rbp, rax
	lea	rdi, [rdi]
	jne	.label_20
	mov	rax, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	cmp	eax, 1
	je	.label_63
	mov	rax, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xa0]
	mov	rbp, qword ptr [rax + rcx*8 + 8]
	nop	
	movsx	ecx, byte ptr [rbp]
	lea	eax, [rcx - 0x30]
	mov	rsp, rsp
	cmp	eax, 9
	nop	
	ja	.label_20
	mov	qword ptr [rsp + 0x60], rcx
	mov	rbp, rbp
	mov	rdi, rbp
	call	strlen
	mov	qword ptr [rsp + 0x90], rax
	nop	
	mov	esi, OFFSET FLAT:.str.46
	mov	rdi, rbp
	call	strspn
	nop	
	cmp	qword ptr [rsp + 0x90], rax
	jne	.label_20
	nop	
	mov	rax, qword ptr [rsp + 0x30]
	cmp	eax, 3
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x60]
	nop	
	jae	.label_23
.label_63:
	mov	rsp, rsp
	mov	al,  byte ptr [byte ptr [rip + equal_width]]
	mov	rcx, qword ptr [rsp + 0xb0]
	or	al, cl
	mov	rbp, rbp
	test	al, 1
	mov	ebp, dword ptr [rsp + 0x18]
	mov	rsp, rsp
	je	.label_26
	lea	rdi, [rdi]
	mov	rsi, r13
	jmp	.label_19
.label_23:
	movzx	eax, al
	cmp	eax, 0x31
	lea	rdi, [rdi]
	jne	.label_20
	mov	rsp, rsp
	cmp	byte ptr [rbp + 1], 0
	mov	rsp, rsp
	mov	rsi, r13
	jne	.label_36
	mov	rax, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xa0]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rax + rcx*8 + 0x10]
	nop	
	movsx	eax, byte ptr [rbp]
	mov	rsp, rsp
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_36
	mov	r13, rsi
	mov	rsp, rsp
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	strlen
	mov	qword ptr [rsp + 0xa0], rax
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.46
	lea	rdi, [rdi]
	mov	rdi, rbp
	call	strspn
	cmp	qword ptr [rsp + 0xa0], rax
	jne	.label_20
	mov	al,  byte ptr [byte ptr [rip + equal_width]]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	or	al, cl
	test	al, 1
	mov	ebp, dword ptr [rsp + 0x18]
	jne	.label_53
.label_26:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + separator]]
	mov	rsp, rsp
	call	strlen
	lea	rdi, [rdi]
	cmp	rax, 1
	jne	.label_59
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x18], ebp
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	cmp	ecx, 1
	mov	eax, OFFSET FLAT:.str.19
	cmove	r13, rax
	mov	rsp, rsp
	lea	eax, [rcx + r12 - 1]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rsi, qword ptr [rbp + rax*8]
	mov	rdi, r13
	call	seq_fast
	mov	rsp, rsp
	test	al, al
	nop	
	fldz	
	lea	rdi, [rdi]
	jne	.label_12
	lea	rdi, [rdi]
	fstp	st(0)
	movsxd	r12,  dword ptr [dword ptr [rip + optind]]
	mov	rsi, qword ptr [rbp + r12*8]
.label_36:
	mov	ebp, dword ptr [rsp + 0x18]
	jmp	.label_19
.label_20:
	mov	rsp, rsp
	mov	ebp, dword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	rsi, r13
.label_19:
	inc	r12d
	mov	dword ptr [dword ptr [rip + optind]],  r12d
	lea	rdi, [rsp + 0xc0]
	lea	rsi, [rsi]
	call	scan_arg
	fld	xword ptr [rsp + 0xc0]
	nop	
	mov	rdi, qword ptr [rsp + 0xd0]
	mov	r13d, dword ptr [rsp + 0xd8]
	nop	
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	fld1	
	mov	rsp, rsp
	xor	r12d, r12d
	mov	edx, 1
	cmp	eax, ebp
	lea	rdi, [rdi]
	jge	.label_71
	fstp	st(0)
	mov	rbp, rbp
	fstp	xword ptr [rsp + 0x30]
	mov	qword ptr [rsp + 0x18], rdi
	lea	rdi, [rdi]
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	r12, qword ptr [rsp + 0x40]
	mov	rsi, qword ptr [r12 + rax*8]
	lea	rdi, [rsp + 0x70]
	lea	rdi, [rdi]
	call	scan_arg
	nop	
	fld	xword ptr [rsp + 0x70]
	mov	ecx, dword ptr [rsp + 0x88]
	nop	
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	rdi, [rdi]
	cmp	eax, ebp
	jge	.label_22
	mov	ebp, ecx
	fldz	
	fxch	st(1)
	nop	
	fucomi	st(1)
	fstp	st(1)
	nop	
	fstp	xword ptr [rsp + 0xa0]
	nop	
	jne	.label_32
	nop	
	jp	.label_32
	mov	rsp, rsp
	jmp	.label_34
.label_32:
	lea	ecx, [rax + 1]
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r12 + rax*8]
	lea	rdi, [rsp + 0xe0]
	call	scan_arg
	fld	xword ptr [rsp + 0xa0]
	nop	
	fld	xword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	r12d, ebp
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0xf8]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	ebp, r13d
	fld	xword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	fxch	st(1)
	fstp	xword ptr [rsp + 0xa0]
	mov	rbp, rbp
	jmp	.label_39
.label_71:
	xor	ebp, ebp
	mov	rsp, rsp
	fld	st(0)
	mov	rbp, rbp
	mov	ecx, r13d
	lea	rsi, [rsi]
	fxch	st(2)
	fstp	xword ptr [rsp + 0xa0]
	mov	rbp, rbp
	fxch	st(1)
	lea	rdi, [rdi]
	jmp	.label_39
.label_22:
	lea	rdi, [rdi]
	fstp	xword ptr [rsp + 0xa0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rsp + 0x80]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	ebp, r13d
	mov	rbp, rbp
	fld	xword ptr [rsp + 0x30]
	fld1	
	lea	rdi, [rdi]
	xor	r12d, r12d
	fxch	st(1)
.label_39:
	fld	st(0)
	nop	
	fstp	xword ptr [rsp + 0x90]
	lea	rdi, [rdi]
	fldz	
	fmul	st(1), st(0)
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	mov	rsp, rsp
	jne	.label_17
	lea	rsi, [rsi]
	jp	.label_17
	nop	
	mov	eax, r12d
	mov	rbp, rbp
	or	eax, ebp
	mov	rsp, rsp
	jne	.label_17
	nop	
	fld1	
	mov	rsp, rsp
	fxch	st(1)
	mov	rsp, rsp
	fucomi	st(1)
	mov	rsp, rsp
	fstp	st(1)
	jne	.label_17
	jp	.label_17
	lea	rsi, [rsi]
	fld	xword ptr [rsp + 0x90]
	lea	rdi, [rdi]
	fldz	
	fxch	st(1)
	mov	rsp, rsp
	fucomip	st(1)
	mov	rbp, rbp
	fstp	st(0)
	mov	rsp, rsp
	jb	.label_17
	lea	rsi, [rsi]
	test	ecx, ecx
	mov	rbp, rbp
	jne	.label_17
	fld	xword ptr [rsp + 0xa0]
	fldz	
	mov	rsp, rsp
	fxch	st(1)
	mov	rbp, rbp
	fucomip	st(1)
	nop	
	fstp	st(0)
	jb	.label_17
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	or	al,  byte ptr [byte ptr [rip + equal_width]]
	nop	
	test	al, 1
	jne	.label_17
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], rdi
	mov	rdi,  qword ptr [word ptr [rip + separator]]
	fstp	xword ptr [rsp + 0x30]
	mov	r13, rdx
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x40], ecx
	call	strlen
	nop	
	mov	ecx, dword ptr [rsp + 0x40]
	nop	
	mov	rdx, r13
	mov	rdi, qword ptr [rsp + 0x18]
	nop	
	fld	xword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	cmp	rax, 1
	mov	rsp, rsp
	jne	.label_17
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xb0], rdx
	mov	r13, rdi
	fstp	xword ptr [rsp + 0x30]
	fld	xword ptr [rsp + 0x90]
	fstp	xword ptr [rsp]
	mov	rbp, rbp
	lea	rdi, [rsp + 0x50]
	lea	rsi, [rsi]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.21
	xor	eax, eax
	call	__asprintf_chk
	lea	rdi, [rdi]
	test	eax, eax
	js	.label_27
	fld	xword ptr [rsp + 0xa0]
	mov	rbp, rbp
	fldz	
	mov	rsp, rsp
	fld	st(1)
	lea	rdi, [rdi]
	fmul	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_35
	jnp	.label_40
.label_35:
	mov	rbp, rbp
	fstp	xword ptr [rsp + 0xa0]
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.22
	call	xstrdup
	nop	
	mov	qword ptr [rsp + 0x28], rax
	jmp	.label_46
.label_40:
	fld	st(0)
	fstp	xword ptr [rsp]
	fstp	xword ptr [rsp + 0xa0]
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x28]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.21
	xor	eax, eax
	nop	
	call	__asprintf_chk
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	js	.label_27
.label_46:
	mov	rdi, qword ptr [rsp + 0x50]
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x2d
	lea	rsi, [rsi]
	je	.label_33
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi]
	mov	rbp, rbp
	cmp	eax, 0x2d
	lea	rsi, [rsi]
	je	.label_33
	call	seq_fast
	test	al, al
	mov	rsp, rsp
	je	.label_55
	lea	rsi, [rsi]
	fldz	
	jmp	.label_12
.label_59:
	mov	rsi, r13
	jmp	.label_19
.label_55:
	mov	rdi, qword ptr [rsp + 0x50]
.label_33:
	call	free
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
	fld	xword ptr [rsp + 0x30]
	mov	rdi, r13
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	ecx, dword ptr [rsp + 0x40]
.label_17:
	nop	
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_64
	cmp	ebp, r12d
	mov	rbp, rbp
	cmovge	r12d, ebp
	cmp	r12d, 0x7fffffff
	lea	rsi, [rsi]
	mov	ebx, OFFSET FLAT:.str.59
	je	.label_64
	lea	rdi, [rdi]
	cmp	ecx, 0x7fffffff
	lea	rsi, [rsi]
	je	.label_64
	movzx	eax,  byte ptr [byte ptr [rip + equal_width]]
	nop	
	and	eax, 1
	cmp	eax, 1
	nop	
	jne	.label_69
	mov	eax, r12d
	sub	eax, ebp
	nop	
	movsxd	r8, eax
	mov	eax, r12d
	nop	
	sub	eax, ecx
	mov	rbp, rbp
	cdqe	
	test	r12d, r12d
	mov	rsp, rsp
	sete	sil
	nop	
	setne	r9b
	test	ecx, ecx
	mov	rbp, rbp
	setne	bl
	lea	rsi, [rsi]
	sete	cl
	mov	rsp, rsp
	and	bl, sil
	mov	rbp, rbp
	and	cl, r9b
	movzx	ecx, cl
	add	rax, rdi
	mov	rsp, rsp
	movzx	esi, bl
	lea	rsi, [rsi]
	sub	rax, rsi
	nop	
	add	rax, rcx
	test	ebp, ebp
	sete	cl
	lea	rsi, [rsi]
	and	cl, r9b
	lea	rdi, [rdi]
	movzx	ecx, cl
	add	r8, rdx
	add	r8, rcx
	lea	rsi, [rsi]
	cmp	r8, rax
	cmovbe	r8, rax
	mov	ebx, OFFSET FLAT:.str.59
	cmp	r8, 0x7fffffff
	mov	rsp, rsp
	ja	.label_64
	mov	ebx, OFFSET FLAT:get_default_format.format_buf
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:get_default_format.format_buf
	mov	esi, 1
	lea	rsi, [rsi]
	mov	edx, 0x1c
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.57
	xor	eax, eax
	mov	r9d, r12d
	fstp	xword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	call	__sprintf_chk
	mov	rsp, rsp
	jmp	.label_31
.label_69:
	mov	rsp, rsp
	mov	ebx, OFFSET FLAT:get_default_format.format_buf
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:get_default_format.format_buf
	mov	rbp, rbp
	mov	esi, 1
	mov	edx, 0x1c
	nop	
	mov	ecx, OFFSET FLAT:.str.58
	lea	rsi, [rsi]
	xor	eax, eax
	mov	r8d, r12d
	mov	rsp, rsp
	fstp	xword ptr [rsp + 0x30]
	call	__sprintf_chk
.label_31:
	fld	xword ptr [rsp + 0x30]
.label_64:
	fld	xword ptr [rsp + 0xa0]
	fld	st(0)
	fstp	xword ptr [rsp + 0xa0]
	mov	rbp, rbp
	fld	st(0)
	lea	rdi, [rdi]
	fstp	xword ptr [rsp + 0xa0]
	lea	rsi, [rsi]
	fld	xword ptr [rsp + 0x90]
	fld	st(0)
	fstp	xword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	fxch	st(1)
	fucomi	st(1)
	mov	rbp, rbp
	seta	al
	lea	rdi, [rdi]
	fxch	st(1)
	fucomip	st(1)
	mov	rsp, rsp
	fstp	st(0)
	nop	
	seta	cl
	mov	rbp, rbp
	fldz	
	mov	rbp, rbp
	fucomip	st(1)
	mov	rbp, rbp
	ja	.label_43
	mov	al, cl
.label_43:
	test	al, al
	jne	.label_12
	fstp	xword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	fld	xword ptr [rsp + 0x30]
	mov	rbp, rbp
	fstp	xword ptr [rsp + 0x30]
	fld	xword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	fstp	xword ptr [rsp]
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rsi, rbx
	nop	
	call	__printf_chk
	nop	
	test	eax, eax
	fldz	
	js	.label_62
	mov	rsp, rsp
	fstp	st(0)
	mov	rsp, rsp
	fld1	
	lea	rsi, [rsi]
	xor	r13d, r13d
	mov	rbp, rbp
	fld	xword ptr [rsp + 0x90]
	mov	rsp, rsp
	fxch	st(1)
	lea	rsi, [rsi]
	fstp	xword ptr [rsp + 0x18]
.label_70:
	mov	rbp, rbp
	test	r13b, r13b
	fld	xword ptr [rsp + 0x30]
	jne	.label_61
	nop	
	fld	xword ptr [rsp + 0x18]
	mov	rsp, rsp
	fmul	st(1)
	nop	
	fld	xword ptr [rsp + 0x90]
	faddp	st(1)
	fld	st(0)
	mov	rbp, rbp
	fstp	xword ptr [rsp + 0x40]
	fld	xword ptr [rsp + 0xa0]
	mov	rbp, rbp
	fucomi	st(1)
	lea	rsi, [rsi]
	seta	r13b
	fxch	st(1)
	lea	rsi, [rsi]
	fucomip	st(1)
	lea	rdi, [rdi]
	fstp	st(0)
	seta	al
	lea	rdi, [rdi]
	fldz	
	fucomip	st(1)
	ja	.label_74
	lea	rsi, [rsi]
	mov	r13b, al
.label_74:
	test	r13b, r13b
	je	.label_72
	mov	rbp, rbp
	fstp	st(0)
	fstp	xword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	cmp	byte ptr [byte ptr [rip + locale_ok]],  0
	lea	rsi, [rsi]
	je	.label_75
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_1
	call	setlocale
.label_75:
	lea	rsi, [rsi]
	fld	xword ptr [rsp + 0x40]
	fstp	xword ptr [rsp]
	lea	rsi, [rsi]
	mov	esi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	lea	rdi, [rsp + 0x28]
	mov	rdx, rbx
	mov	rsp, rsp
	call	__asprintf_chk
	mov	ebp, eax
	cmp	byte ptr [byte ptr [rip + locale_ok]],  0
	je	.label_21
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str_0
	mov	rsp, rsp
	call	setlocale
.label_21:
	mov	rsp, rsp
	test	ebp, ebp
	js	.label_27
	lea	rdi, [rdi]
	movsxd	rax, ebp
	nop	
	sub	rax, r14
	mov	rcx, qword ptr [rsp + 0x28]
	mov	byte ptr [rcx + rax], 0
	mov	rdi, qword ptr [rsp + 0x28]
	add	rdi, r15
	mov	rsp, rsp
	xor	r12d, r12d
	xor	esi, esi
	nop	
	mov	ecx, OFFSET FLAT:cl_strtold
	mov	rbp, rbp
	lea	rdx, [rsp + 0x50]
	call	xstrtold
	fld	xword ptr [rsp + 0x50]
	test	al, al
	je	.label_38
	fld	xword ptr [rsp + 0xa0]
	mov	rbp, rbp
	fxch	st(1)
	mov	rbp, rbp
	fucomip	st(1)
	fstp	st(0)
	jne	.label_41
	jp	.label_41
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x100], 0
	fld	xword ptr [rsp + 0xb0]
	mov	rbp, rbp
	fstp	xword ptr [rsp]
	mov	esi, 1
	xor	eax, eax
	lea	rdi, [rsp + 0x100]
	mov	rbp, rbp
	mov	rdx, rbx
	call	__asprintf_chk
	test	eax, eax
	lea	rdi, [rdi]
	js	.label_27
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x100]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rdi, rbp
	nop	
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	setne	r12b
	mov	rdi, rbp
	call	free
	lea	rdi, [rdi]
	jmp	.label_41
.label_38:
	lea	rdi, [rdi]
	fstp	st(0)
.label_41:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
	mov	rsp, rsp
	test	r12b, r12b
	fld	xword ptr [rsp + 0x30]
	fldz	
	fxch	st(1)
	je	.label_61
.label_72:
	fstp	st(1)
	lea	rsi, [rsi]
	fstp	xword ptr [rsp + 0x30]
	mov	rdi,  qword ptr [word ptr [rip + separator]]
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	call	fputs_unlocked
	cmp	eax, -1
	je	.label_65
	lea	rdi, [rdi]
	fld1	
	fld	xword ptr [rsp + 0x18]
	faddp	st(1)
	fstp	xword ptr [rsp + 0x18]
	nop	
	fld	xword ptr [rsp + 0x40]
	mov	rbp, rbp
	fld	st(0)
	fstp	xword ptr [rsp + 0x40]
	nop	
	fstp	xword ptr [rsp]
	mov	edi, 1
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rsp, rsp
	call	__printf_chk
	mov	rsp, rsp
	test	eax, eax
	lea	rdi, [rdi]
	fld	xword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	jns	.label_70
.label_62:
	mov	rbp, rbp
	fstp	st(0)
	call	io_error
.label_61:
	lea	rdi, [rdi]
	fstp	st(0)
	fstp	st(0)
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.12
	call	fputs_unlocked
	lea	rsi, [rsi]
	cmp	eax, -1
	fldz	
	je	.label_10
.label_12:
	mov	rbp, rbp
	fstp	st(0)
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	add	rsp, 0x108
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_53:
	nop	
	mov	rsi, r13
	lea	rdi, [rdi]
	jmp	.label_19
.label_25:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.50
.label_49:
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsp, rsp
	mov	rbp, rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	quote
	lea	rdi, [rdi]
	mov	rcx, rax
	nop	
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rdx, rbp
	mov	rbp, rbp
	call	error
.label_65:
	call	io_error
.label_27:
	call	xalloc_die
.label_51:
	mov	rbp, rbp
	cmp	eax, 0xffffff7d
	lea	rdi, [rdi]
	je	.label_66
	mov	rsp, rsp
	cmp	eax, 0xffffff7e
	mov	rbp, rbp
	jne	.label_37
	xor	edi, edi
	call	usage
.label_54:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	jmp	.label_44
.label_57:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17_0
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsp, rsp
	mov	rbx, rax
	lea	rdi, [rdi]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r14 + rax*8 + 0x18]
	jmp	.label_48
.label_16:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.47
	mov	rsp, rsp
	jmp	.label_49
.label_29:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.49
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	call	quote
	mov	rbp, rbp
	mov	rcx, rax
	mov	rbp, rbp
	movsx	r8d, byte ptr [rbx + rbp]
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, r14
	call	error
.label_66:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, OFFSET FLAT:.str.17
	lea	rsi, [rsi]
	mov	r8d, OFFSET FLAT:.str.15
	mov	rbp, rbp
	xor	r9d, r9d
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	call	version_etc
	xor	edi, edi
	call	exit
.label_10:
	lea	rdi, [rdi]
	fstp	st(0)
	mov	rsp, rsp
	call	io_error
.label_37:
	mov	edi, 1
	mov	rsp, rsp
	call	usage
.label_52:
	nop	
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.18_0
.label_44:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	nop	
	xor	edi, edi
	nop	
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rdx, rcx
	mov	rbp, rbp
	call	error
	nop	
	mov	edi, 1
	call	usage
.label_34:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	nop	
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r12 + rax*8 - 8]
.label_48:
	mov	rbp, rbp
	call	quote
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	rdx, rbx
	mov	rsp, rsp
	call	error
	mov	rsp, rsp
	mov	edi, 1
	nop	
	call	usage
	.section	.text
	.align	32
	#Procedure 0x402a40

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
	mov	ebx, 0x69
	mov	rsp, rsp
	sub	ebx, eax
	jne	.label_89
	movzx	ecx, byte ptr [rsi + 1]
	mov	ebx, 0x6e
	sub	ebx, ecx
	mov	rbp, rbp
	jne	.label_89
	movzx	ecx, byte ptr [rsi + 2]
	mov	rsp, rsp
	mov	ebx, 0x66
	sub	ebx, ecx
	mov	rsp, rsp
	jne	.label_89
	nop	
	movzx	ebx, byte ptr [rsi + 3]
	nop	
	neg	ebx
.label_89:
	mov	rbp, rdi
	lea	rdi, [rdi]
	jmp	.label_81
.label_83:
	mov	rbp, rbp
	inc	rbp
.label_81:
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp]
	lea	rdi, [rdi]
	cmp	ecx, 0x30
	je	.label_83
	test	cl, cl
	jne	.label_87
	mov	rsp, rsp
	lea	rcx, [rbp - 1]
	mov	rsp, rsp
	cmp	rbp, rdi
	cmovne	rbp, rcx
.label_87:
	mov	rsp, rsp
	mov	r15, rsi
	jmp	.label_90
	nop	word ptr cs:[rax + rax]
.label_92:
	lea	rsi, [rsi]
	mov	al, byte ptr [r15 + 1]
	nop	
	inc	r15
.label_90:
	movzx	ecx, al
	mov	rsp, rsp
	cmp	ecx, 0x30
	je	.label_92
	nop	
	test	al, al
	mov	rbp, rbp
	jne	.label_94
	mov	rsp, rsp
	lea	rax, [r15 - 1]
	nop	
	cmp	r15, rsi
	mov	rsp, rsp
	cmovne	r15, rax
.label_94:
	mov	rdi, rbp
	call	strlen
	mov	r13, rax
	xor	eax, eax
	test	ebx, ebx
	mov	dword ptr [rsp + 0x1c], ebx
	lea	rsi, [rsi]
	je	.label_79
	mov	rdi, r15
	mov	rsp, rsp
	call	strlen
.label_79:
	mov	qword ptr [rsp], rax
	nop	
	lea	r12, [r13 + 1]
	mov	rsp, rsp
	cmp	r12, rax
	cmova	rax, r12
	nop	
	cmp	rax, 0x1f
	mov	rbp, rbp
	mov	r14d, 0x1f
	cmova	r14, rax
	mov	rbp, rbp
	lea	rdi, [r14 + 1]
	mov	qword ptr [rsp + 0x28], rdi
	mov	rbp, rbp
	call	xmalloc
	mov	qword ptr [rsp + 0x40], rax
	mov	rsp, rsp
	lea	rbx, [rax + r14]
	sub	rbx, r13
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rbp, rbp
	mov	rdx, r12
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x28]
	call	memcpy
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], rax
	cmp	dword ptr [rsp + 0x1c], 0
	mov	ebp, 0
	mov	rbp, rbp
	je	.label_80
	mov	rbp, rbp
	mov	rdi, r12
	call	xmalloc
	mov	rbp, rax
	mov	rdi, rbp
	add	rdi, r14
	mov	qword ptr [rsp + 8], r14
	mov	rbp, rbp
	mov	rax, qword ptr [rsp]
	lea	rdi, [rdi]
	sub	rdi, rax
	mov	qword ptr [rsp + 0x38], rdi
	lea	rdx, [rax + 1]
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	r14, rax
	lea	rsi, [rsi]
	call	memcpy
	lea	rsi, [rsi]
	cmp	r13, r14
	jb	.label_91
	cmp	r14, r13
	nop	
	jb	.label_96
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x38]
	call	strcmp
	test	eax, eax
	mov	rsp, rsp
	jle	.label_91
.label_96:
	xor	ebx, ebx
	mov	rbp, rbp
	jmp	.label_88
.label_91:
	nop	
	mov	r14, qword ptr [rsp + 8]
.label_80:
	mov	qword ptr [rsp + 0x10], rbp
	lea	rsi, [rsi]
	add	r12, r12
	mov	rsp, rsp
	cmp	r12, 0x2000
	mov	ebp, 0x2000
	cmovae	rbp, r12
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], rbp
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rbp, rbp
	call	xmalloc
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	lea	rcx, [rax + rbp]
	nop	
	mov	qword ptr [rsp + 0x28], rcx
	mov	rcx, -1
	mov	rdi, rax
	nop	
	mov	rsi, rbx
	mov	rdx, r13
	mov	rsp, rsp
	call	__mempcpy_chk
	mov	r15, rax
	mov	r12, qword ptr [rsp]
	mov	ebp, dword ptr [rsp + 0x1c]
	nop	word ptr cs:[rax + rax]
.label_85:
	test	ebp, ebp
	nop	
	je	.label_82
	mov	rsp, rsp
	cmp	r13, r12
	mov	rsp, rsp
	jb	.label_82
	nop	
	cmp	r12, r13
	lea	rdi, [rdi]
	jb	.label_86
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x38]
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	jns	.label_86
.label_82:
	mov	rax,  qword ptr [word ptr [rip + separator]]
	mov	al, byte ptr [rax]
	mov	byte ptr [r15], al
	inc	r15
	lea	rax, [rbx + r13 - 1]
	nop	
.label_77:
	nop	
	movsx	ecx, byte ptr [rax]
	mov	dl, cl
	nop	
	inc	dl
	mov	byte ptr [rax], dl
	lea	rsi, [rsi]
	cmp	ecx, 0x39
	jl	.label_93
	mov	byte ptr [rax], 0x30
	mov	rsp, rsp
	dec	rax
	mov	rsp, rsp
	cmp	rax, rbx
	jae	.label_77
	mov	rsp, rsp
	mov	byte ptr [rbx - 1], 0x31
	mov	rsp, rsp
	dec	rbx
	lea	rsi, [rsi]
	inc	r13
.label_93:
	nop	
	cmp	r13, r14
	jne	.label_84
	lea	rdi, [rdi]
	lea	rsi, [r14 + r14 + 1]
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	call	xrealloc
	nop	
	mov	qword ptr [rsp + 0x40], rax
	lea	rbx, [rax + r14]
	lea	rdx, [r14 + 1]
	lea	rsi, [rsi]
	lea	r14, [r14 + r14]
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rsi, rax
	mov	rsp, rsp
	call	memmove
	lea	rdi, [rdi]
	lea	r12, [r14 + r14 + 2]
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x20], r12
	jae	.label_78
	mov	rdi, qword ptr [rsp + 0x30]
	sub	r15, rdi
	nop	
	mov	rsi, r12
	call	xrealloc
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	add	r15, rax
	lea	rax, [rax + r12]
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], r12
.label_78:
	mov	rbp, rbp
	mov	r12, qword ptr [rsp]
.label_84:
	mov	rcx, -1
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r13
	call	__mempcpy_chk
	mov	r15, rax
	lea	rsi, [rsi]
	mov	rax, r13
	not	rax
	add	rax, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	cmp	rax, r15
	mov	rbp, rbp
	jae	.label_85
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r14
	mov	rsp, rsp
	mov	r14, r13
	mov	rsp, rsp
	mov	r13, r12
	mov	r12d, ebp
	mov	rbp, qword ptr [rsp + 0x30]
	sub	r15, rbp
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	edx, 1
	mov	rdi, rbp
	mov	rsi, r15
	call	fwrite_unlocked
	mov	rbp, rbp
	cmp	rax, 1
	mov	r15, rbp
	mov	rbp, rbp
	mov	ebp, r12d
	lea	rsi, [rsi]
	mov	r12, r13
	mov	r13, r14
	mov	r14, qword ptr [rsp + 8]
	je	.label_85
	call	io_error
.label_86:
	mov	byte ptr [r15], 0xa
	lea	rdi, [rdi]
	inc	r15
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	sub	r15, rdi
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	edx, 1
	mov	rsi, r15
	call	fwrite_unlocked
	mov	bl, 1
	mov	rsp, rsp
	cmp	rax, 1
	nop	
	mov	rbp, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	jne	.label_95
.label_88:
	nop	
	mov	rdi, qword ptr [rsp + 0x40]
	nop	
	call	free
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	free
	nop	
	mov	al, bl
	lea	rdi, [rdi]
	add	rsp, 0x48
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_95:
	mov	rsp, rsp
	call	io_error
	.section	.text
	.align	32
	#Procedure 0x402ed0

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
	je	.label_99
	mov	rbp, rbp
	fld	xword ptr [rsp + 0x10]
	fld	st(0)
	nop	
	fstp	xword ptr [rsp]
	lea	rdi, [rdi]
	fucomip	st(0)
	nop	
	jp	.label_103
	call	__ctype_b_loc
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	dec	rbx
	nop	word ptr [rax + rax]
.label_110:
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
	je	.label_110
	test	cx, cx
	jne	.label_110
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
	jne	.label_101
	mov	esi, 0x70
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	strchr
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	mov	rax, rbx
	lea	rsi, [rsi]
	jne	.label_101
	mov	dword ptr [rsp + 0x28], 0
	lea	rdi, [rdi]
	mov	rax, rbx
.label_101:
	movsx	ecx, byte ptr [rax]
	test	ecx, ecx
	je	.label_113
	inc	rax
	or	ecx, 0x20
	lea	rdi, [rdi]
	cmp	ecx, 0x78
	jne	.label_101
	jmp	.label_97
.label_113:
	lea	rdi, [rdi]
	fldz	
	fld	xword ptr [rsp]
	fmul	st(1)
	lea	rsi, [rsi]
	fucomip	st(1)
	fstp	st(0)
	jne	.label_97
	jp	.label_97
	mov	rdi, rbx
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_102
	nop	word ptr [rax + rax]
.label_107:
	mov	rbp, rcx
	movsx	edx, byte ptr [r15 + rbp + 1]
	nop	
	test	edx, edx
	lea	rdi, [rdi]
	je	.label_108
	mov	rsp, rsp
	lea	rcx, [rbp + 1]
	or	edx, 0x20
	cmp	edx, 0x65
	jne	.label_107
.label_108:
	mov	rsp, rsp
	cmp	rbp, 0x7fffffff
	nop	
	ja	.label_114
	mov	dword ptr [rsp + 0x28], ebp
	mov	rsp, rsp
	mov	rcx, -1
	nop	
	test	rbp, rbp
	je	.label_112
.label_114:
	mov	cl, 1
	lea	rsi, [rsi]
	cmp	r15, rbx
	mov	rbp, rbp
	je	.label_116
	movsx	ecx, byte ptr [r15 - 1]
	add	ecx, -0x30
	cmp	ecx, 9
	nop	
	seta	cl
.label_116:
	nop	
	movzx	ecx, cl
.label_112:
	lea	rdi, [rdi]
	add	rax, rcx
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_104
.label_102:
	mov	rsp, rsp
	xor	ebp, ebp
.label_104:
	mov	esi, 0x65
	mov	rdi, rbx
	mov	rsp, rsp
	call	strchr
	lea	rsi, [rsi]
	mov	r13, rax
	test	r13, r13
	lea	rdi, [rdi]
	jne	.label_109
	mov	rbp, rbp
	mov	esi, 0x45
	mov	rdi, rbx
	call	strchr
	mov	r13, rax
	test	r13, r13
	mov	rbp, rbp
	je	.label_97
.label_109:
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
	js	.label_106
	cmp	r14, r12
	mov	rax, r12
	lea	rsi, [rsi]
	cmovle	rax, r14
.label_106:
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
	js	.label_111
	test	r15, r15
	je	.label_100
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_100
	test	r14d, r14d
	lea	rdi, [rdi]
	jne	.label_100
	dec	rcx
	mov	qword ptr [rsp + 0x20], rcx
.label_100:
	mov	r14, qword ptr [rsp]
	mov	rbp, rbp
	cmp	rbp, r12
	cmovae	rbp, r12
	mov	rsp, rsp
	sub	r12, rbp
	jmp	.label_115
.label_111:
	test	r15, r15
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp]
	lea	rsi, [rsi]
	je	.label_98
	inc	r15
	cmp	r13, r15
	mov	rsp, rsp
	jne	.label_105
.label_98:
	inc	rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rcx
.label_105:
	neg	r12
.label_115:
	mov	rbp, rbp
	add	rcx, r12
	mov	qword ptr [rsp + 0x20], rcx
.label_97:
	mov	rbp, rbp
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movaps	xmm1, xmmword ptr [rsp + 0x20]
	movaps	xmmword ptr [r14 + 0x10], xmm1
	movaps	xmmword ptr [r14], xmm0
	mov	rbp, rbp
	mov	rax, r14
	mov	rbp, rbp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rbp, rbp
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_99:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	r14, rax
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	quote
	mov	rcx, rax
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rdx, r14
	call	error
	mov	edi, 1
	nop	
	call	usage
.label_103:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	mov	rbp, rbp
	mov	edx, 5
	nop	
	call	dcgettext
	nop	
	mov	r14, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.54
	call	quote_n
	lea	rsi, [rsi]
	mov	r15, rax
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rsp, rsp
	call	quote_n
	mov	rbx, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, r15
	mov	r8, rbx
	lea	rdi, [rdi]
	call	error
	mov	edi, 1
	call	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4032b0

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
	#Procedure 0x403300

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
	je	.label_118
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
	jae	.label_119
	mov	qword ptr [rsp], rax
	mov	r12, rax
	lea	rsi, [rsi]
	jmp	.label_118
.label_119:
	fstp	st(0)
	mov	dword ptr [r15], ebp
	fld	xword ptr [rsp + 0xc]
.label_118:
	test	r14, r14
	mov	rbp, rbp
	je	.label_117
	mov	qword ptr [r14], r12
.label_117:
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
	#Procedure 0x4033a0
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
	#Procedure 0x4033b0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033c0

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
	je	.label_122
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_120
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_120
.label_122:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_121
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_120:
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
	jne	.label_123
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
.label_121:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_123:
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
	#Procedure 0x4034c0

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
	je	.label_124
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
	jl	.label_126
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_126
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
	jne	.label_125
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_125:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_126:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_124:
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
	#Procedure 0x4035b0
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
	#Procedure 0x403600
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
	#Procedure 0x403620
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
	#Procedure 0x403640
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
	#Procedure 0x4036b0
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
	#Procedure 0x4036d0
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
	je	.label_127
	test	rdx, rdx
	nop	
	je	.label_127
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_127:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403710
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
	#Procedure 0x4037c0

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
	sub	rsp, 0x118
	mov	ebx, r9d
	nop	
	mov	dword ptr [rsp + 0x38], ebx
	mov	r15d, r8d
	mov	r13, rcx
	mov	qword ptr [rsp + 0x88], rdx
	mov	rbp, rbp
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xb0], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x160]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x100], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x158]
	mov	qword ptr [rsp + 0x78], rax
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xb8], rax
	mov	r12b, bl
	mov	rbp, rbp
	shr	r12b, 1
	mov	rbp, rbp
	and	r12b, 1
	nop	
	mov	eax, ebx
	and	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x3c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x44], ebx
	mov	rsp, rsp
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xd8], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, 0
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x68], rcx
.label_164:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	ecx, r15d
	lea	rdi, [rdi]
	cmp	r15d, 0xa
	ja	.label_185
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_192]]
.label_445:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.11_0
	nop	
	mov	esi, r15d
	mov	r14, r10
	nop	
	mov	bl, r8b
	call	gettext_quote
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r15d
	mov	rsp, rsp
	call	gettext_quote
	mov	r8b, bl
	mov	rsp, rsp
	mov	r10, r14
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x100], rax
.label_446:
	mov	byte ptr [rsp + 0x43], r8b
	mov	r13, rbp
	nop	
	test	r12b, 1
	nop	
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	rdx, qword ptr [rsp + 0x78]
	jne	.label_213
	mov	rbp, rbp
	mov	al, byte ptr [rdx]
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	mov	ecx, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], rcx
	je	.label_213
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	nop	dword ptr [rax]
.label_232:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_227
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rcx + rsi], al
.label_227:
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + rcx + 1]
	mov	rsp, rsp
	inc	rcx
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_232
.label_213:
	nop	
	mov	rbp, qword ptr [rsp + 0x100]
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rbx, r10
	mov	rbp, rbp
	call	strlen
	mov	r10, rbx
	mov	qword ptr [rsp + 0xf0], rax
	mov	rbp, rbp
	mov	r9d, r15d
	mov	qword ptr [rsp + 0x20], rbp
	nop	
	mov	dil, 1
	mov	sil, r12b
	mov	rbp, r13
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0x43]
	mov	r11, qword ptr [rsp + 0x88]
	jmp	.label_128
.label_438:
	mov	rbp, rbp
	xor	r9d, r9d
	xor	ecx, ecx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	dil, al
	lea	rsi, [rsi]
	xor	esi, esi
	nop	
	jmp	.label_128
.label_441:
	lea	rsi, [rsi]
	mov	al, 1
.label_439:
	mov	rbp, rbp
	mov	r12b, 1
.label_442:
	mov	rbp, rbp
	test	r12b, 1
	mov	cl, 1
	nop	
	je	.label_142
	lea	rsi, [rsi]
	mov	cl, al
.label_142:
	mov	rsp, rsp
	mov	al, cl
.label_440:
	mov	r9d, 2
	test	r12b, 1
	mov	rsp, rsp
	jne	.label_151
	test	r10, r10
	je	.label_157
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx], 0x27
	mov	rsp, rsp
	mov	ecx, 1
	mov	rsp, rsp
	jmp	.label_158
.label_151:
	xor	ecx, ecx
	jmp	.label_158
.label_443:
	mov	rsp, rsp
	mov	r9d, 5
	test	r12b, 1
	jne	.label_170
	lea	rdi, [rdi]
	test	r10, r10
	je	.label_177
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], 0x22
	mov	rsp, rsp
	mov	eax, 1
	jmp	.label_181
.label_444:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xf0], rax
	mov	sil, 1
	jmp	.label_128
.label_157:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_158:
	nop	
	mov	qword ptr [rsp + 0x58], rcx
	nop	
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbp, rbp
	mov	ecx, 1
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
	mov	dil, al
	mov	sil, r12b
	jmp	.label_128
.label_170:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_181
.label_177:
	lea	rdi, [rdi]
	mov	eax, 1
.label_181:
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xf0], rax
	mov	rbp, rbp
	mov	dil, 1
	nop	
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_128:
	mov	qword ptr [rsp + 0x30], rsi
	mov	byte ptr [rsp + 0xa7], dil
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x150], 0
	setne	dl
	lea	rsi, [rsi]
	cmp	r9d, 2
	setne	r15b
	sete	al
	mov	cl, dil
	lea	rdi, [rdi]
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xc3], cl
	sete	byte ptr [rsp + 0x97]
	lea	rsi, [rsi]
	mov	bl, r15b
	mov	rsp, rsp
	and	bl, cl
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x65], bl
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r13b
	mov	r12b, r13b
	lea	rdi, [rdi]
	and	r12b, bl
	mov	byte ptr [rsp + 0x67], r12b
	mov	bl, sil
	and	bl, 1
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xe7], bl
	sete	cl
	and	al, bl
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x77], al
	and	dl, bl
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xd7], dl
	mov	rsp, rsp
	or	cl, r15b
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x66], cl
	lea	rdi, [rdi]
	and	dil, sil
	lea	rsi, [rsi]
	and	dil, r13b
	mov	byte ptr [rsp + 0x57], dil
	xor	edi, edi
	mov	r14d, dword ptr [rsp + 0xe8]
	jmp	.label_150
	nop	word ptr cs:[rax + rax]
.label_146:
	nop	
	inc	rdi
.label_150:
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_144
	nop	
	cmp	rdi, rbp
	mov	rsp, rsp
	jne	.label_148
	jmp	.label_153
	nop	dword ptr [rax + rax]
.label_144:
	mov	r13, -1
	lea	rsi, [rsi]
	cmp	byte ptr [r11 + rdi], 0
	je	.label_156
.label_148:
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_165
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_167
	cmp	rbp, -1
	lea	rsi, [rsi]
	jne	.label_167
	nop	
	mov	eax, r14d
	mov	rbp, rbp
	mov	r14, rdi
	mov	rdi, r11
	mov	rsp, rsp
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r9
	mov	dword ptr [rsp + 0xe8], eax
	mov	rsp, rsp
	mov	r12, r11
	lea	rdi, [rdi]
	call	strlen
	mov	rdi, r14
	mov	rbp, rbp
	mov	r11, r12
	mov	rbp, rbp
	mov	r12b, byte ptr [rsp + 0x67]
	nop	
	mov	r14d, dword ptr [rsp + 0xe8]
	lea	rsi, [rsi]
	mov	r9, r13
	lea	rsi, [rsi]
	mov	r8b, r15b
	mov	r10, rbp
	lea	rdi, [rdi]
	mov	rbp, rax
.label_167:
	mov	rsp, rsp
	cmp	rbx, rbp
	lea	rsi, [rsi]
	jbe	.label_202
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_203
	nop	dword ptr [rax + rax]
.label_165:
	nop	
	mov	dword ptr [rsp + 0x10c], 0
	lea	rdi, [rdi]
	jmp	.label_203
	nop	word ptr cs:[rax + rax]
.label_202:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], r14d
	mov	r12, rbp
	lea	rsi, [rsi]
	mov	r13, r9
	mov	r15b, r8b
	mov	rbp, rbp
	mov	rbx, r10
	mov	rsp, rsp
	mov	r14, rdi
	mov	rsp, rsp
	lea	rdi, [r11 + r14]
	mov	rsp, rsp
	mov	rbp, r11
	nop	
	mov	rsi, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0xf0]
	nop	
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	sete	al
	nop	
	mov	dword ptr [rsp + 0x10c], eax
	jne	.label_228
	cmp	byte ptr [rsp + 0xe7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	lea	rsi, [rsi]
	mov	rbp, r12
	lea	rdi, [rdi]
	mov	r12b, byte ptr [rsp + 0x67]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xe8]
	je	.label_203
	jmp	.label_132
.label_228:
	mov	rsp, rsp
	mov	r10, rbx
	mov	rsp, rsp
	mov	r8b, r15b
	mov	rbp, rbp
	mov	r9, r13
	mov	rsp, rsp
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0x67]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xe8]
	nop	dword ptr [rax + rax]
.label_203:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_136
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	nop	
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_252]]
.label_426:
	mov	rsp, rsp
	test	rdi, rdi
	mov	rbp, rbp
	jne	.label_135
	mov	rbp, rbp
	jmp	.label_139
.label_430:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	cmp	rbp, -1
	nop	
	je	.label_141
	lea	rdi, [rdi]
	test	rdi, rdi
	nop	
	jne	.label_147
	nop	
	cmp	rbp, 1
	je	.label_139
	xor	r13d, r13d
	jmp	.label_133
.label_419:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xc3], 0
	je	.label_140
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_132
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_171
	mov	al, r14b
	and	al, 1
	jne	.label_176
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x58], r10
	nop	
	jae	.label_233
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x27
.label_233:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	nop	
	jae	.label_189
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_189:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_197
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_197:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	add	rax, 3
	mov	rsp, rsp
	mov	r14b, 1
	mov	rbp, rbp
	mov	rcx, rax
	jmp	.label_196
.label_420:
	mov	rbp, rbp
	mov	bl, 0x62
	mov	rsp, rsp
	jmp	.label_208
.label_421:
	lea	rsi, [rsi]
	mov	cl, 0x74
	jmp	.label_172
.label_422:
	mov	rsp, rsp
	mov	bl, 0x76
	nop	
	jmp	.label_208
.label_423:
	mov	bl, 0x66
	jmp	.label_208
.label_424:
	lea	rsi, [rsi]
	mov	cl, 0x72
	jmp	.label_172
.label_427:
	mov	al, 1
	mov	qword ptr [rsp + 0x68], rax
	lea	rdi, [rdi]
	cmp	r9d, 2
	jne	.label_218
	cmp	byte ptr [rsp + 0xe7], 0
	nop	
	jne	.label_221
	mov	rsp, rsp
	test	r10, r10
	lea	rsi, [rsi]
	sete	al
	mov	rcx, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rdi, [rdi]
	test	rdx, rdx
	setne	cl
	or	cl, al
	lea	rdi, [rdi]
	cmove	rdx, r10
	nop	
	mov	qword ptr [rsp + 0xd8], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0x58], r10
	lea	rdi, [rdi]
	jae	.label_162
	nop	
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_162:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_241
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x5c
.label_241:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_249
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_249:
	add	qword ptr [rsp + 0x58], 3
	xor	r14d, r14d
.label_218:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_133
.label_428:
	cmp	r9d, 5
	lea	rdi, [rdi]
	je	.label_138
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_135
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_135
	mov	rbp, rbp
	jmp	.label_152
.label_429:
	lea	rdi, [rdi]
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_154
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_160
	lea	rdi, [rdi]
	jmp	.label_166
.label_136:
	mov	qword ptr [rsp + 0x80], r9
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x43], r8b
	mov	qword ptr [rsp + 0x110], r10
	cmp	qword ptr [rsp + 0xb8], 1
	jne	.label_169
	nop	
	mov	r13d, r14d
	mov	rsp, rsp
	mov	r14, r11
	nop	
	mov	rbx, rdi
	call	__ctype_b_loc
	mov	rdi, rbx
	mov	r11, r14
	lea	rsi, [rsi]
	mov	r14d, r13d
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	lea	rsi, [rsi]
	mov	eax, 1
.label_143:
	mov	rbp, rbp
	and	r13b, 1
	mov	cl, r13b
	mov	rsp, rsp
	or	cl, byte ptr [rsp + 0x97]
	cmp	rax, 1
	nop	
	mov	r10, qword ptr [rsp + 0x110]
	mov	r8b, byte ptr [rsp + 0x43]
	mov	r9, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	ja	.label_195
	lea	rdi, [rdi]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_195
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_133
.label_141:
	test	rdi, rdi
	jne	.label_211
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_211
.label_139:
	mov	dl, 1
.label_425:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x66], 0
	lea	rsi, [rsi]
	je	.label_215
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, dl
	mov	rsp, rsp
	jmp	.label_133
.label_140:
	cmp	dword ptr [rsp + 0x3c], 0
	jne	.label_146
	jmp	.label_135
.label_154:
	cmp	byte ptr [rsp + 0x57], 0
	mov	cl, r15b
	je	.label_172
.label_160:
	xor	eax, eax
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_159
.label_172:
	cmp	byte ptr [rsp + 0x66], 0
	mov	bl, cl
	lea	rdi, [rdi]
	je	.label_230
.label_208:
	xor	eax, eax
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc3], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_133
	lea	rsi, [rsi]
	jmp	.label_209
.label_169:
	mov	qword ptr [rsp + 0x98], 0
	cmp	rbp, -1
	jne	.label_240
	mov	rbp, rdi
	nop	
	mov	rdi, r11
	lea	rdi, [rdi]
	mov	rbx, r11
	call	strlen
	lea	rdi, [rdi]
	mov	rdi, rbp
	nop	
	mov	r11, rbx
	nop	
	mov	rbp, rax
.label_240:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc8], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	mov	r13b, 1
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	lea	rbx, [rsp + 0x98]
.label_247:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xe8], rax
	mov	qword ptr [rsp + 0xa8], rdi
	lea	rax, [rax + rdi]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	lea	rsi, [r11 + rax]
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xc4]
	mov	rsp, rsp
	mov	rcx, rbx
	call	rpl_mbrtowc
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_155
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x110]
	mov	rsp, rsp
	movabs	rsi, 0x20000002b
	je	.label_163
	lea	rsi, [rsi]
	cmp	rbp, -2
	nop	
	mov	rdi, qword ptr [rsp + 0xa8]
	je	.label_173
	lea	rsi, [rsi]
	cmp	rbp, 1
	seta	al
	lea	rdi, [rdi]
	and	al, byte ptr [rsp + 0x77]
	movzx	eax, al
	nop	
	cmp	eax, 1
	jne	.label_180
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	lea	rax, [rcx + rax]
	nop	
	mov	ecx, 1
	nop	
.label_201:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_194
	lea	rdi, [rdi]
	bt	rsi, rdx
	jb	.label_216
.label_194:
	lea	rsi, [rsi]
	inc	rcx
	mov	rbp, rbp
	cmp	rcx, rbp
	jb	.label_201
.label_180:
	nop	
	mov	edi, dword ptr [rsp + 0xc4]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	nop	
	jne	.label_186
	xor	r13d, r13d
.label_186:
	mov	rax, qword ptr [rsp + 0xe8]
	add	rax, rbp
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rbp, rbp
	call	mbsinit
	test	eax, eax
	mov	rax, rbp
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	je	.label_247
	mov	rsp, rsp
	jmp	.label_143
.label_211:
	lea	rsi, [rsi]
	mov	rbp, -1
	mov	rbp, rbp
	xor	r13d, r13d
	jmp	.label_133
.label_138:
	cmp	dword ptr [rsp + 0x44], 0
	lea	rdi, [rdi]
	je	.label_135
	lea	rcx, [rdi + 2]
	mov	rsp, rsp
	cmp	rcx, rbp
	jae	.label_135
	mov	rbp, rbp
	movzx	eax, byte ptr [rdi + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_135
	lea	rsi, [rsi]
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	edx, 0x3e
	ja	.label_238
	nop	
	movabs	rsi, 0x7000a38200000000
	mov	rsp, rsp
	bt	rsi, rdx
	mov	rsp, rsp
	jae	.label_174
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_246
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_250
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rsi], 0x3f
.label_250:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_219
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x22
.label_219:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_206
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rsi + rax], 0x22
.label_206:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 3]
	cmp	rax, r10
	nop	
	jae	.label_242
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x3f
.label_242:
	mov	rbp, rbp
	add	qword ptr [rsp + 0x58], 4
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	lea	rdi, [rdi]
	xor	r13d, r13d
	jmp	.label_133
.label_135:
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_133:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x65], 0
	lea	rsi, [rsi]
	je	.label_224
	cmp	qword ptr [rsp + 0x150], 0
	mov	rsp, rsp
	jne	.label_183
	lea	rsi, [rsi]
	jmp	.label_187
.label_224:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_187
.label_183:
	mov	cl, r15b
	shr	cl, 5
	lea	rdi, [rdi]
	movzx	edx, cl
	nop	
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	nop	
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_191
	mov	rcx, qword ptr [rsp + 0x150]
	nop	
	and	esi, dword ptr [rcx + rdx*4]
	mov	rsp, rsp
	jmp	.label_198
	nop	word ptr cs:[rax + rax]
.label_187:
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rdi, [rdi]
	test	cl, cl
.label_198:
	mov	rbp, rbp
	mov	bl, r15b
	je	.label_159
	mov	rsp, rsp
	jmp	.label_209
.label_191:
	mov	bl, r15b
.label_209:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_132
	nop	
	cmp	r9d, 2
	jne	.label_212
	lea	rdi, [rdi]
	mov	al, r14b
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_212
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_239
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_239:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	cmp	rax, r10
	jae	.label_225
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_225:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_207
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_207:
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_212:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_235
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x5c
.label_235:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	jmp	.label_188
.label_147:
	xor	r13d, r13d
	nop	
	jmp	.label_133
.label_195:
	mov	rsp, rsp
	add	rax, rdi
	mov	qword ptr [rsp + 0xe8], rax
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_245
	nop	dword ptr [rax + rax]
.label_145:
	inc	qword ptr [rsp + 0x58]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_245:
	test	cl, cl
	je	.label_251
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0x10c]
	test	dl, 1
	mov	rbp, rbp
	je	.label_130
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_137
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x5c
.label_137:
	lea	rsi, [rsi]
	inc	qword ptr [rsp + 0x58]
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_130
	nop	dword ptr [rax]
.label_251:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_132
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_161
	mov	al, r14b
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_161
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_190
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rdx], 0x27
.label_190:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	inc	rax
	cmp	rax, r10
	jae	.label_178
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], 0x24
.label_178:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_220
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rdx + rax], 0x27
.label_220:
	mov	rsp, rsp
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_161:
	cmp	qword ptr [rsp + 0x58], r10
	lea	rsi, [rsi]
	jae	.label_199
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rax + rdx], 0x5c
.label_199:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_205
	mov	dl, r15b
	shr	dl, 6
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], dl
.label_205:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_226
	lea	rsi, [rsi]
	mov	dl, r15b
	lea	rdi, [rdi]
	shr	dl, 3
	mov	rsp, rsp
	and	dl, 7
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rsi + rax], dl
.label_226:
	nop	
	add	qword ptr [rsp + 0x58], 3
	mov	rbp, rbp
	and	r15b, 7
	nop	
	or	r15b, 0x30
	mov	rsp, rsp
	mov	al, 1
.label_130:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xe8], rdx
	jbe	.label_159
	lea	rsi, [rsi]
	test	r14b, 1
	je	.label_229
	mov	bl, al
	nop	
	and	bl, 1
	lea	rdi, [rdi]
	jne	.label_229
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_236
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_236:
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	inc	rsi
	mov	rsp, rsp
	cmp	rsi, r10
	lea	rsi, [rsi]
	jae	.label_243
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdi + rsi], 0x27
	mov	rbp, rbp
	mov	rdi, rbx
.label_243:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_229:
	nop	
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_145
	mov	rsi, qword ptr [rsp + 0xb0]
	nop	
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rsi + rdi], r15b
	lea	rdi, [rdi]
	mov	rdi, rbx
	jmp	.label_145
	nop	word ptr cs:[rax + rax]
.label_159:
	test	r14b, 1
	lea	rsi, [rsi]
	je	.label_149
	mov	rsp, rsp
	and	al, 1
	jne	.label_149
	cmp	qword ptr [rsp + 0x58], r10
	mov	rsp, rsp
	jae	.label_248
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_248:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_175
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_175:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_149:
	mov	rsp, rsp
	mov	bl, r15b
.label_188:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_237
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], bl
.label_237:
	nop	
	inc	qword ptr [rsp + 0x58]
	nop	
	shl	r13b, 7
	mov	rsp, rsp
	sar	r13b, 7
	and	r13b, r8b
	mov	rbp, rbp
	mov	r8b, r13b
	jmp	.label_146
.label_171:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	jmp	.label_196
.label_176:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
.label_196:
	lea	rsi, [rsi]
	cmp	rcx, r10
	lea	rsi, [rsi]
	jae	.label_200
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax + rcx], 0x5c
.label_200:
	nop	
	lea	rax, [rcx + 1]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rax
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	mov	r15b, 0x30
	cmp	r9d, 2
	lea	rsi, [rsi]
	je	.label_129
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_193
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	cmp	edx, 9
	lea	rsi, [rsi]
	ja	.label_204
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_217
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x30
.label_217:
	lea	rsi, [rsi]
	lea	rdx, [rcx + 2]
	lea	rdi, [rdi]
	cmp	rdx, r10
	nop	
	jae	.label_222
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rdx], 0x30
.label_222:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x58], rcx
	jmp	.label_133
.label_129:
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_133
.label_193:
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	
	jmp	.label_133
.label_204:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_133
.label_163:
	xor	r13d, r13d
.label_155:
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_143
.label_173:
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	rbp, rcx
	lea	rsi, [rsi]
	jbe	.label_214
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
.label_134:
	cmp	byte ptr [r11 + rcx], 0
	nop	
	je	.label_131
	mov	rbp, rbp
	lea	rcx, [rax + rdi + 1]
	nop	
	inc	rax
	mov	rbp, rbp
	cmp	rcx, rbp
	mov	rsp, rsp
	jb	.label_134
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_143
.label_214:
	mov	rsp, rsp
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_143
.label_131:
	nop	
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_143
.label_238:
	xor	r13d, r13d
	jmp	.label_133
.label_174:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_133
.label_153:
	nop	
	mov	r13, rdi
.label_156:
	mov	rsp, rsp
	cmp	r9d, 2
	mov	rsp, rsp
	setne	al
	cmp	qword ptr [rsp + 0x58], 0
	lea	rsi, [rsi]
	setne	dl
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_168
	mov	rsp, rsp
	or	al, dl
	mov	rbp, rbp
	je	.label_182
.label_168:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], r14d
	mov	qword ptr [rsp + 0x88], r11
	cmp	r9d, 2
	lea	rsi, [rsi]
	setne	al
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rdi, [rdi]
	setne	dl
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x68]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0xa7]
	nop	
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_184
	mov	rsp, rsp
	or	al, dl
	lea	rsi, [rsi]
	jne	.label_184
	test	r8b, 1
	mov	rbp, rbp
	jne	.label_244
	cmp	qword ptr [rsp + 0xd8], 0
	je	.label_184
	test	r10, r10
	mov	r15d, r9d
	mov	rbp, rbp
	mov	al, bl
	nop	
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0xd8]
	lea	rsi, [rsi]
	je	.label_164
.label_184:
	mov	rdx, qword ptr [rsp + 0x20]
	test	rdx, rdx
	je	.label_210
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rsi, [rsi]
	jne	.label_210
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	test	al, al
	je	.label_210
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_231:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_223
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rsi], al
.label_223:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	mov	rbp, rbp
	jne	.label_231
.label_210:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_234
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0
	lea	rdi, [rdi]
	jmp	.label_234
.label_215:
	lea	rdi, [rdi]
	mov	r9d, 2
	nop	
	jmp	.label_132
.label_216:
	mov	rsp, rsp
	mov	r9d, 2
	nop	
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rdi, [rdi]
	jmp	.label_132
.label_182:
	nop	
	mov	rbp, r13
	jmp	.label_132
.label_230:
	lea	rdi, [rdi]
	mov	r9d, 2
.label_132:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc3], 0
	lea	rdi, [rdi]
	mov	r8d, 4
	cmove	r8d, r9d
	lea	rdi, [rdi]
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x38]
	and	r9d, 0xfffffffd
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x100]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rsi, r10
	nop	
	mov	rdx, r11
	lea	rdi, [rdi]
	mov	rcx, rbp
.label_179:
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rax
.label_234:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	add	rsp, 0x118
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_244:
	mov	rax, qword ptr [rsp + 0x100]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp], rax
	nop	
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rcx, r13
	mov	r9d, dword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	jmp	.label_179
.label_221:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_132
.label_166:
	mov	r9d, 2
	lea	rsi, [rsi]
	jmp	.label_132
.label_152:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_132
.label_246:
	lea	rsi, [rsi]
	mov	r9d, 5
	mov	rbp, rbp
	jmp	.label_132
.label_185:
	nop	
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d40
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
	#Procedure 0x404e80
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
	je	.label_253
	mov	qword ptr [rax], rbx
.label_253:
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
	#Procedure 0x404fd0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_254
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_255:
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
	jl	.label_255
.label_254:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_257
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_258]], OFFSET FLAT:slot0
.label_257:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_256
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_256:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405090
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x4050a0

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
	js	.label_261
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_263
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_265
.label_263:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_264
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
	jne	.label_260
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_260:
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
.label_265:
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
	ja	.label_259
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
	je	.label_262
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_262:
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
.label_259:
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
.label_261:
	lea	rdi, [rdi]
	call	abort
.label_264:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x405310
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405320
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
	#Procedure 0x405350
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
	#Procedure 0x405380
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
	je	.label_266
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
.label_266:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405410
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
	je	.label_267
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
.label_267:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054b0
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
	je	.label_268
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
.label_268:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405540
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
	je	.label_269
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
.label_269:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4055b0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_270]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_271]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_272]]
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
	#Procedure 0x405650
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_270]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_271]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_272]]
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
	#Procedure 0x4056f0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_270]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_271]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_272]]
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
	#Procedure 0x405760
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_270]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_271]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_272]]
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
	#Procedure 0x4057d0
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
	je	.label_273
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
.label_273:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4058b0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_270]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_271]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_272]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_274
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_274
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
.label_274:
	nop	
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405940
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_270]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_271]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_272]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_275
	test	rdx, rdx
	je	.label_275
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
.label_275:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059d0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_270]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_271]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_272]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_276
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_276
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
.label_276:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a70
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_270]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_271]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_272]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_277
	test	rsi, rsi
	je	.label_277
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
.label_277:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b10
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b20
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
	#Procedure 0x405b40

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
	#Procedure 0x405b60

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
	#Procedure 0x405b90

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
	jne	.label_280
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_278
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_279
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_279
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_279
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_279
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_279
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_279
	nop	
	mov	eax, OFFSET FLAT:.str.14
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_280
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_280
.label_278:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_279
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_279
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_279
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_279
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_279
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_279
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_281
.label_279:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_280:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_281:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_280
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_280
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405d00

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
	je	.label_282
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
	jmp	.label_284
.label_282:
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
.label_284:
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
	ja	.label_286
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_288]]
.label_390:
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
.label_286:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_290
.label_391:
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
.label_392:
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
.label_393:
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
	jmp	.label_291
.label_394:
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
	jmp	.label_289
.label_395:
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
	jmp	.label_287
.label_396:
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
.label_287:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_289:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_291:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_285
.label_398:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_290:
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
	jmp	.label_283
.label_397:
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
.label_283:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_285:
	mov	rbp, rbp
	call	__fprintf_chk
.label_389:
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
	#Procedure 0x4060f0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_292:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_292
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406120
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_294:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_293
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_295
	nop	word ptr cs:[rax + rax]
.label_293:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_295:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_296
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_294
.label_296:
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
	#Procedure 0x4061b0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_297
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
.label_297:
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
.label_299:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_298
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_300
	nop	dword ptr [rax + rax]
.label_298:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_300:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_301
	inc	r9
	cmp	r9, 0xa
	jb	.label_299
.label_301:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4062f0
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
	#Procedure 0x406380
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
	jb	.label_302
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_303
	test	rax, rax
	je	.label_302
.label_303:
	nop	
	pop	rbx
	ret	
.label_302:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4063d0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_304
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_305
.label_304:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_305:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406400
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
	jb	.label_307
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_306
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_306
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_306:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_308
	test	rax, rax
	je	.label_307
.label_308:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_307:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406480

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_309
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_309
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_309:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_310
	test	rax, rax
	nop	
	je	.label_311
.label_310:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_311:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4064d0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_316
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_312
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_318
.label_316:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_315
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_315:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_317
.label_318:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_314
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_314
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_314:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_313
	test	rax, rax
	mov	rbp, rbp
	je	.label_312
.label_313:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_312:
	call	xalloc_die
.label_317:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4065b0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_319
	test	rax, rax
	mov	rbp, rbp
	je	.label_320
.label_319:
	pop	rbx
	ret	
.label_320:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4065d0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_324
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_325
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_323
	call	free
	xor	eax, eax
	jmp	.label_321
.label_324:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_322
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_323:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_321
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_322
.label_321:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_322:
	mov	rbp, rbp
	call	xalloc_die
.label_325:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406660
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
	je	.label_326
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_327
.label_326:
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
.label_327:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4066c0
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
	jb	.label_328
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_328
	pop	rcx
	ret	
.label_328:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x4066f0

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
	je	.label_330
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_329
.label_330:
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
.label_329:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406750

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
	je	.label_331
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_332
.label_331:
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
.label_332:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x4067b0

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
	#Procedure 0x406800

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
	je	.label_336
	nop	
	test	r15, r15
	jne	.label_333
	cmp	byte ptr [rcx], 0
	je	.label_333
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_335
.label_333:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rdi, [rdi]
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
.label_336:
	xor	eax, eax
.label_334:
	lea	rdi, [rdi]
	test	r15, r15
	je	.label_335
	nop	
	mov	qword ptr [r15], rcx
.label_335:
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
	#Procedure 0x4068c0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_338
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_339
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
	je	.label_339
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
.label_338:
	mov	ecx, 1
.label_339:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406930

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
	je	.label_340
	nop	
	cmp	r15, -2
	jb	.label_340
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_340
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_340:
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
	#Procedure 0x4069c0

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
	jne	.label_341
	lea	rdi, [rdi]
	mov	edi, 0x1fbf
	mov	esi, OFFSET FLAT:.str_1
	xor	edx, edx
	call	newlocale
	mov	qword ptr [word ptr [rip + c_locale_cache]],  rax
.label_341:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + c_locale_cache]]
	test	rdi, rdi
	je	.label_345
	call	uselocale
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_342
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
	je	.label_344
	mov	dword ptr [r14], ebp
	fld	xword ptr [rsp + 0xc]
	jmp	.label_343
.label_345:
	lea	rsi, [rsi]
	fldz	
	test	r15, r15
	nop	
	je	.label_343
	mov	qword ptr [r15], r14
	jmp	.label_343
.label_342:
	fldz	
	mov	rsp, rsp
	test	r15, r15
	je	.label_343
	lea	rdi, [rdi]
	mov	qword ptr [r15], r14
.label_343:
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
.label_344:
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406ab0

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
	jne	.label_346
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_347
	test	cl, cl
	mov	rsp, rsp
	jne	.label_347
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_347
.label_346:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_347
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_347:
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
	#Procedure 0x406b40

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
	je	.label_349
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_348
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_350
.label_348:
	nop	
	mov	esi, OFFSET FLAT:.str.1_4
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_349
.label_350:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_349:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406b90

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
	je	.label_351
	nop	
	mov	rax, rcx
.label_351:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406bd0

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
	js	.label_352
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_353
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
	je	.label_352
.label_353:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_352
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_354
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_354:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_352:
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
	#Procedure 0x406c80

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_355
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_355
	test	byte ptr [rbx + 1], 1
	je	.label_355
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_355:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406cc0

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
	jne	.label_356
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_356
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_357
.label_356:
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
.label_357:
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
	je	.label_358
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_358:
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
	#Procedure 0x406d70

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