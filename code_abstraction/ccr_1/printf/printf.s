	.section	.text
	.align	32
	#Procedure 0x4016a0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_14
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_9
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_14:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
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
	#Procedure 0x401830

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_28
	nop	
.label_27:
	mov	edi, OFFSET FLAT:label_9
	call	strcmp
	test	eax, eax
	je	.label_25
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_27
.label_25:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_9
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_23
	mov	ecx, OFFSET FLAT:label_24
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_21
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_21
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_21:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_9
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_24
	mov	ecx, OFFSET FLAT:label_9
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_32
	mov	ecx, OFFSET FLAT:label_33
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
	#Procedure 0x401950

	.globl main
	.type main, @function
main:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_33
	call	setlocale
	mov	edi, OFFSET FLAT:label_47
	mov	esi, OFFSET FLAT:label_48
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_47
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [byte ptr [rip + exit_status]],  0
	mov	edi, OFFSET FLAT:label_38
	call	getenv
	test	rax, rax
	setne	byte ptr [byte ptr [rip + posixly_correct]]
	cmp	ebp, 2
	jne	.label_43
	mov	r14, qword ptr [rbx + 8]
	mov	esi, OFFSET FLAT:label_49
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_34
	mov	esi, OFFSET FLAT:label_36
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	jne	.label_40
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	xor	ebx, ebx
	mov	esi, OFFSET FLAT:label_9
	mov	edx, OFFSET FLAT:label_23
	mov	r8d, OFFSET FLAT:label_42
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	jmp	.label_45
.label_43:
	jl	.label_44
.label_40:
	mov	rax, qword ptr [rbx + 8]
	cmp	byte ptr [rax], 0x2d
	jne	.label_35
	cmp	byte ptr [rax + 1], 0x2d
	jne	.label_35
	cmp	byte ptr [rax + 2], 0
	jne	.label_35
	cmp	ebp, 2
	jle	.label_44
	add	rbx, 8
	dec	ebp
.label_35:
	mov	r14, qword ptr [rbx + 8]
	add	ebp, -2
	add	rbx, 0x10
	nop	dword ptr [rax]
.label_39:
	mov	rdi, r14
	mov	esi, ebp
	mov	rdx, rbx
	call	print_formatted
	sub	ebp, eax
	cdqe	
	lea	rbx, [rbx + rax*8]
	test	eax, eax
	jle	.label_37
	test	ebp, ebp
	jg	.label_39
.label_37:
	test	ebp, ebp
	jle	.label_46
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_50
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, qword ptr [rbx]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_46:
	movzx	ebx,  byte ptr [byte ptr [rip + exit_status]]
.label_45:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_44:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_41
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
.label_34:
	xor	edi, edi
	call	usage
	nop	
	.section	.text
	.align	32
	#Procedure 0x401ad0

	.globl print_formatted
	.type print_formatted, @function
print_formatted:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x128
	mov	r12, rdx
	mov	r15d, esi
	mov	r13, rdi
	mov	al, byte ptr [r13]
	test	al, al
	mov	dword ptr [rsp + 4], r15d
	je	.label_73
	xor	ebp, ebp
	movabs	r14, 0x410150000001
	mov	r15d, dword ptr [rsp + 4]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x10], rcx
	nop	word ptr cs:[rax + rax]
.label_61:
	movsx	edi, al
	cmp	edi, 0x5c
	je	.label_59
	cmp	edi, 0x25
	jne	.label_63
	lea	rbx, [r13 + 1]
	mov	al, byte ptr [r13 + 1]
	cmp	al, 0x71
	je	.label_65
	cmp	al, 0x62
	je	.label_69
	cmp	al, 0x25
	jne	.label_70
	mov	edi, 0x25
	call	putchar_unlocked
	jmp	.label_51
	nop	word ptr cs:[rax + rax]
.label_59:
	xor	esi, esi
	mov	rdi, r13
	call	print_esc
	movsxd	rbx, eax
	add	rbx, r13
	jmp	.label_51
	nop	word ptr cs:[rax + rax]
.label_63:
	call	putchar_unlocked
	mov	rbx, r13
	jmp	.label_51
.label_65:
	test	r15d, r15d
	jle	.label_51
	mov	rsi, qword ptr [r12]
	mov	edi, 3
	call	quotearg_style
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	jmp	.label_67
.label_69:
	test	r15d, r15d
	jle	.label_51
	mov	rdi, qword ptr [r12]
	call	print_esc_string
.label_67:
	add	r12, 8
	dec	r15d
	jmp	.label_51
.label_70:
	mov	qword ptr [rsp + 8], rbp
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x110], xmm0
	movaps	xmmword ptr [rsp + 0x100], xmm0
	movaps	xmmword ptr [rsp + 0xf0], xmm0
	movaps	xmmword ptr [rsp + 0xe0], xmm0
	movaps	xmmword ptr [rsp + 0xd0], xmm0
	movaps	xmmword ptr [rsp + 0xc0], xmm0
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	movaps	xmmword ptr [rsp + 0x80], xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	byte ptr [rsp + 0x78], 1
	mov	byte ptr [rsp + 0x98], 1
	mov	byte ptr [rsp + 0x95], 1
	mov	byte ptr [rsp + 0x93], 1
	mov	byte ptr [rsp + 0x8f], 1
	mov	byte ptr [rsp + 0x89], 1
	mov	byte ptr [rsp + 0x67], 1
	mov	byte ptr [rsp + 0x66], 1
	mov	byte ptr [rsp + 0x65], 1
	mov	byte ptr [rsp + 0x61], 1
	mov	byte ptr [rsp + 0x81], 1
	lea	rax, [rsp + 0x83]
	mov	byte ptr [rax + 4], 1
	mov	dword ptr [rax], 0x1010101
	xor	eax, eax
	mov	ebp, 1
	jmp	.label_75
	nop	dword ptr [rax]
.label_56:
	inc	rbp
	inc	rax
.label_75:
	movsx	ecx, byte ptr [r13 + rbp]
	lea	edx, [rcx - 0x20]
	cmp	edx, 0x29
	ja	.label_68
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_71]]
.label_524:
	mov	byte ptr [rsp + 0x78], 0
	mov	byte ptr [rsp + 0x98], 0
	mov	byte ptr [rsp + 0x93], 0
	mov	byte ptr [rsp + 0x8f], 0
	mov	byte ptr [rsp + 0x65], 0
	mov	byte ptr [rsp + 0x85], 0
	mov	byte ptr [rsp + 0x83], 0
	mov	byte ptr [rsp + 0x61], 0
	mov	byte ptr [rsp + 0x81], 0
	jmp	.label_56
.label_523:
	mov	byte ptr [rsp + 0x95], 0
	mov	byte ptr [rsp + 0x93], 0
	mov	byte ptr [rsp + 0x89], 0
	mov	word ptr [rsp + 0x83], 0
	jmp	.label_56
.label_525:
	mov	byte ptr [rsp + 0x93], 0
	mov	byte ptr [rsp + 0x83], 0
	jmp	.label_56
.label_68:
	cmp	cl, 0x2a
	jne	.label_72
	lea	rbx, [r13 + rbp + 1]
	inc	rbp
	xor	eax, eax
	mov	dl, 1
	test	r15d, r15d
	jle	.label_74
	mov	rdi, qword ptr [r12]
	call	vstrtoimax
	mov	rcx, rax
	sub	rax, -0x80000000
	shr	rax, 0x20
	jne	.label_80
	add	r12, 8
	dec	r15d
	mov	rax, rcx
	mov	dl, 1
	jmp	.label_74
.label_72:
	lea	rbx, [r13 + rbp]
	movsx	ecx, byte ptr [rbx]
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_54
	nop	dword ptr [rax]
.label_60:
	movsx	ecx, byte ptr [r13 + rax + 2]
	add	ecx, -0x30
	inc	rax
	cmp	ecx, 0xa
	jb	.label_60
	lea	rbx, [r13 + rax + 1]
	inc	rax
	xor	edx, edx
	mov	rbp, rax
	jmp	.label_66
.label_54:
	xor	edx, edx
.label_66:
	mov	rax, qword ptr [rsp + 0x10]
.label_74:
	cmp	byte ptr [rbx], 0x2e
	mov	qword ptr [rsp + 0x10], rax
	jne	.label_64
	mov	byte ptr [rsp + 0x83], 0
	cmp	byte ptr [rbx + 1], 0x2a
	jne	.label_58
	add	rbx, 2
	add	rbp, 2
	mov	sil, 1
	test	r15d, r15d
	jle	.label_77
	mov	rdi, qword ptr [r12]
	mov	dword ptr [rsp + 0x1c], edx
	call	vstrtoimax
	mov	edx, dword ptr [rsp + 0x1c]
	mov	ecx, 0xffffffff
	mov	qword ptr [rsp + 8], rcx
	test	rax, rax
	js	.label_84
	mov	ecx, 0x80000000
	cmp	rax, rcx
	jge	.label_55
	mov	qword ptr [rsp + 8], rax
.label_84:
	add	r12, 8
	dec	r15d
	mov	sil, 1
	jmp	.label_62
	nop	
.label_58:
	inc	rbp
	movsx	eax, byte ptr [rbx + 1]
	inc	rbx
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_58
.label_64:
	xor	esi, esi
	jmp	.label_62
.label_77:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	jmp	.label_62
	nop	
.label_78:
	inc	rbx
.label_62:
	movzx	eax, byte ptr [rbx]
	mov	ecx, eax
	add	cl, 0xb4
	movzx	ecx, cl
	cmp	cl, 0x2e
	ja	.label_82
	bt	r14, rcx
	jb	.label_78
.label_82:
	cmp	byte ptr [rsp + rax + 0x20], 0
	je	.label_79
	test	r15d, r15d
	jle	.label_81
	dec	r15d
	mov	r10, qword ptr [r12]
	add	r12, 8
	jmp	.label_83
.label_81:
	mov	r10d, OFFSET FLAT:label_33
.label_83:
	movzx	ecx, dl
	movzx	r9d, sil
	movsx	edx, al
	mov	rdi, r13
	mov	rsi, rbp
	mov	r8, qword ptr [rsp + 0x10]
	push	r10
	mov	rbp, qword ptr [rsp + 0x10]
	push	rbp
	call	print_direc
	add	rsp, 0x10
	nop	
.label_51:
	mov	al, byte ptr [rbx + 1]
	inc	rbx
	test	al, al
	mov	r13, rbx
	jne	.label_61
.label_73:
	mov	eax, dword ptr [rsp + 4]
	sub	eax, r15d
	add	rsp, 0x128
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_79:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_76
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	inc	ebx
	sub	ebx, r13d
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	mov	r8, r13
	call	error
.label_80:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_52
	jmp	.label_53
.label_55:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_57
.label_53:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [r12]
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f50

	.globl print_esc_string
	.type print_esc_string, @function
print_esc_string:
	push	rbx
	mov	rbx, rdi
	jmp	.label_85
	nop	word ptr cs:[rax + rax]
.label_87:
	mov	esi, 1
	mov	rdi, rbx
	call	print_esc
	cdqe	
	add	rax, rbx
	inc	rax
	mov	rbx, rax
.label_85:
	movsx	edi, byte ptr [rbx]
	cmp	edi, 0x5c
	je	.label_87
	test	dil, dil
	je	.label_86
	call	putchar_unlocked
	inc	rbx
	jmp	.label_85
.label_86:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401fa0

	.globl vstrtoimax
	.type vstrtoimax, @function
vstrtoimax:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	al, byte ptr [rbx]
	cmp	al, 0x27
	je	.label_88
	cmp	al, 0x22
	jne	.label_91
.label_88:
	movzx	r14d, byte ptr [rbx + 1]
	test	r14, r14
	je	.label_91
	cmp	byte ptr [rbx + 2], 0
	je	.label_89
	mov	al,  byte ptr [byte ptr [rip + posixly_correct]]
	test	al, al
	jne	.label_89
	add	rbx, 2
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_90
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
	jmp	.label_89
.label_91:
	call	__errno_location
	mov	dword ptr [rax], 0
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, rbx
	call	strtoimax
	mov	r14, rax
	mov	rsi, qword ptr [rsp]
	mov	rdi, rbx
	call	verify_numeric
.label_89:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402030

	.globl print_direc
	.type print_direc, @function
print_direc:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	dword ptr [rsp + 0x20], r9d
	mov	dword ptr [rsp + 0x18], r8d
	mov	dword ptr [rsp + 0x24], ecx
	mov	r15, rsi
	mov	r14, rdi
	mov	rax, qword ptr [rsp + 0x78]
	mov	qword ptr [rsp + 0x28], rax
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x1c], eax
	mov	r13d, OFFSET FLAT:label_101
	mov	ebp, 1
	mov	dword ptr [rsp + 0x34], edx
	mov	ebx, edx
	add	ebx, -0x41
	cmp	ebx, 0x37
	ja	.label_100
	movabs	rax, 0x7100000071
	bt	rax, rbx
	jae	.label_92
	mov	r13d, OFFSET FLAT:label_95
	mov	ebp, 1
	jmp	.label_96
.label_92:
	movabs	rax, 0x90410800800000
	bt	rax, rbx
	jae	.label_100
.label_96:
	lea	rdi, [r15 + rbp + 2]
	call	xmalloc
	mov	r12, rax
	mov	rcx, -1
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	call	__mempcpy_chk
	mov	rcx, -1
	mov	rdi, rax
	mov	rsi, r13
	mov	rdx, rbp
	call	__mempcpy_chk
	mov	ecx, dword ptr [rsp + 0x34]
	mov	byte ptr [rax], cl
	mov	byte ptr [rax + 1], 0
	cmp	ebx, 0x37
	ja	.label_97
	jmp	qword ptr [word ptr [+ (rbx * 8) + label_106]]
.label_481:
	mov	rdi, qword ptr [rsp + 0x28]
	call	vstrtold
	mov	eax, dword ptr [rsp + 0x24]
	test	al, al
	je	.label_94
	mov	eax, dword ptr [rsp + 0x20]
	test	al, al
	je	.label_98
	fstp	xword ptr [rsp]
	xor	eax, eax
	mov	rdi, r12
	mov	esi, dword ptr [rsp + 0x18]
	mov	edx, dword ptr [rsp + 0x1c]
	call	xprintf
	jmp	.label_97
.label_482:
	mov	rdi, qword ptr [rsp + 0x28]
	call	vstrtoumax
	jmp	.label_102
.label_94:
	mov	eax, dword ptr [rsp + 0x20]
	test	al, al
	je	.label_103
	fstp	xword ptr [rsp]
	xor	eax, eax
	mov	rdi, r12
	mov	esi, dword ptr [rsp + 0x1c]
	call	xprintf
	jmp	.label_97
.label_484:
	mov	rdi, qword ptr [rsp + 0x28]
	call	vstrtoimax
.label_102:
	mov	rcx, rax
	mov	eax, dword ptr [rsp + 0x24]
	test	al, al
	je	.label_104
	mov	eax, dword ptr [rsp + 0x20]
	test	al, al
	je	.label_107
	xor	eax, eax
	mov	rdi, r12
	mov	esi, dword ptr [rsp + 0x18]
	mov	edx, dword ptr [rsp + 0x1c]
.label_109:
	call	xprintf
	jmp	.label_97
.label_104:
	mov	eax, dword ptr [rsp + 0x20]
	test	al, al
	je	.label_99
	xor	eax, eax
	mov	rdi, r12
	mov	esi, dword ptr [rsp + 0x1c]
	jmp	.label_105
.label_98:
	fstp	xword ptr [rsp]
	xor	eax, eax
	mov	rdi, r12
	mov	esi, dword ptr [rsp + 0x18]
	call	xprintf
	jmp	.label_97
.label_103:
	fstp	xword ptr [rsp]
	xor	eax, eax
	mov	rdi, r12
	call	xprintf
	jmp	.label_97
.label_107:
	xor	eax, eax
	mov	rdi, r12
	mov	esi, dword ptr [rsp + 0x18]
.label_105:
	mov	rdx, rcx
	call	xprintf
	jmp	.label_97
.label_99:
	xor	eax, eax
	mov	rdi, r12
	mov	rsi, rcx
.label_112:
	call	xprintf
	jmp	.label_97
.label_100:
	xor	ebp, ebp
	mov	r13, r14
	jmp	.label_96
.label_483:
	mov	rax, qword ptr [rsp + 0x28]
	movsx	ecx, byte ptr [rax]
	mov	eax, dword ptr [rsp + 0x24]
	test	al, al
	je	.label_93
	xor	eax, eax
	mov	rdi, r12
	mov	esi, dword ptr [rsp + 0x18]
	mov	edx, ecx
	call	xprintf
	jmp	.label_97
	.section	.text
	.align	32
	#Procedure 0x4022b0

	.globl print_esc
	.type print_esc, @function
print_esc:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	movsx	ebp, byte ptr [r14 + 1]
	cmp	ebp, 0x78
	jne	.label_123
	lea	r13, [r14 + 2]
	call	__ctype_b_loc
	mov	r12, qword ptr [rax]
	xor	r15d, r15d
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_121:
	movsx	ebx, byte ptr [r13 + r15]
	mov	edi, ebx
	call	to_uchar
	movzx	eax, al
	test	byte ptr [r12 + rax*2 + 1], 0x10
	je	.label_134
	mov	eax, ebp
	shl	eax, 4
	mov	ecx, ebx
	add	cl, 0x9f
	cmp	cl, 5
	ja	.label_133
	add	ebx, -0x57
	jmp	.label_118
.label_133:
	mov	ecx, ebx
	add	cl, 0xbf
	cmp	cl, 5
	ja	.label_119
	add	ebx, -0x37
	jmp	.label_118
	nop	
.label_119:
	add	ebx, -0x30
.label_118:
	mov	ebp, ebx
	add	ebp, eax
	inc	r15
	cmp	r15d, 2
	jl	.label_121
	jmp	.label_120
.label_123:
	lea	r13, [r14 + 1]
	mov	eax, ebp
	and	al, 0xf8
	cmp	al, 0x30
	jne	.label_125
	cmp	bpl, 0x30
	sete	al
	and	al, sil
	movzx	eax, al
	add	r13, rax
	xor	eax, eax
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_135:
	movsx	ecx, byte ptr [r13 + rax]
	mov	edx, ecx
	and	dl, 0xf8
	cmp	dl, 0x30
	jne	.label_127
	lea	edi, [rcx + rdi*8 - 0x30]
	inc	rax
	cmp	eax, 3
	jl	.label_135
.label_127:
	add	r13, rax
	jmp	.label_137
.label_134:
	test	r15d, r15d
	je	.label_115
.label_120:
	add	r13, r15
	mov	edi, ebp
.label_137:
	call	putchar_unlocked
.label_122:
	not	r14d
	add	r13d, r14d
	mov	eax, r13d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_125:
	test	bpl, bpl
	je	.label_117
	mov	edi, OFFSET FLAT:label_124
	mov	edx, 0xc
	mov	esi, ebp
	call	memchr
	test	rax, rax
	je	.label_117
	lea	r13, [r14 + 2]
	mov	edi, ebp
	call	print_esc_char
	jmp	.label_122
.label_117:
	mov	al, byte ptr [r13]
	or	al, 0x20
	cmp	al, 0x75
	jne	.label_130
	movsx	eax, byte ptr [r14 + 1]
	xor	ebx, ebx
	mov	dword ptr [rsp + 4], eax
	cmp	eax, 0x75
	setne	bl
	lea	eax, [rbx*4 + 4]
	mov	dword ptr [rsp], eax
	lea	r13, [r14 + 2]
	call	__ctype_b_loc
	mov	r15, qword ptr [rax]
	lea	r12d, [rbx*4 + 5]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_132:
	movsx	ebx, byte ptr [r13]
	mov	edi, ebx
	call	to_uchar
	movzx	eax, al
	test	byte ptr [r15 + rax*2 + 1], 0x10
	je	.label_115
	mov	eax, ebp
	shl	eax, 4
	mov	ecx, ebx
	add	cl, 0x9f
	cmp	cl, 5
	ja	.label_126
	add	ebx, -0x57
	jmp	.label_128
	nop	
.label_126:
	mov	ecx, ebx
	add	cl, 0xbf
	cmp	cl, 5
	ja	.label_129
	add	ebx, -0x37
	jmp	.label_128
	nop	
.label_129:
	add	ebx, -0x30
.label_128:
	mov	ebp, ebx
	add	ebp, eax
	inc	r13
	dec	r12d
	cmp	r12d, 1
	jg	.label_132
	cmp	ebp, 0x9f
	ja	.label_136
	lea	eax, [rbp - 0x24]
	cmp	eax, 0x3c
	ja	.label_116
	movabs	rcx, 0x1000000010000001
	bt	rcx, rax
	jae	.label_116
.label_136:
	mov	eax, ebp
	and	eax, 0xfffff800
	cmp	eax, 0xd800
	je	.label_116
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	xor	edx, edx
	mov	esi, ebp
	call	print_unicode_char
	jmp	.label_122
.label_130:
	mov	edi, 0x5c
	call	putchar_unlocked
	movsx	edi, byte ptr [r13]
	test	edi, edi
	je	.label_122
	call	putchar_unlocked
	lea	r13, [r14 + 2]
	jmp	.label_122
.label_115:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_131
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_116:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_114
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, dword ptr [rsp + 4]
	mov	r8d, dword ptr [rsp]
	mov	r9d, ebp
	call	error
	.section	.text
	.align	32
	#Procedure 0x402530

	.globl verify_numeric
	.type verify_numeric, @function
verify_numeric:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	call	__errno_location
	mov	ebp, dword ptr [rax]
	test	ebp, ebp
	je	.label_145
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_142
	xor	eax, eax
	mov	esi, ebp
	jmp	.label_143
.label_145:
	cmp	byte ptr [rbx], 0
	je	.label_144
	xor	edi, edi
	cmp	r14, rbx
	je	.label_141
	mov	esi, OFFSET FLAT:label_139
	jmp	.label_140
.label_141:
	mov	esi, OFFSET FLAT:label_138
.label_140:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
.label_143:
	call	error
	mov	byte ptr [byte ptr [rip + exit_status]],  1
.label_144:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4025b0

	.globl vstrtoumax
	.type vstrtoumax, @function
vstrtoumax:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	al, byte ptr [rbx]
	cmp	al, 0x27
	je	.label_148
	cmp	al, 0x22
	jne	.label_146
.label_148:
	movzx	r14d, byte ptr [rbx + 1]
	test	r14, r14
	je	.label_146
	cmp	byte ptr [rbx + 2], 0
	je	.label_147
	mov	al,  byte ptr [byte ptr [rip + posixly_correct]]
	test	al, al
	jne	.label_147
	add	rbx, 2
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_90
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
	jmp	.label_147
.label_146:
	call	__errno_location
	mov	dword ptr [rax], 0
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, rbx
	call	strtoumax
	mov	r14, rax
	mov	rsi, qword ptr [rsp]
	mov	rdi, rbx
	call	verify_numeric
.label_147:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402640

	.globl vstrtold
	.type vstrtold, @function
vstrtold:
	push	rbx
	sub	rsp, 0x20
	mov	rbx, rdi
	mov	al, byte ptr [rbx]
	cmp	al, 0x27
	je	.label_149
	cmp	al, 0x22
	jne	.label_152
.label_149:
	mov	al, byte ptr [rbx + 1]
	test	al, al
	je	.label_152
	movzx	eax, al
	mov	dword ptr [rsp + 8], eax
	fild	dword ptr [rsp + 8]
	cmp	byte ptr [rbx + 2], 0
	je	.label_151
	mov	al,  byte ptr [byte ptr [rip + posixly_correct]]
	test	al, al
	jne	.label_151
	add	rbx, 2
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_90
	mov	edx, 5
	fstp	xword ptr [rsp + 0xc]
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
	jmp	.label_150
.label_152:
	call	__errno_location
	mov	dword ptr [rax], 0
	lea	rsi, [rsp + 0x18]
	mov	rdi, rbx
	call	cl_strtold
	fstp	xword ptr [rsp + 0xc]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdi, rbx
	call	verify_numeric
.label_150:
	fld	xword ptr [rsp + 0xc]
.label_151:
	add	rsp, 0x20
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4026e0

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4026f0

	.globl print_esc_char
	.type print_esc_char, @function
print_esc_char:
	lea	eax, [rdi - 0x61]
	cmp	eax, 0x15
	ja	.label_153
	jmp	qword ptr [word ptr [+ (rax * 8) + label_154]]
.label_453:
	mov	edi, 7
	jmp	putchar_unlocked
.label_454:
	mov	edi, 8
	jmp	putchar_unlocked
.label_153:
	jmp	putchar_unlocked
.label_456:
	mov	edi, 0x1b
	jmp	putchar_unlocked
.label_457:
	mov	edi, 0xc
	jmp	putchar_unlocked
.label_458:
	mov	edi, 0xa
	jmp	putchar_unlocked
.label_459:
	mov	edi, 0xd
	jmp	putchar_unlocked
.label_460:
	mov	edi, 9
	jmp	putchar_unlocked
.label_461:
	mov	edi, 0xb
	jmp	putchar_unlocked
.label_455:
	push	rax
	xor	edi, edi
	call	exit
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402760

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
	lea	rsi, [rsp + 8]
	call	strtold
	mov	rax, qword ptr [rsp + 8]
	cmp	byte ptr [rax], 0
	je	.label_156
	fstp	xword ptr [rsp + 0x1c]
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	lea	rsi, [rsp + 0x10]
	mov	rdi, rbx
	call	c_strtold
	mov	rax, qword ptr [rsp + 0x10]
	cmp	qword ptr [rsp + 8], rax
	jae	.label_155
	mov	qword ptr [rsp + 8], rax
	jmp	.label_156
.label_155:
	fstp	st(0)
	mov	dword ptr [r15], ebp
	fld	xword ptr [rsp + 0x1c]
.label_156:
	test	r14, r14
	je	.label_157
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14], rax
.label_157:
	add	rsp, 0x28
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4027e0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4027f0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402800

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_160
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_158
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_158
.label_160:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_161
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_158:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_163
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_159
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_142
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_161:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_159:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_162
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
	#Procedure 0x4028c0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_164
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_166
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_168
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_166
	mov	esi, OFFSET FLAT:label_167
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_169
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_169:
	mov	rbx, r14
.label_166:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_164:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_165
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402970
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
	#Procedure 0x4029b0
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
	#Procedure 0x4029c0
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
	#Procedure 0x4029d0

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	mov	ecx, esi
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	cmovne	rsi, rdi
	mov	eax, ecx
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
	#Procedure 0x402a10
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
	#Procedure 0x402a30

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_170
	test	rdx, rdx
	je	.label_170
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_170:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a60
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbx, rax
	mov	eax, dword ptr [rbx]
	mov	dword ptr [rsp + 4], eax
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, r14
	push	qword ptr [rbp + 0x30]
	push	qword ptr [rbp + 0x28]
	lea	rax, [rbp + 8]
	push	rax
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	ecx, dword ptr [rsp + 4]
	mov	dword ptr [rbx], ecx
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
	#Procedure 0x402ae0

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	ebx, r9d
	mov	r15d, r8d
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	rax, qword ptr [rsp + 0x100]
	mov	qword ptr [rsp + 0x70], rax
	mov	rax, qword ptr [rsp + 0xf8]
	mov	qword ptr [rsp + 0x78], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0xb0], rax
	mov	r12d, ebx
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x90], eax
	mov	dword ptr [rsp + 0x18], ebx
	and	ebx, 4
	mov	dword ptr [rsp + 0x8c], ebx
	mov	r10b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x60], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x38], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa0], rcx
.label_262:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_244
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_270]]
.label_517:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_274
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_215
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_518:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_172
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_172
	xor	r14d, r14d
.label_181:
	cmp	r14, r11
	jae	.label_176
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_176:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_181
.label_172:
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rdi, rbp
	mov	rbx, r11
	call	strlen
	mov	r11, rbx
	mov	qword ptr [rsp + 0x38], rax
	mov	edi, r15d
	mov	qword ptr [rsp + 0x40], rbp
	mov	r13b, 1
	mov	sil, r12b
	mov	r8, qword ptr [rsp + 0x30]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r9d, dword ptr [rsp + 0x48]
	jmp	.label_194
.label_510:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_194
.label_513:
	mov	al, 1
.label_511:
	mov	r12b, 1
.label_514:
	test	r12b, 1
	mov	cl, 1
	je	.label_201
	mov	ecx, eax
.label_201:
	mov	al, cl
.label_512:
	test	r12b, 1
	jne	.label_206
	test	r11, r11
	je	.label_249
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_249:
	mov	r14d, 1
	jmp	.label_212
.label_206:
	xor	r14d, r14d
.label_212:
	mov	ecx, OFFSET FLAT:label_215
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_194
.label_515:
	test	r12b, 1
	jne	.label_224
	test	r11, r11
	je	.label_241
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_241:
	mov	r14d, 1
	jmp	.label_228
.label_516:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_230
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_194
.label_224:
	xor	r14d, r14d
.label_228:
	mov	eax, OFFSET FLAT:label_230
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_194:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r12b
	cmp	edi, 2
	setne	r15b
	sete	bl
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x2b]
	mov	eax, r15d
	mov	byte ptr [rsp + 0x1e], cl
	and	al, cl
	cmp	qword ptr [rsp + 0x38], 0
	setne	cl
	mov	edx, ecx
	mov	byte ptr [rsp + 0x2e], al
	and	dl, al
	mov	byte ptr [rsp + 0x2f], dl
	mov	eax, esi
	and	al, 1
	sete	dl
	and	bl, al
	mov	byte ptr [rsp + 0x2c], bl
	mov	byte ptr [rsp + 7], al
	and	r12b, al
	mov	byte ptr [rsp + 0x2d], r12b
	or	dl, r15b
	mov	byte ptr [rsp + 0x1f], dl
	mov	byte ptr [rsp + 0x1d], r13b
	mov	qword ptr [rsp + 0xa8], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x2a], r13b
	xor	esi, esi
	mov	qword ptr [rsp + 0x68], rdi
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r12, rdi
	mov	rdi, r8
	jmp	.label_245
	nop	dword ptr [rax]
.label_204:
	inc	rsi
.label_245:
	cmp	rbp, -1
	je	.label_277
	cmp	rsi, rbp
	jne	.label_221
	jmp	.label_281
	nop	word ptr cs:[rax + rax]
.label_277:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_281
.label_221:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_284
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_171
	cmp	rbp, -1
	jne	.label_171
	mov	r15d, r10d
	mov	rbp, r11
	mov	r13d, r9d
	mov	r12, r14
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r14, r12
	mov	r9d, r13d
	mov	r12, qword ptr [rsp + 0x68]
	mov	r10d, r15d
	mov	r11, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_171:
	cmp	rbx, rbp
	jbe	.label_187
.label_284:
	xor	r8d, r8d
.label_213:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_188
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_192]]
.label_543:
	test	rsi, rsi
	jne	.label_184
	jmp	.label_197
	nop	
.label_187:
	mov	qword ptr [rsp + 0x20], rbp
	mov	ebp, r9d
	mov	r15d, r10d
	mov	rbx, r11
	mov	r12, rsi
	lea	rdi, [rdi + rsi]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x38]
	call	memcmp
	test	eax, eax
	sete	r8b
	jne	.label_210
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_213
	jmp	.label_225
.label_210:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_213
.label_547:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_231
	test	rsi, rsi
	jne	.label_234
	cmp	rbp, 1
	je	.label_197
	xor	r13d, r13d
	jmp	.label_173
.label_536:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_240
	cmp	byte ptr [rsp + 7], 0
	jne	.label_178
	cmp	r12d, 2
	jne	.label_243
	mov	eax, r9d
	and	al, 1
	jne	.label_243
	cmp	r14, r11
	jae	.label_254
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_254:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_250
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_250:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_256
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_256:
	add	r14, 3
	mov	r9b, 1
.label_243:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_216
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_216:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_264
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_264
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_264
	cmp	r14, r11
	jae	.label_275
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_275:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_182
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_182:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_173
.label_537:
	mov	bl, 0x62
	jmp	.label_283
.label_538:
	mov	cl, 0x74
	jmp	.label_214
.label_539:
	mov	bl, 0x76
	jmp	.label_283
.label_540:
	mov	bl, 0x66
	jmp	.label_283
.label_541:
	mov	cl, 0x72
	jmp	.label_214
.label_544:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_174
	cmp	byte ptr [rsp + 7], 0
	jne	.label_178
	test	r11, r11
	sete	al
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r11
	mov	qword ptr [rsp + 0x60], rdx
	mov	eax, 0
	cmove	r11, rax
	cmp	r14, r11
	jae	.label_183
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_183:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_195
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_195:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_198
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_198:
	add	r14, 3
	xor	r9d, r9d
.label_174:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_173
.label_545:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_209
	cmp	r12d, 2
	jne	.label_184
	cmp	byte ptr [rsp + 7], 0
	je	.label_184
	jmp	.label_178
.label_546:
	cmp	r12d, 2
	jne	.label_220
	cmp	byte ptr [rsp + 7], 0
	jne	.label_178
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_175
.label_188:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_237
	mov	qword ptr [rsp + 0x20], rbp
	mov	rbx, rsi
	call	__ctype_b_loc
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	r12d, 1
.label_203:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_233
	test	r8b, r8b
	je	.label_233
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_173
.label_231:
	test	rsi, rsi
	jne	.label_261
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_261
.label_197:
	mov	dl, 1
.label_542:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_178
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_173:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_271
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_272
	jmp	.label_177
	nop	word ptr cs:[rax + rax]
.label_271:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_177
.label_272:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_278
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_175
	jmp	.label_193
	nop	dword ptr [rax]
.label_177:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_193
	jmp	.label_175
.label_278:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_193
.label_240:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_204
	xor	r15d, r15d
	jmp	.label_184
.label_220:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_214
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_175
.label_214:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_178
.label_283:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_173
	nop	word ptr cs:[rax + rax]
.label_193:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_178
	cmp	r12d, 2
	jne	.label_202
	mov	eax, r9d
	and	al, 1
	jne	.label_202
	cmp	r14, r11
	jae	.label_207
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_207:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_266
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_266:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_218
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_218:
	add	r14, 3
	mov	r9b, 1
.label_202:
	cmp	r14, r11
	jae	.label_222
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_222:
	inc	r14
	jmp	.label_226
.label_237:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_229
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_229:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_257:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_248
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_253
	cmp	rbp, -2
	je	.label_186
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_259
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_190:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_196
	bt	rsi, rdx
	jb	.label_225
.label_196:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_190
.label_259:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_280
	xor	r13d, r13d
.label_280:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_257
	jmp	.label_203
.label_264:
	xor	r13d, r13d
	jmp	.label_173
.label_261:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_173
.label_209:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_184
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_184
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_184
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_263
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_282
	cmp	byte ptr [rsp + 7], 0
	jne	.label_178
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_199
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_199:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_242
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_242:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_211
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_211:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_217
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_217:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_173
.label_184:
	xor	eax, eax
.label_234:
	xor	r13d, r13d
	jmp	.label_173
.label_233:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_227
	nop	word ptr cs:[rax + rax]
.label_179:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_227:
	test	r8b, r8b
	je	.label_235
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_236
	cmp	r14, r11
	jae	.label_238
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_238:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_236
	nop	dword ptr [rax]
.label_235:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_225
	cmp	r12d, 2
	jne	.label_247
	mov	eax, r9d
	and	al, 1
	jne	.label_247
	cmp	r14, r11
	jae	.label_252
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_252:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_255
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_255:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_260
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_260:
	add	r14, 3
	mov	r9b, 1
.label_247:
	cmp	r14, r11
	jae	.label_232
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_232:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_268
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_268:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_273
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_273:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_236:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_175
	test	r9b, 1
	je	.label_251
	mov	ebx, eax
	and	bl, 1
	jne	.label_251
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_285
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_285:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_267
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_267:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_251:
	cmp	r14, r11
	jae	.label_179
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_179
	nop	word ptr cs:[rax + rax]
.label_175:
	test	r9b, 1
	je	.label_189
	and	al, 1
	jne	.label_189
	cmp	r14, r11
	jae	.label_191
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_191:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_185
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_185:
	add	r14, 2
	xor	r9d, r9d
.label_189:
	mov	ebx, r15d
.label_226:
	cmp	r14, r11
	jae	.label_200
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_200:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_204
.label_253:
	xor	r13d, r13d
.label_248:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_203
.label_186:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_219
	mov	rsi, qword ptr [rsp + 0x50]
.label_223:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_180
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_223
	xor	r13d, r13d
	jmp	.label_203
.label_219:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_203
.label_180:
	xor	r13d, r13d
	jmp	.label_203
.label_263:
	xor	r13d, r13d
	jmp	.label_173
.label_282:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_173
	nop	dword ptr [rax + rax]
.label_281:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_239
	or	dl, al
	je	.label_225
.label_239:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_246
	or	dl, al
	jne	.label_246
	test	r10b, 1
	jne	.label_258
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_246
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_262
.label_246:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_265
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_269
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_269
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_279:
	cmp	r14, r11
	jae	.label_276
	mov	byte ptr [rcx + r14], al
.label_276:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_279
	jmp	.label_269
.label_178:
	mov	qword ptr [rsp + 0x20], rbp
.label_225:
	mov	rdx, rdi
	mov	r9d, dword ptr [rsp + 0x18]
	test	byte ptr [rsp + 0x1d], 1
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x68]
	cmove	r8d, eax
	cmp	eax, 2
	cmovne	r8d, eax
	and	r9d, 0xfffffffd
	sub	rsp, 8
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r11
	mov	rcx, qword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	0
	call	quotearg_buffer_restyled
	add	rsp, 0x20
.label_205:
	mov	r14, rax
.label_208:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_258:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, dword ptr [rsp + 0x20]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	qword ptr [rsp + 0x108]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_205
.label_265:
	mov	rcx, qword ptr [rsp + 8]
.label_269:
	cmp	r14, r11
	jae	.label_208
	mov	byte ptr [rcx + r14], 0
	jmp	.label_208
.label_244:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4038a0
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
	#Procedure 0x4038b0

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x10], r14
	mov	r15, rdi
	mov	qword ptr [rsp + 8], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	cmovne	r12, rcx
	call	__errno_location
	mov	qword ptr [rsp + 0x20], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 4], ecx
	xor	ebp, ebp
	test	rbx, rbx
	sete	bpl
	or	ebp, dword ptr [r12 + 4]
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	sub	rsp, 8
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	mov	r9d, ebp
	push	qword ptr [r12 + 0x30]
	push	qword ptr [r12 + 0x28]
	push	r13
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rbx, rax
	lea	r15, [rbx + 1]
	mov	rdi, r15
	call	xcharalloc
	mov	r14, rax
	mov	r8d, dword ptr [r12]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r9d, ebp
	push	qword ptr [r12 + 0x30]
	push	qword ptr [r12 + 0x28]
	push	r13
	call	quotearg_buffer_restyled
	mov	rax, qword ptr [rsp + 0x38]
	add	rsp, 0x20
	test	rax, rax
	mov	ecx, dword ptr [rsp + 4]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	dword ptr [rdx], ecx
	je	.label_286
	mov	qword ptr [rax], rbx
.label_286:
	mov	rax, r14
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
	#Procedure 0x4039a0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_287
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_289:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_289
.label_287:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_290
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_291]], OFFSET FLAT:slot0
.label_290:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_288
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_288:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a40

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x403a50

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rcx
	mov	r15, rdx
	mov	qword ptr [rsp + 0x20], rsi
	mov	r12d, edi
	call	__errno_location
	mov	r13, rax
	test	r12d, r12d
	js	.label_295
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_298
	cmp	r12d, 0x7fffffff
	je	.label_293
	mov	ebx, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, rbx
	cmovne	rdi, rbp
	lea	r15d, [r12 + 1]
	movsxd	rsi, r12d
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, rbx
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_296
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_296:
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
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 8]
.label_298:
	movsxd	r13, r12d
	shl	r13, 4
	mov	r12, qword ptr [rbp + r13]
	mov	r14, qword ptr [rbp + r13 + 8]
	mov	r8d, dword ptr [rbx]
	mov	r9d, dword ptr [rbx + 4]
	or	r9d, 1
	lea	rax, [rbx + 8]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, r15
	mov	dword ptr [rsp + 0xc], r9d
	push	qword ptr [rbx + 0x30]
	push	qword ptr [rbx + 0x28]
	mov	rbx, rax
	push	rbx
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	r15, rax
	cmp	r12, r15
	jbe	.label_294
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_297
.label_294:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_292
	mov	rdi, r14
	call	free
.label_292:
	mov	rdi, r15
	call	xcharalloc
	mov	r14, rax
	mov	qword ptr [r12], r14
	mov	rax, qword ptr [rsp + 0x10]
	mov	r8d, dword ptr [rax]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0xc]
	push	qword ptr [rax + 0x30]
	push	qword ptr [rax + 0x28]
	push	rbx
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rax, qword ptr [rsp + 0x18]
.label_297:
	mov	dword ptr [rax], ebp
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_295:
	call	abort
.label_293:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403c10

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c20
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
	#Procedure 0x403c30
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
	#Procedure 0x403c40

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
	#Procedure 0x403c80

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
	je	.label_299
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
.label_299:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ce0

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
	#Procedure 0x403d20

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
	#Procedure 0x403d40
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
	#Procedure 0x403d60

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
	mov	rcx,  qword ptr [word ptr [rip + label_300]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_301]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_302]]
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
	#Procedure 0x403dd0

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
	#Procedure 0x403de0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403df0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e00
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
	#Procedure 0x403e50

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403e60

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
	mov	rax,  qword ptr [word ptr [rip + label_300]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_301]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_302]]
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
	#Procedure 0x403ed0
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
	#Procedure 0x403ef0
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
	#Procedure 0x403f10

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f20
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
	#Procedure 0x403f30

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403f40

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
	#Procedure 0x403f50

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_309
	call	locale_charset
	mov	rbp, rax
	mov	esi, 0x55
	mov	edx, 0x54
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	push	0
	push	0
	call	strcaseeq0
	add	rsp, 0x10
	test	eax, eax
	je	.label_303
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_307
	mov	eax, OFFSET FLAT:label_308
	jmp	.label_306
.label_303:
	mov	esi, 0x47
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	r8d, 0x38
	mov	r9d, 0x30
	mov	rdi, rbp
	push	0x30
	push	0x33
	call	strcaseeq0
	add	rsp, 0x10
	test	eax, eax
	je	.label_310
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_304
	mov	eax, OFFSET FLAT:label_305
	jmp	.label_306
.label_310:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_230
	mov	eax, OFFSET FLAT:label_215
.label_306:
	cmove	rax, rcx
.label_309:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404010

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
	je	.label_312
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_313
	jmp	.label_311
.label_312:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_311
.label_313:
	mov	eax, 1
	test	bpl, bpl
	je	.label_311
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
.label_311:
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
	.align	32
	#Procedure 0x404090

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
	je	.label_316
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_314
	jmp	.label_315
.label_316:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_315
.label_314:
	mov	eax, 1
	test	bpl, bpl
	je	.label_315
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
.label_315:
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
	.align	32
	#Procedure 0x404120

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
	je	.label_317
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_319
	jmp	.label_318
.label_317:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_318
.label_319:
	mov	eax, 1
	test	bpl, bpl
	je	.label_318
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
.label_318:
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
	.align	32
	#Procedure 0x4041a0

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
	je	.label_322
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_321
	jmp	.label_320
.label_322:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_320
.label_321:
	mov	eax, 1
	test	bpl, bpl
	je	.label_320
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
.label_320:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404210

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
	je	.label_325
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_323
	jmp	.label_324
.label_325:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_324
.label_323:
	mov	eax, 1
	test	bpl, bpl
	je	.label_324
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_324:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404270

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
	je	.label_326
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_328
	jmp	.label_327
.label_326:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_327
.label_328:
	mov	eax, 1
	test	bpl, bpl
	je	.label_327
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_327:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4042c0

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
	je	.label_331
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_330
	jmp	.label_329
.label_331:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_329
.label_330:
	mov	eax, 1
	test	bpl, bpl
	je	.label_329
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_329:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404310

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_334
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_333
	jmp	.label_332
.label_334:
	mov	eax, 1
	test	cl, cl
	je	.label_332
.label_333:
	xor	eax, eax
.label_332:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404340

	.globl unicode_to_mb
	.type unicode_to_mb, @function
unicode_to_mb:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r13, rcx
	mov	r14, rdx
	mov	r15, rsi
	mov	ebp, edi
	mov	al,  byte ptr [byte ptr [rip + unicode_to_mb.initialized]]
	test	al, al
	jne	.label_335
	call	locale_charset
	mov	rbx, rax
	mov	esi, OFFSET FLAT:label_344
	mov	rdi, rbx
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	mov	dword ptr [dword ptr [rip + unicode_to_mb.is_utf8]],  ecx
	je	.label_347
	mov	esi, OFFSET FLAT:label_344
	mov	rdi, rbx
	call	iconv_open
	mov	qword ptr [word ptr [rip + unicode_to_mb.utf8_to_local]],  rax
	cmp	rax, -1
	jne	.label_347
	mov	edi, OFFSET FLAT:label_343
	mov	esi, OFFSET FLAT:label_344
	call	iconv_open
	mov	qword ptr [word ptr [rip + unicode_to_mb.utf8_to_local]],  rax
.label_347:
	mov	byte ptr [byte ptr [rip + unicode_to_mb.initialized]],  1
.label_335:
	cmp	dword ptr [dword ptr [rip + unicode_to_mb.is_utf8]],  0
	jne	.label_338
	cmp	qword ptr [word ptr [rip + unicode_to_mb.utf8_to_local]],  -1
	jne	.label_338
	mov	esi, OFFSET FLAT:label_341
	jmp	.label_340
.label_338:
	lea	rbx, [rsp + 0x22]
	mov	rdi, rbx
	mov	esi, ebp
	call	u8_uctomb
	test	eax, eax
	js	.label_345
	cmp	dword ptr [dword ptr [rip + unicode_to_mb.is_utf8]],  0
	je	.label_346
	movsxd	rsi, eax
	lea	rdi, [rsp + 0x22]
.label_336:
	mov	rdx, r13
	call	r15
	jmp	.label_337
.label_345:
	mov	esi, OFFSET FLAT:label_339
	jmp	.label_340
.label_346:
	mov	qword ptr [rsp + 0x28], rbx
	cdqe	
	mov	qword ptr [rsp + 0x18], rax
	lea	r12, [rsp + 0x30]
	mov	qword ptr [rsp + 8], r12
	mov	qword ptr [rsp + 0x10], 0x19
	mov	rdi,  qword ptr [word ptr [rip + unicode_to_mb.utf8_to_local]]
	lea	rsi, [rsp + 0x28]
	lea	rdx, [rsp + 0x18]
	lea	rcx, [rsp + 8]
	lea	r8, [rsp + 0x10]
	call	iconv
	cmp	rax, -1
	je	.label_342
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	jne	.label_342
	mov	rdi,  qword ptr [word ptr [rip + unicode_to_mb.utf8_to_local]]
	lea	rcx, [rsp + 8]
	lea	r8, [rsp + 0x10]
	xor	esi, esi
	xor	edx, edx
	call	iconv
	cmp	rax, -1
	je	.label_342
	mov	rsi, qword ptr [rsp + 8]
	sub	rsi, r12
	mov	rdi, r12
	jmp	.label_336
.label_342:
	xor	esi, esi
.label_340:
	mov	edi, ebp
	mov	rdx, r13
	call	r14
.label_337:
	add	rsp, 0x58
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
	#Procedure 0x4044b0

	.globl u8_uctomb
	.type u8_uctomb, @function
u8_uctomb:
	cmp	esi, 0x80
	jae	.label_348
	mov	byte ptr [rdi], sil
	mov	eax, 1
	ret	
.label_348:
	mov	edx, 6
	jmp	u8_uctomb_aux
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044d0

	.globl fwrite_success_callback
	.type fwrite_success_callback, @function
fwrite_success_callback:
	push	rax
	mov	rax, rdx
	mov	rcx, rsi
	mov	esi, 1
	mov	rdx, rcx
	mov	rcx, rax
	call	fwrite
	xor	eax, eax
	pop	rcx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044f0

	.globl print_unicode_char
	.type print_unicode_char, @function
print_unicode_char:
	mov	eax, esi
	mov	rcx, rdi
	test	edx, edx
	mov	esi, OFFSET FLAT:exit_failure_callback
	mov	edx, OFFSET FLAT:fallback_failure_callback
	cmovne	rdx, rsi
	mov	esi, OFFSET FLAT:fwrite_success_callback
	mov	edi, eax
	jmp	unicode_to_mb
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404520

	.globl exit_failure_callback
	.type exit_failure_callback, @function
exit_failure_callback:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14d, edi
	xor	edi, edi
	test	rbx, rbx
	je	.label_349
	mov	esi, OFFSET FLAT:label_350
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	mov	rbx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	mov	ecx, r14d
	mov	r8, rbx
	call	error
	jmp	.label_351
.label_349:
	mov	esi, OFFSET FLAT:label_352
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, r14d
	call	error
.label_351:
	mov	rax, -1
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4045a0

	.globl fallback_failure_callback
	.type fallback_failure_callback, @function
fallback_failure_callback:
	push	rax
	mov	r8, rdx
	mov	ecx, edi
	mov	esi, 1
	cmp	ecx, 0xffff
	ja	.label_353
	mov	edx, OFFSET FLAT:label_355
	jmp	.label_356
.label_353:
	mov	edx, OFFSET FLAT:label_354
.label_356:
	xor	eax, eax
	mov	rdi, r8
	call	__fprintf_chk
	mov	rax, -1
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045e0

	.globl u8_uctomb_aux
	.type u8_uctomb_aux, @function
u8_uctomb_aux:
	mov	eax, 0xfffffffe
	cmp	esi, 0x80
	jb	.label_357
	mov	r8d, 2
	cmp	esi, 0x800
	jb	.label_359
	cmp	esi, 0xffff
	ja	.label_362
	mov	ecx, esi
	and	ecx, 0xfffff800
	mov	r8d, 3
	mov	eax, 0xffffffff
	cmp	ecx, 0xd800
	jne	.label_359
	jmp	.label_357
.label_362:
	mov	eax, 0xffffffff
	mov	r8d, 4
	cmp	esi, 0x10ffff
	ja	.label_357
.label_359:
	cmp	r8d, edx
	mov	eax, 0xfffffffe
	jg	.label_357
	mov	eax, r8d
	and	al, 7
	cmp	al, 2
	je	.label_358
	cmp	al, 3
	je	.label_360
	cmp	al, 4
	jne	.label_361
	mov	eax, esi
	and	eax, 0x3f
	or	eax, 0x80
	mov	byte ptr [rdi + 3], al
	shr	esi, 6
	or	esi, 0x10000
.label_360:
	mov	eax, esi
	and	eax, 0x3f
	or	eax, 0x80
	mov	byte ptr [rdi + 2], al
	shr	esi, 6
	or	esi, 0x800
.label_358:
	mov	eax, esi
	and	eax, 0x3f
	or	eax, 0x80
	mov	byte ptr [rdi + 1], al
	shr	esi, 6
	or	esi, 0xc0
	mov	byte ptr [rdi], sil
.label_361:
	mov	eax, r8d
.label_357:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4046a0

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, r9
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_375
	mov	edx, OFFSET FLAT:label_366
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_372
.label_375:
	mov	edx, OFFSET FLAT:label_373
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_372:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_377
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
	mov	esi, OFFSET FLAT:label_374
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_378
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_379]]
.label_499:
	add	rsp, 8
	jmp	.label_365
.label_378:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_369
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_365
.label_500:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_364
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_501:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_370
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_502:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_367
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_503:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_381
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_365
.label_504:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_380
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_365
.label_505:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_363
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_365
.label_506:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_368
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_365
.label_508:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_371
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_365
.label_507:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_376
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
.label_365:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a00
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_382:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_382
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a30

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_385:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_383
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_384
	nop	dword ptr [rax]
.label_383:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_384:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_386
	inc	r9
	cmp	r9, 0xa
	jb	.label_385
.label_386:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404a90

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_387
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_387:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x20
	lea	r8, [rsp]
	call	version_etc_va
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b20
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_388
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_389
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_391
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_23
	mov	ecx, OFFSET FLAT:label_24
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_390
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ba0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_392
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_392:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bd0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_393
	test	rax, rax
	je	.label_394
.label_393:
	pop	rbx
	ret	
.label_394:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bf0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_395
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_395:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c20

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_396
	test	rbx, rbx
	jne	.label_396
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_396:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_398
	test	rax, rax
	je	.label_397
.label_398:
	pop	rbx
	ret	
.label_397:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404c50

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_399
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_402
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_400
.label_399:
	test	rcx, rcx
	jne	.label_403
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_403:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_401
.label_400:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_402:
	call	xalloc_die
.label_401:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404cd0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ce0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404cf0
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
	#Procedure 0x404d20
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_404
	call	rpl_calloc
	test	rax, rax
	je	.label_404
	pop	rcx
	ret	
.label_404:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d50

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
	#Procedure 0x404d80
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
	.section	.text
	.align	32
	#Procedure 0x404da0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_405
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_142
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404dd0

	.globl xprintf
	.type xprintf, @function
xprintf:
	sub	rsp, 0xd8
	test	al, al
	je	.label_406
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_406:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	qword ptr [rsp + 0x28], rsi
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 8
	lea	rsi, [rsp]
	call	xvprintf
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e70

	.globl xvprintf
	.type xvprintf, @function
xvprintf:
	push	rbp
	push	r14
	push	rbx
	mov	rax, rsi
	mov	rcx, rdi
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rdx, rcx
	mov	rcx, rax
	call	__vfprintf_chk
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_407
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	ferror
	test	eax, eax
	jne	.label_407
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_408
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_407:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404ee0
	.globl xfprintf
	.type xfprintf, @function
xfprintf:

	sub	rsp, 0xd8
	test	al, al
	je	.label_409
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_409:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	lea	rdx, [rsp]
	call	xvfprintf
	add	rsp, 0xd8
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404f70

	.globl xvfprintf
	.type xvfprintf, @function
xvfprintf:
	push	rbp
	push	r14
	push	rbx
	mov	rax, rdx
	mov	rcx, rsi
	mov	rbx, rdi
	mov	esi, 1
	mov	rdx, rcx
	mov	rcx, rax
	call	__vfprintf_chk
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_410
	mov	rdi, rbx
	call	ferror
	test	eax, eax
	jne	.label_410
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_408
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_410:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404fe0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_411
	test	rsi, rsi
	mov	ecx, 1
	je	.label_412
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_412
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_411:
	mov	ecx, 1
.label_412:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405030

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
	je	.label_413
	cmp	r15, -2
	jb	.label_413
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_413
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_413:
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
	#Procedure 0x405090
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_414
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_414
.label_415:
	ret	
.label_414:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_415
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4050c0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_416
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_416:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4050e0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4050f0
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
	#Procedure 0x405100
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_417
.label_418:
	ret	
.label_417:
	cmp	edi, 0x7f
	je	.label_418
	xor	eax, eax
	jmp	.label_418
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405120
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
	#Procedure 0x405130
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
	#Procedure 0x405140
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
	#Procedure 0x405150
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
	#Procedure 0x405160
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_419
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_420]]
.label_421:
	ret	
.label_419:
	xor	eax, eax
	jmp	.label_421
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405180
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_422
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_422:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051a0

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
	#Procedure 0x4051b0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_423
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_423:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4051d0
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
	#Procedure 0x4051e0
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
	#Procedure 0x4051f0

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
	je	.label_425
	mov	rdi, rax
	call	uselocale
	mov	r15, rax
	test	r15, r15
	je	.label_425
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
	je	.label_426
	mov	dword ptr [rbx], ebp
	fld	xword ptr [rsp + 0xc]
	jmp	.label_424
.label_425:
	fldz	
	test	rbx, rbx
	je	.label_424
	mov	qword ptr [rbx], r14
.label_424:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_426:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405270

	.globl c_locale
	.type c_locale, @function
c_locale:
	cmp	qword ptr [word ptr [rip + c_locale_cache]],  0
	jne	.label_427
	push	rax
	mov	edi, 0x1fbf
	mov	esi, OFFSET FLAT:label_428
	xor	edx, edx
	call	newlocale
	mov	qword ptr [word ptr [rip + c_locale_cache]],  rax
	add	rsp, 8
.label_427:
	mov	rax,  qword ptr [word ptr [rip + c_locale_cache]]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4052a0

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
	je	.label_429
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_430
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_430
.label_429:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_430
	test	cl, cl
	jne	.label_430
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_430:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405310

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_432
	cmp	byte ptr [rax], 0x43
	jne	.label_434
	cmp	byte ptr [rax + 1], 0
	je	.label_431
.label_434:
	mov	esi, OFFSET FLAT:label_433
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_432
.label_431:
	xor	ebx, ebx
.label_432:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405350

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_33
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_343
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405380

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_436
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_435
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_436
.label_435:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_436
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_437
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_437:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_436:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405400

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_438
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_438
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_438:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405430

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_439
	ret	
.label_439:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405450

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
	jne	.label_440
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_440
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_441
.label_440:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_441:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_442
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_442:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	32
	#Procedure 0x4054c0

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
	nop	word ptr cs:[rax + rax]
