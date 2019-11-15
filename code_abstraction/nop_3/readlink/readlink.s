	.section	.text
	.align	16
	#Procedure 0x4014d0

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
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
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
	mov	esi, OFFSET FLAT:.str.25
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
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.29
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.7
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.7
	mov	ecx, OFFSET FLAT:.str.31
	xor	eax, eax
	call	__printf_chk
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4016b0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rsi
	mov	r13d, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_1
	call	setlocale
	mov	edi, OFFSET FLAT:.str.9
	mov	esi, OFFSET FLAT:.str.10
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.9
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	r15d, 0xffffffff
	xor	ecx, ecx
.label_571:
	mov	bl, cl
	mov	ebp, r15d
	jmp	.label_12
.label_608:
	mov	ebp, 2
	nop	word ptr cs:[rax + rax]
.label_12:
	mov	r15d, ebp
	jmp	.label_13
.label_569:
	mov	byte ptr [byte ptr [rip + verbose]],  0
	nop	dword ptr [rax]
.label_13:
	xor	ebp, ebp
	mov	edx, OFFSET FLAT:.str.11
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r13d
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x64
	jle	.label_23
	lea	ecx, [rax - 0x65]
	cmp	ecx, 9
	jbe	.label_24
	add	eax, -0x71
	cmp	eax, 9
	ja	.label_19
	mov	cl, 1
	jmp	qword ptr [word ptr [+ (rax * 8) + label_25]]
.label_570:
	mov	byte ptr [byte ptr [rip + verbose]],  1
	jmp	.label_13
	nop	word ptr cs:[rax + rax]
.label_24:
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_9]]
.label_609:
	mov	byte ptr [byte ptr [rip + no_newline]],  1
	jmp	.label_13
.label_607:
	mov	ebp, 1
	jmp	.label_12
.label_23:
	cmp	eax, -1
	jne	.label_16
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, r13d
	jge	.label_17
	mov	ecx, r13d
	sub	ecx, eax
	cmp	ecx, 2
	jl	.label_18
	movzx	ecx,  byte ptr [byte ptr [rip + no_newline]]
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_20
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	eax,  dword ptr [dword ptr [rip + optind]]
.label_20:
	mov	byte ptr [byte ptr [rip + no_newline]],  0
.label_18:
	mov	dword ptr [rsp + 0x14], 0
	cmp	eax, r13d
	jge	.label_27
	xor	ecx, ecx
	test	bl, bl
	mov	edx, 0xa
	cmovne	edx, ecx
	mov	dword ptr [rsp + 0xc], edx
	mov	dword ptr [rsp + 0x14], 0
	mov	dword ptr [rsp + 0x10], 0
	jne	.label_14
	mov	cl, 0xa
	mov	dword ptr [rsp + 0x10], ecx
	jmp	.label_14
.label_15:
	mov	esi, dword ptr [rsp + 0xc]
	call	__overflow
	jmp	.label_11
	nop	dword ptr [rax]
.label_14:
	cmp	r15d, -1
	cdqe	
	mov	rbp, qword ptr [r14 + rax*8]
	je	.label_22
	mov	rdi, rbp
	mov	esi, r15d
	call	canonicalize_filename_mode
	jmp	.label_28
	nop	dword ptr [rax]
.label_22:
	mov	esi, 0x3f
	mov	rdi, rbp
	call	areadlink_with_size
.label_28:
	mov	r12, rax
	test	r12, r12
	je	.label_26
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, r12
	call	fputs_unlocked
	mov	al,  byte ptr [byte ptr [rip + no_newline]]
	and	al, 1
	jne	.label_11
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_15
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	ecx, dword ptr [rsp + 0x10]
	mov	byte ptr [rax], cl
.label_11:
	mov	rdi, r12
	call	free
	jmp	.label_10
	nop	word ptr [rax + rax]
.label_26:
	mov	dword ptr [rsp + 0x14], 1
	movzx	eax,  byte ptr [byte ptr [rip + verbose]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_10
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_10:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	inc	eax
	mov	dword ptr [dword ptr [rip + optind]],  eax
	cmp	eax, r13d
	jl	.label_14
.label_27:
	mov	eax, dword ptr [rsp + 0x14]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_16:
	cmp	eax, 0xffffff7d
	je	.label_21
	cmp	eax, 0xffffff7e
	jne	.label_19
	xor	edi, edi
	call	usage
.label_21:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.13
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_19:
	mov	edi, 1
	call	usage
.label_17:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14
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
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x4019b0

	.globl areadlink_with_size
	.type areadlink_with_size, @function
areadlink_with_size:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], rdi
	cmp	rsi, 0x401
	lea	rax, [rsi + 1]
	mov	r12d, 0x401
	cmovb	r12, rax
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	test	rbx, rbx
	je	.label_32
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	movabs	r15, 0x7fffffffffffffff
	nop	word ptr cs:[rax + rax]
.label_35:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbx
	mov	rdx, r12
	call	readlink
	mov	r13, rax
	test	r13, r13
	jns	.label_29
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	jne	.label_34
.label_29:
	cmp	r13, r12
	jb	.label_37
	mov	rdi, rbx
	call	free
	mov	rax, r12
	shr	rax, 0x3e
	jne	.label_30
	add	r12, r12
	jmp	.label_36
	nop	word ptr cs:[rax + rax]
.label_30:
	cmp	r12, r15
	mov	r12, r15
	jae	.label_33
.label_36:
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_35
	jmp	.label_32
.label_37:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp + 8], rbx
	jmp	.label_32
.label_33:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_31
.label_34:
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
.label_31:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
.label_32:
	mov	rax, qword ptr [rsp + 8]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ac0

	.globl canonicalize_filename_mode
	.type canonicalize_filename_mode, @function
canonicalize_filename_mode:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xf8
	mov	r12d, esi
	mov	r13, rdi
	mov	ebp, r12d
	and	ebp, 3
	lea	eax, [r12 + 3]
	test	eax, ebp
	jne	.label_69
	test	r13, r13
	je	.label_69
	movzx	eax, byte ptr [r13]
	cmp	eax, 0x2f
	je	.label_96
	test	al, al
	jne	.label_98
	call	__errno_location
	mov	dword ptr [rax], 2
	jmp	.label_49
.label_69:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_49:
	xor	ebx, ebx
.label_40:
	mov	rax, rbx
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_96:
	mov	edi, 0x1000
	call	xmalloc
	mov	r14, rax
	mov	byte ptr [r14], 0x2f
	lea	rax, [r14 + 0x1000]
	lea	r15, [r14 + 1]
	jmp	.label_53
.label_98:
	call	xgetcwd
	mov	r14, rax
	xor	ebx, ebx
	test	r14, r14
	je	.label_40
	xor	esi, esi
	mov	rdi, r14
	call	__rawmemchr
	mov	r15, rax
	sub	r15, r14
	cmp	r15, 0xfff
	jg	.label_66
	mov	esi, 0x1000
	mov	rdi, r14
	call	xrealloc
	mov	r14, rax
	add	r15, r14
	add	rax, 0x1000
	jmp	.label_53
.label_66:
	mov	r15, rax
.label_53:
	mov	r8b, byte ptr [r13]
	mov	rdx, r13
	xor	r13d, r13d
	test	r8b, r8b
	je	.label_79
	mov	ecx, r12d
	and	ecx, 4
	mov	dword ptr [rsp + 0x34], ecx
	and	r12d, 7
	mov	qword ptr [rsp + 0x20], r12
	mov	rbx, r12
	cmp	ebp, 2
	mov	dword ptr [rsp + 0x5c], ebp
	setne	cl
	movzx	ecx, cl
	lea	ecx, [rcx + rcx*8 + 4]
	mov	dword ptr [rsp + 0x1c], ecx
	xor	r13d, r13d
	mov	r12, rdx
	mov	qword ptr [rsp + 0x28], rdx
	xor	edx, edx
	mov	dword ptr [rsp + 0x4c], ecx
	xor	ebp, ebp
	jmp	.label_60
.label_79:
	xor	ebp, ebp
	jmp	.label_45
.label_83:
	mov	qword ptr [rsp + 0x60], r14
	mov	dword ptr [rsp + 0x80], 0
	jmp	.label_38
.label_75:
	mov	qword ptr [rsp + 0x60], r14
	cmp	eax, 0x4000
	mov	rax, qword ptr [rsp + 0x40]
	jne	.label_38
	mov	dword ptr [rsp + 0x5c], ebp
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_39
.label_38:
	cmp	ebp, 2
	mov	rsi, qword ptr [rsp + 0x10]
	je	.label_73
	mov	cl, byte ptr [r13]
	mov	edx, 0x14
	test	cl, cl
	mov	r14, qword ptr [rsp + 0x60]
	jne	.label_46
	mov	dword ptr [rsp + 0x5c], ebp
	mov	rbp, rsi
	mov	r12, r13
	jmp	.label_54
.label_73:
	mov	dword ptr [rsp + 0x5c], ebp
	mov	rbp, rsi
.label_39:
	mov	r12, r13
	mov	r14, qword ptr [rsp + 0x60]
.label_54:
	mov	r8b, byte ptr [r12]
	test	r8b, r8b
	mov	rdx, rbp
	mov	rbp, qword ptr [rsp + 0x50]
	mov	r13, qword ptr [rsp + 0x38]
	jne	.label_60
	jmp	.label_45
.label_77:
	mov	rdi, rax
	mov	qword ptr [rsp + 0x28], rax
	call	strlen
	mov	rbx, rax
	mov	rdi, r13
	call	strlen
	mov	rdx, rax
	lea	rbp, [rbx + rdx + 1]
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	mov	rcx, qword ptr [rsp + 0x20]
	je	.label_76
	mov	qword ptr [rsp + 8], rdx
	mov	qword ptr [rsp + 0x60], rbx
	mov	rbx, rcx
	cmp	rbp, rax
	jbe	.label_84
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, rbp
	call	xrealloc
	mov	r12, rax
	jmp	.label_68
.label_76:
	mov	qword ptr [rsp + 0x60], rbx
	mov	rbx, rcx
	cmp	rbp, 0x1000
	mov	eax, 0x1000
	cmovbe	rbp, rax
	mov	rdi, rbp
	mov	r12, rdx
	call	xmalloc
	mov	rdx, r12
	mov	r12, rax
	jmp	.label_93
.label_84:
	mov	rbp, rax
	mov	r12, qword ptr [rsp + 0x38]
.label_68:
	mov	rdx, qword ptr [rsp + 8]
.label_93:
	mov	rdi, qword ptr [rsp + 0x60]
	add	rdi, r12
	inc	rdx
	mov	rsi, r13
	call	memmove
	mov	rdi, r12
	mov	r13, qword ptr [rsp + 0x28]
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x60]
	call	memcpy
	mov	rdi, r13
	mov	rcx, r14
	lea	r14, [rcx + 1]
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x2f
	jne	.label_87
	mov	byte ptr [rcx], 0x2f
	mov	r13, rcx
	jmp	.label_48
.label_87:
	mov	r13, rcx
	cmp	r15, r14
	jbe	.label_65
	dec	r15
.label_59:
	mov	r14, r15
	cmp	r14, r13
	jbe	.label_48
	lea	r15, [r14 - 1]
	movzx	eax, byte ptr [r14 - 1]
	cmp	eax, 0x2f
	jne	.label_59
	jmp	.label_48
.label_65:
	mov	r14, r15
.label_48:
	call	free
	mov	qword ptr [rsp + 0x38], r12
	mov	r15, r14
	mov	qword ptr [rsp + 0x28], r12
	mov	r14, r13
	mov	rax, qword ptr [rsp + 0x40]
	jmp	.label_54
.label_60:
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 0x38], r13
	mov	qword ptr [rsp + 0x50], rbp
	mov	r13, r12
.label_72:
	mov	qword ptr [rsp + 0x60], r14
	lea	rcx, [r14 + 1]
	mov	r12, r15
.label_70:
	mov	r15, r13
	jmp	.label_52
	nop	word ptr cs:[rax + rax]
.label_88:
	mov	r8b, byte ptr [rdx]
	mov	r15, rdx
.label_52:
	lea	rdx, [r15 + 1]
	movzx	esi, r8b
	cmp	esi, 0x2f
	mov	r13, r15
	jne	.label_85
	jmp	.label_88
	nop	dword ptr [rax + rax]
.label_91:
	mov	r8b, byte ptr [r13 + 1]
	inc	r13
.label_85:
	test	r8b, r8b
	je	.label_89
	movzx	edi, r8b
	cmp	edi, 0x2f
	jne	.label_91
.label_89:
	mov	r14, r13
	sub	r14, r15
	je	.label_57
	cmp	r14, 2
	je	.label_97
	cmp	r14, 1
	jne	.label_41
	movzx	edx, byte ptr [r15]
	cmp	edx, 0x2e
	mov	r14d, 1
	je	.label_100
	jmp	.label_41
	nop	
.label_97:
	cmp	esi, 0x2e
	mov	r14d, 2
	jne	.label_41
	movzx	edx, byte ptr [rdx]
	cmp	edx, 0x2e
	mov	r14d, 2
	jne	.label_41
	cmp	r12, rcx
	ja	.label_50
.label_100:
	mov	r8b, byte ptr [r13]
	test	r8b, r8b
	mov	r15, r13
	jne	.label_52
	jmp	.label_57
.label_50:
	dec	r12
	mov	rdx, r12
	mov	r14, qword ptr [rsp + 0x60]
	nop	
.label_63:
	mov	r12, rdx
	cmp	r12, r14
	jbe	.label_62
	lea	rdx, [r12 - 1]
	movzx	esi, byte ptr [r12 - 1]
	cmp	esi, 0x2f
	jne	.label_63
.label_62:
	test	r8b, r8b
	jne	.label_70
	jmp	.label_71
.label_41:
	movzx	ecx, byte ptr [r12 - 1]
	cmp	ecx, 0x2f
	je	.label_74
	mov	byte ptr [r12], 0x2f
	inc	r12
.label_74:
	lea	rcx, [r12 + r14]
	cmp	rcx, rax
	jae	.label_78
	mov	qword ptr [rsp + 0x40], rax
	jmp	.label_80
.label_78:
	mov	rdi, qword ptr [rsp + 0x60]
	sub	r12, rdi
	sub	rax, rdi
	lea	rbp, [r14 + 1]
	cmp	r14, 0xfff
	mov	ecx, 0x1000
	cmovle	rbp, rcx
	add	rbp, rax
	mov	rsi, rbp
	call	xrealloc
	mov	qword ptr [rsp + 0x60], rax
	add	rbp, rax
	add	r12, rax
	mov	qword ptr [rsp + 0x40], rbp
.label_80:
	lea	rbp, [rsp + 0x68]
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcpy
	lea	r15, [r12 + r14]
	mov	byte ptr [r12 + r14], 0
	cmp	ebx, 6
	je	.label_94
	cmp	dword ptr [rsp + 0x34], 0
	jne	.label_99
	mov	edi, 1
	mov	r14, qword ptr [rsp + 0x60]
	mov	rsi, r14
	mov	rdx, rbp
	call	__lxstat
	jmp	.label_43
.label_99:
	mov	edi, 1
	mov	r14, qword ptr [rsp + 0x60]
	mov	rsi, r14
	mov	rdx, rbp
	call	__xstat
.label_43:
	mov	ebp, dword ptr [rsp + 0x5c]
	test	eax, eax
	je	.label_51
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0x4c], eax
	cmp	ebp, 1
	mov	rax, r13
	jne	.label_55
	nop	word ptr [rax + rax]
.label_95:
	movzx	ecx, byte ptr [rax]
	inc	rax
	cmp	ecx, 0x2f
	je	.label_95
	test	cl, cl
	setne	al
	cmp	dword ptr [rsp + 0x4c], 2
	movzx	eax, al
	lea	ecx, [rax + rax*8 + 4]
	mov	eax, 0xd
	cmovne	ecx, eax
	mov	rax, qword ptr [rsp + 0x40]
	jmp	.label_64
.label_51:
	mov	eax, dword ptr [rsp + 0x80]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0xa000
	jne	.label_75
	mov	rbp, qword ptr [rsp + 0x50]
	test	rbp, rbp
	jne	.label_82
	mov	edi, 7
	xor	esi, esi
	mov	edx, OFFSET FLAT:triple_hash
	mov	ecx, OFFSET FLAT:triple_compare_ino_str
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	mov	rbp, rax
	test	rbp, rbp
	je	.label_86
.label_82:
	mov	rdi, rbp
	mov	r12, qword ptr [rsp + 0x28]
	mov	rsi, r12
	lea	rbx, [rsp + 0x68]
	mov	rdx, rbx
	call	seen_file
	test	al, al
	je	.label_92
	mov	qword ptr [rsp + 0x50], rbp
	mov	ebp, dword ptr [rsp + 0x5c]
	cmp	ebp, 2
	mov	eax, dword ptr [rsp + 0x4c]
	mov	ecx, 0x28
	cmovne	eax, ecx
	mov	dword ptr [rsp + 0x4c], eax
	mov	ecx, dword ptr [rsp + 0x1c]
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbx, qword ptr [rsp + 0x20]
.label_64:
	cmp	ecx, 4
	jne	.label_42
	mov	dword ptr [rsp + 0x5c], ebp
	jmp	.label_44
.label_92:
	mov	rdi, rbp
	mov	qword ptr [rsp + 0x50], rbp
	mov	rsi, r12
	mov	rdx, rbx
	call	record_file
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rdi, r14
	call	areadlink_with_size
	test	rax, rax
	jne	.label_77
	call	__errno_location
	mov	ecx, dword ptr [rsp + 0x5c]
	cmp	ecx, 2
	mov	rcx, qword ptr [rsp + 0x20]
	jne	.label_61
	cmp	dword ptr [rax], 0xc
	je	.label_61
	mov	rbx, rcx
	mov	rax, qword ptr [rsp + 0x40]
.label_44:
	mov	r8b, byte ptr [r13]
	test	r8b, r8b
	jne	.label_72
	jmp	.label_67
.label_94:
	mov	dword ptr [rsp + 0x80], 0
	mov	ebp, dword ptr [rsp + 0x5c]
	mov	rax, qword ptr [rsp + 0x40]
	jmp	.label_38
.label_55:
	test	ebp, ebp
	mov	rax, qword ptr [rsp + 0x40]
	jne	.label_83
	mov	edx, dword ptr [rsp + 0x4c]
.label_46:
	mov	dword ptr [rsp + 0x4c], edx
	jmp	.label_47
.label_57:
	mov	r15, r12
	mov	r14, qword ptr [rsp + 0x60]
.label_67:
	mov	rbp, qword ptr [rsp + 0x50]
	mov	r13, qword ptr [rsp + 0x38]
.label_45:
	lea	rcx, [r14 + 1]
	cmp	r15, rcx
	jbe	.label_81
	movzx	ecx, byte ptr [r15 - 1]
	cmp	ecx, 0x2f
	jne	.label_81
	dec	r15
.label_81:
	mov	byte ptr [r15], 0
	lea	rcx, [r15 + 1]
	cmp	rax, rcx
	je	.label_90
	mov	esi, 1
	sub	rsi, r14
	add	rsi, r15
	mov	rdi, r14
	call	xrealloc
	mov	rbx, rax
	jmp	.label_56
.label_90:
	mov	rbx, r14
.label_56:
	mov	rdi, r13
	call	free
	test	rbp, rbp
	je	.label_40
	mov	rdi, rbp
	call	hash_free
	jmp	.label_40
.label_42:
	cmp	ecx, 0xd
	je	.label_47
	jmp	.label_40
.label_61:
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0x4c], eax
.label_47:
	mov	rdi, qword ptr [rsp + 0x38]
	call	free
	mov	rdi, r14
	call	free
	mov	rdi, qword ptr [rsp + 0x50]
	test	rdi, rdi
	je	.label_58
	call	hash_free
.label_58:
	call	__errno_location
	mov	ecx, dword ptr [rsp + 0x4c]
	mov	dword ptr [rax], ecx
	jmp	.label_49
.label_71:
	mov	r15, r12
	jmp	.label_67
.label_86:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402170
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402180
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402190

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_104
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_103
	cmp	dword ptr [rbp], 0x20
	jne	.label_103
.label_104:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_102
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_103:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_101
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_102:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_101:
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
	.align	16
	#Procedure 0x402250

	.globl record_file
	.type record_file, @function
record_file:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	test	r14, r14
	je	.label_105
	mov	edi, 0x18
	call	xmalloc
	mov	rbx, rax
	mov	rdi, r12
	call	xstrdup
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [r15]
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, r14
	mov	rsi, rbx
	call	hash_insert
	test	rax, rax
	je	.label_106
	cmp	rax, rbx
	je	.label_105
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	triple_free
.label_105:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_106:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022d0

	.globl seen_file
	.type seen_file, @function
seen_file:
	test	rdi, rdi
	je	.label_107
	sub	rsp, 0x18
	mov	qword ptr [rsp], rsi
	mov	rax, qword ptr [rdx + 8]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rdx]
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsp]
	call	hash_lookup
	test	rax, rax
	setne	al
	add	rsp, 0x18
	ret	
.label_107:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x402310
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402320
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402330
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402340
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdx
	jae	.label_108
	mov	rdi, rcx
	not	rdi
	add	rdi, rdx
	mov	rsi, rdi
	shr	rsi, 4
	xor	eax, eax
	bt	rdi, 4
	jb	.label_114
	xor	eax, eax
	cmp	qword ptr [rcx], 0
	je	.label_113
	mov	rdi, rcx
	nop	word ptr cs:[rax + rax]
.label_110:
	mov	rdi, qword ptr [rdi + 8]
	inc	rax
	test	rdi, rdi
	jne	.label_110
.label_113:
	add	rcx, 0x10
.label_114:
	test	rsi, rsi
	je	.label_108
	nop	word ptr cs:[rax + rax]
.label_116:
	cmp	qword ptr [rcx], 0
	mov	esi, 0
	mov	rdi, rcx
	je	.label_109
	nop	
.label_115:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_115
	cmp	rsi, rax
	cmova	rax, rsi
.label_109:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_111
	lea	rdi, [rcx + 0x10]
	xor	esi, esi
.label_112:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_112
	cmp	rsi, rax
	cmova	rax, rsi
.label_111:
	add	rcx, 0x20
	cmp	rcx, rdx
	jb	.label_116
.label_108:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4023f0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rcx, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	edx, edx
	cmp	rcx, r9
	mov	esi, 0
	jae	.label_120
	mov	rax, rcx
	not	rax
	add	rax, r9
	mov	r8, rax
	shr	r8, 4
	xor	edx, edx
	bt	rax, 4
	jb	.label_119
	xor	edx, edx
	cmp	qword ptr [rcx], 0
	je	.label_125
	mov	esi, 1
	mov	rax, rcx
.label_127:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_127
	jmp	.label_128
.label_119:
	xor	esi, esi
	jmp	.label_129
.label_125:
	xor	esi, esi
.label_128:
	add	rcx, 0x10
.label_129:
	test	r8, r8
	je	.label_120
	nop	dword ptr [rax]
.label_121:
	cmp	qword ptr [rcx], 0
	mov	rax, rcx
	je	.label_122
	nop	dword ptr [rax]
.label_118:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_118
	inc	rsi
.label_122:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_126
	lea	rax, [rcx + 0x10]
	nop	word ptr [rax + rax]
.label_117:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_117
	inc	rsi
.label_126:
	add	rcx, 0x20
	cmp	rcx, r9
	jb	.label_121
.label_120:
	cmp	rsi, qword ptr [rdi + 0x18]
	jne	.label_123
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 0x20]
	je	.label_124
.label_123:
	xor	eax, eax
.label_124:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4024b0
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	rcx, qword ptr [rdi + 0x20]
	mov	r12, qword ptr [rdi + 0x10]
	mov	r14, qword ptr [rdi + 0x18]
	mov	rax, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	xor	ebx, ebx
	cmp	rax, rdx
	jae	.label_130
	mov	rdi, rax
	not	rdi
	add	rdi, rdx
	mov	rsi, rdi
	shr	rsi, 4
	xor	ebx, ebx
	bt	rdi, 4
	jb	.label_141
	xor	ebx, ebx
	cmp	qword ptr [rax], 0
	je	.label_136
	mov	rdi, rax
	nop	dword ptr [rax]
.label_134:
	mov	rdi, qword ptr [rdi + 8]
	inc	rbx
	test	rdi, rdi
	jne	.label_134
.label_136:
	add	rax, 0x10
.label_141:
	test	rsi, rsi
	je	.label_130
	nop	word ptr cs:[rax + rax]
.label_133:
	cmp	qword ptr [rax], 0
	mov	esi, 0
	mov	rdi, rax
	je	.label_135
	nop	
.label_132:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_132
	cmp	rsi, rbx
	cmova	rbx, rsi
.label_135:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_131
	lea	rdi, [rax + 0x10]
	xor	esi, esi
.label_137:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_137
	cmp	rsi, rbx
	cmova	rbx, rsi
.label_131:
	add	rax, 0x20
	cmp	rax, rdx
	jb	.label_133
.label_130:
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.1_1
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_138]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_139]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_140]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.2_0
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_0
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402620

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rdi, r12
	call	qword ptr [r14 + 0x30]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_146
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_143
	add	rbx, rax
	je	.label_143
	cmp	rsi, r12
	je	.label_145
	xor	r15d, r15d
	nop	
.label_144:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_142
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_143
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_144
.label_145:
	mov	r15, r12
	jmp	.label_143
.label_142:
	mov	r15, qword ptr [rbx]
.label_143:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_146:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026a0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_147
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_150
	nop	word ptr cs:[rax + rax]
.label_149:
	add	rcx, 0x10
.label_150:
	cmp	rcx, rdx
	jae	.label_148
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_149
.label_147:
	ret	
.label_148:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026e0
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_154
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_155:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_153
	test	rdx, rdx
	jne	.label_155
	jmp	.label_151
.label_153:
	test	rdx, rdx
	je	.label_151
	mov	rax, qword ptr [rdx]
	jmp	.label_152
.label_151:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rax + rcx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_156:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_152
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_156
.label_152:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_154:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402770
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	jmp	.label_157
	nop	dword ptr [rax + rax]
.label_160:
	add	r9, 0x10
.label_157:
	cmp	r9, r8
	jae	.label_158
	cmp	qword ptr [r9], 0
	je	.label_160
	test	r9, r9
	mov	r10, r9
	je	.label_160
	nop	word ptr [rax + rax]
.label_159:
	cmp	rax, rdx
	jae	.label_158
	mov	rcx, qword ptr [r10]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r10, qword ptr [r10 + 8]
	test	r10, r10
	jne	.label_159
	mov	r8, qword ptr [rdi + 8]
	jmp	.label_160
.label_158:
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4027c0
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	r13, qword ptr [r12]
	mov	rax, qword ptr [r12 + 8]
	xor	ebx, ebx
	jmp	.label_161
	nop	word ptr cs:[rax + rax]
.label_163:
	add	r13, 0x10
.label_161:
	cmp	r13, rax
	jae	.label_164
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_163
	test	r13, r13
	je	.label_163
	mov	rsi, r14
	call	r15
	test	al, al
	mov	rbp, r13
	je	.label_164
	nop	word ptr cs:[rax + rax]
.label_165:
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_162
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_165
	jmp	.label_164
	nop	dword ptr [rax]
.label_162:
	mov	rax, qword ptr [r12 + 8]
	jmp	.label_163
.label_164:
	mov	rax, rbx
	add	rsp, 8
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
	#Procedure 0x402860
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_166
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_167:
	mov	rcx, rdx
	shl	rcx, 5
	sub	rcx, rdx
	movzx	eax, al
	add	rax, rcx
	xor	edx, edx
	div	rsi
	mov	al, byte ptr [rdi]
	inc	rdi
	test	al, al
	jne	.label_167
.label_166:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028a0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_168]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028c0

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r8
	mov	rbx, rsi
	mov	r12, rdi
	test	rdx, rdx
	mov	r13d, OFFSET FLAT:raw_hasher
	cmovne	r13, rdx
	test	rcx, rcx
	mov	ebp, OFFSET FLAT:raw_comparator
	cmovne	rbp, rcx
	mov	edi, 0x50
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_173
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_170
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_176]]
	jbe	.label_169
	movss	xmm1,  dword ptr [dword ptr [rip + label_179]]
	ucomiss	xmm1, xmm0
	jbe	.label_169
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_184]]
	jbe	.label_169
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_169
	addss	xmm1,  dword ptr [dword ptr [rip + label_176]]
	ucomiss	xmm0, xmm1
	jbe	.label_169
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_180]]
	ucomiss	xmm2, xmm0
	jb	.label_169
	ucomiss	xmm0, xmm1
	jbe	.label_169
.label_170:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_172
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_174
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_177
.label_174:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_177:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_182]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_183]]
	jae	.label_169
.label_172:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_178
	nop	
.label_181:
	add	rbx, 2
.label_178:
	cmp	rbx, -1
	je	.label_169
	cmp	rbx, 0xa
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	jb	.label_175
	nop	word ptr cs:[rax + rax]
.label_171:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_175
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_171
.label_175:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_181
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_169
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_169
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_169
	shl	rbx, 4
	add	rax, rbx
	mov	qword ptr [r15 + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	mov	qword ptr [r15 + 0x30], r13
	mov	qword ptr [r15 + 0x38], rbp
	mov	qword ptr [r15 + 0x40], r14
	mov	qword ptr [r15 + 0x48], 0
	mov	rax, r15
	jmp	.label_173
.label_169:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_173:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ae0

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	rol	rdi, 0x3d
	xor	edx, edx
	mov	rax, rdi
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402af0

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b00
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_185
	nop	word ptr cs:[rax + rax]
.label_188:
	add	r14, 0x10
.label_185:
	cmp	r14, rax
	jae	.label_187
	cmp	qword ptr [r14], 0
	je	.label_188
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_189
	nop	word ptr cs:[rax + rax]
.label_191:
	test	cl, 1
	je	.label_190
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_190:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_191
.label_189:
	test	cl, cl
	je	.label_186
	mov	rdi, qword ptr [r14]
	call	rax
.label_186:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_188
.label_187:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402bb0

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_194
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_194
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_195
	nop	
.label_192:
	add	r15, 0x10
.label_195:
	cmp	r15, rax
	jae	.label_194
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_192
	test	r15, r15
	je	.label_192
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_202
.label_201:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_202:
	test	rbx, rbx
	jne	.label_201
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_192
.label_194:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_199
	nop	
.label_193:
	add	r15, 0x10
.label_199:
	cmp	r15, rax
	jae	.label_197
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_193
	nop	word ptr cs:[rax + rax]
.label_200:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_200
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_193
.label_197:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_196
.label_198:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_198
.label_196:
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, r14
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c80

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x50
	mov	r14, rdi
	mov	rax, qword ptr [r14 + 0x28]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_203
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_212
	cvtsi2ss	xmm0, rsi
	jmp	.label_216
.label_212:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_216:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_182]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_183]]
	jae	.label_211
.label_203:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_220
	nop	dword ptr [rax + rax]
.label_214:
	add	rbx, 2
.label_220:
	cmp	rbx, -1
	je	.label_211
	cmp	rbx, 0xa
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	jb	.label_204
	nop	word ptr cs:[rax + rax]
.label_209:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_204
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_209
.label_204:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_214
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_211
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_205
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_211
	mov	qword ptr [rsp + 0x10], rbx
	shl	rbx, 4
	add	rax, rbx
	mov	qword ptr [rsp + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x18], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x28]
	movups	xmmword ptr [rsp + 0x28], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x38]
	movups	xmmword ptr [rsp + 0x38], xmm0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rsp]
	xor	edx, edx
	mov	rsi, r14
	call	transfer_entries
	test	al, al
	je	.label_218
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_205
.label_218:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_213
	nop	
.label_207:
	add	r12, 0x10
.label_213:
	cmp	r12, r15
	jae	.label_219
	cmp	qword ptr [r12], 0
	je	.label_207
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_206
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_221:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_217
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_210
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_208
	nop	word ptr [rax + rax]
.label_210:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_208:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_221
.label_206:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_207
.label_219:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_215
	mov	rdi, qword ptr [rsp]
	call	free
.label_211:
	xor	ebp, ebp
.label_205:
	mov	al, bpl
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_217:
	call	abort
.label_215:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f10

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	dword ptr [rsp + 4], edx
	mov	r12, rsi
	mov	rbp, rdi
	mov	r14, qword ptr [r12]
	mov	al, 1
	cmp	r14, qword ptr [r12 + 8]
	jae	.label_226
	nop	word ptr cs:[rax + rax]
.label_224:
	mov	r13, qword ptr [r14]
	test	r13, r13
	je	.label_222
	mov	r15, qword ptr [r14 + 8]
	test	r15, r15
	je	.label_225
	mov	rsi, qword ptr [rbp + 0x10]
	nop	dword ptr [rax]
.label_234:
	mov	rbx, qword ptr [r15]
	mov	rdi, rbx
	call	qword ptr [rbp + 0x30]
	mov	rsi, qword ptr [rbp + 0x10]
	cmp	rax, rsi
	jae	.label_230
	mov	rdx, qword ptr [rbp]
	mov	rcx, qword ptr [r15 + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_232
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [r15 + 8], rdi
	mov	qword ptr [rdx + rax + 8], r15
	jmp	.label_233
	nop	dword ptr [rax]
.label_232:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [rbp + 0x18]
	mov	qword ptr [r15], 0
	mov	rax, qword ptr [rbp + 0x48]
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [rbp + 0x48], r15
.label_233:
	test	rcx, rcx
	mov	r15, rcx
	jne	.label_234
	mov	r13, qword ptr [r14]
.label_225:
	mov	qword ptr [r14 + 8], 0
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	jne	.label_222
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, r13
	call	qword ptr [rbp + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [rbp + 0x10]
	jae	.label_228
	mov	r15, qword ptr [rbp]
	shl	rbx, 4
	cmp	qword ptr [r15 + rbx], 0
	je	.label_231
	mov	rax, qword ptr [rbp + 0x48]
	test	rax, rax
	je	.label_235
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp + 0x48], rcx
	jmp	.label_223
.label_231:
	add	r15, rbx
	mov	qword ptr [r15], r13
	inc	qword ptr [rbp + 0x18]
	jmp	.label_227
.label_235:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_229
.label_223:
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [r15 + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + rbx + 8], rax
.label_227:
	mov	qword ptr [r14], 0
	dec	qword ptr [r12 + 0x18]
.label_222:
	add	r14, 0x10
	cmp	r14, qword ptr [r12 + 8]
	jb	.label_224
	mov	al, 1
.label_226:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_229:
	xor	eax, eax
	jmp	.label_226
.label_230:
	call	abort
.label_228:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403080

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r14, rsi
	mov	r13, rdi
	test	r14, r14
	je	.label_236
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_236
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_251
	cmp	rsi, r14
	je	.label_258
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_260
	mov	rax, qword ptr [r12]
	jmp	.label_252
.label_258:
	mov	rax, r14
	jmp	.label_263
.label_260:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_251
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr cs:[rax + rax]
.label_246:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_237
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_244
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_246
	jmp	.label_251
.label_237:
	mov	rax, r14
	jmp	.label_252
.label_244:
	mov	rax, qword ptr [rbp]
.label_252:
	test	rax, rax
	je	.label_251
.label_263:
	xor	ebp, ebp
	test	r15, r15
	je	.label_242
	mov	qword ptr [r15], rax
	jmp	.label_242
.label_251:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_257
	cvtsi2ss	xmm1, rax
	jmp	.label_261
.label_257:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_261:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_249
	cvtsi2ss	xmm0, rcx
	jmp	.label_238
.label_249:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_238:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_247
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_265
	ucomiss	xmm2,  dword ptr [dword ptr [rip + label_176]]
	jbe	.label_239
	movss	xmm3,  dword ptr [dword ptr [rip + label_179]]
	ucomiss	xmm3, xmm2
	jbe	.label_239
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_184]]
	jbe	.label_239
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_239
	addss	xmm3,  dword ptr [dword ptr [rip + label_176]]
	ucomiss	xmm2, xmm3
	jbe	.label_239
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5,  dword ptr [dword ptr [rip + label_180]]
	ucomiss	xmm5, xmm4
	jb	.label_239
	ucomiss	xmm4, xmm3
	ja	.label_241
.label_239:
	mov	qword ptr [word ptr [r13 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2,  dword ptr [dword ptr [rip + label_240]]
	jmp	.label_241
.label_265:
	mov	eax, OFFSET FLAT:default_tuning
.label_241:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_247
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_254
	mulss	xmm0, xmm2
.label_254:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_183]]
	jae	.label_242
	movss	xmm1,  dword ptr [dword ptr [rip + label_182]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r13
	call	hash_rehash
	test	al, al
	je	.label_242
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_236
	mov	r15, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [r15 + rbp]
	mov	rsi, qword ptr [r15 + rbp]
	test	rsi, rsi
	je	.label_247
	cmp	rsi, r14
	mov	rax, r14
	je	.label_243
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_259
	mov	rax, qword ptr [r12]
	jmp	.label_243
.label_259:
	mov	rax, qword ptr [r15 + rbp + 8]
	test	rax, rax
	je	.label_247
	lea	rbp, [r15 + rbp + 8]
.label_264:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_262
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_266
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_264
	jmp	.label_247
.label_262:
	mov	rax, r14
	jmp	.label_243
.label_266:
	mov	rax, qword ptr [rbp]
.label_243:
	test	rax, rax
	jne	.label_245
.label_247:
	cmp	qword ptr [r12], 0
	je	.label_248
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_250
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_253
.label_248:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0,  xmmword ptr [word ptr [rip + label_255]]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_256
.label_250:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_242
.label_253:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_256:
	mov	ebp, 1
.label_242:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_236:
	call	abort
.label_245:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4033a0

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rsi
	lea	rdx, [rsp + 8]
	call	hash_insert_if_absent
	mov	ecx, eax
	xor	eax, eax
	cmp	ecx, -1
	je	.label_267
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_267:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4033d0
	.globl hash_delete
	.type hash_delete, @function
hash_delete:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rdi, r14
	call	qword ptr [r15 + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [r15 + 0x10]
	jae	.label_284
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_273
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_271
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_274
	mov	r14, qword ptr [r13]
.label_271:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_287
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_279
.label_274:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_273
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_269:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_285
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_288
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_269
	jmp	.label_273
.label_287:
	mov	qword ptr [r13], 0
	jmp	.label_279
.label_285:
	mov	rcx, rax
	jmp	.label_276
.label_288:
	mov	r14, qword ptr [rcx]
.label_276:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_279:
	xor	r12d, r12d
	test	r14, r14
	je	.label_273
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_280
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_283
	cvtsi2ss	xmm1, rax
	jmp	.label_286
.label_283:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_286:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_270
	cvtsi2ss	xmm0, rcx
	jmp	.label_275
.label_270:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_275:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_280
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_281
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_176]]
	jbe	.label_268
	movss	xmm4,  dword ptr [dword ptr [rip + label_179]]
	ucomiss	xmm4, xmm3
	jbe	.label_268
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_268
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4,  dword ptr [dword ptr [rip + label_184]]
	jbe	.label_268
	movss	xmm4,  dword ptr [dword ptr [rip + label_176]]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_268
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5,  dword ptr [dword ptr [rip + label_180]]
	ucomiss	xmm5, xmm3
	jb	.label_268
	ucomiss	xmm3, xmm4
	ja	.label_277
.label_268:
	mov	qword ptr [word ptr [r15 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_277
.label_281:
	mov	eax, OFFSET FLAT:default_tuning
.label_277:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_280
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_282
	mulss	xmm0, dword ptr [rax + 8]
.label_282:
	movss	xmm1,  dword ptr [dword ptr [rip + label_182]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	test	al, al
	jne	.label_280
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_272
	nop	
.label_278:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_278
.label_272:
	mov	qword ptr [r15 + 0x48], 0
.label_280:
	mov	r12, r14
.label_273:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_284:
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403660

	.globl triple_hash
	.type triple_hash, @function
triple_hash:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	hash_pjw
	xor	rax, qword ptr [rbx + 8]
	xor	edx, edx
	div	r14
	mov	rax, rdx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403690
	.globl triple_hash_no_name
	.type triple_hash_no_name, @function
triple_hash_no_name:

	mov	rax, qword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4036a0
	.globl triple_compare
	.type triple_compare, @function
triple_compare:

	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_289
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_290
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	same_name
	add	rsp, 8
	ret	
.label_289:
	xor	eax, eax
	ret	
.label_290:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4036d0

	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_291
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_292
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	test	eax, eax
	sete	al
	add	rsp, 8
	ret	
.label_291:
	xor	eax, eax
	ret	
.label_292:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x403700

	.globl triple_free
	.type triple_free, @function
triple_free:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x403720

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_293
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_294
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_294
	mov	esi, OFFSET FLAT:.str.2_1
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_295
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_295:
	mov	rbx, r14
.label_294:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_293:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_4
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037d0
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
	.align	16
	#Procedure 0x403810
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
	.align	16
	#Procedure 0x403820
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
	.align	16
	#Procedure 0x403830
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
	.align	16
	#Procedure 0x403870
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
	.align	16
	#Procedure 0x403890
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_296
	test	rdx, rdx
	je	.label_296
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_296:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4038c0
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
	.align	16
	#Procedure 0x403940

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
.label_367:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_421
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_302]]
.label_630:
	mov	edi, OFFSET FLAT:.str.11_0
	mov	esi, r15d
	mov	r14, r10
	mov	bl, r8b
	call	gettext_quote
	mov	qword ptr [rsp + 0xa0], rax
	mov	edi, OFFSET FLAT:.str.12
	mov	esi, r15d
	call	gettext_quote
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x98], rax
.label_631:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_330
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_330
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_352:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_343
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_343:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_352
.label_330:
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
	jmp	.label_311
.label_623:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_311
.label_626:
	mov	al, 1
.label_624:
	mov	r12b, 1
.label_627:
	test	r12b, 1
	mov	cl, 1
	je	.label_379
	mov	cl, al
.label_379:
	mov	al, cl
.label_625:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_383
	test	r10, r10
	je	.label_386
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_388
.label_383:
	xor	ecx, ecx
	jmp	.label_388
.label_628:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_396
	test	r10, r10
	je	.label_401
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_300
.label_629:
	mov	dil, 1
	mov	r9d, 5
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_311
.label_386:
	mov	ecx, 1
.label_388:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_311
.label_396:
	xor	eax, eax
	jmp	.label_300
.label_401:
	mov	eax, 1
.label_300:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_311:
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
	jmp	.label_317
.label_297:
	inc	rdi
.label_317:
	cmp	rbp, -1
	je	.label_382
	cmp	rdi, rbp
	jne	.label_359
	jmp	.label_360
	nop	word ptr cs:[rax + rax]
.label_382:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_364
.label_359:
	test	r12b, r12b
	je	.label_368
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_370
	cmp	rbp, -1
	jne	.label_370
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
.label_370:
	cmp	rbx, rbp
	jbe	.label_392
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_351
	nop	word ptr [rax + rax]
.label_368:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_351
.label_392:
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
	jne	.label_362
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_351
	jmp	.label_301
.label_362:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_351:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_395
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_323]]
.label_559:
	test	rdi, rdi
	jne	.label_306
	jmp	.label_333
.label_563:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_335
	test	rdi, rdi
	jne	.label_337
	cmp	rbp, 1
	je	.label_333
	xor	r13d, r13d
	jmp	.label_299
.label_552:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_339
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_301
	cmp	r9d, 2
	jne	.label_344
	mov	al, r14b
	and	al, 1
	jne	.label_347
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_350
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_350:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_361
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_361:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_376
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_376:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_366
.label_553:
	mov	bl, 0x62
	jmp	.label_377
.label_554:
	mov	cl, 0x74
	jmp	.label_329
.label_555:
	mov	bl, 0x76
	jmp	.label_377
.label_556:
	mov	bl, 0x66
	jmp	.label_377
.label_557:
	mov	cl, 0x72
	jmp	.label_329
.label_560:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_384
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_389
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
	jae	.label_355
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_355:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_415
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_415:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_419
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_419:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_384:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_299
.label_561:
	cmp	r9d, 5
	je	.label_303
	cmp	r9d, 2
	jne	.label_306
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_306
	jmp	.label_314
.label_562:
	cmp	r9d, 2
	jne	.label_316
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_318
	jmp	.label_324
.label_395:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_325
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
.label_326:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_341
	test	cl, cl
	je	.label_341
	xor	eax, eax
	jmp	.label_299
.label_335:
	test	rdi, rdi
	jne	.label_356
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_356
.label_333:
	mov	dl, 1
.label_558:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_358
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_299
.label_339:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_297
	jmp	.label_306
.label_316:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_329
.label_318:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_305
.label_329:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_372
.label_377:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_299
	jmp	.label_380
.label_325:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_381
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_381:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_331:
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
	je	.label_414
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_418
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_332
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_417
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_315:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_308
	bt	rsi, rdx
	jb	.label_312
.label_308:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_315
.label_417:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_413
	xor	r13d, r13d
.label_413:
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
	je	.label_331
	jmp	.label_326
.label_356:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_299
.label_303:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_306
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_306
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_306
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_348
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_353
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_345
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_407
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_407:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_327
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_327:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_374
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_374:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_410
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_410:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_299
.label_306:
	xor	eax, eax
	xor	r13d, r13d
.label_299:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_398
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_400
	jmp	.label_403
	nop	word ptr [rax + rax]
.label_398:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_403
.label_400:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_408
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_416
	nop	word ptr cs:[rax + rax]
.label_403:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_416:
	mov	bl, r15b
	je	.label_305
	jmp	.label_380
.label_408:
	mov	bl, r15b
.label_380:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_301
	cmp	r9d, 2
	jne	.label_298
	mov	al, r14b
	and	al, 1
	jne	.label_298
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_334
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_334:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_371
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_371:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_322
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_322:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_298:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_336
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_336:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_387
.label_337:
	xor	r13d, r13d
	jmp	.label_299
.label_341:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_342
	nop	word ptr [rax + rax]
.label_319:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_342:
	test	cl, cl
	je	.label_354
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_310
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_357
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_357:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_310
	nop	word ptr [rax + rax]
.label_354:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_301
	cmp	r9d, 2
	jne	.label_375
	mov	al, r14b
	and	al, 1
	jne	.label_375
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_378
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_378:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_304
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_304:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_394
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_394:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_375:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_406
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_406:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_412
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_412:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_320
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_320:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_310:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_305
	test	r14b, 1
	je	.label_313
	mov	bl, al
	and	bl, 1
	jne	.label_313
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_365
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_365:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_328
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_328:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_313:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_319
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_319
	nop	dword ptr [rax]
.label_305:
	test	r14b, 1
	je	.label_349
	and	al, 1
	jne	.label_349
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_420
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_420:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_340
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_340:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_349:
	mov	bl, r15b
.label_387:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_369
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_369:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_297
.label_344:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_366
.label_347:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_366:
	cmp	rcx, r10
	jae	.label_385
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_385:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_391
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_399
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_402
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_405
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_405:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_411
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_411:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_299
.label_391:
	xor	r13d, r13d
	jmp	.label_299
.label_399:
	xor	r13d, r13d
	jmp	.label_299
.label_402:
	xor	r13d, r13d
	jmp	.label_299
.label_418:
	xor	r13d, r13d
.label_414:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_326
.label_332:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_307
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_404:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_393
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_404
	xor	r13d, r13d
	jmp	.label_326
.label_307:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_326
.label_393:
	xor	r13d, r13d
	jmp	.label_326
.label_348:
	xor	r13d, r13d
	jmp	.label_299
.label_353:
	xor	r13d, r13d
	jmp	.label_299
	nop	dword ptr [rax]
.label_360:
	mov	r13, rdi
.label_364:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_338
	or	al, dl
	je	.label_309
.label_338:
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
	je	.label_346
	or	al, dl
	jne	.label_346
	test	r8b, 1
	jne	.label_363
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_346
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_367
.label_346:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_373
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_373
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_373
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_390:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_409
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_409:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_390
.label_373:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_397
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_397
.label_358:
	mov	r9d, 2
	jmp	.label_301
.label_312:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_301
.label_309:
	mov	rbp, r13
	jmp	.label_301
.label_372:
	mov	r9d, 2
.label_301:
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
.label_321:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_397:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_363:
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
	jmp	.label_321
.label_389:
	mov	r9d, 2
	jmp	.label_301
.label_324:
	mov	r9d, 2
	jmp	.label_301
.label_314:
	mov	r9d, 2
	jmp	.label_301
.label_345:
	mov	r9d, 5
	jmp	.label_301
.label_421:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404ad0
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
	.align	16
	#Procedure 0x404ba0
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
	je	.label_422
	mov	qword ptr [rax], rbx
.label_422:
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
	.align	16
	#Procedure 0x404ca0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_423
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_425:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_425
.label_423:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_427
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_426]], OFFSET FLAT:slot0
.label_427:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_424
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_424:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d40
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x404d50

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
	js	.label_428
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_433
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_429
.label_433:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_432
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
	jne	.label_431
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_431:
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
.label_429:
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
	ja	.label_434
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_430
	mov	rdi, rbx
	call	free
.label_430:
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
.label_434:
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
.label_428:
	call	abort
.label_432:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f20
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f30
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
	.align	16
	#Procedure 0x404f50
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
	.align	16
	#Procedure 0x404f70
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
	je	.label_435
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
.label_435:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x404fe0
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
	je	.label_436
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
.label_436:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405050
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
	je	.label_437
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
.label_437:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050c0
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
	je	.label_438
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
.label_438:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405130
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_439]]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_440]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_441]]
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
	.align	16
	#Procedure 0x4051a0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx,  qword ptr [word ptr [rip + label_439]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_440]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_441]]
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
	.align	16
	#Procedure 0x405210

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_439]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_440]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_441]]
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
	.align	16
	#Procedure 0x405270
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_439]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_440]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_441]]
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
	.align	16
	#Procedure 0x4052d0

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
	je	.label_442
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
.label_442:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x405380
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_439]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_440]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_441]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_443
	test	rdx, rdx
	je	.label_443
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_443:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x4053f0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_439]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_440]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_441]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_444
	test	rdx, rdx
	je	.label_444
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_444:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405460
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_439]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_440]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_441]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_445
	test	rsi, rsi
	je	.label_445
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_445:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4054d0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_439]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_440]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_441]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_446
	test	rsi, rsi
	je	.label_446
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
.label_446:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405540
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405550
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
	.align	16
	#Procedure 0x405570
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405590
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
	.align	16
	#Procedure 0x4055b0

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
	jne	.label_448
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_449
	cmp	ecx, 0x55
	jne	.label_447
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_447
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_447
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_447
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_447
	cmp	byte ptr [rax + 5], 0
	jne	.label_447
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_448
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_448
.label_449:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_447
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_447
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_447
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_447
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_447
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_447
	cmp	byte ptr [rax + 7], 0
	je	.label_450
.label_447:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12
	cmove	rax, rcx
.label_448:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_450:
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_448
	mov	eax, OFFSET FLAT:.str.18_0
	jmp	.label_448
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4056a0

	.globl same_name
	.type same_name, @function
same_name:
	mov	rax, rsi
	mov	rcx, rdi
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	rsi, rcx
	mov	rcx, rax
	jmp	same_nameat
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4056c0

	.globl same_nameat
	.type same_nameat, @function
same_nameat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x138
	mov	r15, rcx
	mov	dword ptr [rsp + 0x14], edx
	mov	r13, rsi
	mov	r12d, edi
	mov	rdi, r13
	call	last_component
	mov	rbx, rax
	mov	rdi, r15
	call	last_component
	mov	rbp, rax
	mov	rdi, rbx
	call	base_len
	mov	r14, rax
	mov	rdi, rbp
	call	base_len
	cmp	r14, rax
	jne	.label_451
	mov	qword ptr [rsp + 8], r15
	mov	dword ptr [rsp + 0x10], r12d
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_455
	xor	ebp, ebp
	jmp	.label_456
.label_451:
	xor	ebp, ebp
	jmp	.label_456
.label_455:
	mov	rdi, r13
	call	dir_name
	mov	rbp, rax
	lea	rcx, [rsp + 0xa8]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0x10]
	mov	rdx, rbp
	call	__fxstatat
	test	eax, eax
	je	.label_454
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	rcx, rbp
	call	error
.label_454:
	mov	rdi, rbp
	call	free
	mov	rdi, qword ptr [rsp + 8]
	call	dir_name
	mov	rbx, rax
	lea	rcx, [rsp + 0x18]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0x14]
	mov	rdx, rbx
	call	__fxstatat
	test	eax, eax
	je	.label_457
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	rcx, rbx
	call	error
.label_457:
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_452
	mov	rax, qword ptr [rsp + 0xa8]
	cmp	rax, qword ptr [rsp + 0x18]
	sete	bpl
	jmp	.label_453
.label_452:
	xor	ebp, ebp
.label_453:
	mov	rdi, rbx
	call	free
.label_456:
	mov	al, bpl
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405810

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
	je	.label_460
	mov	edx, OFFSET FLAT:.str_5
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_459
.label_460:
	mov	edx, OFFSET FLAT:.str.1_3
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_459:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_2
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
	mov	esi, OFFSET FLAT:.str.3_1
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_465
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_467]]
.label_585:
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
.label_465:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_464
.label_586:
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
.label_587:
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
.label_588:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_463
.label_589:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_462
.label_590:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_458
.label_591:
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
.label_458:
	mov	qword ptr [rsp + 0x10], rdi
.label_462:
	mov	qword ptr [rsp + 8], rsi
.label_463:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_466
.label_593:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_0
.label_464:
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
	jmp	.label_461
.label_592:
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
.label_461:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_466:
	call	__fprintf_chk
.label_584:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b00
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_468:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_468
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b30
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_471:
	cmp	r10d, 0x28
	ja	.label_469
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_470
	nop	word ptr cs:[rax + rax]
.label_469:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_470:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_472
	inc	r9
	cmp	r9, 0xa
	jb	.label_471
.label_472:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405b90

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x128
	test	al, al
	je	.label_473
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_473:
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
.label_477:
	cmp	r8d, 0x28
	ja	.label_474
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_476
	nop	
.label_474:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_476:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_475
	inc	r9
	cmp	r9, 0xa
	jb	.label_477
.label_475:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c90
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x405d10
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_478
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_479
	test	rax, rax
	je	.label_478
.label_479:
	pop	rbx
	ret	
.label_478:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d50

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_480
	test	rax, rax
	je	.label_481
.label_480:
	pop	rbx
	ret	
.label_481:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d70
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_482
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_483
	test	rbx, rbx
	jne	.label_483
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_483:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_484
	test	rax, rax
	je	.label_482
.label_484:
	pop	rbx
	ret	
.label_482:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405dc0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_485
	test	rbx, rbx
	jne	.label_485
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_485:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_487
	test	rax, rax
	je	.label_486
.label_487:
	pop	rbx
	ret	
.label_486:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405df0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_491
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_492
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_488
.label_491:
	test	rcx, rcx
	jne	.label_494
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_494:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_493
.label_488:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_489
	test	rbx, rbx
	jne	.label_489
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_489:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_490
	test	rax, rax
	je	.label_492
.label_490:
	pop	rbx
	ret	
.label_492:
	call	xalloc_die
.label_493:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e90
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_495
	test	rax, rax
	je	.label_496
.label_495:
	pop	rbx
	ret	
.label_496:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405eb0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_499
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_501
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_498
	call	free
	xor	eax, eax
	jmp	.label_500
.label_499:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_497
	mov	qword ptr [rsi], rbx
.label_498:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_500
	test	rax, rax
	je	.label_497
.label_500:
	pop	rbx
	ret	
.label_497:
	call	xalloc_die
.label_501:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f20
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
	je	.label_503
	test	r14, r14
	je	.label_502
.label_503:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_502:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f60
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_504
	call	rpl_calloc
	test	rax, rax
	je	.label_504
	pop	rcx
	ret	
.label_504:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f90

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
	je	.label_505
	test	r15, r15
	je	.label_506
.label_505:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_506:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405fd0

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
	je	.label_508
	test	r15, r15
	je	.label_507
.label_508:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_507:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406020

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_4
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406050

	.globl xgetcwd
	.type xgetcwd, @function
xgetcwd:
	push	rbx
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_510
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_509
.label_510:
	mov	rax, rbx
	pop	rbx
	ret	
.label_509:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406080

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_511
	test	rsi, rsi
	mov	ecx, 1
	je	.label_512
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_512
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_511:
	mov	ecx, 1
.label_512:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4060d0

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
	je	.label_513
	cmp	r15, -2
	jb	.label_513
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_513
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_513:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406130

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
	jne	.label_515
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_514
	test	cl, cl
	jne	.label_514
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_514
.label_515:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_514
	call	__errno_location
	mov	dword ptr [rax], 0
.label_514:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406190

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rax
	call	mdir_name
	test	rax, rax
	je	.label_516
	pop	rcx
	ret	
.label_516:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4061b0
	.globl dir_len
	.type dir_len, @function
dir_len:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2f
	sete	al
	movzx	r14d, al
	call	last_component
	mov	rcx, rax
	sub	rcx, rbx
	nop	
.label_518:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_517
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_518
.label_517:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4061f0

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2f
	sete	al
	movzx	r15d, al
	call	last_component
	sub	rax, r14
	nop	
.label_521:
	mov	rbx, rax
	cmp	r15, rbx
	jae	.label_519
	lea	rax, [rbx - 1]
	movzx	ecx, byte ptr [r14 + rbx - 1]
	cmp	ecx, 0x2f
	je	.label_521
.label_519:
	test	rbx, rbx
	sete	al
	movzx	eax, al
	lea	rdi, [rbx + rax + 1]
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_522
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	test	rbx, rbx
	jne	.label_520
	mov	byte ptr [r15], 0x2e
	mov	ebx, 1
.label_520:
	mov	byte ptr [r15 + rbx], 0
	mov	rax, r15
.label_522:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406270

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_523:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	edx, 0x2f
	je	.label_523
	xor	r8d, r8d
	mov	rax, rdi
	jmp	.label_527
	nop	word ptr cs:[rax + rax]
.label_524:
	mov	dl, byte ptr [rax + 1]
	inc	rax
	mov	r8b, cl
.label_527:
	mov	cl, 1
	movzx	esi, dl
	cmp	esi, 0x2f
	je	.label_524
	test	dl, dl
	je	.label_525
	mov	cl, r8b
	and	cl, 1
	je	.label_526
	xor	r8d, r8d
.label_526:
	test	cl, cl
	cmovne	rdi, rax
	mov	cl, r8b
	jmp	.label_524
.label_525:
	mov	rax, rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4062e0

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_528:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_529
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_528
.label_529:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406310

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_531
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_532
	cmp	byte ptr [rax + 1], 0
	je	.label_530
.label_532:
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_531
.label_530:
	xor	ebx, ebx
.label_531:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x406350

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	mov	cl, byte ptr [rdi]
	xor	eax, eax
	test	cl, cl
	je	.label_533
	inc	rdi
	xor	eax, eax
	nop	dword ptr [rax]
.label_534:
	movsx	rcx, cl
	rol	rax, 9
	add	rax, rcx
	mov	cl, byte ptr [rdi]
	inc	rdi
	test	cl, cl
	jne	.label_534
.label_533:
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406380

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_1
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_6
	cmp	byte ptr [rcx], 0
	je	.label_535
	mov	rax, rcx
.label_535:
	add	rsp, 8
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4063b0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_536
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_538
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_536
.label_538:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_536
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_537
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_537:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_536:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x406430

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_539
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_539
	test	byte ptr [rbx + 1], 1
	je	.label_539
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_539:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406470

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
	jne	.label_540
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_540
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_541
.label_540:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_541:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_542
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_542:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	16
	#Procedure 0x4064e0

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