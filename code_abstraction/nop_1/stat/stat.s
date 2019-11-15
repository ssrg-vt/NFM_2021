	.section	.text
	.align	16
	#Procedure 0x402230

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_8
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
	call	emit_ancillary_info
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
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402490

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4024c0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.28
	nop	
.label_11:
	mov	edi, OFFSET FLAT:.str.16
	call	strcmp
	test	eax, eax
	je	.label_10
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_11
.label_10:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:.str.16
	cmovne	rbx, rax
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
	je	.label_9
	mov	esi, OFFSET FLAT:.str.38
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_9
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_9:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.16
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.16
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.42
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
	.align	16
	#Procedure 0x4025e0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbp, rsi
	mov	r13d, edi
	mov	rdi, qword ptr [rbp]
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
	je	.label_17
	mov	rdi, rax
.label_17:
	mov	qword ptr [word ptr [rip + decimal_point]],  rdi
	call	strlen
	mov	qword ptr [word ptr [rip + decimal_point_len]],  rax
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	r14d, r14d
	xor	r12d, r12d
	xor	r15d, r15d
	jmp	.label_25
	nop	
.label_21:
	mov	r14b, 1
.label_25:
	mov	cl, r12b
.label_22:
	mov	r12b, cl
	jmp	.label_27
	nop	dword ptr [rax + rax]
.label_19:
	mov	r15,  qword ptr [word ptr [rip + optarg]]
	mov	byte ptr [byte ptr [rip + interpret_backslash_escapes]],  bl
	mov	qword ptr [word ptr [rip + trailing_delim]],  rax
.label_27:
	xor	ebx, ebx
	mov	edx, OFFSET FLAT:.str.21
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r13d
	mov	rsi, rbp
	call	getopt_long
	cmp	eax, 0x65
	jg	.label_15
	cmp	eax, 0x4b
	jle	.label_16
	cmp	eax, 0x4c
	je	.label_18
	cmp	eax, 0x63
	mov	eax, OFFSET FLAT:.str.22
	je	.label_19
	jmp	.label_20
	nop	dword ptr [rax]
.label_15:
	mov	cl, 1
	cmp	eax, 0x66
	je	.label_21
	cmp	eax, 0x74
	je	.label_22
	cmp	eax, 0x80
	jne	.label_20
	mov	bl, 1
	mov	eax, OFFSET FLAT:.str_0
	jmp	.label_19
.label_18:
	mov	byte ptr [byte ptr [rip + follow_links]],  1
	jmp	.label_27
.label_16:
	cmp	eax, -1
	jne	.label_28
	cmp	dword ptr [dword ptr [rip + optind]],  r13d
	je	.label_30
	test	r15, r15
	je	.label_31
	mov	esi, OFFSET FLAT:.str.26
	mov	rdi, r15
	call	strstr
	test	rax, rax
	je	.label_13
	call	getenv_quoting_style
	mov	r12, r15
	jmp	.label_14
.label_31:
	test	r14b, r14b
	setne	al
	test	r12b, r12b
	setne	cl
	movzx	r12d, al
	movzx	ebx, cl
	xor	edx, edx
	mov	edi, r12d
	mov	esi, ebx
	call	default_format
	mov	r15, rax
	mov	edx, 1
	mov	edi, r12d
	mov	esi, ebx
	call	default_format
	mov	r12, rax
	jmp	.label_14
.label_13:
	mov	r12, r15
.label_14:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	bl, 1
	cmp	eax, r13d
	jge	.label_26
	lea	rbp, [rbp + rax*8]
	sub	r13d, eax
	mov	bl, 1
	nop	word ptr cs:[rax + rax]
.label_29:
	test	r14b, r14b
	mov	rdi, qword ptr [rbp]
	mov	rsi, r15
	je	.label_12
	call	do_statfs
	jmp	.label_24
	nop	word ptr cs:[rax + rax]
.label_12:
	mov	rdx, r12
	call	do_stat
.label_24:
	and	bl, al
	add	rbp, 8
	dec	r13d
	jne	.label_29
.label_26:
	movzx	eax, bl
	xor	eax, 1
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_28:
	cmp	eax, 0xffffff7d
	je	.label_23
	cmp	eax, 0xffffff7e
	jne	.label_20
	xor	edi, edi
	call	usage
.label_23:
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
.label_20:
	mov	edi, 1
	call	usage
.label_30:
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402850

	.globl getenv_quoting_style
	.type getenv_quoting_style, @function
getenv_quoting_style:
	push	r14
	push	rbx
	push	rax
	mov	edi, OFFSET FLAT:.str.50
	call	getenv
	mov	rbx, rax
	test	rbx, rbx
	je	.label_33
	mov	esi, OFFSET FLAT:quoting_style_args
	mov	edx, OFFSET FLAT:quoting_style_vals
	mov	ecx, 4
	mov	rdi, rbx
	call	argmatch
	test	eax, eax
	js	.label_34
	cdqe	
	mov	esi,  dword ptr [dword ptr [+ (rax * 4) + quoting_style_vals]]
	xor	edi, edi
	jmp	.label_32
.label_33:
	xor	edi, edi
	mov	esi, 4
.label_32:
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	set_quoting_style
.label_34:
	xor	edi, edi
	mov	esi, 4
	call	set_quoting_style
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.51
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
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028f0

	.globl default_format
	.type default_format, @function
default_format:
	push	r15
	push	r14
	push	rbx
	mov	ebx, edx
	test	dil, dil
	je	.label_38
	test	sil, sil
	je	.label_40
	mov	edi, OFFSET FLAT:fmt_terse_fs
	jmp	.label_35
.label_38:
	test	sil, sil
	je	.label_36
	mov	edi, OFFSET FLAT:fmt_terse_regular
	jmp	.label_35
.label_40:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
.label_35:
	pop	rbx
	pop	r14
	pop	r15
	jmp	xstrdup
.label_36:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	xstrdup
	mov	r14, rax
	xor	edi, edi
	test	bl, bl
	je	.label_37
	mov	esi, OFFSET FLAT:.str.55
	jmp	.label_39
.label_37:
	mov	esi, OFFSET FLAT:.str.56
.label_39:
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
	#Procedure 0x402a00

	.globl do_statfs
	.type do_statfs, @function
do_statfs:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x78
	mov	r14, rsi
	mov	rbx, rdi
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	jne	.label_41
	cmp	byte ptr [rbx + 1], 0
	je	.label_44
.label_41:
	lea	rsi, [rsp]
	mov	rdi, rbx
	call	statfs
	test	eax, eax
	je	.label_43
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.61
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	call	error
	jmp	.label_42
.label_43:
	lea	r8, [rsp]
	mov	esi, 0xffffffff
	mov	ecx, OFFSET FLAT:print_statfs
	mov	rdi, r14
	mov	rdx, rbx
	call	print_it
	mov	r14b, al
	xor	r14b, 1
	jmp	.label_42
.label_44:
	xor	r14d, r14d
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
.label_42:
	mov	al, r14b
	add	rsp, 0x78
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ae0

	.globl do_stat
	.type do_stat, @function
do_stat:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x90
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	jne	.label_50
	mov	al, byte ptr [rbx + 1]
	mov	cl, al
	neg	cl
	sbb	r12d, r12d
	lea	rbp, [rsp]
	test	al, al
	jne	.label_45
	mov	edi, r12d
	mov	rsi, rbp
	call	__fstat
	test	eax, eax
	je	.label_48
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
	jmp	.label_46
.label_50:
	lea	rbp, [rsp]
	mov	r12d, 0xffffffff
.label_45:
	movzx	eax,  byte ptr [byte ptr [rip + follow_links]]
	and	eax, 1
	lea	rsi, [rsp]
	mov	rdi, rbx
	cmp	eax, 1
	jne	.label_49
	call	stat
	jmp	.label_51
.label_49:
	call	__lstat
.label_51:
	test	eax, eax
	je	.label_48
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
	mov	rdx, r15
	call	error
	jmp	.label_46
.label_48:
	mov	eax, 0x4000
	or	eax, dword ptr [rsp + 0x18]
	and	eax, 0xf000
	cmp	eax, 0x6000
	jne	.label_47
	mov	r14, r15
.label_47:
	mov	ecx, OFFSET FLAT:print_stat
	mov	rdi, r14
	mov	esi, r12d
	mov	rdx, rbx
	mov	r8, rbp
	call	print_it
	mov	bpl, al
	xor	bpl, 1
.label_46:
	mov	al, bpl
	add	rsp, 0x90
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402c10

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
	mov	r14, rdi
	call	strlen
	lea	rdi, [rax + 3]
	call	xmalloc
	mov	qword ptr [rsp + 0x30], rax
	mov	al, byte ptr [r14]
	mov	dword ptr [rsp + 0x2c], 0
	jmp	.label_63
	nop	word ptr cs:[rax + rax]
.label_52:
	mov	al, byte ptr [r14 + 1]
	inc	r14
.label_63:
	test	al, al
	je	.label_68
	movsx	edi, al
	cmp	edi, 0x5c
	je	.label_72
	cmp	edi, 0x25
	jne	.label_75
	lea	r15, [r14 + 1]
	mov	esi, OFFSET FLAT:printf_flags
	mov	rdi, r15
	call	strspn
	lea	rbp, [r14 + rax]
	lea	rdi, [r14 + rax + 1]
	mov	esi, OFFSET FLAT:digits
	call	strspn
	lea	rbx, [rax + rbp + 1]
	movzx	eax, byte ptr [rax + rbp + 1]
	cmp	eax, 0x2e
	jne	.label_57
	lea	rdi, [rbx + 1]
	mov	esi, OFFSET FLAT:digits
	call	strspn
	lea	rbx, [rax + rbx + 1]
.label_57:
	mov	r12, rbx
	sub	r12, r15
	movsx	ebp, byte ptr [rbx]
	lea	r13, [r12 + 1]
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, r14
	mov	rdx, r13
	call	memcpy
	cmp	ebp, 0x25
	mov	r14, rbx
	je	.label_69
	test	ebp, ebp
	jne	.label_73
	lea	r14, [rbx - 1]
.label_69:
	cmp	rbx, r15
	jne	.label_76
	mov	edi, 0x25
	call	putchar_unlocked
	jmp	.label_52
	nop	word ptr cs:[rax + rax]
.label_72:
	mov	al,  byte ptr [byte ptr [rip + interpret_backslash_escapes]]
	and	al, 1
	je	.label_56
	movsx	edi, byte ptr [r14 + 1]
	mov	eax, edi
	and	eax, 0xf8
	cmp	eax, 0x30
	jne	.label_59
	add	edi, -0x30
	mov	eax, 2
	nop	word ptr [rax + rax]
.label_67:
	movsx	ecx, byte ptr [r14 + rax]
	mov	edx, ecx
	and	edx, 0xf8
	cmp	edx, 0x30
	jne	.label_65
	lea	edi, [rcx + rdi*8 - 0x30]
	inc	rax
	lea	ecx, [rax - 1]
	cmp	ecx, 3
	jl	.label_67
.label_65:
	add	r14, rax
	call	putchar_unlocked
	dec	r14
	jmp	.label_52
.label_56:
	mov	edi, 0x5c
	call	putchar_unlocked
	jmp	.label_52
.label_73:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, r13
	mov	edx, ebp
	mov	ecx, dword ptr [rsp + 0xc]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rsp + 0x20]
	call	qword ptr [rsp + 0x18]
	mov	ecx, dword ptr [rsp + 0x2c]
	and	cl, 1
	or	cl, al
	mov	dword ptr [rsp + 0x2c], ecx
	jmp	.label_60
.label_59:
	movzx	eax, dil
	cmp	eax, 0x78
	jne	.label_62
	movsx	r15d, byte ptr [r14 + 2]
	mov	edi, r15d
	call	to_uchar
	movzx	ebx, al
	call	__ctype_b_loc
	mov	r13, rax
	mov	rax, qword ptr [r13]
	test	byte ptr [rax + rbx*2 + 1], 0x10
	jne	.label_66
.label_62:
	lea	rbx, [r14 + 1]
	mov	al, byte ptr [rbx]
	test	al, al
	je	.label_71
	movsx	edi, al
	call	print_esc_char
.label_60:
	mov	r14, rbx
	jmp	.label_52
.label_71:
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
	mov	edi, 0x5c
	call	putchar_unlocked
	jmp	.label_52
.label_66:
	mov	al, r15b
	add	al, 0x9f
	movzx	eax, al
	cmp	eax, 5
	ja	.label_61
	add	r15d, -0x57
	jmp	.label_64
.label_61:
	mov	al, r15b
	add	al, 0xbf
	movzx	eax, al
	cmp	eax, 5
	ja	.label_54
	add	r15d, -0x37
	jmp	.label_64
.label_54:
	add	r15d, -0x30
.label_64:
	movsx	ebx, byte ptr [r14 + 3]
	mov	edi, ebx
	call	to_uchar
	movzx	eax, al
	mov	rcx, qword ptr [r13]
	test	byte ptr [rcx + rax*2 + 1], 0x10
	jne	.label_58
	add	r14, 2
	jmp	.label_74
.label_58:
	shl	r15d, 4
	mov	al, bl
	add	al, 0x9f
	movzx	eax, al
	cmp	eax, 5
	ja	.label_70
	add	ebx, -0x57
	jmp	.label_53
.label_70:
	mov	al, bl
	add	al, 0xbf
	movzx	eax, al
	cmp	eax, 5
	ja	.label_55
	add	ebx, -0x37
	jmp	.label_53
.label_55:
	add	ebx, -0x30
.label_53:
	add	r14, 3
	add	r15d, ebx
.label_74:
	mov	edi, r15d
	nop	
.label_75:
	call	putchar_unlocked
	jmp	.label_52
.label_68:
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
.label_76:
	mov	al, byte ptr [rbx]
	mov	rbp, qword ptr [rsp + 0x30]
	mov	byte ptr [rbp + r12 + 1], al
	mov	byte ptr [rbp + r12 + 2], 0
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
	nop	
	.section	.text
	.align	16
	#Procedure 0x402f30

	.globl print_statfs
	.type print_statfs, @function
print_statfs:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	lea	eax, [rdx - 0x61]
	cmp	eax, 0x13
	ja	.label_85
	jmp	qword ptr [word ptr [+ (rax * 8) + label_78]]
.label_884:
	mov	rdx, qword ptr [r9 + 0x20]
	jmp	.label_79
.label_85:
	cmp	edx, 0x53
	je	.label_81
	cmp	edx, 0x54
	jne	.label_83
	mov	rdi, r9
	call	human_fstype
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, rax
	call	out_string
	jmp	.label_84
.label_83:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, 0x3f
	call	fputc_unlocked
	jmp	.label_84
.label_885:
	mov	rdx, qword ptr [r9 + 0x10]
	jmp	.label_79
.label_886:
	mov	rdx, qword ptr [r9 + 0x28]
	jmp	.label_82
.label_887:
	mov	rdx, qword ptr [r9 + 0x30]
	jmp	.label_79
.label_888:
	mov	rdx, qword ptr [r9 + 0x18]
.label_79:
	mov	rdi, rbx
	mov	rsi, r14
	call	out_int
	jmp	.label_84
.label_889:
	add	r9, 0x3c
	xor	ecx, ecx
	xor	edx, edx
	nop	dword ptr [rax]
.label_77:
	mov	eax, dword ptr [r9]
	shl	rax, cl
	or	rdx, rax
	add	r9, -4
	add	rcx, 0x20
	cmp	rcx, 0x40
	jne	.label_77
	jmp	.label_80
.label_890:
	mov	rdx, qword ptr [r9 + 0x40]
	jmp	.label_82
.label_891:
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r8
	call	out_string
	jmp	.label_84
.label_893:
	mov	rdx, qword ptr [r9]
.label_80:
	mov	rdi, rbx
	mov	rsi, r14
	call	out_uint_x
	jmp	.label_84
.label_81:
	mov	rdx, qword ptr [r9 + 0x48]
	test	rdx, rdx
	jne	.label_82
.label_892:
	mov	rdx, qword ptr [r9 + 8]
.label_82:
	mov	rdi, rbx
	mov	rsi, r14
	call	out_uint
.label_84:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403030

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	movzx	eax, dil
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403040

	.globl print_esc_char
	.type print_esc_char, @function
print_esc_char:
	push	rbx
	mov	ebx, edi
	lea	eax, [rbx - 0x5c]
	cmp	eax, 0xa
	jbe	.label_86
	lea	eax, [rbx - 0x6e]
	cmp	eax, 8
	ja	.label_88
	jmp	qword ptr [word ptr [+ (rax * 8) + label_89]]
.label_951:
	mov	bl, 0xa
	jmp	.label_87
.label_86:
	jmp	qword ptr [word ptr [+ (rax * 8) + label_90]]
.label_862:
	mov	bl, 7
	jmp	.label_87
.label_88:
	cmp	ebx, 0x22
	je	.label_87
.label_861:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.64
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
	jmp	.label_87
.label_952:
	mov	bl, 0xd
	jmp	.label_87
.label_953:
	mov	bl, 9
	jmp	.label_87
.label_954:
	mov	bl, 0xb
	jmp	.label_87
.label_863:
	mov	bl, 8
	jmp	.label_87
.label_864:
	mov	bl, 0x1b
	jmp	.label_87
.label_865:
	mov	bl, 0xc
.label_87:
	movsx	edi, bl
	pop	rbx
	jmp	putchar_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030c0

	.globl out_string
	.type out_string, @function
out_string:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	mov	edx, OFFSET FLAT:.str.59
	mov	ecx, OFFSET FLAT:.str.65
	call	make_format
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403100

	.globl out_uint_x
	.type out_uint_x, @function
out_uint_x:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	mov	edx, OFFSET FLAT:.str.66
	mov	ecx, OFFSET FLAT:.str.67
	call	make_format
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403140

	.globl out_uint
	.type out_uint, @function
out_uint:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	mov	edx, OFFSET FLAT:.str.68
	mov	ecx, OFFSET FLAT:.str.69
	call	make_format
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403180

	.globl human_fstype
	.type human_fstype, @function
human_fstype:
	push	rbx
	mov	ebx, OFFSET FLAT:.str.70
	mov	r8, qword ptr [rdi]
	cmp	r8, 0x2fc12fc0
	jg	.label_177
	cmp	r8, 0xef50
	jg	.label_173
	cmp	r8, 0x482a
	jle	.label_188
	cmp	r8, 0x7274
	jg	.label_190
	cmp	r8, 0x517a
	jg	.label_194
	cmp	r8, 0x4d43
	jg	.label_199
	cmp	r8, 0x482b
	je	.label_202
	cmp	r8, 0x4858
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.117
	jmp	.label_92
.label_177:
	cmp	r8, 0x65735542
	jle	.label_208
	mov	eax, 0x858458f5
	cmp	r8, rax
	jle	.label_94
	mov	eax, 0xc97e8167
	cmp	r8, rax
	jg	.label_100
	mov	eax, 0xaad7aae9
	cmp	r8, rax
	jg	.label_104
	mov	eax, 0x958458f5
	cmp	r8, rax
	jg	.label_108
	mov	eax, 0x858458f6
	cmp	r8, rax
	je	.label_112
	mov	eax, 0x9123683e
	cmp	r8, rax
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.84
	jmp	.label_92
.label_173:
	cmp	r8, 0x13111a7
	jg	.label_119
	cmp	r8, 0x1021993
	jg	.label_121
	cmp	r8, 0x27e0ea
	jg	.label_145
	cmp	r8, 0xf15e
	jg	.label_162
	cmp	r8, 0xef51
	je	.label_130
	cmp	r8, 0xef53
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.105
	jmp	.label_92
.label_208:
	cmp	r8, 0x541900ff
	jg	.label_137
	cmp	r8, 0x47504652
	jle	.label_136
	cmp	r8, 0x5346414e
	jg	.label_142
	cmp	r8, 0x52654972
	jg	.label_210
	cmp	r8, 0x47504653
	je	.label_183
	cmp	r8, 0x50495045
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.149
	jmp	.label_92
.label_188:
	cmp	r8, 0x1cd0
	jle	.label_152
	cmp	r8, 0x3fff
	jg	.label_154
	cmp	r8, 0x2477
	jg	.label_157
	cmp	r8, 0x1cd1
	je	.label_163
	cmp	r8, 0x2468
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.134
	jmp	.label_92
.label_94:
	cmp	r8, 0x73636672
	jle	.label_170
	cmp	r8, 0x7461636e
	jg	.label_172
	cmp	r8, 0x73727278
	jg	.label_175
	cmp	r8, 0x73636673
	je	.label_179
	cmp	r8, 0x73717368
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.168
	jmp	.label_92
.label_137:
	cmp	r8, 0x6165676b
	jle	.label_189
	cmp	r8, 0x62656571
	jg	.label_192
	cmp	r8, 0x62646575
	jg	.label_197
	cmp	r8, 0x6165676c
	je	.label_200
	cmp	r8, 0x61756673
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.76
	jmp	.label_92
.label_119:
	cmp	r8, 0x15013345
	jg	.label_207
	cmp	r8, 0xbad1de9
	jle	.label_91
	cmp	r8, 0x11307853
	jg	.label_98
	cmp	r8, 0xbad1dea
	je	.label_102
	cmp	r8, 0xbd00bd0
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.130
	jmp	.label_92
.label_190:
	cmp	r8, 0x9fa0
	jg	.label_113
	cmp	r8, 0x965f
	jg	.label_198
	cmp	r8, 0x7275
	je	.label_117
	cmp	r8, 0x72b6
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.126
	jmp	.label_92
.label_100:
	mov	eax, 0xf97cff8b
	cmp	r8, rax
	jg	.label_124
	mov	eax, 0xde5e81e3
	cmp	r8, rax
	jg	.label_126
	mov	eax, 0xc97e8168
	cmp	r8, rax
	je	.label_131
	mov	eax, 0xcafe4a11
	cmp	r8, rax
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.82
	jmp	.label_92
.label_121:
	cmp	r8, 0x12fd16c
	jg	.label_139
	cmp	r8, 0x1021994
	je	.label_141
	cmp	r8, 0x1021997
	je	.label_143
	cmp	r8, 0x1161970
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.113
	jmp	.label_92
.label_136:
	cmp	r8, 0x42494e4c
	jle	.label_160
	cmp	r8, 0x453dcd27
	jg	.label_150
	cmp	r8, 0x42494e4d
	je	.label_153
	cmp	r8, 0x43415d53
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.163
	jmp	.label_92
.label_152:
	cmp	r8, 0x1372
	jle	.label_164
	cmp	r8, 0x137e
	jg	.label_165
	cmp	r8, 0x1373
	je	.label_169
	cmp	r8, 0x137d
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.104
	jmp	.label_92
.label_170:
	cmp	r8, 0x68191121
	jle	.label_176
	cmp	r8, 0x6e667363
	jg	.label_180
	cmp	r8, 0x68191122
	je	.label_182
	cmp	r8, 0x6b414653
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.128
	jmp	.label_92
.label_189:
	cmp	r8, 0x58465341
	jle	.label_193
	cmp	r8, 0x5dca2df4
	jg	.label_129
	cmp	r8, 0x58465342
	je	.label_201
	cmp	r8, 0x5a3c69f0
	je	.label_92
	jmp	.label_99
.label_207:
	cmp	r8, 0x1badfacd
	jle	.label_206
	cmp	r8, 0x28cd3d44
	jg	.label_211
	cmp	r8, 0x1badface
	je	.label_96
	cmp	r8, 0x24051905
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.174
	jmp	.label_92
.label_194:
	cmp	r8, 0x5df4
	jg	.label_107
	cmp	r8, 0x517b
	je	.label_110
	cmp	r8, 0x564c
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.139
	jmp	.label_92
.label_104:
	mov	eax, 0xbacbacbb
	cmp	r8, rax
	jg	.label_118
	mov	eax, 0xaad7aaea
	cmp	r8, rax
	je	.label_120
	mov	eax, 0xabba1974
	cmp	r8, rax
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.183
	jmp	.label_92
.label_145:
	cmp	r8, 0xc0ffed
	jg	.label_128
	cmp	r8, 0x27e0eb
	je	.label_134
	cmp	r8, 0x414a53
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.101
	jmp	.label_92
.label_142:
	cmp	r8, 0x5346544d
	jg	.label_140
	cmp	r8, 0x5346414f
	je	.label_103
	cmp	r8, 0x53464846
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.182
	jmp	.label_92
.label_154:
	cmp	r8, 0x4005
	jg	.label_146
	cmp	r8, 0x4000
	je	.label_148
	cmp	r8, 0x4004
	jne	.label_99
.label_148:
	mov	ebx, OFFSET FLAT:.str.124
	jmp	.label_92
.label_172:
	cmp	r8, 0x794c762f
	jg	.label_155
	cmp	r8, 0x7461636f
	je	.label_159
	cmp	r8, 0x74726163
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.173
	jmp	.label_92
.label_192:
	cmp	r8, 0x6462671f
	jg	.label_168
	cmp	r8, 0x62656572
	je	.label_171
	cmp	r8, 0x63677270
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.88
	jmp	.label_92
.label_113:
	cmp	r8, 0xadf4
	jg	.label_178
	cmp	r8, 0x9fa1
	je	.label_181
	cmp	r8, 0x9fa2
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.177
	jmp	.label_92
.label_124:
	mov	eax, 0xfe534d41
	cmp	r8, rax
	jg	.label_191
	mov	eax, 0xf97cff8c
	cmp	r8, rax
	je	.label_127
	mov	eax, 0xf995e849
	cmp	r8, rax
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.119
	jmp	.label_92
.label_139:
	lea	rax, [r8 - 0x12ff7b4]
	cmp	rax, 3
	ja	.label_205
	jmp	qword ptr [word ptr [+ (rax * 8) + label_209]]
.label_879:
	mov	ebx, OFFSET FLAT:.str.184
	jmp	.label_92
.label_91:
	cmp	r8, 0x13111a8
	je	.label_97
	cmp	r8, 0x7655821
	je	.label_101
	cmp	r8, 0x9041934
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.75
	jmp	.label_92
.label_160:
	cmp	r8, 0x2fc12fc1
	je	.label_111
	cmp	r8, 0x3153464a
	je	.label_114
	cmp	r8, 0x42465331
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.79
	jmp	.label_92
.label_164:
	cmp	r8, 0x2f
	je	.label_125
	cmp	r8, 0x187
	je	.label_123
	cmp	r8, 0x7c0
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.125
	jmp	.label_92
.label_176:
	cmp	r8, 0x65735543
	je	.label_187
	cmp	r8, 0x65735546
	je	.label_135
	cmp	r8, 0x67596969
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.12_0
	jmp	.label_92
.label_193:
	cmp	r8, 0x54190100
	je	.label_184
	cmp	r8, 0x565a4653
	je	.label_151
	cmp	r8, 0x58295829
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.188
	jmp	.label_92
.label_206:
	cmp	r8, 0x15013346
	je	.label_147
	cmp	r8, 0x19800202
	je	.label_109
	cmp	r8, 0x19830326
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.109
	jmp	.label_92
.label_199:
	cmp	r8, 0x4d44
	je	.label_158
	cmp	r8, 0x4d5a
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.136
	jmp	.label_92
.label_108:
	mov	eax, 0x958458f6
	cmp	r8, rax
	je	.label_167
	mov	eax, 0xa501fcf5
	cmp	r8, rax
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.180
	jmp	.label_92
.label_162:
	cmp	r8, 0xf15f
	je	.label_144
	cmp	r8, 0x11954
	jne	.label_99
.label_184:
	mov	ebx, OFFSET FLAT:.str.176
	jmp	.label_92
.label_210:
	cmp	r8, 0x52654973
	je	.label_186
	cmp	r8, 0x5346314d
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.131
	jmp	.label_92
.label_157:
	cmp	r8, 0x2478
	je	.label_196
	cmp	r8, 0x3434
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.142
	jmp	.label_92
.label_175:
	cmp	r8, 0x73727279
	je	.label_204
	cmp	r8, 0x73757245
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.90
	jmp	.label_92
.label_197:
	cmp	r8, 0x62646576
	je	.label_95
	cmp	r8, 0x62656570
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.92
	jmp	.label_92
.label_98:
	cmp	r8, 0x11307854
	je	.label_106
	cmp	r8, 0x13661366
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.78
	jmp	.label_92
.label_198:
	cmp	r8, 0x9660
	je	.label_116
	cmp	r8, 0x9fa0
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.6_0
	jmp	.label_92
.label_126:
	mov	eax, 0xde5e81e4
	cmp	r8, rax
	je	.label_122
	mov	eax, 0xf2f52010
	cmp	r8, rax
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.107
	jmp	.label_92
.label_150:
	cmp	r8, 0x453dcd28
	je	.label_132
	cmp	r8, 0x45584653
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.102
	jmp	.label_92
.label_165:
	cmp	r8, 0x137f
	je	.label_138
	cmp	r8, 0x138f
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.133
	jmp	.label_92
.label_180:
	cmp	r8, 0x6e667364
	je	.label_161
	cmp	r8, 0x6e736673
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.143
	jmp	.label_92
.label_129:
	cmp	r8, 0x5dca2df5
	je	.label_149
	cmp	r8, 0x61636673
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.71
	jmp	.label_92
.label_211:
	cmp	r8, 0x28cd3d45
	je	.label_156
	cmp	r8, 0x2bad1dea
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.123
	jmp	.label_92
.label_107:
	cmp	r8, 0x5df5
	je	.label_166
	cmp	r8, 0x6969
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.140
	jmp	.label_92
.label_118:
	mov	eax, 0xbacbacbc
	cmp	r8, rax
	je	.label_174
	mov	eax, 0xbeefdead
	cmp	r8, rax
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.166
	jmp	.label_92
.label_128:
	cmp	r8, 0xc0ffee
	je	.label_185
	cmp	r8, 0xc36400
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.86
	jmp	.label_92
.label_140:
	cmp	r8, 0x5346544e
	je	.label_195
	cmp	r8, 0x534f434b
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.167
	jmp	.label_92
.label_146:
	cmp	r8, 0x4006
	je	.label_203
	cmp	r8, 0x4244
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.115
	jmp	.label_92
.label_155:
	cmp	r8, 0x794c7630
	je	.label_93
	cmp	r8, 0x7c7c6673
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.150
	jmp	.label_92
.label_168:
	cmp	r8, 0x64626720
	je	.label_105
	cmp	r8, 0x64646178
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.95
	jmp	.label_92
.label_178:
	cmp	r8, 0xadf5
	je	.label_115
	cmp	r8, 0xadff
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.73
	jmp	.label_92
.label_191:
	mov	eax, 0xfe534d42
	cmp	r8, rax
	je	.label_133
	mov	eax, 0xff534d42
	cmp	r8, rax
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.19_0
	jmp	.label_92
.label_141:
	mov	ebx, OFFSET FLAT:.str.172
	jmp	.label_92
.label_143:
	mov	ebx, OFFSET FLAT:.str.178
	jmp	.label_92
.label_202:
	mov	ebx, OFFSET FLAT:.str.116
	jmp	.label_92
.label_112:
	mov	ebx, OFFSET FLAT:.str.155
	jmp	.label_92
.label_130:
	mov	ebx, OFFSET FLAT:.str.106
	jmp	.label_92
.label_183:
	mov	ebx, OFFSET FLAT:.str.114
	jmp	.label_92
.label_163:
	mov	ebx, OFFSET FLAT:.str.9_0
	jmp	.label_92
.label_179:
	mov	ebx, OFFSET FLAT:.str.161
	jmp	.label_92
.label_200:
	mov	ebx, OFFSET FLAT:.str.152
	jmp	.label_92
.label_102:
	mov	ebx, OFFSET FLAT:.str.112
	jmp	.label_92
.label_117:
	mov	ebx, OFFSET FLAT:.str.158
	jmp	.label_92
.label_131:
	mov	ebx, OFFSET FLAT:.str.129
	jmp	.label_92
.label_153:
	mov	ebx, OFFSET FLAT:.str.83
	jmp	.label_92
.label_169:
	mov	ebx, OFFSET FLAT:.str.14_0
	jmp	.label_92
.label_182:
	mov	ebx, OFFSET FLAT:.str.154
	jmp	.label_92
.label_201:
	mov	ebx, OFFSET FLAT:.str.185
	jmp	.label_92
.label_96:
	mov	ebx, OFFSET FLAT:.str.81
	jmp	.label_92
.label_110:
	mov	ebx, OFFSET FLAT:.str.164
	jmp	.label_92
.label_120:
	mov	ebx, OFFSET FLAT:.str.148
	jmp	.label_92
.label_134:
	mov	ebx, OFFSET FLAT:.str.87
	jmp	.label_92
.label_103:
	mov	ebx, OFFSET FLAT:.str.74
	jmp	.label_92
.label_159:
	mov	ebx, OFFSET FLAT:.str.146
	jmp	.label_92
.label_171:
	mov	ebx, OFFSET FLAT:.str.13_0
	jmp	.label_92
.label_181:
	mov	ebx, OFFSET FLAT:.str.145
	jmp	.label_92
.label_127:
	mov	ebx, OFFSET FLAT:.str.162
	jmp	.label_92
.label_97:
	mov	ebx, OFFSET FLAT:.str.122
	jmp	.label_92
.label_101:
	mov	ebx, OFFSET FLAT:.str.156
	jmp	.label_92
.label_111:
	mov	ebx, OFFSET FLAT:.str.187
	jmp	.label_92
.label_114:
	mov	ebx, OFFSET FLAT:.str.127
	jmp	.label_92
.label_125:
	mov	ebx, OFFSET FLAT:.str.153
	jmp	.label_92
.label_123:
	mov	ebx, OFFSET FLAT:.str.5_1
	jmp	.label_92
.label_187:
	mov	ebx, OFFSET FLAT:.str.10_0
	jmp	.label_92
.label_135:
	mov	ebx, OFFSET FLAT:.str.110
	jmp	.label_92
.label_151:
	mov	ebx, OFFSET FLAT:.str.181
	jmp	.label_92
.label_147:
	mov	ebx, OFFSET FLAT:.str.175
	jmp	.label_92
.label_109:
	mov	ebx, OFFSET FLAT:.str.11_0
	jmp	.label_92
.label_158:
	mov	ebx, OFFSET FLAT:.str.138
	jmp	.label_92
.label_167:
	mov	ebx, OFFSET FLAT:.str.120
	jmp	.label_92
.label_144:
	mov	ebx, OFFSET FLAT:.str.99
	jmp	.label_92
.label_186:
	mov	ebx, OFFSET FLAT:.str.157
	jmp	.label_92
.label_196:
	mov	ebx, OFFSET FLAT:.str.135
	jmp	.label_92
.label_204:
	mov	ebx, OFFSET FLAT:.str.85
	jmp	.label_92
.label_95:
	mov	ebx, OFFSET FLAT:.str.80
	jmp	.label_92
.label_106:
	mov	ebx, OFFSET FLAT:.str.121
	jmp	.label_92
.label_116:
	mov	ebx, OFFSET FLAT:.str.124
	jmp	.label_92
.label_122:
	mov	ebx, OFFSET FLAT:.str.100
	jmp	.label_92
.label_132:
	mov	ebx, OFFSET FLAT:.str.94
	jmp	.label_92
.label_138:
	mov	ebx, OFFSET FLAT:.str.132
	jmp	.label_92
.label_161:
	mov	ebx, OFFSET FLAT:.str.141
	jmp	.label_92
.label_149:
	mov	ebx, OFFSET FLAT:.str.160
	jmp	.label_92
.label_156:
	mov	ebx, OFFSET FLAT:.str.93
	jmp	.label_92
.label_166:
	mov	ebx, OFFSET FLAT:.str.103
	jmp	.label_92
.label_174:
	mov	ebx, OFFSET FLAT:.str.179
	jmp	.label_92
.label_185:
	mov	ebx, OFFSET FLAT:.str.118
	jmp	.label_92
.label_195:
	mov	ebx, OFFSET FLAT:.str.144
	jmp	.label_92
.label_203:
	mov	ebx, OFFSET FLAT:.str.108
	jmp	.label_92
.label_93:
	mov	ebx, OFFSET FLAT:.str.147
	jmp	.label_92
.label_105:
	mov	ebx, OFFSET FLAT:.str.8_0
	jmp	.label_92
.label_115:
	mov	ebx, OFFSET FLAT:.str.72
	jmp	.label_92
.label_133:
	mov	ebx, OFFSET FLAT:.str.165
	jmp	.label_92
.label_205:
	cmp	r8, 0x12fd16d
	jne	.label_99
	mov	ebx, OFFSET FLAT:.str.186
	jmp	.label_92
.label_99:
	mov	ebx, OFFSET FLAT:human_fstype.buf
	mov	edi, OFFSET FLAT:human_fstype.buf
	mov	esi, 1
	mov	edx, 0x1d
	mov	ecx, OFFSET FLAT:.str.189
	xor	eax, eax
	call	__sprintf_chk
	jmp	.label_92
.label_880:
	mov	ebx, OFFSET FLAT:.str.171
	jmp	.label_92
.label_881:
	mov	ebx, OFFSET FLAT:.str.170
	jmp	.label_92
.label_882:
	mov	ebx, OFFSET FLAT:.str.91
.label_92:
	mov	rax, rbx
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403f20

	.globl out_int
	.type out_int, @function
out_int:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	mov	edx, OFFSET FLAT:.str.190
	mov	ecx, OFFSET FLAT:.str.191
	call	make_format
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f60

	.globl make_format
	.type make_format, @function
make_format:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rdx
	lea	r15, [rdi + 1]
	lea	r14, [rdi + rsi]
	cmp	rsi, 2
	jl	.label_212
	mov	qword ptr [rsp], rsi
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbx, r15
.label_215:
	mov	r12b, byte ptr [rbx]
	movsx	ebp, r12b
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	mov	esi, ebp
	call	memchr
	test	rax, rax
	je	.label_214
	mov	rdi, r13
	mov	esi, ebp
	call	strchr
	test	rax, rax
	je	.label_216
	mov	byte ptr [r15], r12b
	inc	r15
.label_216:
	inc	rbx
	cmp	rbx, r14
	jb	.label_215
	jmp	.label_214
.label_212:
	mov	qword ptr [rsp], rsi
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbx, r15
.label_214:
	cmp	rbx, r14
	jae	.label_217
	mov	rax, qword ptr [rsp]
	sub	rax, rbx
	mov	rdx, qword ptr [rsp + 8]
	add	rdx, rax
	mov	rax, r15
	nop	word ptr cs:[rax + rax]
.label_213:
	mov	cl, byte ptr [rbx]
	inc	rbx
	mov	byte ptr [rax], cl
	inc	rax
	cmp	r14, rbx
	jne	.label_213
	add	r15, rdx
.label_217:
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdi, r15
	call	strcpy
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
	#Procedure 0x404030

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
	mov	r13, r8
	mov	r14, rsi
	mov	r15, rdi
	add	edx, -0x41
	cmp	edx, 0x39
	ja	.label_224
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_228]]
.label_901:
	mov	rdi, rbx
	call	human_access
	mov	edx, OFFSET FLAT:human_access.modebuf
	jmp	.label_223
.label_902:
	mov	edx, 0x200
	jmp	.label_219
.label_903:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r13
	call	out_file_context
	mov	r12b, 1
	jmp	.label_218
.label_904:
	mov	rdx, qword ptr [rbx]
	jmp	.label_220
.label_224:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, 0x3f
	call	fputc_unlocked
	jmp	.label_221
.label_905:
	mov	rdi, rbx
	call	file_type
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rax
	call	out_string
	jmp	.label_221
.label_906:
	mov	edi, dword ptr [rbx + 0x20]
	call	getgrgid
	jmp	.label_227
.label_907:
	xor	r12d, r12d
	xor	edi, edi
	call	get_quoting_style
	mov	edi, eax
	mov	rsi, r13
	call	quotearg_style
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rax
	call	out_string
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	jne	.label_218
	mov	rsi, qword ptr [rbx + 0x30]
	mov	rdi, r13
	call	areadlink_with_size
	mov	rbx, rax
	test	rbx, rbx
	je	.label_222
	xor	r12d, r12d
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.195
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	call	get_quoting_style
	mov	edi, eax
	mov	rsi, rbx
	call	quotearg_style
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rax
	call	out_string
	mov	rdi, rbx
	call	free
	jmp	.label_218
.label_908:
	mov	rdi, qword ptr [rbx + 0x28]
	call	gnu_dev_minor
	jmp	.label_229
.label_909:
	mov	edi, dword ptr [rbx + 0x1c]
	call	getpwuid
.label_227:
	mov	edx, OFFSET FLAT:.str.196
	test	rax, rax
	je	.label_223
	mov	rdx, qword ptr [rax]
	jmp	.label_223
.label_910:
	xor	r12d, r12d
	xor	edx, edx
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	out_epoch_sec
	jmp	.label_218
.label_911:
	mov	rdi, rbx
	call	get_stat_atime
	jmp	.label_225
.label_912:
	mov	rdi, rbx
	call	get_stat_mtime
	jmp	.label_225
.label_913:
	mov	rdi, rbx
	call	get_stat_ctime
.label_225:
	mov	rcx, rdx
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rax
	call	out_epoch_sec
	jmp	.label_221
.label_914:
	mov	edx, dword ptr [rbx + 0x18]
	and	edx, 0xfff
	mov	rdi, r15
	mov	rsi, r14
	call	out_uint_o
	jmp	.label_221
.label_915:
	mov	rdx, qword ptr [rbx + 0x40]
	jmp	.label_219
.label_916:
	mov	rdx, qword ptr [rbx]
	jmp	.label_219
.label_917:
	mov	edx, dword ptr [rbx + 0x18]
	jmp	.label_220
.label_918:
	mov	edx, dword ptr [rbx + 0x20]
	jmp	.label_219
.label_919:
	mov	rdx, qword ptr [rbx + 0x10]
	jmp	.label_219
.label_920:
	mov	rdx, qword ptr [rbx + 8]
	jmp	.label_219
.label_921:
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	mov	rcx, rbx
	call	out_mount_point
	mov	r12b, al
	jmp	.label_218
.label_922:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r13
	call	out_string
	jmp	.label_221
.label_923:
	mov	rax, qword ptr [rbx + 0x38]
	movabs	rcx, 0x2000000000000001
	cmp	rax, rcx
	mov	ecx, 0x200
	mov	edx, 0x200
	cmovb	rdx, rax
	test	rax, rax
	cmovle	rdx, rcx
	jmp	.label_219
.label_924:
	mov	rdx, qword ptr [rbx + 0x30]
	mov	rdi, r15
	mov	rsi, r14
	call	out_int
	jmp	.label_221
.label_925:
	mov	rdi, qword ptr [rbx + 0x28]
	call	gnu_dev_major
.label_229:
	mov	edx, eax
.label_220:
	mov	rdi, r15
	mov	rsi, r14
	call	out_uint_x
	jmp	.label_221
.label_926:
	mov	edx, dword ptr [rbx + 0x1c]
.label_219:
	mov	rdi, r15
	mov	rsi, r14
	call	out_uint
	jmp	.label_221
.label_927:
	mov	edx, OFFSET FLAT:.str.59
	jmp	.label_223
.label_928:
	mov	rdi, rbx
	call	get_stat_atime
	jmp	.label_226
.label_929:
	mov	rdi, rbx
	call	get_stat_mtime
	jmp	.label_226
.label_930:
	mov	rdi, rbx
	call	get_stat_ctime
.label_226:
	mov	rdi, rax
	mov	rsi, rdx
	call	human_time
	mov	edx, OFFSET FLAT:human_time.str
.label_223:
	mov	rdi, r15
	mov	rsi, r14
	call	out_string
.label_221:
	xor	r12d, r12d
.label_218:
	mov	al, r12b
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_222:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.194
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	mov	r12b, 1
	jmp	.label_218
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404340

	.globl out_uint_o
	.type out_uint_o, @function
out_uint_o:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	mov	edx, OFFSET FLAT:.str.66
	mov	ecx, OFFSET FLAT:.str.197
	call	make_format
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404380

	.globl human_access
	.type human_access, @function
human_access:
	push	rax
	mov	esi, OFFSET FLAT:human_access.modebuf
	call	filemodestring
	mov	byte ptr [byte ptr [rip + label_230]],  0
	pop	rax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043a0

	.globl out_mount_point
	.type out_mount_point, @function
out_mount_point:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rcx
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	al,  byte ptr [byte ptr [rip + follow_links]]
	and	al, 1
	jne	.label_231
	mov	eax, 0xf000
	and	eax, dword ptr [r13 + 0x18]
	cmp	eax, 0xa000
	je	.label_233
.label_231:
	mov	rdi, r12
	call	canonicalize_file_name
	mov	rbp, rax
	test	rbp, rbp
	je	.label_234
	mov	rdi, rbp
	call	find_bind_mount
	mov	rbx, rax
	mov	rdi, rbp
	call	free
	xor	ebp, ebp
	test	rbx, rbx
	je	.label_233
	xor	r12d, r12d
	jmp	.label_232
.label_233:
	mov	rdi, r12
	mov	rsi, r13
	call	find_mount_point
	mov	r13, rax
	mov	r12b, 1
	xor	ebx, ebx
	test	r13, r13
	mov	ebp, 0
	je	.label_232
	mov	rdi, r13
	call	find_bind_mount
	mov	rbx, rax
	xor	r12d, r12d
	mov	rbp, r13
	jmp	.label_232
.label_234:
	call	__errno_location
	mov	r13d, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.199
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, rbp
	call	error
	mov	r12b, 1
	xor	ebp, ebp
.label_232:
	test	rbp, rbp
	mov	edx, OFFSET FLAT:.str.198
	cmovne	rdx, rbp
	test	rbx, rbx
	cmovne	rdx, rbx
	mov	rdi, r15
	mov	rsi, r14
	call	out_string
	mov	rdi, rbp
	call	free
	mov	al, r12b
	add	rsp, 8
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
	#Procedure 0x4044b0

	.globl human_time
	.type human_time, @function
human_time:
	push	rbx
	sub	rsp, 0x60
	mov	qword ptr [rsp + 0x50], rdi
	mov	qword ptr [rsp + 0x58], rsi
	cmp	qword ptr [word ptr [rip + human_time.tz]],  0
	jne	.label_235
	mov	edi, OFFSET FLAT:.str_2
	call	getenv
	mov	rdi, rax
	call	tzalloc
	mov	qword ptr [word ptr [rip + human_time.tz]],  rax
.label_235:
	mov	ebx, dword ptr [rsp + 0x58]
	mov	rdi,  qword ptr [word ptr [rip + human_time.tz]]
	lea	rsi, [rsp + 0x50]
	lea	rdx, [rsp + 0x18]
	call	localtime_rz
	test	rax, rax
	je	.label_237
	mov	r8,  qword ptr [word ptr [rip + human_time.tz]]
	lea	rcx, [rsp + 0x18]
	mov	edi, OFFSET FLAT:human_time.str
	mov	esi, 0x3d
	mov	edx, OFFSET FLAT:.str.203
	mov	r9d, ebx
	call	nstrftime
	jmp	.label_236
.label_237:
	mov	rdi, qword ptr [rsp + 0x50]
	lea	rsi, [rsp]
	call	timetostr
	mov	r8, rax
	mov	edi, OFFSET FLAT:human_time.str
	mov	esi, 1
	mov	edx, 0x3d
	mov	ecx, OFFSET FLAT:.str.204
	xor	eax, eax
	mov	r9d, ebx
	call	__sprintf_chk
.label_236:
	add	rsp, 0x60
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404560

	.globl out_epoch_sec
	.type out_epoch_sec, @function
out_epoch_sec:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbp, rdx
	mov	r12, rsi
	mov	r13, rdi
	mov	esi, 0x2e
	mov	rdx, r12
	call	memchr
	mov	rbx, rax
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_242
	mov	qword ptr [rsp + 0x18], rbp
	mov	rbp, rbx
	sub	rbp, r13
	mov	byte ptr [r13 + r12], 0
	movsx	eax, byte ptr [rbx + 1]
	add	eax, -0x30
	mov	r15d, 9
	cmp	eax, 9
	ja	.label_246
	lea	rdi, [rbx + 1]
	xor	r14d, r14d
	xor	esi, esi
	mov	edx, 0xa
	call	strtol
	cmp	rax, 0x7fffffff
	mov	r15d, 0x7fffffff
	cmovle	r15d, eax
	test	r15d, r15d
	je	.label_243
.label_246:
	movsx	eax, byte ptr [rbx - 1]
	add	eax, -0x30
	xor	r14d, r14d
	cmp	eax, 9
	ja	.label_252
	mov	qword ptr [rsp + 0x10], r13
	mov	byte ptr [rbx], 0
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_245:
	movsx	eax, byte ptr [rbx + r12 - 2]
	add	eax, -0x30
	dec	r12
	cmp	eax, 0xa
	jb	.label_245
	lea	r13, [rbx + r12]
	xor	esi, esi
	mov	edx, 0xa
	mov	rdi, r13
	call	strtol
	cmp	rax, 0x7fffffff
	mov	ecx, 0x7fffffff
	cmovle	rcx, rax
	mov	r14d, 0x7fffffff
	cmovle	r14d, eax
	cmp	r14d, 2
	jl	.label_248
	movzx	eax, byte ptr [rbx + r12]
	cmp	eax, 0x30
	sete	dl
	movzx	edx, dl
	add	r13, rdx
	mov	rbp, r13
	sub	rbp, qword ptr [rsp + 0x10]
	mov	rdx,  qword ptr [word ptr [rip + decimal_point_len]]
	movsxd	rcx, ecx
	mov	esi, ecx
	sub	esi, edx
	cmp	rcx, rdx
	mov	r8d, 0
	cmova	r8d, esi
	cmp	r8d, 2
	jl	.label_248
	sub	r8d, r15d
	cmp	r8d, 2
	jl	.label_248
	xor	ebp, ebp
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	r13, rcx
	mov	r13, rcx
	mov	rdi, r13
	jbe	.label_250
	movzx	eax, al
	cmp	eax, 0x30
	sete	al
	movzx	eax, al
	dec	rax
	sub	rax, r13
	add	rbx, rax
	lea	rcx, [r12 + rbx + 1]
	xor	eax, eax
	mov	rdx, r13
	mov	rdi, r13
	nop	word ptr cs:[rax + rax]
.label_256:
	movzx	esi, byte ptr [rdx]
	cmp	esi, 0x2d
	jne	.label_239
	mov	al, 1
	jmp	.label_254
	nop	dword ptr [rax]
.label_239:
	mov	byte ptr [rdi], sil
	inc	rdi
.label_254:
	inc	rdx
	dec	rcx
	jne	.label_256
	mov	rbp, rdi
	sub	rbp, r13
	xor	ecx, ecx
	test	al, 1
	jne	.label_257
.label_250:
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.205
	xor	eax, eax
	call	__sprintf_chk
	movsxd	rcx, eax
.label_257:
	add	rbp, rcx
.label_252:
	mov	rdi, qword ptr [rsp + 0x20]
	jmp	.label_255
.label_242:
	xor	r15d, r15d
	mov	rdi, qword ptr [rsp + 0x20]
	jmp	.label_247
.label_248:
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r13, qword ptr [rsp + 0x10]
.label_255:
	mov	eax, 1
	cmp	r15d, 8
	mov	r12, rbp
	mov	rbp, qword ptr [rsp + 0x18]
	jg	.label_240
	jmp	.label_247
.label_243:
	mov	r12, rbp
	xor	r15d, r15d
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
.label_247:
	mov	eax, 1
	mov	ecx, 9
	nop	word ptr cs:[rax + rax]
.label_238:
	add	eax, eax
	lea	eax, [rax + rax*4]
	dec	ecx
	cmp	r15d, ecx
	jne	.label_238
.label_240:
	movsxd	rsi, eax
	mov	rax, rdi
	cqo	
	idiv	rsi
	mov	rbx, rax
	test	rbp, rbp
	jns	.label_241
	test	rdi, rdi
	je	.label_241
	mov	eax, 0x3b9aca00
	xor	edx, edx
	idiv	esi
	mov	ecx, eax
	sub	ecx, ebx
	mov	rax, rdi
	cqo	
	idiv	rsi
	test	rdx, rdx
	setne	al
	movzx	eax, al
	mov	ebx, ecx
	sub	ebx, eax
	setne	al
	movzx	eax, al
	add	rbp, rax
	je	.label_251
.label_241:
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, rbp
	call	out_int
	jmp	.label_249
.label_251:
	mov	rdi, r13
	mov	rsi, r12
	call	out_minus_zero
.label_249:
	test	r15d, r15d
	je	.label_253
	cmp	r15d, 0xa
	mov	ecx, 9
	cmovl	ecx, r15d
	sub	r15d, ecx
	xor	r9d, r9d
	test	eax, eax
	cmovs	eax, r9d
	sub	r14d, eax
	jle	.label_244
	mov	rax,  qword ptr [word ptr [rip + decimal_point_len]]
	movsxd	rdx, r14d
	cmp	rdx, rax
	jbe	.label_244
	sub	r14d, ecx
	sub	r14d, eax
	mov	r9d, r14d
.label_244:
	mov	rdx,  qword ptr [word ptr [rip + decimal_point]]
	mov	dword ptr [rsp], r15d
	mov	dword ptr [rsp + 8], 0
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.206
	xor	eax, eax
	mov	r8d, ebx
	call	__printf_chk
.label_253:
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
	#Procedure 0x404860

	.globl out_file_context
	.type out_file_context, @function
out_file_context:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	movzx	eax,  byte ptr [byte ptr [rip + follow_links]]
	and	eax, 1
	lea	rsi, [rsp + 8]
	mov	rdi, rbx
	cmp	eax, 1
	jne	.label_258
	call	getfilecon
	jmp	.label_259
.label_258:
	call	lgetfilecon
.label_259:
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.208
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, rbp
	call	error
	mov	word ptr [r15 + r14], 0x73
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.198
	xor	eax, eax
	mov	rsi, r15
	call	__printf_chk
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404900

	.globl find_bind_mount
	.type find_bind_mount, @function
find_bind_mount:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x128
	mov	r14, rdi
	mov	al,  byte ptr [byte ptr [rip + find_bind_mount.tried_mount_list]]
	and	al, 1
	jne	.label_260
	xor	edi, edi
	call	read_file_system_list
	mov	qword ptr [word ptr [rip + find_bind_mount.mount_list]],  rax
	test	rax, rax
	jne	.label_264
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
.label_264:
	mov	byte ptr [byte ptr [rip + find_bind_mount.tried_mount_list]],  1
.label_260:
	lea	rsi, [rsp + 0x98]
	mov	rdi, r14
	call	stat
	xor	r12d, r12d
	test	eax, eax
	jne	.label_265
	mov	rbx,  qword ptr [word ptr [rip + find_bind_mount.mount_list]]
	xor	r12d, r12d
	test	rbx, rbx
	je	.label_265
	xor	r12d, r12d
	lea	r15, [rsp + 8]
	nop	
.label_263:
	test	byte ptr [rbx + 0x28], 1
	je	.label_261
	mov	rax, qword ptr [rbx]
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x2f
	jne	.label_261
	mov	rdi, qword ptr [rbx + 8]
	mov	rsi, r14
	call	strcmp
	test	eax, eax
	jne	.label_261
	mov	rdi, qword ptr [rbx]
	mov	rsi, r15
	call	stat
	test	eax, eax
	jne	.label_261
	mov	rax, qword ptr [rsp + 0xa0]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_261
	mov	rax, qword ptr [rsp + 0x98]
	cmp	rax, qword ptr [rsp + 8]
	je	.label_262
	nop	
.label_261:
	mov	rbx, qword ptr [rbx + 0x30]
	test	rbx, rbx
	jne	.label_263
.label_265:
	mov	rax, r12
	add	rsp, 0x128
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_262:
	mov	r12, qword ptr [rbx]
	jmp	.label_265
	.section	.text
	.align	16
	#Procedure 0x404a00

	.globl timetostr
	.type timetostr, @function
timetostr:
	jmp	imaxtostr
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a10

	.globl out_minus_zero
	.type out_minus_zero, @function
out_minus_zero:
	push	rbx
	mov	rbx, rdi
	mov	edx, OFFSET FLAT:.str.190
	mov	ecx, OFFSET FLAT:.str.207
	call	make_format
	movsd	xmm0,  qword ptr [word ptr [rip + label_266]]
	mov	edi, 1
	mov	al, 1
	mov	rsi, rbx
	pop	rbx
	jmp	__printf_chk
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a40

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
	je	.label_278
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
	jmp	.label_269
.label_278:
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0x4000
	jne	.label_270
	lea	rdi, [rbp - 0xc0]
	mov	edx, 0x90
	mov	rsi, rbx
	call	memcpy
	mov	rdi, r14
	call	chdir
	test	eax, eax
	jns	.label_276
	jmp	.label_268
.label_270:
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
	js	.label_268
	lea	rsi, [rbp - 0xc0]
	mov	edi, OFFSET FLAT:.str_1
	call	stat
	test	eax, eax
	js	.label_272
.label_276:
	lea	rsi, [rbp - 0x150]
	mov	edi, OFFSET FLAT:.str.4_0
	call	stat
	test	eax, eax
	js	.label_275
	lea	r14, [rbp - 0xc0]
	lea	rbx, [rbp - 0x150]
	nop	word ptr cs:[rax + rax]
.label_274:
	mov	rax, qword ptr [rbp - 0x150]
	cmp	rax, qword ptr [rbp - 0xc0]
	jne	.label_277
	mov	rax, qword ptr [rbp - 0x148]
	cmp	rax, qword ptr [rbp - 0xb8]
	je	.label_277
	mov	edi, OFFSET FLAT:.str.4_0
	call	chdir
	test	eax, eax
	js	.label_279
	mov	edx, 0x90
	mov	rdi, r14
	mov	rsi, rbx
	call	memcpy
	mov	edi, OFFSET FLAT:.str.4_0
	mov	rsi, rbx
	call	stat
	test	eax, eax
	jns	.label_274
.label_275:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_0
	jmp	.label_267
.label_268:
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
	jmp	.label_269
.label_277:
	call	xgetcwd
	mov	r15, rax
	jmp	.label_271
.label_272:
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
	jmp	.label_271
.label_279:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_0
.label_267:
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
.label_271:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	lea	rdi, [rbp - 0x30]
	call	restore_cwd
	test	eax, eax
	jne	.label_273
	lea	rdi, [rbp - 0x30]
	call	free_cwd
	mov	dword ptr [rbx], r14d
.label_269:
	mov	rax, r15
	lea	rsp, [rbp - 0x20]
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_273:
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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404d00

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
	je	.label_281
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	movabs	r15, 0x7fffffffffffffff
	nop	word ptr cs:[rax + rax]
.label_288:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbx
	mov	rdx, r12
	call	readlink
	mov	r13, rax
	test	r13, r13
	jns	.label_283
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	jne	.label_280
.label_283:
	cmp	r13, r12
	jb	.label_282
	mov	rdi, rbx
	call	free
	mov	rax, r12
	shr	rax, 0x3e
	jne	.label_284
	add	r12, r12
	jmp	.label_287
	nop	word ptr cs:[rax + rax]
.label_284:
	cmp	r12, r15
	mov	r12, r15
	jae	.label_286
.label_287:
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_288
	jmp	.label_281
.label_282:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp + 8], rbx
	jmp	.label_281
.label_286:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_285
.label_280:
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
.label_285:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
.label_281:
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
	#Procedure 0x404e10

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e20

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
	je	.label_290
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, r14
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	nop	
.label_289:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_295
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_292
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_294
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_293
	mov	rdi, qword ptr [rsp + 0x18]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_295
.label_293:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_295
.label_294:
	mov	qword ptr [rsp + 0x18], rbp
	nop	word ptr [rax + rax]
.label_295:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_289
	jmp	.label_291
.label_290:
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_291:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 0x18]
.label_292:
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
	#Procedure 0x404f20

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
	je	.label_296
	mov	esi, OFFSET FLAT:.str.1_1
	jmp	.label_297
.label_296:
	mov	esi, OFFSET FLAT:.str_5
.label_297:
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
	#Procedure 0x404f90

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
	mov	r13, rsi
	mov	r15, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [r15]
	test	rbx, rbx
	je	.label_299
	xor	r12d, r12d
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_301:
	test	rbp, rbp
	je	.label_298
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_300
.label_298:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_302
	nop	word ptr cs:[rax + rax]
.label_300:
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.4_1
	xor	eax, eax
	mov	rdi, qword ptr [rsp]
	call	__fprintf_chk
.label_302:
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	jne	.label_301
.label_299:
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	putc_unlocked
	nop	
	.section	.text
	.align	16
	#Procedure 0x405090
	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_303
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, rax
	call	argmatch_invalid
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	argmatch_valid
	call	r14
	mov	rax, -1
.label_303:
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
	#Procedure 0x405100
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
	je	.label_304
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_305:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_304
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_305
.label_304:
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
	#Procedure 0x405170
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405180
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405190

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_306
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_308
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_308
.label_306:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_307
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_308:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_6
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_309
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_307:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_309:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_2
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x405250

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rax
	call	mdir_name
	test	rax, rax
	je	.label_310
	pop	rcx
	ret	
.label_310:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405270

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
.label_312:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_311
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_312
.label_311:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4052b0

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	call	dir_len
	mov	rbx, rax
	test	rbx, rbx
	sete	al
	movzx	eax, al
	lea	rdi, [rbx + rax + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_313
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	test	rbx, rbx
	jne	.label_314
	mov	byte ptr [r14 + rbx], 0x2e
	mov	ebx, 1
.label_314:
	mov	byte ptr [r14 + rbx], 0
	mov	rax, r14
.label_313:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405310

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_315:
	movzx	eax, byte ptr [rdi + 1]
	inc	rdi
	cmp	eax, 0x2f
	je	.label_315
	xor	ecx, ecx
	mov	rax, rdi
	jmp	.label_318
	nop	word ptr cs:[rax + rax]
.label_317:
	inc	rax
	mov	cl, dl
.label_318:
	movzx	esi, byte ptr [rax]
	mov	dl, 1
	cmp	esi, 0x2f
	je	.label_317
	test	sil, sil
	je	.label_319
	mov	dl, cl
	and	dl, 1
	je	.label_316
	xor	ecx, ecx
.label_316:
	test	dl, dl
	cmovne	rdi, rax
	mov	dl, cl
	jmp	.label_317
.label_319:
	mov	rax, rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405370
	.globl base_len
	.type base_len, @function
base_len:

	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_321:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_320
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_321
.label_320:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4053a0

	.globl file_type
	.type file_type, @function
file_type:
	mov	eax, 0xf000
	and	eax, dword ptr [rdi + 0x18]
	cmp	eax, 0x5fff
	jle	.label_322
	cmp	eax, 0x9fff
	jg	.label_327
	cmp	eax, 0x6000
	je	.label_329
	cmp	eax, 0x8000
	jne	.label_328
	cmp	qword ptr [rdi + 0x30], 0
	je	.label_324
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 5
	jmp	dcgettext
.label_322:
	cmp	eax, 0x1000
	je	.label_323
	cmp	eax, 0x2000
	je	.label_326
	cmp	eax, 0x4000
	jne	.label_328
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_1
	mov	edx, 5
	jmp	dcgettext
.label_327:
	cmp	eax, 0xa000
	je	.label_325
	cmp	eax, 0xc000
	jne	.label_328
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_1
	mov	edx, 5
	jmp	dcgettext
.label_329:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	jmp	dcgettext
.label_323:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_1
	mov	edx, 5
	jmp	dcgettext
.label_326:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_1
	mov	edx, 5
	jmp	dcgettext
.label_325:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_2
	mov	edx, 5
	jmp	dcgettext
.label_328:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_1
	mov	edx, 5
	jmp	dcgettext
.label_324:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_7
	mov	edx, 5
	jmp	dcgettext
	nop	
	.section	.text
	.align	16
	#Procedure 0x405490

	.globl strmode
	.type strmode, @function
strmode:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	ebx, edi
	call	ftypelet
	mov	byte ptr [r14], al
	mov	al, bh
	test	al, 1
	mov	sil, 0x72
	mov	cl, 0x72
	jne	.label_339
	mov	cl, 0x2d
.label_339:
	mov	byte ptr [r14 + 1], cl
	mov	cl, bl
	sar	cl, 7
	and	cl, 0x4a
	add	cl, 0x2d
	mov	byte ptr [r14 + 2], cl
	mov	ecx, ebx
	and	ecx, 0x40
	mov	edx, ecx
	shr	edx, 1
	or	edx, 0x53
	test	ecx, ecx
	mov	r8b, 0x78
	mov	cl, 0x78
	jne	.label_338
	mov	cl, 0x2d
.label_338:
	test	al, 8
	jne	.label_333
	mov	dl, cl
.label_333:
	mov	byte ptr [r14 + 3], dl
	test	bl, 0x20
	mov	cl, 0x72
	jne	.label_335
	mov	cl, 0x2d
.label_335:
	mov	byte ptr [r14 + 4], cl
	test	bl, 0x10
	mov	dl, 0x77
	mov	cl, 0x77
	jne	.label_337
	mov	cl, 0x2d
.label_337:
	mov	byte ptr [r14 + 5], cl
	mov	ecx, ebx
	and	ecx, 8
	lea	edi, [rcx*4 + 0x53]
	mov	cl, 0x78
	jne	.label_340
	mov	cl, 0x2d
.label_340:
	test	al, 4
	jne	.label_330
	mov	dil, cl
.label_330:
	mov	byte ptr [r14 + 6], dil
	test	bl, 4
	jne	.label_332
	mov	sil, 0x2d
.label_332:
	mov	byte ptr [r14 + 7], sil
	test	bl, 2
	jne	.label_336
	mov	dl, 0x2d
.label_336:
	mov	byte ptr [r14 + 8], dl
	and	ebx, 1
	jne	.label_331
	mov	r8b, 0x2d
.label_331:
	test	al, 2
	je	.label_334
	shl	ebx, 5
	or	ebx, 0x54
	mov	r8b, bl
.label_334:
	mov	byte ptr [r14 + 9], r8b
	mov	byte ptr [r14 + 0xa], 0x20
	mov	byte ptr [r14 + 0xb], 0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405560

	.globl ftypelet
	.type ftypelet, @function
ftypelet:
	and	edi, 0xf000
	cmp	edi, 0x5fff
	jle	.label_341
	cmp	edi, 0x9fff
	jg	.label_344
	cmp	edi, 0x6000
	je	.label_348
	mov	al, 0x2d
	cmp	edi, 0x8000
	je	.label_347
	jmp	.label_345
.label_341:
	cmp	edi, 0x1000
	je	.label_343
	cmp	edi, 0x2000
	je	.label_346
	cmp	edi, 0x4000
	jne	.label_345
	mov	al, 0x64
	movsx	eax, al
	ret	
.label_344:
	cmp	edi, 0xa000
	je	.label_342
	cmp	edi, 0xc000
	jne	.label_345
	mov	al, 0x73
	movsx	eax, al
	ret	
.label_348:
	mov	al, 0x62
	movsx	eax, al
	ret	
.label_343:
	mov	al, 0x70
.label_347:
	movsx	eax, al
	ret	
.label_342:
	mov	al, 0x6c
	movsx	eax, al
	ret	
.label_345:
	mov	al, 0x3f
	movsx	eax, al
	ret	
.label_346:
	mov	al, 0x63
	movsx	eax, al
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4055e0

	.globl filemodestring
	.type filemodestring, @function
filemodestring:
	mov	edi, dword ptr [rdi + 0x18]
	jmp	strmode
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055f0

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_349
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_350:
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
	ja	.label_350
	jmp	.label_351
.label_349:
	add	rsi, 0x13
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_352:
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
	mov	byte ptr [rsi], al
	add	rdx, r10
	add	rcx, 9
	dec	rsi
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_352
	mov	byte ptr [rsi], 0x2d
.label_351:
	mov	rax, rsi
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4056b0

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
	#Procedure 0x4056e0

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
	mov	dword ptr [rsp + 0x44], r8d
	mov	r8, rcx
	mov	qword ptr [rsp + 0x58], r8
	mov	rbp, rdx
	mov	qword ptr [rsp + 0x70], rsi
	mov	eax, dword ptr [r8 + 8]
	mov	rcx, qword ptr [r8 + 0x30]
	test	rcx, rcx
	mov	edx, OFFSET FLAT:.str_0
	cmovne	rdx, rcx
	lea	ecx, [rax - 0xc]
	test	eax, eax
	mov	esi, 0xc
	cmovne	esi, eax
	cmp	eax, 0xc
	cmovg	esi, ecx
	cmp	byte ptr [rbp], 0
	je	.label_468
	mov	dword ptr [rsp + 0x28], esi
	mov	qword ptr [rsp + 0x30], rdx
	mov	dword ptr [rsp + 0x2c], r9d
	mov	r14d, dword ptr [rsp + 0x4e0]
	movabs	r13, 0x1000000000002500
	xor	esi, esi
	jmp	.label_464
.label_468:
	xor	esi, esi
	jmp	.label_480
.label_448:
	mov	ecx, 3
	jmp	.label_482
	nop	dword ptr [rax + rax]
.label_464:
	movzx	eax, byte ptr [rbp]
	xor	r12d, r12d
	cmp	eax, 0x25
	jne	.label_484
	mov	eax, dword ptr [rsp + 0x44]
	mov	bl, al
	xor	r15d, r15d
	mov	bl, al
	jmp	.label_487
	nop	dword ptr [rax]
.label_491:
	movsx	r15d, byte ptr [rbp]
.label_487:
	inc	rbp
	movsx	ecx, byte ptr [rbp]
	lea	edx, [rcx - 0x23]
	cmp	edx, 0x3c
	ja	.label_490
	bt	r13, rdx
	jb	.label_491
	mov	al, 1
	test	rdx, rdx
	je	.label_492
	cmp	rdx, 0x3b
	jne	.label_490
	mov	bl, al
	jmp	.label_487
.label_492:
	mov	r12b, 1
	mov	al, bl
	jmp	.label_487
	nop	word ptr [rax + rax]
.label_484:
	test	r14d, r14d
	mov	eax, r14d
	mov	ecx, 0
	cmovs	eax, ecx
	movsxd	rbx, eax
	cmp	ebx, 1
	mov	ecx, 1
	cmovbe	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x70]
	sub	rcx, rsi
	cmp	rbx, rcx
	jae	.label_353
	test	rdi, rdi
	mov	ecx, 0
	je	.label_390
	cmp	eax, 2
	jb	.label_354
	movsxd	r14, r14d
	lea	rdx, [r14 - 1]
	mov	qword ptr [rsp + 0x78], rsi
	mov	esi, 0x20
	mov	r12, rdi
	mov	r15, r8
	call	memset
	mov	r8, r15
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x78]
	lea	rdi, [rdi + r14 - 1]
.label_354:
	mov	al, byte ptr [rbp]
	mov	byte ptr [rdi], al
	inc	rdi
	mov	rcx, rdi
.label_390:
	add	rsi, rbx
.label_432:
	mov	rdi, rcx
	jmp	.label_365
	nop	
.label_490:
	add	ecx, -0x30
	xor	eax, eax
	cmp	ecx, 9
	ja	.label_368
	nop	word ptr [rax + rax]
.label_379:
	mov	r14d, 0x7fffffff
	cmp	eax, 0xccccccc
	jg	.label_377
	jne	.label_375
	movsx	ecx, byte ptr [rbp]
	add	ecx, -0x30
	cmp	ecx, 7
	jg	.label_377
.label_375:
	lea	eax, [rax + rax*4]
	movsx	ecx, byte ptr [rbp]
	lea	r14d, [rcx + rax*2 - 0x30]
.label_377:
	movsx	eax, byte ptr [rbp + 1]
	inc	rbp
	add	eax, -0x30
	cmp	eax, 0xa
	mov	eax, r14d
	jb	.label_379
.label_368:
	movsx	eax, byte ptr [rbp]
	cmp	eax, 0x4f
	je	.label_381
	cmp	eax, 0x45
	jne	.label_384
.label_381:
	mov	qword ptr [rsp + 0x78], rsi
	movsx	eax, byte ptr [rbp]
	mov	dword ptr [rsp + 0x68], eax
	inc	rbp
	jmp	.label_386
.label_384:
	mov	dword ptr [rsp + 0x68], 0
	mov	qword ptr [rsp + 0x78], rsi
.label_386:
	mov	r8b, byte ptr [rbp]
	mov	r9d, OFFSET FLAT:.str.3_3
	movsx	eax, r8b
	xor	r11d, r11d
	mov	ecx, 1
	lea	esi, [rax - 0x25]
	cmp	esi, 0x55
	ja	.label_393
	mov	qword ptr [rsp + 0x60], rdi
	mov	qword ptr [rsp + 0x50], rbx
	mov	al, 0x72
	mov	r10d, 0xffffffff
	xor	edi, edi
	xor	edx, edx
	jmp	qword ptr [word ptr [+ (rsi * 8) + label_397]]
.label_1030:
	mov	eax, dword ptr [rsp + 0x68]
	cmp	eax, 0x45
	je	.label_371
	mov	byte ptr [rsp + 0x38], r8b
	mov	rdx, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [rdx + 0x14]
	mov	esi, dword ptr [rdx + 0x18]
	mov	ecx, eax
	sar	ecx, 0x1f
	and	ecx, 0x190
	lea	ebx, [rax + rcx - 0x64]
	mov	edi, dword ptr [rdx + 0x1c]
	mov	dword ptr [rsp + 0x48], edi
	call	iso_week_days
	mov	r12d, eax
	test	r12d, r12d
	js	.label_409
	mov	eax, 0x16d
	test	bl, 3
	jne	.label_413
	movsxd	rax, ebx
	imul	rax, rax, 0x51eb851f
	mov	rcx, rax
	sar	rcx, 0x25
	mov	rdx, rax
	shr	rdx, 0x3f
	add	ecx, edx
	imul	ecx, ecx, 0x64
	sar	rax, 0x27
	add	eax, edx
	imul	eax, eax, 0x190
	cmp	ebx, eax
	sete	al
	movzx	edx, al
	add	edx, 0x16d
	cmp	ebx, ecx
	mov	eax, 0x16e
	cmove	eax, edx
.label_413:
	mov	edi, dword ptr [rsp + 0x48]
	sub	edi, eax
	mov	rax, qword ptr [rsp + 0x58]
	mov	esi, dword ptr [rax + 0x18]
	call	iso_week_days
	mov	ecx, eax
	shr	ecx, 0x1f
	xor	ecx, 1
	test	eax, eax
	cmovns	r12d, eax
	jmp	.label_425
	nop	word ptr [rax + rax]
.label_429:
	inc	rcx
.label_1024:
	movzx	eax, byte ptr [rbp + rcx]
	cmp	eax, 0x3a
	je	.label_429
	movzx	eax, al
	cmp	eax, 0x7a
	jne	.label_371
	add	rbp, rcx
	mov	r11, rcx
.label_1061:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	dword ptr [rax + 0x20], 0
	js	.label_477
	mov	byte ptr [rsp + 0x38], r8b
	mov	r8d, dword ptr [rax + 0x28]
	mov	sil, 1
	test	r8d, r8d
	js	.label_433
	test	r8d, r8d
	je	.label_436
	xor	esi, esi
	jmp	.label_433
.label_1044:
	test	r12b, r12b
	je	.label_437
	mov	al, 1
	mov	qword ptr [rsp + 0x50], rax
.label_437:
	xor	edi, edi
	mov	eax, dword ptr [rsp + 0x68]
	cmp	eax, 0x45
	je	.label_371
	mov	al, r8b
	jmp	.label_369
.label_393:
	mov	qword ptr [rsp + 0x60], rdi
	mov	qword ptr [rsp + 0x50], rbx
	test	eax, eax
	jne	.label_371
	dec	rbp
	jmp	.label_371
.label_1023:
	cmp	dword ptr [rsp + 0x68], 0
	jne	.label_371
	mov	r12, r13
	mov	r13, qword ptr [rsp + 0x58]
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
	mov	rdi, qword ptr [rsp + 0x60]
	jae	.label_353
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_408
	cmp	eax, 2
	jb	.label_459
	movsxd	r14, r14d
	dec	r14
	cmp	r15d, 0x30
	je	.label_460
	cmp	r15d, 0x2b
	jne	.label_462
.label_460:
	mov	esi, 0x30
	jmp	.label_378
.label_1025:
	mov	eax, dword ptr [rsp + 0x68]
	test	eax, eax
	jne	.label_371
	test	r12b, r12b
	je	.label_467
	mov	al, 1
	mov	qword ptr [rsp + 0x50], rax
.label_467:
	xor	edi, edi
	mov	al, 0x41
	jmp	.label_369
.label_1026:
	mov	eax, dword ptr [rsp + 0x68]
	cmp	eax, 0x45
	je	.label_371
	test	r12b, r12b
	je	.label_472
	mov	al, 1
	mov	qword ptr [rsp + 0x50], rax
.label_472:
	xor	edi, edi
	mov	al, 0x42
	jmp	.label_369
.label_1027:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	jne	.label_474
	xor	edi, edi
	mov	al, 0x43
	jmp	.label_369
.label_1028:
	cmp	dword ptr [rsp + 0x68], 0
	jne	.label_371
	mov	r9d, OFFSET FLAT:.str.1_4
	mov	r10d, 0xffffffff
	jmp	.label_476
.label_1029:
	cmp	dword ptr [rsp + 0x68], 0
	jne	.label_371
	test	r15d, r15d
	jne	.label_479
	test	r14d, r14d
	jns	.label_479
	mov	r9d, OFFSET FLAT:.str.2_2
	mov	r15d, 0x2b
	mov	r10d, 4
	jmp	.label_476
.label_1031:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	je	.label_371
	mov	byte ptr [rsp + 0x38], r8b
	mov	rax, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [rax + 8]
	jmp	.label_424
.label_1032:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	je	.label_371
	mov	byte ptr [rsp + 0x38], r8b
	mov	eax, 2
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, dword ptr [rsp + 0x28]
	jmp	.label_418
.label_1033:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	je	.label_371
	mov	byte ptr [rsp + 0x38], r8b
	mov	rax, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [rax + 4]
	jmp	.label_424
.label_1034:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	je	.label_371
	cmp	r14d, -1
	je	.label_495
	mov	byte ptr [rsp + 0x38], r8b
	mov	ecx, 9
	cmp	r14d, 8
	mov	eax, dword ptr [rsp + 0x4f0]
	jg	.label_498
	nop	dword ptr [rax + rax]
.label_355:
	cdqe	
	imul	rax, rax, 0x66666667
	mov	rdx, rax
	shr	rdx, 0x3f
	sar	rax, 0x22
	add	eax, edx
	dec	ecx
	cmp	r14d, ecx
	jne	.label_355
	mov	ecx, r14d
	jmp	.label_358
.label_1035:
	mov	dl, 1
.label_1053:
	xor	r11d, r11d
	test	r12b, r12b
	je	.label_362
	mov	eax, 0
	mov	qword ptr [rsp + 0x50], rax
.label_362:
	je	.label_367
	mov	dl, 1
.label_367:
	mov	al, 0x70
	mov	dil, dl
	jmp	.label_363
.label_1036:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	je	.label_371
	mov	byte ptr [rsp + 0x38], r8b
	mov	rax, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [rax]
	jmp	.label_424
.label_1037:
	mov	r9d, OFFSET FLAT:.str.4_2
.label_476:
	mov	dword ptr [rsp + 0x68], r10d
	mov	rax, qword ptr [rsp + 0x50]
	test	al, al
	setne	al
	mov	ecx, dword ptr [rsp + 0x4f0]
	mov	dword ptr [rsp + 0x10], ecx
	mov	rcx, qword ptr [rsp + 0x4e8]
	mov	qword ptr [rsp + 8], rcx
	mov	dword ptr [rsp], r10d
	movzx	r8d, al
	xor	r12d, r12d
	xor	edi, edi
	mov	rsi, -1
	mov	rbx, r9
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 0x58]
	mov	r9d, r15d
	call	__strftime_internal
	mov	rdi, qword ptr [rsp + 0x60]
	test	r14d, r14d
	cmovns	r12d, r14d
	movsxd	rdx, r12d
	cmp	rax, rdx
	mov	r13, rax
	cmovb	r13, rdx
	mov	r12, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	sub	r12, rsi
	cmp	r13, r12
	jae	.label_353
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_399
	cmp	rax, rdx
	jae	.label_400
	movsxd	rcx, r14d
	sub	rcx, rax
	mov	qword ptr [rsp + 0x48], rax
	cmp	r15d, 0x30
	je	.label_402
	cmp	r15d, 0x2b
	jne	.label_406
.label_402:
	mov	esi, 0x30
	jmp	.label_421
.label_1038:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	je	.label_371
	mov	byte ptr [rsp + 0x38], r8b
	mov	rcx, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [rcx + 0x1c]
	add	eax, 7
	sub	eax, dword ptr [rcx + 0x18]
	cdqe	
	jmp	.label_410
.label_1039:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	je	.label_371
	mov	byte ptr [rsp + 0x38], r8b
	mov	rcx, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [rcx + 0x18]
	mov	ecx, dword ptr [rcx + 0x1c]
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
	add	ecx, 7
	sub	ecx, edx
	movsxd	rax, ecx
.label_410:
	imul	rcx, rax, -0x6db6db6d
	shr	rcx, 0x20
	add	eax, ecx
	mov	ecx, eax
	shr	ecx, 0x1f
	sar	eax, 2
	add	eax, ecx
	jmp	.label_424
.label_1040:
	mov	eax, dword ptr [rsp + 0x68]
	cmp	eax, 0x4f
	je	.label_371
	xor	edi, edi
	mov	al, 0x58
	jmp	.label_369
.label_1041:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	je	.label_430
	cmp	ebx, 0x4f
	je	.label_371
	mov	byte ptr [rsp + 0x38], r8b
	mov	rax, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [rax + 0x14]
	cmp	eax, 0xfffff894
	setl	sil
	add	eax, 0x76c
	mov	ecx, 4
	jmp	.label_382
.label_1042:
	mov	r13, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rsp + 0x30]
	call	strlen
	mov	rdi, qword ptr [rsp + 0x60]
	xor	ecx, ecx
	test	r14d, r14d
	cmovns	ecx, r14d
	movsxd	rdx, ecx
	cmp	rax, rdx
	mov	rbx, rax
	cmovb	rbx, rdx
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	sub	rcx, rsi
	cmp	rbx, rcx
	jae	.label_353
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_444
	cmp	rax, rdx
	jae	.label_446
	movsxd	r14, r14d
	sub	r14, rax
	mov	qword ptr [rsp + 0x68], rax
	cmp	r15d, 0x30
	je	.label_447
	cmp	r15d, 0x2b
	jne	.label_450
.label_447:
	mov	esi, 0x30
	jmp	.label_453
.label_1043:
	mov	eax, dword ptr [rsp + 0x68]
	test	eax, eax
	jne	.label_371
	test	r12b, r12b
	je	.label_380
	mov	al, 1
	mov	qword ptr [rsp + 0x50], rax
.label_380:
	xor	edi, edi
	mov	al, 0x61
	jmp	.label_369
.label_1045:
	mov	eax, dword ptr [rsp + 0x68]
	cmp	eax, 0x4f
	je	.label_371
	xor	edi, edi
	mov	al, 0x63
	jmp	.label_369
.label_1046:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	je	.label_371
	mov	byte ptr [rsp + 0x38], r8b
	mov	rax, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [rax + 0xc]
	jmp	.label_424
.label_1047:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	je	.label_371
	mov	rax, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [rax + 0xc]
	jmp	.label_469
.label_1048:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	je	.label_371
	mov	byte ptr [rsp + 0x38], r8b
	mov	rax, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [rax + 0x1c]
	cmp	eax, -1
	setl	sil
	inc	eax
	mov	ecx, 3
	mov	qword ptr [rsp + 0x48], rcx
	jmp	.label_419
.label_1049:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	je	.label_371
	mov	rax, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [rax + 8]
	jmp	.label_469
.label_1050:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	mov	eax, dword ptr [rsp + 0x28]
	je	.label_371
.label_469:
	mov	byte ptr [rsp + 0x38], r8b
	test	r15d, r15d
	mov	ecx, 0x5f
	cmove	r15d, ecx
	jmp	.label_424
.label_1051:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	je	.label_371
	mov	byte ptr [rsp + 0x38], r8b
	mov	rax, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [rax + 0x10]
	cmp	eax, -1
	setl	sil
	inc	eax
	mov	ecx, 2
	mov	qword ptr [rsp + 0x48], rcx
	jmp	.label_419
.label_1052:
	mov	r12, r13
	mov	r13, qword ptr [rsp + 0x58]
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
	mov	rdi, qword ptr [rsp + 0x60]
	jae	.label_353
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_408
	cmp	eax, 2
	jb	.label_494
	movsxd	r14, r14d
	dec	r14
	cmp	r15d, 0x30
	je	.label_497
	cmp	r15d, 0x2b
	jne	.label_501
.label_497:
	mov	esi, 0x30
	jmp	.label_503
.label_1054:
	mov	byte ptr [rsp + 0x38], r8b
	mov	rax, qword ptr [rsp + 0x58]
	imul	eax, dword ptr [rax + 0x10], 0xb
	sar	eax, 5
	inc	eax
	mov	ecx, 1
	mov	qword ptr [rsp + 0x48], rcx
	xor	edx, edx
	xor	r8d, r8d
	xor	esi, esi
	mov	ebx, dword ptr [rsp + 0x68]
	jmp	.label_360
.label_1055:
	mov	r13, qword ptr [rsp + 0x60]
	mov	rcx, qword ptr [rsp + 0x58]
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
	nop	word ptr cs:[rax + rax]
.label_383:
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
	ja	.label_383
	mov	eax, 1
	mov	qword ptr [rsp + 0x48], rax
	xor	r8d, r8d
	mov	rdi, r13
	jmp	.label_398
.label_1056:
	mov	r12, r13
	mov	r13, qword ptr [rsp + 0x58]
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
	mov	rdi, qword ptr [rsp + 0x60]
	jae	.label_353
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_408
	cmp	eax, 2
	jb	.label_412
	movsxd	r14, r14d
	dec	r14
	cmp	r15d, 0x30
	je	.label_414
	cmp	r15d, 0x2b
	jne	.label_415
.label_414:
	mov	esi, 0x30
	jmp	.label_416
.label_1057:
	mov	byte ptr [rsp + 0x38], r8b
	mov	rax, qword ptr [rsp + 0x58]
	mov	ecx, dword ptr [rax + 0x18]
	lea	eax, [rcx + 6]
	cdqe	
	imul	rdx, rax, -0x6db6db6d
	shr	rdx, 0x20
	lea	ecx, [rdx + rcx + 6]
	mov	edx, ecx
	shr	edx, 0x1f
	sar	ecx, 2
	add	ecx, edx
	lea	edx, [rcx*8]
	sub	edx, ecx
	sub	eax, edx
	inc	eax
	mov	ecx, 1
	mov	qword ptr [rsp + 0x48], rcx
	mov	ebx, dword ptr [rsp + 0x68]
	jmp	.label_418
.label_1058:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	je	.label_371
	mov	byte ptr [rsp + 0x38], r8b
	mov	rax, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [rax + 0x18]
	mov	ecx, 1
	jmp	.label_358
.label_1059:
	mov	eax, dword ptr [rsp + 0x68]
	cmp	eax, 0x4f
	je	.label_371
	xor	edi, edi
	mov	al, 0x78
	jmp	.label_369
.label_1060:
	mov	ebx, dword ptr [rsp + 0x68]
	cmp	ebx, 0x45
	jne	.label_404
	xor	edi, edi
	mov	al, 0x79
	jmp	.label_369
.label_400:
	mov	qword ptr [rsp + 0x48], rax
	jmp	.label_364
.label_409:
	dec	ebx
	mov	edi, 0x16d
	test	bl, 3
	jne	.label_438
	movsxd	rax, ebx
	imul	rax, rax, 0x51eb851f
	mov	rcx, rax
	sar	rcx, 0x25
	mov	rdx, rax
	shr	rdx, 0x3f
	add	ecx, edx
	imul	ecx, ecx, 0x64
	sar	rax, 0x27
	add	eax, edx
	imul	eax, eax, 0x190
	cmp	ebx, eax
	sete	al
	movzx	eax, al
	add	eax, 0x16d
	cmp	ebx, ecx
	mov	edi, 0x16e
	cmove	edi, eax
.label_438:
	add	edi, dword ptr [rsp + 0x48]
	mov	rax, qword ptr [rsp + 0x58]
	mov	esi, dword ptr [rax + 0x18]
	call	iso_week_days
	mov	r12d, eax
	mov	ecx, 0xffffffff
.label_425:
	mov	ebx, dword ptr [rsp + 0x68]
	movsx	eax, byte ptr [rbp]
	cmp	eax, 0x47
	je	.label_451
	cmp	eax, 0x67
	jne	.label_456
	mov	rax, qword ptr [rsp + 0x58]
	movsxd	rdx, dword ptr [rax + 0x14]
	imul	rax, rdx, 0x51eb851f
	mov	rsi, rax
	shr	rsi, 0x3f
	sar	rax, 0x25
	add	eax, esi
	imul	eax, eax, 0x64
	mov	esi, edx
	sub	esi, eax
	add	esi, ecx
	movsxd	rax, esi
	imul	rsi, rax, 0x51eb851f
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x25
	add	esi, edi
	imul	esi, esi, 0x64
	sub	eax, esi
	jns	.label_486
	mov	esi, 2
	mov	qword ptr [rsp + 0x48], rsi
	mov	esi, 0xfffff894
	sub	esi, ecx
	mov	ecx, eax
	neg	ecx
	add	eax, 0x64
	cmp	edx, esi
	cmovl	eax, ecx
	xor	esi, esi
	jmp	.label_407
.label_477:
	mov	rsi, qword ptr [rsp + 0x78]
	mov	r8, rax
	mov	rdi, qword ptr [rsp + 0x60]
	jmp	.label_365
.label_474:
	mov	byte ptr [rsp + 0x38], r8b
	mov	rax, qword ptr [rsp + 0x58]
	movsxd	rcx, dword ptr [rax + 0x14]
	cmp	rcx, -0x76c
	setl	sil
	setg	dl
	imul	rax, rcx, 0x51eb851f
	mov	rdi, rax
	shr	rdi, 0x3f
	sar	rax, 0x25
	add	eax, edi
	imul	edi, eax, 0x64
	cmp	ecx, edi
	sets	cl
	and	cl, dl
	movzx	ecx, cl
	sub	eax, ecx
	add	eax, 0x13
	mov	ecx, 2
	jmp	.label_382
.label_404:
	mov	rax, qword ptr [rsp + 0x58]
	movsxd	rcx, dword ptr [rax + 0x14]
	imul	rax, rcx, 0x51eb851f
	mov	rdx, rax
	shr	rdx, 0x3f
	sar	rax, 0x25
	add	eax, edx
	imul	edx, eax, 0x64
	mov	eax, ecx
	sub	eax, edx
	js	.label_481
	mov	byte ptr [rsp + 0x38], r8b
.label_486:
	mov	ecx, 2
	mov	qword ptr [rsp + 0x48], rcx
	xor	esi, esi
	jmp	.label_407
.label_451:
	mov	rax, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [rax + 0x14]
	mov	edx, 0xfffff894
	sub	edx, ecx
	cmp	eax, edx
	setl	sil
	lea	eax, [rcx + rax + 0x76c]
	mov	ecx, 4
.label_382:
	mov	qword ptr [rsp + 0x48], rcx
.label_407:
	test	r15d, r15d
	cmove	r15d, dword ptr [rsp + 0x2c]
	xor	edx, edx
	cmp	r15d, 0x2b
	mov	r8d, 0
	jne	.label_360
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	ecx, 2
	mov	r8d, 0x63
	mov	edi, 0x270f
	cmove	edi, r8d
	cmp	edi, eax
	setb	dil
	cmp	ecx, r14d
	setl	r8b
	or	r8b, dil
	jmp	.label_360
.label_456:
	movsxd	rax, r12d
	imul	rcx, rax, -0x6db6db6d
	shr	rcx, 0x20
	add	eax, ecx
	mov	ecx, eax
	sar	ecx, 2
	shr	eax, 0x1f
	lea	eax, [rcx + rax + 1]
.label_424:
	mov	ecx, 2
.label_358:
	mov	qword ptr [rsp + 0x48], rcx
.label_418:
	mov	esi, eax
	shr	esi, 0x1f
.label_419:
	xor	edx, edx
	xor	r8d, r8d
.label_360:
	cmp	ebx, 0x4f
	jne	.label_359
	test	sil, sil
	jne	.label_359
	mov	dword ptr [rsp + 0x68], ebx
	xor	edi, edi
	mov	al, byte ptr [rsp + 0x38]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_363
.label_359:
	mov	ecx, eax
	neg	ecx
	test	sil, sil
	cmove	ecx, eax
	lea	r12, [rsp + 0x4a7]
	nop	
.label_376:
	test	dl, 1
	je	.label_372
	mov	byte ptr [r12 - 1], 0x3a
	dec	r12
.label_372:
	sar	edx, 1
	mov	ebx, ecx
	mov	eax, 0xcccccccd
	imul	rax, rbx
	shr	rax, 0x23
	lea	ebx, [rax + rax]
	lea	ebx, [rbx + rbx*4]
	mov	edi, ecx
	sub	edi, ebx
	or	edi, 0x30
	mov	byte ptr [r12 - 1], dil
	dec	r12
	cmp	ecx, 9
	mov	ecx, eax
	ja	.label_376
	test	edx, edx
	mov	ecx, eax
	jne	.label_376
	mov	rdi, qword ptr [rsp + 0x60]
.label_398:
	mov	rax, qword ptr [rsp + 0x48]
	cmp	eax, r14d
	cmovl	eax, r14d
	test	r8b, r8b
	je	.label_385
	mov	r8b, 0x2b
.label_385:
	test	sil, sil
	mov	r9b, 0x2d
	jne	.label_388
	mov	r9b, r8b
.label_388:
	cmp	r15d, 0x2d
	mov	rsi, qword ptr [rsp + 0x78]
	jne	.label_392
	test	r9b, r9b
	mov	r8, rax
	je	.label_391
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
	jae	.label_353
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_401
	cmp	eax, 2
	setb	al
	test	r8d, r8d
	jne	.label_405
	test	al, al
	jne	.label_405
	movsxd	r13, r14d
	lea	rdx, [r13 - 1]
	mov	esi, 0x20
	mov	byte ptr [rsp + 0x68], r9b
	mov	qword ptr [rsp + 0x60], rdi
	mov	qword ptr [rsp + 0x48], r8
	call	memset
	mov	r9b, byte ptr [rsp + 0x68]
	mov	r8, qword ptr [rsp + 0x48]
	mov	rdi, qword ptr [rsp + 0x60]
	mov	rsi, qword ptr [rsp + 0x78]
	lea	rdi, [rdi + r13 - 1]
	jmp	.label_405
.label_392:
	mov	r8, rax
	movsxd	rax, r8d
	mov	rcx, r12
	lea	rdx, [rsp + 0x4a7]
	sub	rcx, rdx
	mov	dl, r9b
	neg	dl
	sbb	rbx, rbx
	add	rbx, rcx
	add	rbx, rax
	test	ebx, ebx
	jle	.label_417
	cmp	r15d, 0x5f
	jne	.label_423
	movsxd	rdx, ebx
	mov	rax, qword ptr [rsp + 0x70]
	sub	rax, rsi
	cmp	rdx, rax
	jae	.label_353
	xor	r11d, r11d
	test	rdi, rdi
	mov	r13d, 0
	je	.label_427
	mov	esi, 0x20
	mov	byte ptr [rsp + 0x68], r9b
	mov	r13, rdi
	mov	qword ptr [rsp + 0x48], r8
	mov	qword ptr [rsp + 0x38], rdx
	call	memset
	mov	rdx, qword ptr [rsp + 0x38]
	xor	r11d, r11d
	mov	r9b, byte ptr [rsp + 0x68]
	mov	r8, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x78]
	add	r13, rdx
.label_427:
	add	rsi, rdx
	sub	r14d, ebx
	cmovg	r11d, r14d
	test	r9b, r9b
	je	.label_435
	xor	eax, eax
	test	r11d, r11d
	cmovns	eax, r11d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x70]
	sub	rcx, rsi
	cmp	rbx, rcx
	jae	.label_353
	xor	edi, edi
	test	r13, r13
	je	.label_440
	cmp	eax, 2
	setb	al
	test	r8d, r8d
	jne	.label_441
	test	al, al
	jne	.label_441
	mov	byte ptr [rsp + 0x68], r9b
	mov	qword ptr [rsp + 0x48], r8
	mov	qword ptr [rsp + 0x78], rsi
	movsxd	r14, r11d
	mov	qword ptr [rsp + 0x60], r11
	dec	r14
	cmp	r15d, 0x30
	je	.label_445
	cmp	r15d, 0x2b
	jne	.label_449
.label_445:
	mov	esi, 0x30
	jmp	.label_452
.label_417:
	test	r9b, r9b
	je	.label_391
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
	jae	.label_353
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_401
	cmp	eax, 2
	setb	al
	test	r8d, r8d
	jne	.label_405
	test	al, al
	jne	.label_405
	mov	byte ptr [rsp + 0x68], r9b
	mov	qword ptr [rsp + 0x48], r8
	movsxd	rax, r14d
	dec	rax
	cmp	r15d, 0x30
	je	.label_396
	cmp	r15d, 0x2b
	jne	.label_471
.label_396:
	mov	esi, 0x30
	jmp	.label_473
.label_423:
	mov	rcx, qword ptr [rsp + 0x70]
	sub	rcx, rsi
	cmp	rax, rcx
	jae	.label_353
	test	r9b, r9b
	je	.label_475
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rdx, eax
	cmp	edx, 1
	mov	r13d, 1
	cmova	r13, rdx
	cmp	r13, rcx
	jae	.label_353
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_478
	cmp	eax, 2
	setb	al
	test	r8d, r8d
	jne	.label_357
	test	al, al
	jne	.label_357
	mov	byte ptr [rsp + 0x68], r9b
	mov	qword ptr [rsp + 0x48], r8
	movsxd	rax, r14d
	dec	rax
	cmp	r15d, 0x30
	je	.label_483
	cmp	r15d, 0x2b
	jne	.label_394
.label_483:
	mov	esi, 0x30
	jmp	.label_488
.label_435:
	mov	rdi, r13
	mov	r14d, r11d
	jmp	.label_391
.label_430:
	xor	edi, edi
	mov	al, 0x59
.label_369:
	xor	r11d, r11d
.label_363:
	mov	dword ptr [rsp + 0x38], edi
	mov	qword ptr [rsp + 0x48], r11
	mov	word ptr [rsp + 0x48b], 0x2520
	mov	r11d, dword ptr [rsp + 0x68]
	test	r11d, r11d
	lea	rcx, [rsp + 0x48d]
	je	.label_496
	mov	byte ptr [rsp + 0x48d], r11b
	lea	rcx, [rsp + 0x48e]
.label_496:
	mov	byte ptr [rcx], al
	mov	byte ptr [rcx + 1], 0
	lea	rdi, [rsp + 0x80]
	lea	rdx, [rsp + 0x48b]
	mov	esi, 0x400
	mov	rcx, qword ptr [rsp + 0x58]
	call	strftime
	mov	rbx, rax
	test	rbx, rbx
	je	.label_502
	dec	rbx
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	cdqe	
	cmp	rbx, rax
	mov	r12, rbx
	cmovb	r12, rax
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	sub	rcx, rsi
	cmp	r12, rcx
	mov	rdx, qword ptr [rsp + 0x48]
	jae	.label_353
	xor	ecx, ecx
	mov	rdi, qword ptr [rsp + 0x60]
	test	rdi, rdi
	mov	r8, qword ptr [rsp + 0x58]
	je	.label_361
	cmp	rbx, rax
	setae	al
	test	edx, edx
	jne	.label_370
	test	al, al
	jne	.label_370
	mov	r13, rsi
	movsxd	r14, r14d
	sub	r14, rbx
	cmp	r15d, 0x30
	je	.label_420
	cmp	r15d, 0x2b
	jne	.label_374
.label_420:
	mov	esi, 0x30
	jmp	.label_454
.label_502:
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdi, qword ptr [rsp + 0x60]
	mov	r8, qword ptr [rsp + 0x58]
	jmp	.label_365
.label_374:
	mov	esi, 0x20
.label_454:
	mov	rdx, r14
	mov	r15, rdi
	call	memset
	add	r15, r14
	mov	rsi, r13
	movabs	r13, 0x1000000000002500
	mov	rdi, r15
	mov	r8, qword ptr [rsp + 0x58]
.label_370:
	mov	qword ptr [rsp + 0x78], rsi
	mov	r14, r8
	mov	eax, dword ptr [rsp + 0x38]
	test	al, 1
	jne	.label_387
	mov	rax, qword ptr [rsp + 0x50]
	lea	rsi, [rsp + 0x81]
	mov	rdx, rbx
	mov	r15, rdi
	test	al, 1
	jne	.label_389
	call	memcpy
	jmp	.label_395
.label_387:
	lea	rsi, [rsp + 0x81]
	mov	rdx, rbx
	mov	r15, rdi
	call	memcpy_lowcase
	jmp	.label_395
.label_389:
	call	memcpy_uppcase
.label_395:
	mov	rcx, r15
	mov	rsi, qword ptr [rsp + 0x78]
	mov	r8, r14
	add	rcx, rbx
.label_361:
	add	rsi, r12
	jmp	.label_432
.label_446:
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_403
.label_406:
	mov	esi, 0x20
.label_421:
	mov	rdx, rcx
	mov	qword ptr [rsp + 0x38], rdx
	mov	r14, rdi
	call	memset
	add	r14, qword ptr [rsp + 0x38]
	mov	rdi, r14
.label_364:
	mov	edx, dword ptr [rsp + 0x68]
	mov	rax, qword ptr [rsp + 0x50]
	test	al, al
	setne	al
	mov	ecx, dword ptr [rsp + 0x4f0]
	mov	dword ptr [rsp + 0x10], ecx
	mov	rcx, qword ptr [rsp + 0x4e8]
	mov	qword ptr [rsp + 8], rcx
	mov	dword ptr [rsp], edx
	movzx	r8d, al
	mov	rsi, r12
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 0x58]
	mov	r9d, r15d
	mov	rbx, rdi
	call	__strftime_internal
	mov	rax, qword ptr [rsp + 0x48]
	add	rax, rbx
	mov	rcx, rax
	mov	rsi, qword ptr [rsp + 0x78]
.label_399:
	add	rsi, r13
	mov	rdi, rcx
	jmp	.label_422
.label_436:
	mov	rax, qword ptr [rsp + 0x30]
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x2d
	sete	sil
.label_433:
	cmp	r11, 3
	mov	ebx, dword ptr [rsp + 0x68]
	ja	.label_371
	movsxd	rax, r8d
	imul	rdx, rax, -0x77777777
	shr	rdx, 0x20
	add	edx, r8d
	mov	edi, edx
	shr	edi, 0x1f
	sar	edx, 5
	add	edx, edi
	imul	rax, rax, -0x6e5d4c3b
	shr	rax, 0x20
	add	eax, r8d
	mov	edi, eax
	shr	edi, 0x1f
	sar	eax, 0xb
	add	eax, edi
	movsxd	rdx, edx
	imul	rdi, rdx, -0x77777777
	shr	rdi, 0x20
	add	edi, edx
	mov	ecx, edi
	shr	ecx, 0x1f
	sar	edi, 5
	add	edi, ecx
	imul	edi, edi, 0x3c
	imul	ecx, edx, 0x3c
	sub	edx, edi
	sub	r8d, ecx
	jmp	qword ptr [word ptr [+ (r11 * 8) + label_426]]
.label_1008:
	imul	eax, eax, 0x64
	add	eax, edx
	mov	ecx, 5
.label_482:
	mov	qword ptr [rsp + 0x48], rcx
	mov	r8b, 1
	xor	edx, edx
	jmp	.label_360
.label_371:
	xor	r13d, r13d
	xor	ebx, ebx
	movabs	rcx, 0x100000000
	nop	word ptr cs:[rax + rax]
.label_442:
	add	rbx, rcx
	movzx	eax, byte ptr [rbp + r13]
	dec	r13
	cmp	eax, 0x25
	jne	.label_442
	mov	rax, r13
	neg	rax
	test	r14d, r14d
	mov	ecx, r14d
	mov	edx, 0
	cmovs	ecx, edx
	cmp	eax, ecx
	mov	edx, ecx
	cmova	edx, eax
	movsxd	r12, edx
	mov	rdx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	sub	rdx, rsi
	cmp	r12, rdx
	mov	rdi, qword ptr [rsp + 0x60]
	jae	.label_353
	test	rdi, rdi
	mov	edx, 0
	je	.label_455
	sar	rbx, 0x20
	cmp	eax, ecx
	jae	.label_457
	movsxd	r14, r14d
	sub	r14, rbx
	cmp	r15d, 0x30
	je	.label_458
	cmp	r15d, 0x2b
	jne	.label_500
.label_458:
	mov	r15, rsi
	mov	esi, 0x30
	jmp	.label_461
.label_457:
	mov	r15, rsi
	jmp	.label_463
.label_500:
	mov	r15, rsi
	mov	esi, 0x20
.label_461:
	mov	rdx, r14
	call	memset
	mov	rdi, qword ptr [rsp + 0x60]
	add	rdi, r14
.label_463:
	lea	rsi, [rbp + r13 + 1]
	mov	rax, qword ptr [rsp + 0x50]
	mov	rdx, rbx
	mov	r14, rdi
	test	al, 1
	jne	.label_466
	call	memcpy
	jmp	.label_470
.label_466:
	call	memcpy_uppcase
.label_470:
	mov	rdx, r14
	mov	rsi, r15
	add	rdx, rbx
.label_455:
	add	rsi, r12
	mov	rdi, rdx
.label_422:
	mov	r8, qword ptr [rsp + 0x58]
	movabs	r13, 0x1000000000002500
	jmp	.label_365
.label_479:
	xor	eax, eax
	mov	r10d, r14d
	add	r10d, -6
	cmovs	r10d, eax
	mov	r9d, OFFSET FLAT:.str.2_2
	jmp	.label_476
.label_495:
	mov	byte ptr [rsp + 0x38], r8b
	mov	eax, 9
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, dword ptr [rsp + 0x4f0]
	mov	r14d, 9
	jmp	.label_418
.label_481:
	mov	byte ptr [rsp + 0x38], r8b
	mov	edx, 2
	mov	qword ptr [rsp + 0x48], rdx
	mov	edx, eax
	neg	edx
	add	eax, 0x64
	cmp	ecx, 0xfffff894
	cmovl	eax, edx
	xor	esi, esi
	jmp	.label_407
.label_1011:
	test	r8d, r8d
	je	.label_485
.label_1010:
	imul	eax, eax, 0x2710
	imul	edx, edx, 0x64
	add	eax, r8d
	add	eax, edx
	mov	ecx, 9
	mov	qword ptr [rsp + 0x48], rcx
	mov	r8b, 1
	mov	edx, 0x14
	jmp	.label_360
.label_498:
	mov	eax, dword ptr [rsp + 0x4f0]
	mov	ecx, r14d
	jmp	.label_358
.label_450:
	mov	esi, 0x20
.label_453:
	mov	rdx, r14
	mov	r15, rdi
	call	memset
	add	r15, r14
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rdi, r15
	mov	rax, qword ptr [rsp + 0x68]
.label_403:
	test	r12b, r12b
	je	.label_493
	mov	qword ptr [rsp + 0x30], rsi
	mov	r15, rax
	mov	rdx, r15
	mov	r14, rdi
	call	memcpy_lowcase
	jmp	.label_356
.label_493:
	setne	dl
	mov	rcx, qword ptr [rsp + 0x50]
	test	cl, cl
	je	.label_499
	test	dl, dl
	jne	.label_499
	mov	qword ptr [rsp + 0x30], rsi
	mov	r15, rax
	mov	rdx, r15
	mov	r14, rdi
	call	memcpy_uppcase
	jmp	.label_356
.label_499:
	mov	qword ptr [rsp + 0x30], rsi
	mov	r15, rax
	mov	rdx, r15
	mov	r14, rdi
	call	memcpy
.label_356:
	mov	rcx, r14
	mov	rsi, qword ptr [rsp + 0x78]
	add	rcx, r15
.label_444:
	add	rsi, rbx
	mov	rdi, rcx
	mov	r8, r13
	movabs	r13, 0x1000000000002500
	jmp	.label_365
.label_501:
	mov	esi, 0x20
.label_503:
	mov	rdx, r14
	mov	r15, rdi
	call	memset
	add	r15, r14
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdi, r15
.label_494:
	mov	byte ptr [rdi], 0xa
	jmp	.label_373
.label_415:
	mov	esi, 0x20
.label_416:
	mov	rdx, r14
	mov	r15, rdi
	call	memset
	add	r15, r14
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdi, r15
.label_412:
	mov	byte ptr [rdi], 9
	jmp	.label_373
.label_471:
	mov	esi, 0x20
.label_473:
	mov	rdx, rax
	mov	qword ptr [rsp + 0x38], rdx
	mov	r13, rdi
	call	memset
	add	r13, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdi, r13
	mov	r8, qword ptr [rsp + 0x48]
	mov	r9b, byte ptr [rsp + 0x68]
.label_405:
	mov	byte ptr [rdi], r9b
	inc	rdi
	mov	rcx, rdi
.label_401:
	add	rsi, rbx
	mov	rdi, rcx
	jmp	.label_391
.label_449:
	mov	esi, 0x20
.label_452:
	mov	rdi, r13
	mov	rdx, r14
	call	memset
	add	r13, r14
	mov	rsi, qword ptr [rsp + 0x78]
	mov	r8, qword ptr [rsp + 0x48]
	mov	r9b, byte ptr [rsp + 0x68]
	mov	r11, qword ptr [rsp + 0x60]
.label_441:
	mov	byte ptr [r13], r9b
	inc	r13
	mov	rdi, r13
.label_440:
	add	rsi, rbx
	mov	r14d, r11d
	jmp	.label_391
.label_394:
	mov	esi, 0x20
.label_488:
	mov	rdx, rax
	mov	qword ptr [rsp + 0x38], rdx
	mov	r14, rdi
	call	memset
	add	r14, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdi, r14
	mov	r8, qword ptr [rsp + 0x48]
	mov	r9b, byte ptr [rsp + 0x68]
.label_357:
	mov	byte ptr [rdi], r9b
	inc	rdi
	mov	rcx, rdi
.label_478:
	add	rsi, r13
	mov	rdi, rcx
.label_475:
	xor	r14d, r14d
	test	rdi, rdi
	mov	r13d, 0
	je	.label_411
	movsxd	rdx, ebx
	mov	qword ptr [rsp + 0x68], rdx
	mov	qword ptr [rsp + 0x78], rsi
	mov	esi, 0x30
	mov	r13, rdi
	mov	qword ptr [rsp + 0x48], r8
	call	memset
	mov	r8, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x78]
	add	r13, qword ptr [rsp + 0x68]
.label_411:
	movsxd	rcx, ebx
	add	rsi, rcx
	mov	rdi, r13
.label_391:
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
	jae	.label_353
	xor	ecx, ecx
	test	rdi, rdi
	movabs	r13, 0x1000000000002500
	je	.label_428
	cmp	rbx, rax
	setae	al
	test	r8d, r8d
	jne	.label_366
	test	al, al
	jne	.label_366
	movsxd	r14, r14d
	sub	r14, rbx
	cmp	r15d, 0x30
	je	.label_431
	cmp	r15d, 0x2b
	jne	.label_489
.label_431:
	mov	qword ptr [rsp + 0x78], rsi
	mov	esi, 0x30
	jmp	.label_434
.label_489:
	mov	qword ptr [rsp + 0x78], rsi
	mov	esi, 0x20
.label_434:
	mov	qword ptr [rsp + 0x68], rdx
	mov	rdx, r14
	mov	r15, rdi
	call	memset
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rdi, r15
	mov	rsi, qword ptr [rsp + 0x78]
	add	rdi, r14
.label_366:
	mov	qword ptr [rsp + 0x68], rdx
	mov	r14, rsi
	mov	rax, qword ptr [rsp + 0x50]
	mov	rsi, r12
	mov	rdx, rbx
	mov	r15, rdi
	test	al, al
	je	.label_439
	call	memcpy_uppcase
	jmp	.label_443
.label_439:
	call	memcpy
.label_443:
	mov	rcx, r15
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x68]
	add	rcx, rbx
.label_428:
	add	rsi, rdx
	mov	rdi, rcx
	mov	r8, qword ptr [rsp + 0x58]
	jmp	.label_365
.label_485:
	test	edx, edx
	je	.label_448
.label_1009:
	imul	eax, eax, 0x64
	add	eax, edx
	mov	ecx, 6
	mov	qword ptr [rsp + 0x48], rcx
	mov	r8b, 1
	mov	edx, 4
	jmp	.label_360
.label_462:
	mov	esi, 0x20
.label_378:
	mov	rdx, r14
	mov	r15, rdi
	call	memset
	mov	rdi, r15
	mov	rsi, qword ptr [rsp + 0x78]
	add	rdi, r14
.label_459:
	mov	al, byte ptr [rbp]
	mov	byte ptr [rdi], al
.label_373:
	inc	rdi
	mov	rcx, rdi
.label_408:
	add	rsi, rbx
	mov	rdi, rcx
	mov	r8, r13
	mov	r13, r12
	nop	
.label_365:
	mov	r14d, 0xffffffff
	cmp	byte ptr [rbp + 1], 0
	lea	rbp, [rbp + 1]
	jne	.label_464
.label_480:
	cmp	qword ptr [rsp + 0x70], 0
	je	.label_465
	test	rdi, rdi
	je	.label_465
	mov	byte ptr [rdi], 0
	jmp	.label_465
.label_353:
	xor	esi, esi
.label_465:
	mov	rax, rsi
	add	rsp, 0x4a8
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
	#Procedure 0x406f00

	.globl memcpy_lowcase
	.type memcpy_lowcase, @function
memcpy_lowcase:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	test	rbx, rbx
	je	.label_504
	call	__ctype_tolower_loc
	nop	dword ptr [rax + rax]
.label_505:
	movzx	ecx, byte ptr [r14 + rbx - 1]
	mov	rdx, qword ptr [rax]
	mov	cl, byte ptr [rdx + rcx*4]
	mov	byte ptr [r15 + rbx - 1], cl
	dec	rbx
	jne	.label_505
.label_504:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406f40

	.globl memcpy_uppcase
	.type memcpy_uppcase, @function
memcpy_uppcase:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	test	rbx, rbx
	je	.label_506
	call	__ctype_toupper_loc
	nop	dword ptr [rax + rax]
.label_507:
	movzx	ecx, byte ptr [r14 + rbx - 1]
	mov	rdx, qword ptr [rax]
	mov	cl, byte ptr [rdx + rcx*4]
	mov	byte ptr [r15 + rbx - 1], cl
	dec	rbx
	jne	.label_507
.label_506:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406f80

	.globl iso_week_days
	.type iso_week_days, @function
iso_week_days:
	lea	eax, [rdi + 0x17e]
	sub	eax, esi
	cdqe	
	imul	rcx, rax, -0x6db6db6d
	shr	rcx, 0x20
	add	ecx, eax
	mov	edx, ecx
	shr	edx, 0x1f
	sar	ecx, 2
	add	ecx, edx
	lea	edx, [rcx*8]
	sub	edx, ecx
	sub	eax, edx
	neg	eax
	lea	eax, [rdi + rax + 3]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406fc0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_508
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_509
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_509
	mov	esi, OFFSET FLAT:.str.2_3
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_510
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_510:
	mov	rbx, r14
.label_509:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_508:
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
	#Procedure 0x407070
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
	#Procedure 0x4070b0

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
	#Procedure 0x4070c0

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
	#Procedure 0x4070d0

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
	#Procedure 0x407110
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
	#Procedure 0x407130

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_511
	test	rdx, rdx
	je	.label_511
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_511:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407160
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
	.align	16
	#Procedure 0x4071e0

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
.label_631:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r13d
	cmp	r13d, 0xa
	ja	.label_547
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_556]]
.label_944:
	mov	r12d, r11d
	mov	edi, OFFSET FLAT:.str.11_2
	mov	esi, r13d
	mov	r14, r10
	mov	bl, r8b
	mov	rbp, r9
	call	gettext_quote
	mov	qword ptr [rsp + 0x90], rax
	mov	edi, OFFSET FLAT:.str.12_1
	mov	esi, r13d
	call	gettext_quote
	mov	r11d, r12d
	mov	r9, rbp
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x88], rax
.label_945:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	test	r15b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_576
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_576
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
.label_601:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_588
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_588:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_601
.label_576:
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
	jmp	.label_534
.label_937:
	xor	r14d, r14d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	xor	edi, edi
	jmp	.label_534
.label_940:
	mov	al, 1
.label_938:
	mov	r15b, 1
.label_941:
	test	r15b, 1
	mov	cl, 1
	je	.label_587
	mov	cl, al
.label_587:
	mov	al, cl
.label_939:
	mov	r14d, 2
	test	r15b, 1
	jne	.label_633
	test	r10, r10
	je	.label_552
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_516
.label_633:
	xor	ecx, ecx
	jmp	.label_516
.label_942:
	mov	r14d, 5
	test	r15b, 1
	jne	.label_522
	test	r10, r10
	je	.label_585
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_530
.label_943:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_2
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	dil, 1
	jmp	.label_534
.label_552:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_516:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_1
	mov	qword ptr [rsp + 0xa8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	jmp	.label_534
.label_522:
	xor	eax, eax
	jmp	.label_530
.label_585:
	mov	eax, 1
.label_530:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_2
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	sil, 1
	mov	dil, r15b
	nop	dword ptr [rax + rax]
.label_534:
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
	jmp	.label_622
	nop	dword ptr [rax + rax]
.label_537:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	sar	r15b, 7
	and	r15b, r8b
	mov	r8b, r15b
	inc	rsi
.label_622:
	cmp	rbp, -1
	je	.label_611
	cmp	rsi, rbp
	jne	.label_613
	jmp	.label_529
	nop	dword ptr [rax]
.label_611:
	cmp	byte ptr [r9 + rsi], 0
	je	.label_529
.label_613:
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_621
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_600
	cmp	rbp, -1
	jne	.label_600
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
.label_600:
	cmp	rbx, rbp
	jbe	.label_526
.label_621:
	mov	rdi, r14
	mov	dword ptr [rsp + 0xec], 0
.label_566:
	movzx	r13d, byte ptr [r9 + rsi]
	cmp	r13, 0x7e
	ja	.label_532
	xor	edx, edx
	mov	r15b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_626]]
.label_1081:
	test	rsi, rsi
	jne	.label_539
	jmp	.label_541
	nop	word ptr cs:[rax + rax]
.label_526:
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
	jne	.label_562
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_566
	jmp	.label_514
.label_562:
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	jmp	.label_566
.label_1085:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_581
	test	rsi, rsi
	jne	.label_584
	cmp	rbp, 1
	je	.label_541
	xor	r15d, r15d
	jmp	.label_519
.label_1074:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_586
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_514
	cmp	edi, 2
	jne	.label_595
	mov	al, r11b
	and	al, 1
	jne	.label_599
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_603
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_603:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_543
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_543:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_612
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_612:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r11b, 1
	mov	rcx, rax
	jmp	.label_545
.label_1075:
	mov	bl, 0x62
	jmp	.label_596
.label_1076:
	mov	cl, 0x74
	jmp	.label_629
.label_1077:
	mov	bl, 0x76
	jmp	.label_596
.label_1078:
	mov	bl, 0x66
	jmp	.label_596
.label_1079:
	mov	cl, 0x72
	jmp	.label_629
.label_1082:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_513
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_512
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
	jae	.label_524
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_524:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_542
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_542:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_549
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_549:
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	jmp	.label_560
.label_1083:
	mov	r14, rdi
	cmp	r14d, 5
	je	.label_565
	cmp	r14d, 2
	jne	.label_568
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_512
.label_568:
	mov	rdi, r14
	jmp	.label_539
.label_1084:
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_572
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_512
	mov	rdi, r14
	jmp	.label_574
.label_532:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_577
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
.label_602:
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
	ja	.label_606
	test	dl, dl
	je	.label_606
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_519
.label_581:
	test	rsi, rsi
	jne	.label_608
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_608
.label_541:
	mov	dl, 1
.label_1080:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_514
	xor	eax, eax
	mov	r15b, dl
	jmp	.label_519
.label_586:
	cmp	dword ptr [rsp + 0x5c], 0
	je	.label_539
	mov	r14, rdi
	inc	rsi
	jmp	.label_622
.label_513:
	mov	rdi, r14
.label_560:
	xor	eax, eax
	mov	r15b, 1
	jmp	.label_519
.label_572:
	mov	rdi, r14
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r13b
	je	.label_629
.label_574:
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_567
.label_629:
	cmp	byte ptr [rsp + 0xa7], 0
	mov	bl, cl
	je	.label_514
.label_596:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	je	.label_519
	jmp	.label_525
.label_577:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_527
	mov	rdi, r9
	mov	rbx, r9
	mov	rbp, rsi
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_527:
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	r15b, 1
	xor	ebx, ebx
	lea	r14, [rsp + 0x100]
.label_592:
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
	je	.label_555
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x40]
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8b, byte ptr [rsp + 0xa6]
	je	.label_561
	cmp	rbp, -2
	je	.label_570
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_571
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_582:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_578
	bt	rsi, rdx
	jb	.label_557
.label_578:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_582
.label_571:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_558
	xor	r15d, r15d
.label_558:
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	add	rbx, rbp
	mov	r14, rdi
	call	mbsinit
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_592
	jmp	.label_602
.label_608:
	mov	rbp, -1
	xor	r15d, r15d
	jmp	.label_519
.label_565:
	mov	rdi, r14
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_539
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_539
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_539
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_614
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_618
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_514
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_627
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_627:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_569
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_569:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_523
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_523:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_617
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_617:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r15d, r15d
	jmp	.label_519
.label_539:
	xor	eax, eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_519:
	test	r12b, r12b
	je	.label_573
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_546
	jmp	.label_554
	nop	word ptr cs:[rax + rax]
.label_573:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_554
.label_546:
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_632
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_567
	jmp	.label_525
	nop	word ptr cs:[rax + rax]
.label_554:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_525
	jmp	.label_567
.label_632:
	mov	bl, r13b
	mov	rsi, r14
.label_525:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_514
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_580
	mov	al, r11b
	and	al, 1
	jne	.label_580
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_583
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_583:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_609
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_609:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_533
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_533:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_580:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_605
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_605:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_528
.label_584:
	xor	r15d, r15d
	jmp	.label_519
.label_606:
	add	rcx, rsi
	xor	eax, eax
	jmp	.label_616
	nop	word ptr cs:[rax + rax]
.label_619:
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_616:
	test	dl, dl
	je	.label_628
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	je	.label_521
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_615
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	mov	rsi, rbx
.label_615:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_521
	nop	word ptr [rax + rax]
.label_628:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_512
	cmp	r14d, 2
	jne	.label_536
	mov	al, r11b
	and	al, 1
	jne	.label_536
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_538
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_538:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_544
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_544:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_551
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_551:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_536:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_531
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_531:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_620
	mov	dl, r13b
	shr	dl, 6
	or	dl, 0x30
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rdi
.label_620:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_575
	mov	dl, r13b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_575:
	add	qword ptr [rsp + 0xf0], 3
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_521:
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_567
	test	r11b, 1
	je	.label_591
	mov	bl, al
	and	bl, 1
	mov	r14, rdi
	jne	.label_594
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_598
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_598:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_623
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
.label_623:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	rsi, rbx
	jmp	.label_594
	nop	word ptr cs:[rax + rax]
.label_591:
	mov	r14, rdi
.label_594:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_619
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rbx], r13b
	mov	rsi, rdi
	jmp	.label_619
.label_567:
	test	r11b, 1
	je	.label_630
	and	al, 1
	jne	.label_630
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_624
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_624:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_520
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_520:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	bl, r13b
	jmp	.label_528
	nop	dword ptr [rax + rax]
.label_630:
	mov	bl, r13b
	mov	r14, rdi
.label_528:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_537
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
	jmp	.label_537
.label_595:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_545
.label_599:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_545:
	cmp	rcx, r10
	jae	.label_590
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_590:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r13b, 0x30
	cmp	edi, 2
	je	.label_553
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_563
	mov	dl, byte ptr [r9 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_535
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_517
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	mov	rsi, rbx
.label_517:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_610
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsi, rbx
.label_610:
	add	rcx, 3
	xor	r15d, r15d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_519
.label_553:
	xor	r15d, r15d
	jmp	.label_519
.label_563:
	xor	r15d, r15d
	jmp	.label_519
.label_535:
	xor	r15d, r15d
	jmp	.label_519
.label_555:
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_550
.label_561:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_589
.label_570:
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	jae	.label_597
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_593:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	byte ptr [rax + rbx], 0
	je	.label_604
	lea	rax, [rsi + rbx + 1]
	inc	rbx
	cmp	rax, rbp
	jb	.label_593
	xor	r15d, r15d
	jmp	.label_550
.label_597:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_589:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_550:
	mov	byte ptr [rsp + 0xa6], r8b
	jmp	.label_602
.label_604:
	xor	r15d, r15d
	jmp	.label_550
.label_614:
	xor	r15d, r15d
	jmp	.label_519
.label_618:
	xor	r15d, r15d
	mov	rsi, rbx
	jmp	.label_519
	nop	dword ptr [rax + rax]
.label_529:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	and	cl, 1
	je	.label_625
	or	dl, al
	je	.label_512
.label_625:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12, r9
	test	cl, cl
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	je	.label_515
	or	dl, al
	jne	.label_515
	test	r8b, 1
	jne	.label_579
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_515
	test	r10, r10
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	r15b, dl
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_631
.label_515:
	mov	rdx, qword ptr [rsp + 0xa8]
	test	rdx, rdx
	je	.label_540
	test	cl, cl
	jne	.label_540
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_540
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_559:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_548
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_548:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_559
.label_540:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_564
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_564
.label_514:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_518:
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
.label_607:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_564:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_557:
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_518
.label_512:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	jmp	.label_518
.label_579:
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
	jmp	.label_607
.label_547:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4083f0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408400

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
	je	.label_634
	mov	qword ptr [rax], rbx
.label_634:
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
	#Procedure 0x408500
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_635
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_638:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_638
.label_635:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_639
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_637]], OFFSET FLAT:slot0
.label_639:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_636
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_636:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4085a0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x4085b0

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
	js	.label_640
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_645
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_641
.label_645:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_644
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
	jne	.label_643
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_643:
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
.label_641:
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
	ja	.label_646
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_642
	mov	rdi, rbx
	call	free
.label_642:
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
.label_646:
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
.label_640:
	call	abort
.label_644:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408780

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408790
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4087a0
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
	.align	16
	#Procedure 0x4087b0

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
	.align	16
	#Procedure 0x4087f0

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
	je	.label_647
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
.label_647:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408850

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
	.align	16
	#Procedure 0x408890

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
	.align	16
	#Procedure 0x4088b0
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
	.align	16
	#Procedure 0x4088d0

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
	mov	rcx,  qword ptr [word ptr [rip + label_648]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_649]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_650]]
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
	.align	16
	#Procedure 0x408940

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408950

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408960
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408970
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
	.align	16
	#Procedure 0x4089c0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4089d0

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
	mov	rax,  qword ptr [word ptr [rip + label_648]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_649]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_650]]
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
	.align	16
	#Procedure 0x408a40
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
	.align	16
	#Procedure 0x408a60
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
	.align	16
	#Procedure 0x408a80

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408a90
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
	.align	16
	#Procedure 0x408aa0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408ab0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ac0

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
	jne	.label_652
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
	je	.label_651
	mov	eax, OFFSET FLAT:.str.14_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_652
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_652
.label_651:
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
	je	.label_653
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_652
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_652
.label_653:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:.str.10_2
	mov	eax, OFFSET FLAT:.str.12_1
	cmove	rax, rcx
.label_652:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408ba0

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
	je	.label_655
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_656
	jmp	.label_654
.label_655:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_654
.label_656:
	mov	eax, 1
	test	bpl, bpl
	je	.label_654
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
.label_654:
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
	#Procedure 0x408c30

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
	je	.label_659
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_657
	jmp	.label_658
.label_659:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_658
.label_657:
	mov	eax, 1
	test	bpl, bpl
	je	.label_658
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
.label_658:
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
	#Procedure 0x408cc0

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
	je	.label_660
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_662
	jmp	.label_661
.label_660:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_661
.label_662:
	mov	eax, 1
	test	bpl, bpl
	je	.label_661
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
.label_661:
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
	#Procedure 0x408d40

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
	je	.label_665
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_664
	jmp	.label_663
.label_665:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_663
.label_664:
	mov	eax, 1
	test	bpl, bpl
	je	.label_663
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
.label_663:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408db0

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
	je	.label_668
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_666
	jmp	.label_667
.label_668:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_667
.label_666:
	mov	eax, 1
	test	bpl, bpl
	je	.label_667
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_667:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408e20

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
	je	.label_669
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_671
	jmp	.label_670
.label_669:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_670
.label_671:
	mov	eax, 1
	test	bpl, bpl
	je	.label_670
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_670:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x408e70

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
	je	.label_674
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_673
	jmp	.label_672
.label_674:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_672
.label_673:
	mov	eax, 1
	test	bpl, bpl
	je	.label_672
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_672:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ec0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_677
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_676
	jmp	.label_675
.label_677:
	mov	eax, 1
	test	cl, cl
	je	.label_675
.label_676:
	xor	eax, eax
.label_675:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x408ef0

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
	jns	.label_678
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	qword ptr [rbx + 8], rax
	cmp	rax, 1
	sbb	ebp, ebp
.label_678:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408f40

	.globl restore_cwd
	.type restore_cwd, @function
restore_cwd:
	mov	eax, dword ptr [rdi]
	test	eax, eax
	js	.label_679
	mov	edi, eax
	jmp	fchdir
.label_679:
	mov	rdi, qword ptr [rdi + 8]
	jmp	chdir_long
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408f60

	.globl free_cwd
	.type free_cwd, @function
free_cwd:
	push	rbx
	mov	rbx, rdi
	mov	edi, dword ptr [rbx]
	test	edi, edi
	js	.label_680
	call	close
.label_680:
	mov	rdi, qword ptr [rbx + 8]
	pop	rbx
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408f80
	.globl getcon
	.type getcon, @function
getcon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408fa0
	.globl freecon
	.type freecon, @function
freecon:

	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408fb0
	.globl getfscreatecon
	.type getfscreatecon, @function
getfscreatecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408fd0
	.globl setfscreatecon
	.type setfscreatecon, @function
setfscreatecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ff0
	.globl matchpathcon
	.type matchpathcon, @function
matchpathcon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409010

	.globl getfilecon
	.type getfilecon, @function
getfilecon:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409030

	.globl lgetfilecon
	.type lgetfilecon, @function
lgetfilecon:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409050
	.globl fgetfilecon
	.type fgetfilecon, @function
fgetfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409070
	.globl setfilecon
	.type setfilecon, @function
setfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409090
	.globl lsetfilecon
	.type lsetfilecon, @function
lsetfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4090b0
	.globl fsetfilecon
	.type fsetfilecon, @function
fsetfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4090d0
	.globl security_check_context
	.type security_check_context, @function
security_check_context:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4090f0
	.globl security_check_context_raw
	.type security_check_context_raw, @function
security_check_context_raw:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409110
	.globl setexeccon
	.type setexeccon, @function
setexeccon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409130
	.globl security_compute_create
	.type security_compute_create, @function
security_compute_create:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409150
	.globl string_to_security_class
	.type string_to_security_class, @function
string_to_security_class:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x409160
	.globl matchpathcon_init_prefix
	.type matchpathcon_init_prefix, @function
matchpathcon_init_prefix:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409180
	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:

	mov	rax, qword ptr [rdi + 0x50]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409190
	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:

	mov	rax, qword ptr [rdi + 0x70]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4091a0
	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:

	mov	rax, qword ptr [rdi + 0x60]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4091b0
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4091c0

	.globl get_stat_atime
	.type get_stat_atime, @function
get_stat_atime:
	mov	rax, qword ptr [rdi + 0x48]
	mov	rdx, qword ptr [rdi + 0x50]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4091d0

	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:
	mov	rax, qword ptr [rdi + 0x68]
	mov	rdx, qword ptr [rdi + 0x70]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4091e0

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	mov	rax, qword ptr [rdi + 0x58]
	mov	rdx, qword ptr [rdi + 0x60]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4091f0
	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:

	mov	rax, -1
	mov	rdx, -1
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409200
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409210

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
	je	.label_684
	mov	edx, OFFSET FLAT:.str_9
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_683
.label_684:
	mov	edx, OFFSET FLAT:.str.1_6
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_683:
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
	ja	.label_689
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_690]]
.label_1064:
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
.label_689:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_1
	jmp	.label_688
.label_1065:
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
.label_1066:
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
.label_1067:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_681
.label_1068:
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
	jmp	.label_686
.label_1069:
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
	jmp	.label_682
.label_1070:
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
.label_682:
	mov	qword ptr [rsp + 0x10], rdi
.label_686:
	mov	qword ptr [rsp + 8], rsi
.label_681:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_687
.label_1072:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_2
.label_688:
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
	jmp	.label_685
.label_1071:
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
.label_685:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_687:
	call	__fprintf_chk
.label_1063:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409500
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_691:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_691
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409530

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_693:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_692
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_694
	nop	dword ptr [rax]
.label_692:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_694:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_695
	inc	r9
	cmp	r9, 0xa
	jb	.label_693
.label_695:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409590

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	je	.label_696
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_696:
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
	.align	16
	#Procedure 0x409620
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
	#Procedure 0x4096a0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_697
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_697:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4096d0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_698
	test	rax, rax
	je	.label_699
.label_698:
	pop	rbx
	ret	
.label_699:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4096f0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_700
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_700:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409720

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_701
	test	rbx, rbx
	jne	.label_701
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_701:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_703
	test	rax, rax
	je	.label_702
.label_703:
	pop	rbx
	ret	
.label_702:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x409750

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_704
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_707
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_705
.label_704:
	test	rcx, rcx
	jne	.label_708
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_708:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_706
.label_705:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_707:
	call	xalloc_die
.label_706:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4097d0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4097e0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4097f0
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
	.align	16
	#Procedure 0x409820
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_709
	call	rpl_calloc
	test	rax, rax
	je	.label_709
	pop	rcx
	ret	
.label_709:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409850

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
	.align	16
	#Procedure 0x409880

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
	.align	16
	#Procedure 0x4098a0

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
	#Procedure 0x4098d0

	.globl xgetcwd
	.type xgetcwd, @function
xgetcwd:
	push	rbx
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_711
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_710
.label_711:
	mov	rax, rbx
	pop	rbx
	ret	
.label_710:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409900

	.globl xasprintf
	.type xasprintf, @function
xasprintf:
	sub	rsp, 0xc8
	test	al, al
	je	.label_712
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_712:
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
	#Procedure 0x4099a0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_713
	test	rsi, rsi
	mov	ecx, 1
	je	.label_714
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_714
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_713:
	mov	ecx, 1
.label_714:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4099f0

	.globl chdir_long
	.type chdir_long, @function
chdir_long:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r13, rdi
	call	chdir
	mov	ebx, eax
	xor	eax, eax
	test	ebx, ebx
	je	.label_716
	call	__errno_location
	mov	r14, rax
	cmp	dword ptr [r14], 0x24
	mov	eax, ebx
	jne	.label_716
	mov	rdi, r13
	call	strlen
	mov	r15, rax
	lea	rdi, [rsp + 8]
	call	cdb_init
	test	r15, r15
	je	.label_720
	cmp	r15, 0xfff
	jbe	.label_721
	add	r15, r13
	mov	esi, 0x2f
	mov	rdi, r13
	call	__strspn_c1
	mov	rbx, rax
	test	rbx, rbx
	je	.label_719
	cmp	rbx, 2
	jne	.label_727
	lea	rdi, [r13 + 3]
	mov	rdx, r15
	sub	rdx, rdi
	mov	esi, 0x2f
	call	memchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_715
	mov	byte ptr [rbx], 0
	lea	rdi, [rsp + 8]
	mov	rsi, r13
	call	cdb_advance_fd
	mov	byte ptr [rbx], 0x2f
	test	eax, eax
	jne	.label_718
	inc	rbx
	mov	rdi, rbx
	call	find_non_slash
	mov	r13, rax
	jmp	.label_719
.label_727:
	lea	rdi, [rsp + 8]
	mov	esi, OFFSET FLAT:.str.3_5
	call	cdb_advance_fd
	test	eax, eax
	jne	.label_718
	add	r13, rbx
.label_719:
	movzx	eax, byte ptr [r13]
	cmp	eax, 0x2f
	je	.label_723
	cmp	r13, r15
	ja	.label_726
	mov	rax, r15
	sub	rax, r13
	cmp	rax, 0xfff
	jle	.label_728
	lea	r12, [rsp + 8]
	nop	dword ptr [rax]
.label_722:
	mov	esi, 0x2f
	mov	edx, 0x1000
	mov	rdi, r13
	call	memrchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_715
	mov	byte ptr [rbx], 0
	mov	rax, rbx
	sub	rax, r13
	cmp	rax, 0x1000
	jge	.label_717
	mov	rdi, r12
	mov	rsi, r13
	call	cdb_advance_fd
	mov	byte ptr [rbx], 0x2f
	test	eax, eax
	jne	.label_718
	inc	rbx
	mov	rdi, rbx
	call	find_non_slash
	mov	r13, rax
	mov	rax, r15
	sub	rax, r13
	cmp	rax, 0xfff
	jg	.label_722
.label_728:
	cmp	r13, r15
	jae	.label_725
	lea	rdi, [rsp + 8]
	mov	rsi, r13
	call	cdb_advance_fd
	test	eax, eax
	jne	.label_718
.label_725:
	lea	rdi, [rsp + 8]
	call	cdb_fchdir
	test	eax, eax
	je	.label_729
.label_718:
	mov	ebx, dword ptr [r14]
	lea	rdi, [rsp + 8]
	call	cdb_free
	mov	dword ptr [r14], ebx
	jmp	.label_724
.label_715:
	mov	dword ptr [r14], 0x24
.label_724:
	mov	eax, 0xffffffff
.label_716:
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_729:
	lea	rdi, [rsp + 8]
	call	cdb_free
	xor	eax, eax
	jmp	.label_716
.label_717:
	mov	edi, OFFSET FLAT:.str.6_3
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 0xb3
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_720:
	mov	edi, OFFSET FLAT:.str_10
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 0x7e
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_721:
	mov	edi, OFFSET FLAT:.str.2_5
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 0x7f
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_723:
	mov	edi, OFFSET FLAT:.str.4_4
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 0xa2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_726:
	mov	edi, OFFSET FLAT:.str.5_3
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 0xa3
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409c40

	.globl cdb_init
	.type cdb_init, @function
cdb_init:
	mov	dword ptr [rdi], 0xffffff9c
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409c50

	.globl cdb_advance_fd
	.type cdb_advance_fd, @function
cdb_advance_fd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	edi, dword ptr [rbx]
	mov	edx, 0x10900
	xor	eax, eax
	call	openat
	mov	ebp, eax
	mov	eax, 0xffffffff
	test	ebp, ebp
	js	.label_730
	mov	rdi, rbx
	call	cdb_free
	mov	dword ptr [rbx], ebp
	xor	eax, eax
.label_730:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409c90

	.globl find_non_slash
	.type find_non_slash, @function
find_non_slash:
	push	rbx
	mov	rbx, rdi
	mov	esi, 0x2f
	call	__strspn_c1
	add	rax, rbx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409cb0

	.globl cdb_fchdir
	.type cdb_fchdir, @function
cdb_fchdir:
	mov	edi, dword ptr [rdi]
	jmp	fchdir
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409cc0

	.globl cdb_free
	.type cdb_free, @function
cdb_free:
	push	rax
	mov	edi, dword ptr [rdi]
	test	edi, edi
	js	.label_731
	call	close
	test	eax, eax
	jne	.label_732
.label_731:
	pop	rax
	ret	
.label_732:
	mov	edi, OFFSET FLAT:.str.7_2
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 0x40
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.cdb_free
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409cf0

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
	je	.label_733
	cmp	r15, -2
	jb	.label_733
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_733
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_733:
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
	#Procedure 0x409d50

	.globl read_file_system_list
	.type read_file_system_list, @function
read_file_system_list:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	edi, OFFSET FLAT:.str_11
	mov	esi, OFFSET FLAT:.str.1_9
	call	fopen
	mov	r14, rax
	test	r14, r14
	je	.label_742
	mov	qword ptr [rsp + 0x58], 0
	mov	qword ptr [rsp + 0x50], 0
	lea	rdi, [rsp + 0x58]
	lea	rsi, [rsp + 0x50]
	mov	rdx, r14
	call	getline
	lea	r12, [rsp + 0x60]
	cmp	rax, -1
	je	.label_748
	lea	rbx, [rsp + 0x27]
	lea	r15, [rsp + 0x40]
	lea	r13, [rsp + 0x44]
	nop	dword ptr [rax + rax]
.label_750:
	mov	rdi, qword ptr [rsp + 0x58]
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	mov	qword ptr [rsp], r13
	mov	esi, OFFSET FLAT:.str.2_6
	xor	eax, eax
	lea	rdx, [rsp + 0x4c]
	lea	rcx, [rsp + 0x48]
	lea	r8, [rsp + 0x2c]
	lea	r9, [rsp + 0x28]
	call	sscanf
	or	eax, 4
	cmp	eax, 7
	jne	.label_739
	movsxd	rdi, dword ptr [rsp + 0x40]
	add	rdi, qword ptr [rsp + 0x58]
	mov	esi, OFFSET FLAT:.str.3_6
	call	strstr
	mov	rbp, rax
	test	rbp, rbp
	je	.label_739
	mov	qword ptr [rsp], rbx
	mov	esi, OFFSET FLAT:.str.4_5
	xor	eax, eax
	mov	rdi, rbp
	lea	rdx, [rsp + 0x3c]
	lea	rcx, [rsp + 0x38]
	lea	r8, [rsp + 0x34]
	lea	r9, [rsp + 0x30]
	call	sscanf
	or	eax, 4
	cmp	eax, 5
	jne	.label_739
	movsxd	rax, dword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rcx + rax], 0
	movsxd	rax, dword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rcx + rax], 0
	movsxd	rax, dword ptr [rsp + 0x38]
	mov	byte ptr [rbp + rax], 0
	movsxd	rax, dword ptr [rsp + 0x30]
	mov	byte ptr [rbp + rax], 0
	movsxd	rdi, dword ptr [rsp + 0x34]
	add	rdi, rbp
	call	unescape_tab
	movsxd	rdi, dword ptr [rsp + 0x44]
	add	rdi, qword ptr [rsp + 0x58]
	call	unescape_tab
	movsxd	rdi, dword ptr [rsp + 0x2c]
	add	rdi, qword ptr [rsp + 0x58]
	call	unescape_tab
	mov	edi, 0x38
	call	xmalloc
	mov	r13, rax
	movsxd	rdi, dword ptr [rsp + 0x34]
	add	rdi, rbp
	call	xstrdup
	mov	qword ptr [r13], rax
	movsxd	rdi, dword ptr [rsp + 0x44]
	add	rdi, qword ptr [rsp + 0x58]
	call	xstrdup
	mov	qword ptr [r13 + 8], rax
	movsxd	rdi, dword ptr [rsp + 0x2c]
	add	rdi, qword ptr [rsp + 0x58]
	call	xstrdup
	mov	qword ptr [r13 + 0x10], rax
	movsxd	rdi, dword ptr [rsp + 0x3c]
	add	rdi, rbp
	call	xstrdup
	mov	qword ptr [r13 + 0x18], rax
	or	byte ptr [r13 + 0x28], 4
	mov	edi, dword ptr [rsp + 0x4c]
	mov	esi, dword ptr [rsp + 0x48]
	call	gnu_dev_makedev
	mov	qword ptr [r13 + 0x20], rax
	mov	rbp, qword ptr [r13 + 0x18]
	mov	esi, OFFSET FLAT:.str.5_1
	mov	rdi, rbp
	call	strcmp
	mov	bl, 1
	test	eax, eax
	mov	al, 1
	je	.label_735
	mov	esi, OFFSET FLAT:.str.6_0
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_735
	mov	esi, OFFSET FLAT:.str.7_3
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_735
	mov	esi, OFFSET FLAT:.str.8_0
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_735
	mov	esi, OFFSET FLAT:.str.9_0
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_735
	mov	esi, OFFSET FLAT:.str.10_0
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_735
	mov	esi, OFFSET FLAT:.str.11_0
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_735
	mov	esi, OFFSET FLAT:.str.12_0
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_735
	mov	esi, OFFSET FLAT:.str.13_0
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_735
	mov	esi, OFFSET FLAT:.str.14_0
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_735
	mov	esi, OFFSET FLAT:.str.15_2
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_735
	mov	esi, OFFSET FLAT:.str.16_1
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_735
	mov	esi, OFFSET FLAT:.str.17_1
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	sete	al
	nop	dword ptr [rax]
.label_735:
	mov	cl, byte ptr [r13 + 0x28]
	and	cl, 0xfe
	or	cl, al
	mov	byte ptr [r13 + 0x28], cl
	mov	rbp, qword ptr [r13]
	mov	esi, 0x3a
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	jne	.label_744
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2f
	jne	.label_741
	movzx	eax, byte ptr [rbp + 1]
	cmp	eax, 0x2f
	jne	.label_741
	mov	rbp, qword ptr [r13 + 0x18]
	mov	esi, OFFSET FLAT:.str.18_2
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_744
	mov	esi, OFFSET FLAT:.str.19_0
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_744
.label_741:
	mov	rsi, qword ptr [r13]
	mov	edi, OFFSET FLAT:.str.20
	call	strcmp
	test	eax, eax
	sete	bl
.label_744:
	mov	al, byte ptr [r13 + 0x28]
	add	bl, bl
	and	al, 0xfd
	or	al, bl
	mov	byte ptr [r13 + 0x28], al
	mov	qword ptr [r12], r13
	add	r13, 0x30
	mov	r12, r13
	lea	rbx, [rsp + 0x27]
	lea	r13, [rsp + 0x44]
.label_739:
	lea	rdi, [rsp + 0x58]
	lea	rsi, [rsp + 0x50]
	mov	rdx, r14
	call	getline
	cmp	rax, -1
	jne	.label_750
.label_748:
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	rdi, r14
	call	ferror_unlocked
	test	eax, eax
	je	.label_752
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	rdi, r14
	call	rpl_fclose
	mov	dword ptr [rbp], r15d
	jmp	.label_738
.label_742:
	mov	edi, OFFSET FLAT:.str.21_0
	mov	esi, OFFSET FLAT:.str.1_9
	call	setmntent
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_740
	lea	r15, [rsp + 0x60]
	mov	rdi, rbx
	call	getmntent
	mov	rbp, rax
	test	rbp, rbp
	je	.label_743
	nop	word ptr [rax + rax]
.label_745:
	mov	esi, OFFSET FLAT:.str.22_0
	mov	rdi, rbp
	call	hasmntopt
	mov	qword ptr [rsp + 0x18], rax
	mov	edi, 0x38
	call	xmalloc
	mov	r12, rax
	mov	rdi, qword ptr [rbp]
	call	xstrdup
	mov	qword ptr [r12], rax
	mov	rdi, qword ptr [rbp + 8]
	call	xstrdup
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x10], 0
	mov	rdi, qword ptr [rbp + 0x10]
	call	xstrdup
	mov	rbp, rax
	mov	qword ptr [r12 + 0x18], rbp
	or	byte ptr [r12 + 0x28], 4
	mov	esi, OFFSET FLAT:.str.5_1
	mov	rdi, rbp
	call	strcmp
	mov	r13b, 1
	test	eax, eax
	mov	r14b, 1
	je	.label_736
	mov	esi, OFFSET FLAT:.str.6_0
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_736
	mov	esi, OFFSET FLAT:.str.7_3
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_736
	mov	esi, OFFSET FLAT:.str.8_0
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_736
	mov	esi, OFFSET FLAT:.str.9_0
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_736
	mov	esi, OFFSET FLAT:.str.10_0
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_736
	mov	esi, OFFSET FLAT:.str.11_0
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_736
	mov	esi, OFFSET FLAT:.str.12_0
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_736
	mov	esi, OFFSET FLAT:.str.13_0
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_736
	mov	esi, OFFSET FLAT:.str.14_0
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_736
	mov	esi, OFFSET FLAT:.str.15_2
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_736
	mov	esi, OFFSET FLAT:.str.16_1
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_736
	cmp	qword ptr [rsp + 0x18], 0
	sete	r14b
	mov	esi, OFFSET FLAT:.str.17_1
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_736
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_736:
	mov	al, byte ptr [r12 + 0x28]
	and	al, 0xfe
	or	al, r14b
	mov	byte ptr [r12 + 0x28], al
	mov	rbp, qword ptr [r12]
	mov	esi, 0x3a
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	jne	.label_734
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2f
	jne	.label_737
	movzx	eax, byte ptr [rbp + 1]
	cmp	eax, 0x2f
	jne	.label_737
	mov	rbp, qword ptr [r12 + 0x18]
	mov	esi, OFFSET FLAT:.str.18_2
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_734
	mov	esi, OFFSET FLAT:.str.19_0
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_734
	nop	
.label_737:
	mov	rsi, qword ptr [r12]
	mov	edi, OFFSET FLAT:.str.20
	call	strcmp
	test	eax, eax
	sete	r13b
.label_734:
	mov	al, byte ptr [r12 + 0x28]
	add	r13b, r13b
	and	al, 0xfd
	or	al, r13b
	mov	byte ptr [r12 + 0x28], al
	mov	qword ptr [r12 + 0x20], -1
	mov	qword ptr [r15], r12
	add	r12, 0x30
	mov	rdi, rbx
	call	getmntent
	mov	rbp, rax
	test	rbp, rbp
	mov	r15, r12
	jne	.label_745
	jmp	.label_746
.label_752:
	mov	rdi, r14
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_747
	jmp	.label_738
.label_743:
	mov	r12, r15
.label_746:
	mov	rdi, rbx
	call	endmntent
	test	eax, eax
	je	.label_738
.label_747:
	mov	qword ptr [r12], 0
	mov	rax, qword ptr [rsp + 0x60]
	jmp	.label_740
.label_738:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	qword ptr [r12], 0
	mov	rdi, qword ptr [rsp + 0x60]
	test	rdi, rdi
	je	.label_749
	nop	word ptr [rax + rax]
.label_751:
	mov	rbx, qword ptr [rdi + 0x30]
	call	free_mount_entry
	mov	qword ptr [rsp + 0x60], rbx
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_751
.label_749:
	mov	dword ptr [rbp], r14d
	xor	eax, eax
.label_740:
	add	rsp, 0x68
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
	#Procedure 0x40a410

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
	je	.label_756
	mov	rdx, r14
	nop	word ptr [rax + rax]
.label_754:
	lea	rsi, [rcx + 4]
	cmp	rsi, rax
	jae	.label_753
	movzx	esi, byte ptr [r14 + rcx]
	cmp	esi, 0x5c
	jne	.label_753
	mov	sil, byte ptr [rcx + r14 + 1]
	mov	bl, sil
	and	bl, 0xfc
	movzx	edi, bl
	cmp	edi, 0x30
	jne	.label_753
	mov	dil, byte ptr [rcx + r14 + 2]
	mov	bl, dil
	and	bl, 0xf8
	movzx	ebx, bl
	cmp	ebx, 0x30
	jne	.label_753
	mov	r8b, byte ptr [r14 + rcx + 3]
	mov	bl, r8b
	and	bl, 0xf8
	movzx	ebx, bl
	cmp	ebx, 0x30
	jne	.label_753
	add	rcx, 3
	shl	sil, 6
	shl	dil, 3
	add	dil, sil
	add	dil, r8b
	add	dil, 0x50
	mov	byte ptr [rdx], dil
	jmp	.label_755
	nop	word ptr [rax + rax]
.label_753:
	mov	bl, byte ptr [r14 + rcx]
	mov	byte ptr [rdx], bl
.label_755:
	inc	rcx
	inc	rdx
	cmp	rcx, rax
	jb	.label_754
.label_756:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a4c0

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
	je	.label_757
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
.label_757:
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a500

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	xor	r15d, r15d
	test	r14, r14
	je	.label_758
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	inc	r15
.label_758:
	lea	rax, [r15 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r15, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_759
	mov	qword ptr [rbx], 0
	test	r14, r14
	setne	byte ptr [rbx + 8]
	mov	byte ptr [rbx + 9], 0
	je	.label_759
	mov	rdi, rbx
	add	rdi, 9
	mov	rsi, r14
	mov	rdx, r15
	call	extend_abbrs
.label_759:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a570

	.globl extend_abbrs
	.type extend_abbrs, @function
extend_abbrs:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	call	memcpy
	mov	byte ptr [rbx + r14], 0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a590

	.globl tzfree
	.type tzfree, @function
tzfree:
	push	rbx
	cmp	rdi, 2
	jb	.label_760
	nop	word ptr [rax + rax]
.label_761:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_761
.label_760:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a5c0

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
	je	.label_762
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_763
	mov	rdi, rbp
	mov	rsi, r15
	call	localtime_r
	mov	bpl, 1
	test	rax, rax
	je	.label_764
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	mov	bpl, al
	xor	bpl, 1
.label_764:
	mov	rdi, r14
	call	revert_tz
	xor	ecx, ecx
	xor	al, 1
	cmovne	r15, rcx
	test	bpl, bpl
	cmovne	r15, rcx
	mov	rax, r15
	jmp	.label_765
.label_762:
	mov	rdi, rbp
	mov	rsi, r15
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	gmtime_r
.label_763:
	xor	eax, eax
.label_765:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a650

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	call	getenv_TZ
	mov	rbx, rax
	test	rbx, rbx
	mov	cl, byte ptr [r14 + 8]
	je	.label_769
	test	cl, cl
	je	.label_767
	lea	rdi, [r14 + 9]
	mov	rsi, rbx
	call	strcmp
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	jne	.label_767
	jmp	.label_766
.label_769:
	mov	eax, 1
	test	cl, cl
	je	.label_766
.label_767:
	mov	rdi, rbx
	call	tzalloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_766
	mov	rdi, r14
	call	change_env
	test	al, al
	je	.label_768
	mov	rax, rbx
	jmp	.label_766
.label_768:
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	tzfree
	mov	dword ptr [r14], ebp
	xor	eax, eax
.label_766:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a6d0

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
	mov	r13b, 1
	test	rbx, rbx
	je	.label_776
	cmp	r15, rbx
	ja	.label_777
	lea	rax, [r15 + 0x38]
	cmp	rbx, rax
	jb	.label_776
.label_777:
	mov	r14d, OFFSET FLAT:.str_0
	cmp	byte ptr [rbx], 0
	je	.label_774
	lea	r14, [r12 + 9]
	jmp	.label_770
.label_778:
	mov	rax, qword ptr [r12]
	lea	r14, [rax + 9]
	test	rax, rax
	cmove	r14, rcx
	cmovne	r12, rax
.label_770:
	lea	r13, [r12 + 9]
	nop	dword ptr [rax]
.label_775:
	mov	rdi, r14
	mov	rsi, rbx
	call	strcmp
	test	eax, eax
	je	.label_780
	cmp	byte ptr [r14], 0
	jne	.label_781
	mov	rbp, r14
	sub	rbp, r13
	jne	.label_771
	cmp	byte ptr [r12 + 8], 0
	je	.label_771
.label_781:
	mov	rdi, r14
	call	strlen
	lea	rcx, [rax + r14 + 1]
	cmp	byte ptr [rax + r14 + 1], 0
	mov	r14, rcx
	jne	.label_775
	jmp	.label_778
.label_780:
	mov	r13b, 1
.label_774:
	mov	qword ptr [r15 + 0x30], r14
.label_776:
	mov	al, r13b
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_771:
	mov	rdi, rbx
	call	strlen
	inc	rax
	mov	rcx, rbp
	not	rcx
	cmp	rax, rcx
	mov	r13b, 1
	jbe	.label_772
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r13d, r13d
	jmp	.label_776
.label_772:
	add	rbp, rax
	cmp	rbp, 0x76
	ja	.label_779
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rax
	call	extend_abbrs
	jmp	.label_774
.label_779:
	mov	rdi, rbx
	call	tzalloc
	mov	r14, rax
	mov	qword ptr [r12], r14
	test	r14, r14
	je	.label_773
	mov	byte ptr [r14 + 8], 0
	add	r14, 9
	jmp	.label_774
.label_773:
	xor	r13d, r13d
	jmp	.label_776
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a7f0

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	bl, 1
	cmp	r14, 1
	je	.label_782
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	mov	rdi, r14
	call	change_env
	mov	bl, al
	test	bl, bl
	jne	.label_783
	mov	ebp, dword ptr [r15]
.label_783:
	mov	rdi, r14
	call	tzfree
	mov	dword ptr [r15], ebp
.label_782:
	mov	al, bl
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a840

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
	je	.label_784
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_785
	mov	rdi, r15
	call	mktime
	mov	qword ptr [rsp + 0x38], rax
	cmp	rax, -1
	jne	.label_788
	lea	rdi, [rsp + 0x38]
	lea	rsi, [rsp]
	call	localtime_r
	test	rax, rax
	je	.label_787
	lea	rsi, [rsp]
	mov	rdi, r15
	call	equal_tm
	test	eax, eax
	je	.label_787
.label_788:
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	test	al, al
	jne	.label_787
	mov	qword ptr [rsp + 0x38], -1
.label_787:
	mov	rdi, r14
	call	revert_tz
	test	al, al
	je	.label_785
	mov	rax, qword ptr [rsp + 0x38]
	jmp	.label_786
.label_785:
	mov	rax, -1
.label_786:
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_784:
	mov	rdi, r15
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	jmp	timegm
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a8f0

	.globl equal_tm
	.type equal_tm, @function
equal_tm:
	push	rbx
	mov	eax, dword ptr [rsi]
	mov	ecx, dword ptr [rsi + 4]
	xor	eax, dword ptr [rdi]
	xor	ecx, dword ptr [rdi + 4]
	or	ecx, eax
	mov	eax, dword ptr [rsi + 8]
	xor	eax, dword ptr [rdi + 8]
	mov	edx, dword ptr [rsi + 0xc]
	xor	edx, dword ptr [rdi + 0xc]
	or	edx, eax
	or	edx, ecx
	mov	eax, dword ptr [rsi + 0x10]
	xor	eax, dword ptr [rdi + 0x10]
	mov	ebx, dword ptr [rsi + 0x14]
	xor	ebx, dword ptr [rdi + 0x14]
	or	ebx, eax
	or	ebx, edx
	mov	edi, dword ptr [rdi + 0x20]
	mov	esi, dword ptr [rsi + 0x20]
	call	isdst_differ
	movzx	eax, al
	or	eax, ebx
	sete	al
	movzx	eax, al
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a940

	.globl getenv_TZ
	.type getenv_TZ, @function
getenv_TZ:
	mov	edi, OFFSET FLAT:.str_2
	jmp	getenv
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a950

	.globl change_env
	.type change_env, @function
change_env:
	cmp	byte ptr [rdi + 8], 0
	je	.label_789
	add	rdi, 9
	jmp	.label_791
.label_789:
	xor	edi, edi
.label_791:
	push	rax
	call	setenv_TZ
	test	eax, eax
	je	.label_790
	xor	eax, eax
	pop	rcx
	ret	
.label_790:
	call	tzset
	mov	al, 1
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a980

	.globl setenv_TZ
	.type setenv_TZ, @function
setenv_TZ:
	mov	rax, rdi
	mov	edi, OFFSET FLAT:.str_2
	test	rax, rax
	je	.label_792
	mov	edx, 1
	mov	rsi, rax
	jmp	setenv
.label_792:
	jmp	unsetenv
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a9a0

	.globl isdst_differ
	.type isdst_differ, @function
isdst_differ:
	test	edi, edi
	sete	al
	test	esi, esi
	sete	cl
	xor	cl, al
	or	esi, edi
	setns	al
	and	al, cl
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a9c0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_793
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_793
.label_794:
	ret	
.label_793:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_794
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a9f0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_795
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_795:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40aa10
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aa20
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
	.align	16
	#Procedure 0x40aa30
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_796
.label_797:
	ret	
.label_796:
	cmp	edi, 0x7f
	je	.label_797
	xor	eax, eax
	jmp	.label_797
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aa50
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aa60
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aa70
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aa80
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aa90
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_798
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_798
.label_799:
	ret	
.label_798:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_799
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aac0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_800
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_800:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40aae0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aaf0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_801
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_801:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40ab10
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
	.align	16
	#Procedure 0x40ab20
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
	.align	16
	#Procedure 0x40ab30

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
	je	.label_803
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_802
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_802
.label_803:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_802
	test	cl, cl
	jne	.label_802
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_802:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aba0

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xc8
	test	al, al
	je	.label_804
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_804:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_807
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_806
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_805
.label_806:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_805:
	mov	edx, dword ptr [rax]
.label_807:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ac80

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_809
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_810
	cmp	byte ptr [rax + 1], 0
	je	.label_808
.label_810:
	mov	esi, OFFSET FLAT:.str.1_10
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_809
.label_808:
	xor	ebx, ebx
.label_809:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40acc0

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
	je	.label_811
	mov	rax, rcx
.label_811:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40acf0

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
	ja	.label_812
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
	jmp	.label_813
.label_812:
	mov	eax, ebx
.label_813:
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
	#Procedure 0x40ad40

	.globl xvasprintf
	.type xvasprintf, @function
xvasprintf:
	push	rax
	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	jmp	.label_814
	nop	dword ptr [rax + rax]
.label_820:
	inc	rdi
.label_814:
	movzx	edx, byte ptr [rcx + rdi*2]
	cmp	edx, 0x25
	jne	.label_818
	movzx	edx, byte ptr [rcx + rdi*2 + 1]
	cmp	edx, 0x73
	je	.label_820
	jmp	.label_815
.label_818:
	test	dl, dl
	jne	.label_815
	mov	rsi, rax
	call	xstrcat
	pop	rcx
	ret	
.label_815:
	lea	rdi, [rsp]
	mov	esi, 1
	mov	rdx, rcx
	mov	rcx, rax
	call	__vasprintf_chk
	test	eax, eax
	js	.label_816
	mov	rax, qword ptr [rsp]
	jmp	.label_817
.label_816:
	call	__errno_location
	mov	rcx, rax
	xor	eax, eax
	cmp	dword ptr [rcx], 0xc
	je	.label_819
.label_817:
	pop	rcx
	ret	
.label_819:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40adb0

	.globl xstrcat
	.type xstrcat, @function
xstrcat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rsi
	mov	r12, rdi
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [r14]
	movaps	xmmword ptr [rsp], xmm0
	test	r12, r12
	je	.label_827
	xor	ebx, ebx
	mov	rbp, r12
	nop	
.label_824:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_823
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_826
	nop	word ptr [rax + rax]
.label_823:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_826:
	mov	rdi, qword ptr [rax]
	call	strlen
	mov	rdi, rbx
	mov	rsi, rax
	call	xsum
	mov	rbx, rax
	dec	rbp
	jne	.label_824
	test	rbx, -0x80000000
	je	.label_825
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	xor	r15d, r15d
	jmp	.label_828
.label_827:
	mov	edi, 1
	call	xmalloc
	mov	r15, rax
	mov	rbx, r15
	jmp	.label_821
.label_825:
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	r15, rax
	mov	rbx, r15
	test	r12, r12
	je	.label_821
	nop	dword ptr [rax]
.label_829:
	movsxd	rcx, dword ptr [r14]
	cmp	rcx, 0x28
	ja	.label_822
	mov	rax, rcx
	add	rax, qword ptr [r14 + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [r14], ecx
	jmp	.label_830
	nop	dword ptr [rax + rax]
.label_822:
	mov	rax, qword ptr [r14 + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [r14 + 8], rcx
.label_830:
	mov	r13, qword ptr [rax]
	mov	rdi, r13
	call	strlen
	mov	rbp, rax
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, rbp
	call	memcpy
	add	rbx, rbp
	dec	r12
	jne	.label_829
.label_821:
	mov	byte ptr [rbx], 0
.label_828:
	mov	rax, r15
	add	rsp, 0x18
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
	#Procedure 0x40aee0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_831
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_833
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_831
.label_833:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_831
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_832
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_832:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_831:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40af60

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_834
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_834
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_834:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40af90

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_835
	ret	
.label_835:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40afb0

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
	jne	.label_836
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_836
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_837
.label_836:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_837:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_838
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_838:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b020

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
	#Procedure 0x40b040

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b050

	.globl xsum
	.type xsum, @function
xsum:
	add	rsi, rdi
	cmp	rsi, rdi
	mov	rax, -1
	cmovae	rax, rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b070
	.globl xsum3
	.type xsum3, @function
xsum3:

	push	rbx
	mov	rbx, rdx
	call	xsum
	mov	rdi, rax
	mov	rsi, rbx
	pop	rbx
	jmp	xsum
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b090
	.globl xsum4
	.type xsum4, @function
xsum4:

	push	r14
	push	rbx
	push	rax
	mov	r14, rcx
	mov	rbx, rdx
	call	xsum
	mov	rdi, rax
	mov	rsi, rbx
	call	xsum
	mov	rdi, rax
	mov	rsi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	xsum
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b0c0
	.globl xmax
	.type xmax, @function
xmax:

	cmp	rdi, rsi
	cmovae	rsi, rdi
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b0d0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xc8
	test	al, al
	je	.label_845
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_845:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	cmp	esi, 0xb
	ja	.label_842
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_841
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_848
	test	esi, esi
	jne	.label_842
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_850
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_840
.label_842:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_846
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_848
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_851
.label_841:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_848:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_843
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_849
.label_843:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_849:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_851:
	cmp	eax, 6
	jne	.label_846
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_847
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_852
.label_846:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_839
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_844
.label_850:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_840:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xc8
	ret	
.label_847:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_852:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xc8
	ret	
.label_839:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_844:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b2e0

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	mov	ecx, esi
	xor	esi, esi
	xor	eax, eax
	mov	edx, ecx
	jmp	fcntl
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b2f0

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_855
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_857
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_857
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_853
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_854
.label_857:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_854
.label_855:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_854:
	test	ebx, ebx
	js	.label_853
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_853
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_856
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_853
.label_856:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_853:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b470

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	16
	#Procedure 0x40b480

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	nop	
