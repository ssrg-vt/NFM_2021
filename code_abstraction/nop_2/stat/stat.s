	.section	.text
	.align	16
	#Procedure 0x401fb0

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
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
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
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:fmt_terse_regular
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:fmt_terse_fs
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.16
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
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
	mov	esi, OFFSET FLAT:.str.38
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.16
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.16
	mov	ecx, OFFSET FLAT:.str.42
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
	.align	16
	#Procedure 0x4022f0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	r14, rsi
	mov	r15d, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.18_0
	mov	esi, OFFSET FLAT:.str.19
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.18_0
	call	textdomain
	call	localeconv
	mov	rax, qword ptr [rax]
	mov	edi, OFFSET FLAT:.str_1
	cmp	byte ptr [rax], 0
	je	.label_20
	mov	rdi, rax
.label_20:
	mov	qword ptr [word ptr [rip + decimal_point]],  rdi
	call	strlen
	mov	qword ptr [word ptr [rip + decimal_point_len]],  rax
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	ebx, ebx
	xor	r12d, r12d
	jmp	.label_28
	nop	word ptr [rax + rax]
.label_40:
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
.label_28:
	mov	cl, bl
.label_41:
	mov	bl, cl
	jmp	.label_10
	nop	dword ptr [rax]
.label_38:
	mov	r12,  qword ptr [word ptr [rip + optarg]]
	mov	byte ptr [byte ptr [rip + interpret_backslash_escapes]],  bpl
	mov	qword ptr [word ptr [rip + trailing_delim]],  rax
.label_10:
	xor	ebp, ebp
	mov	edx, OFFSET FLAT:.str.21
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r15d
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x65
	jg	.label_34
	cmp	eax, 0x4b
	jle	.label_31
	cmp	eax, 0x4c
	je	.label_37
	cmp	eax, 0x63
	mov	eax, OFFSET FLAT:.str.22
	je	.label_38
	jmp	.label_27
	nop	dword ptr [rax]
.label_34:
	mov	cl, 1
	cmp	eax, 0x66
	je	.label_40
	cmp	eax, 0x74
	je	.label_41
	cmp	eax, 0x80
	jne	.label_27
	mov	bpl, 1
	mov	eax, OFFSET FLAT:.str_0
	jmp	.label_38
.label_37:
	mov	byte ptr [byte ptr [rip + follow_links]],  1
	jmp	.label_10
.label_31:
	cmp	eax, -1
	jne	.label_12
	cmp	dword ptr [dword ptr [rip + optind]],  r15d
	je	.label_13
	test	r12, r12
	je	.label_15
	mov	esi, OFFSET FLAT:.str.26
	mov	rdi, r12
	call	strstr
	test	rax, rax
	je	.label_18
	mov	edi, OFFSET FLAT:.str.50
	call	getenv
	mov	rbx, rax
	test	rbx, rbx
	je	.label_32
	mov	esi, OFFSET FLAT:quoting_style_args
	mov	edx, OFFSET FLAT:quoting_style_vals
	mov	ecx, 4
	mov	rdi, rbx
	call	argmatch
	test	eax, eax
	js	.label_26
	cdqe	
	mov	esi,  dword ptr [dword ptr [+ (rax * 4) + quoting_style_vals]]
	xor	edi, edi
	call	set_quoting_style
	jmp	.label_18
.label_15:
	mov	rax, qword ptr [rsp + 0x18]
	test	al, al
	setne	al
	test	bl, bl
	setne	cl
	movzx	ebx, al
	movzx	ebp, cl
	xor	edx, edx
	mov	edi, ebx
	mov	esi, ebp
	call	default_format
	mov	qword ptr [rsp + 8], rax
	mov	edx, 1
	mov	edi, ebx
	mov	esi, ebp
	call	default_format
	mov	qword ptr [rsp], rax
	jmp	.label_33
.label_32:
	xor	edi, edi
	mov	esi, 4
	call	set_quoting_style
	jmp	.label_18
.label_26:
	xor	edi, edi
	mov	esi, 4
	call	set_quoting_style
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_18:
	mov	qword ptr [rsp], r12
	mov	qword ptr [rsp + 8], r12
.label_33:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	r12b, 1
	cmp	eax, r15d
	jge	.label_11
	lea	r13, [r14 + rax*8]
	sub	r15d, eax
	mov	r12b, 1
	lea	r14, [rsp + 0x28]
	nop	dword ptr [rax + rax]
.label_39:
	mov	rax, qword ptr [rsp + 0x18]
	test	al, al
	mov	rbx, qword ptr [r13]
	je	.label_17
	mov	dword ptr [rsp + 0x24], r15d
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	jne	.label_21
	cmp	byte ptr [rbx + 1], 0
	je	.label_23
.label_21:
	mov	rdi, rbx
	mov	rsi, r14
	call	statfs
	test	eax, eax
	je	.label_25
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0x14], eax
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.61
	mov	edx, 5
	call	dcgettext
	mov	r15, r14
	mov	r14, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rsp + 0x14]
	mov	rdx, r14
	mov	r14, r15
	call	error
	jmp	.label_14
	nop	word ptr [rax + rax]
.label_17:
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	jne	.label_35
	mov	al, byte ptr [rbx + 1]
	mov	cl, al
	neg	cl
	sbb	ebp, ebp
	test	al, al
	jne	.label_36
	mov	dword ptr [rsp + 0x24], r15d
	mov	edi, 1
	mov	esi, ebp
	mov	rdx, r14
	call	__fxstat
	test	eax, eax
	je	.label_30
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.192
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	jmp	.label_14
.label_25:
	mov	esi, 0xffffffff
	mov	ecx, OFFSET FLAT:print_statfs
	mov	rdi, qword ptr [rsp + 8]
	jmp	.label_16
.label_35:
	mov	ebp, 0xffffffff
.label_36:
	movzx	eax,  byte ptr [byte ptr [rip + follow_links]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_19
	mov	dword ptr [rsp + 0x24], r15d
	mov	edi, 1
	mov	rsi, rbx
	mov	rdx, r14
	call	__xstat
	jmp	.label_24
.label_19:
	mov	dword ptr [rsp + 0x24], r15d
	mov	edi, 1
	mov	rsi, rbx
	mov	rdx, r14
	call	__lxstat
.label_24:
	test	eax, eax
	je	.label_30
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	lea	r14, [rsp + 0x28]
	mov	rdx, r15
	call	error
	jmp	.label_14
.label_30:
	mov	eax, dword ptr [rsp + 0x40]
	mov	ecx, 0x4000
	or	eax, ecx
	and	eax, 0xf000
	cmp	eax, 0x6000
	mov	rdi, qword ptr [rsp + 8]
	jne	.label_29
	mov	rdi, qword ptr [rsp]
.label_29:
	mov	ecx, OFFSET FLAT:print_stat
	mov	esi, ebp
.label_16:
	mov	rdx, rbx
	mov	r8, r14
	call	print_it
	mov	bpl, al
	xor	bpl, 1
	jmp	.label_14
.label_23:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	call	error
	nop	dword ptr [rax]
.label_14:
	mov	r15d, dword ptr [rsp + 0x24]
	and	r12b, bpl
	add	r13, 8
	dec	r15d
	jne	.label_39
.label_11:
	movzx	eax, r12b
	xor	eax, 1
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_12:
	cmp	eax, 0xffffff7d
	je	.label_22
	cmp	eax, 0xffffff7e
	jne	.label_27
	xor	edi, edi
	call	usage
.label_22:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.24
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_27:
	mov	edi, 1
	call	usage
.label_13:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027e0

	.globl default_format
	.type default_format, @function
default_format:
	push	r15
	push	r14
	push	rbx
	mov	ebx, edx
	test	dil, dil
	je	.label_43
	test	sil, sil
	je	.label_44
	mov	edi, OFFSET FLAT:fmt_terse_fs
	jmp	.label_45
.label_43:
	test	sil, sil
	je	.label_46
	mov	edi, OFFSET FLAT:fmt_terse_regular
	jmp	.label_45
.label_44:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
.label_45:
	pop	rbx
	pop	r14
	pop	r15
	jmp	xstrdup
.label_46:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	xstrdup
	mov	r14, rax
	xor	edi, edi
	test	bl, bl
	je	.label_47
	mov	esi, OFFSET FLAT:.str.55
	jmp	.label_42
.label_47:
	mov	esi, OFFSET FLAT:.str.56
.label_42:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, OFFSET FLAT:.str.54
	xor	eax, eax
	mov	rsi, r14
	mov	rdx, rcx
	call	xasprintf
	mov	r15, rax
	mov	rdi, r14
	call	free
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, OFFSET FLAT:.str.54
	xor	eax, eax
	mov	rsi, r15
	mov	rdx, rcx
	call	xasprintf
	mov	r14, rax
	mov	rdi, r15
	call	free
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.58
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, OFFSET FLAT:.str.54
	xor	eax, eax
	mov	rsi, r14
	mov	rdx, rcx
	call	xasprintf
	mov	rbx, rax
	mov	rdi, r14
	call	free
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028f0

	.globl print_it
	.type print_it, @function
print_it:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	dword ptr [rsp + 0xc], esi
	mov	r13, rdi
	call	strlen
	lea	rdi, [rax + 3]
	call	xmalloc
	mov	qword ptr [rsp + 0x30], rax
	mov	al, byte ptr [r13]
	mov	dword ptr [rsp + 0x2c], 0
	jmp	.label_54
	nop	word ptr cs:[rax + rax]
.label_49:
	mov	al, byte ptr [r13 + 1]
	inc	r13
.label_54:
	test	al, al
	je	.label_72
	movsx	ecx, al
	cmp	ecx, 0x5c
	je	.label_59
	cmp	ecx, 0x25
	jne	.label_61
	lea	r15, [r13 + 1]
	mov	esi, OFFSET FLAT:printf_flags
	mov	rdi, r15
	call	strspn
	lea	rbx, [r13 + rax]
	lea	rdi, [r13 + rax + 1]
	mov	esi, OFFSET FLAT:digits
	call	strspn
	lea	r12, [rax + rbx + 1]
	movzx	ecx, byte ptr [rax + rbx + 1]
	cmp	ecx, 0x2e
	jne	.label_67
	lea	rdi, [r12 + 1]
	mov	esi, OFFSET FLAT:digits
	call	strspn
	mov	cl, byte ptr [rax + r12 + 1]
	lea	r12, [rax + r12 + 1]
.label_67:
	mov	r14, r12
	sub	r14, r15
	movsx	ebp, cl
	lea	rbx, [r14 + 1]
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, r13
	mov	rdx, rbx
	call	memcpy
	cmp	ebp, 0x25
	mov	r13, r12
	je	.label_76
	test	ebp, ebp
	jne	.label_78
	lea	r13, [r12 - 1]
.label_76:
	cmp	r12, r15
	jne	.label_79
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_81
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x25
	jmp	.label_49
	nop	word ptr cs:[rax + rax]
.label_59:
	mov	al,  byte ptr [byte ptr [rip + interpret_backslash_escapes]]
	and	al, 1
	je	.label_53
	mov	bl, byte ptr [r13 + 1]
	movsx	r15d, bl
	mov	al, r15b
	and	al, 0xf8
	movzx	eax, al
	cmp	eax, 0x30
	jne	.label_56
	add	r15d, -0x30
	movsx	eax, byte ptr [r13 + 2]
	mov	ecx, eax
	and	ecx, 0xf8
	cmp	ecx, 0x30
	jne	.label_58
	lea	r15d, [rax + r15*8 - 0x30]
	movsx	eax, byte ptr [r13 + 3]
	mov	ecx, eax
	and	ecx, 0xf8
	cmp	ecx, 0x30
	jne	.label_74
	lea	r15d, [rax + r15*8 - 0x30]
	add	r13, 4
	jmp	.label_57
	nop	word ptr [rax + rax]
.label_61:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_68
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
	jmp	.label_49
.label_78:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, rbx
	mov	edx, ebp
	mov	ecx, dword ptr [rsp + 0xc]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rsp + 0x20]
	call	qword ptr [rsp + 0x18]
	mov	ecx, dword ptr [rsp + 0x2c]
	and	cl, 1
	or	cl, al
	mov	dword ptr [rsp + 0x2c], ecx
	mov	r13, r12
	jmp	.label_49
.label_56:
	test	bl, bl
	je	.label_80
	movzx	eax, bl
	cmp	eax, 0x78
	jne	.label_64
	movzx	ebp, byte ptr [r13 + 2]
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	test	byte ptr [rcx + rbp*2 + 1], 0x10
	jne	.label_83
.label_64:
	lea	eax, [r15 - 0x5c]
	cmp	eax, 0xa
	jbe	.label_50
	lea	eax, [r15 - 0x6e]
	cmp	eax, 8
	ja	.label_52
	jmp	qword ptr [word ptr [+ (rax * 8) + label_55]]
.label_1082:
	mov	bl, 0xa
	jmp	.label_51
.label_58:
	add	r13, 2
	jmp	.label_57
.label_80:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.63
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_53:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_60
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x5c
	jmp	.label_49
.label_74:
	add	r13, 3
.label_57:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_65
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r15b
	dec	r13
	jmp	.label_49
.label_50:
	jmp	qword ptr [word ptr [+ (rax * 8) + label_70]]
.label_1181:
	mov	bl, 7
	jmp	.label_51
.label_68:
	movzx	esi, al
	call	__overflow
	jmp	.label_49
.label_83:
	movsx	eax, bpl
	mov	dl, al
	add	dl, 0x9f
	movzx	edx, dl
	cmp	edx, 5
	ja	.label_75
	add	eax, -0x57
	jmp	.label_48
.label_81:
	mov	esi, 0x25
	call	__overflow
	jmp	.label_49
.label_60:
	mov	esi, 0x5c
	call	__overflow
	jmp	.label_49
.label_75:
	add	bpl, 0xbf
	movzx	edx, bpl
	cmp	edx, 5
	ja	.label_82
	add	eax, -0x37
	jmp	.label_48
.label_52:
	cmp	r15d, 0x22
	je	.label_51
.label_1083:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.64
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, r15d
	call	error
	jmp	.label_51
.label_65:
	movzx	esi, r15b
	call	__overflow
	dec	r13
	jmp	.label_49
.label_1182:
	mov	bl, 8
	jmp	.label_51
.label_1183:
	mov	bl, 0x1b
	jmp	.label_51
.label_1184:
	mov	bl, 0xc
	jmp	.label_51
.label_1084:
	mov	bl, 0xd
	jmp	.label_51
.label_1085:
	mov	bl, 9
	jmp	.label_51
.label_1086:
	mov	bl, 0xb
.label_51:
	inc	r13
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_62
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], bl
	jmp	.label_49
.label_82:
	add	eax, -0x30
.label_48:
	movzx	edx, byte ptr [r13 + 3]
	test	byte ptr [rcx + rdx*2 + 1], 0x10
	jne	.label_66
	add	r13, 2
	jmp	.label_63
.label_66:
	movsx	ecx, dl
	shl	eax, 4
	mov	bl, cl
	add	bl, 0x9f
	movzx	esi, bl
	cmp	esi, 5
	ja	.label_69
	add	ecx, -0x57
	jmp	.label_71
.label_69:
	add	dl, 0xbf
	movzx	edx, dl
	cmp	edx, 5
	ja	.label_73
	add	ecx, -0x37
	jmp	.label_71
.label_62:
	movzx	esi, bl
	call	__overflow
	jmp	.label_49
.label_73:
	add	ecx, -0x30
.label_71:
	add	r13, 3
	add	eax, ecx
.label_63:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_77
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
	jmp	.label_49
.label_77:
	movzx	esi, al
	call	__overflow
	jmp	.label_49
.label_72:
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	mov	rdi,  qword ptr [word ptr [rip + trailing_delim]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	mov	eax, dword ptr [rsp + 0x2c]
	and	al, 1
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_79:
	mov	al, byte ptr [r12]
	mov	rbp, qword ptr [rsp + 0x30]
	mov	byte ptr [rbp + r14 + 1], al
	mov	byte ptr [rbp + r14 + 2], 0
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.62
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, rbp
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d80

	.globl print_statfs
	.type print_statfs, @function
print_statfs:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	lea	eax, [rdx - 0x61]
	cmp	eax, 0x13
	ja	.label_180
	jmp	qword ptr [word ptr [+ (rax * 8) + label_186]]
.label_1195:
	mov	rdx, qword ptr [r9 + 0x20]
	jmp	.label_106
.label_180:
	cmp	edx, 0x53
	je	.label_191
	cmp	edx, 0x54
	jne	.label_194
	mov	r15d, OFFSET FLAT:.str.70
	mov	r8, qword ptr [r9]
	cmp	r8, 0x2fc12fc0
	jg	.label_195
	cmp	r8, 0xef50
	jg	.label_199
	cmp	r8, 0x482a
	jle	.label_203
	cmp	r8, 0x7274
	jg	.label_206
	cmp	r8, 0x517a
	jg	.label_208
	cmp	r8, 0x4d43
	jg	.label_212
	cmp	r8, 0x482b
	je	.label_87
	cmp	r8, 0x4858
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.117
	jmp	.label_84
.label_194:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_97
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x3f
	jmp	.label_94
.label_1196:
	mov	rdx, qword ptr [r9 + 0x10]
	jmp	.label_106
.label_1197:
	mov	rdx, qword ptr [r9 + 0x28]
	jmp	.label_108
.label_1198:
	mov	rdx, qword ptr [r9 + 0x30]
	jmp	.label_106
.label_1199:
	mov	rdx, qword ptr [r9 + 0x18]
.label_106:
	mov	rdi, rbx
	mov	rsi, r14
	call	out_int
	jmp	.label_94
.label_1200:
	mov	edx, dword ptr [r9 + 0x38]
	mov	eax, dword ptr [r9 + 0x3c]
	shl	rdx, 0x20
	or	rdx, rax
	jmp	.label_117
.label_1201:
	mov	rdx, qword ptr [r9 + 0x40]
	jmp	.label_108
.label_1202:
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r8
	call	out_string
	jmp	.label_94
.label_1204:
	mov	rdx, qword ptr [r9]
.label_117:
	mov	rdi, rbx
	mov	rsi, r14
	call	out_uint_x
	jmp	.label_94
.label_191:
	mov	rdx, qword ptr [r9 + 0x48]
	test	rdx, rdx
	jne	.label_108
.label_1203:
	mov	rdx, qword ptr [r9 + 8]
.label_108:
	mov	rdi, rbx
	mov	rsi, r14
	call	out_uint
	jmp	.label_94
.label_195:
	cmp	r8, 0x65735542
	jle	.label_136
	mov	eax, 0x858458f5
	cmp	r8, rax
	jle	.label_162
	mov	eax, 0xc97e8167
	cmp	r8, rax
	jg	.label_143
	mov	eax, 0xaad7aae9
	cmp	r8, rax
	jg	.label_149
	mov	eax, 0x958458f5
	cmp	r8, rax
	jg	.label_151
	mov	eax, 0x858458f6
	cmp	r8, rax
	je	.label_154
	mov	eax, 0x9123683e
	cmp	r8, rax
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.84
	jmp	.label_84
.label_199:
	cmp	r8, 0x13111a7
	jg	.label_177
	cmp	r8, 0x1021993
	jg	.label_167
	cmp	r8, 0x27e0ea
	jg	.label_170
	cmp	r8, 0xf15e
	jg	.label_111
	cmp	r8, 0xef51
	je	.label_176
	cmp	r8, 0xef53
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.105
	jmp	.label_84
.label_136:
	cmp	r8, 0x541900ff
	jg	.label_187
	cmp	r8, 0x47504652
	jle	.label_192
	cmp	r8, 0x5346414e
	jg	.label_103
	cmp	r8, 0x52654972
	jg	.label_145
	cmp	r8, 0x47504653
	je	.label_168
	cmp	r8, 0x50495045
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.149
	jmp	.label_84
.label_203:
	cmp	r8, 0x1cd0
	jle	.label_210
	cmp	r8, 0x3fff
	jg	.label_213
	cmp	r8, 0x2477
	jg	.label_89
	cmp	r8, 0x1cd1
	je	.label_91
	cmp	r8, 0x2468
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.134
	jmp	.label_84
.label_162:
	cmp	r8, 0x73636672
	jle	.label_173
	cmp	r8, 0x7461636e
	jg	.label_196
	cmp	r8, 0x73727278
	jg	.label_107
	cmp	r8, 0x73636673
	je	.label_112
	cmp	r8, 0x73717368
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.168
	jmp	.label_84
.label_187:
	cmp	r8, 0x6165676b
	jle	.label_159
	cmp	r8, 0x62656571
	jg	.label_123
	cmp	r8, 0x62646575
	jg	.label_125
	cmp	r8, 0x6165676c
	je	.label_128
	cmp	r8, 0x61756673
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.76
	jmp	.label_84
.label_177:
	cmp	r8, 0x15013345
	jg	.label_137
	cmp	r8, 0xbad1de9
	jle	.label_139
	cmp	r8, 0x11307853
	jg	.label_144
	cmp	r8, 0xbad1dea
	je	.label_207
	cmp	r8, 0xbd00bd0
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.130
	jmp	.label_84
.label_97:
	mov	esi, 0x3f
	call	__overflow
	jmp	.label_94
.label_206:
	cmp	r8, 0x9fa0
	jg	.label_158
	cmp	r8, 0x965f
	jg	.label_163
	cmp	r8, 0x7275
	je	.label_166
	cmp	r8, 0x72b6
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.126
	jmp	.label_84
.label_143:
	mov	eax, 0xf97cff8b
	cmp	r8, rax
	jg	.label_174
	mov	eax, 0xde5e81e3
	cmp	r8, rax
	jg	.label_179
	mov	eax, 0xc97e8168
	cmp	r8, rax
	je	.label_183
	mov	eax, 0xcafe4a11
	cmp	r8, rax
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.82
	jmp	.label_84
.label_167:
	cmp	r8, 0x12fd16c
	jg	.label_95
	cmp	r8, 0x1021994
	je	.label_115
	cmp	r8, 0x1021997
	je	.label_200
	cmp	r8, 0x1161970
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.113
	jmp	.label_84
.label_192:
	cmp	r8, 0x42494e4c
	jle	.label_124
	cmp	r8, 0x453dcd27
	jg	.label_182
	cmp	r8, 0x42494e4d
	je	.label_101
	cmp	r8, 0x43415d53
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.163
	jmp	.label_84
.label_210:
	cmp	r8, 0x1372
	jle	.label_98
	cmp	r8, 0x137e
	jg	.label_100
	cmp	r8, 0x1373
	je	.label_104
	cmp	r8, 0x137d
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.104
	jmp	.label_84
.label_173:
	cmp	r8, 0x68191121
	jle	.label_114
	cmp	r8, 0x6e667363
	jg	.label_140
	cmp	r8, 0x68191122
	je	.label_120
	cmp	r8, 0x6b414653
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.128
	jmp	.label_84
.label_159:
	cmp	r8, 0x58465341
	jle	.label_127
	cmp	r8, 0x5dca2df4
	jg	.label_131
	cmp	r8, 0x58465342
	je	.label_134
	cmp	r8, 0x5a3c69f0
	je	.label_84
	jmp	.label_86
.label_137:
	cmp	r8, 0x1badfacd
	jle	.label_141
	cmp	r8, 0x28cd3d44
	jg	.label_147
	cmp	r8, 0x1badface
	je	.label_150
	cmp	r8, 0x24051905
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.174
	jmp	.label_84
.label_208:
	cmp	r8, 0x5df4
	jg	.label_157
	cmp	r8, 0x517b
	je	.label_160
	cmp	r8, 0x564c
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.139
	jmp	.label_84
.label_149:
	mov	eax, 0xbacbacbb
	cmp	r8, rax
	jg	.label_169
	mov	eax, 0xaad7aaea
	cmp	r8, rax
	je	.label_172
	mov	eax, 0xabba1974
	cmp	r8, rax
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.183
	jmp	.label_84
.label_170:
	cmp	r8, 0xc0ffed
	jg	.label_184
	cmp	r8, 0x27e0eb
	je	.label_188
	cmp	r8, 0x414a53
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.101
	jmp	.label_84
.label_103:
	cmp	r8, 0x5346544d
	jg	.label_197
	cmp	r8, 0x5346414f
	je	.label_133
	cmp	r8, 0x53464846
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.182
	jmp	.label_84
.label_213:
	cmp	r8, 0x4005
	jg	.label_190
	cmp	r8, 0x4000
	je	.label_209
	cmp	r8, 0x4004
	jne	.label_86
.label_209:
	mov	r15d, OFFSET FLAT:.str.124
	jmp	.label_84
.label_196:
	cmp	r8, 0x794c762f
	jg	.label_93
	cmp	r8, 0x7461636f
	je	.label_96
	cmp	r8, 0x74726163
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.173
	jmp	.label_84
.label_123:
	cmp	r8, 0x6462671f
	jg	.label_105
	cmp	r8, 0x62656572
	je	.label_110
	cmp	r8, 0x63677270
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.88
	jmp	.label_84
.label_158:
	cmp	r8, 0xadf4
	jg	.label_119
	cmp	r8, 0x9fa1
	je	.label_122
	cmp	r8, 0x9fa2
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.177
	jmp	.label_84
.label_174:
	mov	eax, 0xfe534d41
	cmp	r8, rax
	jg	.label_130
	mov	eax, 0xf97cff8c
	cmp	r8, rax
	je	.label_132
	mov	eax, 0xf995e849
	cmp	r8, rax
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.119
	jmp	.label_84
.label_95:
	lea	rax, [r8 - 0x12ff7b4]
	cmp	rax, 3
	ja	.label_142
	jmp	qword ptr [word ptr [+ (rax * 8) + label_204]]
.label_1078:
	mov	r15d, OFFSET FLAT:.str.184
	jmp	.label_84
.label_139:
	cmp	r8, 0x13111a8
	je	.label_152
	cmp	r8, 0x7655821
	je	.label_155
	cmp	r8, 0x9041934
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.75
	jmp	.label_84
.label_124:
	cmp	r8, 0x2fc12fc1
	je	.label_164
	cmp	r8, 0x3153464a
	je	.label_198
	cmp	r8, 0x42465331
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.79
	jmp	.label_84
.label_98:
	cmp	r8, 0x2f
	je	.label_175
	cmp	r8, 0x187
	je	.label_178
	cmp	r8, 0x7c0
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.125
	jmp	.label_84
.label_114:
	cmp	r8, 0x65735543
	je	.label_189
	cmp	r8, 0x65735546
	je	.label_88
	cmp	r8, 0x67596969
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.12_0
	jmp	.label_84
.label_127:
	cmp	r8, 0x54190100
	je	.label_202
	cmp	r8, 0x565a4653
	je	.label_205
	cmp	r8, 0x58295829
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.188
	jmp	.label_84
.label_141:
	cmp	r8, 0x15013346
	je	.label_85
	cmp	r8, 0x19800202
	je	.label_90
	cmp	r8, 0x19830326
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.109
	jmp	.label_84
.label_212:
	cmp	r8, 0x4d44
	je	.label_99
	cmp	r8, 0x4d5a
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.136
	jmp	.label_84
.label_151:
	mov	eax, 0x958458f6
	cmp	r8, rax
	je	.label_109
	mov	eax, 0xa501fcf5
	cmp	r8, rax
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.180
	jmp	.label_84
.label_111:
	cmp	r8, 0xf15f
	je	.label_118
	cmp	r8, 0x11954
	jne	.label_86
.label_202:
	mov	r15d, OFFSET FLAT:.str.176
	jmp	.label_84
.label_145:
	cmp	r8, 0x52654973
	je	.label_126
	cmp	r8, 0x5346314d
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.131
	jmp	.label_84
.label_89:
	cmp	r8, 0x2478
	je	.label_135
	cmp	r8, 0x3434
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.142
	jmp	.label_84
.label_107:
	cmp	r8, 0x73727279
	je	.label_146
	cmp	r8, 0x73757245
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.90
	jmp	.label_84
.label_125:
	cmp	r8, 0x62646576
	je	.label_153
	cmp	r8, 0x62656570
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.92
	jmp	.label_84
.label_144:
	cmp	r8, 0x11307854
	je	.label_161
	cmp	r8, 0x13661366
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.78
	jmp	.label_84
.label_163:
	cmp	r8, 0x9660
	je	.label_171
	cmp	r8, 0x9fa0
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.6_0
	jmp	.label_84
.label_179:
	mov	eax, 0xde5e81e4
	cmp	r8, rax
	je	.label_181
	mov	eax, 0xf2f52010
	cmp	r8, rax
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.107
	jmp	.label_84
.label_182:
	cmp	r8, 0x453dcd28
	je	.label_193
	cmp	r8, 0x45584653
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.102
	jmp	.label_84
.label_100:
	cmp	r8, 0x137f
	je	.label_201
	cmp	r8, 0x138f
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.133
	jmp	.label_84
.label_140:
	cmp	r8, 0x6e667364
	je	.label_211
	cmp	r8, 0x6e736673
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.143
	jmp	.label_84
.label_131:
	cmp	r8, 0x5dca2df5
	je	.label_92
	cmp	r8, 0x61636673
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.71
	jmp	.label_84
.label_147:
	cmp	r8, 0x28cd3d45
	je	.label_102
	cmp	r8, 0x2bad1dea
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.123
	jmp	.label_84
.label_157:
	cmp	r8, 0x5df5
	je	.label_113
	cmp	r8, 0x6969
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.140
	jmp	.label_84
.label_169:
	mov	eax, 0xbacbacbc
	cmp	r8, rax
	je	.label_121
	mov	eax, 0xbeefdead
	cmp	r8, rax
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.166
	jmp	.label_84
.label_184:
	cmp	r8, 0xc0ffee
	je	.label_129
	cmp	r8, 0xc36400
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.86
	jmp	.label_84
.label_197:
	cmp	r8, 0x5346544e
	je	.label_138
	cmp	r8, 0x534f434b
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.167
	jmp	.label_84
.label_190:
	cmp	r8, 0x4006
	je	.label_148
	cmp	r8, 0x4244
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.115
	jmp	.label_84
.label_93:
	cmp	r8, 0x794c7630
	je	.label_156
	cmp	r8, 0x7c7c6673
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.150
	jmp	.label_84
.label_105:
	cmp	r8, 0x64626720
	je	.label_165
	cmp	r8, 0x64646178
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.95
	jmp	.label_84
.label_119:
	cmp	r8, 0xadf5
	je	.label_116
	cmp	r8, 0xadff
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.73
	jmp	.label_84
.label_130:
	mov	eax, 0xfe534d42
	cmp	r8, rax
	je	.label_185
	mov	eax, 0xff534d42
	cmp	r8, rax
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.19_0
	jmp	.label_84
.label_115:
	mov	r15d, OFFSET FLAT:.str.172
	jmp	.label_84
.label_200:
	mov	r15d, OFFSET FLAT:.str.178
	jmp	.label_84
.label_87:
	mov	r15d, OFFSET FLAT:.str.116
	jmp	.label_84
.label_154:
	mov	r15d, OFFSET FLAT:.str.155
	jmp	.label_84
.label_176:
	mov	r15d, OFFSET FLAT:.str.106
	jmp	.label_84
.label_168:
	mov	r15d, OFFSET FLAT:.str.114
	jmp	.label_84
.label_91:
	mov	r15d, OFFSET FLAT:.str.9_0
	jmp	.label_84
.label_112:
	mov	r15d, OFFSET FLAT:.str.161
	jmp	.label_84
.label_128:
	mov	r15d, OFFSET FLAT:.str.152
	jmp	.label_84
.label_207:
	mov	r15d, OFFSET FLAT:.str.112
	jmp	.label_84
.label_166:
	mov	r15d, OFFSET FLAT:.str.158
	jmp	.label_84
.label_183:
	mov	r15d, OFFSET FLAT:.str.129
	jmp	.label_84
.label_101:
	mov	r15d, OFFSET FLAT:.str.83
	jmp	.label_84
.label_104:
	mov	r15d, OFFSET FLAT:.str.14_0
	jmp	.label_84
.label_120:
	mov	r15d, OFFSET FLAT:.str.154
	jmp	.label_84
.label_134:
	mov	r15d, OFFSET FLAT:.str.185
	jmp	.label_84
.label_150:
	mov	r15d, OFFSET FLAT:.str.81
	jmp	.label_84
.label_160:
	mov	r15d, OFFSET FLAT:.str.164
	jmp	.label_84
.label_172:
	mov	r15d, OFFSET FLAT:.str.148
	jmp	.label_84
.label_188:
	mov	r15d, OFFSET FLAT:.str.87
	jmp	.label_84
.label_133:
	mov	r15d, OFFSET FLAT:.str.74
	jmp	.label_84
.label_96:
	mov	r15d, OFFSET FLAT:.str.146
	jmp	.label_84
.label_110:
	mov	r15d, OFFSET FLAT:.str.13_0
	jmp	.label_84
.label_122:
	mov	r15d, OFFSET FLAT:.str.145
	jmp	.label_84
.label_132:
	mov	r15d, OFFSET FLAT:.str.162
	jmp	.label_84
.label_152:
	mov	r15d, OFFSET FLAT:.str.122
	jmp	.label_84
.label_155:
	mov	r15d, OFFSET FLAT:.str.156
	jmp	.label_84
.label_164:
	mov	r15d, OFFSET FLAT:.str.187
	jmp	.label_84
.label_198:
	mov	r15d, OFFSET FLAT:.str.127
	jmp	.label_84
.label_175:
	mov	r15d, OFFSET FLAT:.str.153
	jmp	.label_84
.label_178:
	mov	r15d, OFFSET FLAT:.str.5_1
	jmp	.label_84
.label_189:
	mov	r15d, OFFSET FLAT:.str.10_0
	jmp	.label_84
.label_88:
	mov	r15d, OFFSET FLAT:.str.110
	jmp	.label_84
.label_205:
	mov	r15d, OFFSET FLAT:.str.181
	jmp	.label_84
.label_85:
	mov	r15d, OFFSET FLAT:.str.175
	jmp	.label_84
.label_90:
	mov	r15d, OFFSET FLAT:.str.11_0
	jmp	.label_84
.label_99:
	mov	r15d, OFFSET FLAT:.str.138
	jmp	.label_84
.label_109:
	mov	r15d, OFFSET FLAT:.str.120
	jmp	.label_84
.label_118:
	mov	r15d, OFFSET FLAT:.str.99
	jmp	.label_84
.label_126:
	mov	r15d, OFFSET FLAT:.str.157
	jmp	.label_84
.label_135:
	mov	r15d, OFFSET FLAT:.str.135
	jmp	.label_84
.label_146:
	mov	r15d, OFFSET FLAT:.str.85
	jmp	.label_84
.label_153:
	mov	r15d, OFFSET FLAT:.str.80
	jmp	.label_84
.label_161:
	mov	r15d, OFFSET FLAT:.str.121
	jmp	.label_84
.label_171:
	mov	r15d, OFFSET FLAT:.str.124
	jmp	.label_84
.label_181:
	mov	r15d, OFFSET FLAT:.str.100
	jmp	.label_84
.label_193:
	mov	r15d, OFFSET FLAT:.str.94
	jmp	.label_84
.label_201:
	mov	r15d, OFFSET FLAT:.str.132
	jmp	.label_84
.label_211:
	mov	r15d, OFFSET FLAT:.str.141
	jmp	.label_84
.label_92:
	mov	r15d, OFFSET FLAT:.str.160
	jmp	.label_84
.label_102:
	mov	r15d, OFFSET FLAT:.str.93
	jmp	.label_84
.label_113:
	mov	r15d, OFFSET FLAT:.str.103
	jmp	.label_84
.label_121:
	mov	r15d, OFFSET FLAT:.str.179
	jmp	.label_84
.label_129:
	mov	r15d, OFFSET FLAT:.str.118
	jmp	.label_84
.label_138:
	mov	r15d, OFFSET FLAT:.str.144
	jmp	.label_84
.label_148:
	mov	r15d, OFFSET FLAT:.str.108
	jmp	.label_84
.label_156:
	mov	r15d, OFFSET FLAT:.str.147
	jmp	.label_84
.label_165:
	mov	r15d, OFFSET FLAT:.str.8_0
	jmp	.label_84
.label_116:
	mov	r15d, OFFSET FLAT:.str.72
	jmp	.label_84
.label_185:
	mov	r15d, OFFSET FLAT:.str.165
	jmp	.label_84
.label_142:
	cmp	r8, 0x12fd16d
	jne	.label_86
	mov	r15d, OFFSET FLAT:.str.186
	jmp	.label_84
.label_86:
	mov	r15d, OFFSET FLAT:human_fstype.buf
	mov	edi, OFFSET FLAT:human_fstype.buf
	mov	esi, 1
	mov	edx, 0x1d
	mov	ecx, OFFSET FLAT:.str.189
	xor	eax, eax
	call	__sprintf_chk
	jmp	.label_84
.label_1079:
	mov	r15d, OFFSET FLAT:.str.171
	jmp	.label_84
.label_1080:
	mov	r15d, OFFSET FLAT:.str.170
	jmp	.label_84
.label_1081:
	mov	r15d, OFFSET FLAT:.str.91
.label_84:
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r15
	call	out_string
.label_94:
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ca0

	.globl out_string
	.type out_string, @function
out_string:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 8], rdx
	mov	r12, rsi
	mov	qword ptr [rsp + 0x10], rdi
	lea	r14, [rdi + 1]
	lea	rbp, [rdi + r12]
	cmp	r12, 2
	jl	.label_219
	movabs	r15, 0x200000000001
	mov	r13, r14
	nop	word ptr cs:[rax + rax]
.label_218:
	mov	bl, byte ptr [r13]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_223
	mov	eax, 1
	mov	cl, bl
	shl	rax, cl
	movzx	ecx, bl
	cmp	ecx, 0x3f
	ja	.label_216
	and	rax, r15
	je	.label_216
	mov	byte ptr [r14], bl
	inc	r14
.label_216:
	inc	r13
	cmp	r13, rbp
	jb	.label_218
	jmp	.label_223
.label_219:
	mov	r13, r14
.label_223:
	cmp	r13, rbp
	jae	.label_221
	mov	rax, r12
	sub	rax, r13
	mov	rsi, qword ptr [rsp + 0x10]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_222
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_222
	lea	rdx, [rsi + r12 - 1]
	cmp	r14, rdx
	ja	.label_215
	dec	r12
	sub	r12, r13
	add	r12, rsi
	add	r12, r14
	cmp	r13, r12
	ja	.label_215
.label_222:
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 8]
	nop	word ptr [rax + rax]
.label_220:
	mov	cl, byte ptr [r13]
	inc	r13
	mov	byte ptr [rdi], cl
	inc	rdi
	cmp	rbp, r13
	jne	.label_220
.label_225:
	add	r14, rax
	jmp	.label_217
.label_221:
	mov	rdx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x10]
.label_217:
	mov	word ptr [r14], 0x73
	mov	edi, 1
	xor	eax, eax
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__printf_chk
.label_215:
	lea	rdx, [rax - 0x20]
	mov	ecx, edx
	shr	ecx, 5
	inc	ecx
	xor	edi, edi
	test	cl, 3
	je	.label_224
	lea	ecx, [rax - 0x20]
	shr	ecx, 5
	inc	ecx
	and	ecx, 3
	neg	rcx
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_226:
	movups	xmm0, xmmword ptr [r13 + rdi]
	movups	xmm1, xmmword ptr [r13 + rdi + 0x10]
	movups	xmmword ptr [r14 + rdi], xmm0
	movups	xmmword ptr [r14 + rdi + 0x10], xmm1
	add	rdi, 0x20
	inc	rcx
	jne	.label_226
.label_224:
	cmp	rdx, 0x60
	mov	rdx, qword ptr [rsp + 8]
	jb	.label_214
	mov	rcx, r8
	sub	rcx, rdi
	lea	rbx, [r13 + rdi + 0x70]
	lea	rdi, [r14 + rdi + 0x70]
	nop	dword ptr [rax + rax]
.label_227:
	movups	xmm0, xmmword ptr [rbx - 0x70]
	movups	xmm1, xmmword ptr [rbx - 0x60]
	movups	xmmword ptr [rdi - 0x70], xmm0
	movups	xmmword ptr [rdi - 0x60], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x50]
	movups	xmm1, xmmword ptr [rbx - 0x40]
	movups	xmmword ptr [rdi - 0x50], xmm0
	movups	xmmword ptr [rdi - 0x40], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x30]
	movups	xmm1, xmmword ptr [rbx - 0x20]
	movups	xmmword ptr [rdi - 0x30], xmm0
	movups	xmmword ptr [rdi - 0x20], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x10]
	movups	xmm1, xmmword ptr [rbx]
	movups	xmmword ptr [rdi - 0x10], xmm0
	movups	xmmword ptr [rdi], xmm1
	add	rbx, 0x80
	add	rdi, 0x80
	add	rcx, -0x80
	jne	.label_227
.label_214:
	cmp	rax, r8
	je	.label_225
	lea	rdi, [r14 + r8]
	add	r13, r8
	jmp	.label_220
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e90

	.globl out_uint_x
	.type out_uint_x, @function
out_uint_x:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 8], rdx
	mov	r12, rsi
	mov	qword ptr [rsp + 0x10], rdi
	lea	r14, [rdi + 1]
	lea	rbp, [rdi + r12]
	cmp	r12, 2
	jl	.label_235
	movabs	r15, 0x1200800000001
	mov	r13, r14
	nop	word ptr cs:[rax + rax]
.label_230:
	mov	bl, byte ptr [r13]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_234
	mov	eax, 1
	mov	cl, bl
	shl	rax, cl
	movzx	ecx, bl
	cmp	ecx, 0x3f
	ja	.label_239
	and	rax, r15
	je	.label_239
	mov	byte ptr [r14], bl
	inc	r14
.label_239:
	inc	r13
	cmp	r13, rbp
	jb	.label_230
	jmp	.label_234
.label_235:
	mov	r13, r14
.label_234:
	cmp	r13, rbp
	jae	.label_232
	mov	rax, r12
	sub	rax, r13
	mov	rsi, qword ptr [rsp + 0x10]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_233
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_233
	lea	rdx, [rsi + r12 - 1]
	cmp	r14, rdx
	ja	.label_228
	dec	r12
	sub	r12, r13
	add	r12, rsi
	add	r12, r14
	cmp	r13, r12
	ja	.label_228
.label_233:
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 8]
	nop	word ptr [rax + rax]
.label_229:
	mov	cl, byte ptr [r13]
	inc	r13
	mov	byte ptr [rdi], cl
	inc	rdi
	cmp	rbp, r13
	jne	.label_229
.label_236:
	add	r14, rax
	jmp	.label_241
.label_232:
	mov	rdx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x10]
.label_241:
	mov	byte ptr [r14 + 2], 0
	mov	word ptr [r14], 0x786c
	mov	edi, 1
	xor	eax, eax
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__printf_chk
.label_228:
	lea	rdx, [rax - 0x20]
	mov	ecx, edx
	shr	ecx, 5
	inc	ecx
	xor	edi, edi
	test	cl, 3
	je	.label_238
	lea	ecx, [rax - 0x20]
	shr	ecx, 5
	inc	ecx
	and	ecx, 3
	neg	rcx
	xor	edi, edi
	nop	word ptr [rax + rax]
.label_237:
	movups	xmm0, xmmword ptr [r13 + rdi]
	movups	xmm1, xmmword ptr [r13 + rdi + 0x10]
	movups	xmmword ptr [r14 + rdi], xmm0
	movups	xmmword ptr [r14 + rdi + 0x10], xmm1
	add	rdi, 0x20
	inc	rcx
	jne	.label_237
.label_238:
	cmp	rdx, 0x60
	mov	rdx, qword ptr [rsp + 8]
	jb	.label_240
	mov	rcx, r8
	sub	rcx, rdi
	lea	rbx, [r13 + rdi + 0x70]
	lea	rdi, [r14 + rdi + 0x70]
	nop	dword ptr [rax + rax]
.label_231:
	movups	xmm0, xmmword ptr [rbx - 0x70]
	movups	xmm1, xmmword ptr [rbx - 0x60]
	movups	xmmword ptr [rdi - 0x70], xmm0
	movups	xmmword ptr [rdi - 0x60], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x50]
	movups	xmm1, xmmword ptr [rbx - 0x40]
	movups	xmmword ptr [rdi - 0x50], xmm0
	movups	xmmword ptr [rdi - 0x40], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x30]
	movups	xmm1, xmmword ptr [rbx - 0x20]
	movups	xmmword ptr [rdi - 0x30], xmm0
	movups	xmmword ptr [rdi - 0x20], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x10]
	movups	xmm1, xmmword ptr [rbx]
	movups	xmmword ptr [rdi - 0x10], xmm0
	movups	xmmword ptr [rdi], xmm1
	add	rbx, 0x80
	add	rdi, 0x80
	add	rcx, -0x80
	jne	.label_231
.label_240:
	cmp	rax, r8
	je	.label_236
	lea	rdi, [r14 + r8]
	add	r13, r8
	jmp	.label_229
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404080

	.globl out_uint
	.type out_uint, @function
out_uint:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 8], rdx
	mov	r12, rsi
	mov	qword ptr [rsp + 0x10], rdi
	lea	r14, [rdi + 1]
	lea	rbp, [rdi + r12]
	cmp	r12, 2
	jl	.label_242
	movabs	r15, 0x1208000000001
	mov	r13, r14
	nop	word ptr cs:[rax + rax]
.label_254:
	mov	bl, byte ptr [r13]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_245
	mov	eax, 1
	mov	cl, bl
	shl	rax, cl
	movzx	ecx, bl
	cmp	ecx, 0x3f
	ja	.label_250
	and	rax, r15
	je	.label_250
	mov	byte ptr [r14], bl
	inc	r14
.label_250:
	inc	r13
	cmp	r13, rbp
	jb	.label_254
	jmp	.label_245
.label_242:
	mov	r13, r14
.label_245:
	cmp	r13, rbp
	jae	.label_243
	mov	rax, r12
	sub	rax, r13
	mov	rsi, qword ptr [rsp + 0x10]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_244
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_244
	lea	rdx, [rsi + r12 - 1]
	cmp	r14, rdx
	ja	.label_253
	dec	r12
	sub	r12, r13
	add	r12, rsi
	add	r12, r14
	cmp	r13, r12
	ja	.label_253
.label_244:
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 8]
	nop	word ptr [rax + rax]
.label_246:
	mov	cl, byte ptr [r13]
	inc	r13
	mov	byte ptr [rdi], cl
	inc	rdi
	cmp	rbp, r13
	jne	.label_246
.label_247:
	add	r14, rax
	jmp	.label_252
.label_243:
	mov	rdx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x10]
.label_252:
	mov	byte ptr [r14 + 2], 0
	mov	word ptr [r14], 0x756c
	mov	edi, 1
	xor	eax, eax
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__printf_chk
.label_253:
	lea	rdx, [rax - 0x20]
	mov	ecx, edx
	shr	ecx, 5
	inc	ecx
	xor	edi, edi
	test	cl, 3
	je	.label_249
	lea	ecx, [rax - 0x20]
	shr	ecx, 5
	inc	ecx
	and	ecx, 3
	neg	rcx
	xor	edi, edi
	nop	word ptr [rax + rax]
.label_248:
	movups	xmm0, xmmword ptr [r13 + rdi]
	movups	xmm1, xmmword ptr [r13 + rdi + 0x10]
	movups	xmmword ptr [r14 + rdi], xmm0
	movups	xmmword ptr [r14 + rdi + 0x10], xmm1
	add	rdi, 0x20
	inc	rcx
	jne	.label_248
.label_249:
	cmp	rdx, 0x60
	mov	rdx, qword ptr [rsp + 8]
	jb	.label_251
	mov	rcx, r8
	sub	rcx, rdi
	lea	rbx, [r13 + rdi + 0x70]
	lea	rdi, [r14 + rdi + 0x70]
	nop	dword ptr [rax + rax]
.label_255:
	movups	xmm0, xmmword ptr [rbx - 0x70]
	movups	xmm1, xmmword ptr [rbx - 0x60]
	movups	xmmword ptr [rdi - 0x70], xmm0
	movups	xmmword ptr [rdi - 0x60], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x50]
	movups	xmm1, xmmword ptr [rbx - 0x40]
	movups	xmmword ptr [rdi - 0x50], xmm0
	movups	xmmword ptr [rdi - 0x40], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x30]
	movups	xmm1, xmmword ptr [rbx - 0x20]
	movups	xmmword ptr [rdi - 0x30], xmm0
	movups	xmmword ptr [rdi - 0x20], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x10]
	movups	xmm1, xmmword ptr [rbx]
	movups	xmmword ptr [rdi - 0x10], xmm0
	movups	xmmword ptr [rdi], xmm1
	add	rbx, 0x80
	add	rdi, 0x80
	add	rcx, -0x80
	jne	.label_255
.label_251:
	cmp	rax, r8
	je	.label_247
	lea	rdi, [r14 + r8]
	add	r13, r8
	jmp	.label_246
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404270

	.globl out_int
	.type out_int, @function
out_int:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 8], rdx
	mov	r12, rsi
	mov	qword ptr [rsp + 0x10], rdi
	lea	r14, [rdi + 1]
	lea	rbp, [rdi + r12]
	cmp	r12, 2
	jl	.label_269
	movabs	r15, 0x1288100000001
	mov	r13, r14
	nop	word ptr cs:[rax + rax]
.label_266:
	mov	bl, byte ptr [r13]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_260
	mov	eax, 1
	mov	cl, bl
	shl	rax, cl
	movzx	ecx, bl
	cmp	ecx, 0x3f
	ja	.label_261
	and	rax, r15
	je	.label_261
	mov	byte ptr [r14], bl
	inc	r14
.label_261:
	inc	r13
	cmp	r13, rbp
	jb	.label_266
	jmp	.label_260
.label_269:
	mov	r13, r14
.label_260:
	cmp	r13, rbp
	jae	.label_268
	mov	rax, r12
	sub	rax, r13
	mov	rsi, qword ptr [rsp + 0x10]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_262
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_262
	lea	rdx, [rsi + r12 - 1]
	cmp	r14, rdx
	ja	.label_265
	dec	r12
	sub	r12, r13
	add	r12, rsi
	add	r12, r14
	cmp	r13, r12
	ja	.label_265
.label_262:
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 8]
	nop	word ptr [rax + rax]
.label_256:
	mov	cl, byte ptr [r13]
	inc	r13
	mov	byte ptr [rdi], cl
	inc	rdi
	cmp	rbp, r13
	jne	.label_256
.label_257:
	add	r14, rax
	jmp	.label_264
.label_268:
	mov	rdx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x10]
.label_264:
	mov	byte ptr [r14 + 2], 0
	mov	word ptr [r14], 0x646c
	mov	edi, 1
	xor	eax, eax
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__printf_chk
.label_265:
	lea	rdx, [rax - 0x20]
	mov	ecx, edx
	shr	ecx, 5
	inc	ecx
	xor	edi, edi
	test	cl, 3
	je	.label_259
	lea	ecx, [rax - 0x20]
	shr	ecx, 5
	inc	ecx
	and	ecx, 3
	neg	rcx
	xor	edi, edi
	nop	word ptr [rax + rax]
.label_258:
	movups	xmm0, xmmword ptr [r13 + rdi]
	movups	xmm1, xmmword ptr [r13 + rdi + 0x10]
	movups	xmmword ptr [r14 + rdi], xmm0
	movups	xmmword ptr [r14 + rdi + 0x10], xmm1
	add	rdi, 0x20
	inc	rcx
	jne	.label_258
.label_259:
	cmp	rdx, 0x60
	mov	rdx, qword ptr [rsp + 8]
	jb	.label_263
	mov	rcx, r8
	sub	rcx, rdi
	lea	rbx, [r13 + rdi + 0x70]
	lea	rdi, [r14 + rdi + 0x70]
	nop	dword ptr [rax + rax]
.label_267:
	movups	xmm0, xmmword ptr [rbx - 0x70]
	movups	xmm1, xmmword ptr [rbx - 0x60]
	movups	xmmword ptr [rdi - 0x70], xmm0
	movups	xmmword ptr [rdi - 0x60], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x50]
	movups	xmm1, xmmword ptr [rbx - 0x40]
	movups	xmmword ptr [rdi - 0x50], xmm0
	movups	xmmword ptr [rdi - 0x40], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x30]
	movups	xmm1, xmmword ptr [rbx - 0x20]
	movups	xmmword ptr [rdi - 0x30], xmm0
	movups	xmmword ptr [rdi - 0x20], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x10]
	movups	xmm1, xmmword ptr [rbx]
	movups	xmmword ptr [rdi - 0x10], xmm0
	movups	xmmword ptr [rdi], xmm1
	add	rbx, 0x80
	add	rdi, 0x80
	add	rcx, -0x80
	jne	.label_267
.label_263:
	cmp	rax, r8
	je	.label_257
	lea	rdi, [r14 + r8]
	add	r13, r8
	jmp	.label_256
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404460

	.globl print_stat
	.type print_stat, @function
print_stat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, r9
	mov	r15, r8
	mov	r12, rsi
	mov	r14, rdi
	add	edx, -0x41
	cmp	edx, 0x39
	ja	.label_284
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_290]]
.label_1026:
	mov	esi, OFFSET FLAT:human_access.modebuf
	mov	rdi, rbx
	call	filemodestring
	mov	byte ptr [byte ptr [rip + label_292]],  0
	mov	edx, OFFSET FLAT:human_access.modebuf
	jmp	.label_277
.label_1027:
	mov	edx, 0x200
	jmp	.label_282
.label_1028:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.208
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	word ptr [r14 + r12], 0x73
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.198
	xor	eax, eax
	mov	rsi, r14
	call	__printf_chk
	mov	r13b, 1
	jmp	.label_279
.label_1029:
	mov	rdx, qword ptr [rbx]
	jmp	.label_274
.label_284:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_275
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x3f
	jmp	.label_276
.label_1030:
	mov	rdi, rbx
	call	file_type
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, rax
	call	out_string
	jmp	.label_276
.label_1031:
	mov	edi, dword ptr [rbx + 0x20]
	call	getgrgid
	jmp	.label_286
.label_1032:
	xor	r13d, r13d
	xor	edi, edi
	call	get_quoting_style
	mov	edi, eax
	mov	rsi, r15
	call	quotearg_style
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, rax
	call	out_string
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	jne	.label_279
	mov	rsi, qword ptr [rbx + 0x30]
	mov	rdi, r15
	call	areadlink_with_size
	mov	rbx, rax
	test	rbx, rbx
	je	.label_272
	xor	r13d, r13d
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.195
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	call	get_quoting_style
	mov	edi, eax
	mov	rsi, rbx
	call	quotearg_style
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, rax
	call	out_string
	mov	rdi, rbx
	call	free
	jmp	.label_279
.label_1033:
	mov	rdx, qword ptr [rbx + 0x28]
	movzx	eax, dl
	shr	rdx, 0xc
	and	edx, 0xffffff00
	jmp	.label_300
.label_1034:
	mov	edi, dword ptr [rbx + 0x1c]
	call	getpwuid
.label_286:
	mov	edx, OFFSET FLAT:.str.196
	test	rax, rax
	je	.label_277
	mov	rdx, qword ptr [rax]
	jmp	.label_277
.label_1035:
	xor	r13d, r13d
	xor	edx, edx
	xor	ecx, ecx
	mov	rdi, r14
	mov	rsi, r12
	call	out_epoch_sec
	jmp	.label_279
.label_1036:
	mov	rdx, qword ptr [rbx + 0x48]
	mov	rcx, qword ptr [rbx + 0x50]
	jmp	.label_281
.label_1037:
	mov	rdx, qword ptr [rbx + 0x58]
	mov	rcx, qword ptr [rbx + 0x60]
	jmp	.label_281
.label_1038:
	mov	rdx, qword ptr [rbx + 0x68]
	mov	rcx, qword ptr [rbx + 0x70]
.label_281:
	mov	rdi, r14
	mov	rsi, r12
	call	out_epoch_sec
	jmp	.label_276
.label_1039:
	mov	eax, dword ptr [rbx + 0x18]
	and	eax, 0xfff
	mov	qword ptr [rsp], rax
	lea	r15, [r14 + 1]
	lea	rbp, [r14 + r12]
	mov	r13, r15
	cmp	r12, 2
	jl	.label_287
	nop	dword ptr [rax + rax]
.label_296:
	mov	bl, byte ptr [r13]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_287
	mov	eax, 1
	mov	cl, bl
	shl	rax, cl
	movzx	ecx, bl
	cmp	ecx, 0x3f
	ja	.label_288
	movabs	rcx, 0x1200800000001
	and	rax, rcx
	je	.label_288
	mov	byte ptr [r15], bl
	inc	r15
.label_288:
	inc	r13
	cmp	r13, rbp
	jb	.label_296
.label_287:
	cmp	r13, rbp
	jae	.label_298
	mov	rax, r12
	sub	rax, r13
	add	rax, r14
	cmp	rax, 0x1f
	jbe	.label_270
	mov	rbx, rax
	and	rbx, 0xffffffffffffffe0
	je	.label_270
	lea	rdx, [r14 + r12 - 1]
	cmp	r15, rdx
	ja	.label_273
	dec	r12
	sub	r12, r13
	add	r12, r14
	add	r12, r15
	cmp	r13, r12
	ja	.label_273
.label_270:
	mov	rsi, r15
	mov	rdx, qword ptr [rsp]
	nop	word ptr cs:[rax + rax]
.label_278:
	mov	cl, byte ptr [r13]
	inc	r13
	mov	byte ptr [rsi], cl
	inc	rsi
	cmp	rbp, r13
	jne	.label_278
.label_283:
	add	r15, rax
	jmp	.label_280
.label_1040:
	mov	rdx, qword ptr [rbx + 0x40]
	jmp	.label_282
.label_1041:
	mov	rdx, qword ptr [rbx]
	jmp	.label_282
.label_1042:
	mov	edx, dword ptr [rbx + 0x18]
	jmp	.label_274
.label_1043:
	mov	edx, dword ptr [rbx + 0x20]
	jmp	.label_282
.label_1044:
	mov	rdx, qword ptr [rbx + 0x10]
	jmp	.label_282
.label_1045:
	mov	rdx, qword ptr [rbx + 8]
	jmp	.label_282
.label_1046:
	mov	al,  byte ptr [byte ptr [rip + follow_links]]
	and	al, 1
	jne	.label_289
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	je	.label_291
.label_289:
	mov	rdi, r15
	call	canonicalize_file_name
	mov	rbp, rax
	test	rbp, rbp
	je	.label_293
	mov	rdi, rbp
	call	find_bind_mount
	mov	r13, rax
	mov	rdi, rbp
	call	free
	mov	rax, r13
	xor	ebp, ebp
	test	rax, rax
	je	.label_291
	xor	r13d, r13d
	jmp	.label_297
.label_1047:
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, r15
	call	out_string
	jmp	.label_276
.label_1048:
	mov	rax, qword ptr [rbx + 0x38]
	movabs	rcx, 0x2000000000000001
	cmp	rax, rcx
	mov	ecx, 0x200
	mov	edx, 0x200
	cmovb	rdx, rax
	test	rax, rax
	cmovle	rdx, rcx
	jmp	.label_282
.label_1049:
	mov	rdx, qword ptr [rbx + 0x30]
	mov	rdi, r14
	mov	rsi, r12
	call	out_int
	jmp	.label_276
.label_1050:
	mov	rdx, qword ptr [rbx + 0x28]
	mov	rax, rdx
	shr	rax, 8
	and	eax, 0xfff
	shr	rdx, 0x20
	and	edx, 0xfffff000
.label_300:
	or	rdx, rax
.label_274:
	mov	rdi, r14
	mov	rsi, r12
	call	out_uint_x
	jmp	.label_276
.label_1051:
	mov	edx, dword ptr [rbx + 0x1c]
.label_282:
	mov	rdi, r14
	mov	rsi, r12
	call	out_uint
	jmp	.label_276
.label_1052:
	mov	edx, OFFSET FLAT:.str.59
	jmp	.label_277
.label_1053:
	mov	rdi, qword ptr [rbx + 0x48]
	mov	rsi, qword ptr [rbx + 0x50]
	jmp	.label_285
.label_1054:
	mov	rdi, qword ptr [rbx + 0x58]
	mov	rsi, qword ptr [rbx + 0x60]
	jmp	.label_285
.label_1055:
	mov	rdi, qword ptr [rbx + 0x68]
	mov	rsi, qword ptr [rbx + 0x70]
.label_285:
	call	human_time
	mov	edx, OFFSET FLAT:human_time.str
.label_277:
	mov	rdi, r14
	mov	rsi, r12
	call	out_string
.label_276:
	xor	r13d, r13d
.label_279:
	mov	al, r13b
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_298:
	mov	rdx, qword ptr [rsp]
.label_280:
	mov	byte ptr [r15 + 2], 0
	mov	word ptr [r15], 0x6f6c
	xor	r13d, r13d
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r14
	call	__printf_chk
	jmp	.label_279
.label_291:
	mov	rdi, r15
	mov	rsi, rbx
	call	find_mount_point
	mov	rbx, rax
	mov	r13b, 1
	xor	eax, eax
	test	rbx, rbx
	mov	ebp, 0
	je	.label_297
	mov	rdi, rbx
	call	find_bind_mount
	xor	r13d, r13d
	mov	rbp, rbx
	jmp	.label_297
.label_293:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.199
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	xor	eax, eax
	mov	r13b, 1
	xor	ebp, ebp
.label_297:
	test	rbp, rbp
	mov	edx, OFFSET FLAT:.str.198
	cmovne	rdx, rbp
	test	rax, rax
	cmovne	rdx, rax
	mov	rdi, r14
	mov	rsi, r12
	call	out_string
	mov	rdi, rbp
	call	free
	jmp	.label_279
.label_272:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.194
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	r13b, 1
	jmp	.label_279
.label_273:
	lea	rdx, [rax - 0x20]
	mov	esi, edx
	shr	esi, 5
	inc	esi
	xor	edi, edi
	test	sil, 3
	je	.label_294
	lea	esi, [rax - 0x20]
	shr	esi, 5
	inc	esi
	and	esi, 3
	neg	rsi
	xor	edi, edi
.label_295:
	movups	xmm0, xmmword ptr [r13 + rdi]
	movups	xmm1, xmmword ptr [r13 + rdi + 0x10]
	movups	xmmword ptr [r15 + rdi], xmm0
	movups	xmmword ptr [r15 + rdi + 0x10], xmm1
	add	rdi, 0x20
	inc	rsi
	jne	.label_295
.label_294:
	cmp	rdx, 0x60
	mov	rdx, qword ptr [rsp]
	jb	.label_299
	mov	rcx, rbx
	sub	rcx, rdi
	lea	rsi, [r13 + rdi + 0x70]
	lea	rdi, [r15 + rdi + 0x70]
.label_271:
	movups	xmm0, xmmword ptr [rsi - 0x70]
	movups	xmm1, xmmword ptr [rsi - 0x60]
	movups	xmmword ptr [rdi - 0x70], xmm0
	movups	xmmword ptr [rdi - 0x60], xmm1
	movups	xmm0, xmmword ptr [rsi - 0x50]
	movups	xmm1, xmmword ptr [rsi - 0x40]
	movups	xmmword ptr [rdi - 0x50], xmm0
	movups	xmmword ptr [rdi - 0x40], xmm1
	movups	xmm0, xmmword ptr [rsi - 0x30]
	movups	xmm1, xmmword ptr [rsi - 0x20]
	movups	xmmword ptr [rdi - 0x30], xmm0
	movups	xmmword ptr [rdi - 0x20], xmm1
	movups	xmm0, xmmword ptr [rsi - 0x10]
	movups	xmm1, xmmword ptr [rsi]
	movups	xmmword ptr [rdi - 0x10], xmm0
	movups	xmmword ptr [rdi], xmm1
	add	rsi, 0x80
	add	rdi, 0x80
	add	rcx, -0x80
	jne	.label_271
.label_299:
	cmp	rax, rbx
	je	.label_283
	lea	rsi, [r15 + rbx]
	add	r13, rbx
	jmp	.label_278
.label_275:
	mov	esi, 0x3f
	call	__overflow
	jmp	.label_276
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a80

	.globl human_time
	.type human_time, @function
human_time:
	push	rbx
	sub	rsp, 0x60
	mov	rbx, rsi
	mov	qword ptr [rsp + 0x50], rdi
	mov	qword ptr [rsp + 0x58], rbx
	mov	rdi,  qword ptr [word ptr [rip + human_time.tz]]
	test	rdi, rdi
	jne	.label_301
	mov	edi, OFFSET FLAT:.str_2
	call	getenv
	mov	rdi, rax
	call	tzalloc
	mov	rdi, rax
	mov	qword ptr [word ptr [rip + human_time.tz]],  rdi
.label_301:
	lea	rsi, [rsp + 0x50]
	lea	rdx, [rsp + 0x18]
	call	localtime_rz
	test	rax, rax
	je	.label_302
	mov	r8,  qword ptr [word ptr [rip + human_time.tz]]
	lea	rcx, [rsp + 0x18]
	mov	edi, OFFSET FLAT:human_time.str
	mov	esi, 0x3d
	mov	edx, OFFSET FLAT:.str.203
	mov	r9d, ebx
	call	nstrftime
	jmp	.label_303
.label_302:
	mov	rdi, qword ptr [rsp + 0x50]
	lea	rsi, [rsp]
	call	imaxtostr
	mov	r8, rax
	mov	edi, OFFSET FLAT:human_time.str
	mov	esi, 1
	mov	edx, 0x3d
	mov	ecx, OFFSET FLAT:.str.204
	xor	eax, eax
	mov	r9d, ebx
	call	__sprintf_chk
.label_303:
	add	rsp, 0x60
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b30

	.globl out_epoch_sec
	.type out_epoch_sec, @function
out_epoch_sec:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x28], rcx
	mov	r13, rdx
	mov	rbp, rsi
	mov	r14, rdi
	mov	esi, 0x2e
	mov	rdx, rbp
	call	memchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_337
	mov	r12, rbx
	sub	r12, r14
	mov	byte ptr [r14 + rbp], 0
	movsx	eax, byte ptr [rbx + 1]
	add	eax, -0x30
	mov	r15d, 9
	cmp	eax, 9
	ja	.label_342
	mov	rdi, rbx
	inc	rdi
	xor	esi, esi
	mov	edx, 0xa
	call	strtol
	cmp	rax, 0x7fffffff
	mov	r15d, 0x7fffffff
	cmovle	r15d, eax
	test	r15d, r15d
	je	.label_315
.label_342:
	movsx	eax, byte ptr [rbx - 1]
	add	eax, -0x30
	xor	ecx, ecx
	cmp	eax, 9
	ja	.label_321
	mov	byte ptr [rbx], 0
	nop	word ptr cs:[rax + rax]
.label_335:
	movsx	eax, byte ptr [rbx - 2]
	dec	rbx
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_335
	xor	ebp, ebp
	xor	esi, esi
	mov	edx, 0xa
	mov	rdi, rbx
	call	strtol
	cmp	rax, 0x7fffffff
	mov	edx, 0x7fffffff
	cmovle	rdx, rax
	mov	ecx, 0x7fffffff
	cmovle	ecx, eax
	cmp	ecx, 2
	jl	.label_321
	mov	qword ptr [rsp + 0x30], rcx
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x30
	sete	cl
	movzx	ecx, cl
	add	rcx, rbx
	mov	r12, rcx
	sub	r12, r14
	mov	rsi,  qword ptr [word ptr [rip + decimal_point_len]]
	movsxd	rdx, edx
	mov	edi, edx
	sub	edi, esi
	cmp	rdx, rsi
	cmova	ebp, edi
	cmp	ebp, 2
	jl	.label_329
	sub	ebp, r15d
	cmp	ebp, 2
	jl	.label_329
	xor	r12d, r12d
	cmp	rcx, r14
	mov	rdi, r14
	jbe	.label_333
	movzx	eax, al
	cmp	eax, 0x30
	sete	al
	movzx	eax, al
	add	rbx, rax
	xor	eax, eax
	mov	rcx, r14
	mov	rdi, r14
	nop	dword ptr [rax]
.label_305:
	movzx	edx, byte ptr [rcx]
	cmp	edx, 0x2d
	jne	.label_307
	mov	al, 1
	jmp	.label_347
	nop	dword ptr [rax]
.label_307:
	mov	byte ptr [rdi], dl
	inc	rdi
.label_347:
	inc	rcx
	cmp	rbx, rcx
	jne	.label_305
	mov	r12, rdi
	sub	r12, r14
	xor	ecx, ecx
	test	al, 1
	jne	.label_310
.label_333:
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.205
	xor	eax, eax
	mov	r8d, ebp
	call	__sprintf_chk
	movsxd	rcx, eax
.label_310:
	add	r12, rcx
.label_329:
	mov	rcx, qword ptr [rsp + 0x30]
.label_321:
	mov	qword ptr [rsp + 0x30], rcx
	cmp	r15d, 8
	jg	.label_326
	mov	rbp, r12
	jmp	.label_332
.label_337:
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	r15d, r15d
	jmp	.label_332
.label_326:
	mov	edi, 1
	mov	ebx, 9
	jmp	.label_339
.label_315:
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, r12
	xor	r15d, r15d
.label_332:
	mov	eax, 9
	mov	ecx, 9
	sub	ecx, r15d
	mov	edi, 1
	cmp	ecx, 7
	ja	.label_346
	mov	esi, r15d
	jmp	.label_311
.label_346:
	mov	edx, ecx
	and	edx, 0xfffffff8
	mov	r8d, ecx
	and	r8d, 0xfffffff8
	mov	esi, r15d
	je	.label_311
	mov	esi, 1
	sub	esi, r15d
	mov	edi, esi
	shr	edi, 3
	inc	edi
	test	dil, 7
	je	.label_320
	and	edi, 7
	neg	edi
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_324]]
	xor	ebx, ebx
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_327]]
	movdqa	xmm1, xmm0
	nop	dword ptr [rax + rax]
.label_340:
	pshufd	xmm3, xmm0, 0xf5
	pmuludq	xmm0, xmm2
	pshufd	xmm0, xmm0, 0xe8
	pmuludq	xmm3, xmm2
	pshufd	xmm3, xmm3, 0xe8
	punpckldq	xmm0, xmm3
	pshufd	xmm3, xmm1, 0xf5
	pmuludq	xmm1, xmm2
	pshufd	xmm1, xmm1, 0xe8
	pmuludq	xmm3, xmm2
	pshufd	xmm3, xmm3, 0xe8
	punpckldq	xmm1, xmm3
	add	ebx, 8
	inc	edi
	jne	.label_340
	jmp	.label_316
.label_320:
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_324]]
	xor	ebx, ebx
	movdqa	xmm1, xmm0
.label_316:
	cmp	esi, 0x38
	jb	.label_312
	mov	esi, 9
	sub	esi, r15d
	and	esi, 0xfffffff8
	sub	esi, ebx
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_322]]
	nop	word ptr [rax + rax]
.label_336:
	pshufd	xmm3, xmm0, 0xf5
	pmuludq	xmm0, xmm2
	pshufd	xmm0, xmm0, 0xe8
	pmuludq	xmm3, xmm2
	pshufd	xmm3, xmm3, 0xe8
	punpckldq	xmm0, xmm3
	pshufd	xmm3, xmm1, 0xf5
	pmuludq	xmm1, xmm2
	pshufd	xmm1, xmm1, 0xe8
	pmuludq	xmm3, xmm2
	pshufd	xmm3, xmm3, 0xe8
	punpckldq	xmm1, xmm3
	add	esi, -0x40
	jne	.label_336
.label_312:
	pshufd	xmm2, xmm1, 0xf5
	pmuludq	xmm1, xmm0
	pshufd	xmm1, xmm1, 0xe8
	pshufd	xmm0, xmm0, 0xf5
	pmuludq	xmm0, xmm2
	pshufd	xmm0, xmm0, 0xe8
	punpckldq	xmm1, xmm0
	pshufd	xmm0, xmm1, 0x4e
	pshufd	xmm2, xmm1, 0xf5
	pmuludq	xmm1, xmm0
	pshufd	xmm1, xmm1, 0xe8
	pshufd	xmm0, xmm0, 0xf5
	pmuludq	xmm0, xmm2
	pshufd	xmm0, xmm0, 0xe8
	punpckldq	xmm1, xmm0
	pshufd	xmm0, xmm1, 0xe5
	pshufd	xmm2, xmm1, 0xf5
	pmuludq	xmm1, xmm0
	pshufd	xmm1, xmm1, 0xe8
	pshufd	xmm0, xmm0, 0xf5
	pmuludq	xmm0, xmm2
	pshufd	xmm0, xmm0, 0xe8
	punpckldq	xmm1, xmm0
	movd	edi, xmm1
	cmp	ecx, r8d
	je	.label_309
	add	edx, r15d
	mov	esi, edx
.label_311:
	sub	eax, esi
	nop	word ptr cs:[rax + rax]
.label_313:
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	dec	eax
	jne	.label_313
.label_309:
	mov	ebx, r15d
	mov	r12, rbp
.label_339:
	mov	rbp, qword ptr [rsp + 0x28]
	movsxd	rsi, edi
	mov	rax, rbp
	cqo	
	idiv	rsi
	mov	rdi, rax
	test	r13, r13
	jns	.label_317
	test	rbp, rbp
	je	.label_317
	mov	eax, 0x3b9aca00
	xor	edx, edx
	idiv	esi
	mov	ecx, eax
	sub	ecx, edi
	mov	rax, rbp
	cqo	
	idiv	rsi
	test	rdx, rdx
	setne	al
	movzx	eax, al
	sub	ecx, eax
	setne	al
	movzx	eax, al
	add	r13, rax
	je	.label_325
	mov	qword ptr [rsp + 0x28], rcx
	jmp	.label_343
.label_317:
	mov	qword ptr [rsp + 0x28], rdi
.label_343:
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, r13
	call	out_int
	jmp	.label_304
.label_325:
	mov	qword ptr [rsp + 0x28], rcx
	mov	dword ptr [rsp + 0x1c], ebx
	mov	rax, r14
	mov	qword ptr [rsp + 0x20], rax
	lea	r14, [rax + 1]
	lea	rbp, [rax + r12]
	mov	r13, r14
	cmp	r12, 2
	jl	.label_306
	nop	dword ptr [rax + rax]
.label_344:
	mov	bl, byte ptr [r13]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_306
	mov	eax, 1
	mov	cl, bl
	shl	rax, cl
	movzx	ecx, bl
	cmp	ecx, 0x3f
	ja	.label_314
	movabs	rcx, 0x1288100000001
	and	rax, rcx
	je	.label_314
	mov	byte ptr [r14], bl
	inc	r14
.label_314:
	inc	r13
	cmp	r13, rbp
	jb	.label_344
.label_306:
	cmp	r13, rbp
	jae	.label_348
	mov	rax, r12
	sub	rax, r13
	add	rax, qword ptr [rsp + 0x20]
	cmp	rax, 0x1f
	mov	ebx, dword ptr [rsp + 0x1c]
	jbe	.label_338
	mov	rcx, rax
	and	rcx, 0xffffffffffffffe0
	je	.label_338
	mov	rsi, qword ptr [rsp + 0x20]
	lea	rdx, [rsi + r12 - 1]
	cmp	r14, rdx
	ja	.label_318
	dec	r12
	sub	r12, r13
	add	r12, rsi
	add	r12, r14
	cmp	r13, r12
	ja	.label_318
.label_338:
	mov	rdx, r14
	nop	dword ptr [rax + rax]
.label_341:
	mov	cl, byte ptr [r13]
	inc	r13
	mov	byte ptr [rdx], cl
	inc	rdx
	cmp	rbp, r13
	jne	.label_341
.label_323:
	add	r14, rax
	jmp	.label_331
.label_348:
	mov	ebx, dword ptr [rsp + 0x1c]
.label_331:
	mov	dword ptr [r14], 0x66302e
	movsd	xmm0,  qword ptr [word ptr [rip + label_349]]
	mov	edi, 1
	mov	al, 1
	mov	rsi, qword ptr [rsp + 0x20]
	call	__printf_chk
.label_304:
	mov	rdx, qword ptr [rsp + 0x30]
	test	r15d, r15d
	je	.label_308
	sub	r15d, ebx
	xor	r9d, r9d
	test	eax, eax
	cmovs	eax, r9d
	sub	edx, eax
	jle	.label_319
	mov	rax,  qword ptr [word ptr [rip + decimal_point_len]]
	movsxd	rcx, edx
	cmp	rcx, rax
	jbe	.label_319
	sub	edx, ebx
	sub	edx, eax
	mov	r9d, edx
.label_319:
	mov	rdx,  qword ptr [word ptr [rip + decimal_point]]
	mov	dword ptr [rsp], r15d
	mov	dword ptr [rsp + 8], 0
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.206
	xor	eax, eax
	mov	r8, qword ptr [rsp + 0x28]
	mov	ecx, ebx
	call	__printf_chk
.label_308:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_318:
	lea	rdx, [rax - 0x20]
	mov	esi, edx
	shr	esi, 5
	inc	esi
	xor	edi, edi
	test	sil, 3
	je	.label_345
	lea	esi, [rax - 0x20]
	shr	esi, 5
	inc	esi
	and	esi, 3
	neg	rsi
	xor	edi, edi
	nop	word ptr [rax + rax]
.label_328:
	movdqu	xmm0, xmmword ptr [r13 + rdi]
	movdqu	xmm1, xmmword ptr [r13 + rdi + 0x10]
	movdqu	xmmword ptr [r14 + rdi], xmm0
	movdqu	xmmword ptr [r14 + rdi + 0x10], xmm1
	add	rdi, 0x20
	inc	rsi
	jne	.label_328
.label_345:
	cmp	rdx, 0x60
	jb	.label_330
	mov	rdx, rcx
	sub	rdx, rdi
	lea	rsi, [r13 + rdi + 0x70]
	lea	rdi, [r14 + rdi + 0x70]
	nop	word ptr [rax + rax]
.label_334:
	movups	xmm0, xmmword ptr [rsi - 0x70]
	movups	xmm1, xmmword ptr [rsi - 0x60]
	movups	xmmword ptr [rdi - 0x70], xmm0
	movups	xmmword ptr [rdi - 0x60], xmm1
	movups	xmm0, xmmword ptr [rsi - 0x50]
	movups	xmm1, xmmword ptr [rsi - 0x40]
	movups	xmmword ptr [rdi - 0x50], xmm0
	movups	xmmword ptr [rdi - 0x40], xmm1
	movups	xmm0, xmmword ptr [rsi - 0x30]
	movups	xmm1, xmmword ptr [rsi - 0x20]
	movups	xmmword ptr [rdi - 0x30], xmm0
	movups	xmmword ptr [rdi - 0x20], xmm1
	movdqu	xmm0, xmmword ptr [rsi - 0x10]
	movdqu	xmm1, xmmword ptr [rsi]
	movdqu	xmmword ptr [rdi - 0x10], xmm0
	movdqu	xmmword ptr [rdi], xmm1
	add	rsi, 0x80
	add	rdi, 0x80
	add	rdx, -0x80
	jne	.label_334
.label_330:
	cmp	rax, rcx
	je	.label_323
	lea	rdx, [r14 + rcx]
	add	r13, rcx
	jmp	.label_341
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405150

	.globl find_bind_mount
	.type find_bind_mount, @function
find_bind_mount:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x120
	mov	r14, rdi
	mov	al,  byte ptr [byte ptr [rip + find_bind_mount.tried_mount_list]]
	and	al, 1
	jne	.label_353
	xor	edi, edi
	call	read_file_system_list
	mov	qword ptr [word ptr [rip + find_bind_mount.mount_list]],  rax
	test	rax, rax
	jne	.label_354
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.201
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_354:
	mov	byte ptr [byte ptr [rip + find_bind_mount.tried_mount_list]],  1
.label_353:
	lea	rdx, [rsp + 0x90]
	mov	edi, 1
	mov	rsi, r14
	call	__xstat
	xor	r12d, r12d
	test	eax, eax
	jne	.label_350
	mov	rbx,  qword ptr [word ptr [rip + find_bind_mount.mount_list]]
	xor	r12d, r12d
	test	rbx, rbx
	je	.label_350
	xor	r12d, r12d
	lea	r15, [rsp]
	nop	dword ptr [rax + rax]
.label_352:
	test	byte ptr [rbx + 0x28], 1
	je	.label_351
	mov	r13, qword ptr [rbx]
	movzx	eax, byte ptr [r13]
	cmp	eax, 0x2f
	jne	.label_351
	mov	rdi, qword ptr [rbx + 8]
	mov	rsi, r14
	call	strcmp
	test	eax, eax
	jne	.label_351
	mov	edi, 1
	mov	rsi, r13
	mov	rdx, r15
	call	__xstat
	test	eax, eax
	jne	.label_351
	mov	rax, qword ptr [rsp + 0x98]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_351
	mov	rax, qword ptr [rsp + 0x90]
	cmp	rax, qword ptr [rsp]
	je	.label_355
	nop	word ptr cs:[rax + rax]
.label_351:
	mov	rbx, qword ptr [rbx + 0x30]
	test	rbx, rbx
	jne	.label_352
.label_350:
	mov	rax, r12
	add	rsp, 0x120
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_355:
	mov	r12, qword ptr [rbx]
	jmp	.label_350
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405280

	.globl find_mount_point
	.type find_mount_point, @function
find_mount_point:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x130
	mov	rbx, rsi
	mov	r14, rdi
	lea	rdi, [rbp - 0x30]
	call	save_cwd
	test	eax, eax
	je	.label_361
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_4
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	jmp	.label_364
.label_361:
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0x4000
	jne	.label_366
	lea	rdi, [rbp - 0xc0]
	mov	edx, 0x90
	mov	rsi, rbx
	call	memcpy
	mov	rdi, r14
	call	chdir
	test	eax, eax
	jns	.label_356
	jmp	.label_357
.label_366:
	mov	rdi, r14
	call	dir_name
	mov	rbx, rax
	mov	rdi, rbx
	call	strlen
	mov	r14, rsp
	lea	rdx, [rax + 1]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	sub	r14, rax
	mov	rsp, r14
	mov	rdi, r14
	mov	rsi, rbx
	call	memcpy
	mov	rdi, rbx
	call	free
	mov	rdi, r14
	call	chdir
	test	eax, eax
	js	.label_357
	lea	rdx, [rbp - 0xc0]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str_1
	call	__xstat
	test	eax, eax
	js	.label_367
.label_356:
	lea	rdx, [rbp - 0x150]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.4_0
	call	__xstat
	test	eax, eax
	js	.label_358
	lea	r14, [rbp - 0xc0]
	lea	rbx, [rbp - 0x150]
	nop	dword ptr [rax + rax]
.label_363:
	mov	rax, qword ptr [rbp - 0x150]
	cmp	rax, qword ptr [rbp - 0xc0]
	jne	.label_360
	mov	rax, qword ptr [rbp - 0x148]
	cmp	rax, qword ptr [rbp - 0xb8]
	je	.label_360
	mov	edi, OFFSET FLAT:.str.4_0
	call	chdir
	test	eax, eax
	js	.label_365
	mov	edx, 0x90
	mov	rdi, r14
	mov	rsi, rbx
	call	memcpy
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.4_0
	mov	rdx, rbx
	call	__xstat
	test	eax, eax
	jns	.label_363
.label_358:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_0
	jmp	.label_359
.label_357:
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, rbx
	call	error
	jmp	.label_364
.label_360:
	call	xgetcwd
	mov	r15, rax
	jmp	.label_362
.label_367:
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, rbx
	call	error
	jmp	.label_362
.label_365:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_0
.label_359:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:.str.4_0
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
	xor	r15d, r15d
.label_362:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	lea	rdi, [rbp - 0x30]
	call	restore_cwd
	test	eax, eax
	jne	.label_368
	lea	rdi, [rbp - 0x30]
	call	free_cwd
	mov	dword ptr [rbx], r14d
.label_364:
	mov	rax, r15
	lea	rsp, [rbp - 0x20]
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_368:
	mov	ebx, dword ptr [rbx]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x405540

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
	je	.label_370
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	movabs	r15, 0x7fffffffffffffff
	nop	word ptr cs:[rax + rax]
.label_369:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbx
	mov	rdx, r12
	call	readlink
	mov	r13, rax
	test	r13, r13
	jns	.label_375
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	jne	.label_373
.label_375:
	cmp	r13, r12
	jb	.label_377
	mov	rdi, rbx
	call	free
	mov	rax, r12
	shr	rax, 0x3e
	jne	.label_372
	add	r12, r12
	jmp	.label_376
	nop	word ptr cs:[rax + rax]
.label_372:
	cmp	r12, r15
	mov	r12, r15
	jae	.label_371
.label_376:
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_369
	jmp	.label_370
.label_377:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp + 8], rbx
	jmp	.label_370
.label_371:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_374
.label_373:
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
.label_374:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
.label_370:
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
	#Procedure 0x405650

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405660

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rcx
	mov	r14, rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0x20], rbp
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_379
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, r14
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	nop	
.label_378:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_384
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_381
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_383
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_382
	mov	rdi, qword ptr [rsp + 0x18]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_384
.label_382:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_384
.label_383:
	mov	qword ptr [rsp + 0x18], rbp
	nop	word ptr [rax + rax]
.label_384:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_378
	jmp	.label_380
.label_379:
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_380:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 0x18]
.label_381:
	mov	rax, rbp
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
	#Procedure 0x405760
	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r14, rdi
	xor	edi, edi
	cmp	rdx, -1
	je	.label_385
	mov	esi, OFFSET FLAT:.str.1_1
	jmp	.label_386
.label_385:
	mov	esi, OFFSET FLAT:.str_5
.label_386:
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r15
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	rsi, r14
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	error
	.section	.text
	.align	16
	#Procedure 0x4057d0

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r12, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp], rbx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbx]
	test	rbx, rbx
	je	.label_388
	xor	r13d, r13d
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_391:
	test	r15, r15
	je	.label_387
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_390
.label_387:
	mov	r13,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_1
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_392
	nop	word ptr cs:[rax + rax]
.label_390:
	mov	rbp,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.4_1
	xor	eax, eax
	mov	rdi, rbp
	call	__fprintf_chk
.label_392:
	mov	rax, qword ptr [rsp]
	mov	rbx, qword ptr [rax + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_391
.label_388:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_389
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_389:
	mov	esi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405900
	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	r14, rsi
	mov	rbp, rdi
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_394
	mov	qword ptr [rsp + 0x10], rbp
	xor	edi, edi
	cmp	rax, -1
	je	.label_395
	mov	esi, OFFSET FLAT:.str.1_1
	jmp	.label_393
.label_395:
	mov	esi, OFFSET FLAT:.str_5
.label_393:
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 8], rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r14
	call	quotearg_n_style
	mov	r14, rax
	mov	edi, 1
	mov	rsi, qword ptr [rsp + 0x10]
	call	quote_n
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	mov	rcx, r14
	mov	r8, rbp
	call	error
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	argmatch_valid
	call	rbx
	mov	rax, -1
.label_394:
	add	rsp, 0x18
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
	#Procedure 0x4059c0
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rcx
	mov	r15, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	r13, qword ptr [rbx]
	xor	eax, eax
	test	r13, r13
	je	.label_396
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_397:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_396
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_397
.label_396:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405a30
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a40
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a50

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_401
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_400
	cmp	dword ptr [rbp], 0x20
	jne	.label_400
.label_401:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_399
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_400:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_6
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_398
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_399:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_398:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_2
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x405b10

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rax
	call	mdir_name
	test	rax, rax
	je	.label_402
	pop	rcx
	ret	
.label_402:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405b30
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
.label_403:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_404
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_403
.label_404:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405b70

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
.label_407:
	mov	rbx, rax
	cmp	r15, rbx
	jae	.label_405
	lea	rax, [rbx - 1]
	movzx	ecx, byte ptr [r14 + rbx - 1]
	cmp	ecx, 0x2f
	je	.label_407
.label_405:
	test	rbx, rbx
	sete	al
	movzx	eax, al
	lea	rdi, [rbx + rax + 1]
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_408
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	test	rbx, rbx
	jne	.label_406
	mov	byte ptr [r15], 0x2e
	mov	ebx, 1
.label_406:
	mov	byte ptr [r15 + rbx], 0
	mov	rax, r15
.label_408:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405bf0

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_409:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	edx, 0x2f
	je	.label_409
	xor	r8d, r8d
	mov	rax, rdi
	jmp	.label_413
	nop	word ptr cs:[rax + rax]
.label_410:
	mov	dl, byte ptr [rax + 1]
	inc	rax
	mov	r8b, cl
.label_413:
	mov	cl, 1
	movzx	esi, dl
	cmp	esi, 0x2f
	je	.label_410
	test	dl, dl
	je	.label_411
	mov	cl, r8b
	and	cl, 1
	je	.label_412
	xor	r8d, r8d
.label_412:
	test	cl, cl
	cmovne	rdi, rax
	mov	cl, r8b
	jmp	.label_410
.label_411:
	mov	rax, rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c60
	.globl base_len
	.type base_len, @function
base_len:

	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_415:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_414
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_415
.label_414:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405c90

	.globl file_type
	.type file_type, @function
file_type:
	mov	eax, 0xf000
	and	eax, dword ptr [rdi + 0x18]
	cmp	eax, 0x5fff
	jle	.label_418
	cmp	eax, 0x9fff
	jg	.label_423
	cmp	eax, 0x6000
	je	.label_417
	cmp	eax, 0x8000
	jne	.label_416
	cmp	qword ptr [rdi + 0x30], 0
	je	.label_420
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 5
	jmp	dcgettext
.label_418:
	cmp	eax, 0x1000
	je	.label_419
	cmp	eax, 0x2000
	je	.label_422
	cmp	eax, 0x4000
	jne	.label_416
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_1
	mov	edx, 5
	jmp	dcgettext
.label_423:
	cmp	eax, 0xa000
	je	.label_421
	cmp	eax, 0xc000
	jne	.label_416
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_1
	mov	edx, 5
	jmp	dcgettext
.label_417:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	jmp	dcgettext
.label_419:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_1
	mov	edx, 5
	jmp	dcgettext
.label_422:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_1
	mov	edx, 5
	jmp	dcgettext
.label_421:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_2
	mov	edx, 5
	jmp	dcgettext
.label_416:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_1
	mov	edx, 5
	jmp	dcgettext
.label_420:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_7
	mov	edx, 5
	jmp	dcgettext
	nop	
	.section	.text
	.align	16
	#Procedure 0x405d80

	.globl strmode
	.type strmode, @function
strmode:
	mov	eax, edi
	mov	ecx, eax
	and	ecx, 0xf000
	cmp	ecx, 0x5fff
	jle	.label_424
	cmp	ecx, 0x9fff
	jg	.label_436
	cmp	ecx, 0x6000
	je	.label_432
	mov	dl, 0x2d
	cmp	ecx, 0x8000
	je	.label_427
	jmp	.label_430
.label_424:
	cmp	ecx, 0x1000
	je	.label_437
	cmp	ecx, 0x2000
	je	.label_440
	cmp	ecx, 0x4000
	jne	.label_430
	mov	dl, 0x64
	jmp	.label_427
.label_436:
	cmp	ecx, 0xa000
	je	.label_429
	cmp	ecx, 0xc000
	jne	.label_430
	mov	dl, 0x73
	jmp	.label_427
.label_432:
	mov	dl, 0x62
	jmp	.label_427
.label_437:
	mov	dl, 0x70
	jmp	.label_427
.label_429:
	mov	dl, 0x6c
	jmp	.label_427
.label_430:
	mov	dl, 0x3f
	jmp	.label_427
.label_440:
	mov	dl, 0x63
.label_427:
	push	rbx
	mov	byte ptr [rsi], dl
	mov	bl, ah
	test	bl, 1
	mov	r9b, 0x72
	mov	cl, 0x72
	jne	.label_439
	mov	cl, 0x2d
.label_439:
	mov	byte ptr [rsi + 1], cl
	mov	cl, al
	sar	cl, 7
	and	cl, 0x4a
	add	cl, 0x2d
	mov	byte ptr [rsi + 2], cl
	mov	ecx, eax
	and	ecx, 0x40
	mov	edx, ecx
	shr	edx, 1
	or	edx, 0x53
	test	ecx, ecx
	mov	r8b, 0x78
	mov	cl, 0x78
	jne	.label_425
	mov	cl, 0x2d
.label_425:
	test	bl, 8
	jne	.label_435
	mov	dl, cl
.label_435:
	mov	byte ptr [rsi + 3], dl
	test	al, 0x20
	mov	cl, 0x72
	jne	.label_434
	mov	cl, 0x2d
.label_434:
	mov	byte ptr [rsi + 4], cl
	test	al, 0x10
	mov	dl, 0x77
	mov	cl, 0x77
	jne	.label_442
	mov	cl, 0x2d
.label_442:
	mov	byte ptr [rsi + 5], cl
	mov	ecx, eax
	and	ecx, 8
	lea	edi, [rcx*4 + 0x53]
	mov	cl, 0x78
	jne	.label_428
	mov	cl, 0x2d
.label_428:
	test	bl, 4
	jne	.label_438
	mov	dil, cl
.label_438:
	mov	byte ptr [rsi + 6], dil
	test	al, 4
	jne	.label_433
	mov	r9b, 0x2d
.label_433:
	mov	byte ptr [rsi + 7], r9b
	test	al, 2
	jne	.label_431
	mov	dl, 0x2d
.label_431:
	mov	byte ptr [rsi + 8], dl
	and	eax, 1
	jne	.label_441
	mov	r8b, 0x2d
.label_441:
	test	bl, 2
	pop	rbx
	je	.label_426
	shl	eax, 5
	or	eax, 0x54
	mov	r8b, al
.label_426:
	mov	byte ptr [rsi + 9], r8b
	mov	byte ptr [rsi + 0xa], 0x20
	mov	byte ptr [rsi + 0xb], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405eb0

	.globl filemodestring
	.type filemodestring, @function
filemodestring:
	mov	edi, dword ptr [rdi + 0x18]
	jmp	strmode
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ec0

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_443
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_446:
	mov	rax, rcx
	imul	r8
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	sub	edi, r9d
	add	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	add	rdx, rax
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_446
	jmp	.label_445
.label_443:
	add	rsi, 0x15
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_444:
	mov	rax, rcx
	imul	r8
	mov	r10, rdx
	shr	r10, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + r10]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	sub	edi, r9d
	mov	eax, 0x30
	sub	eax, edi
	mov	byte ptr [rsi - 2], al
	add	rdx, r10
	add	rcx, 9
	dec	rsi
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_444
	mov	byte ptr [rsi - 2], 0x2d
	add	rsi, -2
.label_445:
	mov	rax, rsi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405f80

	.globl nstrftime
	.type nstrftime, @function
nstrftime:
	sub	rsp, 0x18
	mov	dword ptr [rsp + 0x10], r9d
	mov	qword ptr [rsp + 8], r8
	mov	dword ptr [rsp], 0xffffffff
	xor	r8d, r8d
	xor	r9d, r9d
	call	__strftime_internal
	add	rsp, 0x18
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405fb0

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x4a8
	mov	dword ptr [rsp + 0x5c], r8d
	mov	rbp, rdx
	mov	qword ptr [rsp + 0x70], rsi
	mov	eax, dword ptr [rcx + 8]
	mov	rdx, qword ptr [rcx + 0x30]
	test	rdx, rdx
	mov	esi, OFFSET FLAT:.str_0
	cmovne	rsi, rdx
	lea	edx, [rax - 0xc]
	test	eax, eax
	mov	ebx, 0xc
	cmovne	ebx, eax
	cmp	eax, 0xc
	cmovg	ebx, edx
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_610
	mov	dword ptr [rsp + 0x2c], ebx
	mov	qword ptr [rsp + 0x30], rsi
	mov	qword ptr [rsp + 0x48], rcx
	mov	dword ptr [rsp + 0x3c], r9d
	mov	r14d, dword ptr [rsp + 0x4e0]
	movabs	r15, 0x1000000000002500
	xor	esi, esi
	jmp	.label_598
.label_610:
	xor	esi, esi
	jmp	.label_454
.label_568:
	mov	edi, 3
	jmp	.label_499
	nop	word ptr cs:[rax + rax]
.label_598:
	movzx	ecx, al
	xor	r12d, r12d
	cmp	ecx, 0x25
	jne	.label_461
	mov	qword ptr [rsp + 0x78], rsi
	mov	eax, dword ptr [rsp + 0x5c]
	mov	bl, al
	xor	r13d, r13d
	jmp	.label_464
	nop	
.label_461:
	test	r14d, r14d
	mov	ecx, r14d
	mov	edx, 0
	cmovs	ecx, edx
	movsxd	rbx, ecx
	cmp	ebx, 1
	mov	edx, 1
	cmovbe	rbx, rdx
	mov	rdx, qword ptr [rsp + 0x70]
	sub	rdx, rsi
	cmp	rbx, rdx
	jae	.label_467
	test	rdi, rdi
	mov	edx, 0
	je	.label_473
	cmp	ecx, 2
	jb	.label_477
	movsxd	r14, r14d
	lea	rdx, [r14 - 1]
	mov	r12, rsi
	mov	esi, 0x20
	mov	r13, rdi
	call	memset
	mov	rdi, r13
	mov	rsi, r12
	lea	rdi, [rdi + r14 - 1]
	mov	al, byte ptr [rbp]
.label_477:
	mov	byte ptr [rdi], al
.label_510:
	inc	rdi
	mov	rdx, rdi
.label_473:
	add	rsi, rbx
	mov	rdi, rdx
	jmp	.label_490
	nop	word ptr cs:[rax + rax]
.label_556:
	mov	r12b, 1
	mov	al, bl
	jmp	.label_464
	nop	word ptr [rax + rax]
.label_500:
	inc	rbp
	mov	r13d, edx
.label_503:
	mov	cl, byte ptr [rbp]
	movsx	edx, cl
	lea	esi, [rdx - 0x23]
	cmp	esi, 0x3c
	ja	.label_496
	bt	r15, rsi
	jb	.label_500
	mov	al, 1
	test	rsi, rsi
	je	.label_556
	cmp	rsi, 0x3b
	jne	.label_496
.label_464:
	mov	bl, al
	inc	rbp
	jmp	.label_503
	nop	
.label_496:
	mov	qword ptr [rsp + 0x68], rdi
	add	edx, -0x30
	xor	eax, eax
	cmp	edx, 9
	ja	.label_506
	nop	
.label_593:
	mov	r14d, 0x7fffffff
	cmp	eax, 0xccccccc
	jg	.label_511
	movsx	ecx, cl
	cmp	eax, 0xccccccc
	jne	.label_515
	lea	edx, [rcx - 0x30]
	cmp	edx, 7
	jg	.label_511
.label_515:
	lea	eax, [rax + rax*4]
	lea	r14d, [rcx + rax*2 - 0x30]
.label_511:
	movsx	ecx, byte ptr [rbp + 1]
	inc	rbp
	mov	eax, ecx
	add	eax, -0x30
	cmp	eax, 0xa
	mov	eax, r14d
	jb	.label_593
.label_506:
	movsx	r9d, cl
	cmp	r9d, 0x4f
	je	.label_524
	cmp	r9d, 0x45
	jne	.label_525
.label_524:
	mov	qword ptr [rsp + 0x60], rbx
	mov	cl, byte ptr [rbp + 1]
	inc	rbp
	jmp	.label_526
.label_525:
	mov	qword ptr [rsp + 0x60], rbx
	xor	r9d, r9d
.label_526:
	movsx	r11d, cl
	xor	ebx, ebx
	mov	esi, 1
	lea	edx, [r11 - 0x25]
	cmp	edx, 0x55
	ja	.label_527
	mov	eax, OFFSET FLAT:.str.3_3
	mov	qword ptr [rsp + 0x50], rax
	mov	r8b, 0x72
	mov	r10d, 0xffffffff
	xor	eax, eax
	xor	edi, edi
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_534]]
.label_1094:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_449
	mov	rdx, qword ptr [rsp + 0x48]
	mov	r8d, dword ptr [rdx + 0x14]
	mov	r9d, dword ptr [rdx + 0x18]
	mov	eax, r8d
	sar	eax, 0x1f
	and	eax, 0x190
	lea	r12d, [r8 + rax - 0x64]
	mov	ebx, dword ptr [rdx + 0x1c]
	lea	eax, [rbx + 0x17e]
	sub	eax, r9d
	movsxd	rdx, eax
	imul	rax, rdx, -0x6db6db6d
	shr	rax, 0x20
	add	eax, edx
	mov	edi, eax
	shr	edi, 0x1f
	sar	eax, 2
	add	eax, edi
	lea	edi, [rax*8]
	sub	edi, eax
	sub	edx, edi
	lea	eax, [rbx + 3]
	sub	eax, edx
	js	.label_536
	mov	edx, 0x16d
	test	r12b, 3
	jne	.label_553
	movsxd	rdx, r12d
	imul	rdx, rdx, 0x51eb851f
	mov	rdi, rdx
	sar	rdi, 0x25
	mov	rsi, rdx
	shr	rsi, 0x3f
	add	edi, esi
	imul	edi, edi, 0x64
	sar	rdx, 0x27
	add	edx, esi
	imul	edx, edx, 0x190
	cmp	r12d, edx
	sete	dl
	movzx	esi, dl
	add	esi, 0x16d
	cmp	r12d, edi
	mov	edx, 0x16e
	cmove	edx, esi
.label_553:
	sub	ebx, edx
	lea	edx, [rbx + 0x17e]
	sub	edx, r9d
	movsxd	rdx, edx
	imul	rsi, rdx, -0x6db6db6d
	shr	rsi, 0x20
	add	esi, edx
	mov	edi, esi
	shr	edi, 0x1f
	sar	esi, 2
	add	esi, edi
	lea	edi, [rsi*8]
	sub	edi, esi
	sub	edx, edi
	add	ebx, 3
	sub	ebx, edx
	cmovns	eax, ebx
	shr	ebx, 0x1f
	xor	ebx, 1
	jmp	.label_576
	nop	dword ptr [rax]
.label_474:
	inc	rsi
.label_1088:
	movzx	eax, byte ptr [rbp + rsi]
	cmp	eax, 0x3a
	je	.label_474
	movzx	eax, al
	cmp	eax, 0x7a
	jne	.label_449
	add	rbp, rsi
	mov	rbx, rsi
.label_1125:
	mov	rax, qword ptr [rsp + 0x48]
	cmp	dword ptr [rax + 0x20], 0
	js	.label_577
	mov	r8d, dword ptr [rax + 0x28]
	mov	sil, 1
	test	r8d, r8d
	js	.label_578
	test	r8d, r8d
	je	.label_583
	xor	esi, esi
	jmp	.label_578
.label_1108:
	test	r12b, r12b
	je	.label_584
	mov	al, 1
	mov	qword ptr [rsp + 0x60], rax
.label_584:
	xor	eax, eax
	cmp	r9d, 0x45
	je	.label_449
	mov	r8b, cl
	jmp	.label_563
.label_527:
	test	r11d, r11d
	jne	.label_449
	dec	rbp
	jmp	.label_449
.label_1087:
	test	r9d, r9d
	jne	.label_449
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rdx, eax
	cmp	edx, 1
	mov	ebx, 1
	cmova	rbx, rdx
	mov	rdx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	sub	rdx, rsi
	cmp	rbx, rdx
	mov	rdi, qword ptr [rsp + 0x68]
	jae	.label_467
	xor	edx, edx
	test	rdi, rdi
	je	.label_473
	cmp	eax, 2
	jb	.label_605
	movsxd	r14, r14d
	dec	r14
	cmp	r13d, 0x30
	je	.label_607
	cmp	r13d, 0x2b
	jne	.label_476
.label_607:
	mov	r12, rsi
	mov	esi, 0x30
	jmp	.label_537
.label_1089:
	test	r9d, r9d
	jne	.label_449
	test	r12b, r12b
	je	.label_612
	mov	al, 1
	mov	qword ptr [rsp + 0x60], rax
.label_612:
	xor	eax, eax
	mov	r8b, 0x41
	jmp	.label_563
.label_1090:
	cmp	r9d, 0x45
	je	.label_449
	test	r12b, r12b
	je	.label_616
	mov	al, 1
	mov	qword ptr [rsp + 0x60], rax
.label_616:
	xor	eax, eax
	mov	r8b, 0x42
	jmp	.label_563
.label_1091:
	mov	r10d, r9d
	cmp	r10d, 0x45
	jne	.label_609
	mov	r9d, r10d
	xor	eax, eax
	mov	r8b, 0x43
	jmp	.label_563
.label_1092:
	test	r9d, r9d
	jne	.label_449
	mov	eax, OFFSET FLAT:.str.1_4
	mov	qword ptr [rsp + 0x50], rax
	mov	r10d, 0xffffffff
	jmp	.label_451
.label_1093:
	test	r9d, r9d
	jne	.label_449
	test	r13d, r13d
	jne	.label_460
	test	r14d, r14d
	jns	.label_460
	mov	eax, OFFSET FLAT:.str.2_2
	mov	qword ptr [rsp + 0x50], rax
	mov	r13d, 0x2b
	mov	r10d, 4
	jmp	.label_451
.label_1095:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_449
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 8]
	jmp	.label_456
.label_1096:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_449
	mov	edi, 2
	mov	eax, dword ptr [rsp + 0x2c]
	mov	edx, eax
	jmp	.label_468
.label_1097:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_449
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 4]
	jmp	.label_456
.label_1098:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_449
	cmp	r14d, -1
	je	.label_520
	cmp	r14d, 8
	jg	.label_489
	mov	esi, 9
	sub	esi, r14d
	mov	eax, 8
	sub	eax, r14d
	test	sil, 3
	mov	edx, dword ptr [rsp + 0x4f0]
	mov	ebx, r14d
	je	.label_494
	and	esi, 3
	neg	esi
	mov	edx, dword ptr [rsp + 0x4f0]
	mov	ebx, r14d
.label_545:
	movsxd	rdx, edx
	imul	rdx, rdx, 0x66666667
	mov	rdi, rdx
	shr	rdi, 0x3f
	sar	rdx, 0x22
	add	edx, edi
	inc	ebx
	inc	esi
	jne	.label_545
.label_494:
	cmp	eax, 3
	jae	.label_504
	mov	edi, r14d
	jmp	.label_468
.label_1099:
	mov	dil, 1
.label_1117:
	xor	ebx, ebx
	test	r12b, r12b
	je	.label_587
	mov	eax, 0
	mov	qword ptr [rsp + 0x60], rax
.label_587:
	je	.label_516
	mov	dil, 1
.label_516:
	mov	r8b, 0x70
	mov	al, dil
	jmp	.label_471
.label_1100:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_449
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax]
	jmp	.label_456
.label_1101:
	mov	eax, OFFSET FLAT:.str.4_2
.label_522:
	mov	qword ptr [rsp + 0x50], rax
.label_451:
	mov	dword ptr [rsp + 0x40], r10d
	mov	rax, qword ptr [rsp + 0x60]
	test	al, al
	setne	al
	mov	ecx, dword ptr [rsp + 0x4f0]
	mov	dword ptr [rsp + 0x10], ecx
	mov	rcx, qword ptr [rsp + 0x4e8]
	mov	qword ptr [rsp + 8], rcx
	mov	dword ptr [rsp], r10d
	movzx	r8d, al
	xor	ebx, ebx
	xor	edi, edi
	mov	rsi, -1
	mov	rdx, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r9d, r13d
	call	__strftime_internal
	mov	rdi, qword ptr [rsp + 0x68]
	test	r14d, r14d
	cmovns	ebx, r14d
	movsxd	rdx, ebx
	cmp	rax, rdx
	mov	rbx, rax
	cmovb	rbx, rdx
	mov	r12, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	sub	r12, rsi
	cmp	rbx, r12
	jae	.label_467
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_475
	cmp	rax, rdx
	jae	.label_542
	movsxd	rcx, r14d
	sub	rcx, rax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r13d, 0x30
	je	.label_547
	cmp	r13d, 0x2b
	jne	.label_550
.label_547:
	mov	esi, 0x30
	jmp	.label_551
.label_1102:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_449
	mov	rdx, qword ptr [rsp + 0x48]
	mov	eax, dword ptr [rdx + 0x1c]
	add	eax, 7
	sub	eax, dword ptr [rdx + 0x18]
	movsxd	rdx, eax
	jmp	.label_555
.label_1103:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_449
	mov	rdx, qword ptr [rsp + 0x48]
	mov	eax, dword ptr [rdx + 0x18]
	mov	edx, dword ptr [rdx + 0x1c]
	lea	esi, [rax + 6]
	movsxd	rsi, esi
	imul	rdi, rsi, -0x6db6db6d
	shr	rdi, 0x20
	lea	eax, [rdi + rax + 6]
	mov	edi, eax
	shr	edi, 0x1f
	sar	eax, 2
	add	eax, edi
	lea	edi, [rax*8]
	sub	edi, eax
	sub	esi, edi
	add	edx, 7
	sub	edx, esi
	movsxd	rdx, edx
.label_555:
	imul	rax, rdx, -0x6db6db6d
	shr	rax, 0x20
	add	edx, eax
	mov	eax, edx
	shr	eax, 0x1f
	sar	edx, 2
	add	edx, eax
	jmp	.label_456
.label_1104:
	cmp	r9d, 0x4f
	je	.label_449
	xor	eax, eax
	mov	r8b, 0x58
	jmp	.label_563
.label_1105:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_573
	cmp	r10d, 0x4f
	je	.label_449
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 0x14]
	cmp	edx, 0xfffff894
	setl	sil
	add	edx, 0x76c
	mov	edi, 4
	jmp	.label_459
.label_1106:
	mov	rdi, qword ptr [rsp + 0x30]
	call	strlen
	mov	rdi, qword ptr [rsp + 0x68]
	mov	r9, rax
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	cdqe	
	cmp	r9, rax
	mov	rbx, r9
	cmovb	rbx, rax
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	sub	rcx, rsi
	cmp	rbx, rcx
	jae	.label_467
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_475
	cmp	r9, rax
	jae	.label_594
	movsxd	r14, r14d
	sub	r14, r9
	mov	qword ptr [rsp + 0x50], r9
	cmp	r13d, 0x30
	je	.label_597
	cmp	r13d, 0x2b
	jne	.label_599
.label_597:
	mov	esi, 0x30
	jmp	.label_601
.label_1107:
	test	r9d, r9d
	jne	.label_449
	test	r12b, r12b
	je	.label_604
	mov	al, 1
	mov	qword ptr [rsp + 0x60], rax
.label_604:
	xor	eax, eax
	mov	r8b, 0x61
	jmp	.label_563
.label_1109:
	cmp	r9d, 0x4f
	je	.label_449
	xor	eax, eax
	mov	r8b, 0x63
	jmp	.label_563
.label_1110:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_449
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 0xc]
	jmp	.label_456
.label_1111:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_449
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 0xc]
	jmp	.label_462
.label_1112:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_449
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 0x1c]
	cmp	edx, -1
	setl	sil
	inc	edx
	mov	edi, 3
	jmp	.label_463
.label_1113:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_449
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 8]
	jmp	.label_462
.label_1114:
	mov	r10d, r9d
	cmp	r10d, 0x45
	mov	eax, dword ptr [rsp + 0x2c]
	mov	edx, eax
	je	.label_449
.label_462:
	test	r13d, r13d
	mov	eax, 0x5f
	cmove	r13d, eax
	jmp	.label_456
.label_1115:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_449
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 0x10]
	cmp	edx, -1
	setl	sil
	inc	edx
	mov	edi, 2
	jmp	.label_463
.label_1116:
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	sub	rcx, rsi
	cmp	rbx, rcx
	mov	rdi, qword ptr [rsp + 0x68]
	jae	.label_467
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_475
	cmp	eax, 2
	jb	.label_478
	mov	r12, rsi
	movsxd	r14, r14d
	dec	r14
	cmp	r13d, 0x30
	je	.label_480
	cmp	r13d, 0x2b
	jne	.label_484
.label_480:
	mov	esi, 0x30
	jmp	.label_486
.label_1118:
	mov	rax, qword ptr [rsp + 0x48]
	imul	edx, dword ptr [rax + 0x10], 0xb
	sar	edx, 5
	inc	edx
	mov	edi, 1
	xor	ebx, ebx
	xor	r8d, r8d
	xor	esi, esi
	mov	r10d, r9d
	jmp	.label_491
.label_1119:
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0xb0], rax
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 0x10]
	movups	xmm2, xmmword ptr [rcx + 0x20]
	movaps	xmmword ptr [rsp + 0xa0], xmm2
	movaps	xmmword ptr [rsp + 0x90], xmm1
	movaps	xmmword ptr [rsp + 0x80], xmm0
	lea	rsi, [rsp + 0x80]
	mov	rdi, qword ptr [rsp + 0x4e8]
	call	mktime_z
	mov	rcx, rax
	mov	rsi, rcx
	shr	rsi, 0x3f
	lea	r12, [rsp + 0x4a7]
	nop	dword ptr [rax + rax]
.label_519:
	movabs	rdx, 0x6666666666666667
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	mov	ebx, ecx
	sub	ebx, edi
	add	rdx, rax
	mov	eax, ebx
	neg	eax
	test	rsi, rsi
	cmove	eax, ebx
	add	eax, 0x30
	mov	byte ptr [r12 - 1], al
	dec	r12
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_519
	mov	r10d, 1
	xor	r8d, r8d
	jmp	.label_530
.label_1120:
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	sub	rcx, rsi
	cmp	rbx, rcx
	mov	rdi, qword ptr [rsp + 0x68]
	jae	.label_467
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_475
	cmp	eax, 2
	jb	.label_603
	mov	r12, rsi
	movsxd	r14, r14d
	dec	r14
	cmp	r13d, 0x30
	je	.label_541
	cmp	r13d, 0x2b
	jne	.label_544
.label_541:
	mov	esi, 0x30
	jmp	.label_548
.label_1121:
	mov	rax, qword ptr [rsp + 0x48]
	mov	eax, dword ptr [rax + 0x18]
	lea	edx, [rax + 6]
	movsxd	rdx, edx
	imul	rsi, rdx, -0x6db6db6d
	shr	rsi, 0x20
	lea	eax, [rsi + rax + 6]
	mov	esi, eax
	shr	esi, 0x1f
	sar	eax, 2
	add	eax, esi
	lea	esi, [rax*8]
	sub	esi, eax
	sub	edx, esi
	inc	edx
	mov	edi, 1
	mov	r10d, r9d
	jmp	.label_468
.label_1122:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_449
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 0x18]
	mov	edi, 1
	jmp	.label_468
.label_1123:
	cmp	r9d, 0x4f
	je	.label_449
	xor	eax, eax
	mov	r8b, 0x78
	jmp	.label_563
.label_1124:
	mov	r10d, r9d
	cmp	r10d, 0x45
	jne	.label_589
	mov	r9d, r10d
	xor	eax, eax
	mov	r8b, 0x79
	jmp	.label_563
.label_542:
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_569
.label_536:
	dec	r12d
	mov	eax, 0x16d
	test	r12b, 3
	jne	.label_571
	movsxd	rax, r12d
	imul	rax, rax, 0x51eb851f
	mov	rdx, rax
	sar	rdx, 0x25
	mov	rdi, rax
	shr	rdi, 0x3f
	add	edx, edi
	imul	edx, edx, 0x64
	sar	rax, 0x27
	add	eax, edi
	imul	eax, eax, 0x190
	cmp	r12d, eax
	sete	al
	movzx	edi, al
	add	edi, 0x16d
	cmp	r12d, edx
	mov	eax, 0x16e
	cmove	eax, edi
.label_571:
	lea	edx, [rax + rbx + 0x17e]
	sub	edx, r9d
	movsxd	rdx, edx
	imul	rsi, rdx, -0x6db6db6d
	shr	rsi, 0x20
	add	esi, edx
	mov	edi, esi
	shr	edi, 0x1f
	sar	esi, 2
	add	esi, edi
	lea	edi, [rsi*8]
	sub	edi, esi
	sub	edx, edi
	lea	eax, [rax + rbx + 3]
	sub	eax, edx
	mov	ebx, 0xffffffff
.label_576:
	cmp	r11d, 0x47
	je	.label_596
	cmp	r11d, 0x67
	jne	.label_592
	movsxd	rax, r8d
	imul	rax, rax, 0x51eb851f
	mov	rdx, rax
	shr	rdx, 0x3f
	sar	rax, 0x25
	add	eax, edx
	imul	eax, eax, 0x64
	mov	edx, r8d
	sub	edx, eax
	add	edx, ebx
	movsxd	rdx, edx
	imul	rax, rdx, 0x51eb851f
	mov	rsi, rax
	shr	rsi, 0x3f
	sar	rax, 0x25
	add	eax, esi
	imul	eax, eax, 0x64
	sub	edx, eax
	mov	edi, 2
	jns	.label_613
	mov	eax, 0xfffff894
	sub	eax, ebx
	mov	esi, edx
	neg	esi
	add	edx, 0x64
	cmp	r8d, eax
	jmp	.label_608
.label_577:
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdi, qword ptr [rsp + 0x68]
	jmp	.label_490
.label_609:
	mov	rax, qword ptr [rsp + 0x48]
	movsxd	rax, dword ptr [rax + 0x14]
	cmp	rax, -0x76c
	setl	sil
	setg	bl
	imul	rdx, rax, 0x51eb851f
	mov	rdi, rdx
	shr	rdi, 0x3f
	sar	rdx, 0x25
	add	edx, edi
	imul	edi, edx, 0x64
	cmp	eax, edi
	sets	al
	and	al, bl
	movzx	eax, al
	sub	edx, eax
	add	edx, 0x13
	mov	edi, 2
	jmp	.label_459
.label_589:
	mov	rax, qword ptr [rsp + 0x48]
	movsxd	rax, dword ptr [rax + 0x14]
	imul	rdx, rax, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	esi, edx, 0x64
	mov	edx, eax
	mov	edi, 2
	sub	edx, esi
	js	.label_588
.label_613:
	xor	esi, esi
	jmp	.label_459
.label_596:
	mov	eax, 0xfffff894
	sub	eax, ebx
	cmp	r8d, eax
	setl	sil
	lea	edx, [rbx + r8 + 0x76c]
	mov	edi, 4
	jmp	.label_459
.label_592:
	cdqe	
	imul	rdx, rax, -0x6db6db6d
	shr	rdx, 0x20
	add	eax, edx
	mov	edx, eax
	sar	edx, 2
	shr	eax, 0x1f
	lea	edx, [rdx + rax + 1]
.label_456:
	mov	edi, 2
.label_468:
	mov	esi, edx
	shr	esi, 0x1f
.label_463:
	xor	ebx, ebx
	xor	r8d, r8d
.label_491:
	cmp	r10d, 0x4f
	jne	.label_470
	test	sil, sil
	jne	.label_470
	mov	r9d, r10d
	xor	eax, eax
	mov	r8b, cl
	mov	rbx, rdi
	jmp	.label_471
.label_470:
	mov	r10, rdi
	mov	eax, edx
	neg	eax
	test	sil, sil
	cmove	eax, edx
	lea	r12, [rsp + 0x4a7]
	nop	
.label_485:
	test	bl, 1
	je	.label_482
	mov	byte ptr [r12 - 1], 0x3a
	dec	r12
.label_482:
	sar	ebx, 1
	mov	edi, eax
	mov	edx, 0xcccccccd
	imul	rdx, rdi
	shr	rdx, 0x23
	lea	edi, [rdx + rdx]
	lea	edi, [rdi + rdi*4]
	mov	ecx, eax
	sub	ecx, edi
	or	ecx, 0x30
	mov	byte ptr [r12 - 1], cl
	dec	r12
	cmp	eax, 9
	mov	eax, edx
	ja	.label_485
	test	ebx, ebx
	mov	eax, edx
	jne	.label_485
.label_530:
	mov	rdi, qword ptr [rsp + 0x68]
	cmp	r10d, r14d
	cmovl	r10d, r14d
	mov	qword ptr [rsp + 0x50], r10
	test	r8b, r8b
	je	.label_533
	mov	r8b, 0x2b
.label_533:
	test	sil, sil
	mov	r9b, 0x2d
	jne	.label_501
	mov	r9b, r8b
.label_501:
	cmp	r13d, 0x2d
	mov	rsi, qword ptr [rsp + 0x78]
	jne	.label_502
	test	r9b, r9b
	je	.label_508
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x70]
	sub	rcx, rsi
	cmp	rbx, rcx
	jae	.label_467
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_521
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x50]
	test	ecx, ecx
	jne	.label_523
	test	al, al
	jne	.label_523
	movsxd	rax, r14d
	mov	qword ptr [rsp + 0x20], rax
	lea	rdx, [rax - 1]
	mov	esi, 0x20
	mov	byte ptr [rsp + 0x40], r9b
	mov	qword ptr [rsp + 0x68], rdi
	call	memset
	mov	r9b, byte ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x68]
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rax, qword ptr [rsp + 0x20]
	lea	rdi, [rdi + rax - 1]
	jmp	.label_523
.label_502:
	mov	rax, qword ptr [rsp + 0x50]
	cdqe	
	mov	rcx, r12
	lea	rdx, [rsp + 0x4a7]
	sub	rcx, rdx
	mov	dl, r9b
	neg	dl
	sbb	rbx, rbx
	add	rbx, rcx
	add	rbx, rax
	test	ebx, ebx
	jle	.label_535
	cmp	r13d, 0x5f
	jne	.label_538
	movsxd	rdx, ebx
	mov	rax, qword ptr [rsp + 0x70]
	sub	rax, rsi
	cmp	rdx, rax
	jae	.label_467
	xor	r10d, r10d
	test	rdi, rdi
	mov	r8d, 0
	je	.label_546
	mov	esi, 0x20
	mov	byte ptr [rsp + 0x40], r9b
	mov	qword ptr [rsp + 0x20], rdx
	call	memset
	mov	rdx, qword ptr [rsp + 0x20]
	xor	r10d, r10d
	mov	r9b, byte ptr [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rax, qword ptr [rsp + 0x68]
	add	rax, rdx
	mov	r8, rax
.label_546:
	add	rsi, rdx
	sub	r14d, ebx
	cmovg	r10d, r14d
	test	r9b, r9b
	je	.label_557
	xor	eax, eax
	test	r10d, r10d
	cmovns	eax, r10d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x70]
	sub	rcx, rsi
	cmp	rbx, rcx
	jae	.label_467
	xor	edi, edi
	test	r8, r8
	je	.label_581
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x50]
	test	ecx, ecx
	jne	.label_606
	mov	byte ptr [rsp + 0x40], r9b
	test	al, al
	jne	.label_567
	movsxd	r14, r10d
	mov	qword ptr [rsp + 0x68], r10
	lea	rdx, [r14 - 1]
	mov	qword ptr [rsp + 0x78], rsi
	mov	esi, 0x20
	mov	rdi, r8
	mov	qword ptr [rsp + 0x20], r8
	call	memset
	mov	r8, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x78]
	lea	r8, [r8 + r14 - 1]
	jmp	.label_575
.label_535:
	test	r9b, r9b
	je	.label_508
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x70]
	sub	rcx, rsi
	cmp	rbx, rcx
	jae	.label_467
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_521
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x50]
	test	ecx, ecx
	jne	.label_523
	test	al, al
	jne	.label_523
	mov	byte ptr [rsp + 0x40], r9b
	movsxd	rax, r14d
	dec	rax
	cmp	r13d, 0x30
	je	.label_590
	cmp	r13d, 0x2b
	jne	.label_611
.label_590:
	mov	esi, 0x30
	jmp	.label_619
.label_538:
	mov	rcx, qword ptr [rsp + 0x70]
	sub	rcx, rsi
	cmp	rax, rcx
	jae	.label_467
	test	r9b, r9b
	je	.label_602
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	r8, eax
	cmp	r8d, 1
	mov	edx, 1
	cmova	rdx, r8
	cmp	rdx, rcx
	jae	.label_467
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_529
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x50]
	test	ecx, ecx
	jne	.label_558
	test	al, al
	jne	.label_558
	mov	qword ptr [rsp + 0x20], rdx
	mov	byte ptr [rsp + 0x40], r9b
	movsxd	rax, r14d
	dec	rax
	cmp	r13d, 0x30
	je	.label_562
	cmp	r13d, 0x2b
	jne	.label_615
.label_562:
	mov	esi, 0x30
	jmp	.label_617
.label_557:
	mov	rdi, r8
	mov	r14d, r10d
	jmp	.label_508
.label_573:
	mov	r9d, r10d
	xor	eax, eax
	mov	r8b, 0x59
.label_563:
	xor	ebx, ebx
.label_471:
	mov	dword ptr [rsp + 0x50], eax
	mov	r12, qword ptr [rsp + 0x68]
	mov	word ptr [rsp + 0x48b], 0x2520
	test	r9d, r9d
	lea	rcx, [rsp + 0x48d]
	je	.label_620
	mov	byte ptr [rsp + 0x48d], r9b
	lea	rcx, [rsp + 0x48e]
.label_620:
	mov	byte ptr [rcx], r8b
	mov	byte ptr [rcx + 1], 0
	lea	rdi, [rsp + 0x80]
	lea	rdx, [rsp + 0x48b]
	mov	esi, 0x400
	mov	rcx, qword ptr [rsp + 0x48]
	call	strftime
	test	rax, rax
	je	.label_466
	mov	r8, rbx
	lea	r9, [rax - 1]
	mov	qword ptr [rsp + 0x40], rax
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	cdqe	
	cmp	r9, rax
	mov	rdx, r9
	cmovb	rdx, rax
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	sub	rcx, rsi
	cmp	rdx, rcx
	mov	ebx, dword ptr [rsp + 0x50]
	jae	.label_467
	xor	ecx, ecx
	mov	rdi, r12
	test	rdi, rdi
	je	.label_505
	cmp	r9, rax
	setae	al
	mov	r12, rdx
	test	r8d, r8d
	jne	.label_457
	test	al, al
	jne	.label_457
	movsxd	r14, r14d
	sub	r14, r9
	mov	qword ptr [rsp + 0x20], r9
	cmp	r13d, 0x30
	je	.label_483
	cmp	r13d, 0x2b
	jne	.label_488
.label_483:
	mov	esi, 0x30
	jmp	.label_487
.label_466:
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdi, r12
	jmp	.label_490
.label_488:
	mov	esi, 0x20
.label_487:
	mov	rdx, r14
	mov	rbx, rdi
	call	memset
	add	rbx, r14
	mov	rdi, rbx
	mov	r9, qword ptr [rsp + 0x20]
	mov	ebx, dword ptr [rsp + 0x50]
.label_457:
	test	bl, 1
	jne	.label_497
	mov	rax, qword ptr [rsp + 0x60]
	test	al, 1
	jne	.label_549
	lea	rsi, [rsp + 0x81]
	mov	rdx, r9
	mov	r14, rdi
	mov	rbx, r9
	call	memcpy
	mov	r9, rbx
	mov	rdi, r14
	jmp	.label_512
.label_497:
	test	r9, r9
	je	.label_512
	mov	r14, rdi
	mov	rbx, r9
	call	__ctype_tolower_loc
	mov	r9, rbx
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x40]
	lea	ecx, [rdx + 3]
	mov	r8, rdx
	add	r8, -2
	test	cl, 3
	mov	rcx, r9
	je	.label_517
	lea	esi, [rdx + 3]
	and	esi, 3
	neg	rsi
	mov	rcx, r9
	nop	
.label_479:
	movzx	edx, byte ptr [rsp + rcx + 0x80]
	mov	rbx, qword ptr [rax]
	mov	bl, byte ptr [rbx + rdx*4]
	mov	byte ptr [rdi + rcx - 1], bl
	dec	rcx
	inc	rsi
	jne	.label_479
.label_517:
	cmp	r8, 3
	jb	.label_512
	nop	word ptr cs:[rax + rax]
.label_531:
	movzx	edx, byte ptr [rsp + rcx + 0x80]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	movzx	edx, byte ptr [rsp + rcx + 0x7f]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 2], dl
	movzx	edx, byte ptr [rsp + rcx + 0x7e]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 3], dl
	movzx	edx, byte ptr [rsp + rcx + 0x7d]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 4], dl
	add	rcx, -4
	jne	.label_531
	jmp	.label_512
.label_549:
	test	r9, r9
	je	.label_512
	mov	r14, rdi
	mov	rbx, r9
	call	__ctype_toupper_loc
	mov	r9, rbx
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x40]
	lea	ecx, [rdx + 3]
	mov	r8, rdx
	add	r8, -2
	test	cl, 3
	mov	rcx, r9
	je	.label_543
	lea	esi, [rdx + 3]
	and	esi, 3
	neg	rsi
	mov	rcx, r9
	nop	word ptr [rax + rax]
.label_554:
	movzx	edx, byte ptr [rsp + rcx + 0x80]
	mov	rbx, qword ptr [rax]
	mov	bl, byte ptr [rbx + rdx*4]
	mov	byte ptr [rdi + rcx - 1], bl
	dec	rcx
	inc	rsi
	jne	.label_554
.label_543:
	cmp	r8, 3
	jb	.label_512
.label_559:
	movzx	edx, byte ptr [rsp + rcx + 0x80]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	movzx	edx, byte ptr [rsp + rcx + 0x7f]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 2], dl
	movzx	edx, byte ptr [rsp + rcx + 0x7e]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 3], dl
	movzx	edx, byte ptr [rsp + rcx + 0x7d]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 4], dl
	add	rcx, -4
	jne	.label_559
.label_512:
	add	rdi, r9
	mov	rcx, rdi
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdx, r12
	jmp	.label_505
.label_594:
	mov	r14, qword ptr [rsp + 0x30]
	jmp	.label_570
.label_550:
	mov	esi, 0x20
.label_551:
	mov	rdx, rcx
	mov	qword ptr [rsp + 0x18], rdx
	mov	r14, rdi
	call	memset
	add	r14, qword ptr [rsp + 0x18]
	mov	rdi, r14
.label_569:
	mov	edx, dword ptr [rsp + 0x40]
	mov	rax, qword ptr [rsp + 0x60]
	test	al, al
	setne	al
	mov	ecx, dword ptr [rsp + 0x4f0]
	mov	dword ptr [rsp + 0x10], ecx
	mov	rcx, qword ptr [rsp + 0x4e8]
	mov	qword ptr [rsp + 8], rcx
	mov	dword ptr [rsp], edx
	movzx	r8d, al
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r14, rdi
	mov	r9d, r13d
	call	__strftime_internal
	mov	rax, qword ptr [rsp + 0x20]
	add	rax, r14
	mov	rcx, rax
	jmp	.label_586
.label_583:
	mov	rax, qword ptr [rsp + 0x30]
	movzx	edx, byte ptr [rax]
	cmp	edx, 0x2d
	sete	sil
.label_578:
	cmp	rbx, 3
	mov	r10d, r9d
	ja	.label_449
	movsxd	rdx, r8d
	imul	rdi, rdx, -0x77777777
	shr	rdi, 0x20
	add	edi, r8d
	mov	r9, rbx
	mov	ebx, edi
	shr	ebx, 0x1f
	sar	edi, 5
	add	edi, ebx
	imul	rdx, rdx, -0x6e5d4c3b
	shr	rdx, 0x20
	add	edx, r8d
	mov	ebx, edx
	shr	ebx, 0x1f
	sar	edx, 0xb
	add	edx, ebx
	movsxd	rbx, edi
	imul	rdi, rbx, -0x77777777
	shr	rdi, 0x20
	add	edi, ebx
	mov	eax, edi
	shr	eax, 0x1f
	sar	edi, 5
	add	edi, eax
	imul	eax, edi, 0x3c
	imul	edi, ebx, 0x3c
	sub	ebx, eax
	sub	r8d, edi
	jmp	qword ptr [word ptr [+ (r9 * 8) + label_591]]
.label_1146:
	imul	edx, edx, 0x64
	add	edx, ebx
	mov	edi, 5
.label_499:
	mov	r8b, 1
	xor	ebx, ebx
	jmp	.label_491
.label_449:
	lea	rbx, [rbp + 1]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_564:
	inc	r12
	movzx	eax, byte ptr [rbx - 1]
	dec	rbx
	cmp	eax, 0x25
	jne	.label_564
	test	r14d, r14d
	mov	eax, r14d
	mov	ecx, 0
	cmovs	eax, ecx
	cmp	r12d, eax
	mov	ecx, eax
	cmova	ecx, r12d
	movsxd	r8, ecx
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	sub	rcx, rsi
	cmp	r8, rcx
	mov	rdi, qword ptr [rsp + 0x68]
	jae	.label_467
	test	rdi, rdi
	mov	ecx, 0
	je	.label_448
	movsxd	rdx, r12d
	cmp	r12d, eax
	jae	.label_450
	movsxd	r14, r14d
	sub	r14, rdx
	cmp	r13d, 0x30
	je	.label_453
	cmp	r13d, 0x2b
	jne	.label_455
.label_453:
	mov	qword ptr [rsp + 0x40], rdx
	mov	qword ptr [rsp + 0x50], r8
	mov	esi, 0x30
	jmp	.label_458
.label_455:
	mov	qword ptr [rsp + 0x40], rdx
	mov	qword ptr [rsp + 0x50], r8
	mov	esi, 0x20
.label_458:
	mov	rdx, r14
	mov	r13, rdi
	call	memset
	mov	rdi, r13
	add	rdi, r14
	mov	rsi, qword ptr [rsp + 0x78]
	mov	r8, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x40]
.label_450:
	mov	qword ptr [rsp + 0x50], r8
	mov	qword ptr [rsp + 0x78], rsi
	mov	rax, qword ptr [rsp + 0x60]
	test	al, 1
	jne	.label_566
	mov	rsi, rbx
	mov	r14, rdi
	mov	rbx, rdx
	call	memcpy
	mov	r10, rbx
	mov	r9, r14
	mov	r8, qword ptr [rsp + 0x50]
	jmp	.label_472
.label_566:
	mov	r13, rdi
	mov	r14, rdx
	call	__ctype_toupper_loc
	mov	r10, r14
	mov	r9, r13
	movsxd	rcx, r12d
	lea	r8, [rcx - 1]
	test	cl, 3
	mov	rcx, r10
	je	.label_618
	and	r12d, 3
	neg	r12
	mov	rcx, r10
	nop	word ptr [rax + rax]
.label_493:
	movzx	esi, byte ptr [rbx + rcx - 1]
	mov	rdi, qword ptr [rax]
	mov	dl, byte ptr [rdi + rsi*4]
	mov	byte ptr [r9 + rcx - 1], dl
	dec	rcx
	inc	r12
	jne	.label_493
.label_618:
	cmp	r8, 3
	mov	r8, qword ptr [rsp + 0x50]
	jb	.label_472
	nop	word ptr cs:[rax + rax]
.label_498:
	movzx	edx, byte ptr [rbx + rcx - 1]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [r9 + rcx - 1], dl
	movzx	edx, byte ptr [rbx + rcx - 2]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [r9 + rcx - 2], dl
	movzx	edx, byte ptr [rbx + rcx - 3]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [r9 + rcx - 3], dl
	movzx	edx, byte ptr [rbx + rcx - 4]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [r9 + rcx - 4], dl
	add	rcx, -4
	jne	.label_498
.label_472:
	add	r9, r10
	mov	rcx, r9
	mov	rsi, qword ptr [rsp + 0x78]
.label_448:
	add	rsi, r8
	jmp	.label_469
.label_460:
	xor	eax, eax
	mov	r10d, r14d
	add	r10d, -6
	cmovs	r10d, eax
	mov	eax, OFFSET FLAT:.str.2_2
	jmp	.label_522
.label_520:
	mov	edi, 9
	mov	eax, dword ptr [rsp + 0x4f0]
	mov	edx, eax
	mov	r14d, 9
	jmp	.label_468
.label_588:
	mov	esi, edx
	neg	esi
	add	edx, 0x64
	cmp	eax, 0xfffff894
.label_608:
	cmovl	edx, esi
	xor	esi, esi
.label_459:
	mov	eax, dword ptr [rsp + 0x3c]
	mov	dword ptr [rsp + 0x3c], eax
	test	r13d, r13d
	cmove	r13d, eax
	xor	ebx, ebx
	cmp	r13d, 0x2b
	mov	r8d, 0
	jne	.label_491
	mov	rax, rdi
	cmp	eax, 2
	mov	r8d, 0x63
	mov	edi, 0x270f
	cmove	edi, r8d
	cmp	edi, edx
	setb	r9b
	cmp	eax, r14d
	mov	rdi, rax
	setl	r8b
	or	r8b, r9b
	jmp	.label_491
.label_1149:
	test	r8d, r8d
	je	.label_540
.label_1148:
	imul	edx, edx, 0x2710
	imul	eax, ebx, 0x64
	add	edx, r8d
	add	edx, eax
	mov	edi, 9
	mov	r8b, 1
	mov	ebx, 0x14
	jmp	.label_491
.label_489:
	mov	eax, dword ptr [rsp + 0x4f0]
	mov	edx, eax
	mov	edi, r14d
	jmp	.label_468
.label_606:
	mov	qword ptr [rsp + 0x68], r10
	jmp	.label_552
.label_567:
	mov	qword ptr [rsp + 0x68], r10
.label_575:
	mov	r9b, byte ptr [rsp + 0x40]
.label_552:
	mov	byte ptr [r8], r9b
	inc	r8
	mov	rdi, r8
	mov	r10, qword ptr [rsp + 0x68]
.label_581:
	add	rsi, rbx
	mov	r14d, r10d
	jmp	.label_508
.label_599:
	mov	esi, 0x20
.label_601:
	mov	rdx, r14
	mov	r13, rdi
	call	memset
	add	r13, r14
	mov	r14, qword ptr [rsp + 0x30]
	mov	rdi, r13
	mov	r9, qword ptr [rsp + 0x50]
.label_570:
	test	r12b, r12b
	je	.label_561
	test	r9, r9
	je	.label_452
	mov	r12, rbx
	mov	r13, rdi
	mov	rbx, r9
	call	__ctype_tolower_loc
	mov	r9, rbx
	lea	r8, [r9 - 1]
	test	r9b, 3
	je	.label_565
	mov	esi, r9d
	and	esi, 3
	neg	rsi
	mov	rcx, r9
	mov	rdi, r13
	nop	dword ptr [rax + rax]
.label_572:
	movzx	edx, byte ptr [r14 + rcx - 1]
	mov	rbx, qword ptr [rax]
	mov	bl, byte ptr [rbx + rdx*4]
	mov	byte ptr [rdi + rcx - 1], bl
	dec	rcx
	inc	rsi
	jne	.label_572
	jmp	.label_574
.label_561:
	mov	rax, qword ptr [rsp + 0x60]
	test	al, al
	je	.label_492
	test	r9, r9
	je	.label_452
	mov	r12, rbx
	mov	r13, rdi
	mov	rbx, r9
	call	__ctype_toupper_loc
	mov	r9, rbx
	lea	r8, [r9 - 1]
	test	r9b, 3
	je	.label_579
	mov	esi, r9d
	and	esi, 3
	neg	rsi
	mov	rcx, r9
	mov	rdi, r13
.label_585:
	movzx	edx, byte ptr [r14 + rcx - 1]
	mov	rbx, qword ptr [rax]
	mov	bl, byte ptr [rbx + rdx*4]
	mov	byte ptr [rdi + rcx - 1], bl
	dec	rcx
	inc	rsi
	jne	.label_585
	jmp	.label_582
.label_484:
	mov	esi, 0x20
.label_486:
	mov	rdx, r14
	mov	r13, rdi
	call	memset
	add	r13, r14
	mov	rsi, r12
	mov	rdi, r13
.label_478:
	mov	byte ptr [rdi], 0xa
	jmp	.label_595
.label_544:
	mov	esi, 0x20
.label_548:
	mov	rdx, r14
	mov	r13, rdi
	call	memset
	add	r13, r14
	mov	rsi, r12
	mov	rdi, r13
.label_603:
	mov	byte ptr [rdi], 9
.label_595:
	inc	rdi
	mov	rcx, rdi
	add	rsi, rbx
	jmp	.label_469
.label_611:
	mov	esi, 0x20
.label_619:
	mov	rdx, rax
	mov	qword ptr [rsp + 0x20], rdx
	call	memset
	mov	rax, qword ptr [rsp + 0x68]
	add	rax, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdi, rax
	mov	r9b, byte ptr [rsp + 0x40]
.label_523:
	mov	byte ptr [rdi], r9b
	inc	rdi
	mov	rcx, rdi
.label_521:
	add	rsi, rbx
	mov	rdi, rcx
	jmp	.label_508
.label_565:
	mov	rcx, r9
	mov	rdi, r13
.label_574:
	cmp	r8, 3
	mov	rbx, r12
	jb	.label_452
	nop	word ptr cs:[rax + rax]
.label_614:
	movzx	edx, byte ptr [r14 + rcx - 1]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	movzx	edx, byte ptr [r14 + rcx - 2]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 2], dl
	movzx	edx, byte ptr [r14 + rcx - 3]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 3], dl
	movzx	edx, byte ptr [r14 + rcx - 4]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 4], dl
	add	rcx, -4
	jne	.label_614
	jmp	.label_452
.label_492:
	mov	rsi, r14
	mov	rdx, r9
	mov	r13, rdi
	mov	r12, rbx
	mov	rbx, r9
	call	memcpy
	mov	r9, rbx
	mov	rbx, r12
	mov	rdi, r13
	jmp	.label_452
.label_504:
	mov	eax, 9
	sub	eax, ebx
	nop	word ptr cs:[rax + rax]
.label_465:
	movsxd	rdx, edx
	imul	rdx, rdx, 0x68db8bad
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x2c
	add	edx, esi
	add	eax, -4
	jne	.label_465
	mov	edi, r14d
	jmp	.label_468
.label_615:
	mov	esi, 0x20
.label_617:
	mov	rdx, rax
	mov	qword ptr [rsp + 0x18], rdx
	mov	r14, rdi
	call	memset
	add	r14, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdi, r14
	mov	r9b, byte ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x20]
.label_558:
	mov	byte ptr [rdi], r9b
	inc	rdi
	mov	rcx, rdi
.label_529:
	add	rsi, rdx
	mov	rdi, rcx
.label_602:
	xor	r14d, r14d
	test	rdi, rdi
	movsxd	rcx, ebx
	mov	ebx, 0
	je	.label_481
	mov	qword ptr [rsp + 0x78], rsi
	mov	esi, 0x30
	mov	qword ptr [rsp + 0x68], rcx
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rbx, rdi
	call	memset
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rsi, qword ptr [rsp + 0x78]
	add	rbx, rcx
.label_481:
	add	rsi, rcx
	mov	rdi, rbx
.label_508:
	lea	rbx, [rsp + 0x4a7]
	sub	rbx, r12
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	cdqe	
	cmp	rbx, rax
	mov	rdx, rbx
	cmovb	rdx, rax
	mov	rcx, qword ptr [rsp + 0x70]
	sub	rcx, rsi
	cmp	rdx, rcx
	jae	.label_467
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_505
	cmp	rbx, rax
	setae	al
	mov	rcx, qword ptr [rsp + 0x50]
	test	ecx, ecx
	jne	.label_509
	test	al, al
	jne	.label_513
	movsxd	r14, r14d
	sub	r14, rbx
	cmp	r13d, 0x30
	je	.label_514
	cmp	r13d, 0x2b
	jne	.label_539
.label_514:
	mov	qword ptr [rsp + 0x78], rsi
	mov	esi, 0x30
	jmp	.label_518
.label_505:
	add	rsi, rdx
	jmp	.label_469
.label_509:
	mov	qword ptr [rsp + 0x78], rsi
	jmp	.label_495
.label_513:
	mov	qword ptr [rsp + 0x78], rsi
	jmp	.label_495
.label_539:
	mov	qword ptr [rsp + 0x78], rsi
	mov	esi, 0x20
.label_518:
	mov	qword ptr [rsp + 0x68], rdx
	mov	rdx, r14
	mov	r13, rdi
	call	memset
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rdi, r13
	add	rdi, r14
.label_495:
	mov	r13, rdx
	mov	rax, qword ptr [rsp + 0x60]
	test	al, al
	je	.label_528
	lea	rax, [rsp + 0x4a7]
	cmp	rax, r12
	je	.label_532
	mov	r14, rdi
	call	__ctype_toupper_loc
	mov	rdi, r14
	lea	rcx, [rsp + 0x4a7]
	sub	ecx, r12d
	lea	r8, [rsp + 0x4a6]
	sub	r8, r12
	test	cl, 3
	mov	rcx, rbx
	mov	r9, rbx
	je	.label_560
	lea	rsi, [rsp + 0x4a7]
	sub	esi, r12d
	and	esi, 3
	neg	rsi
	mov	rcx, r9
	nop	word ptr cs:[rax + rax]
.label_447:
	movzx	ebx, byte ptr [r12 + rcx - 1]
	mov	rdx, qword ptr [rax]
	mov	dl, byte ptr [rdx + rbx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	dec	rcx
	inc	rsi
	jne	.label_447
.label_560:
	cmp	r8, 3
	mov	rbx, r9
	jb	.label_532
	nop	word ptr cs:[rax + rax]
.label_507:
	movzx	edx, byte ptr [r12 + rcx - 1]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	movzx	edx, byte ptr [r12 + rcx - 2]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 2], dl
	movzx	edx, byte ptr [r12 + rcx - 3]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 3], dl
	movzx	edx, byte ptr [r12 + rcx - 4]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 4], dl
	add	rcx, -4
	jne	.label_507
	jmp	.label_532
.label_528:
	mov	rsi, r12
	mov	rdx, rbx
	mov	r14, rdi
	call	memcpy
	mov	rdi, r14
.label_532:
	add	rdi, rbx
	mov	rcx, rdi
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdx, r13
	add	rsi, rdx
	jmp	.label_469
.label_540:
	test	ebx, ebx
	je	.label_568
.label_1147:
	imul	edx, edx, 0x64
	add	edx, ebx
	mov	edi, 6
	mov	r8b, 1
	mov	ebx, 4
	jmp	.label_491
.label_476:
	mov	r12, rsi
	mov	esi, 0x20
.label_537:
	mov	rdx, r14
	mov	r13, rdi
	call	memset
	mov	rdi, r13
	mov	rsi, r12
	add	rdi, r14
	mov	cl, byte ptr [rbp]
.label_605:
	mov	byte ptr [rdi], cl
	jmp	.label_510
.label_579:
	mov	rcx, r9
	mov	rdi, r13
.label_582:
	cmp	r8, 3
	mov	rbx, r12
	jb	.label_452
.label_580:
	movzx	edx, byte ptr [r14 + rcx - 1]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	movzx	edx, byte ptr [r14 + rcx - 2]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 2], dl
	movzx	edx, byte ptr [r14 + rcx - 3]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 3], dl
	movzx	edx, byte ptr [r14 + rcx - 4]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 4], dl
	add	rcx, -4
	jne	.label_580
.label_452:
	mov	qword ptr [rsp + 0x30], r14
	add	rdi, r9
	mov	rcx, rdi
.label_586:
	mov	rsi, qword ptr [rsp + 0x78]
.label_475:
	add	rsi, rbx
	nop	dword ptr [rax]
.label_469:
	mov	rdi, rcx
.label_490:
	mov	al, byte ptr [rbp + 1]
	inc	rbp
	mov	r14d, 0xffffffff
	test	al, al
	jne	.label_598
.label_454:
	cmp	qword ptr [rsp + 0x70], 0
	je	.label_600
	test	rdi, rdi
	je	.label_600
	mov	byte ptr [rdi], 0
	jmp	.label_600
.label_467:
	xor	esi, esi
.label_600:
	mov	rax, rsi
	add	rsp, 0x4a8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407b90

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_622
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_621
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_621
	mov	esi, OFFSET FLAT:.str.2_3
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_623
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_623:
	mov	rbx, r14
.label_621:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_622:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_8
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c40
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
	#Procedure 0x407c80

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
	#Procedure 0x407c90

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
	#Procedure 0x407ca0
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
	#Procedure 0x407ce0
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
	#Procedure 0x407d00
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_624
	test	rdx, rdx
	je	.label_624
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_624:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407d30
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
	#Procedure 0x407db0

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
.label_713:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_653
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_657]]
.label_1177:
	mov	edi, OFFSET FLAT:.str.11_2
	mov	esi, r15d
	mov	r14, r10
	mov	bl, r8b
	call	gettext_quote
	mov	qword ptr [rsp + 0xa0], rax
	mov	edi, OFFSET FLAT:.str.12_1
	mov	esi, r15d
	call	gettext_quote
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x98], rax
.label_1178:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_682
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_682
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_701:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_678
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_678:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_701
.label_682:
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
	jmp	.label_635
.label_1170:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_635
.label_1173:
	mov	al, 1
.label_1171:
	mov	r12b, 1
.label_1174:
	test	r12b, 1
	mov	cl, 1
	je	.label_725
	mov	cl, al
.label_725:
	mov	al, cl
.label_1172:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_729
	test	r10, r10
	je	.label_732
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_734
.label_729:
	xor	ecx, ecx
	jmp	.label_734
.label_1175:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_717
	test	r10, r10
	je	.label_747
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_626
.label_1176:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_2
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_635
.label_732:
	mov	ecx, 1
	nop	dword ptr [rax]
.label_734:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_1
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_635
.label_717:
	xor	eax, eax
	jmp	.label_626
.label_747:
	mov	eax, 1
.label_626:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_2
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_635:
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
	jmp	.label_670
.label_712:
	inc	rdi
.label_670:
	cmp	rbp, -1
	je	.label_705
	cmp	rdi, rbp
	jne	.label_707
	jmp	.label_709
	nop	word ptr cs:[rax + rax]
.label_705:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_664
.label_707:
	test	r12b, r12b
	je	.label_715
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_716
	cmp	rbp, -1
	jne	.label_716
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
.label_716:
	cmp	rbx, rbp
	jbe	.label_739
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_625
	nop	word ptr [rax + rax]
.label_715:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_625
.label_739:
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
	jne	.label_647
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_625
	jmp	.label_634
.label_647:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_625:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_675
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_677]]
.label_1141:
	test	rdi, rdi
	jne	.label_660
	jmp	.label_684
.label_1145:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_650
	test	rdi, rdi
	jne	.label_686
	cmp	rbp, 1
	je	.label_684
	xor	r13d, r13d
	jmp	.label_641
.label_1134:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_690
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_634
	cmp	r9d, 2
	jne	.label_694
	mov	al, r14b
	and	al, 1
	jne	.label_697
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_700
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_700:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_695
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_695:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_669
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_669:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_652
.label_1135:
	mov	bl, 0x62
	jmp	.label_723
.label_1136:
	mov	cl, 0x74
	jmp	.label_631
.label_1137:
	mov	bl, 0x76
	jmp	.label_723
.label_1138:
	mov	bl, 0x66
	jmp	.label_723
.label_1139:
	mov	cl, 0x72
	jmp	.label_631
.label_1142:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_730
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_735
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
	jae	.label_741
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_741:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_643
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_643:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_738
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_738:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_730:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_641
.label_1143:
	cmp	r9d, 5
	je	.label_658
	cmp	r9d, 2
	jne	.label_660
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_660
	jmp	.label_666
.label_1144:
	cmp	r9d, 2
	jne	.label_668
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_672
	jmp	.label_679
.label_675:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_680
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
.label_655:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_692
	test	cl, cl
	je	.label_692
	xor	eax, eax
	jmp	.label_641
.label_650:
	test	rdi, rdi
	jne	.label_704
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_704
.label_684:
	mov	dl, 1
.label_1140:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_632
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_641
.label_690:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_712
	jmp	.label_660
.label_668:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_631
.label_672:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_649
.label_631:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_719
.label_723:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_641
	jmp	.label_651
.label_680:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_727
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_727:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_683:
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
	je	.label_642
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_646
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_648
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_654
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_667:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_662
	bt	rsi, rdx
	jb	.label_663
.label_662:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_667
.label_654:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_628
	xor	r13d, r13d
.label_628:
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
	je	.label_683
	jmp	.label_655
.label_704:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_641
.label_658:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_660
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_660
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_660
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_698
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_702
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_744
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_710
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_710:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_714
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_714:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_721
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_721:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_733
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_733:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_641
.label_660:
	xor	eax, eax
	xor	r13d, r13d
.label_641:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_743
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_746
	jmp	.label_627
	nop	word ptr [rax + rax]
.label_743:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_627
.label_746:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_636
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_644
	nop	word ptr cs:[rax + rax]
.label_627:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_644:
	mov	bl, r15b
	je	.label_649
	jmp	.label_651
.label_636:
	mov	bl, r15b
.label_651:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_634
	cmp	r9d, 2
	jne	.label_656
	mov	al, r14b
	and	al, 1
	jne	.label_656
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_691
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_691:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_728
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_728:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_676
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_676:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_656:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_685
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_685:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_633
.label_686:
	xor	r13d, r13d
	jmp	.label_641
.label_692:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_693
	nop	word ptr [rax + rax]
.label_688:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_693:
	test	cl, cl
	je	.label_703
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_659
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_706
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_706:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_659
	nop	word ptr [rax + rax]
.label_703:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_634
	cmp	r9d, 2
	jne	.label_722
	mov	al, r14b
	and	al, 1
	jne	.label_722
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_724
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_724:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_673
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_673:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_740
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_740:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_722:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_630
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_630:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_639
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_639:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_637
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_637:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_659:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_649
	test	r14b, 1
	je	.label_665
	mov	bl, al
	and	bl, 1
	jne	.label_665
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_748
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_748:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_681
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_681:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_665:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_688
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_688
	nop	dword ptr [rax]
.label_649:
	test	r14b, 1
	je	.label_699
	and	al, 1
	jne	.label_699
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_708
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_708:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_718
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_718:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_699:
	mov	bl, r15b
.label_633:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_726
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_726:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_712
.label_694:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_652
.label_697:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_652:
	cmp	rcx, r10
	jae	.label_731
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_731:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_737
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_745
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_749
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_629
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_629:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_638
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_638:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_641
.label_737:
	xor	r13d, r13d
	jmp	.label_641
.label_745:
	xor	r13d, r13d
	jmp	.label_641
.label_749:
	xor	r13d, r13d
	jmp	.label_641
.label_646:
	xor	r13d, r13d
.label_642:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_655
.label_648:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_661
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_645:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_671
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_645
	xor	r13d, r13d
	jmp	.label_655
.label_661:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_655
.label_671:
	xor	r13d, r13d
	jmp	.label_655
.label_698:
	xor	r13d, r13d
	jmp	.label_641
.label_702:
	xor	r13d, r13d
	jmp	.label_641
	nop	dword ptr [rax]
.label_709:
	mov	r13, rdi
.label_664:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_689
	or	al, dl
	je	.label_640
.label_689:
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
	je	.label_696
	or	al, dl
	jne	.label_696
	test	r8b, 1
	jne	.label_711
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_696
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_713
.label_696:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_720
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_720
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_720
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_736:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_687
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_687:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_736
.label_720:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_742
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_742
.label_632:
	mov	r9d, 2
	jmp	.label_634
.label_663:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_634
.label_640:
	mov	rbp, r13
	jmp	.label_634
.label_719:
	mov	r9d, 2
.label_634:
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
.label_674:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_742:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_711:
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
	jmp	.label_674
.label_735:
	mov	r9d, 2
	jmp	.label_634
.label_679:
	mov	r9d, 2
	jmp	.label_634
.label_666:
	mov	r9d, 2
	jmp	.label_634
.label_744:
	mov	r9d, 5
	jmp	.label_634
.label_653:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408f40
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
	#Procedure 0x409010
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
	je	.label_750
	mov	qword ptr [rax], rbx
.label_750:
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
	#Procedure 0x409110
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_751
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_755:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_755
.label_751:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_753
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_754]], OFFSET FLAT:slot0
.label_753:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_752
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_752:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4091b0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x4091c0

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
	js	.label_756
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_759
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_762
.label_759:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_758
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
	jne	.label_757
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_757:
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
.label_762:
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
	ja	.label_760
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_761
	mov	rdi, rbx
	call	free
.label_761:
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
.label_760:
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
.label_756:
	call	abort
.label_758:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409390
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4093a0
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
	#Procedure 0x4093c0
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
	#Procedure 0x4093e0

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
	je	.label_763
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
.label_763:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x409450
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
	je	.label_764
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
.label_764:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4094c0

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
	je	.label_765
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
.label_765:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409530
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
	je	.label_766
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
.label_766:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4095a0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_767]]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_768]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_769]]
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
	#Procedure 0x409610
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx,  qword ptr [word ptr [rip + label_767]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_768]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_769]]
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
	#Procedure 0x409680

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_767]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_768]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_769]]
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
	#Procedure 0x4096e0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_767]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_768]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_769]]
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
	#Procedure 0x409740
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
	je	.label_770
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
.label_770:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x4097f0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_767]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_768]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_769]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_771
	test	rdx, rdx
	je	.label_771
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_771:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x409860
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_767]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_768]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_769]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_772
	test	rdx, rdx
	je	.label_772
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_772:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4098d0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_767]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_768]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_769]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_773
	test	rsi, rsi
	je	.label_773
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_773:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x409940
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_767]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_768]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_769]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_774
	test	rsi, rsi
	je	.label_774
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
.label_774:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4099b0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4099c0
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
	#Procedure 0x4099e0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409a00

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
	#Procedure 0x409a20

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
	jne	.label_775
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_778
	cmp	ecx, 0x55
	jne	.label_776
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_776
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_776
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_776
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_776
	cmp	byte ptr [rax + 5], 0
	jne	.label_776
	mov	eax, OFFSET FLAT:.str.14_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_775
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_775
.label_778:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_776
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_776
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_776
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_776
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_776
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_776
	cmp	byte ptr [rax + 7], 0
	je	.label_777
.label_776:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_2
	mov	eax, OFFSET FLAT:.str.12_1
	cmove	rax, rcx
.label_775:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_777:
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_775
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_775
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409b10

	.globl save_cwd
	.type save_cwd, @function
save_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	qword ptr [rbx + 8], 0
	xor	ebp, ebp
	mov	edi, OFFSET FLAT:.str_1
	mov	esi, 0x80000
	xor	eax, eax
	call	open_safer
	mov	dword ptr [rbx], eax
	test	eax, eax
	jns	.label_779
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	qword ptr [rbx + 8], rax
	cmp	rax, 1
	sbb	ebp, ebp
.label_779:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409b60

	.globl restore_cwd
	.type restore_cwd, @function
restore_cwd:
	mov	eax, dword ptr [rdi]
	test	eax, eax
	js	.label_780
	mov	edi, eax
	jmp	fchdir
.label_780:
	mov	rdi, qword ptr [rdi + 8]
	jmp	chdir_long
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409b80

	.globl free_cwd
	.type free_cwd, @function
free_cwd:
	push	rbx
	mov	rbx, rdi
	mov	edi, dword ptr [rbx]
	test	edi, edi
	js	.label_781
	call	close
.label_781:
	mov	rdi, qword ptr [rbx + 8]
	pop	rbx
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409ba0

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
	je	.label_786
	mov	edx, OFFSET FLAT:.str_9
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_785
.label_786:
	mov	edx, OFFSET FLAT:.str.1_6
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_785:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_4
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
	mov	esi, OFFSET FLAT:.str.3_4
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_791
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_782]]
.label_1012:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_3
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
.label_791:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_1
	jmp	.label_790
.label_1013:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_2
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
.label_1014:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6_2
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
.label_1015:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_787
.label_1016:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_2
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_788
.label_1017:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_2
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_784
.label_1018:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_3
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
.label_784:
	mov	qword ptr [rsp + 0x10], rdi
.label_788:
	mov	qword ptr [rsp + 8], rsi
.label_787:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_789
.label_1020:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_2
.label_790:
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
	jmp	.label_783
.label_1019:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_3
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
.label_783:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_789:
	call	__fprintf_chk
.label_1011:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409e90
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_792:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_792
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409ec0
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_795:
	cmp	r10d, 0x28
	ja	.label_793
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_794
	nop	word ptr cs:[rax + rax]
.label_793:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_794:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_796
	inc	r9
	cmp	r9, 0xa
	jb	.label_795
.label_796:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409f20

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x128
	test	al, al
	je	.label_797
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_797:
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
.label_801:
	cmp	r8d, 0x28
	ja	.label_798
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_799
	nop	
.label_798:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_799:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_800
	inc	r9
	cmp	r9, 0xa
	jb	.label_801
.label_800:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a020
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_2
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
	mov	esi, OFFSET FLAT:.str.19_1
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
	#Procedure 0x40a0a0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_802
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_803
	test	rax, rax
	je	.label_802
.label_803:
	pop	rbx
	ret	
.label_802:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a0e0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_804
	test	rax, rax
	je	.label_805
.label_804:
	pop	rbx
	ret	
.label_805:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a100
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_806
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_807
	test	rbx, rbx
	jne	.label_807
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_807:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_808
	test	rax, rax
	je	.label_806
.label_808:
	pop	rbx
	ret	
.label_806:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a150

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_809
	test	rbx, rbx
	jne	.label_809
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_809:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_811
	test	rax, rax
	je	.label_810
.label_811:
	pop	rbx
	ret	
.label_810:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40a180
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_812
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_814
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_813
.label_812:
	test	rcx, rcx
	jne	.label_817
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_817:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_815
.label_813:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_816
	test	rbx, rbx
	jne	.label_816
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_816:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_818
	test	rax, rax
	je	.label_814
.label_818:
	pop	rbx
	ret	
.label_814:
	call	xalloc_die
.label_815:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a220
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_819
	test	rax, rax
	je	.label_820
.label_819:
	pop	rbx
	ret	
.label_820:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a240
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_821
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_824
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_825
	call	free
	xor	eax, eax
	jmp	.label_822
.label_821:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_823
	mov	qword ptr [rsi], rbx
.label_825:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_822
	test	rax, rax
	je	.label_823
.label_822:
	pop	rbx
	ret	
.label_823:
	call	xalloc_die
.label_824:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a2b0
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
	je	.label_827
	test	r14, r14
	je	.label_826
.label_827:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_826:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a2f0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_828
	call	rpl_calloc
	test	rax, rax
	je	.label_828
	pop	rcx
	ret	
.label_828:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a320

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
	je	.label_829
	test	r15, r15
	je	.label_830
.label_829:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_830:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a360

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
	je	.label_832
	test	r15, r15
	je	.label_831
.label_832:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_831:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a3b0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_7
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
	.align	16
	#Procedure 0x40a3e0

	.globl xgetcwd
	.type xgetcwd, @function
xgetcwd:
	push	rbx
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_834
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_833
.label_834:
	mov	rax, rbx
	pop	rbx
	ret	
.label_833:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a410

	.globl xasprintf
	.type xasprintf, @function
xasprintf:
	sub	rsp, 0xc8
	test	al, al
	je	.label_835
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_835:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], rsi
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 8
	lea	rsi, [rsp + 0xb0]
	call	xvasprintf
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a4b0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_836
	test	rsi, rsi
	mov	ecx, 1
	je	.label_837
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_837
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_836:
	mov	ecx, 1
.label_837:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a500

	.globl chdir_long
	.type chdir_long, @function
chdir_long:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbp, rdi
	call	chdir
	mov	ebx, eax
	test	ebx, ebx
	je	.label_839
	call	__errno_location
	mov	r14, rax
	cmp	dword ptr [r14], 0x24
	jne	.label_844
	mov	rdi, rbp
	call	strlen
	mov	r15, rax
	test	r15, r15
	je	.label_849
	cmp	r15, 0xfff
	jbe	.label_854
	add	r15, rbp
	mov	rax, -1
	nop	word ptr [rax + rax]
.label_858:
	mov	rbx, rax
	movzx	ecx, byte ptr [rbp + rbx + 1]
	lea	rax, [rbx + 1]
	cmp	ecx, 0x2f
	je	.label_858
	mov	r12d, 0xffffff9c
	test	rax, rax
	je	.label_862
	cmp	rax, 2
	jne	.label_863
	lea	rdi, [rbp + 3]
	mov	rdx, r15
	sub	rdx, rdi
	mov	esi, 0x2f
	call	memchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_842
	mov	byte ptr [rbx], 0
	mov	edi, 0xffffff9c
	mov	edx, 0x10900
	xor	eax, eax
	mov	rsi, rbp
	call	openat
	mov	r12d, eax
	test	r12d, r12d
	mov	byte ptr [rbx], 0x2f
	js	.label_851
	nop	dword ptr [rax + rax]
.label_859:
	movzx	eax, byte ptr [rbx + 1]
	inc	rbx
	cmp	eax, 0x2f
	je	.label_859
	jmp	.label_857
.label_839:
	xor	ebx, ebx
	jmp	.label_844
.label_862:
	mov	rbx, rbp
	jmp	.label_857
.label_863:
	mov	edi, 0xffffff9c
	mov	esi, OFFSET FLAT:.str.3_5
	mov	edx, 0x10900
	xor	eax, eax
	call	openat
	mov	r12d, eax
	test	r12d, r12d
	js	.label_851
	lea	rbx, [rbp + rbx + 1]
.label_857:
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2f
	je	.label_840
	cmp	rbx, r15
	ja	.label_847
	mov	rax, r15
	sub	rax, rbx
	cmp	rax, 0xfff
	jle	.label_846
	nop	dword ptr [rax + rax]
.label_853:
	mov	esi, 0x2f
	mov	edx, 0x1000
	mov	rdi, rbx
	call	memrchr
	mov	rbp, rax
	test	rbp, rbp
	je	.label_842
	mov	byte ptr [rbp], 0
	mov	rax, rbp
	sub	rax, rbx
	cmp	rax, 0x1000
	jge	.label_850
	mov	edx, 0x10900
	xor	eax, eax
	mov	edi, r12d
	mov	rsi, rbx
	call	openat
	mov	ebx, eax
	test	ebx, ebx
	js	.label_838
	test	r12d, r12d
	js	.label_856
	mov	edi, r12d
	call	close
	test	eax, eax
	jne	.label_845
.label_856:
	mov	r12d, ebx
	mov	byte ptr [rbp], 0x2f
	mov	rbx, rbp
	nop	
.label_848:
	movzx	eax, byte ptr [rbx + 1]
	inc	rbx
	cmp	eax, 0x2f
	je	.label_848
	mov	rax, r15
	sub	rax, rbx
	cmp	rax, 0x1000
	jge	.label_853
.label_846:
	cmp	rbx, r15
	jae	.label_855
	mov	edx, 0x10900
	xor	eax, eax
	mov	edi, r12d
	mov	rsi, rbx
	call	openat
	mov	ebx, eax
	test	ebx, ebx
	js	.label_841
	test	r12d, r12d
	js	.label_861
	mov	edi, r12d
	call	close
	test	eax, eax
	je	.label_861
	jmp	.label_845
.label_842:
	mov	dword ptr [r14], 0x24
	jmp	.label_864
.label_855:
	mov	ebx, r12d
.label_861:
	mov	edi, ebx
	call	fchdir
	test	eax, eax
	je	.label_860
	mov	r12d, ebx
	jmp	.label_841
.label_851:
	mov	ebx, dword ptr [r14]
	jmp	.label_843
.label_860:
	test	ebx, ebx
	js	.label_852
	mov	edi, ebx
	call	close
	test	eax, eax
	mov	ebx, 0
	je	.label_844
	jmp	.label_845
.label_838:
	mov	byte ptr [rbp], 0x2f
.label_841:
	mov	ebx, dword ptr [r14]
	test	r12d, r12d
	js	.label_843
	mov	edi, r12d
	call	close
	test	eax, eax
	jne	.label_845
.label_843:
	mov	dword ptr [r14], ebx
.label_864:
	mov	ebx, 0xffffffff
.label_844:
	mov	eax, ebx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_852:
	xor	ebx, ebx
	jmp	.label_844
.label_850:
	mov	edi, OFFSET FLAT:.str.6_3
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 0xb3
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_845:
	mov	edi, OFFSET FLAT:.str.7_2
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 0x40
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.cdb_free
	call	__assert_fail
.label_849:
	mov	edi, OFFSET FLAT:.str_10
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 0x7e
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_854:
	mov	edi, OFFSET FLAT:.str.2_5
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 0x7f
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_840:
	mov	edi, OFFSET FLAT:.str.4_4
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 0xa2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_847:
	mov	edi, OFFSET FLAT:.str.5_3
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 0xa3
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a800

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
	je	.label_865
	cmp	r15, -2
	jb	.label_865
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_865
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_865:
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
	#Procedure 0x40a860

	.globl read_file_system_list
	.type read_file_system_list, @function
read_file_system_list:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	edi, OFFSET FLAT:.str_11
	mov	esi, OFFSET FLAT:.str.1_9
	call	fopen
	mov	r15, rax
	mov	qword ptr [rsp + 0x20], r15
	test	r15, r15
	je	.label_877
	mov	qword ptr [rsp + 0x68], 0
	mov	qword ptr [rsp + 0x60], 0
	lea	rdi, [rsp + 0x68]
	lea	rsi, [rsp + 0x60]
	mov	edx, 0xa
	mov	rcx, r15
	call	__getdelim
	cmp	rax, -1
	je	.label_881
	lea	rax, [rsp + 0x70]
	mov	qword ptr [rsp + 0x28], rax
	lea	rbx, [rsp + 0x37]
	lea	r14, [rsp + 0x50]
	lea	r12, [rsp + 0x54]
	lea	r13, [rsp + 0x5c]
	nop	
.label_871:
	mov	rdi, qword ptr [rsp + 0x68]
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r14
	mov	qword ptr [rsp], r12
	mov	esi, OFFSET FLAT:.str.2_6
	xor	eax, eax
	mov	rdx, r13
	lea	rcx, [rsp + 0x58]
	lea	r8, [rsp + 0x3c]
	lea	r9, [rsp + 0x38]
	call	sscanf
	or	eax, 4
	cmp	eax, 7
	jne	.label_866
	movsxd	rdi, dword ptr [rsp + 0x50]
	add	rdi, qword ptr [rsp + 0x68]
	mov	esi, OFFSET FLAT:.str.3_6
	call	strstr
	mov	rbp, rax
	test	rbp, rbp
	je	.label_866
	mov	qword ptr [rsp], rbx
	mov	esi, OFFSET FLAT:.str.4_5
	xor	eax, eax
	mov	rdi, rbp
	lea	rdx, [rsp + 0x4c]
	lea	rcx, [rsp + 0x48]
	lea	r8, [rsp + 0x44]
	lea	r9, [rsp + 0x40]
	call	sscanf
	or	eax, 4
	cmp	eax, 5
	jne	.label_866
	movsxd	rax, dword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x68]
	mov	byte ptr [rcx + rax], 0
	movsxd	rax, dword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x68]
	mov	byte ptr [rcx + rax], 0
	movsxd	rax, dword ptr [rsp + 0x48]
	mov	byte ptr [rbp + rax], 0
	movsxd	rax, dword ptr [rsp + 0x40]
	mov	byte ptr [rbp + rax], 0
	movsxd	rdi, dword ptr [rsp + 0x44]
	add	rdi, rbp
	call	unescape_tab
	movsxd	rdi, dword ptr [rsp + 0x54]
	add	rdi, qword ptr [rsp + 0x68]
	call	unescape_tab
	movsxd	rdi, dword ptr [rsp + 0x3c]
	add	rdi, qword ptr [rsp + 0x68]
	call	unescape_tab
	mov	edi, 0x38
	call	xmalloc
	mov	r13, rax
	movsxd	rdi, dword ptr [rsp + 0x44]
	add	rdi, rbp
	call	xstrdup
	mov	qword ptr [r13], rax
	movsxd	rdi, dword ptr [rsp + 0x54]
	add	rdi, qword ptr [rsp + 0x68]
	call	xstrdup
	mov	qword ptr [r13 + 8], rax
	movsxd	rdi, dword ptr [rsp + 0x3c]
	add	rdi, qword ptr [rsp + 0x68]
	call	xstrdup
	mov	qword ptr [r13 + 0x10], rax
	movsxd	rdi, dword ptr [rsp + 0x4c]
	add	rdi, rbp
	call	xstrdup
	mov	rbp, rax
	mov	qword ptr [r13 + 0x18], rbp
	mov	r12b, byte ptr [r13 + 0x28]
	or	r12b, 4
	mov	byte ptr [r13 + 0x28], r12b
	mov	eax, dword ptr [rsp + 0x5c]
	mov	ecx, dword ptr [rsp + 0x58]
	movzx	edx, cl
	mov	esi, eax
	shl	esi, 8
	and	esi, 0xfff00
	or	esi, edx
	and	ecx, 0xffffff00
	shl	rcx, 0xc
	and	eax, 0xfffff000
	shl	rax, 0x20
	or	rax, rcx
	or	rax, rsi
	mov	qword ptr [r13 + 0x20], rax
	mov	esi, OFFSET FLAT:.str.5_1
	mov	rdi, rbp
	call	strcmp
	mov	r14b, 1
	test	eax, eax
	mov	al, 1
	je	.label_868
	mov	esi, OFFSET FLAT:.str.6_0
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_868
	mov	esi, OFFSET FLAT:.str.7_3
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_868
	mov	esi, OFFSET FLAT:.str.8_0
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_868
	mov	esi, OFFSET FLAT:.str.9_0
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_868
	mov	esi, OFFSET FLAT:.str.10_0
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_868
	mov	esi, OFFSET FLAT:.str.11_0
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_868
	mov	esi, OFFSET FLAT:.str.12_0
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_868
	mov	esi, OFFSET FLAT:.str.13_0
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_868
	mov	esi, OFFSET FLAT:.str.14_0
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_868
	mov	esi, OFFSET FLAT:.str.15_2
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_868
	mov	esi, OFFSET FLAT:.str.16_1
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_868
	mov	esi, OFFSET FLAT:.str.17_1
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	sete	al
	nop	dword ptr [rax]
.label_868:
	and	r12b, 0xfe
	or	r12b, al
	mov	byte ptr [r13 + 0x28], r12b
	mov	r15, qword ptr [r13]
	mov	esi, 0x3a
	mov	rdi, r15
	call	strchr
	test	rax, rax
	mov	rbx, qword ptr [rsp + 0x28]
	jne	.label_879
	movzx	eax, byte ptr [r15]
	cmp	eax, 0x2f
	jne	.label_880
	movzx	eax, byte ptr [r15 + 1]
	cmp	eax, 0x2f
	jne	.label_880
	mov	esi, OFFSET FLAT:.str.18_2
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_879
	mov	esi, OFFSET FLAT:.str.19_0
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_879
.label_880:
	mov	edi, OFFSET FLAT:.str.20
	mov	rsi, r15
	call	strcmp
	test	eax, eax
	sete	r14b
.label_879:
	add	r14b, r14b
	and	r12b, 0xfd
	or	r12b, r14b
	mov	byte ptr [r13 + 0x28], r12b
	mov	qword ptr [rbx], r13
	add	r13, 0x30
	mov	qword ptr [rsp + 0x28], r13
	mov	r15, qword ptr [rsp + 0x20]
	lea	rbx, [rsp + 0x37]
	lea	r14, [rsp + 0x50]
	lea	r12, [rsp + 0x54]
	lea	r13, [rsp + 0x5c]
.label_866:
	mov	edx, 0xa
	lea	rdi, [rsp + 0x68]
	lea	rsi, [rsp + 0x60]
	mov	rcx, r15
	call	__getdelim
	cmp	rax, -1
	jne	.label_871
	jmp	.label_875
.label_877:
	mov	edi, OFFSET FLAT:.str.21_0
	mov	esi, OFFSET FLAT:.str.1_9
	call	setmntent
	mov	r14, rax
	mov	qword ptr [rsp + 0x28], r14
	xor	eax, eax
	test	r14, r14
	je	.label_870
	lea	r13, [rsp + 0x70]
	mov	rdi, r14
	call	getmntent
	mov	rbp, rax
	test	rbp, rbp
	je	.label_876
	nop	word ptr cs:[rax + rax]
.label_882:
	mov	esi, OFFSET FLAT:.str.22_0
	mov	rdi, rbp
	call	hasmntopt
	mov	qword ptr [rsp + 0x20], rax
	mov	edi, 0x38
	call	xmalloc
	mov	rbx, rax
	mov	rdi, qword ptr [rbp]
	call	xstrdup
	mov	qword ptr [rbx], rax
	mov	rdi, qword ptr [rbp + 8]
	call	xstrdup
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [rbx + 0x10], 0
	mov	rdi, qword ptr [rbp + 0x10]
	call	xstrdup
	mov	r12, rax
	mov	qword ptr [rbx + 0x18], r12
	mov	r14b, byte ptr [rbx + 0x28]
	or	r14b, 4
	mov	byte ptr [rbx + 0x28], r14b
	mov	esi, OFFSET FLAT:.str.5_1
	mov	rdi, r12
	call	strcmp
	mov	r15b, 1
	test	eax, eax
	mov	bpl, 1
	je	.label_867
	mov	esi, OFFSET FLAT:.str.6_0
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	bpl, 1
	je	.label_867
	mov	esi, OFFSET FLAT:.str.7_3
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	bpl, 1
	je	.label_867
	mov	esi, OFFSET FLAT:.str.8_0
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	bpl, 1
	je	.label_867
	mov	esi, OFFSET FLAT:.str.9_0
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	bpl, 1
	je	.label_867
	mov	esi, OFFSET FLAT:.str.10_0
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	bpl, 1
	je	.label_867
	mov	esi, OFFSET FLAT:.str.11_0
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	bpl, 1
	je	.label_867
	mov	esi, OFFSET FLAT:.str.12_0
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	bpl, 1
	je	.label_867
	mov	esi, OFFSET FLAT:.str.13_0
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	bpl, 1
	je	.label_867
	mov	esi, OFFSET FLAT:.str.14_0
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	bpl, 1
	je	.label_867
	mov	esi, OFFSET FLAT:.str.15_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	bpl, 1
	je	.label_867
	mov	esi, OFFSET FLAT:.str.16_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	bpl, 1
	je	.label_867
	cmp	qword ptr [rsp + 0x20], 0
	sete	bpl
	mov	esi, OFFSET FLAT:.str.17_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_867
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_867:
	and	r14b, 0xfe
	or	r14b, bpl
	mov	byte ptr [rbx + 0x28], r14b
	mov	rbp, qword ptr [rbx]
	mov	esi, 0x3a
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	jne	.label_872
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2f
	jne	.label_874
	movzx	eax, byte ptr [rbp + 1]
	cmp	eax, 0x2f
	jne	.label_874
	mov	esi, OFFSET FLAT:.str.18_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_872
	mov	esi, OFFSET FLAT:.str.19_0
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_872
	nop	word ptr cs:[rax + rax]
.label_874:
	mov	edi, OFFSET FLAT:.str.20
	mov	rsi, rbp
	call	strcmp
	test	eax, eax
	sete	r15b
.label_872:
	add	r15b, r15b
	and	r14b, 0xfd
	or	r14b, r15b
	mov	byte ptr [rbx + 0x28], r14b
	mov	qword ptr [rbx + 0x20], -1
	mov	qword ptr [r13], rbx
	add	rbx, 0x30
	mov	r14, qword ptr [rsp + 0x28]
	mov	rdi, r14
	call	getmntent
	mov	rbp, rax
	test	rbp, rbp
	mov	r13, rbx
	jne	.label_882
	jmp	.label_883
.label_881:
	lea	rax, [rsp + 0x70]
	mov	qword ptr [rsp + 0x28], rax
.label_875:
	mov	rdi, qword ptr [rsp + 0x68]
	call	free
	test	byte ptr [r15], 0x20
	jne	.label_884
	mov	rdi, r15
	call	rpl_fclose
	cmp	eax, -1
	mov	rbx, qword ptr [rsp + 0x28]
	jne	.label_885
	jmp	.label_869
.label_884:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, r15
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
	mov	rbx, qword ptr [rsp + 0x28]
	jmp	.label_869
.label_876:
	mov	rbx, r13
.label_883:
	mov	rdi, r14
	call	endmntent
	test	eax, eax
	je	.label_869
.label_885:
	mov	qword ptr [rbx], 0
	mov	rax, qword ptr [rsp + 0x70]
	jmp	.label_870
.label_869:
	call	__errno_location
	mov	r15, rax
	mov	r14d, dword ptr [r15]
	mov	qword ptr [rbx], 0
	mov	rbx, qword ptr [rsp + 0x70]
	test	rbx, rbx
	je	.label_873
	nop	word ptr cs:[rax + rax]
.label_878:
	mov	rdi, qword ptr [rbx]
	mov	rbp, qword ptr [rbx + 0x30]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	test	byte ptr [rbx + 0x28], 4
	je	.label_886
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
.label_886:
	mov	rdi, rbx
	call	free
	mov	qword ptr [rsp + 0x70], rbp
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_878
.label_873:
	mov	dword ptr [r15], r14d
	xor	eax, eax
.label_870:
	add	rsp, 0x78
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
	#Procedure 0x40afc0

	.globl unescape_tab
	.type unescape_tab, @function
unescape_tab:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	call	strlen
	xor	ecx, ecx
	inc	rax
	je	.label_888
	mov	rdx, r14
	nop	word ptr [rax + rax]
.label_890:
	mov	r9b, byte ptr [r14 + rcx]
	lea	rsi, [rcx + 4]
	cmp	rsi, rax
	jae	.label_887
	movzx	esi, r9b
	cmp	esi, 0x5c
	jne	.label_887
	mov	sil, byte ptr [rcx + r14 + 1]
	mov	bl, sil
	and	bl, 0xfc
	movzx	edi, bl
	cmp	edi, 0x30
	jne	.label_887
	mov	dil, byte ptr [rcx + r14 + 2]
	mov	bl, dil
	and	bl, 0xf8
	movzx	ebx, bl
	cmp	ebx, 0x30
	jne	.label_887
	mov	r8b, byte ptr [r14 + rcx + 3]
	mov	bl, r8b
	and	bl, 0xf8
	movzx	ebx, bl
	cmp	ebx, 0x30
	jne	.label_887
	add	rcx, 3
	shl	sil, 6
	shl	dil, 3
	add	dil, sil
	add	dil, r8b
	add	dil, 0x50
	mov	byte ptr [rdx], dil
	jmp	.label_889
	nop	word ptr [rax + rax]
.label_887:
	mov	byte ptr [rdx], r9b
.label_889:
	inc	rcx
	inc	rdx
	cmp	rcx, rax
	jb	.label_890
.label_888:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b070
	.globl free_mount_entry
	.type free_mount_entry, @function
free_mount_entry:

	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	test	byte ptr [rbx + 0x28], 4
	je	.label_891
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
.label_891:
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b0b0

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	xor	r15d, r15d
	test	r14, r14
	je	.label_892
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	inc	r15
.label_892:
	lea	rax, [r15 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r15, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_893
	mov	qword ptr [rbx], 0
	test	r14, r14
	setne	byte ptr [rbx + 8]
	mov	byte ptr [rbx + 9], 0
	je	.label_893
	mov	r12, rbx
	add	r12, 9
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [r12 + r15], 0
.label_893:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b130
	.globl tzfree
	.type tzfree, @function
tzfree:

	push	rbx
	cmp	rdi, 2
	jb	.label_894
	nop	word ptr [rax + rax]
.label_895:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_895
.label_894:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b160

	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_896
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_897
	mov	rdi, rbp
	mov	rsi, r15
	call	localtime_r
	mov	bpl, 1
	test	rax, rax
	je	.label_898
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	mov	bpl, al
	xor	bpl, 1
.label_898:
	mov	rdi, r14
	call	revert_tz
	xor	ecx, ecx
	xor	al, 1
	cmovne	r15, rcx
	test	bpl, bpl
	cmovne	r15, rcx
	mov	rax, r15
	jmp	.label_899
.label_896:
	mov	rdi, rbp
	mov	rsi, r15
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	gmtime_r
.label_897:
	xor	eax, eax
.label_899:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b1f0

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	edi, OFFSET FLAT:.str_2
	call	getenv
	mov	r15, rax
	test	r15, r15
	mov	bl, byte ptr [r14 + 8]
	je	.label_902
	test	bl, bl
	je	.label_904
	lea	rdi, [r14 + 9]
	mov	rsi, r15
	call	strcmp
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	je	.label_901
.label_904:
	mov	rdi, r15
	call	strlen
	mov	r12, rax
	inc	r12
	mov	bpl, 1
	jmp	.label_908
.label_902:
	xor	ebp, ebp
	mov	eax, 1
	test	bl, bl
	mov	r12d, 0
	je	.label_901
.label_908:
	lea	rax, [r12 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r12, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_901
	mov	qword ptr [r13], 0
	mov	byte ptr [r13 + 8], bpl
	mov	byte ptr [r13 + 9], 0
	test	bpl, bpl
	je	.label_900
	lea	rbp, [r13 + 9]
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	memcpy
	mov	byte ptr [rbp + r12], 0
.label_900:
	test	bl, bl
	je	.label_907
	add	r14, 9
	mov	edi, OFFSET FLAT:.str_2
	mov	edx, 1
	mov	rsi, r14
	call	setenv
	jmp	.label_903
.label_907:
	mov	edi, OFFSET FLAT:.str_2
	call	unsetenv
.label_903:
	test	eax, eax
	je	.label_905
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	cmp	r13, 2
	jb	.label_906
	nop	dword ptr [rax]
.label_909:
	mov	rbx, qword ptr [r13]
	mov	rdi, r13
	call	free
	test	rbx, rbx
	mov	r13, rbx
	jne	.label_909
.label_906:
	mov	dword ptr [r14], ebp
	xor	eax, eax
	jmp	.label_901
.label_905:
	call	tzset
	mov	rax, r13
.label_901:
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
	.align	16
	#Procedure 0x40b330

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r12, rdi
	mov	rbx, qword ptr [r15 + 0x30]
	mov	r14b, 1
	test	rbx, rbx
	je	.label_914
	cmp	r15, rbx
	ja	.label_912
	lea	rax, [r15 + 0x38]
	cmp	rbx, rax
	jb	.label_914
.label_912:
	mov	ebp, OFFSET FLAT:.str_0
	cmp	byte ptr [rbx], 0
	je	.label_916
	lea	rbp, [r12 + 9]
	jmp	.label_919
.label_911:
	mov	rax, qword ptr [r12]
	lea	rbp, [rax + 9]
	test	rax, rax
	cmove	rbp, rcx
	cmovne	r12, rax
.label_919:
	lea	r13, [r12 + 9]
.label_921:
	mov	rdi, rbp
	mov	rsi, rbx
	call	strcmp
	test	eax, eax
	je	.label_916
	cmp	byte ptr [rbp], 0
	jne	.label_913
	cmp	rbp, r13
	jne	.label_917
	cmp	byte ptr [r12 + 8], 0
	je	.label_918
.label_913:
	mov	rdi, rbp
	call	strlen
	lea	rcx, [rax + rbp + 1]
	cmp	byte ptr [rax + rbp + 1], 0
	mov	rbp, rcx
	jne	.label_921
	jmp	.label_911
.label_918:
	mov	rbp, r13
.label_917:
	mov	rdi, rbx
	call	strlen
	lea	rdx, [rax + 1]
	mov	rcx, rbp
	sub	rcx, r13
	mov	rsi, rcx
	not	rsi
	cmp	rdx, rsi
	jbe	.label_915
	call	__errno_location
	mov	dword ptr [rax], 0xc
.label_910:
	xor	r14d, r14d
	jmp	.label_914
.label_915:
	add	rcx, rdx
	cmp	rcx, 0x76
	ja	.label_922
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rbx, rdx
	call	memcpy
	mov	byte ptr [rbp + rbx], 0
	mov	qword ptr [r15 + 0x30], rbp
	jmp	.label_914
.label_922:
	add	rax, 0x12
	and	rax, 0xfffffffffffffff8
	cmp	rdx, 0x77
	mov	r13, rdx
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	test	rax, rax
	je	.label_920
	mov	qword ptr [rax], 0
	mov	word ptr [rax + 8], 1
	mov	rbp, rax
	add	rbp, 9
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r13
	mov	rbx, rax
	call	memcpy
	mov	byte ptr [rbx + r13 + 9], 0
	mov	qword ptr [r12], rbx
	mov	byte ptr [rbx + 8], 0
.label_916:
	mov	qword ptr [r15 + 0x30], rbp
.label_914:
	mov	al, r14b
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_920:
	mov	qword ptr [r12], 0
	jmp	.label_910
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b4a0

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbp, rdi
	mov	r12b, 1
	cmp	rbp, 1
	je	.label_923
	call	__errno_location
	mov	r14, rax
	mov	r15d, dword ptr [r14]
	cmp	byte ptr [rbp + 8], 0
	je	.label_929
	lea	rsi, [rbp + 9]
	mov	edi, OFFSET FLAT:.str_2
	mov	edx, 1
	call	setenv
	jmp	.label_928
.label_929:
	mov	edi, OFFSET FLAT:.str_2
	call	unsetenv
.label_928:
	test	eax, eax
	je	.label_924
	mov	r15d, dword ptr [r14]
	xor	r12d, r12d
	jmp	.label_925
.label_924:
	call	tzset
	mov	r12b, 1
.label_925:
	cmp	rbp, 2
	jb	.label_927
	nop	
.label_926:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	mov	rbp, rbx
	jne	.label_926
.label_927:
	mov	dword ptr [r14], r15d
.label_923:
	mov	al, r12b
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b530

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r15, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_933
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_930
	mov	rdi, r15
	call	mktime
	mov	qword ptr [rsp + 0x38], rax
	cmp	rax, -1
	jne	.label_932
	lea	rdi, [rsp + 0x38]
	lea	rsi, [rsp]
	call	localtime_r
	test	rax, rax
	je	.label_931
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	xor	rax, qword ptr [r15]
	xor	rcx, qword ptr [r15 + 8]
	mov	edx, ecx
	or	edx, eax
	shr	rax, 0x20
	or	edx, eax
	shr	rcx, 0x20
	mov	rax, qword ptr [rsp + 0x10]
	xor	rax, qword ptr [r15 + 0x10]
	mov	esi, eax
	or	esi, ecx
	or	esi, edx
	shr	rax, 0x20
	or	eax, esi
	mov	edi, dword ptr [r15 + 0x20]
	mov	edx, dword ptr [rsp + 0x20]
	test	edi, edi
	sete	sil
	test	edx, edx
	sete	cl
	xor	cl, sil
	or	edx, edi
	setns	dl
	and	dl, cl
	movzx	ecx, dl
	or	ecx, eax
	jne	.label_931
.label_932:
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	test	al, al
	jne	.label_931
	mov	qword ptr [rsp + 0x38], -1
.label_931:
	mov	rdi, r14
	call	revert_tz
	test	al, al
	je	.label_930
	mov	rax, qword ptr [rsp + 0x38]
	jmp	.label_934
.label_930:
	mov	rax, -1
.label_934:
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_933:
	mov	rdi, r15
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	jmp	timegm
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b630

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
	jne	.label_936
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_935
	test	cl, cl
	jne	.label_935
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_935
.label_936:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_935
	call	__errno_location
	mov	dword ptr [rax], 0
.label_935:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b690

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xc8
	test	al, al
	je	.label_937
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_937:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_940
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_939
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_938
.label_939:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_938:
	mov	edx, dword ptr [rax]
.label_940:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b770

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_942
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_943
	cmp	byte ptr [rax + 1], 0
	je	.label_941
.label_943:
	mov	esi, OFFSET FLAT:.str.1_10
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_942
.label_941:
	xor	ebx, ebx
.label_942:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b7b0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_11
	cmp	byte ptr [rcx], 0
	je	.label_944
	mov	rax, rcx
.label_944:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b7e0

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	cmp	ebx, 2
	ja	.label_945
	mov	edi, ebx
	call	dup_safer
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_946
.label_945:
	mov	eax, ebx
.label_946:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b830

	.globl xvasprintf
	.type xvasprintf, @function
xvasprintf:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15, rsi
	mov	rax, rdi
	xor	ebp, ebp
	jmp	.label_955
	nop	dword ptr [rax + rax]
.label_950:
	inc	rbp
.label_955:
	movzx	ecx, byte ptr [rax + rbp*2]
	cmp	ecx, 0x25
	jne	.label_948
	movzx	ecx, byte ptr [rax + rbp*2 + 1]
	cmp	ecx, 0x73
	je	.label_950
	jmp	.label_953
.label_948:
	test	cl, cl
	jne	.label_953
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [rsp + 0x20], rax
	movups	xmm0, xmmword ptr [r15]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	test	rbp, rbp
	je	.label_958
	mov	r14d, dword ptr [rsp + 0x10]
	xor	ebx, ebx
	mov	r12, rbp
	nop	dword ptr [rax + rax]
.label_949:
	cmp	r14d, 0x28
	ja	.label_952
	movsxd	rax, r14d
	add	rax, qword ptr [rsp + 0x20]
	add	r14d, 8
	mov	dword ptr [rsp + 0x10], r14d
	jmp	.label_954
	nop	dword ptr [rax]
.label_952:
	mov	rax, qword ptr [rsp + 0x18]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0x18], rcx
.label_954:
	mov	rdi, qword ptr [rax]
	call	strlen
	add	rax, rbx
	cmp	rax, rbx
	mov	rbx, -1
	cmovae	rbx, rax
	dec	r12
	jne	.label_949
	test	rbx, -0x80000000
	je	.label_956
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	xor	r14d, r14d
	jmp	.label_947
.label_953:
	lea	rdi, [rsp + 8]
	mov	esi, 1
	mov	rdx, rax
	mov	rcx, r15
	call	__vasprintf_chk
	test	eax, eax
	js	.label_951
	mov	r14, qword ptr [rsp + 8]
	jmp	.label_947
.label_951:
	call	__errno_location
	xor	r14d, r14d
	cmp	dword ptr [rax], 0xc
	jne	.label_947
	call	xalloc_die
.label_958:
	mov	edi, 1
	call	xmalloc
	mov	r14, rax
	mov	rbx, r14
	mov	byte ptr [rbx], 0
	jmp	.label_947
.label_956:
	inc	rax
	mov	rdi, rax
	call	xmalloc
	mov	r14, rax
	mov	rbx, r14
	nop	word ptr [rax + rax]
.label_959:
	movsxd	rcx, dword ptr [r15]
	cmp	rcx, 0x28
	ja	.label_957
	mov	rax, rcx
	add	rax, qword ptr [r15 + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [r15], ecx
	jmp	.label_960
	nop	dword ptr [rax + rax]
.label_957:
	mov	rax, qword ptr [r15 + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [r15 + 8], rcx
.label_960:
	mov	r12, qword ptr [rax]
	mov	rdi, r12
	call	strlen
	mov	r13, rax
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r13
	call	memcpy
	add	rbx, r13
	dec	rbp
	jne	.label_959
	mov	byte ptr [rbx], 0
.label_947:
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b9e0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_961
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_962
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_961
.label_962:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_961
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_963
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_963:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_961:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40ba60

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_964
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_964
	test	byte ptr [rbx + 1], 1
	je	.label_964
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_964:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40baa0

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
	jne	.label_965
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_965
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_966
.label_965:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_966:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_967
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_967:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40bb10

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bb30

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop	
	.section .text
	.align	16
	#Procedure 0x40bb40

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_979
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_979:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	cmp	esi, 0xb
	ja	.label_968
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_980
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_975
	test	esi, esi
	jne	.label_968
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_985
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_987
.label_968:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_971
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_975
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_976
.label_980:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_969
.label_975:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_978
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_981
.label_978:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_981:
	mov	edx, dword ptr [rax]
.label_988:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
.label_969:
	mov	ebp, eax
.label_970:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_976:
	cmp	eax, 6
	jne	.label_971
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_973
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_984
.label_971:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_986
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_983
.label_985:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_987:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	jmp	.label_988
.label_973:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_984:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_974
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_977
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_977
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_970
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	al, 1
	jmp	.label_972
.label_977:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_970
.label_986:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_983:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_969
.label_974:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	sete	al
.label_972:
	test	al, al
	je	.label_970
	test	ebp, ebp
	js	.label_970
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_982
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_970
.label_982:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_970
	nop	word ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]