	.section	.text
	.align	16
	#Procedure 0x4015b0

	.globl usage
	.type usage, @function
usage:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	ebp, edi
	lea	rdi, [rdi]
	test	ebp, ebp
	jne	.label_8
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	mov	rsp, rsp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rcx, rdx
	lea	rdi, [rdi]
	call	__printf_chk
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.2
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.3
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.4
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	rbp, rbp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	rbp, rbp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	mov	edi, 1
	nop	
	mov	edx, OFFSET FLAT:.str.10
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rsi, rcx
	mov	rsp, rsp
	call	__printf_chk
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	nop	
	mov	edx, OFFSET FLAT:.str.17
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	nop	
	call	__printf_chk
	mov	rbp, rbp
	mov	edi, 5
	xor	esi, esi
	nop	
	call	setlocale
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_7
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, 3
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strncmp
	test	eax, eax
	nop	
	je	.label_7
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_7:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.34
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.10
	xor	eax, eax
	call	__printf_chk
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.35
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.10
	mov	ecx, OFFSET FLAT:.str.36
	xor	eax, eax
	mov	rbp, rbp
	call	__printf_chk
	mov	rbp, rbp
	mov	edi, ebp
	call	exit
.label_8:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	rbp, rbp
	mov	esi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018a0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	sub	rsp, 0x188
	lea	rsi, [rsi]
	mov	r14, rsi
	mov	rbp, rbp
	mov	r15d, edi
	mov	rbp, rbp
	mov	rdi, qword ptr [r14]
	lea	rdi, [rdi]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.12
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.13
	mov	rbp, rbp
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.12
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	lea	rsi, [rsi]
	call	atexit
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + exit_status]],  0
	mov	edi, OFFSET FLAT:.str.14
	mov	rbp, rbp
	call	getenv
	lea	rdi, [rdi]
	test	rax, rax
	setne	byte ptr [byte ptr [rip + posixly_correct]]
	cmp	r15d, 2
	jne	.label_56
	mov	rsp, rsp
	mov	rbp, qword ptr [r14 + 8]
	mov	esi, OFFSET FLAT:.str.15
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	strcmp
	test	eax, eax
	je	.label_66
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.16
	mov	rsp, rsp
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_70
	lea	rbx, [r14 + 8]
	mov	rsp, rsp
	jmp	.label_71
.label_56:
	lea	rsi, [rsi]
	jl	.label_12
	mov	rbp, rbp
	lea	rbx, [r14 + 8]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [r14 + 8]
.label_71:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp]
	lea	rsi, [rsi]
	cmp	eax, 0x2d
	mov	rbp, rbp
	jne	.label_74
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp + 1]
	mov	rbp, rbp
	cmp	eax, 0x2d
	mov	rbp, rbp
	jne	.label_77
	lea	rsi, [rsi]
	cmp	byte ptr [rbp + 2], 0
	je	.label_44
	mov	rbp, rbp
	mov	rbx, r14
	mov	rbp, rbp
	jmp	.label_81
.label_74:
	mov	rbx, r14
	nop	
	jmp	.label_81
.label_77:
	mov	rbx, r14
	jmp	.label_81
.label_70:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	xor	ebx, ebx
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.18_0
	nop	
	xor	r9d, r9d
	mov	rsp, rsp
	xor	eax, eax
	call	version_etc
	mov	rbp, rbp
	jmp	.label_9
.label_44:
	cmp	r15d, 3
	mov	rbp, rbp
	jl	.label_12
	dec	r15d
	lea	rdi, [rdi]
	mov	rbp, qword ptr [r14 + 0x10]
.label_81:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x38], rbp
	add	r15d, -2
	mov	rbp, rbp
	add	rbx, 0x10
	movabs	r12, 0x410150000001
	nop	
.label_25:
	mov	qword ptr [rsp + 0x158], rbx
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x34], r15d
	mov	al, byte ptr [rbp]
	lea	rdi, [rdi]
	test	al, al
	lea	rsi, [rsi]
	mov	r14, rbx
	lea	rsi, [rsi]
	mov	ebx, r15d
	mov	r15, rbp
	mov	dword ptr [rsp + 0x24], 0
	mov	rbp, rbp
	mov	ecx, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], rcx
	mov	rsp, rsp
	je	.label_22
	nop	dword ptr [rax + rax]
.label_14:
	lea	rsi, [rsi]
	movsx	ecx, al
	cmp	ecx, 0x5c
	je	.label_34
	lea	rsi, [rsi]
	cmp	ecx, 0x25
	mov	rbp, rbp
	jne	.label_76
	mov	rsp, rsp
	lea	rbp, [r15 + 1]
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r15 + 1]
	cmp	eax, 0x71
	mov	rbp, rbp
	je	.label_39
	mov	rbp, rbp
	movzx	eax, al
	mov	rsp, rsp
	cmp	eax, 0x62
	je	.label_43
	cmp	eax, 0x25
	nop	
	jne	.label_52
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_64
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0x25
	jmp	.label_31
	nop	dword ptr [rax]
.label_34:
	xor	esi, esi
	mov	rdi, r15
	nop	
	call	print_esc
	mov	rbp, rbp
	movsxd	rbp, eax
	add	rbp, r15
	jmp	.label_31
	nop	dword ptr [rax]
.label_76:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_58
	nop	
	lea	rdx, [rcx + 1]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_47:
	mov	rbp, r15
	jmp	.label_31
.label_39:
	mov	rsp, rsp
	test	ebx, ebx
	jle	.label_31
	mov	rsi, qword ptr [r14]
	lea	rdi, [rdi]
	mov	edi, 3
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	nop	
	add	r14, 8
	dec	ebx
	lea	rdi, [rdi]
	jmp	.label_31
.label_43:
	test	ebx, ebx
	jle	.label_31
	mov	rbp, rbp
	mov	r15d, ebx
	mov	rbx, qword ptr [r14]
	lea	rsi, [rsi]
	jmp	.label_10
	nop	word ptr cs:[rax + rax]
.label_87:
	lea	rdi, [rdi]
	mov	esi, 1
	mov	rbp, rbp
	mov	rdi, rbx
	call	print_esc
	cdqe	
	add	rax, rbx
	inc	rax
	mov	rbx, rax
.label_10:
	mov	rsp, rsp
	movzx	esi, byte ptr [rbx]
	cmp	esi, 0x5c
	je	.label_87
	test	sil, sil
	je	.label_89
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_90
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], sil
	lea	rdi, [rdi]
	inc	rbx
	jmp	.label_10
.label_90:
	lea	rdi, [rdi]
	call	__overflow
	inc	rbx
	jmp	.label_10
.label_52:
	nop	
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x140], xmm0
	movaps	xmmword ptr [rsp + 0x130], xmm0
	movaps	xmmword ptr [rsp + 0x120], xmm0
	movaps	xmmword ptr [rsp + 0x110], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x100], xmm0
	movaps	xmmword ptr [rsp + 0xf0], xmm0
	movaps	xmmword ptr [rsp + 0xe0], xmm0
	movaps	xmmword ptr [rsp + 0xd0], xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0xc0], xmm0
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x80], xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x70], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	mov	rbp, rbp
	mov	byte ptr [rsp + 0xa8], 1
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xc8], 1
	mov	byte ptr [rsp + 0xc5], 1
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0xc3], 1
	mov	byte ptr [rsp + 0xbf], 1
	mov	byte ptr [rsp + 0xb9], 1
	mov	byte ptr [rsp + 0x97], 1
	mov	byte ptr [rsp + 0x96], 1
	mov	byte ptr [rsp + 0x95], 1
	mov	byte ptr [rsp + 0x91], 1
	mov	byte ptr [rsp + 0xb1], 1
	lea	rax, [rsp + 0xb3]
	mov	byte ptr [rax + 4], 1
	mov	dword ptr [rax], 0x1010101
	lea	rsi, [rsi]
	mov	r13d, 1
	lea	rsi, [rsi]
	jmp	.label_19
	nop	word ptr cs:[rax + rax]
.label_69:
	mov	rsp, rsp
	inc	r13
.label_19:
	movsx	eax, byte ptr [r15 + r13]
	cmp	eax, 0x26
	jle	.label_63
	mov	rsp, rsp
	lea	ecx, [rax - 0x27]
	nop	
	cmp	ecx, 9
	lea	rsi, [rsi]
	ja	.label_65
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_68]]
.label_499:
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0xc3], 0
	mov	byte ptr [rsp + 0xb3], 0
	mov	rsp, rsp
	jmp	.label_69
	nop	
.label_63:
	cmp	eax, 0x20
	lea	rdi, [rdi]
	je	.label_69
	cmp	eax, 0x23
	jne	.label_72
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xc5], 0
	mov	byte ptr [rsp + 0xc3], 0
	nop	
	mov	byte ptr [rsp + 0xb9], 0
	mov	word ptr [rsp + 0xb3], 0
	lea	rsi, [rsi]
	inc	r13
	mov	rsp, rsp
	jmp	.label_19
.label_65:
	mov	rsp, rsp
	cmp	eax, 0x49
	jne	.label_72
.label_498:
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0xa8], 0
	mov	byte ptr [rsp + 0xc8], 0
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xc3], 0
	mov	byte ptr [rsp + 0xbf], 0
	mov	byte ptr [rsp + 0x95], 0
	mov	byte ptr [rsp + 0xb5], 0
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xb3], 0
	mov	byte ptr [rsp + 0x91], 0
	mov	byte ptr [rsp + 0xb1], 0
	lea	rsi, [rsi]
	inc	r13
	lea	rsi, [rsi]
	jmp	.label_19
.label_72:
	mov	rsp, rsp
	lea	rbp, [r15 + r13]
	movzx	ecx, al
	mov	rsp, rsp
	cmp	ecx, 0x2a
	jne	.label_84
	inc	rbp
	inc	r13
	mov	rsp, rsp
	mov	al, 1
	mov	dword ptr [rsp + 0x4c], eax
	test	ebx, ebx
	jle	.label_21
	mov	rdi, qword ptr [r14]
	call	vstrtoimax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], rax
	lea	rsi, [rsi]
	sub	rax, -0x80000000
	shr	rax, 0x20
	nop	
	jne	.label_26
	add	r14, 8
	dec	ebx
	nop	
	jmp	.label_30
.label_89:
	add	r14, 8
	lea	rdi, [rdi]
	mov	ebx, r15d
	dec	ebx
	mov	rbp, rbp
	jmp	.label_31
.label_84:
	add	eax, -0x30
	cmp	eax, 0xa
	jae	.label_35
	nop	dword ptr [rax + rax]
.label_83:
	lea	rdi, [rdi]
	inc	r13
	mov	rsp, rsp
	movsx	eax, byte ptr [rbp + 1]
	inc	rbp
	nop	
	add	eax, -0x30
	mov	rbp, rbp
	cmp	eax, 0xa
	jb	.label_83
.label_35:
	mov	dword ptr [rsp + 0x4c], 0
	mov	rbp, rbp
	jmp	.label_30
.label_58:
	lea	rdi, [rdi]
	movzx	esi, al
	mov	rsp, rsp
	call	__overflow
	nop	
	jmp	.label_47
.label_21:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], rax
.label_30:
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2e
	lea	rdi, [rdi]
	jne	.label_48
	nop	
	mov	byte ptr [rsp + 0xb3], 0
	movsx	eax, byte ptr [rbp + 1]
	nop	
	cmp	eax, 0x2a
	lea	rsi, [rsi]
	jne	.label_85
	add	rbp, 2
	nop	
	add	r13, 2
	lea	rdi, [rdi]
	mov	al, 1
	mov	dword ptr [rsp + 0x184], eax
	test	ebx, ebx
	nop	
	jle	.label_53
	mov	rdi, qword ptr [r14]
	call	vstrtoimax
	mov	dword ptr [rsp + 0x24], 0xffffffff
	mov	rbp, rbp
	test	rax, rax
	js	.label_60
	mov	ecx, 0x80000000
	lea	rdi, [rdi]
	cmp	rax, rcx
	jge	.label_62
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x24], eax
.label_60:
	mov	rsp, rsp
	add	r14, 8
	nop	
	mov	qword ptr [rsp + 0x28], r14
	dec	ebx
	mov	rbp, rbp
	jmp	.label_67
.label_85:
	lea	rdi, [rdi]
	inc	r13
	mov	rbp, rbp
	add	eax, -0x30
	cmp	eax, 9
	nop	
	ja	.label_41
	lea	rdi, [rdi]
	inc	rbp
	nop	word ptr [rax + rax]
.label_73:
	mov	rsp, rsp
	inc	r13
	movsx	eax, byte ptr [rbp + 1]
	mov	rbp, rbp
	inc	rbp
	add	eax, -0x30
	mov	rbp, rbp
	cmp	eax, 0xa
	mov	rsp, rsp
	jb	.label_73
.label_48:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], r14
	mov	dword ptr [rsp + 0x184], 0
	jmp	.label_67
.label_41:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], r14
	inc	rbp
	mov	dword ptr [rsp + 0x184], 0
	jmp	.label_67
.label_53:
	nop	
	mov	dword ptr [rsp + 0x24], 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], r14
	lea	rdi, [rdi]
	jmp	.label_67
	nop	word ptr cs:[rax + rax]
.label_17:
	inc	rbp
.label_67:
	mov	r14b, byte ptr [rbp]
	movzx	eax, r14b
	lea	rsi, [rsi]
	mov	cl, r14b
	add	cl, 0xb4
	mov	rsp, rsp
	movzx	ecx, cl
	nop	
	cmp	ecx, 0x2e
	ja	.label_15
	bt	r12, rcx
	lea	rdi, [rdi]
	jb	.label_17
.label_15:
	cmp	byte ptr [rsp + rax + 0x50], 0
	nop	
	je	.label_49
	lea	rdi, [rdi]
	movsx	edx, r14b
	lea	rdi, [rdi]
	test	ebx, ebx
	nop	
	jle	.label_20
	mov	rbp, rbp
	dec	ebx
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x18], ebx
	mov	rax, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rax]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x160], rcx
	add	rax, 8
	nop	
	mov	qword ptr [rsp + 0x28], rax
	jmp	.label_23
.label_20:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x18], ebx
	nop	
	mov	eax, OFFSET FLAT:.str_0
	mov	qword ptr [rsp + 0x160], rax
.label_23:
	lea	eax, [rdx - 0x41]
	mov	qword ptr [rsp + 0x178], rdx
	cmp	eax, 0x37
	mov	rbp, rbp
	ja	.label_32
	movabs	rcx, 0x7100000071
	bt	rcx, rax
	jae	.label_36
	mov	ebx, 1
	mov	r12d, OFFSET FLAT:.str.45
	nop	
	jmp	.label_40
.label_36:
	movabs	rcx, 0x90410800800000
	bt	rcx, rax
	nop	
	mov	ebx, 1
	mov	r12d, OFFSET FLAT:.str.44
	mov	rbp, rbp
	jae	.label_32
.label_40:
	lea	rdi, [r13 + rbx + 2]
	lea	rdi, [rdi]
	call	xmalloc
	mov	qword ptr [rsp + 0x150], rax
	mov	rbp, rbp
	mov	rcx, -1
	mov	rdi, rax
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, r13
	lea	rsi, [rsi]
	call	__mempcpy_chk
	lea	rsi, [rsi]
	mov	rcx, -1
	mov	rdi, rax
	mov	rsi, r12
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	__mempcpy_chk
	mov	byte ptr [rax], r14b
	mov	byte ptr [rax + 1], 0
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x178]
	nop	
	cmp	edx, 0x6e
	jg	.label_57
	lea	eax, [rdx - 0x58]
	cmp	eax, 0x11
	mov	r14, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 0x160]
	ja	.label_61
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x150]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_80]]
.label_476:
	mov	rdi, rcx
	call	vstrtoimax
	mov	rbp, rbp
	mov	rcx, rax
	jmp	.label_75
.label_57:
	nop	
	add	edx, -0x6f
	mov	rbp, rbp
	cmp	edx, 9
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x28]
	mov	ebx, dword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x150]
	mov	rcx, qword ptr [rsp + 0x160]
	ja	.label_16
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_24]]
.label_414:
	mov	rbp, rbp
	mov	r15d, ebx
	movzx	eax, byte ptr [rcx]
	cmp	eax, 0x27
	lea	rdi, [rdi]
	je	.label_82
	mov	rbp, rbp
	movzx	eax, al
	mov	rsp, rsp
	cmp	eax, 0x22
	jne	.label_86
.label_82:
	lea	rdi, [rdi]
	movzx	r12d, byte ptr [rcx + 1]
	lea	rdi, [rdi]
	test	r12, r12
	lea	rdi, [rdi]
	je	.label_86
	cmp	byte ptr [rcx + 2], 0
	mov	rbp, rbp
	je	.label_92
	nop	
	mov	al,  byte ptr [byte ptr [rip + posixly_correct]]
	mov	rsp, rsp
	test	al, al
	mov	ebx, dword ptr [rsp + 0x4c]
	lea	rdi, [rdi]
	jne	.label_11
	add	rcx, 2
	mov	qword ptr [rsp + 0x160], rcx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0x160]
	call	error
	jmp	.label_11
.label_61:
	lea	eax, [rdx - 0x45]
	cmp	eax, 3
	mov	ebx, dword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x150]
	jb	.label_27
	cmp	edx, 0x41
	nop	
	jne	.label_16
.label_27:
	movzx	eax, byte ptr [rcx]
	cmp	eax, 0x27
	mov	rbp, rbp
	je	.label_50
	movzx	eax, al
	lea	rsi, [rsi]
	cmp	eax, 0x22
	mov	rsp, rsp
	jne	.label_33
.label_50:
	mov	rsp, rsp
	mov	al, byte ptr [rcx + 1]
	mov	rbp, rbp
	test	al, al
	je	.label_33
	nop	
	mov	r15d, ebx
	movzx	eax, al
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x174], eax
	fild	dword ptr [rsp + 0x174]
	fstp	xword ptr [rsp + 0x18]
	cmp	byte ptr [rcx + 2], 0
	mov	rbp, rbp
	je	.label_38
	mov	al,  byte ptr [byte ptr [rip + posixly_correct]]
	test	al, al
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rsp + 0x4c]
	lea	rsi, [rsi]
	jne	.label_46
	add	rcx, 2
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.40
	nop	
	mov	edx, 5
	mov	r12, rcx
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	nop	
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r12
	call	error
	nop	
	jmp	.label_46
.label_33:
	mov	r15d, ebx
	lea	rdi, [rdi]
	mov	rbx, rcx
	nop	
	call	__errno_location
	mov	dword ptr [rax], 0
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rsi, [rsp + 0x168]
	call	cl_strtold
	lea	rsi, [rsi]
	fstp	xword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x168]
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rbp, rbp
	call	verify_numeric
.label_38:
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rsp + 0x4c]
.label_46:
	mov	eax, dword ptr [rsp + 0x184]
	lea	rsi, [rsi]
	test	bl, bl
	mov	rbp, rbp
	je	.label_78
	lea	rdi, [rdi]
	test	al, al
	mov	ebx, r15d
	je	.label_55
	fld	xword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	fstp	xword ptr [rsp]
	xor	eax, eax
	mov	rdi, r13
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x40]
	mov	edx, dword ptr [rsp + 0x24]
	call	xprintf
	jmp	.label_16
.label_78:
	mov	rbp, rbp
	test	al, al
	mov	ebx, r15d
	lea	rdi, [rdi]
	je	.label_79
	fld	xword ptr [rsp + 0x18]
	mov	rsp, rsp
	fstp	xword ptr [rsp]
	nop	
	xor	eax, eax
	mov	rdi, r13
	mov	esi, dword ptr [rsp + 0x24]
	call	xprintf
	jmp	.label_16
.label_75:
	mov	eax, dword ptr [rsp + 0x4c]
	test	al, al
	je	.label_88
	mov	eax, dword ptr [rsp + 0x184]
	test	al, al
	lea	rdi, [rdi]
	je	.label_91
	mov	rsp, rsp
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x40]
	nop	
	mov	edx, dword ptr [rsp + 0x24]
	nop	
	call	xprintf
	mov	rbp, rbp
	jmp	.label_16
.label_86:
	mov	rbp, rbp
	mov	rbx, rcx
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0
	xor	edx, edx
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rsi, [rsp + 0x168]
	call	__strtoul_internal
	mov	r12, rax
	mov	rsi, qword ptr [rsp + 0x168]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	verify_numeric
.label_92:
	mov	ebx, dword ptr [rsp + 0x4c]
.label_11:
	mov	eax, dword ptr [rsp + 0x184]
	test	bl, bl
	je	.label_29
	lea	rdi, [rdi]
	test	al, al
	je	.label_51
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x40]
	mov	edx, dword ptr [rsp + 0x24]
	mov	rcx, r12
	mov	rbp, rbp
	call	xprintf
	mov	ebx, r15d
	jmp	.label_16
.label_29:
	test	al, al
	mov	rbp, rbp
	je	.label_37
	xor	eax, eax
	mov	rdi, r13
	mov	rbp, rbp
	mov	esi, dword ptr [rsp + 0x24]
	jmp	.label_13
.label_88:
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x184]
	test	al, al
	je	.label_42
	xor	eax, eax
	nop	
	mov	rdi, r13
	mov	esi, dword ptr [rsp + 0x24]
	lea	rsi, [rsi]
	jmp	.label_45
.label_55:
	mov	rsp, rsp
	fld	xword ptr [rsp + 0x18]
	fstp	xword ptr [rsp]
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	call	xprintf
	mov	rbp, rbp
	jmp	.label_16
.label_79:
	mov	rsp, rsp
	fld	xword ptr [rsp + 0x18]
	fstp	xword ptr [rsp]
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdi, r13
	lea	rdi, [rdi]
	call	xprintf
	jmp	.label_16
.label_32:
	xor	ebx, ebx
	mov	rsp, rsp
	mov	r12, r15
	jmp	.label_40
.label_475:
	movsx	ecx, byte ptr [rcx]
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x4c]
	test	al, al
	je	.label_59
	xor	eax, eax
	mov	rdi, r13
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x40]
	mov	edx, ecx
	mov	rsp, rsp
	call	xprintf
	lea	rdi, [rdi]
	jmp	.label_16
.label_64:
	mov	rbp, rbp
	mov	esi, 0x25
	mov	rbp, rbp
	call	__overflow
	jmp	.label_31
.label_51:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x40]
.label_13:
	lea	rsi, [rsi]
	mov	rdx, r12
	lea	rdi, [rdi]
	call	xprintf
	lea	rsi, [rsi]
	mov	ebx, r15d
	mov	rsp, rsp
	jmp	.label_16
.label_37:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, r12
	call	xprintf
	lea	rdi, [rdi]
	mov	ebx, r15d
	jmp	.label_16
.label_91:
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x40]
.label_45:
	mov	rdx, rcx
	call	xprintf
	lea	rdi, [rdi]
	jmp	.label_16
.label_42:
	xor	eax, eax
	mov	rdi, r13
	lea	rdi, [rdi]
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	xprintf
	jmp	.label_16
.label_59:
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdi, r13
	lea	rdi, [rdi]
	mov	esi, ecx
	call	xprintf
.label_16:
	mov	rdi, r13
	call	free
	movabs	r12, 0x410150000001
	nop	word ptr [rax + rax]
.label_31:
	mov	al, byte ptr [rbp + 1]
	inc	rbp
	mov	rsp, rsp
	test	al, al
	mov	r15, rbp
	lea	rsi, [rsi]
	jne	.label_14
.label_22:
	mov	ecx, dword ptr [rsp + 0x34]
	mov	rbp, rbp
	sub	ecx, ebx
	movsxd	rax, ecx
	lea	rsi, [rsi]
	mov	edx, ebx
	nop	
	mov	rbx, qword ptr [rsp + 0x158]
	mov	rbp, rbp
	lea	rbx, [rbx + rax*8]
	lea	rdi, [rdi]
	test	edx, edx
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x38]
	jle	.label_18
	lea	rdi, [rdi]
	test	ecx, ecx
	mov	rbp, rbp
	mov	r15d, edx
	jg	.label_25
.label_18:
	test	edx, edx
	lea	rsi, [rsi]
	jle	.label_28
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.21
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, qword ptr [rbx]
	nop	
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rbp
	call	error
.label_28:
	movzx	ebx,  byte ptr [byte ptr [rip + exit_status]]
	mov	rsp, rsp
	and	ebx, 1
.label_9:
	lea	rdi, [rdi]
	mov	eax, ebx
	mov	rbp, rbp
	add	rsp, 0x188
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_49:
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.39
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	inc	ebp
	lea	rsi, [rsi]
	sub	ebp, r15d
	mov	edi, 1
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, rcx
	nop	
	mov	ecx, ebp
	mov	rsp, rsp
	mov	r8, r15
	mov	rbp, rbp
	call	error
.label_26:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	jmp	.label_54
.label_62:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.38
.label_54:
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	nop	
	mov	rbx, rax
	mov	rdi, qword ptr [r14]
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	error
.label_12:
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.20
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	nop	
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rcx
	call	error
	lea	rsi, [rsi]
	mov	edi, 1
	call	usage
.label_66:
	nop	
	xor	edi, edi
	call	usage
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027b0

	.globl vstrtoimax
	.type vstrtoimax, @function
vstrtoimax:
	push	r14
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rbp, rbp
	mov	rbx, rdi
	mov	rsp, rsp
	movzx	eax, byte ptr [rbx]
	nop	
	cmp	eax, 0x27
	mov	rbp, rbp
	je	.label_95
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rsi, [rsi]
	cmp	eax, 0x22
	lea	rdi, [rdi]
	jne	.label_94
.label_95:
	lea	rdi, [rdi]
	movzx	r14d, byte ptr [rbx + 1]
	nop	
	test	r14, r14
	je	.label_94
	cmp	byte ptr [rbx + 2], 0
	je	.label_93
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + posixly_correct]]
	test	al, al
	jne	.label_93
	add	rbx, 2
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.40
	mov	rbp, rbp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, rbx
	nop	
	call	error
	jmp	.label_93
.label_94:
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0
	lea	rdi, [rdi]
	lea	rsi, [rsp]
	xor	edx, edx
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	rdi, rbx
	call	__strtol_internal
	mov	r14, rax
	mov	rsi, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	verify_numeric
.label_93:
	mov	rbp, rbp
	mov	rax, r14
	add	rsp, 8
	nop	
	pop	rbx
	pop	r14
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402890

	.globl print_esc
	.type print_esc, @function
print_esc:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	push	r12
	nop	
	push	rbx
	mov	r14, rdi
	movsx	r12d, byte ptr [r14 + 1]
	cmp	r12d, 0x78
	lea	rdi, [rdi]
	jne	.label_123
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	movzx	edx, byte ptr [r14 + 2]
	test	byte ptr [rcx + rdx*2 + 1], 0x10
	mov	rbp, rbp
	je	.label_107
	movsx	eax, dl
	nop	
	mov	bl, al
	add	bl, 0x9f
	lea	rdi, [rdi]
	movzx	esi, bl
	cmp	esi, 5
	ja	.label_131
	add	eax, -0x57
	jmp	.label_103
.label_123:
	lea	rbx, [r14 + 1]
	lea	rdi, [rdi]
	mov	al, r12b
	lea	rsi, [rsi]
	and	al, 0xf8
	lea	rdi, [rdi]
	movzx	eax, al
	cmp	eax, 0x30
	nop	
	jne	.label_135
	movzx	eax, r12b
	cmp	eax, 0x30
	mov	rbp, rbp
	sete	al
	and	al, sil
	mov	rsp, rsp
	movzx	eax, al
	nop	
	lea	rcx, [rbx + rax]
	movsx	edx, byte ptr [rbx + rax]
	xor	eax, eax
	mov	esi, edx
	and	esi, 0xf8
	cmp	esi, 0x30
	jne	.label_99
	mov	rsp, rsp
	add	edx, -0x30
	movsx	eax, byte ptr [rcx + 1]
	lea	rdi, [rdi]
	inc	rcx
	mov	rsp, rsp
	mov	esi, eax
	and	esi, 0xf8
	nop	
	cmp	esi, 0x30
	jne	.label_110
	lea	eax, [rax + rdx*8 - 0x30]
	movsx	edx, byte ptr [rcx + 1]
	lea	rdi, [rdi]
	inc	rcx
	lea	rsi, [rsi]
	mov	esi, edx
	mov	rbp, rbp
	and	esi, 0xf8
	cmp	esi, 0x30
	mov	rsp, rsp
	jne	.label_114
	lea	eax, [rdx + rax*8 - 0x30]
	lea	rdi, [rdi]
	inc	rcx
	mov	rbx, rcx
	jmp	.label_106
.label_135:
	test	r12b, r12b
	je	.label_122
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.47
	mov	edx, 0xc
	mov	esi, r12d
	call	memchr
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_128
	lea	rbx, [r14 + 2]
	lea	rsi, [rsi]
	mov	eax, r12d
	lea	rdi, [rdi]
	add	eax, -0x61
	mov	rsp, rsp
	cmp	eax, 0x15
	ja	.label_130
	nop	
	jmp	qword ptr [word ptr [+ (rax * 8) + label_127]]
.label_457:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rbp, rbp
	jae	.label_134
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 7
	jmp	.label_97
.label_131:
	add	dl, 0xbf
	lea	rdi, [rdi]
	movzx	edx, dl
	cmp	edx, 5
	ja	.label_102
	add	eax, -0x37
	mov	rbp, rbp
	jmp	.label_103
.label_99:
	lea	rdi, [rdi]
	mov	rbx, rcx
	jmp	.label_106
.label_102:
	add	eax, -0x30
.label_103:
	lea	rsi, [rsi]
	movzx	edx, byte ptr [r14 + 3]
	lea	rsi, [rsi]
	test	byte ptr [rcx + rdx*2 + 1], 0x10
	mov	rsp, rsp
	jne	.label_109
	nop	
	lea	rbx, [r14 + 3]
	jmp	.label_113
.label_109:
	movsx	ecx, dl
	shl	eax, 4
	mov	bl, cl
	lea	rdi, [rdi]
	add	bl, 0x9f
	mov	rbp, rbp
	movzx	esi, bl
	cmp	esi, 6
	lea	rdi, [rdi]
	jae	.label_100
	mov	rbp, rbp
	add	ecx, -0x57
	jmp	.label_116
.label_100:
	add	dl, 0xbf
	movzx	edx, dl
	mov	rsp, rsp
	cmp	edx, 6
	jae	.label_121
	mov	rsp, rsp
	add	ecx, -0x37
	jmp	.label_116
.label_110:
	mov	rsp, rsp
	mov	rbx, rcx
	mov	eax, edx
	jmp	.label_106
.label_121:
	nop	
	add	ecx, -0x30
.label_116:
	add	eax, ecx
	mov	rbp, rbp
	lea	rbx, [r14 + 4]
.label_113:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	nop	
	jae	.label_126
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
	mov	rsp, rsp
	jmp	.label_97
.label_128:
	mov	al, r12b
	or	al, 0x20
	movzx	eax, al
	mov	rsp, rsp
	cmp	eax, 0x75
	mov	rbp, rbp
	jne	.label_122
	movzx	eax, r12b
	cmp	eax, 0x75
	lea	rsi, [rsi]
	setne	al
	lea	rdi, [rdi]
	movzx	ebp, al
	nop	
	lea	r15d, [rbp*4 + 4]
	mov	rsp, rsp
	lea	rbx, [r14 + 2]
	call	__ctype_b_loc
	mov	r8, qword ptr [rax]
	lea	rsi, [rsi]
	lea	ecx, [rbp*4 + 5]
	mov	rsp, rsp
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_125:
	movzx	edi, byte ptr [rbx]
	test	byte ptr [r8 + rdi*2 + 1], 0x10
	mov	rsp, rsp
	je	.label_107
	movsx	esi, dil
	mov	edx, ebp
	mov	rbp, rbp
	shl	edx, 4
	mov	rbp, rbp
	mov	al, sil
	lea	rdi, [rdi]
	add	al, 0x9f
	mov	rbp, rbp
	movzx	eax, al
	cmp	eax, 5
	nop	
	ja	.label_112
	add	esi, -0x57
	lea	rdi, [rdi]
	jmp	.label_115
	nop	dword ptr [rax]
.label_112:
	add	dil, 0xbf
	lea	rdi, [rdi]
	movzx	eax, dil
	cmp	eax, 5
	mov	rsp, rsp
	ja	.label_118
	add	esi, -0x37
	lea	rdi, [rdi]
	jmp	.label_115
	nop	dword ptr [rax + rax]
.label_118:
	add	esi, -0x30
.label_115:
	mov	rsp, rsp
	mov	ebp, esi
	mov	rsp, rsp
	add	ebp, edx
	nop	
	inc	rbx
	lea	rsi, [rsi]
	dec	ecx
	cmp	ecx, 1
	jg	.label_125
	cmp	ebp, 0x9f
	ja	.label_96
	mov	rbp, rbp
	lea	eax, [rbp - 0x24]
	nop	
	cmp	eax, 0x3c
	lea	rdi, [rdi]
	ja	.label_104
	nop	
	movabs	rcx, 0x1000000010000001
	nop	
	bt	rcx, rax
	jae	.label_104
.label_96:
	nop	
	mov	eax, ebp
	lea	rsi, [rsi]
	and	eax, 0xfffff800
	cmp	eax, 0xd800
	lea	rdi, [rdi]
	je	.label_104
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	xor	edx, edx
	mov	esi, ebp
	lea	rsi, [rsi]
	call	print_unicode_char
	nop	
	jmp	.label_97
.label_122:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	nop	
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_101
	nop	
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x5c
.label_117:
	nop	
	movzx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_97
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x28]
	nop	
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_111
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
.label_120:
	lea	rbx, [r14 + 2]
	lea	rsi, [rsi]
	jmp	.label_97
.label_114:
	mov	rbx, rcx
.label_106:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	jae	.label_119
	lea	rsi, [rsi]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	lea	rsi, [rsi]
	mov	byte ptr [rcx], al
.label_97:
	not	r14d
	add	ebx, r14d
	mov	eax, ebx
	lea	rdi, [rdi]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_126:
	movzx	esi, al
	call	__overflow
	lea	rdi, [rdi]
	jmp	.label_97
.label_119:
	mov	rsp, rsp
	movzx	esi, al
	lea	rsi, [rsi]
	call	__overflow
	jmp	.label_97
.label_458:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	jae	.label_133
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 8
	jmp	.label_97
.label_130:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rdi, [rdi]
	jae	.label_98
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], r12b
	jmp	.label_97
.label_460:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_108
	nop	
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x1b
	nop	
	jmp	.label_97
.label_461:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_132
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], 0xc
	jmp	.label_97
.label_462:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_124
	lea	rcx, [rax + 1]
	nop	
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_97
.label_463:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x28]
	nop	
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rbp, rbp
	jae	.label_129
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	nop	
	mov	qword ptr [rdi + 0x28], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 0xd
	lea	rdi, [rdi]
	jmp	.label_97
.label_464:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rdi, [rdi]
	jae	.label_136
	mov	rsp, rsp
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 9
	mov	rsp, rsp
	jmp	.label_97
.label_465:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rdi, [rdi]
	jae	.label_105
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x28], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], 0xb
	jmp	.label_97
.label_101:
	mov	esi, 0x5c
	lea	rdi, [rdi]
	call	__overflow
	jmp	.label_117
.label_111:
	mov	rbp, rbp
	call	__overflow
	mov	rbp, rbp
	jmp	.label_120
.label_134:
	lea	rsi, [rsi]
	mov	esi, 7
	lea	rsi, [rsi]
	call	__overflow
	mov	rbp, rbp
	jmp	.label_97
.label_133:
	mov	esi, 8
	call	__overflow
	jmp	.label_97
.label_98:
	movzx	esi, r12b
	lea	rdi, [rdi]
	call	__overflow
	jmp	.label_97
.label_108:
	lea	rdi, [rdi]
	mov	esi, 0x1b
	call	__overflow
	nop	
	jmp	.label_97
.label_132:
	lea	rsi, [rsi]
	mov	esi, 0xc
	lea	rdi, [rdi]
	call	__overflow
	jmp	.label_97
.label_124:
	mov	esi, 0xa
	nop	
	call	__overflow
	jmp	.label_97
.label_129:
	mov	esi, 0xd
	mov	rsp, rsp
	call	__overflow
	mov	rbp, rbp
	jmp	.label_97
.label_136:
	mov	rbp, rbp
	mov	esi, 9
	call	__overflow
	mov	rbp, rbp
	jmp	.label_97
.label_105:
	lea	rsi, [rsi]
	mov	esi, 0xb
	call	__overflow
	lea	rdi, [rdi]
	jmp	.label_97
.label_107:
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.46
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_459:
	xor	edi, edi
	call	exit
.label_104:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.48
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, r12d
	mov	rsp, rsp
	mov	r8d, r15d
	mov	r9d, ebp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fb0

	.globl verify_numeric
	.type verify_numeric, @function
verify_numeric:
	push	rbp
	lea	rdi, [rdi]
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	mov	rbx, rsi
	mov	r14, rdi
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	test	ebp, ebp
	je	.label_139
	mov	rsp, rsp
	mov	rdi, r14
	mov	rbp, rbp
	call	quote
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, ebp
	mov	rsp, rsp
	jmp	.label_141
.label_139:
	nop	
	cmp	byte ptr [rbx], 0
	mov	rbp, rbp
	je	.label_140
	mov	rsp, rsp
	xor	edi, edi
	cmp	r14, rbx
	lea	rsi, [rsi]
	je	.label_137
	mov	esi, OFFSET FLAT:.str.43
	jmp	.label_138
.label_137:
	mov	esi, OFFSET FLAT:.str.42
.label_138:
	mov	rsp, rsp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	nop	
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rbx
.label_141:
	nop	
	call	error
	nop	
	mov	byte ptr [byte ptr [rip + exit_status]],  1
.label_140:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x403070

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
	je	.label_144
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
	jae	.label_143
	mov	qword ptr [rsp], rax
	mov	r12, rax
	lea	rsi, [rsi]
	jmp	.label_144
.label_143:
	fstp	st(0)
	mov	dword ptr [r15], ebp
	fld	xword ptr [rsp + 0xc]
.label_144:
	test	r14, r14
	mov	rbp, rbp
	je	.label_142
	mov	qword ptr [r14], r12
.label_142:
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
	.align	16
	#Procedure 0x403110
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + file_name]],  rdi
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x403120
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403130

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
	je	.label_146
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_145
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_145
.label_146:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_148
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_145:
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
	jne	.label_147
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_1
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
.label_148:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_147:
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
	.align	16
	#Procedure 0x403230

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
	je	.label_149
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
	jl	.label_151
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_151
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
	jne	.label_150
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_150:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_151:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_149:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	esi, 0x37
	lea	rsi, [rsi]
	mov	edx, 1
	call	fwrite
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403320
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
	.align	16
	#Procedure 0x403370
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
	.align	16
	#Procedure 0x403390
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
	.align	16
	#Procedure 0x4033b0
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
	.align	16
	#Procedure 0x403420
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
	.align	16
	#Procedure 0x403440
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
	je	.label_152
	test	rdx, rdx
	nop	
	je	.label_152
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_152:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403480
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
	.align	16
	#Procedure 0x403530

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
.label_265:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r12d
	lea	rsi, [rsi]
	cmp	r12d, 0xa
	lea	rdi, [rdi]
	ja	.label_160
	mov	r9d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	r10, r15
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_166]]
.label_514:
	mov	r15d, edi
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.11
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
.label_515:
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
	jne	.label_197
	mov	al, byte ptr [rdx]
	test	al, al
	mov	r14d, 0
	je	.label_197
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_267:
	mov	rsp, rsp
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_215
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_215:
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + r14 + 1]
	mov	rsp, rsp
	inc	r14
	test	al, al
	mov	rbp, rbp
	jne	.label_267
.label_197:
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
	jmp	.label_153
.label_507:
	xor	r9d, r9d
	xor	r14d, r14d
	mov	rbp, rbp
	mov	r13b, al
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_153
.label_510:
	lea	rsi, [rsi]
	mov	al, 1
.label_508:
	lea	rsi, [rsi]
	mov	dl, 1
.label_511:
	nop	
	test	dl, 1
	lea	rsi, [rsi]
	mov	cl, 1
	mov	rbp, rbp
	je	.label_251
	mov	rbp, rbp
	mov	cl, al
.label_251:
	mov	al, cl
.label_509:
	nop	
	mov	r9d, 2
	lea	rsi, [rsi]
	test	dl, 1
	mov	rsp, rsp
	jne	.label_253
	test	rbp, rbp
	je	.label_259
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx], 0x27
	mov	r14d, 1
	lea	rdi, [rdi]
	jmp	.label_260
.label_253:
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_260
.label_512:
	mov	rsp, rsp
	mov	r9d, 5
	test	dl, 1
	jne	.label_268
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_274
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x22
	mov	r14d, 1
	jmp	.label_179
.label_513:
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
	jmp	.label_153
.label_259:
	mov	r14d, 1
	nop	word ptr cs:[rax + rax]
.label_260:
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0x68], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xa0], rcx
	nop	
	mov	r13b, al
	nop	
	mov	sil, dl
	jmp	.label_153
.label_268:
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_179
.label_274:
	nop	
	mov	r14d, 1
.label_179:
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
.label_153:
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
	jmp	.label_199
	nop	dword ptr [rax]
.label_193:
	mov	rsp, rsp
	inc	r15
.label_199:
	lea	rdi, [rdi]
	cmp	r10, -1
	lea	rsi, [rsi]
	je	.label_182
	cmp	r15, r10
	jne	.label_247
	jmp	.label_213
	nop	dword ptr [rax]
.label_182:
	mov	rcx, -1
	nop	
	cmp	byte ptr [r11 + r15], 0
	mov	rsp, rsp
	je	.label_249
.label_247:
	cmp	byte ptr [rsp + 0x56], 0
	nop	
	je	.label_229
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rbx, [r15 + rax]
	mov	qword ptr [rsp + 0x88], r15
	lea	rsi, [rsi]
	cmp	rax, 2
	jb	.label_256
	lea	rdi, [rdi]
	cmp	r10, -1
	nop	
	jne	.label_256
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
.label_256:
	mov	rsp, rsp
	cmp	rbx, r10
	lea	rdi, [rdi]
	jbe	.label_157
	mov	dword ptr [rsp + 0x84], 0
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	jmp	.label_159
	nop	dword ptr [rax]
.label_229:
	nop	
	mov	dword ptr [rsp + 0x84], 0
	lea	rsi, [rsi]
	jmp	.label_159
	nop	word ptr cs:[rax + rax]
.label_157:
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
	jne	.label_196
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
	je	.label_159
	jmp	.label_181
.label_196:
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
.label_159:
	movzx	r12d, byte ptr [r11 + r15]
	cmp	r12, 0x7e
	ja	.label_230
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	r13b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	rsp, rsp
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_231]]
.label_444:
	test	r15, r15
	jne	.label_161
	jmp	.label_239
.label_448:
	xor	eax, eax
	cmp	r10, -1
	je	.label_241
	test	r15, r15
	jne	.label_225
	nop	
	cmp	r10, 1
	je	.label_239
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_187
.label_437:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0x37], 0
	mov	rbp, rbp
	je	.label_209
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_181
	nop	
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_254
	nop	
	mov	al, dil
	nop	
	and	al, 1
	jne	.label_254
	cmp	r14, rbp
	jae	.label_258
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_258:
	nop	
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_194
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x24
.label_194:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_273
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_273:
	nop	
	add	r14, 3
	lea	rdi, [rdi]
	mov	dil, 1
.label_254:
	mov	rcx, r14
	nop	
	cmp	rcx, rbp
	mov	rsp, rsp
	jae	.label_155
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x5c
.label_155:
	lea	r14, [rcx + 1]
	mov	rbp, rbp
	mov	al, 1
	mov	r12b, 0x30
	cmp	r9d, 2
	je	.label_163
	lea	rdx, [r15 + 1]
	cmp	rdx, r10
	jae	.label_170
	nop	
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	mov	rbp, rbp
	movzx	edx, dl
	cmp	edx, 9
	mov	rbp, rbp
	ja	.label_172
	mov	rsp, rsp
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_178
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rdx + r14], 0x30
.label_178:
	nop	
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_188
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + rdx], 0x30
.label_188:
	add	rcx, 3
	xor	r13d, r13d
	lea	rdi, [rdi]
	mov	r14, rcx
	jmp	.label_187
.label_438:
	mov	bl, 0x62
	nop	
	jmp	.label_200
.label_439:
	mov	rsp, rsp
	mov	cl, 0x74
	lea	rsi, [rsi]
	jmp	.label_158
.label_440:
	mov	bl, 0x76
	mov	rbp, rbp
	jmp	.label_200
.label_441:
	lea	rdi, [rdi]
	mov	bl, 0x66
	jmp	.label_200
.label_442:
	mov	cl, 0x72
	lea	rdi, [rdi]
	jmp	.label_158
.label_445:
	nop	
	mov	al, 1
	mov	qword ptr [rsp + 0xc8], rax
	cmp	r9d, 2
	jne	.label_228
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_219
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
	jae	.label_224
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_224:
	lea	rax, [r14 + 1]
	lea	rdi, [rdi]
	cmp	rax, rbp
	jae	.label_240
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x5c
.label_240:
	lea	rdi, [rdi]
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_174
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_174:
	mov	rbp, rbp
	add	r14, 3
	lea	rdi, [rdi]
	xor	edi, edi
.label_228:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	r13b, 1
	jmp	.label_187
.label_446:
	lea	rdi, [rdi]
	cmp	r9d, 5
	je	.label_252
	mov	rbp, rbp
	cmp	r9d, 2
	jne	.label_161
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_161
	nop	
	jmp	.label_264
.label_447:
	mov	rsp, rsp
	cmp	r9d, 2
	nop	
	jne	.label_266
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_270
	jmp	.label_276
.label_230:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	qword ptr [rsp + 0xd0], r9
	mov	byte ptr [rsp + 0xf7], r8b
	mov	qword ptr [rsp + 0x78], rbp
	cmp	qword ptr [rsp + 0xa8], 1
	lea	rsi, [rsi]
	jne	.label_222
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
	jmp	.label_223
.label_241:
	lea	rdi, [rdi]
	test	r15, r15
	jne	.label_176
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_176
.label_239:
	mov	dl, 1
.label_443:
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_184
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r13b, dl
	lea	rdi, [rdi]
	jmp	.label_187
.label_209:
	cmp	dword ptr [rsp + 0x94], 0
	mov	rsp, rsp
	jne	.label_193
	jmp	.label_161
.label_266:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	cl, r12b
	je	.label_158
.label_270:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_201
.label_158:
	cmp	byte ptr [rsp + 0xc7], 0
	mov	rbp, rbp
	mov	bl, cl
	je	.label_206
.label_200:
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x37], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_187
	jmp	.label_211
.label_222:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], 0
	lea	rsi, [rsi]
	cmp	r10, -1
	lea	rbp, [rsp + 0x70]
	jne	.label_217
	mov	rdi, r11
	mov	rbx, r11
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	r11, rbx
	mov	r10, rax
.label_217:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd8], r10
	nop	
	mov	r13b, 1
	nop	
	cmp	byte ptr [rsp + 0x47], 0
	lea	rsi, [rsi]
	mov	edx, 0
	je	.label_202
	lea	rax, [r11 + r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe8], rax
	lea	rsi, [rsi]
	mov	r13b, 1
	nop	
	xor	edx, edx
.label_281:
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
	je	.label_210
	mov	rsp, rsp
	cmp	rbx, -1
	movabs	rsi, 0x20000002b
	je	.label_207
	test	rbx, rbx
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_280
	lea	rsi, [rsi]
	cmp	rbx, 2
	nop	
	mov	rbp, qword ptr [rsp + 0x78]
	jb	.label_262
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, qword ptr [rsp + 0xe8]
	lea	rdi, [rdi]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax + rax]
.label_236:
	nop	
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	mov	rbp, rbp
	cmp	edx, 0x21
	mov	rbp, rbp
	ja	.label_279
	lea	rsi, [rsi]
	bt	rsi, rdx
	nop	
	jb	.label_156
.label_279:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbx
	jb	.label_236
.label_262:
	mov	edi, dword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_165
	mov	rbp, rbp
	xor	r13d, r13d
.label_165:
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
	je	.label_281
	jmp	.label_171
	nop	
.label_202:
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
	je	.label_204
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_207
	mov	rbp, rbp
	cmp	rbp, -2
	mov	rsp, rsp
	je	.label_210
	mov	edi, dword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	call	iswprint
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_220
	xor	r13d, r13d
.label_220:
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
	je	.label_202
	lea	rsi, [rsi]
	jmp	.label_171
.label_176:
	lea	rdi, [rdi]
	mov	r10, -1
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_187
.label_252:
	cmp	dword ptr [rsp + 0x5c], 0
	lea	rdi, [rdi]
	je	.label_161
	lea	rcx, [r15 + 2]
	cmp	rcx, r10
	jae	.label_161
	movzx	eax, byte ptr [r15 + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_161
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	nop	
	cmp	edx, 0x3e
	lea	rdi, [rdi]
	ja	.label_250
	movabs	rsi, 0x7000a38200000000
	mov	rbp, rbp
	bt	rsi, rdx
	lea	rsi, [rsi]
	jae	.label_212
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_169
	lea	rdi, [rdi]
	cmp	r14, rbp
	jae	.label_192
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x3f
.label_192:
	mov	rsp, rsp
	lea	rax, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rax, rbp
	jae	.label_269
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x22
.label_269:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_191
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rax], 0x22
.label_191:
	nop	
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_271
	nop	
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x3f
.label_271:
	add	r14, 4
	xor	eax, eax
	nop	
	mov	r15, rcx
	mov	rsp, rsp
	mov	r12b, dl
	mov	rsp, rsp
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_187
.label_161:
	mov	rbp, rbp
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_187:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x83], 0
	je	.label_248
	cmp	qword ptr [rsp + 0x130], 0
	jne	.label_177
	nop	
	jmp	.label_186
	nop	dword ptr [rax + rax]
.label_248:
	cmp	byte ptr [rsp + 0x57], 0
	lea	rdi, [rdi]
	je	.label_186
.label_177:
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
	jne	.label_189
	mov	rcx, qword ptr [rsp + 0x130]
	and	esi, dword ptr [rcx + rdx*4]
	mov	rbp, rbp
	jmp	.label_272
	nop	word ptr cs:[rax + rax]
.label_186:
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
.label_272:
	mov	bl, r12b
	je	.label_201
	jmp	.label_211
.label_189:
	mov	bl, r12b
.label_211:
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_181
	cmp	r9d, 2
	jne	.label_216
	mov	al, dil
	and	al, 1
	jne	.label_216
	lea	rdi, [rdi]
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_221
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_221:
	nop	
	lea	rax, [r14 + 1]
	mov	rsp, rsp
	cmp	rax, rbp
	jae	.label_227
	mov	rcx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_227:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_232
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_232:
	mov	rsp, rsp
	add	r14, 3
	mov	dil, 1
.label_216:
	mov	rbp, rbp
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_238
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_238:
	mov	rbp, rbp
	inc	r14
	jmp	.label_244
.label_225:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_187
.label_163:
	xor	r13d, r13d
	jmp	.label_187
.label_170:
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_187
.label_172:
	mov	rsp, rsp
	xor	r13d, r13d
	jmp	.label_187
.label_207:
	xor	r13d, r13d
.label_204:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	jmp	.label_171
.label_210:
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x88]
	lea	rax, [rdx + r15]
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	cmp	rax, r10
	mov	r11, qword ptr [rsp + 0xe0]
	jae	.label_261
	lea	rax, [r11 + r15]
.label_277:
	mov	rbp, rbp
	cmp	byte ptr [rax + rdx], 0
	mov	rbp, rbp
	je	.label_235
	lea	rcx, [r15 + rdx + 1]
	inc	rdx
	cmp	rcx, r10
	lea	rdi, [rdi]
	jb	.label_277
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_171
.label_261:
	xor	r13d, r13d
	jmp	.label_171
.label_235:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_171
.label_280:
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0x88]
.label_171:
	mov	rbp, rbp
	mov	rbx, r10
.label_223:
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
	ja	.label_167
	test	cl, cl
	je	.label_167
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_187
.label_167:
	mov	rsp, rsp
	add	rdx, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x88], rdx
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_190
	nop	dword ptr [rax]
.label_180:
	nop	
	inc	r14
	mov	rbp, rbp
	mov	r12b, byte ptr [r11 + r15 + 1]
	nop	
	mov	r15, rdx
.label_190:
	mov	rsp, rsp
	test	cl, cl
	je	.label_203
	mov	edx, dword ptr [rsp + 0x84]
	test	dl, 1
	lea	rsi, [rsi]
	je	.label_205
	cmp	r14, rbp
	jae	.label_208
	nop	
	mov	rdx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + r14], 0x5c
.label_208:
	inc	r14
	mov	dword ptr [rsp + 0x84], 0
.label_205:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_218
	nop	dword ptr [rax + rax]
.label_203:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_226
	cmp	r9d, 2
	mov	rsp, rsp
	mov	r10, rbx
	jne	.label_183
	mov	rsp, rsp
	mov	al, dil
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_183
	lea	rsi, [rsi]
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_233
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_233:
	lea	rax, [r14 + 1]
	nop	
	cmp	rax, rbp
	jae	.label_255
	mov	rdx, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_255:
	lea	rax, [r14 + 2]
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_243
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdx + rax], 0x27
.label_243:
	lea	rsi, [rsi]
	add	r14, 3
	mov	rsp, rsp
	mov	dil, 1
.label_183:
	cmp	r14, rbp
	jae	.label_246
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_246:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_275
	mov	dl, r12b
	lea	rdi, [rdi]
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], dl
.label_275:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	mov	rsp, rsp
	jae	.label_185
	mov	dl, r12b
	shr	dl, 3
	and	dl, 7
	nop	
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rsi + rax], dl
.label_185:
	nop	
	add	r14, 3
	mov	rsp, rsp
	and	r12b, 7
	or	r12b, 0x30
	mov	rbp, rbp
	mov	al, 1
.label_218:
	lea	rdx, [r15 + 1]
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x88], rdx
	lea	rsi, [rsi]
	jbe	.label_201
	mov	rbp, rbp
	test	dil, 1
	lea	rsi, [rsi]
	je	.label_162
	lea	rsi, [rsi]
	mov	bl, al
	and	bl, 1
	jne	.label_162
	nop	
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_214
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + r14], 0x27
.label_214:
	lea	rsi, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rsi, rbp
	jae	.label_237
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdi + rsi], 0x27
.label_237:
	add	r14, 2
	mov	rsp, rsp
	xor	edi, edi
.label_162:
	nop	
	mov	rbx, r10
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_180
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + r14], r12b
	jmp	.label_180
	nop	word ptr cs:[rax + rax]
.label_201:
	test	dil, 1
	je	.label_195
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_195
	nop	
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_263
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_263:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_175
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_175:
	lea	rdi, [rdi]
	add	r14, 2
	nop	
	xor	edi, edi
.label_195:
	lea	rsi, [rsi]
	mov	bl, r12b
.label_244:
	cmp	r14, rbp
	jae	.label_198
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + r14], bl
.label_198:
	inc	r14
	lea	rsi, [rsi]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	lea	rsi, [rsi]
	mov	r8b, r13b
	jmp	.label_193
.label_250:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_187
.label_212:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_187
	nop	word ptr [rax + rax]
.label_213:
	nop	
	mov	rcx, r15
.label_249:
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
	je	.label_234
	mov	rsp, rsp
	or	al, dl
	je	.label_242
.label_234:
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
	je	.label_245
	mov	rsp, rsp
	or	al, dl
	jne	.label_245
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rdi, [rdi]
	jne	.label_257
	cmp	qword ptr [rsp + 0x48], 0
	mov	rsp, rsp
	je	.label_245
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
	je	.label_265
.label_245:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x68]
	test	rdx, rdx
	je	.label_154
	nop	
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_154
	mov	rsp, rsp
	mov	al, byte ptr [rdx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_154
	mov	rbp, rbp
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_168:
	cmp	r14, rbp
	jae	.label_164
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_164:
	mov	rbp, rbp
	inc	r14
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	lea	rsi, [rsi]
	test	al, al
	jne	.label_168
.label_154:
	cmp	r14, rbp
	jae	.label_173
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + r14], 0
	jmp	.label_173
.label_184:
	lea	rdi, [rdi]
	mov	r9d, 2
	jmp	.label_181
.label_156:
	mov	r9d, 2
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	jmp	.label_181
.label_226:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_181
.label_242:
	lea	rdi, [rdi]
	mov	r10, rcx
	mov	rsp, rsp
	jmp	.label_181
.label_206:
	nop	
	mov	r9d, 2
.label_181:
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
.label_278:
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	r14, rax
.label_173:
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
.label_257:
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
	jmp	.label_278
.label_219:
	mov	r9d, 2
	jmp	.label_181
.label_276:
	nop	
	mov	r9d, 2
	mov	rsp, rsp
	jmp	.label_181
.label_264:
	mov	r9d, 2
	mov	rbp, rbp
	jmp	.label_181
.label_169:
	mov	r9d, 5
	nop	
	jmp	.label_181
.label_160:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049d0
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
	.align	16
	#Procedure 0x404b10
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
	je	.label_282
	mov	qword ptr [rax], rbx
.label_282:
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
	.align	16
	#Procedure 0x404c60
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_283
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_287:
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
	jl	.label_287
.label_283:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_286
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_284]], OFFSET FLAT:slot0
.label_286:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_285
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_285:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d20
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x404d30

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
	js	.label_293
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_289
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_290
.label_289:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_294
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
	jne	.label_292
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_292:
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
.label_290:
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
	ja	.label_291
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
	je	.label_288
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_288:
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
.label_291:
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
.label_293:
	lea	rdi, [rdi]
	call	abort
.label_294:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x404fa0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404fb0
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
	.align	16
	#Procedure 0x404fe0
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
	.align	16
	#Procedure 0x405010
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
	je	.label_295
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
.label_295:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4050a0
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
	je	.label_296
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
.label_296:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405140

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
	je	.label_297
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
.label_297:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051d0
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
	je	.label_298
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
.label_298:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405240
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_299]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_300]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_301]]
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
	.align	16
	#Procedure 0x4052e0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_299]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_300]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_301]]
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
	.align	16
	#Procedure 0x405380

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_299]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_300]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_301]]
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
	.align	16
	#Procedure 0x4053f0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_299]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_300]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_301]]
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
	.align	16
	#Procedure 0x405460
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
	je	.label_302
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
.label_302:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405540
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_299]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_300]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_301]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_303
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_303
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
.label_303:
	nop	
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4055d0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_299]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_300]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_301]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_304
	test	rdx, rdx
	je	.label_304
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
.label_304:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405660
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_299]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_300]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_301]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_305
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_305
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
.label_305:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405700
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_299]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_300]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_301]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_306
	test	rsi, rsi
	je	.label_306
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
.label_306:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4057a0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4057b0
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
	.align	16
	#Procedure 0x4057d0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsp, rsp
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4057f0

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
	.align	16
	#Procedure 0x405820

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
	jne	.label_308
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_310
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_309
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_309
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_309
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_309
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_309
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_309
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_308
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_308
.label_310:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_309
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_309
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_309
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_309
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_309
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_309
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_307
.label_309:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_308:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_307:
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_308
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_308
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405990

	.globl unicode_to_mb
	.type unicode_to_mb, @function
unicode_to_mb:
	push	rbp
	nop	
	push	r15
	push	r14
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x58
	mov	r13, rcx
	mov	r14, rdx
	mov	r15, rsi
	mov	ebp, edi
	mov	al,  byte ptr [byte ptr [rip + unicode_to_mb.initialized]]
	and	al, 1
	mov	rsp, rsp
	jne	.label_314
	mov	rsp, rsp
	call	locale_charset
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	esi, OFFSET FLAT:.str_4
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	sete	al
	mov	rsp, rsp
	movzx	eax, al
	nop	
	mov	dword ptr [dword ptr [rip + unicode_to_mb.is_utf8]],  eax
	je	.label_311
	nop	
	mov	esi, OFFSET FLAT:.str_4
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	iconv_open
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + unicode_to_mb.utf8_to_local]],  rax
	lea	rdi, [rdi]
	cmp	rax, -1
	jne	.label_311
	mov	edi, OFFSET FLAT:.str.1_2
	mov	esi, OFFSET FLAT:.str_4
	mov	rsp, rsp
	call	iconv_open
	mov	qword ptr [word ptr [rip + unicode_to_mb.utf8_to_local]],  rax
.label_311:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + unicode_to_mb.initialized]],  1
.label_314:
	mov	ecx,  dword ptr [dword ptr [rip + unicode_to_mb.is_utf8]]
	lea	rsi, [rsi]
	test	ecx, ecx
	lea	rsi, [rsi]
	jne	.label_312
	cmp	qword ptr [word ptr [rip + unicode_to_mb.utf8_to_local]],  -1
	lea	rdi, [rdi]
	jne	.label_312
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.2_1
	jmp	.label_317
.label_312:
	lea	rdi, [rdi]
	cmp	ebp, 0x7f
	mov	rbp, rbp
	ja	.label_318
	mov	byte ptr [rsp + 0xa], bpl
	mov	esi, 1
	jmp	.label_316
.label_318:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0xa]
	mov	edx, 6
	mov	esi, ebp
	lea	rdi, [rdi]
	call	u8_uctomb_aux
	nop	
	test	eax, eax
	mov	rbp, rbp
	js	.label_315
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [rip + unicode_to_mb.is_utf8]]
	movsxd	rsi, eax
.label_316:
	test	ecx, ecx
	je	.label_319
	lea	rdi, [rsp + 0xa]
	mov	rsp, rsp
	jmp	.label_320
.label_319:
	lea	rax, [rsp + 0xa]
	mov	qword ptr [rsp + 0x18], rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rsi
	lea	rdi, [rdi]
	lea	r12, [rsp + 0x30]
	mov	qword ptr [rsp + 0x10], r12
	mov	qword ptr [rsp + 0x28], 0x19
	mov	rdi,  qword ptr [word ptr [rip + unicode_to_mb.utf8_to_local]]
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x18]
	nop	
	lea	rdx, [rsp + 0x20]
	nop	
	lea	rcx, [rsp + 0x10]
	lea	rsi, [rsi]
	lea	r8, [rsp + 0x28]
	mov	rbp, rbp
	call	iconv
	cmp	rax, -1
	lea	rdi, [rdi]
	je	.label_313
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	test	rax, rax
	nop	
	jne	.label_313
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + unicode_to_mb.utf8_to_local]]
	lea	rcx, [rsp + 0x10]
	lea	r8, [rsp + 0x28]
	xor	esi, esi
	lea	rsi, [rsi]
	xor	edx, edx
	call	iconv
	cmp	rax, -1
	lea	rsi, [rsi]
	je	.label_313
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	sub	rsi, r12
	mov	rbp, rbp
	mov	rdi, r12
.label_320:
	mov	rdx, r13
	nop	
	call	r15
	jmp	.label_321
.label_313:
	xor	esi, esi
	jmp	.label_317
.label_315:
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.3_0
.label_317:
	lea	rsi, [rsi]
	mov	edi, ebp
	mov	rsp, rsp
	mov	rdx, r13
	call	r14
.label_321:
	mov	rsp, rsp
	add	rsp, 0x58
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405ba0

	.globl fwrite_success_callback
	.type fwrite_success_callback, @function
fwrite_success_callback:
	mov	rbp, rbp
	push	rax
	lea	rsi, [rsi]
	mov	rax, rdx
	mov	rcx, rsi
	lea	rsi, [rsi]
	mov	esi, 1
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	call	fwrite
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rcx
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405be0

	.globl print_unicode_char
	.type print_unicode_char, @function
print_unicode_char:
	nop	
	mov	eax, esi
	lea	rdi, [rdi]
	mov	rcx, rdi
	mov	rsp, rsp
	test	edx, edx
	mov	esi, OFFSET FLAT:exit_failure_callback
	mov	edx, OFFSET FLAT:fallback_failure_callback
	mov	rsp, rsp
	cmovne	rdx, rsi
	mov	esi, OFFSET FLAT:fwrite_success_callback
	mov	edi, eax
	lea	rsi, [rsi]
	jmp	unicode_to_mb
	nop	
	.section	.text
	.align	16
	#Procedure 0x405c10

	.globl exit_failure_callback
	.type exit_failure_callback, @function
exit_failure_callback:
	nop
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14d, edi
	xor	edi, edi
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_322
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5_0
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rbp, rax
	nop	
	xor	edi, edi
	mov	edx, 5
	mov	rsp, rsp
	mov	rsi, rbx
	nop	
	call	dcgettext
	nop	
	mov	rbx, rax
	mov	rsp, rsp
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	lea	rdi, [rdi]
	mov	ecx, r14d
	mov	r8, rbx
	call	error
	jmp	.label_323
.label_322:
	mov	esi, OFFSET FLAT:.str.4_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	nop	
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rcx
	mov	ecx, r14d
	call	error
.label_323:
	mov	rax, -1
	mov	rbp, rbp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405cc0

	.globl fallback_failure_callback
	.type fallback_failure_callback, @function
fallback_failure_callback:
	push	rax
	nop	
	mov	r8, rdx
	mov	ecx, edi
	lea	rdi, [rdi]
	mov	esi, 1
	cmp	ecx, 0xffff
	lea	rdi, [rdi]
	ja	.label_324
	mov	edx, OFFSET FLAT:.str.6_0
	jmp	.label_325
.label_324:
	mov	edx, OFFSET FLAT:.str.7_0
.label_325:
	nop	
	xor	eax, eax
	mov	rdi, r8
	lea	rdi, [rdi]
	call	__fprintf_chk
	nop	
	mov	rax, -1
	pop	rcx
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d10

	.globl u8_uctomb_aux
	.type u8_uctomb_aux, @function
u8_uctomb_aux:
	lea	rsi, [rsi]
	mov	eax, 0xfffffffe
	cmp	esi, 0x80
	jb	.label_327
	mov	r8d, 2
	cmp	esi, 0x800
	nop	
	jb	.label_326
	cmp	esi, 0xffff
	ja	.label_331
	lea	rsi, [rsi]
	mov	ecx, esi
	and	ecx, 0xfffff800
	lea	rdi, [rdi]
	mov	r8d, 3
	mov	eax, 0xffffffff
	cmp	ecx, 0xd800
	lea	rdi, [rdi]
	jne	.label_326
	lea	rdi, [rdi]
	jmp	.label_327
.label_331:
	mov	eax, 0xffffffff
	mov	r8d, 4
	nop	
	cmp	esi, 0x10ffff
	ja	.label_327
.label_326:
	cmp	r8d, edx
	mov	eax, 0xfffffffe
	lea	rdi, [rdi]
	jg	.label_327
	cmp	r8d, 2
	je	.label_328
	cmp	r8d, 3
	je	.label_330
	mov	rsp, rsp
	cmp	r8d, 4
	lea	rdi, [rdi]
	jne	.label_329
	mov	eax, esi
	and	eax, 0x3f
	lea	rdi, [rdi]
	or	eax, 0x80
	nop	
	mov	byte ptr [rdi + 3], al
	shr	esi, 6
	lea	rdi, [rdi]
	or	esi, 0x10000
.label_330:
	mov	eax, esi
	and	eax, 0x3f
	or	eax, 0x80
	mov	byte ptr [rdi + 2], al
	nop	
	shr	esi, 6
	or	esi, 0x800
.label_328:
	mov	rbp, rbp
	mov	eax, esi
	and	eax, 0x3f
	lea	rsi, [rsi]
	or	eax, 0x80
	nop	
	mov	byte ptr [rdi + 1], al
	shr	esi, 6
	lea	rsi, [rsi]
	or	esi, 0xc0
	mov	rbp, rbp
	mov	byte ptr [rdi], sil
.label_329:
	nop	
	mov	eax, r8d
.label_327:
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405e10

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
	je	.label_336
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
	jmp	.label_335
.label_336:
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
.label_335:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_2
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
	mov	esi, OFFSET FLAT:.str.3_1
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
	ja	.label_338
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_340]]
.label_483:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4_1
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
.label_338:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_339
.label_484:
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
.label_485:
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
.label_486:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.7_1
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
	jmp	.label_333
.label_487:
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
	jmp	.label_332
.label_488:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
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
	jmp	.label_341
.label_489:
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
.label_341:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_332:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_333:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_337
.label_491:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_339:
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
	jmp	.label_334
.label_490:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_0
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
.label_334:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_337:
	mov	rbp, rbp
	call	__fprintf_chk
.label_482:
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
	.align	16
	#Procedure 0x406200
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_342:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_342
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406230
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_346:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_343
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_344
	nop	word ptr cs:[rax + rax]
.label_343:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_344:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_345
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_346
.label_345:
	lea	rdi, [rdi]
	lea	r8, [rsp]
	mov	rsp, rsp
	call	version_etc_arn
	add	rsp, 0x58
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4062c0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_347
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
.label_347:
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
.label_349:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_348
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_350
	nop	dword ptr [rax + rax]
.label_348:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_350:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_351
	inc	r9
	cmp	r9, 0xa
	jb	.label_349
.label_351:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406400
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
	mov	esi, OFFSET FLAT:.str.19
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
	.align	16
	#Procedure 0x406490
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
	jb	.label_352
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_353
	test	rax, rax
	je	.label_352
.label_353:
	nop	
	pop	rbx
	ret	
.label_352:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4064e0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_354
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_355
.label_354:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_355:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406510
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
	jb	.label_357
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_356
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_356
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_356:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_358
	test	rax, rax
	je	.label_357
.label_358:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_357:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406590

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_359
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_359
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_359:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_360
	test	rax, rax
	nop	
	je	.label_361
.label_360:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_361:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4065e0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_362
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_366
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_365
.label_362:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_368
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_368:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_363
.label_365:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_364
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_364
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_364:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_367
	test	rax, rax
	mov	rbp, rbp
	je	.label_366
.label_367:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_366:
	call	xalloc_die
.label_363:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4066c0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_370
	test	rax, rax
	mov	rbp, rbp
	je	.label_369
.label_370:
	pop	rbx
	ret	
.label_369:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4066e0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_371
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_374
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_375
	call	free
	xor	eax, eax
	jmp	.label_372
.label_371:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_373
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_375:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_372
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_373
.label_372:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_373:
	mov	rbp, rbp
	call	xalloc_die
.label_374:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406770
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
	je	.label_376
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_377
.label_376:
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
.label_377:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4067d0
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
	jb	.label_378
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_378
	pop	rcx
	ret	
.label_378:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x406800

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
	je	.label_380
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_379
.label_380:
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
.label_379:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406860
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
	je	.label_381
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_382
.label_381:
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
.label_382:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x4068c0

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
	.align	16
	#Procedure 0x406910

	.globl xprintf
	.type xprintf, @function
xprintf:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	rbx, rdi
	mov	rsp, rsp
	test	al, al
	mov	rsp, rsp
	je	.label_383
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_383:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	nop	
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rsi
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 8
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	lea	rcx, [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	esi, 1
	lea	rsi, [rsi]
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	__vfprintf_chk
	mov	ebx, eax
	lea	rsi, [rsi]
	test	ebx, ebx
	jns	.label_384
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	call	ferror
	nop	
	test	eax, eax
	nop	
	jne	.label_384
	mov	rsp, rsp
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	call	__errno_location
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_6
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	eax, eax
	mov	edi, r14d
	lea	rsi, [rsi]
	mov	esi, ebp
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	error
.label_384:
	mov	eax, ebx
	add	rsp, 0xd0
	mov	rbp, rbp
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a60
	.globl xvprintf
	.type xvprintf, @function
xvprintf:

	push	rbp
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	rax, rsi
	nop	
	mov	rcx, rdi
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	lea	rsi, [rsi]
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, rax
	call	__vfprintf_chk
	mov	ebx, eax
	mov	rsp, rsp
	test	ebx, ebx
	jns	.label_385
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	call	ferror
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_385
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rsp, rsp
	call	__errno_location
	mov	ebp, dword ptr [rax]
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_6
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_385:
	mov	rsp, rsp
	mov	eax, ebx
	pop	rbx
	mov	rbp, rbp
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406b00
	.globl xfprintf
	.type xfprintf, @function
xfprintf:

	push	rbp
	push	r14
	lea	rdi, [rdi]
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0xd0
	mov	rbp, rbp
	mov	rbx, rsi
	nop	
	mov	r14, rdi
	nop	
	test	al, al
	je	.label_386
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x80], xmm3
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm4
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_386:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	nop	
	mov	qword ptr [rsp + 0x38], rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rdx
	lea	rdi, [rdi]
	lea	rax, [rsp + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, rbp
	lea	rax, [rsp + 0xf0]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	lea	rsi, [rsi]
	lea	rcx, [rsp]
	mov	esi, 1
	mov	rdi, r14
	mov	rdx, rbx
	nop	
	call	__vfprintf_chk
	mov	ebx, eax
	test	ebx, ebx
	mov	rsp, rsp
	jns	.label_387
	mov	rdi, r14
	lea	rsi, [rsi]
	call	ferror
	test	eax, eax
	jne	.label_387
	lea	rsi, [rsi]
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_6
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	edi, r14d
	lea	rsi, [rsi]
	mov	esi, ebp
	mov	rbp, rbp
	mov	rdx, rcx
	call	error
.label_387:
	nop	
	mov	eax, ebx
	nop	
	add	rsp, 0xd0
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c50
	.globl xvfprintf
	.type xvfprintf, @function
xvfprintf:

	push	rbp
	push	r14
	push	rbx
	lea	rdi, [rdi]
	mov	rax, rdx
	mov	rcx, rsi
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	mov	esi, 1
	mov	rdx, rcx
	nop	
	mov	rcx, rax
	nop	
	call	__vfprintf_chk
	lea	rdi, [rdi]
	mov	ebp, eax
	mov	rsp, rsp
	test	ebp, ebp
	jns	.label_388
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	ferror
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_388
	lea	rsi, [rsi]
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	call	__errno_location
	nop	
	mov	ebx, dword ptr [rax]
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_6
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	lea	rsi, [rsi]
	mov	esi, ebx
	lea	rdi, [rdi]
	mov	rdx, rcx
	nop	
	call	error
.label_388:
	mov	eax, ebp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406cf0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_389
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_390
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
	je	.label_390
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
.label_389:
	mov	ecx, 1
.label_390:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d60

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
	je	.label_391
	nop	
	cmp	r15, -2
	jb	.label_391
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_391
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_391:
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
	.align	16
	#Procedure 0x406df0

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
	jne	.label_394
	lea	rdi, [rdi]
	mov	edi, 0x1fbf
	mov	esi, OFFSET FLAT:.str_7
	xor	edx, edx
	call	newlocale
	mov	qword ptr [word ptr [rip + c_locale_cache]],  rax
.label_394:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + c_locale_cache]]
	test	rdi, rdi
	je	.label_396
	call	uselocale
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_395
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
	je	.label_393
	mov	dword ptr [r14], ebp
	fld	xword ptr [rsp + 0xc]
	jmp	.label_392
.label_396:
	lea	rsi, [rsi]
	fldz	
	test	r15, r15
	nop	
	je	.label_392
	mov	qword ptr [r15], r14
	jmp	.label_392
.label_395:
	fldz	
	mov	rsp, rsp
	test	r15, r15
	je	.label_392
	lea	rdi, [rdi]
	mov	qword ptr [r15], r14
.label_392:
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
.label_393:
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406ee0

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
	jne	.label_397
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_398
	test	cl, cl
	mov	rsp, rsp
	jne	.label_398
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_398
.label_397:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_398
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_398:
	mov	eax, ebx
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406f70

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
	je	.label_400
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_399
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_401
.label_399:
	nop	
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_400
.label_401:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_400:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406fc0

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
	mov	eax, OFFSET FLAT:.str.1_2
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_402
	nop	
	mov	rax, rcx
.label_402:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407000

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
	js	.label_403
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_405
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
	je	.label_403
.label_405:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_403
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_404
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_404:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_403:
	lea	rsi, [rsi]
	mov	rdi, rbx
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	rbp
	nop	
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x4070b0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_406
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_406
	test	byte ptr [rbx + 1], 1
	je	.label_406
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_406:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4070f0

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
	jne	.label_407
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_407
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_408
.label_407:
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
.label_408:
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
	je	.label_409
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_409:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	16
	#Procedure 0x4071a0

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