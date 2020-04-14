	.section	.text
	.align	16
	#Procedure 0x401510

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
	mov	esi, OFFSET FLAT:.str.23
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
	mov	esi, OFFSET FLAT:.str.25
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.6
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.6
	mov	ecx, OFFSET FLAT:.str.29
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
	#Procedure 0x4016d0

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
	mov	r15, rsi
	mov	r12d, edi
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_1
	call	setlocale
	mov	edi, OFFSET FLAT:.str.8
	mov	esi, OFFSET FLAT:.str.9
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.8
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	dword ptr [rsp + 0x14], 1
	xor	ebx, ebx
	xor	r13d, r13d
	jmp	.label_11
.label_49:
	mov	r13,  qword ptr [word ptr [rip + optarg]]
	nop	word ptr cs:[rax + rax]
.label_11:
	mov	edx, OFFSET FLAT:.str.10
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r12d
	mov	rsi, r15
	call	getopt_long
	cmp	eax, 0x70
	jg	.label_32
	cmp	eax, 0x4f
	jle	.label_33
	cmp	eax, 0x50
	je	.label_36
	cmp	eax, 0x65
	je	.label_39
	cmp	eax, 0x6d
	jne	.label_10
	mov	eax, dword ptr [rsp + 0x14]
	and	eax, 0xfffffffc
	or	eax, 2
	mov	dword ptr [rsp + 0x14], eax
	jmp	.label_11
	nop	dword ptr [rax]
.label_32:
	cmp	eax, 0x79
	jle	.label_44
	cmp	eax, 0x7a
	je	.label_45
	cmp	eax, 0x80
	je	.label_46
	cmp	eax, 0x81
	je	.label_49
	jmp	.label_10
	nop	dword ptr [rax]
.label_33:
	cmp	eax, 0x4b
	jle	.label_51
	cmp	eax, 0x4c
	jne	.label_10
	or	dword ptr [rsp + 0x14], 4
	mov	byte ptr [byte ptr [rip + logical]],  1
	jmp	.label_11
.label_44:
	cmp	eax, 0x71
	je	.label_55
	cmp	eax, 0x73
	jne	.label_10
	or	dword ptr [rsp + 0x14], 4
	mov	byte ptr [byte ptr [rip + logical]],  0
	jmp	.label_11
.label_36:
	and	dword ptr [rsp + 0x14], 0xfffffffb
	mov	byte ptr [byte ptr [rip + logical]],  0
	jmp	.label_11
.label_39:
	and	dword ptr [rsp + 0x14], 0xfffffffc
	jmp	.label_11
.label_45:
	mov	byte ptr [byte ptr [rip + use_nuls]],  1
	jmp	.label_11
.label_46:
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_11
.label_55:
	mov	byte ptr [byte ptr [rip + verbose]],  1
	jmp	.label_11
.label_51:
	cmp	eax, -1
	jne	.label_17
	cmp	dword ptr [dword ptr [rip + optind]],  r12d
	jge	.label_19
	test	r13, r13
	mov	rbp, r13
	cmove	rbp, rbx
	test	rbx, rbx
	cmovne	rbp, rbx
	mov	r14d, dword ptr [rsp + 0x14]
	and	r14d, 3
	test	rbp, rbp
	je	.label_25
	mov	rdi, rbp
	mov	esi, dword ptr [rsp + 0x14]
	call	canonicalize_filename_mode
	mov	rbx, rax
	movzx	eax,  byte ptr [byte ptr [rip + logical]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_40
	test	rbx, rbx
	je	.label_40
	mov	esi, dword ptr [rsp + 0x14]
	and	esi, 0xfffffffb
	mov	rdi, rbx
	call	canonicalize_filename_mode
	mov	qword ptr [rsp + 8], r13
	mov	r13d, r12d
	mov	r12, r15
	mov	r15, rax
	mov	rdi, rbx
	call	free
	mov	rbx, r15
	mov	r15, r12
	mov	r12d, r13d
	mov	r13, qword ptr [rsp + 8]
.label_40:
	mov	qword ptr [word ptr [rip + can_relative_to]],  rbx
	test	rbx, rbx
	je	.label_30
	test	r14d, r14d
	jne	.label_25
	mov	rdi, rbx
	call	isdir
	test	al, al
	je	.label_57
.label_25:
	cmp	r13, rbp
	je	.label_18
	test	r13, r13
	je	.label_13
	mov	rdi, r13
	mov	esi, dword ptr [rsp + 0x14]
	call	canonicalize_filename_mode
	mov	rbp, rax
	movzx	eax,  byte ptr [byte ptr [rip + logical]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_29
	test	rbp, rbp
	je	.label_29
	mov	esi, dword ptr [rsp + 0x14]
	and	esi, 0xfffffffb
	mov	rdi, rbp
	call	canonicalize_filename_mode
	mov	rbx, rax
	mov	rdi, rbp
	call	free
	mov	rbp, rbx
.label_29:
	test	rbp, rbp
	je	.label_14
	test	r14d, r14d
	jne	.label_20
	mov	rdi, rbp
	call	isdir
	test	al, al
	je	.label_26
.label_20:
	mov	rax,  qword ptr [word ptr [rip + can_relative_to]]
	inc	rax
	mov	cl, byte ptr [rbp + 1]
	test	cl, cl
	je	.label_58
	movzx	edx, cl
	cmp	edx, 0x2f
	jne	.label_34
	mov	cl, 0x2f
	cmp	byte ptr [rbp + 2], 0
	je	.label_38
.label_34:
	lea	rdx, [rbp + 2]
	nop	word ptr cs:[rax + rax]
.label_35:
	mov	bl, byte ptr [rax]
	test	bl, bl
	je	.label_16
	movzx	esi, bl
	movzx	edi, cl
	cmp	edi, esi
	jne	.label_16
	inc	rax
	mov	cl, byte ptr [rdx]
	inc	rdx
	test	cl, cl
	jne	.label_35
	jmp	.label_47
.label_18:
	mov	rax,  qword ptr [word ptr [rip + can_relative_to]]
	mov	qword ptr [word ptr [rip + can_relative_base]],  rax
	jmp	.label_13
.label_58:
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x2f
	je	.label_37
	jmp	.label_52
.label_16:
	test	cl, cl
	jne	.label_37
.label_47:
	mov	al, byte ptr [rax]
	test	al, al
	je	.label_52
	movzx	eax, al
	jmp	.label_54
.label_38:
	movzx	eax, byte ptr [rax]
.label_54:
	cmp	eax, 0x2f
	jne	.label_37
.label_52:
	mov	qword ptr [word ptr [rip + can_relative_base]],  rbp
	jmp	.label_13
.label_37:
	mov	rdi, rbp
	call	free
	mov	rax,  qword ptr [word ptr [rip + can_relative_to]]
	mov	qword ptr [word ptr [rip + can_relative_base]],  rax
	mov	qword ptr [word ptr [rip + can_relative_to]],  0
.label_13:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	mov	r14b, 1
	cmp	eax, r12d
	jge	.label_61
	mov	ecx, dword ptr [rsp + 0x14]
	and	ecx, 0xfffffffb
	mov	dword ptr [rsp + 8], ecx
	mov	r14b, 1
	jmp	.label_12
.label_43:
	call	__overflow
	jmp	.label_15
	nop	word ptr cs:[rax + rax]
.label_12:
	cdqe	
	mov	r13, qword ptr [r15 + rax*8]
	mov	rdi, r13
	mov	esi, dword ptr [rsp + 0x14]
	call	canonicalize_filename_mode
	mov	rbp, rax
	movzx	eax,  byte ptr [byte ptr [rip + logical]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_24
	test	rbp, rbp
	je	.label_24
	mov	rdi, rbp
	mov	esi, dword ptr [rsp + 8]
	call	canonicalize_filename_mode
	mov	rbx, r15
	mov	r15, rax
	mov	rdi, rbp
	call	free
	mov	rbp, r15
	mov	r15, rbx
.label_24:
	test	rbp, rbp
	je	.label_41
	mov	rsi,  qword ptr [word ptr [rip + can_relative_to]]
	test	rsi, rsi
	je	.label_28
	mov	rcx,  qword ptr [word ptr [rip + can_relative_base]]
	test	rcx, rcx
	je	.label_27
	lea	rax, [rbp + 1]
	mov	dl, byte ptr [rcx + 1]
	test	dl, dl
	je	.label_56
	movzx	edi, dl
	cmp	edi, 0x2f
	jne	.label_50
	mov	dl, 0x2f
	cmp	byte ptr [rcx + 2], 0
	je	.label_22
.label_50:
	add	rcx, 2
	nop	word ptr cs:[rax + rax]
.label_23:
	mov	bl, byte ptr [rax]
	test	bl, bl
	je	.label_9
	movzx	edi, bl
	movzx	ebx, dl
	cmp	ebx, edi
	jne	.label_9
	inc	rax
	mov	dl, byte ptr [rcx]
	inc	rcx
	test	dl, dl
	jne	.label_23
	jmp	.label_48
	nop	
.label_41:
	mov	ebx, r12d
	mov	al,  byte ptr [byte ptr [rip + verbose]]
	and	al, 1
	je	.label_59
	xor	ebp, ebp
	mov	r12d, ebx
	jmp	.label_21
.label_59:
	call	__errno_location
	mov	r12, r15
	mov	r15d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r13
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	esi, r15d
	mov	r15, r12
	call	error
	mov	r12d, ebx
	jmp	.label_21
.label_56:
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x2f
	je	.label_28
	jmp	.label_27
.label_9:
	test	dl, dl
	jne	.label_28
.label_48:
	mov	al, byte ptr [rax]
	test	al, al
	je	.label_27
	movzx	eax, al
	jmp	.label_31
.label_22:
	movzx	eax, byte ptr [rax]
.label_31:
	cmp	eax, 0x2f
	jne	.label_28
	nop	word ptr cs:[rax + rax]
.label_27:
	xor	edx, edx
	xor	ecx, ecx
	mov	rdi, rbp
	call	relpath
	test	al, al
	jne	.label_42
.label_28:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rbp
	call	fputs_unlocked
.label_42:
	mov	al,  byte ptr [byte ptr [rip + use_nuls]]
	and	al, 1
	mov	esi, 0xa
	mov	eax, 0
	cmovne	esi, eax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_43
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
.label_15:
	mov	rdi, rbp
	call	free
	mov	bpl, 1
.label_21:
	and	r14b, bpl
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	inc	eax
	mov	dword ptr [dword ptr [rip + optind]],  eax
	cmp	eax, r12d
	jl	.label_12
.label_61:
	movzx	eax, r14b
	xor	eax, 1
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_17:
	cmp	eax, 0xffffff7d
	je	.label_62
	cmp	eax, 0xffffff7e
	jne	.label_10
	xor	edi, edi
	call	usage
.label_62:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.12
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_10:
	mov	edi, 1
	call	usage
.label_19:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
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
.label_30:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
	jmp	.label_60
.label_14:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r13
.label_60:
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_57:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
	jmp	.label_53
.label_26:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r13
.label_53:
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	esi, 0x14
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401cf0

	.globl isdir
	.type isdir, @function
isdir:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rdx, [rsp]
	mov	edi, 1
	mov	rsi, rbx
	call	__xstat
	test	eax, eax
	jne	.label_63
	mov	eax, dword ptr [rsp + 0x18]
	and	eax, 0xf000
	cmp	eax, 0x4000
	sete	al
	add	rsp, 0x90
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_63:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x401d70

	.globl relpath
	.type relpath, @function
relpath:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	r15, rdi
	movzx	eax, byte ptr [r13 + 1]
	cmp	eax, 0x2f
	sete	al
	movzx	ecx, byte ptr [r15 + 1]
	cmp	ecx, 0x2f
	sete	cl
	xor	ebx, ebx
	xor	cl, al
	jne	.label_76
	mov	cl, byte ptr [r13]
	test	cl, cl
	mov	eax, 0
	mov	rdx, r15
	je	.label_91
	xor	eax, eax
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_86:
	mov	rdx, rax
	mov	al, byte ptr [r15 + rdx]
	test	al, al
	je	.label_81
	movzx	edi, al
	movzx	esi, cl
	cmp	esi, edi
	jne	.label_81
	lea	rax, [rdx + 1]
	cmp	esi, 0x2f
	cmove	ebx, eax
	mov	cl, byte ptr [r13 + rdx + 1]
	test	cl, cl
	jne	.label_86
	lea	rdx, [r15 + rdx + 1]
.label_91:
	mov	cl, byte ptr [rdx]
	test	cl, cl
	je	.label_92
	movzx	ecx, cl
	cmp	ecx, 0x2f
	je	.label_92
	jmp	.label_66
.label_81:
	movzx	ecx, cl
	cmp	ecx, 0x2f
	jne	.label_66
	test	al, al
	mov	eax, edx
	jne	.label_66
.label_92:
	mov	ebx, eax
.label_66:
	test	ebx, ebx
	je	.label_68
	movsxd	rax, ebx
	add	r15, rax
	movzx	ecx, byte ptr [r13 + rax]
	cmp	ecx, 0x2f
	jne	.label_70
	lea	r13, [r13 + rax + 1]
	jmp	.label_74
.label_68:
	xor	ebx, ebx
	jmp	.label_76
.label_70:
	add	r13, rax
.label_74:
	movzx	eax, byte ptr [r15]
	cmp	eax, 0x2f
	jne	.label_78
	inc	r15
.label_78:
	cmp	byte ptr [r13], 0
	je	.label_80
	test	r12, r12
	je	.label_83
	mov	bpl, 1
	cmp	r14, 3
	jb	.label_79
	mov	byte ptr [r12 + 2], 0
	mov	word ptr [r12], 0x2e2e
	add	r12, 2
	add	r14, -2
	jmp	.label_85
.label_80:
	cmp	byte ptr [r15], 0
	jne	.label_65
	mov	r15d, OFFSET FLAT:.str.3_0
.label_65:
	test	r12, r12
	je	.label_93
	mov	rdi, r15
	call	strlen
	cmp	rax, r14
	jae	.label_67
	inc	rax
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, rax
	call	memcpy
	jmp	.label_88
.label_83:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str_2
	call	fputs_unlocked
	xor	r12d, r12d
.label_85:
	xor	ebp, ebp
	jmp	.label_79
	nop	
.label_72:
	inc	r13
.label_79:
	movzx	eax, byte ptr [r13]
	cmp	eax, 0x2f
	je	.label_71
	test	al, al
	jne	.label_72
	jmp	.label_84
	nop	word ptr cs:[rax + rax]
.label_71:
	test	r12, r12
	je	.label_89
	mov	al, 1
	cmp	r14, 4
	jb	.label_90
	mov	dword ptr [r12], 0x2e2e2f
	add	r12, 3
	add	r14, -3
	jmp	.label_69
.label_89:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.1_0
	call	fputs_unlocked
	xor	r12d, r12d
.label_69:
	xor	eax, eax
.label_90:
	and	bpl, 1
	or	bpl, al
	jmp	.label_72
.label_84:
	cmp	byte ptr [r15], 0
	je	.label_73
	test	r12, r12
	je	.label_75
	mov	bl, 1
	cmp	r14, 1
	jbe	.label_77
	mov	word ptr [r12], 0x2f
	inc	r12
	dec	r14
	and	bpl, 1
	jmp	.label_87
.label_93:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, r15
	call	fputs_unlocked
.label_88:
	mov	bl, 1
	jmp	.label_76
.label_75:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.2_0
	call	fputs_unlocked
	and	bpl, 1
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, r15
	call	fputs_unlocked
	jmp	.label_64
.label_77:
	mov	bpl, 1
.label_87:
	mov	rdi, r15
	call	strlen
	cmp	rax, r14
	jae	.label_82
	inc	rax
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, rax
	call	memcpy
.label_64:
	xor	ebx, ebx
.label_82:
	or	bpl, bl
.label_73:
	mov	bl, 1
	test	bpl, 1
	je	.label_76
.label_67:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0
	mov	esi, 0x24
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	call	error
.label_76:
	mov	al, bl
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
	.align	16
	#Procedure 0x401ff0

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
	jne	.label_139
	test	r13, r13
	je	.label_139
	movzx	eax, byte ptr [r13]
	cmp	eax, 0x2f
	je	.label_101
	test	al, al
	jne	.label_104
	call	__errno_location
	mov	dword ptr [rax], 2
	jmp	.label_102
.label_139:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_102:
	xor	ebx, ebx
.label_109:
	mov	rax, rbx
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_101:
	mov	edi, 0x1000
	call	xmalloc
	mov	r14, rax
	mov	byte ptr [r14], 0x2f
	lea	rax, [r14 + 0x1000]
	lea	r15, [r14 + 1]
	jmp	.label_121
.label_104:
	call	xgetcwd
	mov	r14, rax
	xor	ebx, ebx
	test	r14, r14
	je	.label_109
	xor	esi, esi
	mov	rdi, r14
	call	__rawmemchr
	mov	r15, rax
	sub	r15, r14
	cmp	r15, 0xfff
	jg	.label_135
	mov	esi, 0x1000
	mov	rdi, r14
	call	xrealloc
	mov	r14, rax
	add	r15, r14
	add	rax, 0x1000
	jmp	.label_121
.label_135:
	mov	r15, rax
.label_121:
	mov	r8b, byte ptr [r13]
	mov	rdx, r13
	xor	r13d, r13d
	test	r8b, r8b
	je	.label_148
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
	jmp	.label_129
.label_148:
	xor	ebp, ebp
	jmp	.label_98
.label_151:
	mov	qword ptr [rsp + 0x60], r14
	mov	dword ptr [rsp + 0x80], 0
	jmp	.label_132
.label_144:
	mov	qword ptr [rsp + 0x60], r14
	cmp	eax, 0x4000
	mov	rax, qword ptr [rsp + 0x40]
	jne	.label_132
	mov	dword ptr [rsp + 0x5c], ebp
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_108
.label_132:
	cmp	ebp, 2
	mov	rsi, qword ptr [rsp + 0x10]
	je	.label_137
	mov	cl, byte ptr [r13]
	mov	edx, 0x14
	test	cl, cl
	mov	r14, qword ptr [rsp + 0x60]
	jne	.label_114
	mov	dword ptr [rsp + 0x5c], ebp
	mov	rbp, rsi
	mov	r12, r13
	jmp	.label_117
.label_137:
	mov	dword ptr [rsp + 0x5c], ebp
	mov	rbp, rsi
.label_108:
	mov	r12, r13
	mov	r14, qword ptr [rsp + 0x60]
.label_117:
	mov	r8b, byte ptr [r12]
	test	r8b, r8b
	mov	rdx, rbp
	mov	rbp, qword ptr [rsp + 0x50]
	mov	r13, qword ptr [rsp + 0x38]
	jne	.label_129
	jmp	.label_98
.label_143:
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
	je	.label_113
	mov	qword ptr [rsp + 8], rdx
	mov	qword ptr [rsp + 0x60], rbx
	mov	rbx, rcx
	cmp	rbp, rax
	jbe	.label_152
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, rbp
	call	xrealloc
	mov	r12, rax
	jmp	.label_131
.label_113:
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
	jmp	.label_100
.label_152:
	mov	rbp, rax
	mov	r12, qword ptr [rsp + 0x38]
.label_131:
	mov	rdx, qword ptr [rsp + 8]
.label_100:
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
	jne	.label_116
	mov	byte ptr [rcx], 0x2f
	mov	r13, rcx
	jmp	.label_122
.label_116:
	mov	r13, rcx
	cmp	r15, r14
	jbe	.label_125
	dec	r15
.label_128:
	mov	r14, r15
	cmp	r14, r13
	jbe	.label_122
	lea	r15, [r14 - 1]
	movzx	eax, byte ptr [r14 - 1]
	cmp	eax, 0x2f
	jne	.label_128
	jmp	.label_122
.label_125:
	mov	r14, r15
.label_122:
	call	free
	mov	qword ptr [rsp + 0x38], r12
	mov	r15, r14
	mov	qword ptr [rsp + 0x28], r12
	mov	r14, r13
	mov	rax, qword ptr [rsp + 0x40]
	jmp	.label_117
.label_129:
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 0x38], r13
	mov	qword ptr [rsp + 0x50], rbp
	mov	r13, r12
.label_141:
	mov	qword ptr [rsp + 0x60], r14
	lea	rcx, [r14 + 1]
	mov	r12, r15
.label_138:
	mov	r15, r13
	jmp	.label_120
	nop	word ptr cs:[rax + rax]
.label_155:
	mov	r8b, byte ptr [rdx]
	mov	r15, rdx
.label_120:
	lea	rdx, [r15 + 1]
	movzx	esi, r8b
	cmp	esi, 0x2f
	mov	r13, r15
	jne	.label_153
	jmp	.label_155
	nop	dword ptr [rax + rax]
.label_97:
	mov	r8b, byte ptr [r13 + 1]
	inc	r13
.label_153:
	test	r8b, r8b
	je	.label_95
	movzx	edi, r8b
	cmp	edi, 0x2f
	jne	.label_97
.label_95:
	mov	r14, r13
	sub	r14, r15
	je	.label_126
	cmp	r14, 2
	je	.label_103
	cmp	r14, 1
	jne	.label_105
	movzx	edx, byte ptr [r15]
	cmp	edx, 0x2e
	mov	r14d, 1
	je	.label_107
	jmp	.label_105
	nop	
.label_103:
	cmp	esi, 0x2e
	mov	r14d, 2
	jne	.label_105
	movzx	edx, byte ptr [rdx]
	cmp	edx, 0x2e
	mov	r14d, 2
	jne	.label_105
	cmp	r12, rcx
	ja	.label_118
.label_107:
	mov	r8b, byte ptr [r13]
	test	r8b, r8b
	mov	r15, r13
	jne	.label_120
	jmp	.label_126
.label_118:
	dec	r12
	mov	rdx, r12
	mov	r14, qword ptr [rsp + 0x60]
	nop	
.label_133:
	mov	r12, rdx
	cmp	r12, r14
	jbe	.label_130
	lea	rdx, [r12 - 1]
	movzx	esi, byte ptr [r12 - 1]
	cmp	esi, 0x2f
	jne	.label_133
.label_130:
	test	r8b, r8b
	jne	.label_138
	jmp	.label_140
.label_105:
	movzx	ecx, byte ptr [r12 - 1]
	cmp	ecx, 0x2f
	je	.label_142
	mov	byte ptr [r12], 0x2f
	inc	r12
.label_142:
	lea	rcx, [r12 + r14]
	cmp	rcx, rax
	jae	.label_146
	mov	qword ptr [rsp + 0x40], rax
	jmp	.label_149
.label_146:
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
.label_149:
	lea	rbp, [rsp + 0x68]
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcpy
	lea	r15, [r12 + r14]
	mov	byte ptr [r12 + r14], 0
	cmp	ebx, 6
	je	.label_147
	cmp	dword ptr [rsp + 0x34], 0
	jne	.label_106
	mov	edi, 1
	mov	r14, qword ptr [rsp + 0x60]
	mov	rsi, r14
	mov	rdx, rbp
	call	__lxstat
	jmp	.label_111
.label_106:
	mov	edi, 1
	mov	r14, qword ptr [rsp + 0x60]
	mov	rsi, r14
	mov	rdx, rbp
	call	__xstat
.label_111:
	mov	ebp, dword ptr [rsp + 0x5c]
	test	eax, eax
	je	.label_119
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0x4c], eax
	cmp	ebp, 1
	mov	rax, r13
	jne	.label_124
	nop	word ptr [rax + rax]
.label_94:
	movzx	ecx, byte ptr [rax]
	inc	rax
	cmp	ecx, 0x2f
	je	.label_94
	test	cl, cl
	setne	al
	cmp	dword ptr [rsp + 0x4c], 2
	movzx	eax, al
	lea	ecx, [rax + rax*8 + 4]
	mov	eax, 0xd
	cmovne	ecx, eax
	mov	rax, qword ptr [rsp + 0x40]
	jmp	.label_134
.label_119:
	mov	eax, dword ptr [rsp + 0x80]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0xa000
	jne	.label_144
	mov	rbp, qword ptr [rsp + 0x50]
	test	rbp, rbp
	jne	.label_150
	mov	edi, 7
	xor	esi, esi
	mov	edx, OFFSET FLAT:triple_hash
	mov	ecx, OFFSET FLAT:triple_compare_ino_str
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	mov	rbp, rax
	test	rbp, rbp
	je	.label_154
.label_150:
	mov	rdi, rbp
	mov	r12, qword ptr [rsp + 0x28]
	mov	rsi, r12
	lea	rbx, [rsp + 0x68]
	mov	rdx, rbx
	call	seen_file
	test	al, al
	je	.label_99
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
.label_134:
	cmp	ecx, 4
	jne	.label_110
	mov	dword ptr [rsp + 0x5c], ebp
	jmp	.label_112
.label_99:
	mov	rdi, rbp
	mov	qword ptr [rsp + 0x50], rbp
	mov	rsi, r12
	mov	rdx, rbx
	call	record_file
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rdi, r14
	call	areadlink_with_size
	test	rax, rax
	jne	.label_143
	call	__errno_location
	mov	ecx, dword ptr [rsp + 0x5c]
	cmp	ecx, 2
	mov	rcx, qword ptr [rsp + 0x20]
	jne	.label_123
	cmp	dword ptr [rax], 0xc
	je	.label_123
	mov	rbx, rcx
	mov	rax, qword ptr [rsp + 0x40]
.label_112:
	mov	r8b, byte ptr [r13]
	test	r8b, r8b
	jne	.label_141
	jmp	.label_136
.label_147:
	mov	dword ptr [rsp + 0x80], 0
	mov	ebp, dword ptr [rsp + 0x5c]
	mov	rax, qword ptr [rsp + 0x40]
	jmp	.label_132
.label_124:
	test	ebp, ebp
	mov	rax, qword ptr [rsp + 0x40]
	jne	.label_151
	mov	edx, dword ptr [rsp + 0x4c]
.label_114:
	mov	dword ptr [rsp + 0x4c], edx
	jmp	.label_115
.label_126:
	mov	r15, r12
	mov	r14, qword ptr [rsp + 0x60]
.label_136:
	mov	rbp, qword ptr [rsp + 0x50]
	mov	r13, qword ptr [rsp + 0x38]
.label_98:
	lea	rcx, [r14 + 1]
	cmp	r15, rcx
	jbe	.label_145
	movzx	ecx, byte ptr [r15 - 1]
	cmp	ecx, 0x2f
	jne	.label_145
	dec	r15
.label_145:
	mov	byte ptr [r15], 0
	lea	rcx, [r15 + 1]
	cmp	rax, rcx
	je	.label_96
	mov	esi, 1
	sub	rsi, r14
	add	rsi, r15
	mov	rdi, r14
	call	xrealloc
	mov	rbx, rax
	jmp	.label_156
.label_96:
	mov	rbx, r14
.label_156:
	mov	rdi, r13
	call	free
	test	rbp, rbp
	je	.label_109
	mov	rdi, rbp
	call	hash_free
	jmp	.label_109
.label_110:
	cmp	ecx, 0xd
	je	.label_115
	jmp	.label_109
.label_123:
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0x4c], eax
.label_115:
	mov	rdi, qword ptr [rsp + 0x38]
	call	free
	mov	rdi, r14
	call	free
	mov	rdi, qword ptr [rsp + 0x50]
	test	rdi, rdi
	je	.label_127
	call	hash_free
.label_127:
	call	__errno_location
	mov	ecx, dword ptr [rsp + 0x4c]
	mov	dword ptr [rax], ecx
	jmp	.label_102
.label_140:
	mov	r15, r12
	jmp	.label_136
.label_154:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4026a0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026b0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026c0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_158
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_157
	cmp	dword ptr [rbp], 0x20
	jne	.label_157
.label_158:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_160
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_157:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_3
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_159
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_160:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_159:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_1
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
	#Procedure 0x402780

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
	je	.label_161
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
	je	.label_162
	cmp	rax, rbx
	je	.label_161
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	triple_free
.label_161:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_162:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402800

	.globl seen_file
	.type seen_file, @function
seen_file:
	test	rdi, rdi
	je	.label_163
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
.label_163:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x402840
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402850
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402860
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402870
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdx
	jae	.label_164
	mov	rdi, rcx
	not	rdi
	add	rdi, rdx
	mov	rsi, rdi
	shr	rsi, 4
	xor	eax, eax
	bt	rdi, 4
	jb	.label_166
	xor	eax, eax
	cmp	qword ptr [rcx], 0
	je	.label_172
	mov	rdi, rcx
	nop	word ptr cs:[rax + rax]
.label_168:
	mov	rdi, qword ptr [rdi + 8]
	inc	rax
	test	rdi, rdi
	jne	.label_168
.label_172:
	add	rcx, 0x10
.label_166:
	test	rsi, rsi
	je	.label_164
	nop	word ptr cs:[rax + rax]
.label_167:
	cmp	qword ptr [rcx], 0
	mov	esi, 0
	mov	rdi, rcx
	je	.label_165
	nop	
.label_169:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_169
	cmp	rsi, rax
	cmova	rax, rsi
.label_165:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_171
	lea	rdi, [rcx + 0x10]
	xor	esi, esi
.label_170:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_170
	cmp	rsi, rax
	cmova	rax, rsi
.label_171:
	add	rcx, 0x20
	cmp	rcx, rdx
	jb	.label_167
.label_164:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402920
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rcx, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	edx, edx
	cmp	rcx, r9
	mov	esi, 0
	jae	.label_179
	mov	rax, rcx
	not	rax
	add	rax, r9
	mov	r8, rax
	shr	r8, 4
	xor	edx, edx
	bt	rax, 4
	jb	.label_184
	xor	edx, edx
	cmp	qword ptr [rcx], 0
	je	.label_177
	mov	esi, 1
	mov	rax, rcx
.label_174:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_174
	jmp	.label_181
.label_184:
	xor	esi, esi
	jmp	.label_182
.label_177:
	xor	esi, esi
.label_181:
	add	rcx, 0x10
.label_182:
	test	r8, r8
	je	.label_179
	nop	dword ptr [rax]
.label_185:
	cmp	qword ptr [rcx], 0
	mov	rax, rcx
	je	.label_173
	nop	dword ptr [rax]
.label_180:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_180
	inc	rsi
.label_173:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_178
	lea	rax, [rcx + 0x10]
	nop	word ptr [rax + rax]
.label_183:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_183
	inc	rsi
.label_178:
	add	rcx, 0x20
	cmp	rcx, r9
	jb	.label_185
.label_179:
	cmp	rsi, qword ptr [rdi + 0x18]
	jne	.label_175
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 0x20]
	je	.label_176
.label_175:
	xor	eax, eax
.label_176:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4029e0
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
	jae	.label_186
	mov	rdi, rax
	not	rdi
	add	rdi, rdx
	mov	rsi, rdi
	shr	rsi, 4
	xor	ebx, ebx
	bt	rdi, 4
	jb	.label_191
	xor	ebx, ebx
	cmp	qword ptr [rax], 0
	je	.label_187
	mov	rdi, rax
	nop	dword ptr [rax]
.label_195:
	mov	rdi, qword ptr [rdi + 8]
	inc	rbx
	test	rdi, rdi
	jne	.label_195
.label_187:
	add	rax, 0x10
.label_191:
	test	rsi, rsi
	je	.label_186
	nop	word ptr cs:[rax + rax]
.label_194:
	cmp	qword ptr [rax], 0
	mov	esi, 0
	mov	rdi, rax
	je	.label_196
	nop	
.label_197:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_197
	cmp	rsi, rbx
	cmova	rbx, rsi
.label_196:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_193
	lea	rdi, [rax + 0x10]
	xor	esi, esi
.label_192:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_192
	cmp	rsi, rbx
	cmova	rbx, rsi
.label_193:
	add	rax, 0x20
	cmp	rax, rdx
	jb	.label_194
.label_186:
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str_4
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.1_2
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_188]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_189]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_190]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.2_1
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_1
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
	#Procedure 0x402b50

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
	jae	.label_201
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_198
	add	rbx, rax
	je	.label_198
	cmp	rsi, r12
	je	.label_200
	xor	r15d, r15d
	nop	
.label_199:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_202
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_198
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_199
.label_200:
	mov	r15, r12
	jmp	.label_198
.label_202:
	mov	r15, qword ptr [rbx]
.label_198:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_201:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402bd0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_203
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_206
	nop	word ptr cs:[rax + rax]
.label_205:
	add	rcx, 0x10
.label_206:
	cmp	rcx, rdx
	jae	.label_204
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_205
.label_203:
	ret	
.label_204:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c10
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
	jae	.label_209
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_211:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_207
	test	rdx, rdx
	jne	.label_211
	jmp	.label_210
.label_207:
	test	rdx, rdx
	je	.label_210
	mov	rax, qword ptr [rdx]
	jmp	.label_208
.label_210:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rax + rcx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_212:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_208
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_212
.label_208:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_209:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ca0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	jmp	.label_213
	nop	dword ptr [rax + rax]
.label_216:
	add	r9, 0x10
.label_213:
	cmp	r9, r8
	jae	.label_214
	cmp	qword ptr [r9], 0
	je	.label_216
	test	r9, r9
	mov	r10, r9
	je	.label_216
	nop	word ptr [rax + rax]
.label_215:
	cmp	rax, rdx
	jae	.label_214
	mov	rcx, qword ptr [r10]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r10, qword ptr [r10 + 8]
	test	r10, r10
	jne	.label_215
	mov	r8, qword ptr [rdi + 8]
	jmp	.label_216
.label_214:
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402cf0
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
	jmp	.label_220
	nop	word ptr cs:[rax + rax]
.label_217:
	add	r13, 0x10
.label_220:
	cmp	r13, rax
	jae	.label_218
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_217
	test	r13, r13
	je	.label_217
	mov	rsi, r14
	call	r15
	test	al, al
	mov	rbp, r13
	je	.label_218
	nop	word ptr cs:[rax + rax]
.label_219:
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_221
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_219
	jmp	.label_218
	nop	dword ptr [rax]
.label_221:
	mov	rax, qword ptr [r12 + 8]
	jmp	.label_217
.label_218:
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
	#Procedure 0x402d90
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_222
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_223:
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
	jne	.label_223
.label_222:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402dd0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_224]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402df0

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
	je	.label_225
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_238
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_228]]
	jbe	.label_226
	movss	xmm1,  dword ptr [dword ptr [rip + label_232]]
	ucomiss	xmm1, xmm0
	jbe	.label_226
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_237]]
	jbe	.label_226
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_226
	addss	xmm1,  dword ptr [dword ptr [rip + label_228]]
	ucomiss	xmm0, xmm1
	jbe	.label_226
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_233]]
	ucomiss	xmm2, xmm0
	jb	.label_226
	ucomiss	xmm0, xmm1
	jbe	.label_226
.label_238:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_239
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_227
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_231
.label_227:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_231:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_235]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_236]]
	jae	.label_226
.label_239:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_234
	nop	
.label_230:
	add	rbx, 2
.label_234:
	cmp	rbx, -1
	je	.label_226
	cmp	rbx, 0xa
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	jb	.label_229
	nop	word ptr cs:[rax + rax]
.label_240:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_229
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_240
.label_229:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_230
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_226
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_226
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_226
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
	jmp	.label_225
.label_226:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_225:
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
	#Procedure 0x403010

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
	#Procedure 0x403020

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403030
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_243
	nop	word ptr cs:[rax + rax]
.label_246:
	add	r14, 0x10
.label_243:
	cmp	r14, rax
	jae	.label_245
	cmp	qword ptr [r14], 0
	je	.label_246
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_247
	nop	word ptr cs:[rax + rax]
.label_242:
	test	cl, 1
	je	.label_241
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_241:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_242
.label_247:
	test	cl, cl
	je	.label_244
	mov	rdi, qword ptr [r14]
	call	rax
.label_244:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_246
.label_245:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030e0

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_250
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_250
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_257
	nop	
.label_252:
	add	r15, 0x10
.label_257:
	cmp	r15, rax
	jae	.label_250
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_252
	test	r15, r15
	je	.label_252
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_253
.label_256:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_253:
	test	rbx, rbx
	jne	.label_256
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_252
.label_250:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_249
	nop	
.label_251:
	add	r15, 0x10
.label_249:
	cmp	r15, rax
	jae	.label_248
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_251
	nop	word ptr cs:[rax + rax]
.label_255:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_255
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_251
.label_248:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_258
.label_254:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_254
.label_258:
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
	#Procedure 0x4031b0

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
	jne	.label_274
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_260
	cvtsi2ss	xmm0, rsi
	jmp	.label_265
.label_260:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_265:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_235]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_236]]
	jae	.label_259
.label_274:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_269
	nop	dword ptr [rax + rax]
.label_263:
	add	rbx, 2
.label_269:
	cmp	rbx, -1
	je	.label_259
	cmp	rbx, 0xa
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	jb	.label_262
	nop	word ptr cs:[rax + rax]
.label_277:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_262
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_277
.label_262:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_263
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_259
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_270
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_259
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
	je	.label_267
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_270
.label_267:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_261
	nop	
.label_272:
	add	r12, 0x10
.label_261:
	cmp	r12, r15
	jae	.label_268
	cmp	qword ptr [r12], 0
	je	.label_272
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_275
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_273:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_266
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_271
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_276
	nop	word ptr [rax + rax]
.label_271:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_276:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_273
.label_275:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_272
.label_268:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_264
	mov	rdi, qword ptr [rsp]
	call	free
.label_259:
	xor	ebp, ebp
.label_270:
	mov	al, bpl
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_266:
	call	abort
.label_264:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403440

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
	jae	.label_278
	nop	word ptr cs:[rax + rax]
.label_283:
	mov	r13, qword ptr [r14]
	test	r13, r13
	je	.label_288
	mov	r15, qword ptr [r14 + 8]
	test	r15, r15
	je	.label_291
	mov	rsi, qword ptr [rbp + 0x10]
	nop	dword ptr [rax]
.label_281:
	mov	rbx, qword ptr [r15]
	mov	rdi, rbx
	call	qword ptr [rbp + 0x30]
	mov	rsi, qword ptr [rbp + 0x10]
	cmp	rax, rsi
	jae	.label_284
	mov	rdx, qword ptr [rbp]
	mov	rcx, qword ptr [r15 + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_286
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [r15 + 8], rdi
	mov	qword ptr [rdx + rax + 8], r15
	jmp	.label_290
	nop	dword ptr [rax]
.label_286:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [rbp + 0x18]
	mov	qword ptr [r15], 0
	mov	rax, qword ptr [rbp + 0x48]
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [rbp + 0x48], r15
.label_290:
	test	rcx, rcx
	mov	r15, rcx
	jne	.label_281
	mov	r13, qword ptr [r14]
.label_291:
	mov	qword ptr [r14 + 8], 0
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	jne	.label_288
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, r13
	call	qword ptr [rbp + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [rbp + 0x10]
	jae	.label_282
	mov	r15, qword ptr [rbp]
	shl	rbx, 4
	cmp	qword ptr [r15 + rbx], 0
	je	.label_285
	mov	rax, qword ptr [rbp + 0x48]
	test	rax, rax
	je	.label_287
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp + 0x48], rcx
	jmp	.label_289
.label_285:
	add	r15, rbx
	mov	qword ptr [r15], r13
	inc	qword ptr [rbp + 0x18]
	jmp	.label_279
.label_287:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_280
.label_289:
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [r15 + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + rbx + 8], rax
.label_279:
	mov	qword ptr [r14], 0
	dec	qword ptr [r12 + 0x18]
.label_288:
	add	r14, 0x10
	cmp	r14, qword ptr [r12 + 8]
	jb	.label_283
	mov	al, 1
.label_278:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_280:
	xor	eax, eax
	jmp	.label_278
.label_284:
	call	abort
.label_282:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4035b0

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
	je	.label_298
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_298
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_301
	cmp	rsi, r14
	je	.label_321
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_293
	mov	rax, qword ptr [r12]
	jmp	.label_296
.label_321:
	mov	rax, r14
	jmp	.label_297
.label_293:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_301
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr cs:[rax + rax]
.label_313:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_305
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_311
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_313
	jmp	.label_301
.label_305:
	mov	rax, r14
	jmp	.label_296
.label_311:
	mov	rax, qword ptr [rbp]
.label_296:
	test	rax, rax
	je	.label_301
.label_297:
	xor	ebp, ebp
	test	r15, r15
	je	.label_294
	mov	qword ptr [r15], rax
	jmp	.label_294
.label_301:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_320
	cvtsi2ss	xmm1, rax
	jmp	.label_295
.label_320:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_295:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_309
	cvtsi2ss	xmm0, rcx
	jmp	.label_307
.label_309:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_307:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_300
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_316
	ucomiss	xmm2,  dword ptr [dword ptr [rip + label_228]]
	jbe	.label_299
	movss	xmm3,  dword ptr [dword ptr [rip + label_232]]
	ucomiss	xmm3, xmm2
	jbe	.label_299
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_237]]
	jbe	.label_299
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_299
	addss	xmm3,  dword ptr [dword ptr [rip + label_228]]
	ucomiss	xmm2, xmm3
	jbe	.label_299
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5,  dword ptr [dword ptr [rip + label_233]]
	ucomiss	xmm5, xmm4
	jb	.label_299
	ucomiss	xmm4, xmm3
	ja	.label_306
.label_299:
	mov	qword ptr [word ptr [r13 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2,  dword ptr [dword ptr [rip + label_308]]
	jmp	.label_306
.label_316:
	mov	eax, OFFSET FLAT:default_tuning
.label_306:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_300
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_310
	mulss	xmm0, xmm2
.label_310:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_236]]
	jae	.label_294
	movss	xmm1,  dword ptr [dword ptr [rip + label_235]]
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
	je	.label_294
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_298
	mov	r15, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [r15 + rbp]
	mov	rsi, qword ptr [r15 + rbp]
	test	rsi, rsi
	je	.label_300
	cmp	rsi, r14
	mov	rax, r14
	je	.label_292
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_322
	mov	rax, qword ptr [r12]
	jmp	.label_292
.label_322:
	mov	rax, qword ptr [r15 + rbp + 8]
	test	rax, rax
	je	.label_300
	lea	rbp, [r15 + rbp + 8]
.label_304:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_303
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_302
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_304
	jmp	.label_300
.label_303:
	mov	rax, r14
	jmp	.label_292
.label_302:
	mov	rax, qword ptr [rbp]
.label_292:
	test	rax, rax
	jne	.label_312
.label_300:
	cmp	qword ptr [r12], 0
	je	.label_314
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_315
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_317
.label_314:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0,  xmmword ptr [word ptr [rip + label_318]]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_319
.label_315:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_294
.label_317:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_319:
	mov	ebp, 1
.label_294:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_298:
	call	abort
.label_312:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4038d0

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
	je	.label_323
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_323:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403900
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
	jae	.label_328
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_324
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_336
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_338
	mov	r14, qword ptr [r13]
.label_336:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_329
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_337
.label_338:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_324
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_334:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_331
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_333
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_334
	jmp	.label_324
.label_329:
	mov	qword ptr [r13], 0
	jmp	.label_337
.label_331:
	mov	rcx, rax
	jmp	.label_340
.label_333:
	mov	r14, qword ptr [rcx]
.label_340:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_337:
	xor	r12d, r12d
	test	r14, r14
	je	.label_324
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_325
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_327
	cvtsi2ss	xmm1, rax
	jmp	.label_332
.label_327:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_332:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_335
	cvtsi2ss	xmm0, rcx
	jmp	.label_339
.label_335:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_339:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_325
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_343
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_228]]
	jbe	.label_326
	movss	xmm4,  dword ptr [dword ptr [rip + label_232]]
	ucomiss	xmm4, xmm3
	jbe	.label_326
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_326
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4,  dword ptr [dword ptr [rip + label_237]]
	jbe	.label_326
	movss	xmm4,  dword ptr [dword ptr [rip + label_228]]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_326
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5,  dword ptr [dword ptr [rip + label_233]]
	ucomiss	xmm5, xmm3
	jb	.label_326
	ucomiss	xmm3, xmm4
	ja	.label_341
.label_326:
	mov	qword ptr [word ptr [r15 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_341
.label_343:
	mov	eax, OFFSET FLAT:default_tuning
.label_341:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_325
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_344
	mulss	xmm0, dword ptr [rax + 8]
.label_344:
	movss	xmm1,  dword ptr [dword ptr [rip + label_235]]
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
	jne	.label_325
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_330
	nop	
.label_342:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_342
.label_330:
	mov	qword ptr [r15 + 0x48], 0
.label_325:
	mov	r12, r14
.label_324:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_328:
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403b90

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
	#Procedure 0x403bc0
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
	#Procedure 0x403bd0
	.globl triple_compare
	.type triple_compare, @function
triple_compare:

	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_345
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_346
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	same_name
	add	rsp, 8
	ret	
.label_345:
	xor	eax, eax
	ret	
.label_346:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c00

	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_347
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_348
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	test	eax, eax
	sete	al
	add	rsp, 8
	ret	
.label_347:
	xor	eax, eax
	ret	
.label_348:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x403c30

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
	#Procedure 0x403c50

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_350
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_351
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_351
	mov	esi, OFFSET FLAT:.str.2_2
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_349
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_349:
	mov	rbx, r14
.label_351:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_350:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_5
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d00
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
	#Procedure 0x403d40
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
	#Procedure 0x403d50
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
	#Procedure 0x403d60
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
	#Procedure 0x403da0
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
	#Procedure 0x403dc0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_352
	test	rdx, rdx
	je	.label_352
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_352:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403df0
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
	#Procedure 0x403e70

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
.label_373:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_432
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_436]]
.label_645:
	mov	edi, OFFSET FLAT:.str.11
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
.label_646:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_457
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_457
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_476:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_437
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_437:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_476
.label_457:
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
	jmp	.label_368
.label_638:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_368
.label_641:
	mov	al, 1
.label_639:
	mov	r12b, 1
.label_642:
	test	r12b, 1
	mov	cl, 1
	je	.label_389
	mov	cl, al
.label_389:
	mov	al, cl
.label_640:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_394
	test	r10, r10
	je	.label_397
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_399
.label_394:
	xor	ecx, ecx
	jmp	.label_399
.label_643:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_355
	test	r10, r10
	je	.label_411
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_414
.label_644:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_368
.label_397:
	mov	ecx, 1
	nop	dword ptr [rax]
.label_399:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_368
.label_355:
	xor	eax, eax
	jmp	.label_414
.label_411:
	mov	eax, 1
.label_414:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_368:
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
	jmp	.label_403
.label_386:
	inc	rdi
.label_403:
	cmp	rbp, -1
	je	.label_358
	cmp	rdi, rbp
	jne	.label_361
	jmp	.label_362
	nop	word ptr cs:[rax + rax]
.label_358:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_370
.label_361:
	test	r12b, r12b
	je	.label_377
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_379
	cmp	rbp, -1
	jne	.label_379
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
.label_379:
	cmp	rbx, rbp
	jbe	.label_404
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_413
	nop	word ptr [rax + rax]
.label_377:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_413
.label_404:
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
	jne	.label_429
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_413
	jmp	.label_382
.label_429:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_413:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_369
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_451]]
.label_620:
	test	rdi, rdi
	jne	.label_372
	jmp	.label_459
.label_624:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_460
	test	rdi, rdi
	jne	.label_462
	cmp	rbp, 1
	je	.label_459
	xor	r13d, r13d
	jmp	.label_366
.label_613:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_466
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_382
	cmp	r9d, 2
	jne	.label_470
	mov	al, r14b
	and	al, 1
	jne	.label_471
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_475
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_475:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_463
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_463:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_363
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_363:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_381
.label_614:
	mov	bl, 0x62
	jmp	.label_387
.label_615:
	mov	cl, 0x74
	jmp	.label_393
.label_616:
	mov	bl, 0x76
	jmp	.label_387
.label_617:
	mov	bl, 0x66
	jmp	.label_387
.label_618:
	mov	cl, 0x72
	jmp	.label_393
.label_621:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_395
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_400
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
	jae	.label_474
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_474:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_425
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_425:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_430
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_430:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_395:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_366
.label_622:
	cmp	r9d, 5
	je	.label_438
	cmp	r9d, 2
	jne	.label_372
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_372
	jmp	.label_443
.label_623:
	cmp	r9d, 2
	jne	.label_445
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_447
	jmp	.label_452
.label_369:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_454
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
.label_371:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_467
	test	cl, cl
	je	.label_467
	xor	eax, eax
	jmp	.label_366
.label_460:
	test	rdi, rdi
	jne	.label_354
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_354
.label_459:
	mov	dl, 1
.label_619:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_360
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_366
.label_466:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_386
	jmp	.label_372
.label_445:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_393
.label_447:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_380
.label_393:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_383
.label_387:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_366
	jmp	.label_390
.label_454:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_392
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_392:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_458:
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
	je	.label_424
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_427
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_431
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_422
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_444:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_441
	bt	rsi, rdx
	jb	.label_442
.label_441:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_444
.label_422:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_420
	xor	r13d, r13d
.label_420:
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
	je	.label_458
	jmp	.label_371
.label_354:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_366
.label_438:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_372
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_372
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_372
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_472
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_477
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_421
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_365
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_365:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_449
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_449:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_385
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_385:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_418
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_418:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_366
.label_372:
	xor	eax, eax
	xor	r13d, r13d
.label_366:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_407
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_410
	jmp	.label_415
	nop	word ptr [rax + rax]
.label_407:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_415
.label_410:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_419
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_426
	nop	word ptr cs:[rax + rax]
.label_415:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_426:
	mov	bl, r15b
	je	.label_380
	jmp	.label_390
.label_419:
	mov	bl, r15b
.label_390:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_382
	cmp	r9d, 2
	jne	.label_433
	mov	al, r14b
	and	al, 1
	jne	.label_433
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_455
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_455:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_376
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_376:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_450
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_450:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_433:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_461
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_461:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_398
.label_462:
	xor	r13d, r13d
	jmp	.label_366
.label_467:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_468
	nop	word ptr [rax + rax]
.label_464:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_468:
	test	cl, cl
	je	.label_353
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_356
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_359
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_359:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_356
	nop	word ptr [rax + rax]
.label_353:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_382
	cmp	r9d, 2
	jne	.label_357
	mov	al, r14b
	and	al, 1
	jne	.label_357
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_388
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_388:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_435
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_435:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_405
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_405:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_357:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_417
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_417:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_423
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_423:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_374
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_374:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_356:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_380
	test	r14b, 1
	je	.label_439
	mov	bl, al
	and	bl, 1
	jne	.label_439
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_391
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_391:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_456
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_456:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_439:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_464
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_464
	nop	dword ptr [rax]
.label_380:
	test	r14b, 1
	je	.label_473
	and	al, 1
	jne	.label_473
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_469
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_469:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_434
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_434:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_473:
	mov	bl, r15b
.label_398:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_378
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_378:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_386
.label_470:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_381
.label_471:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_381:
	cmp	rcx, r10
	jae	.label_396
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_396:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_402
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_375
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_412
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_416
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_416:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_453
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_453:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_366
.label_402:
	xor	r13d, r13d
	jmp	.label_366
.label_375:
	xor	r13d, r13d
	jmp	.label_366
.label_412:
	xor	r13d, r13d
	jmp	.label_366
.label_427:
	xor	r13d, r13d
.label_424:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_371
.label_431:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_440
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_409:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_446
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_409
	xor	r13d, r13d
	jmp	.label_371
.label_440:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_371
.label_446:
	xor	r13d, r13d
	jmp	.label_371
.label_472:
	xor	r13d, r13d
	jmp	.label_366
.label_477:
	xor	r13d, r13d
	jmp	.label_366
	nop	dword ptr [rax]
.label_362:
	mov	r13, rdi
.label_370:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_465
	or	al, dl
	je	.label_408
.label_465:
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
	je	.label_364
	or	al, dl
	jne	.label_364
	test	r8b, 1
	jne	.label_367
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_364
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_373
.label_364:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_384
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_384
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_384
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_401:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_428
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_428:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_401
.label_384:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_406
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_406
.label_360:
	mov	r9d, 2
	jmp	.label_382
.label_442:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_382
.label_408:
	mov	rbp, r13
	jmp	.label_382
.label_383:
	mov	r9d, 2
.label_382:
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
.label_448:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_406:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_367:
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
	jmp	.label_448
.label_400:
	mov	r9d, 2
	jmp	.label_382
.label_452:
	mov	r9d, 2
	jmp	.label_382
.label_443:
	mov	r9d, 2
	jmp	.label_382
.label_421:
	mov	r9d, 5
	jmp	.label_382
.label_432:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405000
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
	#Procedure 0x4050d0
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
	je	.label_478
	mov	qword ptr [rax], rbx
.label_478:
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
	#Procedure 0x4051d0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_479
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_481:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_481
.label_479:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_482
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_483]], OFFSET FLAT:slot0
.label_482:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_480
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_480:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405270
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x405280

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
	js	.label_484
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_487
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_490
.label_487:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_486
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
	jne	.label_485
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_485:
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
.label_490:
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
	ja	.label_488
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_489
	mov	rdi, rbx
	call	free
.label_489:
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
.label_488:
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
.label_484:
	call	abort
.label_486:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405450
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405460
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
	#Procedure 0x405480
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
	#Procedure 0x4054a0
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
	je	.label_491
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
.label_491:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x405510
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
	je	.label_492
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
.label_492:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405580

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
	je	.label_493
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
.label_493:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055f0
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
	je	.label_494
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
.label_494:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405660
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_495]]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_496]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_497]]
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
	#Procedure 0x4056d0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx,  qword ptr [word ptr [rip + label_495]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_496]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_497]]
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
	#Procedure 0x405740

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_495]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_496]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_497]]
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
	#Procedure 0x4057a0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_495]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_496]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_497]]
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
	#Procedure 0x405800

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
	je	.label_498
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
.label_498:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x4058b0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_495]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_496]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_497]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_499
	test	rdx, rdx
	je	.label_499
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_499:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x405920
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_495]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_496]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_497]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_500
	test	rdx, rdx
	je	.label_500
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_500:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405990
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_495]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_496]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_497]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_501
	test	rsi, rsi
	je	.label_501
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_501:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405a00
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_495]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_496]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_497]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_502
	test	rsi, rsi
	je	.label_502
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
.label_502:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405a70
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a80
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
	#Procedure 0x405aa0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ac0
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
	#Procedure 0x405ae0

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
	jne	.label_503
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_505
	cmp	ecx, 0x55
	jne	.label_504
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_504
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_504
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_504
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_504
	cmp	byte ptr [rax + 5], 0
	jne	.label_504
	mov	eax, OFFSET FLAT:.str.14
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_503
	mov	eax, OFFSET FLAT:.str.15
	jmp	.label_503
.label_505:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_504
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_504
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_504
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_504
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_504
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_504
	cmp	byte ptr [rax + 7], 0
	je	.label_506
.label_504:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_503:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_506:
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_503
	mov	eax, OFFSET FLAT:.str.18_0
	jmp	.label_503
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405bd0

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
	#Procedure 0x405bf0

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
	jne	.label_512
	mov	qword ptr [rsp + 8], r15
	mov	dword ptr [rsp + 0x10], r12d
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_509
	xor	ebp, ebp
	jmp	.label_510
.label_512:
	xor	ebp, ebp
	jmp	.label_510
.label_509:
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
	je	.label_508
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	rcx, rbp
	call	error
.label_508:
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
	je	.label_511
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	rcx, rbx
	call	error
.label_511:
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_513
	mov	rax, qword ptr [rsp + 0xa8]
	cmp	rax, qword ptr [rsp + 0x18]
	sete	bpl
	jmp	.label_507
.label_513:
	xor	ebp, ebp
.label_507:
	mov	rdi, rbx
	call	free
.label_510:
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
	#Procedure 0x405d40

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
	je	.label_514
	mov	edx, OFFSET FLAT:.str_6
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_523
.label_514:
	mov	edx, OFFSET FLAT:.str.1_4
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_523:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_3
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
	mov	esi, OFFSET FLAT:.str.3_2
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_518
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_520]]
.label_628:
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
.label_518:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_517
.label_629:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_1
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
.label_630:
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
.label_631:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_516
.label_632:
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
	jmp	.label_515
.label_633:
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
	jmp	.label_522
.label_634:
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
.label_522:
	mov	qword ptr [rsp + 0x10], rdi
.label_515:
	mov	qword ptr [rsp + 8], rsi
.label_516:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_519
.label_636:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_517:
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
	jmp	.label_521
.label_635:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_0
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
.label_521:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_519:
	call	__fprintf_chk
.label_627:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406030
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_524:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_524
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406060
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_527:
	cmp	r10d, 0x28
	ja	.label_525
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_526
	nop	word ptr cs:[rax + rax]
.label_525:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_526:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_528
	inc	r9
	cmp	r9, 0xa
	jb	.label_527
.label_528:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4060c0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x128
	test	al, al
	je	.label_529
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_529:
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
.label_533:
	cmp	r8d, 0x28
	ja	.label_530
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_532
	nop	
.label_530:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_532:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_531
	inc	r9
	cmp	r9, 0xa
	jb	.label_533
.label_531:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4061c0
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
	mov	edx, OFFSET FLAT:.str.15_0
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
	#Procedure 0x406240
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_534
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_535
	test	rax, rax
	je	.label_534
.label_535:
	pop	rbx
	ret	
.label_534:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406280

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_536
	test	rax, rax
	je	.label_537
.label_536:
	pop	rbx
	ret	
.label_537:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4062a0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_538
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_539
	test	rbx, rbx
	jne	.label_539
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_539:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_540
	test	rax, rax
	je	.label_538
.label_540:
	pop	rbx
	ret	
.label_538:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4062f0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_541
	test	rbx, rbx
	jne	.label_541
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_541:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_543
	test	rax, rax
	je	.label_542
.label_543:
	pop	rbx
	ret	
.label_542:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406320
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_544
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_546
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_545
.label_544:
	test	rcx, rcx
	jne	.label_549
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_549:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_548
.label_545:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_547
	test	rbx, rbx
	jne	.label_547
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_547:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_550
	test	rax, rax
	je	.label_546
.label_550:
	pop	rbx
	ret	
.label_546:
	call	xalloc_die
.label_548:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4063c0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_551
	test	rax, rax
	je	.label_552
.label_551:
	pop	rbx
	ret	
.label_552:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4063e0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_553
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_556
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_557
	call	free
	xor	eax, eax
	jmp	.label_554
.label_553:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_555
	mov	qword ptr [rsi], rbx
.label_557:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_554
	test	rax, rax
	je	.label_555
.label_554:
	pop	rbx
	ret	
.label_555:
	call	xalloc_die
.label_556:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406450
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
	je	.label_559
	test	r14, r14
	je	.label_558
.label_559:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_558:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406490
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_560
	call	rpl_calloc
	test	rax, rax
	je	.label_560
	pop	rcx
	ret	
.label_560:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4064c0

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
	je	.label_561
	test	r15, r15
	je	.label_562
.label_561:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_562:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406500

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
	je	.label_564
	test	r15, r15
	je	.label_563
.label_564:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_563:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406550

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_5
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
	#Procedure 0x406580

	.globl xgetcwd
	.type xgetcwd, @function
xgetcwd:
	push	rbx
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_566
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_565
.label_566:
	mov	rax, rbx
	pop	rbx
	ret	
.label_565:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4065b0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_567
	test	rsi, rsi
	mov	ecx, 1
	je	.label_568
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_568
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_567:
	mov	ecx, 1
.label_568:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406600

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
	je	.label_569
	cmp	r15, -2
	jb	.label_569
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_569
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_569:
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
	#Procedure 0x406660

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
	je	.label_571
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	movabs	r15, 0x7fffffffffffffff
	nop	word ptr cs:[rax + rax]
.label_578:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbx
	mov	rdx, r12
	call	readlink
	mov	r13, rax
	test	r13, r13
	jns	.label_574
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	jne	.label_572
.label_574:
	cmp	r13, r12
	jb	.label_575
	mov	rdi, rbx
	call	free
	mov	rax, r12
	shr	rax, 0x3e
	jne	.label_576
	add	r12, r12
	jmp	.label_570
	nop	word ptr cs:[rax + rax]
.label_576:
	cmp	r12, r15
	mov	r12, r15
	jae	.label_573
.label_570:
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_578
	jmp	.label_571
.label_575:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp + 8], rbx
	jmp	.label_571
.label_573:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_577
.label_572:
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
.label_577:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
.label_571:
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
	#Procedure 0x406770

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
	jne	.label_580
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_579
	test	cl, cl
	jne	.label_579
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_579
.label_580:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_579
	call	__errno_location
	mov	dword ptr [rax], 0
.label_579:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4067d0

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rax
	call	mdir_name
	test	rax, rax
	je	.label_581
	pop	rcx
	ret	
.label_581:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4067f0
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
.label_582:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_583
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_582
.label_583:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406830

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
.label_585:
	mov	rbx, rax
	cmp	r15, rbx
	jae	.label_584
	lea	rax, [rbx - 1]
	movzx	ecx, byte ptr [r14 + rbx - 1]
	cmp	ecx, 0x2f
	je	.label_585
.label_584:
	test	rbx, rbx
	sete	al
	movzx	eax, al
	lea	rdi, [rbx + rax + 1]
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_586
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	test	rbx, rbx
	jne	.label_587
	mov	byte ptr [r15], 0x2e
	mov	ebx, 1
.label_587:
	mov	byte ptr [r15 + rbx], 0
	mov	rax, r15
.label_586:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4068b0

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_588:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	edx, 0x2f
	je	.label_588
	xor	r8d, r8d
	mov	rax, rdi
	jmp	.label_592
	nop	word ptr cs:[rax + rax]
.label_589:
	mov	dl, byte ptr [rax + 1]
	inc	rax
	mov	r8b, cl
.label_592:
	mov	cl, 1
	movzx	esi, dl
	cmp	esi, 0x2f
	je	.label_589
	test	dl, dl
	je	.label_590
	mov	cl, r8b
	and	cl, 1
	je	.label_591
	xor	r8d, r8d
.label_591:
	test	cl, cl
	cmovne	rdi, rax
	mov	cl, r8b
	jmp	.label_589
.label_590:
	mov	rax, rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406920

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_593:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_594
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_593
.label_594:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406950

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_596
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_597
	cmp	byte ptr [rax + 1], 0
	je	.label_595
.label_597:
	mov	esi, OFFSET FLAT:.str.1_6
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_596
.label_595:
	xor	ebx, ebx
.label_596:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x406990

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	mov	cl, byte ptr [rdi]
	xor	eax, eax
	test	cl, cl
	je	.label_598
	inc	rdi
	xor	eax, eax
	nop	dword ptr [rax]
.label_599:
	movsx	rcx, cl
	rol	rax, 9
	add	rax, rcx
	mov	cl, byte ptr [rdi]
	inc	rdi
	test	cl, cl
	jne	.label_599
.label_598:
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4069c0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_1
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_7
	cmp	byte ptr [rcx], 0
	je	.label_600
	mov	rax, rcx
.label_600:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4069f0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_601
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_603
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_601
.label_603:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_601
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_602
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_602:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_601:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x406a70

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_604
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_604
	test	byte ptr [rbx + 1], 1
	je	.label_604
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_604:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406ab0

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
	jne	.label_605
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_605
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_606
.label_605:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_606:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_607
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_607:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	16
	#Procedure 0x406b20

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