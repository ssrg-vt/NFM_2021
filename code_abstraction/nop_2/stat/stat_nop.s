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
	jne	.label_8
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.1
	nop	
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rsi, rcx
	mov	rbp, rbp
	call	__printf_chk
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.2
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
	mov	rbp, rbp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.5
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10
	nop	
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.12
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.13
	nop	
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:fmt_terse_regular
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	__printf_chk
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.14
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:fmt_terse_fs
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.15
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rcx, rax
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.16
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	__printf_chk
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	mov	rbp, rbp
	call	__printf_chk
	nop	
	mov	edi, 5
	nop	
	xor	esi, esi
	call	setlocale
	lea	rsi, [rsi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_9
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.38
	mov	rsp, rsp
	mov	edx, 3
	nop	
	mov	rdi, rax
	call	strncmp
	nop	
	test	eax, eax
	mov	rsp, rsp
	je	.label_9
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.39
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
.label_9:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi, rax
	mov	rsp, rsp
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.16
	xor	eax, eax
	lea	rdi, [rdi]
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.16
	mov	ecx, OFFSET FLAT:.str.42
	mov	rbp, rbp
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	lea	rsi, [rsi]
	call	exit
.label_8:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x4023e0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0xb8
	mov	r14, rsi
	mov	r15d, edi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	rsp, rsp
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.18_0
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.19
	nop	
	call	bindtextdomain
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.18_0
	call	textdomain
	call	localeconv
	mov	rax, qword ptr [rax]
	mov	edi, OFFSET FLAT:.str_1
	cmp	byte ptr [rax], 0
	nop	
	je	.label_19
	lea	rdi, [rdi]
	mov	rdi, rax
.label_19:
	mov	qword ptr [word ptr [rip + decimal_point]],  rdi
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [word ptr [rip + decimal_point_len]],  rax
	mov	edi, OFFSET FLAT:close_stdout
	mov	rsp, rsp
	call	atexit
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	mov	rsp, rsp
	xor	ebx, ebx
	lea	rsi, [rsi]
	xor	r12d, r12d
	lea	rdi, [rdi]
	jmp	.label_24
.label_13:
	nop	
	mov	al, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], rax
.label_24:
	mov	cl, bl
.label_30:
	mov	rsp, rsp
	mov	bl, cl
	jmp	.label_20
	nop	word ptr cs:[rax + rax]
.label_16:
	mov	r12,  qword ptr [word ptr [rip + optarg]]
	mov	byte ptr [byte ptr [rip + interpret_backslash_escapes]],  bpl
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + trailing_delim]],  rax
.label_20:
	xor	ebp, ebp
	mov	edx, OFFSET FLAT:.str.21
	mov	ecx, OFFSET FLAT:long_options
	lea	rdi, [rdi]
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	edi, r15d
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x65
	jg	.label_37
	cmp	eax, 0x4b
	jle	.label_38
	cmp	eax, 0x4c
	nop	
	je	.label_39
	cmp	eax, 0x63
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str.22
	je	.label_16
	jmp	.label_11
	nop	word ptr [rax + rax]
.label_37:
	mov	cl, 1
	cmp	eax, 0x66
	je	.label_13
	cmp	eax, 0x74
	lea	rdi, [rdi]
	je	.label_30
	cmp	eax, 0x80
	jne	.label_11
	mov	rsp, rsp
	mov	bpl, 1
	mov	eax, OFFSET FLAT:.str_0
	mov	rsp, rsp
	jmp	.label_16
.label_39:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + follow_links]],  1
	mov	rsp, rsp
	jmp	.label_20
.label_38:
	cmp	eax, -1
	mov	rsp, rsp
	jne	.label_22
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + optind]],  r15d
	je	.label_33
	mov	rbp, rbp
	test	r12, r12
	je	.label_31
	mov	esi, OFFSET FLAT:.str.26
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsp, rsp
	call	strstr
	test	rax, rax
	je	.label_21
	mov	edi, OFFSET FLAT:.str.50
	call	getenv
	nop	
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_28
	mov	esi, OFFSET FLAT:quoting_style_args
	mov	edx, OFFSET FLAT:quoting_style_vals
	nop	
	mov	ecx, 4
	mov	rdi, rbx
	call	argmatch
	mov	rbp, rbp
	test	eax, eax
	js	.label_32
	cdqe	
	mov	rbp, rbp
	mov	esi,  dword ptr [dword ptr [+ (rax * 4) + quoting_style_vals]]
	nop	
	xor	edi, edi
	call	set_quoting_style
	mov	rsp, rsp
	jmp	.label_21
.label_31:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	test	al, al
	setne	al
	test	bl, bl
	lea	rsi, [rsi]
	setne	cl
	mov	rsp, rsp
	movzx	ebx, al
	mov	rsp, rsp
	movzx	ebp, cl
	xor	edx, edx
	nop	
	mov	edi, ebx
	mov	esi, ebp
	call	default_format
	mov	qword ptr [rsp + 0xb0], rax
	lea	rsi, [rsi]
	mov	edx, 1
	mov	edi, ebx
	mov	esi, ebp
	nop	
	call	default_format
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_17
.label_28:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 4
	call	set_quoting_style
	nop	
	jmp	.label_21
.label_32:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, 4
	mov	rbp, rbp
	call	set_quoting_style
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 5
	nop	
	call	dcgettext
	nop	
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	nop	
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_21:
	mov	qword ptr [rsp + 0x10], r12
	mov	qword ptr [rsp + 0xb0], r12
.label_17:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	rdi, [rdi]
	mov	r12b, 1
	cmp	eax, r15d
	lea	rsi, [rsi]
	jge	.label_29
	mov	rbp, rbp
	lea	r13, [r14 + rax*8]
	lea	rsi, [rsi]
	sub	r15d, eax
	mov	rsp, rsp
	mov	r12b, 1
	lea	rdi, [rdi]
	lea	r14, [rsp + 0x20]
	nop	word ptr cs:[rax + rax]
.label_27:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x18]
	test	al, al
	mov	rbx, qword ptr [r13]
	je	.label_36
	mov	dword ptr [rsp + 8], r15d
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	jne	.label_40
	nop	
	cmp	byte ptr [rbx + 1], 0
	nop	
	je	.label_10
.label_40:
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r14
	call	statfs
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_14
	call	__errno_location
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0xc], eax
	xor	ebp, ebp
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.61
	mov	edx, 5
	call	dcgettext
	mov	r15, r14
	mov	r14, rax
	lea	rdi, [rdi]
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, rbx
	nop	
	call	quotearg_style
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, r14
	nop	
	mov	r14, r15
	mov	rsp, rsp
	call	error
	jmp	.label_12
	nop	word ptr [rax + rax]
.label_36:
	movzx	eax, byte ptr [rbx]
	mov	rbp, rbp
	cmp	eax, 0x2d
	mov	rsp, rsp
	jne	.label_26
	nop	
	mov	al, byte ptr [rbx + 1]
	mov	cl, al
	nop	
	neg	cl
	lea	rdi, [rdi]
	sbb	ebp, ebp
	lea	rsi, [rsi]
	test	al, al
	jne	.label_34
	mov	dword ptr [rsp + 8], r15d
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, ebp
	lea	rsi, [rsi]
	mov	rdx, r14
	nop	
	call	__fxstat
	test	eax, eax
	mov	rsp, rsp
	je	.label_25
	call	__errno_location
	nop	
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	ebp, ebp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.192
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	jmp	.label_12
.label_14:
	mov	esi, 0xffffffff
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:print_statfs
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0xb0]
	nop	
	jmp	.label_15
.label_26:
	mov	ebp, 0xffffffff
.label_34:
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + follow_links]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_18
	nop	
	mov	dword ptr [rsp + 8], r15d
	mov	edi, 1
	nop	
	mov	rsi, rbx
	mov	rdx, r14
	call	__xstat
	nop	
	jmp	.label_23
.label_18:
	mov	dword ptr [rsp + 8], r15d
	mov	edi, 1
	lea	rsi, [rsi]
	mov	rsi, rbx
	nop	
	mov	rdx, r14
	call	__lxstat
.label_23:
	test	eax, eax
	mov	rbp, rbp
	je	.label_25
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rdi]
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.5_0
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	r15, rax
	mov	rsp, rsp
	mov	edi, 4
	nop	
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, r14d
	lea	r14, [rsp + 0x20]
	mov	rdx, r15
	lea	rdi, [rdi]
	call	error
	lea	rdi, [rdi]
	jmp	.label_12
.label_25:
	mov	eax, dword ptr [rsp + 0x38]
	mov	ecx, 0x4000
	nop	
	or	eax, ecx
	lea	rsi, [rsi]
	and	eax, 0xf000
	cmp	eax, 0x6000
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0xb0]
	jne	.label_41
	nop	
	mov	rdi, qword ptr [rsp + 0x10]
.label_41:
	mov	ecx, OFFSET FLAT:print_stat
	mov	rbp, rbp
	mov	esi, ebp
.label_15:
	mov	rdx, rbx
	mov	r8, r14
	mov	rsp, rsp
	call	print_it
	nop	
	mov	bpl, al
	nop	
	xor	bpl, 1
	jmp	.label_12
.label_10:
	lea	rdi, [rdi]
	xor	ebp, ebp
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	r15, rax
	mov	edi, 4
	nop	
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, r15
	mov	rbp, rbp
	call	error
	nop	word ptr cs:[rax + rax]
.label_12:
	mov	rbp, rbp
	mov	r15d, dword ptr [rsp + 8]
	and	r12b, bpl
	add	r13, 8
	dec	r15d
	mov	rsp, rsp
	jne	.label_27
.label_29:
	nop	
	movzx	eax, r12b
	xor	eax, 1
	nop	
	add	rsp, 0xb8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	nop	
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_22:
	cmp	eax, 0xffffff7d
	je	.label_35
	cmp	eax, 0xffffff7e
	jne	.label_11
	xor	edi, edi
	call	usage
.label_35:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.16
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.24
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_11:
	mov	edi, 1
	mov	rsp, rsp
	call	usage
.label_33:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.25
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdx, rcx
	call	error
	lea	rsi, [rsi]
	mov	edi, 1
	nop	
	call	usage
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a80

	.globl default_format
	.type default_format, @function
default_format:
	push	r15
	push	r14
	nop	
	push	rbx
	mov	ebx, edx
	nop	
	test	dil, dil
	nop	
	je	.label_42
	test	sil, sil
	nop	
	je	.label_44
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:fmt_terse_fs
	jmp	.label_45
.label_42:
	test	sil, sil
	je	.label_47
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:fmt_terse_regular
	jmp	.label_45
.label_44:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rdi, rax
.label_45:
	pop	rbx
	mov	rbp, rbp
	pop	r14
	pop	r15
	jmp	xstrdup
.label_47:
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.53
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rdi, rax
	call	xstrdup
	mov	r14, rax
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	test	bl, bl
	je	.label_46
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.55
	jmp	.label_43
.label_46:
	mov	esi, OFFSET FLAT:.str.56
.label_43:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.54
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	xasprintf
	lea	rdi, [rdi]
	mov	r15, rax
	mov	rbp, rbp
	mov	rdi, r14
	call	free
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.54
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rsp, rsp
	mov	rdx, rcx
	call	xasprintf
	mov	r14, rax
	mov	rdi, r15
	mov	rbp, rbp
	call	free
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.58
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.54
	nop	
	xor	eax, eax
	mov	rsi, r14
	mov	rdx, rcx
	mov	rsp, rsp
	call	xasprintf
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	rdi, r14
	lea	rsi, [rsi]
	call	free
	mov	rax, rbx
	pop	rbx
	pop	r14
	mov	rsp, rsp
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402bf0

	.globl print_it
	.type print_it, @function
print_it:
	nop	
	push	rbp
	nop	
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x10], r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x18], rdx
	nop	
	mov	dword ptr [rsp + 0x24], esi
	mov	r13, rdi
	mov	rsp, rsp
	call	strlen
	lea	rsi, [rsi]
	lea	rdi, [rax + 3]
	call	xmalloc
	mov	qword ptr [rsp + 0x28], rax
	mov	al, byte ptr [r13]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xc], 0
	mov	rbp, rbp
	jmp	.label_60
	nop	word ptr [rax + rax]
.label_57:
	mov	rsp, rsp
	mov	al, byte ptr [r13 + 1]
	lea	rdi, [rdi]
	inc	r13
.label_60:
	mov	rbp, rbp
	test	al, al
	je	.label_63
	movsx	ecx, al
	cmp	ecx, 0x5c
	je	.label_64
	cmp	ecx, 0x25
	lea	rsi, [rsi]
	jne	.label_66
	lea	r15, [r13 + 1]
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:printf_flags
	mov	rdi, r15
	call	strspn
	lea	rdi, [rdi]
	lea	rbx, [r13 + rax]
	lea	rdi, [r13 + rax + 1]
	mov	esi, OFFSET FLAT:digits
	lea	rsi, [rsi]
	call	strspn
	lea	r12, [rax + rbx + 1]
	movzx	ecx, byte ptr [rax + rbx + 1]
	cmp	ecx, 0x2e
	jne	.label_54
	mov	rbp, rbp
	lea	rdi, [r12 + 1]
	mov	esi, OFFSET FLAT:digits
	call	strspn
	mov	cl, byte ptr [rax + r12 + 1]
	lea	r12, [rax + r12 + 1]
.label_54:
	mov	r14, r12
	nop	
	sub	r14, r15
	mov	rbp, rbp
	movsx	ebp, cl
	lea	rdi, [rdi]
	lea	rbx, [r14 + 1]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, r13
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	memcpy
	cmp	ebp, 0x25
	mov	r13, r12
	mov	rsp, rsp
	je	.label_50
	test	ebp, ebp
	lea	rdi, [rdi]
	jne	.label_52
	lea	rdi, [rdi]
	lea	r13, [r12 - 1]
.label_50:
	mov	rbp, rbp
	cmp	r12, r15
	nop	
	jne	.label_58
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x28]
	nop	
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rsp, rsp
	jae	.label_59
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0x25
	jmp	.label_57
	nop	word ptr cs:[rax + rax]
.label_64:
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + interpret_backslash_escapes]]
	and	al, 1
	lea	rdi, [rdi]
	je	.label_65
	mov	bl, byte ptr [r13 + 1]
	lea	rsi, [rsi]
	movsx	r15d, bl
	mov	rbp, rbp
	mov	al, r15b
	mov	rsp, rsp
	and	al, 0xf8
	mov	rsp, rsp
	movzx	eax, al
	nop	
	cmp	eax, 0x30
	jne	.label_69
	add	r15d, -0x30
	lea	rsi, [rsi]
	movsx	eax, byte ptr [r13 + 2]
	mov	ecx, eax
	and	ecx, 0xf8
	cmp	ecx, 0x30
	nop	
	jne	.label_74
	nop	
	lea	r15d, [rax + r15*8 - 0x30]
	mov	rbp, rbp
	movsx	eax, byte ptr [r13 + 3]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rbp, rbp
	and	ecx, 0xf8
	cmp	ecx, 0x30
	lea	rdi, [rdi]
	jne	.label_79
	lea	r15d, [rax + r15*8 - 0x30]
	add	r13, 4
	jmp	.label_73
	nop	
.label_66:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdi + 0x30]
	mov	rsp, rsp
	jae	.label_48
	mov	rbp, rbp
	lea	rdx, [rcx + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
	jmp	.label_57
.label_52:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	mov	rsi, rbx
	nop	
	mov	edx, ebp
	mov	ecx, dword ptr [rsp + 0x24]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	r9, qword ptr [rsp + 0x10]
	call	qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	ecx, dword ptr [rsp + 0xc]
	and	cl, 1
	or	cl, al
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xc], ecx
	lea	rsi, [rsi]
	mov	r13, r12
	jmp	.label_57
.label_69:
	nop	
	test	bl, bl
	mov	rsp, rsp
	je	.label_67
	mov	rbp, rbp
	movzx	eax, bl
	cmp	eax, 0x78
	jne	.label_68
	movzx	ebp, byte ptr [r13 + 2]
	lea	rsi, [rsi]
	call	__ctype_b_loc
	mov	rbp, rbp
	mov	rcx, qword ptr [rax]
	test	byte ptr [rcx + rbp*2 + 1], 0x10
	mov	rbp, rbp
	jne	.label_72
.label_68:
	mov	rsp, rsp
	lea	eax, [r15 - 0x5c]
	lea	rdi, [rdi]
	cmp	eax, 0xa
	jbe	.label_75
	lea	eax, [r15 - 0x6e]
	lea	rdi, [rdi]
	cmp	eax, 8
	ja	.label_77
	jmp	qword ptr [word ptr [+ (rax * 8) + label_80]]
.label_1174:
	lea	rsi, [rsi]
	mov	bl, 0xa
	jmp	.label_49
.label_74:
	nop	
	add	r13, 2
	jmp	.label_73
.label_67:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.63
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rcx
	call	error
.label_65:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rdi, [rdi]
	jae	.label_56
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x5c
	lea	rdi, [rdi]
	jmp	.label_57
.label_79:
	lea	rdi, [rdi]
	add	r13, 3
.label_73:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rsp, rsp
	jae	.label_62
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], r15b
	lea	rsi, [rsi]
	dec	r13
	jmp	.label_57
.label_75:
	jmp	qword ptr [word ptr [+ (rax * 8) + label_70]]
.label_1015:
	lea	rsi, [rsi]
	mov	bl, 7
	jmp	.label_49
.label_48:
	mov	rsp, rsp
	movzx	esi, al
	nop	
	call	__overflow
	lea	rsi, [rsi]
	jmp	.label_57
.label_72:
	movsx	eax, bpl
	mov	dl, al
	mov	rsp, rsp
	add	dl, 0x9f
	lea	rsi, [rsi]
	movzx	edx, dl
	nop	
	cmp	edx, 5
	ja	.label_76
	add	eax, -0x57
	mov	rsp, rsp
	jmp	.label_53
.label_59:
	mov	esi, 0x25
	lea	rdi, [rdi]
	call	__overflow
	jmp	.label_57
.label_56:
	mov	esi, 0x5c
	call	__overflow
	lea	rsi, [rsi]
	jmp	.label_57
.label_76:
	mov	rsp, rsp
	add	bpl, 0xbf
	mov	rbp, rbp
	movzx	edx, bpl
	cmp	edx, 5
	lea	rdi, [rdi]
	ja	.label_83
	add	eax, -0x37
	lea	rsi, [rsi]
	jmp	.label_53
.label_77:
	mov	rsp, rsp
	cmp	r15d, 0x22
	lea	rsi, [rsi]
	je	.label_49
.label_1014:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.64
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	ecx, r15d
	mov	rsp, rsp
	call	error
	mov	rsp, rsp
	jmp	.label_49
.label_62:
	movzx	esi, r15b
	call	__overflow
	dec	r13
	jmp	.label_57
.label_1016:
	mov	bl, 8
	jmp	.label_49
.label_1017:
	mov	bl, 0x1b
	jmp	.label_49
.label_1018:
	mov	rbp, rbp
	mov	bl, 0xc
	jmp	.label_49
.label_1175:
	lea	rdi, [rdi]
	mov	bl, 0xd
	jmp	.label_49
.label_1176:
	mov	bl, 9
	nop	
	jmp	.label_49
.label_1177:
	mov	bl, 0xb
.label_49:
	inc	r13
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_71
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], bl
	jmp	.label_57
.label_83:
	mov	rbp, rbp
	add	eax, -0x30
.label_53:
	mov	rsp, rsp
	movzx	edx, byte ptr [r13 + 3]
	lea	rdi, [rdi]
	test	byte ptr [rcx + rdx*2 + 1], 0x10
	jne	.label_78
	add	r13, 2
	jmp	.label_81
.label_78:
	lea	rsi, [rsi]
	movsx	ecx, dl
	mov	rbp, rbp
	shl	eax, 4
	mov	rsp, rsp
	mov	bl, cl
	mov	rbp, rbp
	add	bl, 0x9f
	movzx	esi, bl
	lea	rsi, [rsi]
	cmp	esi, 5
	ja	.label_82
	add	ecx, -0x57
	mov	rsp, rsp
	jmp	.label_55
.label_82:
	lea	rdi, [rdi]
	add	dl, 0xbf
	lea	rdi, [rdi]
	movzx	edx, dl
	cmp	edx, 5
	ja	.label_51
	add	ecx, -0x37
	jmp	.label_55
.label_71:
	mov	rsp, rsp
	movzx	esi, bl
	nop	
	call	__overflow
	mov	rsp, rsp
	jmp	.label_57
.label_51:
	add	ecx, -0x30
.label_55:
	add	r13, 3
	add	eax, ecx
.label_81:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	lea	rdi, [rdi]
	jae	.label_61
	mov	rbp, rbp
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
	jmp	.label_57
.label_61:
	nop	
	movzx	esi, al
	call	__overflow
	lea	rsi, [rsi]
	jmp	.label_57
.label_63:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + trailing_delim]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0xc]
	and	al, 1
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_58:
	mov	al, byte ptr [r12]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	mov	byte ptr [rbp + r14 + 1], al
	mov	rbp, rbp
	mov	byte ptr [rbp + r14 + 2], 0
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.62
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	mov	rdi, rbp
	call	quote
	mov	rcx, rax
	nop	
	mov	edi, 1
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	error
	.section	.text
	.align	16
	#Procedure 0x403210

	.globl print_statfs
	.type print_statfs, @function
print_statfs:
	push	r15
	mov	rbp, rbp
	push	r14
	push	rbx
	mov	rbp, rbp
	mov	r14, rsi
	mov	rbx, rdi
	lea	eax, [rdx - 0x61]
	mov	rbp, rbp
	cmp	eax, 0x13
	mov	rsp, rsp
	ja	.label_90
	lea	rdi, [rdi]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_99]]
.label_1183:
	mov	rsp, rsp
	mov	rdx, qword ptr [r9 + 0x20]
	nop	
	jmp	.label_103
.label_90:
	cmp	edx, 0x53
	mov	rsp, rsp
	je	.label_105
	cmp	edx, 0x54
	mov	rsp, rsp
	jne	.label_107
	mov	r15d, OFFSET FLAT:.str.70
	mov	r8, qword ptr [r9]
	cmp	r8, 0x2fc12fc0
	mov	rbp, rbp
	jg	.label_111
	cmp	r8, 0xef50
	lea	rdi, [rdi]
	jg	.label_146
	lea	rdi, [rdi]
	cmp	r8, 0x482a
	jle	.label_122
	mov	rsp, rsp
	cmp	r8, 0x7274
	lea	rdi, [rdi]
	jg	.label_128
	lea	rsi, [rsi]
	cmp	r8, 0x517a
	nop	
	jg	.label_135
	cmp	r8, 0x4d43
	jg	.label_141
	cmp	r8, 0x482b
	mov	rsp, rsp
	je	.label_145
	lea	rdi, [rdi]
	cmp	r8, 0x4858
	nop	
	jne	.label_84
	mov	r15d, OFFSET FLAT:.str.117
	nop	
	jmp	.label_88
.label_107:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_159
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x28], rcx
	nop	
	mov	byte ptr [rax], 0x3f
	jmp	.label_144
.label_1184:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r9 + 0x10]
	jmp	.label_103
.label_1185:
	mov	rdx, qword ptr [r9 + 0x28]
	jmp	.label_140
.label_1186:
	nop	
	mov	rdx, qword ptr [r9 + 0x30]
	jmp	.label_103
.label_1187:
	mov	rbp, rbp
	mov	rdx, qword ptr [r9 + 0x18]
.label_103:
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r14
	call	out_int
	mov	rbp, rbp
	jmp	.label_144
.label_1188:
	lea	rsi, [rsi]
	mov	edx, dword ptr [r9 + 0x38]
	lea	rsi, [rsi]
	mov	eax, dword ptr [r9 + 0x3c]
	shl	rdx, 0x20
	or	rdx, rax
	jmp	.label_176
.label_1189:
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r9 + 0x40]
	jmp	.label_140
.label_1190:
	mov	rdi, rbx
	nop	
	mov	rsi, r14
	mov	rdx, r8
	call	out_string
	jmp	.label_144
.label_1192:
	mov	rdx, qword ptr [r9]
.label_176:
	mov	rdi, rbx
	nop	
	mov	rsi, r14
	call	out_uint_x
	jmp	.label_144
.label_105:
	mov	rdx, qword ptr [r9 + 0x48]
	mov	rbp, rbp
	test	rdx, rdx
	mov	rsp, rsp
	jne	.label_140
.label_1191:
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r9 + 8]
.label_140:
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r14
	lea	rdi, [rdi]
	call	out_uint
	mov	rbp, rbp
	jmp	.label_144
.label_111:
	mov	rbp, rbp
	cmp	r8, 0x65735542
	jle	.label_202
	mov	eax, 0x858458f5
	lea	rdi, [rdi]
	cmp	r8, rax
	mov	rsp, rsp
	jle	.label_205
	lea	rdi, [rdi]
	mov	eax, 0xc97e8167
	cmp	r8, rax
	jg	.label_210
	mov	rbp, rbp
	mov	eax, 0xaad7aae9
	cmp	r8, rax
	lea	rdi, [rdi]
	jg	.label_89
	mov	eax, 0x958458f5
	mov	rsp, rsp
	cmp	r8, rax
	jg	.label_93
	nop	
	mov	eax, 0x858458f6
	cmp	r8, rax
	je	.label_164
	mov	rbp, rbp
	mov	eax, 0x9123683e
	cmp	r8, rax
	lea	rdi, [rdi]
	jne	.label_84
	mov	r15d, OFFSET FLAT:.str.84
	nop	
	jmp	.label_88
.label_146:
	lea	rdi, [rdi]
	cmp	r8, 0x13111a7
	jg	.label_110
	lea	rdi, [rdi]
	cmp	r8, 0x1021993
	jg	.label_115
	lea	rdi, [rdi]
	cmp	r8, 0x27e0ea
	mov	rsp, rsp
	jg	.label_120
	lea	rsi, [rsi]
	cmp	r8, 0xf15e
	lea	rdi, [rdi]
	jg	.label_126
	cmp	r8, 0xef51
	lea	rdi, [rdi]
	je	.label_133
	lea	rdi, [rdi]
	cmp	r8, 0xef53
	lea	rdi, [rdi]
	jne	.label_84
	mov	r15d, OFFSET FLAT:.str.105
	jmp	.label_88
.label_202:
	nop	
	cmp	r8, 0x541900ff
	jg	.label_148
	cmp	r8, 0x47504652
	jle	.label_152
	mov	rbp, rbp
	cmp	r8, 0x5346414e
	mov	rsp, rsp
	jg	.label_157
	cmp	r8, 0x52654972
	lea	rsi, [rsi]
	jg	.label_211
	cmp	r8, 0x47504653
	lea	rsi, [rsi]
	je	.label_181
	lea	rsi, [rsi]
	cmp	r8, 0x50495045
	mov	rbp, rbp
	jne	.label_84
	mov	r15d, OFFSET FLAT:.str.149
	mov	rsp, rsp
	jmp	.label_88
.label_122:
	mov	rbp, rbp
	cmp	r8, 0x1cd0
	lea	rsi, [rsi]
	jle	.label_172
	lea	rsi, [rsi]
	cmp	r8, 0x3fff
	nop	
	jg	.label_174
	lea	rdi, [rdi]
	cmp	r8, 0x2477
	jg	.label_178
	cmp	r8, 0x1cd1
	lea	rdi, [rdi]
	je	.label_182
	mov	rsp, rsp
	cmp	r8, 0x2468
	mov	rbp, rbp
	jne	.label_84
	nop	
	mov	r15d, OFFSET FLAT:.str.134
	mov	rsp, rsp
	jmp	.label_88
.label_205:
	nop	
	cmp	r8, 0x73636672
	jle	.label_192
	cmp	r8, 0x7461636e
	lea	rdi, [rdi]
	jg	.label_130
	cmp	r8, 0x73727278
	mov	rbp, rbp
	jg	.label_129
	lea	rsi, [rsi]
	cmp	r8, 0x73636673
	je	.label_160
	lea	rsi, [rsi]
	cmp	r8, 0x73717368
	mov	rsp, rsp
	jne	.label_84
	lea	rdi, [rdi]
	mov	r15d, OFFSET FLAT:.str.168
	nop	
	jmp	.label_88
.label_148:
	cmp	r8, 0x6165676b
	mov	rbp, rbp
	jle	.label_87
	cmp	r8, 0x62656571
	lea	rsi, [rsi]
	jg	.label_91
	nop	
	cmp	r8, 0x62646575
	jg	.label_96
	mov	rsp, rsp
	cmp	r8, 0x6165676c
	nop	
	je	.label_101
	lea	rdi, [rdi]
	cmp	r8, 0x61756673
	nop	
	jne	.label_84
	mov	r15d, OFFSET FLAT:.str.76
	jmp	.label_88
.label_110:
	cmp	r8, 0x15013345
	jg	.label_106
	cmp	r8, 0xbad1de9
	jle	.label_127
	cmp	r8, 0x11307853
	jg	.label_119
	cmp	r8, 0xbad1dea
	lea	rdi, [rdi]
	je	.label_123
	lea	rdi, [rdi]
	cmp	r8, 0xbd00bd0
	mov	rbp, rbp
	jne	.label_84
	mov	rbp, rbp
	mov	r15d, OFFSET FLAT:.str.130
	jmp	.label_88
.label_159:
	mov	esi, 0x3f
	mov	rsp, rsp
	call	__overflow
	jmp	.label_144
.label_128:
	lea	rsi, [rsi]
	cmp	r8, 0x9fa0
	jg	.label_188
	lea	rsi, [rsi]
	cmp	r8, 0x965f
	mov	rbp, rbp
	jg	.label_151
	nop	
	cmp	r8, 0x7275
	lea	rsi, [rsi]
	je	.label_158
	cmp	r8, 0x72b6
	jne	.label_84
	mov	r15d, OFFSET FLAT:.str.126
	jmp	.label_88
.label_210:
	lea	rdi, [rdi]
	mov	eax, 0xf97cff8b
	nop	
	cmp	r8, rax
	nop	
	jg	.label_165
	lea	rsi, [rsi]
	mov	eax, 0xde5e81e3
	lea	rdi, [rdi]
	cmp	r8, rax
	lea	rsi, [rsi]
	jg	.label_168
	nop	
	mov	eax, 0xc97e8168
	cmp	r8, rax
	je	.label_173
	mov	rbp, rbp
	mov	eax, 0xcafe4a11
	mov	rbp, rbp
	cmp	r8, rax
	mov	rsp, rsp
	jne	.label_84
	lea	rdi, [rdi]
	mov	r15d, OFFSET FLAT:.str.82
	jmp	.label_88
.label_115:
	lea	rsi, [rsi]
	cmp	r8, 0x12fd16c
	jg	.label_183
	cmp	r8, 0x1021994
	lea	rsi, [rsi]
	je	.label_187
	lea	rsi, [rsi]
	cmp	r8, 0x1021997
	je	.label_190
	mov	rsp, rsp
	cmp	r8, 0x1161970
	lea	rdi, [rdi]
	jne	.label_84
	mov	r15d, OFFSET FLAT:.str.113
	mov	rsp, rsp
	jmp	.label_88
.label_152:
	mov	rsp, rsp
	cmp	r8, 0x42494e4c
	lea	rsi, [rsi]
	jle	.label_200
	cmp	r8, 0x453dcd27
	nop	
	jg	.label_203
	nop	
	cmp	r8, 0x42494e4d
	mov	rsp, rsp
	je	.label_206
	nop	
	cmp	r8, 0x43415d53
	jne	.label_84
	lea	rdi, [rdi]
	mov	r15d, OFFSET FLAT:.str.163
	mov	rbp, rbp
	jmp	.label_88
.label_172:
	cmp	r8, 0x1372
	jle	.label_92
	nop	
	cmp	r8, 0x137e
	nop	
	jg	.label_94
	lea	rsi, [rsi]
	cmp	r8, 0x1373
	je	.label_100
	cmp	r8, 0x137d
	jne	.label_84
	mov	rbp, rbp
	mov	r15d, OFFSET FLAT:.str.104
	jmp	.label_88
.label_192:
	mov	rbp, rbp
	cmp	r8, 0x68191121
	lea	rdi, [rdi]
	jle	.label_147
	mov	rsp, rsp
	cmp	r8, 0x6e667363
	jg	.label_117
	cmp	r8, 0x68191122
	je	.label_121
	cmp	r8, 0x6b414653
	jne	.label_84
	mov	r15d, OFFSET FLAT:.str.128
	jmp	.label_88
.label_87:
	cmp	r8, 0x58465341
	lea	rdi, [rdi]
	jle	.label_134
	cmp	r8, 0x5dca2df4
	jg	.label_138
	cmp	r8, 0x58465342
	je	.label_143
	cmp	r8, 0x5a3c69f0
	je	.label_88
	jmp	.label_84
.label_106:
	mov	rbp, rbp
	cmp	r8, 0x1badfacd
	mov	rsp, rsp
	jle	.label_153
	cmp	r8, 0x28cd3d44
	jg	.label_197
	cmp	r8, 0x1badface
	je	.label_162
	cmp	r8, 0x24051905
	jne	.label_84
	nop	
	mov	r15d, OFFSET FLAT:.str.174
	jmp	.label_88
.label_135:
	nop	
	cmp	r8, 0x5df4
	mov	rsp, rsp
	jg	.label_167
	cmp	r8, 0x517b
	je	.label_170
	nop	
	cmp	r8, 0x564c
	jne	.label_84
	mov	r15d, OFFSET FLAT:.str.139
	lea	rdi, [rdi]
	jmp	.label_88
.label_89:
	mov	rsp, rsp
	mov	eax, 0xbacbacbb
	cmp	r8, rax
	lea	rdi, [rdi]
	jg	.label_177
	nop	
	mov	eax, 0xaad7aaea
	lea	rdi, [rdi]
	cmp	r8, rax
	mov	rsp, rsp
	je	.label_184
	mov	eax, 0xabba1974
	cmp	r8, rax
	lea	rdi, [rdi]
	jne	.label_84
	nop	
	mov	r15d, OFFSET FLAT:.str.183
	lea	rdi, [rdi]
	jmp	.label_88
.label_120:
	cmp	r8, 0xc0ffed
	lea	rsi, [rsi]
	jg	.label_193
	mov	rsp, rsp
	cmp	r8, 0x27e0eb
	je	.label_196
	lea	rsi, [rsi]
	cmp	r8, 0x414a53
	jne	.label_84
	lea	rdi, [rdi]
	mov	r15d, OFFSET FLAT:.str.101
	mov	rsp, rsp
	jmp	.label_88
.label_157:
	mov	rbp, rbp
	cmp	r8, 0x5346544d
	lea	rsi, [rsi]
	jg	.label_207
	cmp	r8, 0x5346414f
	mov	rsp, rsp
	je	.label_213
	mov	rsp, rsp
	cmp	r8, 0x53464846
	jne	.label_84
	mov	r15d, OFFSET FLAT:.str.182
	lea	rdi, [rdi]
	jmp	.label_88
.label_174:
	cmp	r8, 0x4005
	jg	.label_97
	cmp	r8, 0x4000
	je	.label_104
	lea	rsi, [rsi]
	cmp	r8, 0x4004
	lea	rdi, [rdi]
	jne	.label_84
.label_104:
	mov	r15d, OFFSET FLAT:.str.124
	jmp	.label_88
.label_130:
	cmp	r8, 0x794c762f
	jg	.label_114
	lea	rsi, [rsi]
	cmp	r8, 0x7461636f
	je	.label_116
	mov	rbp, rbp
	cmp	r8, 0x74726163
	mov	rbp, rbp
	jne	.label_84
	mov	r15d, OFFSET FLAT:.str.173
	jmp	.label_88
.label_91:
	nop	
	cmp	r8, 0x6462671f
	mov	rsp, rsp
	jg	.label_132
	cmp	r8, 0x62656572
	mov	rsp, rsp
	je	.label_137
	cmp	r8, 0x63677270
	jne	.label_84
	mov	r15d, OFFSET FLAT:.str.88
	lea	rsi, [rsi]
	jmp	.label_88
.label_188:
	cmp	r8, 0xadf4
	jg	.label_150
	mov	rbp, rbp
	cmp	r8, 0x9fa1
	nop	
	je	.label_155
	cmp	r8, 0x9fa2
	nop	
	jne	.label_84
	mov	r15d, OFFSET FLAT:.str.177
	jmp	.label_88
.label_165:
	mov	eax, 0xfe534d41
	mov	rbp, rbp
	cmp	r8, rax
	lea	rsi, [rsi]
	jg	.label_108
	mov	eax, 0xf97cff8c
	cmp	r8, rax
	je	.label_166
	mov	eax, 0xf995e849
	mov	rsp, rsp
	cmp	r8, rax
	lea	rsi, [rsi]
	jne	.label_84
	lea	rsi, [rsi]
	mov	r15d, OFFSET FLAT:.str.119
	jmp	.label_88
.label_183:
	lea	rax, [r8 - 0x12ff7b4]
	cmp	rax, 3
	lea	rdi, [rdi]
	ja	.label_209
	jmp	qword ptr [word ptr [+ (rax * 8) + label_179]]
.label_1055:
	mov	r15d, OFFSET FLAT:.str.184
	jmp	.label_88
.label_127:
	lea	rdi, [rdi]
	cmp	r8, 0x13111a8
	je	.label_185
	lea	rdi, [rdi]
	cmp	r8, 0x7655821
	je	.label_189
	cmp	r8, 0x9041934
	mov	rbp, rbp
	jne	.label_84
	lea	rsi, [rsi]
	mov	r15d, OFFSET FLAT:.str.75
	jmp	.label_88
.label_200:
	cmp	r8, 0x2fc12fc1
	je	.label_195
	cmp	r8, 0x3153464a
	je	.label_199
	nop	
	cmp	r8, 0x42465331
	mov	rbp, rbp
	jne	.label_84
	mov	rbp, rbp
	mov	r15d, OFFSET FLAT:.str.79
	jmp	.label_88
.label_92:
	mov	rbp, rbp
	cmp	r8, 0x2f
	je	.label_208
	lea	rdi, [rdi]
	cmp	r8, 0x187
	je	.label_212
	cmp	r8, 0x7c0
	jne	.label_84
	mov	r15d, OFFSET FLAT:.str.125
	jmp	.label_88
.label_147:
	mov	rsp, rsp
	cmp	r8, 0x65735543
	je	.label_95
	mov	rbp, rbp
	cmp	r8, 0x65735546
	je	.label_102
	cmp	r8, 0x67596969
	lea	rdi, [rdi]
	jne	.label_84
	mov	r15d, OFFSET FLAT:.str.12_0
	jmp	.label_88
.label_134:
	mov	rbp, rbp
	cmp	r8, 0x54190100
	mov	rbp, rbp
	je	.label_113
	cmp	r8, 0x565a4653
	je	.label_118
	cmp	r8, 0x58295829
	jne	.label_84
	mov	rsp, rsp
	mov	r15d, OFFSET FLAT:.str.188
	jmp	.label_88
.label_153:
	lea	rsi, [rsi]
	cmp	r8, 0x15013346
	nop	
	je	.label_131
	mov	rbp, rbp
	cmp	r8, 0x19800202
	je	.label_136
	cmp	r8, 0x19830326
	nop	
	jne	.label_84
	mov	r15d, OFFSET FLAT:.str.109
	jmp	.label_88
.label_141:
	cmp	r8, 0x4d44
	je	.label_149
	cmp	r8, 0x4d5a
	lea	rdi, [rdi]
	jne	.label_84
	mov	rsp, rsp
	mov	r15d, OFFSET FLAT:.str.136
	jmp	.label_88
.label_93:
	mov	eax, 0x958458f6
	cmp	r8, rax
	je	.label_161
	mov	rbp, rbp
	mov	eax, 0xa501fcf5
	nop	
	cmp	r8, rax
	jne	.label_84
	lea	rdi, [rdi]
	mov	r15d, OFFSET FLAT:.str.180
	jmp	.label_88
.label_126:
	cmp	r8, 0xf15f
	je	.label_169
	cmp	r8, 0x11954
	jne	.label_84
.label_113:
	mov	rsp, rsp
	mov	r15d, OFFSET FLAT:.str.176
	jmp	.label_88
.label_211:
	lea	rdi, [rdi]
	cmp	r8, 0x52654973
	je	.label_175
	mov	rsp, rsp
	cmp	r8, 0x5346314d
	jne	.label_84
	mov	r15d, OFFSET FLAT:.str.131
	nop	
	jmp	.label_88
.label_178:
	cmp	r8, 0x2478
	je	.label_186
	mov	rbp, rbp
	cmp	r8, 0x3434
	lea	rsi, [rsi]
	jne	.label_84
	mov	rsp, rsp
	mov	r15d, OFFSET FLAT:.str.142
	jmp	.label_88
.label_129:
	cmp	r8, 0x73727279
	lea	rdi, [rdi]
	je	.label_194
	cmp	r8, 0x73757245
	lea	rdi, [rdi]
	jne	.label_84
	nop	
	mov	r15d, OFFSET FLAT:.str.90
	jmp	.label_88
.label_96:
	cmp	r8, 0x62646576
	je	.label_204
	nop	
	cmp	r8, 0x62656570
	mov	rbp, rbp
	jne	.label_84
	mov	r15d, OFFSET FLAT:.str.92
	jmp	.label_88
.label_119:
	nop	
	cmp	r8, 0x11307854
	je	.label_86
	cmp	r8, 0x13661366
	jne	.label_84
	lea	rdi, [rdi]
	mov	r15d, OFFSET FLAT:.str.78
	jmp	.label_88
.label_151:
	cmp	r8, 0x9660
	lea	rdi, [rdi]
	je	.label_98
	lea	rsi, [rsi]
	cmp	r8, 0x9fa0
	jne	.label_84
	lea	rdi, [rdi]
	mov	r15d, OFFSET FLAT:.str.6_0
	jmp	.label_88
.label_168:
	mov	eax, 0xde5e81e4
	lea	rsi, [rsi]
	cmp	r8, rax
	je	.label_109
	lea	rsi, [rsi]
	mov	eax, 0xf2f52010
	nop	
	cmp	r8, rax
	jne	.label_84
	mov	r15d, OFFSET FLAT:.str.107
	jmp	.label_88
.label_203:
	cmp	r8, 0x453dcd28
	mov	rbp, rbp
	je	.label_124
	cmp	r8, 0x45584653
	jne	.label_84
	mov	rbp, rbp
	mov	r15d, OFFSET FLAT:.str.102
	mov	rsp, rsp
	jmp	.label_88
.label_94:
	cmp	r8, 0x137f
	je	.label_139
	mov	rsp, rsp
	cmp	r8, 0x138f
	jne	.label_84
	mov	r15d, OFFSET FLAT:.str.133
	lea	rdi, [rdi]
	jmp	.label_88
.label_117:
	cmp	r8, 0x6e667364
	je	.label_154
	mov	rsp, rsp
	cmp	r8, 0x6e736673
	mov	rbp, rbp
	jne	.label_84
	mov	r15d, OFFSET FLAT:.str.143
	nop	
	jmp	.label_88
.label_138:
	cmp	r8, 0x5dca2df5
	mov	rbp, rbp
	je	.label_198
	cmp	r8, 0x61636673
	nop	
	jne	.label_84
	mov	rbp, rbp
	mov	r15d, OFFSET FLAT:.str.71
	nop	
	jmp	.label_88
.label_197:
	mov	rbp, rbp
	cmp	r8, 0x28cd3d45
	nop	
	je	.label_171
	nop	
	cmp	r8, 0x2bad1dea
	jne	.label_84
	lea	rdi, [rdi]
	mov	r15d, OFFSET FLAT:.str.123
	mov	rbp, rbp
	jmp	.label_88
.label_167:
	cmp	r8, 0x5df5
	je	.label_180
	mov	rsp, rsp
	cmp	r8, 0x6969
	nop	
	jne	.label_84
	lea	rsi, [rsi]
	mov	r15d, OFFSET FLAT:.str.140
	jmp	.label_88
.label_177:
	mov	rbp, rbp
	mov	eax, 0xbacbacbc
	mov	rbp, rbp
	cmp	r8, rax
	je	.label_191
	mov	eax, 0xbeefdead
	mov	rsp, rsp
	cmp	r8, rax
	mov	rsp, rsp
	jne	.label_84
	mov	r15d, OFFSET FLAT:.str.166
	mov	rsp, rsp
	jmp	.label_88
.label_193:
	lea	rdi, [rdi]
	cmp	r8, 0xc0ffee
	je	.label_201
	lea	rsi, [rsi]
	cmp	r8, 0xc36400
	lea	rsi, [rsi]
	jne	.label_84
	mov	rsp, rsp
	mov	r15d, OFFSET FLAT:.str.86
	mov	rbp, rbp
	jmp	.label_88
.label_207:
	lea	rsi, [rsi]
	cmp	r8, 0x5346544e
	je	.label_85
	cmp	r8, 0x534f434b
	jne	.label_84
	lea	rdi, [rdi]
	mov	r15d, OFFSET FLAT:.str.167
	jmp	.label_88
.label_97:
	mov	rbp, rbp
	cmp	r8, 0x4006
	mov	rbp, rbp
	je	.label_163
	nop	
	cmp	r8, 0x4244
	jne	.label_84
	lea	rsi, [rsi]
	mov	r15d, OFFSET FLAT:.str.115
	lea	rdi, [rdi]
	jmp	.label_88
.label_114:
	cmp	r8, 0x794c7630
	mov	rsp, rsp
	je	.label_112
	lea	rdi, [rdi]
	cmp	r8, 0x7c7c6673
	nop	
	jne	.label_84
	nop	
	mov	r15d, OFFSET FLAT:.str.150
	lea	rsi, [rsi]
	jmp	.label_88
.label_132:
	lea	rdi, [rdi]
	cmp	r8, 0x64626720
	je	.label_125
	cmp	r8, 0x64646178
	jne	.label_84
	mov	rbp, rbp
	mov	r15d, OFFSET FLAT:.str.95
	lea	rsi, [rsi]
	jmp	.label_88
.label_150:
	lea	rdi, [rdi]
	cmp	r8, 0xadf5
	je	.label_142
	lea	rdi, [rdi]
	cmp	r8, 0xadff
	jne	.label_84
	mov	r15d, OFFSET FLAT:.str.73
	jmp	.label_88
.label_108:
	mov	eax, 0xfe534d42
	lea	rsi, [rsi]
	cmp	r8, rax
	je	.label_156
	mov	rbp, rbp
	mov	eax, 0xff534d42
	cmp	r8, rax
	lea	rdi, [rdi]
	jne	.label_84
	mov	r15d, OFFSET FLAT:.str.19_0
	mov	rbp, rbp
	jmp	.label_88
.label_187:
	lea	rsi, [rsi]
	mov	r15d, OFFSET FLAT:.str.172
	jmp	.label_88
.label_190:
	mov	rsp, rsp
	mov	r15d, OFFSET FLAT:.str.178
	jmp	.label_88
.label_145:
	mov	r15d, OFFSET FLAT:.str.116
	jmp	.label_88
.label_164:
	mov	r15d, OFFSET FLAT:.str.155
	nop	
	jmp	.label_88
.label_133:
	mov	r15d, OFFSET FLAT:.str.106
	jmp	.label_88
.label_181:
	mov	r15d, OFFSET FLAT:.str.114
	mov	rbp, rbp
	jmp	.label_88
.label_182:
	mov	r15d, OFFSET FLAT:.str.9_0
	lea	rsi, [rsi]
	jmp	.label_88
.label_160:
	mov	rbp, rbp
	mov	r15d, OFFSET FLAT:.str.161
	jmp	.label_88
.label_101:
	mov	r15d, OFFSET FLAT:.str.152
	jmp	.label_88
.label_123:
	mov	rbp, rbp
	mov	r15d, OFFSET FLAT:.str.112
	mov	rbp, rbp
	jmp	.label_88
.label_158:
	mov	r15d, OFFSET FLAT:.str.158
	jmp	.label_88
.label_173:
	mov	r15d, OFFSET FLAT:.str.129
	mov	rsp, rsp
	jmp	.label_88
.label_206:
	mov	rbp, rbp
	mov	r15d, OFFSET FLAT:.str.83
	jmp	.label_88
.label_100:
	lea	rdi, [rdi]
	mov	r15d, OFFSET FLAT:.str.14_0
	mov	rbp, rbp
	jmp	.label_88
.label_121:
	mov	rsp, rsp
	mov	r15d, OFFSET FLAT:.str.154
	lea	rdi, [rdi]
	jmp	.label_88
.label_143:
	lea	rsi, [rsi]
	mov	r15d, OFFSET FLAT:.str.185
	jmp	.label_88
.label_162:
	mov	rbp, rbp
	mov	r15d, OFFSET FLAT:.str.81
	mov	rbp, rbp
	jmp	.label_88
.label_170:
	mov	r15d, OFFSET FLAT:.str.164
	mov	rbp, rbp
	jmp	.label_88
.label_184:
	lea	rsi, [rsi]
	mov	r15d, OFFSET FLAT:.str.148
	jmp	.label_88
.label_196:
	mov	r15d, OFFSET FLAT:.str.87
	mov	rbp, rbp
	jmp	.label_88
.label_213:
	mov	rsp, rsp
	mov	r15d, OFFSET FLAT:.str.74
	jmp	.label_88
.label_116:
	mov	r15d, OFFSET FLAT:.str.146
	mov	rbp, rbp
	jmp	.label_88
.label_137:
	lea	rsi, [rsi]
	mov	r15d, OFFSET FLAT:.str.13_0
	jmp	.label_88
.label_155:
	mov	r15d, OFFSET FLAT:.str.145
	mov	rsp, rsp
	jmp	.label_88
.label_166:
	mov	r15d, OFFSET FLAT:.str.162
	mov	rbp, rbp
	jmp	.label_88
.label_185:
	lea	rsi, [rsi]
	mov	r15d, OFFSET FLAT:.str.122
	jmp	.label_88
.label_189:
	lea	rdi, [rdi]
	mov	r15d, OFFSET FLAT:.str.156
	jmp	.label_88
.label_195:
	mov	r15d, OFFSET FLAT:.str.187
	jmp	.label_88
.label_199:
	mov	r15d, OFFSET FLAT:.str.127
	jmp	.label_88
.label_208:
	mov	r15d, OFFSET FLAT:.str.153
	mov	rsp, rsp
	jmp	.label_88
.label_212:
	mov	r15d, OFFSET FLAT:.str.5_1
	jmp	.label_88
.label_95:
	mov	rsp, rsp
	mov	r15d, OFFSET FLAT:.str.10_0
	jmp	.label_88
.label_102:
	lea	rsi, [rsi]
	mov	r15d, OFFSET FLAT:.str.110
	jmp	.label_88
.label_118:
	lea	rdi, [rdi]
	mov	r15d, OFFSET FLAT:.str.181
	jmp	.label_88
.label_131:
	nop	
	mov	r15d, OFFSET FLAT:.str.175
	jmp	.label_88
.label_136:
	lea	rsi, [rsi]
	mov	r15d, OFFSET FLAT:.str.11_0
	jmp	.label_88
.label_149:
	lea	rsi, [rsi]
	mov	r15d, OFFSET FLAT:.str.138
	mov	rsp, rsp
	jmp	.label_88
.label_161:
	mov	r15d, OFFSET FLAT:.str.120
	nop	
	jmp	.label_88
.label_169:
	lea	rsi, [rsi]
	mov	r15d, OFFSET FLAT:.str.99
	jmp	.label_88
.label_175:
	mov	rbp, rbp
	mov	r15d, OFFSET FLAT:.str.157
	lea	rdi, [rdi]
	jmp	.label_88
.label_186:
	lea	rdi, [rdi]
	mov	r15d, OFFSET FLAT:.str.135
	jmp	.label_88
.label_194:
	mov	r15d, OFFSET FLAT:.str.85
	lea	rdi, [rdi]
	jmp	.label_88
.label_204:
	lea	rsi, [rsi]
	mov	r15d, OFFSET FLAT:.str.80
	mov	rsp, rsp
	jmp	.label_88
.label_86:
	mov	rbp, rbp
	mov	r15d, OFFSET FLAT:.str.121
	jmp	.label_88
.label_98:
	nop	
	mov	r15d, OFFSET FLAT:.str.124
	jmp	.label_88
.label_109:
	mov	r15d, OFFSET FLAT:.str.100
	jmp	.label_88
.label_124:
	mov	r15d, OFFSET FLAT:.str.94
	jmp	.label_88
.label_139:
	lea	rdi, [rdi]
	mov	r15d, OFFSET FLAT:.str.132
	jmp	.label_88
.label_154:
	lea	rdi, [rdi]
	mov	r15d, OFFSET FLAT:.str.141
	nop	
	jmp	.label_88
.label_198:
	mov	r15d, OFFSET FLAT:.str.160
	jmp	.label_88
.label_171:
	mov	r15d, OFFSET FLAT:.str.93
	lea	rsi, [rsi]
	jmp	.label_88
.label_180:
	mov	r15d, OFFSET FLAT:.str.103
	lea	rsi, [rsi]
	jmp	.label_88
.label_191:
	mov	r15d, OFFSET FLAT:.str.179
	jmp	.label_88
.label_201:
	nop	
	mov	r15d, OFFSET FLAT:.str.118
	jmp	.label_88
.label_85:
	mov	r15d, OFFSET FLAT:.str.144
	jmp	.label_88
.label_163:
	lea	rsi, [rsi]
	mov	r15d, OFFSET FLAT:.str.108
	lea	rdi, [rdi]
	jmp	.label_88
.label_112:
	lea	rdi, [rdi]
	mov	r15d, OFFSET FLAT:.str.147
	jmp	.label_88
.label_125:
	mov	rsp, rsp
	mov	r15d, OFFSET FLAT:.str.8_0
	jmp	.label_88
.label_142:
	lea	rsi, [rsi]
	mov	r15d, OFFSET FLAT:.str.72
	lea	rdi, [rdi]
	jmp	.label_88
.label_156:
	nop	
	mov	r15d, OFFSET FLAT:.str.165
	lea	rsi, [rsi]
	jmp	.label_88
.label_209:
	nop	
	cmp	r8, 0x12fd16d
	jne	.label_84
	mov	r15d, OFFSET FLAT:.str.186
	jmp	.label_88
.label_84:
	lea	rdi, [rdi]
	mov	r15d, OFFSET FLAT:human_fstype.buf
	mov	edi, OFFSET FLAT:human_fstype.buf
	lea	rdi, [rdi]
	mov	esi, 1
	lea	rsi, [rsi]
	mov	edx, 0x1d
	mov	ecx, OFFSET FLAT:.str.189
	xor	eax, eax
	mov	rbp, rbp
	call	__sprintf_chk
	jmp	.label_88
.label_1056:
	mov	r15d, OFFSET FLAT:.str.171
	lea	rsi, [rsi]
	jmp	.label_88
.label_1057:
	lea	rsi, [rsi]
	mov	r15d, OFFSET FLAT:.str.170
	lea	rdi, [rdi]
	jmp	.label_88
.label_1058:
	mov	rbp, rbp
	mov	r15d, OFFSET FLAT:.str.91
.label_88:
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r15
	call	out_string
.label_144:
	xor	eax, eax
	mov	rbp, rbp
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4044d0

	.globl out_string
	.type out_string, @function
out_string:
	push	rbp
	mov	rsp, rsp
	push	r15
	mov	rbp, rbp
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], rdx
	lea	rsi, [rsi]
	mov	r12, rsi
	mov	qword ptr [rsp + 8], rdi
	nop	
	lea	r14, [rdi + 1]
	nop	
	lea	rbp, [rdi + r12]
	cmp	r12, 2
	jl	.label_220
	movabs	r15, 0x200000000001
	lea	rdi, [rdi]
	mov	r13, r14
	nop	dword ptr [rax + rax]
.label_219:
	lea	rdi, [rdi]
	mov	bl, byte ptr [r13]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	mov	rsp, rsp
	call	memchr
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_226
	mov	eax, 1
	mov	cl, bl
	lea	rsi, [rsi]
	shl	rax, cl
	lea	rdi, [rdi]
	movzx	ecx, bl
	cmp	ecx, 0x3f
	lea	rsi, [rsi]
	ja	.label_216
	and	rax, r15
	je	.label_216
	mov	byte ptr [r14], bl
	lea	rsi, [rsi]
	inc	r14
.label_216:
	nop	
	inc	r13
	mov	rbp, rbp
	cmp	r13, rbp
	jb	.label_219
	mov	rsp, rsp
	jmp	.label_226
.label_220:
	mov	r13, r14
.label_226:
	lea	rsi, [rsi]
	cmp	r13, rbp
	mov	rsp, rsp
	jae	.label_214
	lea	rdi, [rdi]
	mov	rax, r12
	lea	rsi, [rsi]
	sub	rax, r13
	mov	rsi, qword ptr [rsp + 8]
	add	rax, rsi
	cmp	rax, 0x1f
	mov	rbp, rbp
	jbe	.label_223
	lea	rdi, [rdi]
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_223
	lea	rdx, [rsi + r12 - 1]
	nop	
	cmp	r14, rdx
	lea	rsi, [rsi]
	ja	.label_217
	nop	
	dec	r12
	nop	
	sub	r12, r13
	mov	rbp, rbp
	add	r12, rsi
	mov	rbp, rbp
	add	r12, r14
	mov	rbp, rbp
	cmp	r13, r12
	ja	.label_217
.label_223:
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x10]
	nop	
.label_225:
	lea	rsi, [rsi]
	mov	cl, byte ptr [r13]
	nop	
	inc	r13
	lea	rsi, [rsi]
	mov	byte ptr [rdi], cl
	mov	rbp, rbp
	inc	rdi
	cmp	rbp, r13
	lea	rdi, [rdi]
	jne	.label_225
.label_215:
	add	r14, rax
	lea	rdi, [rdi]
	jmp	.label_218
.label_214:
	mov	rdx, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 8]
.label_218:
	nop	
	mov	word ptr [r14], 0x73
	mov	rsp, rsp
	mov	edi, 1
	xor	eax, eax
	add	rsp, 0x18
	mov	rbp, rbp
	pop	rbx
	nop	
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	nop	
	pop	rbp
	nop	
	jmp	__printf_chk
.label_217:
	nop	
	lea	rdx, [rax - 0x20]
	mov	ecx, edx
	lea	rsi, [rsi]
	shr	ecx, 5
	mov	rsp, rsp
	inc	ecx
	xor	edi, edi
	lea	rsi, [rsi]
	test	cl, 3
	je	.label_221
	lea	rsi, [rsi]
	lea	ecx, [rax - 0x20]
	shr	ecx, 5
	inc	ecx
	and	ecx, 3
	neg	rcx
	mov	rbp, rbp
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_222:
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [r13 + rdi]
	movups	xmm1, xmmword ptr [r13 + rdi + 0x10]
	lea	rdi, [rdi]
	movups	xmmword ptr [r14 + rdi], xmm0
	movups	xmmword ptr [r14 + rdi + 0x10], xmm1
	add	rdi, 0x20
	mov	rsp, rsp
	inc	rcx
	jne	.label_222
.label_221:
	cmp	rdx, 0x60
	mov	rdx, qword ptr [rsp + 0x10]
	jb	.label_224
	mov	rcx, r8
	sub	rcx, rdi
	lea	rbx, [r13 + rdi + 0x70]
	lea	rdi, [r14 + rdi + 0x70]
	nop	dword ptr [rax + rax]
.label_227:
	movups	xmm0, xmmword ptr [rbx - 0x70]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [rbx - 0x60]
	mov	rsp, rsp
	movups	xmmword ptr [rdi - 0x70], xmm0
	movups	xmmword ptr [rdi - 0x60], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x50]
	movups	xmm1, xmmword ptr [rbx - 0x40]
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi - 0x50], xmm0
	movups	xmmword ptr [rdi - 0x40], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x30]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [rbx - 0x20]
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi - 0x30], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi - 0x20], xmm1
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rbx - 0x10]
	nop	
	movups	xmm1, xmmword ptr [rbx]
	movups	xmmword ptr [rdi - 0x10], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rdi], xmm1
	add	rbx, 0x80
	add	rdi, 0x80
	add	rcx, -0x80
	jne	.label_227
.label_224:
	cmp	rax, r8
	lea	rdi, [rdi]
	je	.label_215
	mov	rsp, rsp
	lea	rdi, [r14 + r8]
	add	r13, r8
	jmp	.label_225
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404770

	.globl out_uint_x
	.type out_uint_x, @function
out_uint_x:
	push	rbp
	nop	
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	nop	
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], rdx
	lea	rsi, [rsi]
	mov	r12, rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rdi
	nop	
	lea	r14, [rdi + 1]
	lea	rsi, [rsi]
	lea	rbp, [rdi + r12]
	nop	
	cmp	r12, 2
	mov	rsp, rsp
	jl	.label_239
	lea	rsi, [rsi]
	movabs	r15, 0x1200800000001
	mov	r13, r14
	nop	dword ptr [rax]
.label_231:
	mov	rbp, rbp
	mov	bl, byte ptr [r13]
	movsx	esi, bl
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	mov	rbp, rbp
	test	rax, rax
	je	.label_234
	nop	
	mov	eax, 1
	mov	rsp, rsp
	mov	cl, bl
	nop	
	shl	rax, cl
	nop	
	movzx	ecx, bl
	mov	rsp, rsp
	cmp	ecx, 0x3f
	ja	.label_235
	lea	rsi, [rsi]
	and	rax, r15
	je	.label_235
	mov	byte ptr [r14], bl
	inc	r14
.label_235:
	mov	rbp, rbp
	inc	r13
	lea	rdi, [rdi]
	cmp	r13, rbp
	mov	rsp, rsp
	jb	.label_231
	jmp	.label_234
.label_239:
	lea	rdi, [rdi]
	mov	r13, r14
.label_234:
	cmp	r13, rbp
	lea	rsi, [rsi]
	jae	.label_236
	mov	rax, r12
	mov	rsp, rsp
	sub	rax, r13
	mov	rsi, qword ptr [rsp + 8]
	mov	rsp, rsp
	add	rax, rsi
	nop	
	cmp	rax, 0x1f
	mov	rbp, rbp
	jbe	.label_232
	mov	r8, rax
	lea	rsi, [rsi]
	and	r8, 0xffffffffffffffe0
	je	.label_232
	lea	rdx, [rsi + r12 - 1]
	lea	rsi, [rsi]
	cmp	r14, rdx
	lea	rdi, [rdi]
	ja	.label_233
	lea	rsi, [rsi]
	dec	r12
	sub	r12, r13
	add	r12, rsi
	mov	rbp, rbp
	add	r12, r14
	lea	rdi, [rdi]
	cmp	r13, r12
	ja	.label_233
.label_232:
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_228:
	lea	rsi, [rsi]
	mov	cl, byte ptr [r13]
	lea	rdi, [rdi]
	inc	r13
	mov	byte ptr [rdi], cl
	lea	rsi, [rsi]
	inc	rdi
	cmp	rbp, r13
	nop	
	jne	.label_228
.label_240:
	add	r14, rax
	lea	rdi, [rdi]
	jmp	.label_241
.label_236:
	mov	rdx, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 8]
.label_241:
	lea	rdi, [rdi]
	mov	byte ptr [r14 + 2], 0
	mov	rsp, rsp
	mov	word ptr [r14], 0x786c
	lea	rdi, [rdi]
	mov	edi, 1
	xor	eax, eax
	nop	
	add	rsp, 0x18
	mov	rsp, rsp
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	jmp	__printf_chk
.label_233:
	lea	rdx, [rax - 0x20]
	mov	ecx, edx
	shr	ecx, 5
	inc	ecx
	lea	rsi, [rsi]
	xor	edi, edi
	test	cl, 3
	lea	rsi, [rsi]
	je	.label_230
	mov	rsp, rsp
	lea	ecx, [rax - 0x20]
	mov	rsp, rsp
	shr	ecx, 5
	lea	rdi, [rdi]
	inc	ecx
	and	ecx, 3
	lea	rsi, [rsi]
	neg	rcx
	xor	edi, edi
	nop	
.label_238:
	nop	
	movups	xmm0, xmmword ptr [r13 + rdi]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [r13 + rdi + 0x10]
	nop	
	movups	xmmword ptr [r14 + rdi], xmm0
	movups	xmmword ptr [r14 + rdi + 0x10], xmm1
	lea	rdi, [rdi]
	add	rdi, 0x20
	inc	rcx
	lea	rsi, [rsi]
	jne	.label_238
.label_230:
	cmp	rdx, 0x60
	mov	rdx, qword ptr [rsp + 0x10]
	jb	.label_237
	mov	rsp, rsp
	mov	rcx, r8
	lea	rdi, [rdi]
	sub	rcx, rdi
	lea	rbx, [r13 + rdi + 0x70]
	lea	rdi, [r14 + rdi + 0x70]
.label_229:
	movups	xmm0, xmmword ptr [rbx - 0x70]
	movups	xmm1, xmmword ptr [rbx - 0x60]
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi - 0x70], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi - 0x60], xmm1
	nop	
	movups	xmm0, xmmword ptr [rbx - 0x50]
	movups	xmm1, xmmword ptr [rbx - 0x40]
	movups	xmmword ptr [rdi - 0x50], xmm0
	movups	xmmword ptr [rdi - 0x40], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x30]
	movups	xmm1, xmmword ptr [rbx - 0x20]
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi - 0x30], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rdi - 0x20], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x10]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [rbx]
	nop	
	movups	xmmword ptr [rdi - 0x10], xmm0
	movups	xmmword ptr [rdi], xmm1
	mov	rbp, rbp
	add	rbx, 0x80
	nop	
	add	rdi, 0x80
	lea	rdi, [rdi]
	add	rcx, -0x80
	jne	.label_229
.label_237:
	cmp	rax, r8
	je	.label_240
	lea	rdi, [r14 + r8]
	add	r13, r8
	jmp	.label_228
	nop	
	.section	.text
	.align	16
	#Procedure 0x404a10

	.globl out_uint
	.type out_uint, @function
out_uint:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	lea	rdi, [rdi]
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 8], rdx
	mov	rsp, rsp
	mov	r12, rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rdi
	lea	rdi, [rdi]
	lea	r14, [rdi + 1]
	lea	rbp, [rdi + r12]
	mov	rbp, rbp
	cmp	r12, 2
	jl	.label_245
	lea	rsi, [rsi]
	movabs	r15, 0x1208000000001
	mov	r13, r14
	nop	
.label_250:
	mov	bl, byte ptr [r13]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	lea	rdi, [rdi]
	mov	edx, 8
	nop	
	call	memchr
	nop	
	test	rax, rax
	mov	rbp, rbp
	je	.label_253
	nop	
	mov	eax, 1
	mov	cl, bl
	shl	rax, cl
	mov	rbp, rbp
	movzx	ecx, bl
	cmp	ecx, 0x3f
	ja	.label_246
	mov	rsp, rsp
	and	rax, r15
	je	.label_246
	mov	byte ptr [r14], bl
	inc	r14
.label_246:
	inc	r13
	cmp	r13, rbp
	jb	.label_250
	mov	rbp, rbp
	jmp	.label_253
.label_245:
	mov	r13, r14
.label_253:
	cmp	r13, rbp
	mov	rsp, rsp
	jae	.label_254
	mov	rax, r12
	sub	rax, r13
	mov	rsi, qword ptr [rsp + 0x10]
	add	rax, rsi
	cmp	rax, 0x1f
	nop	
	jbe	.label_244
	mov	rsp, rsp
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	mov	rbp, rbp
	je	.label_244
	lea	rdx, [rsi + r12 - 1]
	cmp	r14, rdx
	lea	rdi, [rdi]
	ja	.label_251
	dec	r12
	lea	rdi, [rdi]
	sub	r12, r13
	lea	rsi, [rsi]
	add	r12, rsi
	add	r12, r14
	cmp	r13, r12
	ja	.label_251
.label_244:
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 8]
	nop	word ptr [rax + rax]
.label_243:
	lea	rdi, [rdi]
	mov	cl, byte ptr [r13]
	lea	rsi, [rsi]
	inc	r13
	mov	byte ptr [rdi], cl
	mov	rbp, rbp
	inc	rdi
	lea	rdi, [rdi]
	cmp	rbp, r13
	lea	rsi, [rsi]
	jne	.label_243
.label_248:
	lea	rsi, [rsi]
	add	r14, rax
	jmp	.label_242
.label_254:
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 8]
	nop	
	mov	rsi, qword ptr [rsp + 0x10]
.label_242:
	mov	byte ptr [r14 + 2], 0
	nop	
	mov	word ptr [r14], 0x756c
	nop	
	mov	edi, 1
	nop	
	xor	eax, eax
	add	rsp, 0x18
	pop	rbx
	pop	r12
	nop	
	pop	r13
	nop	
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	jmp	__printf_chk
.label_251:
	lea	rsi, [rsi]
	lea	rdx, [rax - 0x20]
	mov	ecx, edx
	mov	rsp, rsp
	shr	ecx, 5
	inc	ecx
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	test	cl, 3
	je	.label_255
	lea	ecx, [rax - 0x20]
	shr	ecx, 5
	inc	ecx
	and	ecx, 3
	neg	rcx
	nop	
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_249:
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [r13 + rdi]
	movups	xmm1, xmmword ptr [r13 + rdi + 0x10]
	movups	xmmword ptr [r14 + rdi], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [r14 + rdi + 0x10], xmm1
	add	rdi, 0x20
	mov	rsp, rsp
	inc	rcx
	lea	rsi, [rsi]
	jne	.label_249
.label_255:
	mov	rsp, rsp
	cmp	rdx, 0x60
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	jb	.label_252
	mov	rcx, r8
	sub	rcx, rdi
	lea	rbx, [r13 + rdi + 0x70]
	nop	
	lea	rdi, [r14 + rdi + 0x70]
	nop	word ptr cs:[rax + rax]
.label_247:
	movups	xmm0, xmmword ptr [rbx - 0x70]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [rbx - 0x60]
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi - 0x70], xmm0
	movups	xmmword ptr [rdi - 0x60], xmm1
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rbx - 0x50]
	movups	xmm1, xmmword ptr [rbx - 0x40]
	nop	
	movups	xmmword ptr [rdi - 0x50], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rdi - 0x40], xmm1
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rbx - 0x30]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [rbx - 0x20]
	mov	rbp, rbp
	movups	xmmword ptr [rdi - 0x30], xmm0
	movups	xmmword ptr [rdi - 0x20], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x10]
	nop	
	movups	xmm1, xmmword ptr [rbx]
	movups	xmmword ptr [rdi - 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi], xmm1
	lea	rdi, [rdi]
	add	rbx, 0x80
	add	rdi, 0x80
	add	rcx, -0x80
	jne	.label_247
.label_252:
	lea	rsi, [rsi]
	cmp	rax, r8
	je	.label_248
	lea	rsi, [rsi]
	lea	rdi, [r14 + r8]
	mov	rsp, rsp
	add	r13, r8
	jmp	.label_243
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404cb0

	.globl out_int
	.type out_int, @function
out_int:
	push	rbp
	mov	rsp, rsp
	push	r15
	mov	rbp, rbp
	push	r14
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	sub	rsp, 0x18
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rdx
	nop	
	mov	r12, rsi
	mov	qword ptr [rsp + 0x10], rdi
	lea	rdi, [rdi]
	lea	r14, [rdi + 1]
	lea	rbp, [rdi + r12]
	cmp	r12, 2
	lea	rdi, [rdi]
	jl	.label_268
	movabs	r15, 0x1288100000001
	mov	r13, r14
	nop	word ptr [rax + rax]
.label_257:
	mov	bl, byte ptr [r13]
	nop	
	movsx	esi, bl
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_261
	mov	eax, 1
	mov	cl, bl
	mov	rsp, rsp
	shl	rax, cl
	movzx	ecx, bl
	cmp	ecx, 0x3f
	ja	.label_265
	and	rax, r15
	mov	rbp, rbp
	je	.label_265
	mov	byte ptr [r14], bl
	mov	rsp, rsp
	inc	r14
.label_265:
	mov	rsp, rsp
	inc	r13
	cmp	r13, rbp
	jb	.label_257
	jmp	.label_261
.label_268:
	lea	rsi, [rsi]
	mov	r13, r14
.label_261:
	lea	rsi, [rsi]
	cmp	r13, rbp
	jae	.label_263
	mov	rax, r12
	lea	rsi, [rsi]
	sub	rax, r13
	mov	rsi, qword ptr [rsp + 0x10]
	add	rax, rsi
	cmp	rax, 0x1f
	lea	rsi, [rsi]
	jbe	.label_266
	mov	r8, rax
	lea	rsi, [rsi]
	and	r8, 0xffffffffffffffe0
	je	.label_266
	lea	rdx, [rsi + r12 - 1]
	cmp	r14, rdx
	nop	
	ja	.label_258
	mov	rsp, rsp
	dec	r12
	sub	r12, r13
	mov	rbp, rbp
	add	r12, rsi
	mov	rbp, rbp
	add	r12, r14
	cmp	r13, r12
	ja	.label_258
.label_266:
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 8]
	nop	dword ptr [rax]
.label_256:
	nop	
	mov	cl, byte ptr [r13]
	inc	r13
	mov	byte ptr [rdi], cl
	nop	
	inc	rdi
	lea	rsi, [rsi]
	cmp	rbp, r13
	lea	rdi, [rdi]
	jne	.label_256
.label_259:
	add	r14, rax
	mov	rbp, rbp
	jmp	.label_262
.label_263:
	mov	rdx, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x10]
.label_262:
	mov	rbp, rbp
	mov	byte ptr [r14 + 2], 0
	nop	
	mov	word ptr [r14], 0x646c
	mov	rbp, rbp
	mov	edi, 1
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	add	rsp, 0x18
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	jmp	__printf_chk
.label_258:
	nop	
	lea	rdx, [rax - 0x20]
	nop	
	mov	ecx, edx
	shr	ecx, 5
	lea	rsi, [rsi]
	inc	ecx
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	test	cl, 3
	je	.label_267
	lea	rdi, [rdi]
	lea	ecx, [rax - 0x20]
	mov	rsp, rsp
	shr	ecx, 5
	mov	rbp, rbp
	inc	ecx
	mov	rbp, rbp
	and	ecx, 3
	mov	rsp, rsp
	neg	rcx
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_260:
	nop	
	movups	xmm0, xmmword ptr [r13 + rdi]
	movups	xmm1, xmmword ptr [r13 + rdi + 0x10]
	movups	xmmword ptr [r14 + rdi], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [r14 + rdi + 0x10], xmm1
	add	rdi, 0x20
	lea	rdi, [rdi]
	inc	rcx
	lea	rdi, [rdi]
	jne	.label_260
.label_267:
	cmp	rdx, 0x60
	mov	rdx, qword ptr [rsp + 8]
	nop	
	jb	.label_264
	mov	rcx, r8
	sub	rcx, rdi
	lea	rbx, [r13 + rdi + 0x70]
	lea	rdi, [r14 + rdi + 0x70]
	nop	word ptr [rax + rax]
.label_269:
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rbx - 0x70]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [rbx - 0x60]
	movups	xmmword ptr [rdi - 0x70], xmm0
	movups	xmmword ptr [rdi - 0x60], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x50]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [rbx - 0x40]
	movups	xmmword ptr [rdi - 0x50], xmm0
	movups	xmmword ptr [rdi - 0x40], xmm1
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rbx - 0x30]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [rbx - 0x20]
	movups	xmmword ptr [rdi - 0x30], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rdi - 0x20], xmm1
	movups	xmm0, xmmword ptr [rbx - 0x10]
	lea	rdi, [rdi]
	movups	xmm1, xmmword ptr [rbx]
	movups	xmmword ptr [rdi - 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi], xmm1
	add	rbx, 0x80
	lea	rsi, [rsi]
	add	rdi, 0x80
	add	rcx, -0x80
	jne	.label_269
.label_264:
	mov	rsp, rsp
	cmp	rax, r8
	je	.label_259
	lea	rdi, [r14 + r8]
	mov	rsp, rsp
	add	r13, r8
	nop	
	jmp	.label_256
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404f50

	.globl print_stat
	.type print_stat, @function
print_stat:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	push	rax
	mov	rbx, r9
	mov	r15, r8
	mov	rbp, rbp
	mov	r12, rsi
	mov	r14, rdi
	mov	rbp, rbp
	add	edx, -0x41
	cmp	edx, 0x39
	ja	.label_283
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_290]]
.label_1121:
	mov	esi, OFFSET FLAT:human_access.modebuf
	mov	rbp, rbp
	mov	rdi, rbx
	call	filemodestring
	nop	
	mov	byte ptr [byte ptr [rip + label_293]],  0
	mov	edx, OFFSET FLAT:human_access.modebuf
	lea	rsi, [rsi]
	jmp	.label_276
.label_1122:
	mov	rbp, rbp
	mov	edx, 0x200
	jmp	.label_275
.label_1123:
	nop	
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.208
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	nop	
	mov	rbx, rax
	mov	rsp, rsp
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, r15
	mov	rbp, rbp
	call	quotearg_style
	mov	rbp, rbp
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 0x5f
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdx, rbx
	mov	rbp, rbp
	call	error
	lea	rsi, [rsi]
	mov	word ptr [r14 + r12], 0x73
	mov	rbp, rbp
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.198
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsi, r14
	call	__printf_chk
	mov	r13b, 1
	jmp	.label_272
.label_1124:
	mov	rdx, qword ptr [rbx]
	jmp	.label_281
.label_283:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	mov	rsp, rsp
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_280
	nop	
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x3f
	jmp	.label_271
.label_1125:
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rbp, rbp
	call	file_type
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, rax
	nop	
	call	out_string
	jmp	.label_271
.label_1126:
	nop	
	mov	edi, dword ptr [rbx + 0x20]
	mov	rsp, rsp
	call	getgrgid
	jmp	.label_296
.label_1127:
	xor	r13d, r13d
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	call	get_quoting_style
	mov	edi, eax
	mov	rsp, rsp
	mov	rsi, r15
	call	quotearg_style
	nop	
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	rbp, rbp
	mov	rdx, rax
	call	out_string
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	mov	rbp, rbp
	jne	.label_272
	mov	rsi, qword ptr [rbx + 0x30]
	mov	rdi, r15
	call	areadlink_with_size
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rbp, rbp
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_277
	mov	rsp, rsp
	xor	r13d, r13d
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.195
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	call	__printf_chk
	lea	rsi, [rsi]
	xor	edi, edi
	call	get_quoting_style
	nop	
	mov	edi, eax
	mov	rsi, rbx
	mov	rsp, rsp
	call	quotearg_style
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, r12
	mov	rsp, rsp
	mov	rdx, rax
	call	out_string
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	free
	nop	
	jmp	.label_272
.label_1128:
	mov	rdx, qword ptr [rbx + 0x28]
	movzx	eax, dl
	lea	rdi, [rdi]
	shr	rdx, 0xc
	and	edx, 0xffffff00
	jmp	.label_288
.label_1129:
	mov	edi, dword ptr [rbx + 0x1c]
	call	getpwuid
.label_296:
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.196
	test	rax, rax
	mov	rsp, rsp
	je	.label_276
	mov	rsp, rsp
	mov	rdx, qword ptr [rax]
	lea	rdi, [rdi]
	jmp	.label_276
.label_1130:
	xor	r13d, r13d
	xor	edx, edx
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, r12
	call	out_epoch_sec
	jmp	.label_272
.label_1131:
	nop	
	mov	rdx, qword ptr [rbx + 0x48]
	mov	rcx, qword ptr [rbx + 0x50]
	jmp	.label_298
.label_1132:
	mov	rdx, qword ptr [rbx + 0x58]
	mov	rcx, qword ptr [rbx + 0x60]
	jmp	.label_298
.label_1133:
	mov	rdx, qword ptr [rbx + 0x68]
	mov	rcx, qword ptr [rbx + 0x70]
.label_298:
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, r12
	lea	rdi, [rdi]
	call	out_epoch_sec
	lea	rsi, [rsi]
	jmp	.label_271
.label_1134:
	mov	eax, dword ptr [rbx + 0x18]
	and	eax, 0xfff
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	lea	r15, [r14 + 1]
	lea	rsi, [rsi]
	lea	rbp, [r14 + r12]
	lea	rdi, [rdi]
	mov	r13, r15
	cmp	r12, 2
	jl	.label_273
	nop	word ptr cs:[rax + rax]
.label_294:
	lea	rsi, [rsi]
	mov	bl, byte ptr [r13]
	movsx	esi, bl
	nop	
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_273
	lea	rdi, [rdi]
	mov	eax, 1
	mov	rsp, rsp
	mov	cl, bl
	mov	rbp, rbp
	shl	rax, cl
	lea	rdi, [rdi]
	movzx	ecx, bl
	mov	rsp, rsp
	cmp	ecx, 0x3f
	nop	
	ja	.label_285
	nop	
	movabs	rcx, 0x1200800000001
	and	rax, rcx
	je	.label_285
	mov	byte ptr [r15], bl
	mov	rsp, rsp
	inc	r15
.label_285:
	mov	rsp, rsp
	inc	r13
	lea	rdi, [rdi]
	cmp	r13, rbp
	jb	.label_294
.label_273:
	nop	
	cmp	r13, rbp
	jae	.label_295
	mov	rbp, rbp
	mov	rax, r12
	lea	rdi, [rdi]
	sub	rax, r13
	add	rax, r14
	cmp	rax, 0x1f
	nop	
	jbe	.label_279
	mov	rbp, rbp
	mov	rbx, rax
	and	rbx, 0xffffffffffffffe0
	je	.label_279
	lea	rdi, [rdi]
	lea	rdx, [r14 + r12 - 1]
	mov	rbp, rbp
	cmp	r15, rdx
	ja	.label_287
	lea	rdi, [rdi]
	dec	r12
	sub	r12, r13
	add	r12, r14
	mov	rbp, rbp
	add	r12, r15
	cmp	r13, r12
	mov	rsp, rsp
	ja	.label_287
.label_279:
	mov	rsi, r15
	mov	rdx, qword ptr [rsp]
	nop	dword ptr [rax]
.label_274:
	lea	rdi, [rdi]
	mov	cl, byte ptr [r13]
	mov	rsp, rsp
	inc	r13
	lea	rsi, [rsi]
	mov	byte ptr [rsi], cl
	inc	rsi
	cmp	rbp, r13
	jne	.label_274
.label_286:
	lea	rsi, [rsi]
	add	r15, rax
	nop	
	jmp	.label_278
.label_1135:
	mov	rdx, qword ptr [rbx + 0x40]
	nop	
	jmp	.label_275
.label_1136:
	mov	rdx, qword ptr [rbx]
	jmp	.label_275
.label_1137:
	mov	rbp, rbp
	mov	edx, dword ptr [rbx + 0x18]
	nop	
	jmp	.label_281
.label_1138:
	mov	rsp, rsp
	mov	edx, dword ptr [rbx + 0x20]
	mov	rbp, rbp
	jmp	.label_275
.label_1139:
	mov	rdx, qword ptr [rbx + 0x10]
	lea	rdi, [rdi]
	jmp	.label_275
.label_1140:
	nop	
	mov	rdx, qword ptr [rbx + 8]
	nop	
	jmp	.label_275
.label_1141:
	nop	
	mov	al,  byte ptr [byte ptr [rip + follow_links]]
	and	al, 1
	jne	.label_289
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	nop	
	cmp	eax, 0xa000
	mov	rbp, rbp
	je	.label_291
.label_289:
	mov	rsp, rsp
	mov	rdi, r15
	lea	rdi, [rdi]
	call	canonicalize_file_name
	mov	rbp, rbp
	mov	rbp, rax
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_300
	nop	
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	find_bind_mount
	mov	r13, rax
	mov	rdi, rbp
	mov	rsp, rsp
	call	free
	mov	rax, r13
	xor	ebp, ebp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_291
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_282
.label_1142:
	lea	rdi, [rdi]
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, r12
	mov	rbp, rbp
	mov	rdx, r15
	nop	
	call	out_string
	lea	rdi, [rdi]
	jmp	.label_271
.label_1143:
	mov	rax, qword ptr [rbx + 0x38]
	lea	rsi, [rsi]
	movabs	rcx, 0x2000000000000001
	cmp	rax, rcx
	mov	rbp, rbp
	mov	ecx, 0x200
	mov	rsp, rsp
	mov	edx, 0x200
	nop	
	cmovb	rdx, rax
	lea	rdi, [rdi]
	test	rax, rax
	cmovle	rdx, rcx
	mov	rbp, rbp
	jmp	.label_275
.label_1144:
	mov	rdx, qword ptr [rbx + 0x30]
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsi, r12
	call	out_int
	jmp	.label_271
.label_1145:
	mov	rdx, qword ptr [rbx + 0x28]
	mov	rax, rdx
	lea	rsi, [rsi]
	shr	rax, 8
	mov	rsp, rsp
	and	eax, 0xfff
	shr	rdx, 0x20
	nop	
	and	edx, 0xfffff000
.label_288:
	mov	rbp, rbp
	or	rdx, rax
.label_281:
	mov	rdi, r14
	mov	rsi, r12
	call	out_uint_x
	jmp	.label_271
.label_1146:
	nop	
	mov	edx, dword ptr [rbx + 0x1c]
.label_275:
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, r12
	mov	rbp, rbp
	call	out_uint
	mov	rsp, rsp
	jmp	.label_271
.label_1147:
	mov	edx, OFFSET FLAT:.str.59
	jmp	.label_276
.label_1148:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x48]
	mov	rsi, qword ptr [rbx + 0x50]
	jmp	.label_292
.label_1149:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0x58]
	mov	rsi, qword ptr [rbx + 0x60]
	jmp	.label_292
.label_1150:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x68]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx + 0x70]
.label_292:
	nop	
	call	human_time
	mov	edx, OFFSET FLAT:human_time.str
.label_276:
	mov	rdi, r14
	mov	rsi, r12
	call	out_string
.label_271:
	xor	r13d, r13d
.label_272:
	nop	
	mov	al, r13b
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_295:
	nop	
	mov	rdx, qword ptr [rsp]
.label_278:
	mov	rbp, rbp
	mov	byte ptr [r15 + 2], 0
	mov	word ptr [r15], 0x6f6c
	lea	rsi, [rsi]
	xor	r13d, r13d
	mov	edi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, r14
	call	__printf_chk
	nop	
	jmp	.label_272
.label_291:
	mov	rsp, rsp
	mov	rdi, r15
	nop	
	mov	rsi, rbx
	call	find_mount_point
	mov	rbx, rax
	mov	r13b, 1
	mov	rsp, rsp
	xor	eax, eax
	test	rbx, rbx
	mov	ebp, 0
	mov	rbp, rbp
	je	.label_282
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	find_bind_mount
	xor	r13d, r13d
	mov	rbp, rbx
	jmp	.label_282
.label_300:
	mov	rbp, rbp
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.199
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rax
	nop	
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebx
	mov	rdx, rbp
	nop	
	call	error
	xor	eax, eax
	mov	r13b, 1
	xor	ebp, ebp
.label_282:
	test	rbp, rbp
	mov	edx, OFFSET FLAT:.str.198
	mov	rsp, rsp
	cmovne	rdx, rbp
	lea	rdi, [rdi]
	test	rax, rax
	lea	rdi, [rdi]
	cmovne	rdx, rax
	lea	rdi, [rdi]
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r12
	call	out_string
	mov	rdi, rbp
	nop	
	call	free
	lea	rsi, [rsi]
	jmp	.label_272
.label_277:
	mov	rsp, rsp
	call	__errno_location
	nop	
	mov	ebx, dword ptr [rax]
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.194
	mov	rsp, rsp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rbp
	mov	rbp, rax
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, r15
	nop	
	call	quotearg_style
	lea	rsi, [rsi]
	mov	rcx, rax
	nop	
	xor	edi, edi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebx
	mov	rbp, rbp
	mov	rdx, rbp
	call	error
	nop	
	mov	r13b, 1
	lea	rsi, [rsi]
	jmp	.label_272
.label_287:
	lea	rdx, [rax - 0x20]
	mov	rsp, rsp
	mov	esi, edx
	nop	
	shr	esi, 5
	inc	esi
	lea	rdi, [rdi]
	xor	edi, edi
	test	sil, 3
	mov	rbp, rbp
	je	.label_297
	mov	rsp, rsp
	lea	esi, [rax - 0x20]
	lea	rsi, [rsi]
	shr	esi, 5
	lea	rdi, [rdi]
	inc	esi
	and	esi, 3
	lea	rsi, [rsi]
	neg	rsi
	mov	rbp, rbp
	xor	edi, edi
.label_284:
	nop	
	movups	xmm0, xmmword ptr [r13 + rdi]
	lea	rdi, [rdi]
	movups	xmm1, xmmword ptr [r13 + rdi + 0x10]
	movups	xmmword ptr [r15 + rdi], xmm0
	movups	xmmword ptr [r15 + rdi + 0x10], xmm1
	nop	
	add	rdi, 0x20
	nop	
	inc	rsi
	nop	
	jne	.label_284
.label_297:
	mov	rsp, rsp
	cmp	rdx, 0x60
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp]
	mov	rbp, rbp
	jb	.label_299
	lea	rdi, [rdi]
	mov	rcx, rbx
	sub	rcx, rdi
	lea	rsi, [r13 + rdi + 0x70]
	lea	rsi, [rsi]
	lea	rdi, [r15 + rdi + 0x70]
.label_270:
	nop	
	movups	xmm0, xmmword ptr [rsi - 0x70]
	movups	xmm1, xmmword ptr [rsi - 0x60]
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi - 0x70], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi - 0x60], xmm1
	movups	xmm0, xmmword ptr [rsi - 0x50]
	movups	xmm1, xmmword ptr [rsi - 0x40]
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi - 0x50], xmm0
	movups	xmmword ptr [rdi - 0x40], xmm1
	movups	xmm0, xmmword ptr [rsi - 0x30]
	nop	
	movups	xmm1, xmmword ptr [rsi - 0x20]
	movups	xmmword ptr [rdi - 0x30], xmm0
	movups	xmmword ptr [rdi - 0x20], xmm1
	movups	xmm0, xmmword ptr [rsi - 0x10]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [rsi]
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi - 0x10], xmm0
	movups	xmmword ptr [rdi], xmm1
	add	rsi, 0x80
	add	rdi, 0x80
	mov	rbp, rbp
	add	rcx, -0x80
	nop	
	jne	.label_270
.label_299:
	lea	rsi, [rsi]
	cmp	rax, rbx
	je	.label_286
	lea	rsi, [r15 + rbx]
	add	r13, rbx
	jmp	.label_274
.label_280:
	mov	esi, 0x3f
	mov	rbp, rbp
	call	__overflow
	lea	rsi, [rsi]
	jmp	.label_271
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4057a0

	.globl human_time
	.type human_time, @function
human_time:
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x70
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	qword ptr [rsp + 0x40], rdi
	mov	qword ptr [rsp + 0x48], rbx
	nop	
	mov	rdi,  qword ptr [word ptr [rip + human_time.tz]]
	mov	rsp, rsp
	test	rdi, rdi
	lea	rsi, [rsi]
	jne	.label_301
	mov	edi, OFFSET FLAT:.str_2
	nop	
	call	getenv
	mov	rdi, rax
	nop	
	call	tzalloc
	mov	rdi, rax
	mov	qword ptr [word ptr [rip + human_time.tz]],  rdi
.label_301:
	lea	rsi, [rsp + 0x40]
	mov	rsp, rsp
	lea	rdx, [rsp + 8]
	call	localtime_rz
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_302
	mov	r8,  qword ptr [word ptr [rip + human_time.tz]]
	lea	rcx, [rsp + 8]
	mov	edi, OFFSET FLAT:human_time.str
	lea	rdi, [rdi]
	mov	esi, 0x3d
	mov	edx, OFFSET FLAT:.str.203
	mov	r9d, ebx
	call	nstrftime
	jmp	.label_303
.label_302:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x40]
	lea	rsi, [rsp + 0x50]
	nop	
	call	imaxtostr
	lea	rdi, [rdi]
	mov	r8, rax
	mov	edi, OFFSET FLAT:human_time.str
	mov	esi, 1
	lea	rsi, [rsi]
	mov	edx, 0x3d
	mov	ecx, OFFSET FLAT:.str.204
	xor	eax, eax
	mov	r9d, ebx
	call	__sprintf_chk
.label_303:
	add	rsp, 0x70
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405880

	.globl out_epoch_sec
	.type out_epoch_sec, @function
out_epoch_sec:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	nop	
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x38
	nop	
	mov	qword ptr [rsp + 0x18], rcx
	mov	r13, rdx
	mov	rbp, rsi
	mov	rbp, rbp
	mov	r14, rdi
	mov	esi, 0x2e
	mov	rdx, rbp
	mov	rbp, rbp
	call	memchr
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_323
	lea	rdi, [rdi]
	mov	r12, rbx
	lea	rsi, [rsi]
	sub	r12, r14
	mov	byte ptr [r14 + rbp], 0
	movsx	eax, byte ptr [rbx + 1]
	add	eax, -0x30
	lea	rdi, [rdi]
	mov	r15d, 9
	lea	rdi, [rdi]
	cmp	eax, 9
	ja	.label_333
	mov	rdi, rbx
	inc	rdi
	mov	rbp, rbp
	xor	esi, esi
	mov	edx, 0xa
	nop	
	call	strtol
	mov	rbp, rbp
	cmp	rax, 0x7fffffff
	mov	r15d, 0x7fffffff
	cmovle	r15d, eax
	test	r15d, r15d
	nop	
	je	.label_307
.label_333:
	lea	rsi, [rsi]
	movsx	eax, byte ptr [rbx - 1]
	mov	rsp, rsp
	add	eax, -0x30
	mov	rbp, rbp
	xor	ecx, ecx
	nop	
	cmp	eax, 9
	ja	.label_316
	nop	
	mov	byte ptr [rbx], 0
	nop	word ptr cs:[rax + rax]
.label_321:
	movsx	eax, byte ptr [rbx - 2]
	nop	
	dec	rbx
	add	eax, -0x30
	cmp	eax, 0xa
	nop	
	jb	.label_321
	xor	ebp, ebp
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 0xa
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	call	strtol
	cmp	rax, 0x7fffffff
	mov	edx, 0x7fffffff
	mov	rsp, rsp
	cmovle	rdx, rax
	mov	rbp, rbp
	mov	ecx, 0x7fffffff
	lea	rsi, [rsi]
	cmovle	ecx, eax
	cmp	ecx, 2
	lea	rsi, [rsi]
	jl	.label_316
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rcx
	movzx	eax, byte ptr [rbx]
	mov	rbp, rbp
	cmp	eax, 0x30
	sete	cl
	lea	rdi, [rdi]
	movzx	ecx, cl
	add	rcx, rbx
	mov	r12, rcx
	lea	rdi, [rdi]
	sub	r12, r14
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + decimal_point_len]]
	mov	rsp, rsp
	movsxd	rdx, edx
	mov	rsp, rsp
	mov	edi, edx
	sub	edi, esi
	cmp	rdx, rsi
	cmova	ebp, edi
	lea	rdi, [rdi]
	cmp	ebp, 2
	jl	.label_317
	sub	ebp, r15d
	cmp	ebp, 2
	lea	rsi, [rsi]
	jl	.label_317
	nop	
	xor	r12d, r12d
	mov	rsp, rsp
	cmp	rcx, r14
	mov	rdi, r14
	nop	
	jbe	.label_305
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 0x30
	sete	al
	lea	rsi, [rsi]
	movzx	eax, al
	lea	rsi, [rsi]
	add	rbx, rax
	xor	eax, eax
	mov	rcx, r14
	nop	
	mov	rdi, r14
	nop	word ptr cs:[rax + rax]
.label_318:
	movzx	edx, byte ptr [rcx]
	nop	
	cmp	edx, 0x2d
	jne	.label_329
	mov	al, 1
	mov	rsp, rsp
	jmp	.label_345
.label_329:
	mov	byte ptr [rdi], dl
	lea	rdi, [rdi]
	inc	rdi
.label_345:
	nop	
	inc	rcx
	cmp	rbx, rcx
	nop	
	jne	.label_318
	mov	rsp, rsp
	mov	r12, rdi
	lea	rdi, [rdi]
	sub	r12, r14
	lea	rsi, [rsi]
	xor	ecx, ecx
	test	al, 1
	jne	.label_334
.label_305:
	mov	esi, 1
	nop	
	mov	rdx, -1
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.205
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	r8d, ebp
	mov	rsp, rsp
	call	__sprintf_chk
	mov	rbp, rbp
	movsxd	rcx, eax
.label_334:
	mov	rsp, rsp
	add	r12, rcx
.label_317:
	mov	rcx, qword ptr [rsp + 0x30]
.label_316:
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	cmp	r15d, 8
	jg	.label_314
	nop	
	mov	rbp, r12
	jmp	.label_326
.label_323:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rax
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_326
.label_314:
	mov	edi, 1
	mov	ebx, 9
	jmp	.label_337
.label_307:
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	lea	rsi, [rsi]
	mov	rbp, r12
	mov	rsp, rsp
	xor	r15d, r15d
.label_326:
	mov	eax, 9
	mov	ecx, 9
	sub	ecx, r15d
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rdi, [rdi]
	cmp	ecx, 7
	ja	.label_330
	mov	rbp, rbp
	mov	esi, r15d
	jmp	.label_309
.label_330:
	mov	edx, ecx
	and	edx, 0xfffffff8
	lea	rdi, [rdi]
	mov	r8d, ecx
	and	r8d, 0xfffffff8
	mov	esi, r15d
	lea	rdi, [rdi]
	je	.label_309
	mov	rsp, rsp
	mov	esi, 1
	sub	esi, r15d
	mov	edi, esi
	shr	edi, 3
	lea	rsi, [rsi]
	inc	edi
	test	dil, 7
	je	.label_325
	mov	rsp, rsp
	and	edi, 7
	mov	rsp, rsp
	neg	edi
	nop	
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_336]]
	xor	ebx, ebx
	lea	rsi, [rsi]
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_339]]
	mov	rbp, rbp
	movdqa	xmm1, xmm0
.label_304:
	nop	
	pshufd	xmm3, xmm0, 0xf5
	pmuludq	xmm0, xmm2
	pshufd	xmm0, xmm0, 0xe8
	pmuludq	xmm3, xmm2
	nop	
	pshufd	xmm3, xmm3, 0xe8
	lea	rsi, [rsi]
	punpckldq	xmm0, xmm3
	lea	rdi, [rdi]
	pshufd	xmm3, xmm1, 0xf5
	lea	rdi, [rdi]
	pmuludq	xmm1, xmm2
	lea	rdi, [rdi]
	pshufd	xmm1, xmm1, 0xe8
	pmuludq	xmm3, xmm2
	mov	rbp, rbp
	pshufd	xmm3, xmm3, 0xe8
	punpckldq	xmm1, xmm3
	add	ebx, 8
	inc	edi
	jne	.label_304
	jmp	.label_335
.label_325:
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_336]]
	mov	rbp, rbp
	xor	ebx, ebx
	movdqa	xmm1, xmm0
.label_335:
	mov	rsp, rsp
	cmp	esi, 0x38
	jb	.label_342
	mov	esi, 9
	sub	esi, r15d
	and	esi, 0xfffffff8
	sub	esi, ebx
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_344]]
	nop	
.label_343:
	lea	rsi, [rsi]
	pshufd	xmm3, xmm0, 0xf5
	nop	
	pmuludq	xmm0, xmm2
	lea	rdi, [rdi]
	pshufd	xmm0, xmm0, 0xe8
	lea	rdi, [rdi]
	pmuludq	xmm3, xmm2
	mov	rsp, rsp
	pshufd	xmm3, xmm3, 0xe8
	punpckldq	xmm0, xmm3
	nop	
	pshufd	xmm3, xmm1, 0xf5
	pmuludq	xmm1, xmm2
	lea	rsi, [rsi]
	pshufd	xmm1, xmm1, 0xe8
	pmuludq	xmm3, xmm2
	lea	rsi, [rsi]
	pshufd	xmm3, xmm3, 0xe8
	punpckldq	xmm1, xmm3
	mov	rsp, rsp
	add	esi, -0x40
	mov	rbp, rbp
	jne	.label_343
.label_342:
	pshufd	xmm2, xmm1, 0xf5
	mov	rsp, rsp
	pmuludq	xmm1, xmm0
	lea	rdi, [rdi]
	pshufd	xmm1, xmm1, 0xe8
	lea	rdi, [rdi]
	pshufd	xmm0, xmm0, 0xf5
	nop	
	pmuludq	xmm0, xmm2
	pshufd	xmm0, xmm0, 0xe8
	punpckldq	xmm1, xmm0
	nop	
	pshufd	xmm0, xmm1, 0x4e
	lea	rdi, [rdi]
	pshufd	xmm2, xmm1, 0xf5
	pmuludq	xmm1, xmm0
	pshufd	xmm1, xmm1, 0xe8
	lea	rdi, [rdi]
	pshufd	xmm0, xmm0, 0xf5
	pmuludq	xmm0, xmm2
	nop	
	pshufd	xmm0, xmm0, 0xe8
	mov	rsp, rsp
	punpckldq	xmm1, xmm0
	lea	rsi, [rsi]
	pshufd	xmm0, xmm1, 0xe5
	nop	
	pshufd	xmm2, xmm1, 0xf5
	mov	rbp, rbp
	pmuludq	xmm1, xmm0
	pshufd	xmm1, xmm1, 0xe8
	pshufd	xmm0, xmm0, 0xf5
	pmuludq	xmm0, xmm2
	lea	rsi, [rsi]
	pshufd	xmm0, xmm0, 0xe8
	punpckldq	xmm1, xmm0
	movd	edi, xmm1
	mov	rbp, rbp
	cmp	ecx, r8d
	mov	rbp, rbp
	je	.label_338
	mov	rbp, rbp
	add	edx, r15d
	lea	rsi, [rsi]
	mov	esi, edx
.label_309:
	mov	rsp, rsp
	sub	eax, esi
	nop	dword ptr [rax]
.label_347:
	lea	rsi, [rsi]
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	lea	rsi, [rsi]
	dec	eax
	jne	.label_347
.label_338:
	mov	ebx, r15d
	mov	r12, rbp
.label_337:
	mov	rbp, qword ptr [rsp + 0x18]
	nop	
	movsxd	rsi, edi
	mov	rax, rbp
	cqo	
	idiv	rsi
	lea	rsi, [rsi]
	mov	rdi, rax
	nop	
	test	r13, r13
	nop	
	jns	.label_310
	test	rbp, rbp
	je	.label_310
	mov	rbp, rbp
	mov	eax, 0x3b9aca00
	xor	edx, edx
	lea	rsi, [rsi]
	idiv	esi
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	sub	ecx, edi
	mov	rax, rbp
	mov	rbp, rbp
	cqo	
	idiv	rsi
	lea	rdi, [rdi]
	test	rdx, rdx
	setne	al
	movzx	eax, al
	mov	rbp, rbp
	sub	ecx, eax
	nop	
	setne	al
	mov	rbp, rbp
	movzx	eax, al
	add	r13, rax
	mov	rbp, rbp
	je	.label_324
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], rcx
	lea	rdi, [rdi]
	jmp	.label_349
.label_310:
	mov	qword ptr [rsp + 0x18], rdi
.label_349:
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, r12
	nop	
	mov	rdx, r13
	lea	rsi, [rsi]
	call	out_int
	lea	rdi, [rdi]
	jmp	.label_315
.label_324:
	mov	qword ptr [rsp + 0x18], rcx
	mov	dword ptr [rsp + 0x2c], ebx
	nop	
	mov	rax, r14
	mov	qword ptr [rsp + 0x20], rax
	lea	r14, [rax + 1]
	lea	rbp, [rax + r12]
	mov	r13, r14
	cmp	r12, 2
	jl	.label_320
	nop	
.label_319:
	mov	bl, byte ptr [r13]
	mov	rsp, rsp
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	lea	rsi, [rsi]
	mov	edx, 8
	nop	
	call	memchr
	test	rax, rax
	je	.label_320
	mov	eax, 1
	mov	rbp, rbp
	mov	cl, bl
	lea	rsi, [rsi]
	shl	rax, cl
	movzx	ecx, bl
	nop	
	cmp	ecx, 0x3f
	ja	.label_308
	movabs	rcx, 0x1288100000001
	mov	rbp, rbp
	and	rax, rcx
	lea	rdi, [rdi]
	je	.label_308
	mov	byte ptr [r14], bl
	lea	rsi, [rsi]
	inc	r14
.label_308:
	inc	r13
	cmp	r13, rbp
	nop	
	jb	.label_319
.label_320:
	cmp	r13, rbp
	lea	rdi, [rdi]
	jae	.label_322
	mov	rax, r12
	sub	rax, r13
	mov	rsp, rsp
	add	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	cmp	rax, 0x1f
	mov	rsp, rsp
	mov	ebx, dword ptr [rsp + 0x2c]
	jbe	.label_328
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	and	rcx, 0xffffffffffffffe0
	nop	
	je	.label_328
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x20]
	lea	rdx, [rsi + r12 - 1]
	nop	
	cmp	r14, rdx
	lea	rdi, [rdi]
	ja	.label_306
	dec	r12
	sub	r12, r13
	lea	rdi, [rdi]
	add	r12, rsi
	add	r12, r14
	cmp	r13, r12
	mov	rsp, rsp
	ja	.label_306
.label_328:
	nop	
	mov	rdx, r14
	nop	word ptr cs:[rax + rax]
.label_312:
	mov	rbp, rbp
	mov	cl, byte ptr [r13]
	inc	r13
	lea	rdi, [rdi]
	mov	byte ptr [rdx], cl
	lea	rsi, [rsi]
	inc	rdx
	mov	rbp, rbp
	cmp	rbp, r13
	nop	
	jne	.label_312
.label_348:
	lea	rsi, [rsi]
	add	r14, rax
	jmp	.label_313
.label_322:
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rsp + 0x2c]
.label_313:
	lea	rdi, [rdi]
	mov	dword ptr [r14], 0x66302e
	mov	rbp, rbp
	movsd	xmm0,  qword ptr [word ptr [rip + label_340]]
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	mov	al, 1
	mov	rsi, qword ptr [rsp + 0x20]
	nop	
	call	__printf_chk
.label_315:
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x30]
	nop	
	test	r15d, r15d
	lea	rsi, [rsi]
	je	.label_327
	lea	rsi, [rsi]
	sub	r15d, ebx
	mov	rsp, rsp
	xor	r9d, r9d
	test	eax, eax
	mov	rbp, rbp
	cmovs	eax, r9d
	nop	
	sub	edx, eax
	mov	rbp, rbp
	jle	.label_311
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + decimal_point_len]]
	movsxd	rcx, edx
	cmp	rcx, rax
	jbe	.label_311
	lea	rdi, [rdi]
	sub	edx, ebx
	mov	rbp, rbp
	sub	edx, eax
	nop	
	mov	r9d, edx
.label_311:
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [rip + decimal_point]]
	mov	dword ptr [rsp], r15d
	mov	dword ptr [rsp + 8], 0
	lea	rsi, [rsi]
	mov	edi, 1
	nop	
	mov	esi, OFFSET FLAT:.str.206
	xor	eax, eax
	mov	rsp, rsp
	mov	r8, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	ecx, ebx
	mov	rsp, rsp
	call	__printf_chk
.label_327:
	add	rsp, 0x38
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	nop	
	ret	
.label_306:
	lea	rdx, [rax - 0x20]
	mov	esi, edx
	shr	esi, 5
	nop	
	inc	esi
	xor	edi, edi
	test	sil, 3
	je	.label_346
	lea	esi, [rax - 0x20]
	mov	rbp, rbp
	shr	esi, 5
	lea	rsi, [rsi]
	inc	esi
	and	esi, 3
	nop	
	neg	rsi
	mov	rbp, rbp
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_341:
	mov	rsp, rsp
	movdqu	xmm0, xmmword ptr [r13 + rdi]
	nop	
	movdqu	xmm1, xmmword ptr [r13 + rdi + 0x10]
	movdqu	xmmword ptr [r14 + rdi], xmm0
	nop	
	movdqu	xmmword ptr [r14 + rdi + 0x10], xmm1
	lea	rdi, [rdi]
	add	rdi, 0x20
	mov	rsp, rsp
	inc	rsi
	jne	.label_341
.label_346:
	cmp	rdx, 0x60
	mov	rbp, rbp
	jb	.label_332
	mov	rdx, rcx
	lea	rdi, [rdi]
	sub	rdx, rdi
	lea	rsi, [r13 + rdi + 0x70]
	mov	rsp, rsp
	lea	rdi, [r14 + rdi + 0x70]
	nop	word ptr cs:[rax + rax]
.label_331:
	movups	xmm0, xmmword ptr [rsi - 0x70]
	movups	xmm1, xmmword ptr [rsi - 0x60]
	movups	xmmword ptr [rdi - 0x70], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi - 0x60], xmm1
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rsi - 0x50]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [rsi - 0x40]
	movups	xmmword ptr [rdi - 0x50], xmm0
	movups	xmmword ptr [rdi - 0x40], xmm1
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rsi - 0x30]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [rsi - 0x20]
	movups	xmmword ptr [rdi - 0x30], xmm0
	movups	xmmword ptr [rdi - 0x20], xmm1
	movdqu	xmm0, xmmword ptr [rsi - 0x10]
	mov	rsp, rsp
	movdqu	xmm1, xmmword ptr [rsi]
	movdqu	xmmword ptr [rdi - 0x10], xmm0
	movdqu	xmmword ptr [rdi], xmm1
	add	rsi, 0x80
	add	rdi, 0x80
	add	rdx, -0x80
	jne	.label_331
.label_332:
	cmp	rax, rcx
	mov	rbp, rbp
	je	.label_348
	lea	rdx, [r14 + rcx]
	add	r13, rcx
	jmp	.label_312
	.section	.text
	.align	16
	#Procedure 0x4060c0

	.globl find_bind_mount
	.type find_bind_mount, @function
find_bind_mount:
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x120
	mov	rbp, rbp
	mov	r14, rdi
	nop	
	mov	al,  byte ptr [byte ptr [rip + find_bind_mount.tried_mount_list]]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_350
	nop	
	xor	edi, edi
	call	read_file_system_list
	mov	qword ptr [word ptr [rip + find_bind_mount.mount_list]],  rax
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_355
	mov	rbp, rbp
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.201
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	nop	
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebx
	mov	rsp, rsp
	call	error
.label_355:
	mov	byte ptr [byte ptr [rip + find_bind_mount.tried_mount_list]],  1
.label_350:
	lea	rdx, [rsp]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	rsi, r14
	mov	rbp, rbp
	call	__xstat
	xor	r12d, r12d
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_353
	mov	rbx,  qword ptr [word ptr [rip + find_bind_mount.mount_list]]
	mov	rbp, rbp
	xor	r12d, r12d
	test	rbx, rbx
	je	.label_353
	lea	rsi, [rsi]
	xor	r12d, r12d
	lea	r15, [rsp + 0x90]
	nop	word ptr cs:[rax + rax]
.label_351:
	test	byte ptr [rbx + 0x28], 1
	mov	rsp, rsp
	je	.label_352
	mov	r13, qword ptr [rbx]
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r13]
	lea	rdi, [rdi]
	cmp	eax, 0x2f
	jne	.label_352
	mov	rdi, qword ptr [rbx + 8]
	nop	
	mov	rsi, r14
	call	strcmp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_352
	mov	edi, 1
	nop	
	mov	rsi, r13
	mov	rdx, r15
	mov	rbp, rbp
	call	__xstat
	mov	rsp, rsp
	test	eax, eax
	jne	.label_352
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, qword ptr [rsp + 0x98]
	mov	rbp, rbp
	jne	.label_352
	mov	rax, qword ptr [rsp]
	cmp	rax, qword ptr [rsp + 0x90]
	je	.label_354
	nop	dword ptr [rax + rax]
.label_352:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbx + 0x30]
	test	rbx, rbx
	jne	.label_351
.label_353:
	mov	rax, r12
	add	rsp, 0x120
	nop	
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	ret	
.label_354:
	mov	r12, qword ptr [rbx]
	nop	
	jmp	.label_353
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406230

	.globl find_mount_point
	.type find_mount_point, @function
find_mount_point:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x130
	mov	rbx, rsi
	nop	
	mov	r14, rdi
	lea	rdi, [rbp - 0x30]
	mov	rbp, rbp
	call	save_cwd
	mov	rbp, rbp
	test	eax, eax
	je	.label_367
	nop	
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_4
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	nop	
	call	error
	jmp	.label_358
.label_367:
	mov	eax, 0xf000
	nop	
	and	eax, dword ptr [rbx + 0x18]
	nop	
	cmp	eax, 0x4000
	jne	.label_359
	lea	rdi, [rbp - 0x150]
	nop	
	mov	edx, 0x90
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	memcpy
	mov	rdi, r14
	lea	rsi, [rsi]
	call	chdir
	lea	rdi, [rdi]
	test	eax, eax
	jns	.label_366
	nop	
	jmp	.label_365
.label_359:
	mov	rbp, rbp
	mov	rdi, r14
	lea	rdi, [rdi]
	call	dir_name
	mov	rbp, rbp
	mov	rbx, rax
	mov	rdi, rbx
	call	strlen
	mov	r14, rsp
	lea	rdx, [rax + 1]
	lea	rsi, [rsi]
	add	rax, 0x10
	mov	rsp, rsp
	and	rax, 0xfffffffffffffff0
	mov	rsp, rsp
	sub	r14, rax
	lea	rdi, [rdi]
	mov	rsp, r14
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, rbx
	call	memcpy
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	call	chdir
	nop	
	test	eax, eax
	mov	rsp, rsp
	js	.label_365
	mov	rbp, rbp
	lea	rdx, [rbp - 0x150]
	nop	
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_1
	mov	rbp, rbp
	call	__xstat
	test	eax, eax
	js	.label_357
.label_366:
	lea	rdx, [rbp - 0xc0]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.4_0
	call	__xstat
	test	eax, eax
	js	.label_361
	nop	
	lea	r14, [rbp - 0x150]
	lea	rdi, [rdi]
	lea	rbx, [rbp - 0xc0]
	nop	dword ptr [rax]
.label_360:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x150]
	jne	.label_363
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x148]
	mov	rbp, rbp
	je	.label_363
	mov	edi, OFFSET FLAT:.str.4_0
	mov	rsp, rsp
	call	chdir
	test	eax, eax
	js	.label_356
	mov	edx, 0x90
	nop	
	mov	rdi, r14
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	memcpy
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.4_0
	mov	rdx, rbx
	mov	rsp, rsp
	call	__xstat
	test	eax, eax
	mov	rsp, rsp
	jns	.label_360
.label_361:
	mov	rsp, rsp
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_0
	jmp	.label_364
.label_365:
	call	__errno_location
	mov	r12d, dword ptr [rax]
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_0
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rsp, rsp
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, r12d
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	error
	jmp	.label_358
.label_363:
	lea	rsi, [rsi]
	call	xgetcwd
	mov	r15, rax
	jmp	.label_362
.label_357:
	call	__errno_location
	mov	r12d, dword ptr [rax]
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_0
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, rbx
	call	error
	jmp	.label_362
.label_356:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.1_0
.label_364:
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	edi, 4
	mov	esi, OFFSET FLAT:.str.4_0
	call	quotearg_style
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, r14d
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	error
	xor	r15d, r15d
.label_362:
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	nop	
	lea	rdi, [rbp - 0x30]
	nop	
	call	restore_cwd
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_368
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x30]
	call	free_cwd
	mov	rbp, rbp
	mov	dword ptr [rbx], r14d
.label_358:
	mov	rsp, rsp
	mov	rax, r15
	mov	rsp, rsp
	lea	rsp, [rbp - 0x20]
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
.label_368:
	mov	rsp, rsp
	mov	ebx, dword ptr [rbx]
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.6_1
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	mov	rbp, rbp
	mov	edi, 1
	nop	
	xor	eax, eax
	mov	esi, ebx
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	error
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406600

	.globl areadlink_with_size
	.type areadlink_with_size, @function
areadlink_with_size:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	nop	
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x18
	nop	
	mov	qword ptr [rsp + 8], rdi
	lea	rsi, [rsi]
	cmp	rsi, 0x401
	lea	rax, [rsi + 1]
	mov	r12d, 0x401
	mov	rbp, rbp
	cmovb	r12, rax
	mov	rdi, r12
	lea	rdi, [rdi]
	call	malloc
	mov	rbx, rax
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rax
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_369
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, rbp
	movabs	r15, 0x7fffffffffffffff
	nop	word ptr cs:[rax + rax]
.label_370:
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rdx, r12
	lea	rsi, [rsi]
	call	readlink
	mov	r13, rax
	nop	
	test	r13, r13
	mov	rbp, rbp
	jns	.label_372
	call	__errno_location
	nop	
	mov	rbp, rax
	mov	rbp, rbp
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	mov	rsp, rsp
	jne	.label_374
.label_372:
	mov	rsp, rsp
	cmp	r13, r12
	nop	
	jb	.label_377
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	mov	rax, r12
	mov	rsp, rsp
	shr	rax, 0x3e
	mov	rbp, rbp
	jne	.label_371
	add	r12, r12
	nop	
	jmp	.label_373
	nop	dword ptr [rax + rax]
.label_371:
	cmp	r12, r15
	mov	rsp, rsp
	mov	r12, r15
	jae	.label_375
.label_373:
	mov	rsp, rsp
	mov	rdi, r12
	mov	rbp, rbp
	call	malloc
	mov	rbp, rbp
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_370
	mov	rsp, rsp
	jmp	.label_369
.label_377:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp + 0x10], rbx
	jmp	.label_369
.label_375:
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	jmp	.label_376
.label_374:
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	call	free
	mov	dword ptr [rbp], r14d
.label_376:
	mov	rbp, rbp
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_369:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406780

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	jmp	usage
	.section	.text
	.align	16
	#Procedure 0x406790

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	nop	
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rsp, rsp
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	r13, rcx
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rbp
	lea	rsi, [rsi]
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_382
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], -1
	nop	
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, r14
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_378:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	strncmp
	test	eax, eax
	jne	.label_379
	mov	rdi, r15
	mov	rsp, rsp
	call	strlen
	mov	rbp, rbp
	cmp	rax, rbx
	lea	rsi, [rsi]
	je	.label_383
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_380
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	test	rax, rax
	je	.label_381
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x18]
	imul	rdi, r13
	lea	rdi, [rdi]
	add	rdi, rax
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, r13
	lea	rdi, [rdi]
	call	memcmp
	test	eax, eax
	je	.label_379
.label_381:
	mov	rsp, rsp
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_379
.label_380:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rbp
	nop	dword ptr [rax + rax]
.label_379:
	nop	
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	lea	rsi, [rsi]
	inc	rbp
	add	r14, r13
	test	r15, r15
	nop	
	jne	.label_378
	lea	rsi, [rsi]
	jmp	.label_384
.label_382:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], -1
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x10], rax
.label_384:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	mov	rsp, rsp
	cmove	rbp, qword ptr [rsp + 0x18]
.label_383:
	mov	rax, rbp
	add	rsp, 0x28
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x406910
	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:

	mov	rbp, rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r15, rsi
	lea	rdi, [rdi]
	mov	r14, rdi
	xor	edi, edi
	cmp	rdx, -1
	je	.label_385
	mov	esi, OFFSET FLAT:.str.1_1
	nop	
	jmp	.label_386
.label_385:
	nop	
	mov	esi, OFFSET FLAT:.str_5
.label_386:
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 8
	lea	rsi, [rsi]
	mov	rdx, r15
	call	quotearg_n_style
	nop	
	mov	r15, rax
	mov	edi, 1
	lea	rsi, [rsi]
	mov	rsi, r14
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r15
	nop	
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rsi, [rsi]
	jmp	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x4069b0

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	mov	rsp, rsp
	push	rbp
	push	r15
	nop	
	push	r14
	nop	
	push	r13
	push	r12
	push	rbx
	nop	
	push	rax
	mov	r14, rdx
	mov	rsp, rsp
	mov	r12, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp], rbx
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbx]
	nop	
	test	rbx, rbx
	je	.label_392
	lea	rdi, [rdi]
	xor	r13d, r13d
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_388:
	test	r15, r15
	mov	rbp, rbp
	je	.label_387
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	lea	rdi, [rdi]
	call	memcmp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_391
.label_387:
	mov	r13,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.3_1
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_390
	nop	dword ptr [rax]
.label_391:
	mov	rbp,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rsp, rsp
	mov	rcx, rax
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.4_1
	xor	eax, eax
	mov	rdi, rbp
	call	__fprintf_chk
.label_390:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	mov	rbx, qword ptr [rax + r15*8 + 8]
	inc	r15
	add	r12, r14
	lea	rsi, [rsi]
	test	rbx, rbx
	jne	.label_388
.label_392:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_389
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_389:
	mov	rsp, rsp
	mov	esi, 0xa
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	jmp	__overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406b30
	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:

	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r9
	lea	rsi, [rsi]
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	r14, rsi
	mov	rbp, rdi
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rsp, rsp
	mov	rdx, r12
	mov	rcx, r15
	lea	rdi, [rdi]
	call	argmatch
	mov	rsp, rsp
	test	rax, rax
	jns	.label_395
	mov	qword ptr [rsp + 8], rbp
	mov	rbp, rbp
	xor	edi, edi
	cmp	rax, -1
	je	.label_393
	mov	esi, OFFSET FLAT:.str.1_1
	mov	rsp, rsp
	jmp	.label_394
.label_393:
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_5
.label_394:
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rax
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 8
	mov	rbp, rbp
	mov	rdx, r14
	call	quotearg_n_style
	nop	
	mov	r14, rax
	nop	
	mov	edi, 1
	mov	rsi, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	call	quote_n
	mov	rbp, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rcx, r14
	mov	r8, rbp
	call	error
	mov	rsp, rsp
	mov	rdi, r13
	mov	rbp, rbp
	mov	rsi, r12
	mov	rdx, r15
	mov	rbp, rbp
	call	argmatch_valid
	mov	rsp, rsp
	call	rbx
	mov	rbp, rbp
	mov	rax, -1
.label_395:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c50
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rbp, rbp
	push	rbx
	nop	
	mov	r14, rcx
	mov	r15, rdx
	lea	rdi, [rdi]
	mov	rbx, rsi
	nop	
	mov	r12, rdi
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	xor	eax, eax
	mov	rsp, rsp
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_396
	lea	rsi, [rsi]
	add	rbx, 8
	nop	dword ptr [rax]
.label_397:
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, r15
	nop	
	mov	rdx, r14
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	mov	rax, r13
	nop	
	je	.label_396
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	mov	rbp, rbp
	test	r13, r13
	mov	eax, 0
	jne	.label_397
.label_396:
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ce0
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
	#Procedure 0x406cf0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d00

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
	je	.label_400
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_398
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_398
.label_400:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_399
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_398:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_6
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_401
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
.label_399:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_401:
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_2
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406e00

	.globl dir_name
	.type dir_name, @function
dir_name:
	lea	rsi, [rsi]
	push	rax
	mov	rbp, rbp
	call	mdir_name
	mov	rbp, rbp
	test	rax, rax
	je	.label_402
	pop	rcx
	ret	
.label_402:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x406e20
	.globl dir_len
	.type dir_len, @function
dir_len:

	push	r14
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rsi, [rsi]
	mov	rbx, rdi
	movzx	eax, byte ptr [rbx]
	nop	
	cmp	eax, 0x2f
	sete	al
	movzx	r14d, al
	call	last_component
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	sub	rcx, rbx
	nop	dword ptr [rax]
.label_404:
	lea	rdi, [rdi]
	mov	rax, rcx
	lea	rsi, [rsi]
	cmp	r14, rax
	mov	rsp, rsp
	jae	.label_403
	lea	rcx, [rax - 1]
	nop	
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	lea	rdi, [rdi]
	je	.label_404
.label_403:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406e90

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	r15
	mov	rbp, rbp
	push	r14
	push	rbx
	mov	r14, rdi
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2f
	mov	rsp, rsp
	sete	al
	mov	rbp, rbp
	movzx	r15d, al
	nop	
	call	last_component
	nop	
	sub	rax, r14
	nop	dword ptr [rax]
.label_407:
	mov	rbx, rax
	mov	rsp, rsp
	cmp	r15, rbx
	mov	rsp, rsp
	jae	.label_405
	lea	rax, [rbx - 1]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [r14 + rbx - 1]
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	je	.label_407
.label_405:
	test	rbx, rbx
	sete	al
	movzx	eax, al
	mov	rbp, rbp
	lea	rdi, [rbx + rax + 1]
	mov	rsp, rsp
	call	malloc
	nop	
	mov	r15, rax
	nop	
	xor	eax, eax
	mov	rsp, rsp
	test	r15, r15
	je	.label_406
	nop	
	mov	rdi, r15
	mov	rsp, rsp
	mov	rsi, r14
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	memcpy
	nop	
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_408
	lea	rdi, [rdi]
	mov	byte ptr [r15], 0x2e
	nop	
	mov	ebx, 1
.label_408:
	mov	rbp, rbp
	mov	byte ptr [r15 + rbx], 0
	mov	rax, r15
.label_406:
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	mov	rsp, rsp
	pop	r15
	nop	
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406f50

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_409:
	nop	
	movzx	edx, byte ptr [rdi + 1]
	lea	rdi, [rdi]
	inc	rdi
	cmp	edx, 0x2f
	mov	rbp, rbp
	je	.label_409
	xor	r8d, r8d
	mov	rax, rdi
	jmp	.label_410
	nop	dword ptr [rax + rax]
.label_411:
	mov	dl, byte ptr [rax + 1]
	mov	rbp, rbp
	inc	rax
	lea	rsi, [rsi]
	mov	r8b, cl
.label_410:
	mov	cl, 1
	movzx	esi, dl
	mov	rsp, rsp
	cmp	esi, 0x2f
	je	.label_411
	mov	rsp, rsp
	test	dl, dl
	mov	rbp, rbp
	je	.label_413
	mov	cl, r8b
	mov	rsp, rsp
	and	cl, 1
	je	.label_412
	xor	r8d, r8d
.label_412:
	lea	rsi, [rsi]
	test	cl, cl
	cmovne	rdi, rax
	mov	cl, r8b
	nop	
	jmp	.label_411
.label_413:
	mov	rsp, rsp
	mov	rax, rdi
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406fd0
	.globl base_len
	.type base_len, @function
base_len:

	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	call	strlen
	nop	
	mov	rcx, rax
.label_415:
	mov	rbp, rbp
	mov	rax, rcx
	lea	rsi, [rsi]
	cmp	rax, 2
	mov	rsp, rsp
	jb	.label_414
	lea	rdi, [rdi]
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_415
.label_414:
	lea	rsi, [rsi]
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407010

	.globl file_type
	.type file_type, @function
file_type:
	mov	eax, 0xf000
	and	eax, dword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	cmp	eax, 0x5fff
	jle	.label_421
	mov	rsp, rsp
	cmp	eax, 0x9fff
	jg	.label_416
	cmp	eax, 0x6000
	je	.label_419
	lea	rdi, [rdi]
	cmp	eax, 0x8000
	jne	.label_420
	mov	rbp, rbp
	cmp	qword ptr [rdi + 0x30], 0
	lea	rsi, [rsi]
	je	.label_423
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 5
	nop	
	jmp	dcgettext
.label_421:
	lea	rsi, [rsi]
	cmp	eax, 0x1000
	mov	rsp, rsp
	je	.label_418
	cmp	eax, 0x2000
	mov	rsp, rsp
	je	.label_422
	lea	rsi, [rsi]
	cmp	eax, 0x4000
	lea	rsi, [rsi]
	jne	.label_420
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_1
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	jmp	dcgettext
.label_416:
	mov	rsp, rsp
	cmp	eax, 0xa000
	je	.label_417
	lea	rsi, [rsi]
	cmp	eax, 0xc000
	jne	.label_420
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.10_1
	mov	edx, 5
	jmp	dcgettext
.label_419:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	jmp	dcgettext
.label_418:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_1
	mov	rsp, rsp
	mov	edx, 5
	mov	rsp, rsp
	jmp	dcgettext
.label_422:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_1
	lea	rsi, [rsi]
	mov	edx, 5
	jmp	dcgettext
.label_417:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_2
	nop	
	mov	edx, 5
	jmp	dcgettext
.label_420:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_1
	mov	edx, 5
	jmp	dcgettext
.label_423:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_7
	mov	edx, 5
	mov	rbp, rbp
	jmp	dcgettext
	nop	
	.section	.text
	.align	16
	#Procedure 0x407150

	.globl strmode
	.type strmode, @function
strmode:
	mov	eax, edi
	mov	rbp, rbp
	mov	ecx, eax
	and	ecx, 0xf000
	cmp	ecx, 0x5fff
	mov	rbp, rbp
	jle	.label_428
	lea	rdi, [rdi]
	cmp	ecx, 0x9fff
	mov	rbp, rbp
	jg	.label_436
	cmp	ecx, 0x6000
	je	.label_442
	lea	rdi, [rdi]
	mov	dl, 0x2d
	mov	rsp, rsp
	cmp	ecx, 0x8000
	lea	rsi, [rsi]
	je	.label_427
	mov	rbp, rbp
	jmp	.label_424
.label_428:
	cmp	ecx, 0x1000
	je	.label_430
	nop	
	cmp	ecx, 0x2000
	je	.label_432
	cmp	ecx, 0x4000
	jne	.label_424
	mov	dl, 0x64
	mov	rbp, rbp
	jmp	.label_427
.label_436:
	lea	rsi, [rsi]
	cmp	ecx, 0xa000
	mov	rbp, rbp
	je	.label_425
	lea	rdi, [rdi]
	cmp	ecx, 0xc000
	jne	.label_424
	nop	
	mov	dl, 0x73
	jmp	.label_427
.label_442:
	lea	rsi, [rsi]
	mov	dl, 0x62
	jmp	.label_427
.label_430:
	mov	rbp, rbp
	mov	dl, 0x70
	mov	rbp, rbp
	jmp	.label_427
.label_425:
	mov	dl, 0x6c
	jmp	.label_427
.label_424:
	mov	dl, 0x3f
	mov	rsp, rsp
	jmp	.label_427
.label_432:
	mov	rbp, rbp
	mov	dl, 0x63
.label_427:
	nop	
	push	rbx
	mov	byte ptr [rsi], dl
	lea	rsi, [rsi]
	mov	bl, ah
	lea	rsi, [rsi]
	test	bl, 1
	mov	r9b, 0x72
	mov	rbp, rbp
	mov	cl, 0x72
	jne	.label_441
	mov	cl, 0x2d
.label_441:
	mov	byte ptr [rsi + 1], cl
	nop	
	mov	cl, al
	sar	cl, 7
	and	cl, 0x4a
	lea	rsi, [rsi]
	add	cl, 0x2d
	mov	byte ptr [rsi + 2], cl
	mov	ecx, eax
	and	ecx, 0x40
	mov	edx, ecx
	mov	rbp, rbp
	shr	edx, 1
	lea	rsi, [rsi]
	or	edx, 0x53
	lea	rsi, [rsi]
	test	ecx, ecx
	mov	rbp, rbp
	mov	r8b, 0x78
	lea	rdi, [rdi]
	mov	cl, 0x78
	jne	.label_434
	mov	cl, 0x2d
.label_434:
	test	bl, 8
	jne	.label_426
	mov	rsp, rsp
	mov	dl, cl
.label_426:
	lea	rdi, [rdi]
	mov	byte ptr [rsi + 3], dl
	test	al, 0x20
	mov	cl, 0x72
	nop	
	jne	.label_429
	mov	cl, 0x2d
.label_429:
	mov	byte ptr [rsi + 4], cl
	test	al, 0x10
	mov	dl, 0x77
	mov	cl, 0x77
	jne	.label_435
	mov	rsp, rsp
	mov	cl, 0x2d
.label_435:
	mov	byte ptr [rsi + 5], cl
	mov	ecx, eax
	nop	
	and	ecx, 8
	lea	rsi, [rsi]
	lea	edi, [rcx*4 + 0x53]
	mov	cl, 0x78
	lea	rsi, [rsi]
	jne	.label_440
	nop	
	mov	cl, 0x2d
.label_440:
	mov	rsp, rsp
	test	bl, 4
	jne	.label_431
	lea	rdi, [rdi]
	mov	dil, cl
.label_431:
	lea	rsi, [rsi]
	mov	byte ptr [rsi + 6], dil
	test	al, 4
	jne	.label_433
	mov	r9b, 0x2d
.label_433:
	nop	
	mov	byte ptr [rsi + 7], r9b
	test	al, 2
	jne	.label_438
	mov	dl, 0x2d
.label_438:
	nop	
	mov	byte ptr [rsi + 8], dl
	and	eax, 1
	nop	
	jne	.label_437
	mov	rbp, rbp
	mov	r8b, 0x2d
.label_437:
	mov	rbp, rbp
	test	bl, 2
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	je	.label_439
	shl	eax, 5
	or	eax, 0x54
	mov	r8b, al
.label_439:
	mov	rbp, rbp
	mov	byte ptr [rsi + 9], r8b
	mov	byte ptr [rsi + 0xa], 0x20
	mov	byte ptr [rsi + 0xb], 0
	ret	
	.section	.text
	.align	16
	#Procedure 0x4072f0

	.globl filemodestring
	.type filemodestring, @function
filemodestring:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rdi + 0x18]
	nop	
	jmp	strmode
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407300

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	lea	rsi, [rsi]
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	lea	rsi, [rsi]
	js	.label_443
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
.label_446:
	lea	rdi, [rdi]
	mov	rax, rcx
	imul	r8
	mov	rbp, rbp
	mov	rax, rdx
	mov	rsp, rsp
	shr	rax, 0x3f
	sar	rdx, 2
	nop	
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	rdi, [rdi]
	lea	r9d, [rdi + rdi*4]
	nop	
	mov	edi, ecx
	sub	edi, r9d
	lea	rsi, [rsi]
	add	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	add	rdx, rax
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rbp, rbp
	mov	rcx, rdx
	ja	.label_446
	mov	rbp, rbp
	jmp	.label_445
.label_443:
	add	rsi, 0x15
	movabs	r8, 0x6666666666666667
.label_444:
	mov	rax, rcx
	imul	r8
	mov	r10, rdx
	shr	r10, 0x3f
	nop	
	sar	rdx, 2
	lea	edi, [rdx + r10]
	lea	rdi, [rdi]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	lea	rdi, [rdi]
	mov	edi, ecx
	sub	edi, r9d
	mov	eax, 0x30
	nop	
	sub	eax, edi
	nop	
	mov	byte ptr [rsi - 2], al
	add	rdx, r10
	mov	rbp, rbp
	add	rcx, 9
	dec	rsi
	mov	rsp, rsp
	cmp	rcx, 0x12
	mov	rcx, rdx
	mov	rsp, rsp
	ja	.label_444
	mov	rbp, rbp
	mov	byte ptr [rsi - 2], 0x2d
	mov	rsp, rsp
	add	rsi, -2
.label_445:
	nop	
	mov	rax, rsi
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4073f0

	.globl nstrftime
	.type nstrftime, @function
nstrftime:
	nop	
	sub	rsp, 0x18
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x10], r9d
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r8
	mov	dword ptr [rsp], 0xffffffff
	nop	
	xor	r8d, r8d
	lea	rdi, [rdi]
	xor	r9d, r9d
	lea	rdi, [rdi]
	call	__strftime_internal
	add	rsp, 0x18
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407430

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x4a8
	mov	dword ptr [rsp + 0x480], r8d
	mov	rbp, rbp
	mov	rbp, rdx
	mov	qword ptr [rsp + 0x48], rsi
	mov	eax, dword ptr [rcx + 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + 0x30]
	test	rdx, rdx
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str_0
	cmovne	rsi, rdx
	nop	
	lea	edx, [rax - 0xc]
	test	eax, eax
	mov	ebx, 0xc
	cmovne	ebx, eax
	mov	rbp, rbp
	cmp	eax, 0xc
	cmovg	ebx, edx
	mov	al, byte ptr [rbp]
	test	al, al
	mov	rsp, rsp
	je	.label_458
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x464], ebx
	mov	qword ptr [rsp + 0x478], rsi
	mov	qword ptr [rsp + 0x18], rcx
	mov	dword ptr [rsp + 0x484], r9d
	mov	r14d, dword ptr [rsp + 0x4e0]
	movabs	r15, 0x1000000000002500
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_478
.label_458:
	xor	esi, esi
	nop	
	jmp	.label_491
.label_519:
	mov	rbp, rbp
	mov	edi, 3
	jmp	.label_494
	nop	word ptr cs:[rax + rax]
.label_478:
	lea	rsi, [rsi]
	movzx	ecx, al
	xor	r12d, r12d
	cmp	ecx, 0x25
	jne	.label_501
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x458], rsi
	nop	
	mov	eax, dword ptr [rsp + 0x480]
	mov	rbp, rbp
	mov	bl, al
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	
	jmp	.label_537
	nop	word ptr cs:[rax + rax]
.label_501:
	mov	rbp, rbp
	test	r14d, r14d
	mov	rsp, rsp
	mov	ecx, r14d
	mov	rsp, rsp
	mov	edx, 0
	nop	
	cmovs	ecx, edx
	nop	
	movsxd	rbx, ecx
	lea	rdi, [rdi]
	cmp	ebx, 1
	mov	edx, 1
	nop	
	cmovbe	rbx, rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x48]
	sub	rdx, rsi
	mov	rbp, rbp
	cmp	rbx, rdx
	mov	rbp, rbp
	jae	.label_454
	mov	rsp, rsp
	test	rdi, rdi
	nop	
	mov	edx, 0
	mov	rsp, rsp
	je	.label_507
	lea	rsi, [rsi]
	cmp	ecx, 2
	mov	rsp, rsp
	jb	.label_521
	nop	
	movsxd	r14, r14d
	lea	rsi, [rsi]
	lea	rdx, [r14 - 1]
	mov	r12, rsi
	mov	esi, 0x20
	mov	r13, rdi
	nop	
	call	memset
	mov	rdi, r13
	mov	rsi, r12
	lea	rsi, [rsi]
	lea	rdi, [rdi + r14 - 1]
	mov	al, byte ptr [rbp]
.label_521:
	mov	rsp, rsp
	mov	byte ptr [rdi], al
.label_533:
	inc	rdi
	mov	rsp, rsp
	mov	rdx, rdi
.label_507:
	add	rsi, rbx
	mov	rdi, rdx
	nop	
	jmp	.label_576
	nop	dword ptr [rax]
.label_545:
	lea	rdi, [rdi]
	mov	r12b, 1
	mov	rsp, rsp
	mov	al, bl
	nop	
	jmp	.label_537
	nop	
.label_544:
	inc	rbp
	nop	
	mov	r13d, edx
.label_553:
	mov	cl, byte ptr [rbp]
	movsx	edx, cl
	lea	rsi, [rsi]
	lea	esi, [rdx - 0x23]
	cmp	esi, 0x3c
	lea	rsi, [rsi]
	ja	.label_547
	bt	r15, rsi
	jb	.label_544
	mov	al, 1
	lea	rdi, [rdi]
	test	rsi, rsi
	nop	
	je	.label_545
	mov	rbp, rbp
	cmp	rsi, 0x3b
	mov	rbp, rbp
	jne	.label_547
.label_537:
	lea	rsi, [rsi]
	mov	bl, al
	lea	rdi, [rdi]
	inc	rbp
	jmp	.label_553
	nop	word ptr cs:[rax + rax]
.label_547:
	nop	
	mov	qword ptr [rsp + 0x40], rdi
	add	edx, -0x30
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	edx, 9
	nop	
	ja	.label_557
	nop	word ptr [rax + rax]
.label_569:
	lea	rsi, [rsi]
	mov	r14d, 0x7fffffff
	mov	rbp, rbp
	cmp	eax, 0xccccccc
	lea	rdi, [rdi]
	jg	.label_564
	movsx	ecx, cl
	cmp	eax, 0xccccccc
	jne	.label_567
	mov	rsp, rsp
	lea	edx, [rcx - 0x30]
	lea	rdi, [rdi]
	cmp	edx, 7
	jg	.label_564
.label_567:
	lea	eax, [rax + rax*4]
	lea	r14d, [rcx + rax*2 - 0x30]
.label_564:
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rbp + 1]
	nop	
	inc	rbp
	mov	eax, ecx
	mov	rbp, rbp
	add	eax, -0x30
	mov	rbp, rbp
	cmp	eax, 0xa
	mov	rsp, rsp
	mov	eax, r14d
	lea	rdi, [rdi]
	jb	.label_569
.label_557:
	mov	rbp, rbp
	movsx	r9d, cl
	cmp	r9d, 0x4f
	lea	rsi, [rsi]
	je	.label_572
	lea	rsi, [rsi]
	cmp	r9d, 0x45
	jne	.label_573
.label_572:
	mov	qword ptr [rsp + 0x488], rbx
	nop	
	mov	cl, byte ptr [rbp + 1]
	lea	rdi, [rdi]
	inc	rbp
	jmp	.label_577
.label_573:
	nop	
	mov	qword ptr [rsp + 0x488], rbx
	xor	r9d, r9d
.label_577:
	movsx	r11d, cl
	xor	ebx, ebx
	mov	esi, 1
	lea	rdi, [rdi]
	lea	edx, [r11 - 0x25]
	mov	rsp, rsp
	cmp	edx, 0x55
	lea	rsi, [rsi]
	ja	.label_582
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str.3_3
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x498], rax
	nop	
	mov	r8b, 0x72
	mov	r10d, 0xffffffff
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	xor	edi, edi
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_586]]
.label_1086:
	mov	r10d, r9d
	cmp	r10d, 0x45
	lea	rsi, [rsi]
	je	.label_482
	mov	rdx, qword ptr [rsp + 0x18]
	mov	r8d, dword ptr [rdx + 0x14]
	mov	rsp, rsp
	mov	r9d, dword ptr [rdx + 0x18]
	mov	rsp, rsp
	mov	eax, r8d
	mov	rsp, rsp
	sar	eax, 0x1f
	and	eax, 0x190
	nop	
	lea	r12d, [r8 + rax - 0x64]
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rdx + 0x1c]
	mov	rbp, rbp
	lea	eax, [rbx + 0x17e]
	sub	eax, r9d
	movsxd	rdx, eax
	mov	rbp, rbp
	imul	rax, rdx, -0x6db6db6d
	shr	rax, 0x20
	add	eax, edx
	mov	edi, eax
	mov	rbp, rbp
	shr	edi, 0x1f
	sar	eax, 2
	lea	rsi, [rsi]
	add	eax, edi
	lea	edi, [rax*8]
	mov	rsp, rsp
	sub	edi, eax
	sub	edx, edi
	lea	eax, [rbx + 3]
	sub	eax, edx
	js	.label_595
	mov	edx, 0x16d
	nop	
	test	r12b, 3
	nop	
	jne	.label_613
	mov	rbp, rbp
	movsxd	rdx, r12d
	lea	rsi, [rsi]
	imul	rdx, rdx, 0x51eb851f
	lea	rdi, [rdi]
	mov	rdi, rdx
	sar	rdi, 0x25
	lea	rdi, [rdi]
	mov	rsi, rdx
	mov	rbp, rbp
	shr	rsi, 0x3f
	add	edi, esi
	imul	edi, edi, 0x64
	sar	rdx, 0x27
	lea	rdi, [rdi]
	add	edx, esi
	imul	edx, edx, 0x190
	cmp	r12d, edx
	lea	rdi, [rdi]
	sete	dl
	movzx	esi, dl
	add	esi, 0x16d
	nop	
	cmp	r12d, edi
	mov	edx, 0x16e
	cmove	edx, esi
.label_613:
	sub	ebx, edx
	lea	edx, [rbx + 0x17e]
	lea	rsi, [rsi]
	sub	edx, r9d
	nop	
	movsxd	rdx, edx
	imul	rsi, rdx, -0x6db6db6d
	nop	
	shr	rsi, 0x20
	add	esi, edx
	nop	
	mov	edi, esi
	mov	rbp, rbp
	shr	edi, 0x1f
	lea	rsi, [rsi]
	sar	esi, 2
	mov	rsp, rsp
	add	esi, edi
	lea	edi, [rsi*8]
	sub	edi, esi
	mov	rbp, rbp
	sub	edx, edi
	nop	
	add	ebx, 3
	sub	ebx, edx
	cmovns	eax, ebx
	nop	
	shr	ebx, 0x1f
	xor	ebx, 1
	mov	rbp, rbp
	jmp	.label_456
	nop	word ptr [rax + rax]
.label_477:
	inc	rsi
.label_1080:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp + rsi]
	cmp	eax, 0x3a
	je	.label_477
	movzx	eax, al
	cmp	eax, 0x7a
	jne	.label_482
	lea	rsi, [rsi]
	add	rbp, rsi
	mov	rbx, rsi
.label_1117:
	nop	
	mov	rax, qword ptr [rsp + 0x18]
	cmp	dword ptr [rax + 0x20], 0
	js	.label_487
	mov	r8d, dword ptr [rax + 0x28]
	mov	sil, 1
	lea	rdi, [rdi]
	test	r8d, r8d
	mov	rsp, rsp
	js	.label_490
	test	r8d, r8d
	nop	
	je	.label_495
	mov	rsp, rsp
	xor	esi, esi
	jmp	.label_490
.label_1100:
	test	r12b, r12b
	je	.label_500
	mov	al, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x488], rax
.label_500:
	xor	eax, eax
	cmp	r9d, 0x45
	je	.label_482
	lea	rdi, [rdi]
	mov	r8b, cl
	mov	rsp, rsp
	jmp	.label_462
.label_582:
	lea	rsi, [rsi]
	test	r11d, r11d
	nop	
	jne	.label_482
	mov	rsp, rsp
	dec	rbp
	lea	rdi, [rdi]
	jmp	.label_482
.label_1079:
	mov	rbp, rbp
	test	r9d, r9d
	lea	rsi, [rsi]
	jne	.label_482
	xor	eax, eax
	test	r14d, r14d
	nop	
	cmovns	eax, r14d
	movsxd	rdx, eax
	cmp	edx, 1
	mov	rsp, rsp
	mov	ebx, 1
	nop	
	cmova	rbx, rdx
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x458]
	sub	rdx, rsi
	nop	
	cmp	rbx, rdx
	mov	rdi, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	jae	.label_454
	xor	edx, edx
	test	rdi, rdi
	je	.label_507
	cmp	eax, 2
	mov	rbp, rbp
	jb	.label_522
	movsxd	r14, r14d
	dec	r14
	cmp	r13d, 0x30
	je	.label_526
	cmp	r13d, 0x2b
	mov	rsp, rsp
	jne	.label_528
.label_526:
	mov	r12, rsi
	mov	esi, 0x30
	jmp	.label_530
.label_1081:
	lea	rdi, [rdi]
	test	r9d, r9d
	nop	
	jne	.label_482
	lea	rdi, [rdi]
	test	r12b, r12b
	je	.label_534
	mov	al, 1
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x488], rax
.label_534:
	xor	eax, eax
	mov	r8b, 0x41
	nop	
	jmp	.label_462
.label_1082:
	cmp	r9d, 0x45
	je	.label_482
	nop	
	test	r12b, r12b
	je	.label_542
	mov	al, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x488], rax
.label_542:
	xor	eax, eax
	mov	r8b, 0x42
	nop	
	jmp	.label_462
.label_1083:
	mov	rsp, rsp
	mov	r10d, r9d
	cmp	r10d, 0x45
	jne	.label_546
	mov	rbp, rbp
	mov	r9d, r10d
	mov	rsp, rsp
	xor	eax, eax
	mov	r8b, 0x43
	jmp	.label_462
.label_1084:
	test	r9d, r9d
	nop	
	jne	.label_482
	nop	
	mov	eax, OFFSET FLAT:.str.1_4
	mov	qword ptr [rsp + 0x498], rax
	lea	rsi, [rsi]
	mov	r10d, 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_559
.label_1085:
	test	r9d, r9d
	jne	.label_482
	lea	rsi, [rsi]
	test	r13d, r13d
	jne	.label_566
	test	r14d, r14d
	mov	rbp, rbp
	jns	.label_566
	mov	eax, OFFSET FLAT:.str.2_2
	mov	qword ptr [rsp + 0x498], rax
	mov	rbp, rbp
	mov	r13d, 0x2b
	mov	r10d, 4
	mov	rbp, rbp
	jmp	.label_559
.label_1087:
	mov	rbp, rbp
	mov	r10d, r9d
	lea	rdi, [rdi]
	cmp	r10d, 0x45
	je	.label_482
	mov	rax, qword ptr [rsp + 0x18]
	mov	edx, dword ptr [rax + 8]
	mov	rbp, rbp
	jmp	.label_448
.label_1088:
	nop	
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_482
	mov	edi, 2
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x464]
	mov	edx, eax
	lea	rsi, [rsi]
	jmp	.label_560
.label_1089:
	mov	r10d, r9d
	cmp	r10d, 0x45
	lea	rsi, [rsi]
	je	.label_482
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x18]
	mov	edx, dword ptr [rax + 4]
	jmp	.label_448
.label_1090:
	mov	r10d, r9d
	lea	rsi, [rsi]
	cmp	r10d, 0x45
	nop	
	je	.label_482
	lea	rsi, [rsi]
	cmp	r14d, -1
	je	.label_600
	lea	rsi, [rsi]
	cmp	r14d, 8
	jg	.label_589
	mov	esi, 9
	sub	esi, r14d
	nop	
	mov	eax, 8
	lea	rdi, [rdi]
	sub	eax, r14d
	nop	
	test	sil, 3
	mov	edx, dword ptr [rsp + 0x4f0]
	lea	rdi, [rdi]
	mov	ebx, r14d
	mov	rbp, rbp
	je	.label_592
	and	esi, 3
	neg	esi
	mov	edx, dword ptr [rsp + 0x4f0]
	lea	rdi, [rdi]
	mov	ebx, r14d
	nop	dword ptr [rax]
.label_601:
	movsxd	rdx, edx
	imul	rdx, rdx, 0x66666667
	mov	rdi, rdx
	mov	rbp, rbp
	shr	rdi, 0x3f
	lea	rdi, [rdi]
	sar	rdx, 0x22
	mov	rsp, rsp
	add	edx, edi
	inc	ebx
	inc	esi
	lea	rdi, [rdi]
	jne	.label_601
.label_592:
	cmp	eax, 3
	lea	rsi, [rsi]
	jae	.label_541
	mov	edi, r14d
	jmp	.label_560
.label_1091:
	mov	rsp, rsp
	mov	dil, 1
.label_1109:
	xor	ebx, ebx
	test	r12b, r12b
	lea	rsi, [rsi]
	je	.label_612
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x488], rax
.label_612:
	je	.label_615
	mov	rbp, rbp
	mov	dil, 1
.label_615:
	mov	r8b, 0x70
	lea	rdi, [rdi]
	mov	al, dil
	mov	rsp, rsp
	jmp	.label_525
.label_1092:
	mov	r10d, r9d
	mov	rbp, rbp
	cmp	r10d, 0x45
	je	.label_482
	mov	rax, qword ptr [rsp + 0x18]
	mov	edx, dword ptr [rax]
	jmp	.label_448
.label_1093:
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str.4_2
.label_552:
	nop	
	mov	qword ptr [rsp + 0x498], rax
.label_559:
	mov	dword ptr [rsp + 0x4a0], r10d
	mov	rax, qword ptr [rsp + 0x488]
	lea	rdi, [rdi]
	test	al, al
	setne	al
	mov	ecx, dword ptr [rsp + 0x4f0]
	mov	dword ptr [rsp + 0x10], ecx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x4e8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rcx
	mov	rsp, rsp
	mov	dword ptr [rsp], r10d
	movzx	r8d, al
	xor	ebx, ebx
	xor	edi, edi
	nop	
	mov	rsi, -1
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x498]
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	r9d, r13d
	call	__strftime_internal
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	test	r14d, r14d
	lea	rdi, [rdi]
	cmovns	ebx, r14d
	mov	rbp, rbp
	movsxd	rdx, ebx
	mov	rsp, rsp
	cmp	rax, rdx
	lea	rsi, [rsi]
	mov	rbx, rax
	cmovb	rbx, rdx
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x458]
	nop	
	sub	r12, rsi
	lea	rdi, [rdi]
	cmp	rbx, r12
	jae	.label_454
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_468
	cmp	rax, rdx
	lea	rdi, [rdi]
	jae	.label_497
	movsxd	rcx, r14d
	lea	rdi, [rdi]
	sub	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x468], rax
	mov	rsp, rsp
	cmp	r13d, 0x30
	je	.label_499
	lea	rsi, [rsi]
	cmp	r13d, 0x2b
	mov	rbp, rbp
	jne	.label_503
.label_499:
	mov	esi, 0x30
	jmp	.label_506
.label_1094:
	mov	r10d, r9d
	lea	rsi, [rsi]
	cmp	r10d, 0x45
	mov	rsp, rsp
	je	.label_482
	mov	rdx, qword ptr [rsp + 0x18]
	nop	
	mov	eax, dword ptr [rdx + 0x1c]
	add	eax, 7
	sub	eax, dword ptr [rdx + 0x18]
	lea	rsi, [rsi]
	movsxd	rdx, eax
	lea	rsi, [rsi]
	jmp	.label_591
.label_1095:
	mov	rbp, rbp
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_482
	mov	rdx, qword ptr [rsp + 0x18]
	nop	
	mov	eax, dword ptr [rdx + 0x18]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rdx + 0x1c]
	lea	esi, [rax + 6]
	movsxd	rsi, esi
	lea	rsi, [rsi]
	imul	rdi, rsi, -0x6db6db6d
	shr	rdi, 0x20
	lea	eax, [rdi + rax + 6]
	lea	rdi, [rdi]
	mov	edi, eax
	lea	rsi, [rsi]
	shr	edi, 0x1f
	sar	eax, 2
	add	eax, edi
	lea	rsi, [rsi]
	lea	edi, [rax*8]
	sub	edi, eax
	sub	esi, edi
	lea	rdi, [rdi]
	add	edx, 7
	mov	rsp, rsp
	sub	edx, esi
	movsxd	rdx, edx
.label_591:
	imul	rax, rdx, -0x6db6db6d
	lea	rdi, [rdi]
	shr	rax, 0x20
	add	edx, eax
	mov	rsp, rsp
	mov	eax, edx
	shr	eax, 0x1f
	lea	rdi, [rdi]
	sar	edx, 2
	mov	rsp, rsp
	add	edx, eax
	jmp	.label_448
.label_1096:
	cmp	r9d, 0x4f
	je	.label_482
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	r8b, 0x58
	jmp	.label_462
.label_1097:
	lea	rsi, [rsi]
	mov	r10d, r9d
	cmp	r10d, 0x45
	mov	rbp, rbp
	je	.label_540
	mov	rbp, rbp
	cmp	r10d, 0x4f
	mov	rbp, rbp
	je	.label_482
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rax + 0x14]
	cmp	edx, 0xfffff894
	setl	sil
	nop	
	add	edx, 0x76c
	nop	
	mov	edi, 4
	jmp	.label_475
.label_1098:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x478]
	nop	
	call	strlen
	mov	rdi, qword ptr [rsp + 0x40]
	mov	r9, rax
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	mov	rsp, rsp
	cdqe	
	lea	rsi, [rsi]
	cmp	r9, rax
	mov	rbx, r9
	cmovb	rbx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x458]
	mov	rsp, rsp
	sub	rcx, rsi
	mov	rsp, rsp
	cmp	rbx, rcx
	jae	.label_454
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_468
	nop	
	cmp	r9, rax
	nop	
	jae	.label_570
	lea	rsi, [rsi]
	movsxd	r14, r14d
	lea	rsi, [rsi]
	sub	r14, r9
	mov	qword ptr [rsp + 0x498], r9
	cmp	r13d, 0x30
	lea	rsi, [rsi]
	je	.label_571
	cmp	r13d, 0x2b
	lea	rdi, [rdi]
	jne	.label_575
.label_571:
	mov	esi, 0x30
	jmp	.label_579
.label_1099:
	test	r9d, r9d
	lea	rsi, [rsi]
	jne	.label_482
	nop	
	test	r12b, r12b
	je	.label_580
	mov	al, 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x488], rax
.label_580:
	xor	eax, eax
	mov	r8b, 0x61
	jmp	.label_462
.label_1101:
	cmp	r9d, 0x4f
	je	.label_482
	xor	eax, eax
	nop	
	mov	r8b, 0x63
	jmp	.label_462
.label_1102:
	mov	r10d, r9d
	nop	
	cmp	r10d, 0x45
	lea	rsi, [rsi]
	je	.label_482
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	nop	
	mov	edx, dword ptr [rax + 0xc]
	lea	rsi, [rsi]
	jmp	.label_448
.label_1103:
	mov	r10d, r9d
	mov	rbp, rbp
	cmp	r10d, 0x45
	je	.label_482
	mov	rax, qword ptr [rsp + 0x18]
	mov	edx, dword ptr [rax + 0xc]
	mov	rbp, rbp
	jmp	.label_596
.label_1104:
	mov	rsp, rsp
	mov	r10d, r9d
	lea	rdi, [rdi]
	cmp	r10d, 0x45
	je	.label_482
	mov	rax, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax + 0x1c]
	cmp	edx, -1
	setl	sil
	mov	rsp, rsp
	inc	edx
	mov	edi, 3
	jmp	.label_599
.label_1105:
	nop	
	mov	r10d, r9d
	nop	
	cmp	r10d, 0x45
	je	.label_482
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	edx, dword ptr [rax + 8]
	nop	
	jmp	.label_596
.label_1106:
	mov	r10d, r9d
	cmp	r10d, 0x45
	mov	eax, dword ptr [rsp + 0x464]
	nop	
	mov	edx, eax
	lea	rdi, [rdi]
	je	.label_482
.label_596:
	test	r13d, r13d
	mov	eax, 0x5f
	lea	rdi, [rdi]
	cmove	r13d, eax
	lea	rdi, [rdi]
	jmp	.label_448
.label_1107:
	mov	rbp, rbp
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_482
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x18]
	nop	
	mov	edx, dword ptr [rax + 0x10]
	cmp	edx, -1
	lea	rdi, [rdi]
	setl	sil
	inc	edx
	lea	rsi, [rsi]
	mov	edi, 2
	mov	rbp, rbp
	jmp	.label_599
.label_1108:
	xor	eax, eax
	nop	
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	lea	rdi, [rdi]
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	nop	
	mov	rsi, qword ptr [rsp + 0x458]
	nop	
	sub	rcx, rsi
	cmp	rbx, rcx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	jae	.label_454
	lea	rsi, [rsi]
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_468
	cmp	eax, 2
	jb	.label_471
	mov	r12, rsi
	lea	rdi, [rdi]
	movsxd	r14, r14d
	mov	rsp, rsp
	dec	r14
	cmp	r13d, 0x30
	je	.label_472
	cmp	r13d, 0x2b
	nop	
	jne	.label_476
.label_472:
	mov	esi, 0x30
	jmp	.label_479
.label_1110:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x18]
	nop	
	imul	edx, dword ptr [rax + 0x10], 0xb
	lea	rsi, [rsi]
	sar	edx, 5
	inc	edx
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rbp, rbp
	xor	ebx, ebx
	lea	rdi, [rdi]
	xor	r8d, r8d
	xor	esi, esi
	mov	r10d, r9d
	jmp	.label_485
.label_1111:
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rcx + 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x80], rax
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rcx]
	nop	
	movups	xmm1, xmmword ptr [rcx + 0x10]
	movups	xmm2, xmmword ptr [rcx + 0x20]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x70], xmm2
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm0
	mov	rbp, rbp
	lea	rsi, [rsp + 0x50]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x4e8]
	lea	rdi, [rdi]
	call	mktime_z
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	mov	rsi, rcx
	shr	rsi, 0x3f
	mov	rbp, rbp
	lea	r12, [rsp + 0x37]
	nop	word ptr cs:[rax + rax]
.label_513:
	nop	
	movabs	rdx, 0x6666666666666667
	mov	rax, rcx
	mov	rsp, rsp
	imul	rdx
	lea	rsi, [rsi]
	mov	rax, rdx
	mov	rbp, rbp
	shr	rax, 0x3f
	lea	rdi, [rdi]
	sar	rdx, 2
	lea	edi, [rdx + rax]
	lea	rdi, [rdi]
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	mov	ebx, ecx
	sub	ebx, edi
	add	rdx, rax
	mov	eax, ebx
	lea	rdi, [rdi]
	neg	eax
	mov	rsp, rsp
	test	rsi, rsi
	cmove	eax, ebx
	add	eax, 0x30
	lea	rdi, [rdi]
	mov	byte ptr [r12 - 1], al
	dec	r12
	mov	rsp, rsp
	add	rcx, 9
	cmp	rcx, 0x12
	lea	rdi, [rdi]
	mov	rcx, rdx
	ja	.label_513
	mov	r10d, 1
	nop	
	xor	r8d, r8d
	mov	rsp, rsp
	jmp	.label_532
.label_1112:
	xor	eax, eax
	mov	rsp, rsp
	test	r14d, r14d
	cmovns	eax, r14d
	mov	rbp, rbp
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	mov	rbp, rbp
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x458]
	mov	rbp, rbp
	sub	rcx, rsi
	lea	rdi, [rdi]
	cmp	rbx, rcx
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	jae	.label_454
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_468
	lea	rsi, [rsi]
	cmp	eax, 2
	jb	.label_549
	mov	r12, rsi
	lea	rsi, [rsi]
	movsxd	r14, r14d
	nop	
	dec	r14
	cmp	r13d, 0x30
	je	.label_554
	cmp	r13d, 0x2b
	mov	rsp, rsp
	jne	.label_558
.label_554:
	mov	esi, 0x30
	nop	
	jmp	.label_515
.label_1113:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 0x18]
	lea	edx, [rax + 6]
	mov	rbp, rbp
	movsxd	rdx, edx
	lea	rsi, [rsi]
	imul	rsi, rdx, -0x6db6db6d
	mov	rbp, rbp
	shr	rsi, 0x20
	mov	rbp, rbp
	lea	eax, [rsi + rax + 6]
	mov	esi, eax
	shr	esi, 0x1f
	sar	eax, 2
	add	eax, esi
	lea	esi, [rax*8]
	sub	esi, eax
	nop	
	sub	edx, esi
	inc	edx
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rbp, rbp
	mov	r10d, r9d
	jmp	.label_560
.label_1114:
	mov	r10d, r9d
	cmp	r10d, 0x45
	mov	rbp, rbp
	je	.label_482
	mov	rax, qword ptr [rsp + 0x18]
	mov	edx, dword ptr [rax + 0x18]
	mov	edi, 1
	lea	rsi, [rsi]
	jmp	.label_560
.label_1115:
	mov	rbp, rbp
	cmp	r9d, 0x4f
	lea	rdi, [rdi]
	je	.label_482
	mov	rsp, rsp
	xor	eax, eax
	mov	r8b, 0x78
	mov	rbp, rbp
	jmp	.label_462
.label_1116:
	lea	rdi, [rdi]
	mov	r10d, r9d
	lea	rsi, [rsi]
	cmp	r10d, 0x45
	jne	.label_583
	mov	r9d, r10d
	xor	eax, eax
	lea	rdi, [rdi]
	mov	r8b, 0x79
	lea	rsi, [rsi]
	jmp	.label_462
.label_497:
	nop	
	mov	qword ptr [rsp + 0x468], rax
	lea	rdi, [rdi]
	jmp	.label_587
.label_595:
	dec	r12d
	mov	eax, 0x16d
	test	r12b, 3
	jne	.label_588
	mov	rsp, rsp
	movsxd	rax, r12d
	imul	rax, rax, 0x51eb851f
	mov	rdx, rax
	sar	rdx, 0x25
	mov	rdi, rax
	shr	rdi, 0x3f
	mov	rbp, rbp
	add	edx, edi
	mov	rbp, rbp
	imul	edx, edx, 0x64
	sar	rax, 0x27
	add	eax, edi
	imul	eax, eax, 0x190
	lea	rsi, [rsi]
	cmp	r12d, eax
	sete	al
	movzx	edi, al
	nop	
	add	edi, 0x16d
	cmp	r12d, edx
	mov	eax, 0x16e
	lea	rsi, [rsi]
	cmove	eax, edi
.label_588:
	lea	edx, [rax + rbx + 0x17e]
	sub	edx, r9d
	lea	rsi, [rsi]
	movsxd	rdx, edx
	mov	rsp, rsp
	imul	rsi, rdx, -0x6db6db6d
	shr	rsi, 0x20
	lea	rsi, [rsi]
	add	esi, edx
	lea	rsi, [rsi]
	mov	edi, esi
	lea	rdi, [rdi]
	shr	edi, 0x1f
	sar	esi, 2
	add	esi, edi
	nop	
	lea	edi, [rsi*8]
	nop	
	sub	edi, esi
	mov	rsp, rsp
	sub	edx, edi
	mov	rbp, rbp
	lea	eax, [rax + rbx + 3]
	sub	eax, edx
	mov	ebx, 0xffffffff
.label_456:
	mov	rbp, rbp
	cmp	r11d, 0x47
	je	.label_616
	cmp	r11d, 0x67
	jne	.label_617
	lea	rdi, [rdi]
	movsxd	rax, r8d
	nop	
	imul	rax, rax, 0x51eb851f
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rsi, [rsi]
	shr	rdx, 0x3f
	nop	
	sar	rax, 0x25
	add	eax, edx
	nop	
	imul	eax, eax, 0x64
	mov	edx, r8d
	lea	rdi, [rdi]
	sub	edx, eax
	add	edx, ebx
	mov	rbp, rbp
	movsxd	rdx, edx
	imul	rax, rdx, 0x51eb851f
	mov	rbp, rbp
	mov	rsi, rax
	shr	rsi, 0x3f
	sar	rax, 0x25
	lea	rdi, [rdi]
	add	eax, esi
	nop	
	imul	eax, eax, 0x64
	sub	edx, eax
	mov	edi, 2
	jns	.label_619
	mov	eax, 0xfffff894
	mov	rsp, rsp
	sub	eax, ebx
	mov	esi, edx
	lea	rsi, [rsi]
	neg	esi
	mov	rbp, rbp
	add	edx, 0x64
	mov	rsp, rsp
	cmp	r8d, eax
	nop	
	jmp	.label_465
.label_487:
	mov	rsi, qword ptr [rsp + 0x458]
	mov	rdi, qword ptr [rsp + 0x40]
	jmp	.label_576
.label_546:
	mov	rax, qword ptr [rsp + 0x18]
	movsxd	rax, dword ptr [rax + 0x14]
	cmp	rax, -0x76c
	setl	sil
	setg	bl
	nop	
	imul	rdx, rax, 0x51eb851f
	lea	rsi, [rsi]
	mov	rdi, rdx
	shr	rdi, 0x3f
	sar	rdx, 0x25
	mov	rsp, rsp
	add	edx, edi
	imul	edi, edx, 0x64
	cmp	eax, edi
	nop	
	sets	al
	and	al, bl
	movzx	eax, al
	sub	edx, eax
	add	edx, 0x13
	mov	edi, 2
	mov	rsp, rsp
	jmp	.label_475
.label_583:
	mov	rax, qword ptr [rsp + 0x18]
	movsxd	rax, dword ptr [rax + 0x14]
	imul	rdx, rax, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	mov	rbp, rbp
	add	edx, esi
	mov	rsp, rsp
	imul	esi, edx, 0x64
	mov	edx, eax
	mov	rbp, rbp
	mov	edi, 2
	mov	rsp, rsp
	sub	edx, esi
	lea	rdi, [rdi]
	js	.label_496
.label_619:
	nop	
	xor	esi, esi
	lea	rdi, [rdi]
	jmp	.label_475
.label_616:
	mov	rsp, rsp
	mov	eax, 0xfffff894
	lea	rsi, [rsi]
	sub	eax, ebx
	cmp	r8d, eax
	setl	sil
	mov	rsp, rsp
	lea	edx, [rbx + r8 + 0x76c]
	mov	edi, 4
	mov	rsp, rsp
	jmp	.label_475
.label_617:
	lea	rdi, [rdi]
	cdqe	
	nop	
	imul	rdx, rax, -0x6db6db6d
	shr	rdx, 0x20
	add	eax, edx
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rbp, rbp
	sar	edx, 2
	lea	rsi, [rsi]
	shr	eax, 0x1f
	lea	edx, [rdx + rax + 1]
.label_448:
	mov	edi, 2
.label_560:
	mov	esi, edx
	shr	esi, 0x1f
.label_599:
	xor	ebx, ebx
	xor	r8d, r8d
.label_485:
	cmp	r10d, 0x4f
	jne	.label_516
	test	sil, sil
	mov	rbp, rbp
	jne	.label_516
	mov	rsp, rsp
	mov	r9d, r10d
	xor	eax, eax
	mov	rsp, rsp
	mov	r8b, cl
	lea	rdi, [rdi]
	mov	rbx, rdi
	nop	
	jmp	.label_525
.label_516:
	lea	rsi, [rsi]
	mov	r10, rdi
	lea	rdi, [rdi]
	mov	eax, edx
	neg	eax
	test	sil, sil
	mov	rsp, rsp
	cmove	eax, edx
	lea	rdi, [rdi]
	lea	r12, [rsp + 0x37]
	nop	
.label_550:
	test	bl, 1
	mov	rsp, rsp
	je	.label_535
	lea	rsi, [rsi]
	mov	byte ptr [r12 - 1], 0x3a
	lea	rdi, [rdi]
	dec	r12
.label_535:
	sar	ebx, 1
	mov	edi, eax
	mov	rbp, rbp
	mov	edx, 0xcccccccd
	imul	rdx, rdi
	shr	rdx, 0x23
	lea	edi, [rdx + rdx]
	mov	rbp, rbp
	lea	edi, [rdi + rdi*4]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	sub	ecx, edi
	nop	
	or	ecx, 0x30
	lea	rdi, [rdi]
	mov	byte ptr [r12 - 1], cl
	dec	r12
	cmp	eax, 9
	mov	eax, edx
	ja	.label_550
	lea	rsi, [rsi]
	test	ebx, ebx
	lea	rsi, [rsi]
	mov	eax, edx
	jne	.label_550
.label_532:
	nop	
	mov	rdi, qword ptr [rsp + 0x40]
	cmp	r10d, r14d
	cmovl	r10d, r14d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x498], r10
	mov	rsp, rsp
	test	r8b, r8b
	je	.label_536
	mov	r8b, 0x2b
.label_536:
	mov	rsp, rsp
	test	sil, sil
	mov	r9b, 0x2d
	lea	rdi, [rdi]
	jne	.label_562
	mov	r9b, r8b
.label_562:
	cmp	r13d, 0x2d
	mov	rsi, qword ptr [rsp + 0x458]
	mov	rsp, rsp
	jne	.label_565
	test	r9b, r9b
	je	.label_502
	xor	eax, eax
	mov	rbp, rbp
	test	r14d, r14d
	mov	rsp, rsp
	cmovns	eax, r14d
	nop	
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	rbp, rbp
	mov	ebx, 1
	cmova	rbx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, rsi
	cmp	rbx, rcx
	jae	.label_454
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_510
	nop	
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x498]
	nop	
	test	ecx, ecx
	jne	.label_512
	test	al, al
	nop	
	jne	.label_512
	movsxd	rax, r14d
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x468], rax
	mov	rbp, rbp
	lea	rdx, [rax - 1]
	mov	esi, 0x20
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x4a0], r9b
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], rdi
	nop	
	call	memset
	lea	rsi, [rsi]
	mov	r9b, byte ptr [rsp + 0x4a0]
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 0x458]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x468]
	lea	rdi, [rdi + rax - 1]
	jmp	.label_512
.label_565:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x498]
	lea	rdi, [rdi]
	cdqe	
	mov	rcx, r12
	lea	rdx, [rsp + 0x37]
	lea	rsi, [rsi]
	sub	rcx, rdx
	mov	dl, r9b
	neg	dl
	mov	rbp, rbp
	sbb	rbx, rbx
	mov	rbp, rbp
	add	rbx, rcx
	add	rbx, rax
	test	ebx, ebx
	mov	rbp, rbp
	jle	.label_594
	lea	rsi, [rsi]
	cmp	r13d, 0x5f
	jne	.label_603
	movsxd	rdx, ebx
	mov	rax, qword ptr [rsp + 0x48]
	nop	
	sub	rax, rsi
	cmp	rdx, rax
	lea	rdi, [rdi]
	jae	.label_454
	xor	r10d, r10d
	mov	rsp, rsp
	test	rdi, rdi
	mov	rbp, rbp
	mov	r8d, 0
	lea	rsi, [rsi]
	je	.label_608
	mov	rsp, rsp
	mov	esi, 0x20
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x4a0], r9b
	mov	qword ptr [rsp + 0x468], rdx
	call	memset
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x468]
	xor	r10d, r10d
	mov	r9b, byte ptr [rsp + 0x4a0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x458]
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x40]
	add	rax, rdx
	lea	rdi, [rdi]
	mov	r8, rax
.label_608:
	nop	
	add	rsi, rdx
	sub	r14d, ebx
	cmovg	r10d, r14d
	test	r9b, r9b
	je	.label_451
	xor	eax, eax
	test	r10d, r10d
	cmovns	eax, r10d
	movsxd	rcx, eax
	nop	
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	nop	
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, rsi
	nop	
	cmp	rbx, rcx
	mov	rbp, rbp
	jae	.label_454
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	test	r8, r8
	nop	
	je	.label_581
	cmp	eax, 2
	mov	rsp, rsp
	setb	al
	mov	rcx, qword ptr [rsp + 0x498]
	mov	rbp, rbp
	test	ecx, ecx
	jne	.label_470
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x4a0], r9b
	test	al, al
	mov	rbp, rbp
	jne	.label_474
	nop	
	movsxd	r14, r10d
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], r10
	lea	rdx, [r14 - 1]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x458], rsi
	nop	
	mov	esi, 0x20
	nop	
	mov	rdi, r8
	mov	qword ptr [rsp + 0x468], r8
	nop	
	call	memset
	lea	rdi, [rdi]
	mov	r8, qword ptr [rsp + 0x468]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x458]
	mov	rsp, rsp
	lea	r8, [r8 + r14 - 1]
	jmp	.label_493
.label_594:
	test	r9b, r9b
	lea	rsi, [rsi]
	je	.label_502
	xor	eax, eax
	test	r14d, r14d
	mov	rbp, rbp
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	nop	
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	sub	rcx, rsi
	cmp	rbx, rcx
	jae	.label_454
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_510
	lea	rdi, [rdi]
	cmp	eax, 2
	nop	
	setb	al
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x498]
	mov	rsp, rsp
	test	ecx, ecx
	mov	rbp, rbp
	jne	.label_512
	test	al, al
	nop	
	jne	.label_512
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x4a0], r9b
	movsxd	rax, r14d
	dec	rax
	cmp	r13d, 0x30
	nop	
	je	.label_518
	mov	rbp, rbp
	cmp	r13d, 0x2b
	mov	rbp, rbp
	jne	.label_505
.label_518:
	lea	rsi, [rsi]
	mov	esi, 0x30
	jmp	.label_524
.label_603:
	mov	rcx, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	sub	rcx, rsi
	nop	
	cmp	rax, rcx
	nop	
	jae	.label_454
	nop	
	test	r9b, r9b
	nop	
	je	.label_531
	mov	rsp, rsp
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	r8, eax
	nop	
	cmp	r8d, 1
	mov	edx, 1
	cmova	rdx, r8
	cmp	rdx, rcx
	jae	.label_454
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_517
	lea	rsi, [rsi]
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x498]
	lea	rdi, [rdi]
	test	ecx, ecx
	mov	rbp, rbp
	jne	.label_543
	lea	rsi, [rsi]
	test	al, al
	jne	.label_543
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x468], rdx
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x4a0], r9b
	movsxd	rax, r14d
	lea	rsi, [rsi]
	dec	rax
	lea	rdi, [rdi]
	cmp	r13d, 0x30
	nop	
	je	.label_551
	mov	rbp, rbp
	cmp	r13d, 0x2b
	lea	rsi, [rsi]
	jne	.label_561
.label_551:
	mov	esi, 0x30
	nop	
	jmp	.label_563
.label_451:
	mov	rsp, rsp
	mov	rdi, r8
	mov	rsp, rsp
	mov	r14d, r10d
	jmp	.label_502
.label_540:
	mov	r9d, r10d
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r8b, 0x59
.label_462:
	nop	
	xor	ebx, ebx
.label_525:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x498], eax
	mov	r12, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	word ptr [rsp + 0x493], 0x2520
	test	r9d, r9d
	lea	rcx, [rsp + 0x495]
	mov	rsp, rsp
	je	.label_593
	mov	byte ptr [rsp + 0x495], r9b
	lea	rdi, [rdi]
	lea	rcx, [rsp + 0x496]
.label_593:
	mov	byte ptr [rcx], r8b
	mov	rsp, rsp
	mov	byte ptr [rcx + 1], 0
	mov	rbp, rbp
	lea	rdi, [rsp + 0x50]
	lea	rdx, [rsp + 0x493]
	mov	rbp, rbp
	mov	esi, 0x400
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x18]
	nop	
	call	strftime
	test	rax, rax
	je	.label_584
	nop	
	mov	r8, rbx
	lea	r9, [rax - 1]
	nop	
	mov	qword ptr [rsp + 0x4a0], rax
	xor	eax, eax
	mov	rbp, rbp
	test	r14d, r14d
	cmovns	eax, r14d
	mov	rsp, rsp
	cdqe	
	cmp	r9, rax
	mov	rdx, r9
	lea	rdi, [rdi]
	cmovb	rdx, rax
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x458]
	lea	rdi, [rdi]
	sub	rcx, rsi
	cmp	rdx, rcx
	mov	ebx, dword ptr [rsp + 0x498]
	lea	rsi, [rsi]
	jae	.label_454
	xor	ecx, ecx
	mov	rdi, r12
	mov	rbp, rbp
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_548
	mov	rbp, rbp
	cmp	r9, rax
	nop	
	setae	al
	mov	r12, rdx
	test	r8d, r8d
	jne	.label_480
	test	al, al
	nop	
	jne	.label_480
	movsxd	r14, r14d
	nop	
	sub	r14, r9
	nop	
	mov	qword ptr [rsp + 0x468], r9
	mov	rsp, rsp
	cmp	r13d, 0x30
	je	.label_602
	nop	
	cmp	r13d, 0x2b
	lea	rdi, [rdi]
	jne	.label_606
.label_602:
	mov	rbp, rbp
	mov	esi, 0x30
	mov	rsp, rsp
	jmp	.label_607
.label_584:
	mov	rsi, qword ptr [rsp + 0x458]
	mov	rdi, r12
	lea	rdi, [rdi]
	jmp	.label_576
.label_606:
	lea	rdi, [rdi]
	mov	esi, 0x20
.label_607:
	lea	rsi, [rsi]
	mov	rdx, r14
	mov	rbx, rdi
	mov	rbp, rbp
	call	memset
	add	rbx, r14
	mov	rdi, rbx
	mov	r9, qword ptr [rsp + 0x468]
	mov	ebx, dword ptr [rsp + 0x498]
.label_480:
	lea	rsi, [rsi]
	test	bl, 1
	lea	rsi, [rsi]
	jne	.label_620
	mov	rax, qword ptr [rsp + 0x488]
	lea	rsi, [rsi]
	test	al, 1
	nop	
	jne	.label_447
	lea	rsi, [rsp + 0x51]
	mov	rdx, r9
	mov	rbp, rbp
	mov	r14, rdi
	mov	rsp, rsp
	mov	rbx, r9
	mov	rsp, rsp
	call	memcpy
	mov	r9, rbx
	mov	rdi, r14
	nop	
	jmp	.label_460
.label_620:
	mov	rbp, rbp
	test	r9, r9
	mov	rsp, rsp
	je	.label_460
	mov	r14, rdi
	mov	rbp, rbp
	mov	rbx, r9
	call	__ctype_tolower_loc
	mov	r9, rbx
	mov	rdi, r14
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x4a0]
	mov	rbp, rbp
	lea	ecx, [rdx + 3]
	lea	rdi, [rdi]
	mov	r8, rdx
	add	r8, -2
	mov	rbp, rbp
	test	cl, 3
	mov	rsp, rsp
	mov	rcx, r9
	mov	rbp, rbp
	je	.label_466
	lea	esi, [rdx + 3]
	nop	
	and	esi, 3
	neg	rsi
	lea	rsi, [rsi]
	mov	rcx, r9
	nop	dword ptr [rax]
.label_611:
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rsp + rcx + 0x50]
	mov	rbp, rbp
	mov	rbx, qword ptr [rax]
	mov	rsp, rsp
	mov	bl, byte ptr [rbx + rdx*4]
	mov	rbp, rbp
	mov	byte ptr [rdi + rcx - 1], bl
	dec	rcx
	lea	rdi, [rdi]
	inc	rsi
	jne	.label_611
.label_466:
	lea	rsi, [rsi]
	cmp	r8, 3
	jb	.label_460
	nop	word ptr cs:[rax + rax]
.label_498:
	mov	rbp, rbp
	movzx	edx, byte ptr [rsp + rcx + 0x50]
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	mov	rbp, rbp
	movzx	edx, byte ptr [rsp + rcx + 0x4f]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 2], dl
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rsp + rcx + 0x4e]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 3], dl
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rsp + rcx + 0x4d]
	nop	
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 4], dl
	mov	rsp, rsp
	add	rcx, -4
	jne	.label_498
	nop	
	jmp	.label_460
.label_447:
	test	r9, r9
	je	.label_460
	nop	
	mov	r14, rdi
	mov	rbx, r9
	mov	rbp, rbp
	call	__ctype_toupper_loc
	mov	r9, rbx
	nop	
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x4a0]
	mov	rsp, rsp
	lea	ecx, [rdx + 3]
	mov	rbp, rbp
	mov	r8, rdx
	mov	rbp, rbp
	add	r8, -2
	test	cl, 3
	mov	rcx, r9
	mov	rsp, rsp
	je	.label_514
	lea	esi, [rdx + 3]
	and	esi, 3
	lea	rdi, [rdi]
	neg	rsi
	mov	rbp, rbp
	mov	rcx, r9
	nop	word ptr cs:[rax + rax]
.label_509:
	movzx	edx, byte ptr [rsp + rcx + 0x50]
	mov	rbx, qword ptr [rax]
	mov	rsp, rsp
	mov	bl, byte ptr [rbx + rdx*4]
	mov	byte ptr [rdi + rcx - 1], bl
	lea	rdi, [rdi]
	dec	rcx
	nop	
	inc	rsi
	jne	.label_509
.label_514:
	cmp	r8, 3
	jb	.label_460
	nop	word ptr cs:[rax + rax]
.label_578:
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rsp + rcx + 0x50]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rsp + rcx + 0x4f]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 2], dl
	movzx	edx, byte ptr [rsp + rcx + 0x4e]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 3], dl
	nop	
	movzx	edx, byte ptr [rsp + rcx + 0x4d]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	lea	rdi, [rdi]
	mov	byte ptr [rdi + rcx - 4], dl
	nop	
	add	rcx, -4
	jne	.label_578
.label_460:
	add	rdi, r9
	mov	rcx, rdi
	mov	rsi, qword ptr [rsp + 0x458]
	mov	rdx, r12
	nop	
	jmp	.label_548
.label_570:
	mov	r14, qword ptr [rsp + 0x478]
	jmp	.label_556
.label_503:
	mov	esi, 0x20
.label_506:
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x470], rdx
	mov	r14, rdi
	lea	rdi, [rdi]
	call	memset
	lea	rsi, [rsi]
	add	r14, qword ptr [rsp + 0x470]
	mov	rdi, r14
.label_587:
	mov	edx, dword ptr [rsp + 0x4a0]
	mov	rax, qword ptr [rsp + 0x488]
	lea	rsi, [rsi]
	test	al, al
	setne	al
	mov	ecx, dword ptr [rsp + 0x4f0]
	mov	dword ptr [rsp + 0x10], ecx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x4e8]
	nop	
	mov	qword ptr [rsp + 8], rcx
	mov	dword ptr [rsp], edx
	movzx	r8d, al
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x498]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r14, rdi
	mov	rbp, rbp
	mov	r9d, r13d
	call	__strftime_internal
	nop	
	mov	rax, qword ptr [rsp + 0x468]
	lea	rdi, [rdi]
	add	rax, r14
	mov	rcx, rax
	mov	rsp, rsp
	jmp	.label_574
.label_495:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x478]
	nop	
	movzx	edx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	edx, 0x2d
	sete	sil
.label_490:
	mov	rbp, rbp
	cmp	rbx, 3
	mov	r10d, r9d
	ja	.label_482
	mov	rbp, rbp
	movsxd	rdx, r8d
	imul	rdi, rdx, -0x77777777
	mov	rsp, rsp
	shr	rdi, 0x20
	mov	rsp, rsp
	add	edi, r8d
	mov	r9, rbx
	mov	rbp, rbp
	mov	ebx, edi
	lea	rsi, [rsi]
	shr	ebx, 0x1f
	sar	edi, 5
	mov	rsp, rsp
	add	edi, ebx
	lea	rsi, [rsi]
	imul	rdx, rdx, -0x6e5d4c3b
	shr	rdx, 0x20
	add	edx, r8d
	mov	ebx, edx
	shr	ebx, 0x1f
	lea	rsi, [rsi]
	sar	edx, 0xb
	add	edx, ebx
	lea	rdi, [rdi]
	movsxd	rbx, edi
	imul	rdi, rbx, -0x77777777
	lea	rdi, [rdi]
	shr	rdi, 0x20
	add	edi, ebx
	mov	eax, edi
	lea	rsi, [rsi]
	shr	eax, 0x1f
	sar	edi, 5
	add	edi, eax
	lea	rdi, [rdi]
	imul	eax, edi, 0x3c
	lea	rsi, [rsi]
	imul	edi, ebx, 0x3c
	lea	rdi, [rdi]
	sub	ebx, eax
	mov	rbp, rbp
	sub	r8d, edi
	jmp	qword ptr [word ptr [+ (r9 * 8) + label_585]]
.label_1204:
	imul	edx, edx, 0x64
	mov	rbp, rbp
	add	edx, ebx
	mov	rbp, rbp
	mov	edi, 5
.label_494:
	mov	rbp, rbp
	mov	r8b, 1
	nop	
	xor	ebx, ebx
	jmp	.label_485
.label_482:
	lea	rbx, [rbp + 1]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_614:
	inc	r12
	nop	
	movzx	eax, byte ptr [rbx - 1]
	mov	rbp, rbp
	dec	rbx
	mov	rbp, rbp
	cmp	eax, 0x25
	jne	.label_614
	nop	
	test	r14d, r14d
	mov	eax, r14d
	mov	ecx, 0
	lea	rdi, [rdi]
	cmovs	eax, ecx
	cmp	r12d, eax
	mov	ecx, eax
	mov	rbp, rbp
	cmova	ecx, r12d
	lea	rdi, [rdi]
	movsxd	r8, ecx
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x458]
	mov	rbp, rbp
	sub	rcx, rsi
	cmp	r8, rcx
	mov	rdi, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	jae	.label_454
	lea	rdi, [rdi]
	test	rdi, rdi
	mov	ecx, 0
	lea	rdi, [rdi]
	je	.label_457
	movsxd	rdx, r12d
	cmp	r12d, eax
	mov	rsp, rsp
	jae	.label_461
	movsxd	r14, r14d
	sub	r14, rdx
	lea	rsi, [rsi]
	cmp	r13d, 0x30
	nop	
	je	.label_463
	lea	rsi, [rsi]
	cmp	r13d, 0x2b
	jne	.label_467
.label_463:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x4a0], rdx
	mov	qword ptr [rsp + 0x498], r8
	mov	rsp, rsp
	mov	esi, 0x30
	nop	
	jmp	.label_469
.label_467:
	mov	qword ptr [rsp + 0x4a0], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x498], r8
	lea	rsi, [rsi]
	mov	esi, 0x20
.label_469:
	mov	rdx, r14
	mov	r13, rdi
	lea	rdi, [rdi]
	call	memset
	mov	rbp, rbp
	mov	rdi, r13
	add	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x458]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x498]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x4a0]
.label_461:
	mov	qword ptr [rsp + 0x498], r8
	nop	
	mov	qword ptr [rsp + 0x458], rsi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x488]
	mov	rsp, rsp
	test	al, 1
	jne	.label_508
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rbp, rbp
	mov	r14, rdi
	mov	rbx, rdx
	call	memcpy
	mov	r10, rbx
	mov	r9, r14
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x498]
	mov	rsp, rsp
	jmp	.label_504
.label_508:
	mov	r13, rdi
	mov	r14, rdx
	lea	rsi, [rsi]
	call	__ctype_toupper_loc
	nop	
	mov	r10, r14
	mov	r9, r13
	mov	rsp, rsp
	movsxd	rcx, r12d
	mov	rbp, rbp
	lea	r8, [rcx - 1]
	mov	rbp, rbp
	test	cl, 3
	lea	rsi, [rsi]
	mov	rcx, r10
	nop	
	je	.label_511
	lea	rdi, [rdi]
	and	r12d, 3
	neg	r12
	lea	rsi, [rsi]
	mov	rcx, r10
	nop	dword ptr [rax]
.label_483:
	movzx	esi, byte ptr [rbx + rcx - 1]
	nop	
	mov	rdi, qword ptr [rax]
	mov	dl, byte ptr [rdi + rsi*4]
	mov	rsp, rsp
	mov	byte ptr [r9 + rcx - 1], dl
	dec	rcx
	inc	r12
	jne	.label_483
.label_511:
	mov	rbp, rbp
	cmp	r8, 3
	mov	rsp, rsp
	mov	r8, qword ptr [rsp + 0x498]
	lea	rdi, [rdi]
	jb	.label_504
	nop	word ptr cs:[rax + rax]
.label_529:
	nop	
	movzx	edx, byte ptr [rbx + rcx - 1]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	nop	
	mov	byte ptr [r9 + rcx - 1], dl
	movzx	edx, byte ptr [rbx + rcx - 2]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [r9 + rcx - 2], dl
	movzx	edx, byte ptr [rbx + rcx - 3]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [r9 + rcx - 3], dl
	movzx	edx, byte ptr [rbx + rcx - 4]
	mov	rsi, qword ptr [rax]
	nop	
	mov	dl, byte ptr [rsi + rdx*4]
	mov	rsp, rsp
	mov	byte ptr [r9 + rcx - 4], dl
	add	rcx, -4
	jne	.label_529
.label_504:
	lea	rsi, [rsi]
	add	r9, r10
	mov	rcx, r9
	mov	rsi, qword ptr [rsp + 0x458]
.label_457:
	lea	rdi, [rdi]
	add	rsi, r8
	mov	rsp, rsp
	jmp	.label_453
.label_566:
	xor	eax, eax
	mov	r10d, r14d
	mov	rsp, rsp
	add	r10d, -6
	nop	
	cmovs	r10d, eax
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:.str.2_2
	jmp	.label_552
.label_600:
	mov	edi, 9
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x4f0]
	mov	edx, eax
	mov	rsp, rsp
	mov	r14d, 9
	nop	
	jmp	.label_560
.label_496:
	mov	esi, edx
	mov	rsp, rsp
	neg	esi
	mov	rbp, rbp
	add	edx, 0x64
	cmp	eax, 0xfffff894
.label_465:
	lea	rdi, [rdi]
	cmovl	edx, esi
	lea	rdi, [rdi]
	xor	esi, esi
.label_475:
	mov	eax, dword ptr [rsp + 0x484]
	mov	dword ptr [rsp + 0x484], eax
	test	r13d, r13d
	cmove	r13d, eax
	xor	ebx, ebx
	cmp	r13d, 0x2b
	mov	r8d, 0
	lea	rsi, [rsi]
	jne	.label_485
	mov	rax, rdi
	cmp	eax, 2
	lea	rdi, [rdi]
	mov	r8d, 0x63
	nop	
	mov	edi, 0x270f
	cmove	edi, r8d
	mov	rsp, rsp
	cmp	edi, edx
	lea	rdi, [rdi]
	setb	r9b
	mov	rsp, rsp
	cmp	eax, r14d
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	setl	r8b
	lea	rsi, [rsi]
	or	r8b, r9b
	nop	
	jmp	.label_485
.label_1207:
	lea	rdi, [rdi]
	test	r8d, r8d
	lea	rdi, [rdi]
	je	.label_527
.label_1206:
	lea	rsi, [rsi]
	imul	edx, edx, 0x2710
	nop	
	imul	eax, ebx, 0x64
	add	edx, r8d
	add	edx, eax
	mov	edi, 9
	nop	
	mov	r8b, 1
	mov	ebx, 0x14
	jmp	.label_485
.label_589:
	mov	eax, dword ptr [rsp + 0x4f0]
	lea	rsi, [rsi]
	mov	edx, eax
	mov	edi, r14d
	jmp	.label_560
.label_470:
	mov	qword ptr [rsp + 0x40], r10
	jmp	.label_590
.label_474:
	mov	qword ptr [rsp + 0x40], r10
.label_493:
	mov	r9b, byte ptr [rsp + 0x4a0]
.label_590:
	nop	
	mov	byte ptr [r8], r9b
	inc	r8
	mov	rsp, rsp
	mov	rdi, r8
	nop	
	mov	r10, qword ptr [rsp + 0x40]
.label_581:
	add	rsi, rbx
	mov	r14d, r10d
	jmp	.label_502
.label_575:
	mov	esi, 0x20
.label_579:
	mov	rdx, r14
	mov	r13, rdi
	call	memset
	lea	rsi, [rsi]
	add	r13, r14
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x478]
	mov	rdi, r13
	mov	r9, qword ptr [rsp + 0x498]
.label_556:
	test	r12b, r12b
	je	.label_605
	nop	
	test	r9, r9
	lea	rdi, [rdi]
	je	.label_459
	mov	r12, rbx
	mov	r13, rdi
	mov	rbx, r9
	call	__ctype_tolower_loc
	nop	
	mov	r9, rbx
	lea	rsi, [rsi]
	lea	r8, [r9 - 1]
	lea	rdi, [rdi]
	test	r9b, 3
	je	.label_610
	mov	rbp, rbp
	mov	esi, r9d
	and	esi, 3
	neg	rsi
	mov	rcx, r9
	lea	rdi, [rdi]
	mov	rdi, r13
	nop	word ptr cs:[rax + rax]
.label_618:
	movzx	edx, byte ptr [r14 + rcx - 1]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rax]
	mov	bl, byte ptr [rbx + rdx*4]
	mov	byte ptr [rdi + rcx - 1], bl
	mov	rbp, rbp
	dec	rcx
	inc	rsi
	lea	rdi, [rdi]
	jne	.label_618
	lea	rsi, [rsi]
	jmp	.label_450
.label_605:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x488]
	lea	rdi, [rdi]
	test	al, al
	mov	rbp, rbp
	je	.label_452
	lea	rsi, [rsi]
	test	r9, r9
	je	.label_459
	mov	r12, rbx
	lea	rsi, [rsi]
	mov	r13, rdi
	lea	rdi, [rdi]
	mov	rbx, r9
	call	__ctype_toupper_loc
	mov	rsp, rsp
	mov	r9, rbx
	lea	r8, [r9 - 1]
	test	r9b, 3
	mov	rsp, rsp
	je	.label_464
	mov	rsp, rsp
	mov	esi, r9d
	mov	rsp, rsp
	and	esi, 3
	nop	
	neg	rsi
	mov	rcx, r9
	mov	rdi, r13
.label_473:
	movzx	edx, byte ptr [r14 + rcx - 1]
	mov	rbx, qword ptr [rax]
	mov	bl, byte ptr [rbx + rdx*4]
	nop	
	mov	byte ptr [rdi + rcx - 1], bl
	dec	rcx
	lea	rsi, [rsi]
	inc	rsi
	mov	rbp, rbp
	jne	.label_473
	jmp	.label_481
.label_476:
	mov	esi, 0x20
.label_479:
	mov	rdx, r14
	mov	r13, rdi
	mov	rbp, rbp
	call	memset
	lea	rdi, [rdi]
	add	r13, r14
	mov	rsi, r12
	mov	rdi, r13
.label_471:
	lea	rsi, [rsi]
	mov	byte ptr [rdi], 0xa
	nop	
	jmp	.label_489
.label_558:
	mov	rbp, rbp
	mov	esi, 0x20
.label_515:
	mov	rdx, r14
	lea	rdi, [rdi]
	mov	r13, rdi
	lea	rsi, [rsi]
	call	memset
	mov	rsp, rsp
	add	r13, r14
	lea	rsi, [rsi]
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	rdi, r13
.label_549:
	mov	byte ptr [rdi], 9
.label_489:
	inc	rdi
	mov	rcx, rdi
	add	rsi, rbx
	jmp	.label_453
.label_505:
	lea	rsi, [rsi]
	mov	esi, 0x20
.label_524:
	mov	rsp, rsp
	mov	rdx, rax
	mov	qword ptr [rsp + 0x468], rdx
	call	memset
	mov	rax, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	add	rax, qword ptr [rsp + 0x468]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x458]
	mov	rdi, rax
	mov	r9b, byte ptr [rsp + 0x4a0]
.label_512:
	mov	byte ptr [rdi], r9b
	nop	
	inc	rdi
	lea	rdi, [rdi]
	mov	rcx, rdi
.label_510:
	add	rsi, rbx
	mov	rsp, rsp
	mov	rdi, rcx
	jmp	.label_502
.label_610:
	mov	rcx, r9
	mov	rdi, r13
.label_450:
	cmp	r8, 3
	mov	rsp, rsp
	mov	rbx, r12
	nop	
	jb	.label_459
	nop	word ptr [rax + rax]
.label_520:
	movzx	edx, byte ptr [r14 + rcx - 1]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	mov	rbp, rbp
	movzx	edx, byte ptr [r14 + rcx - 2]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	mov	dl, byte ptr [rsi + rdx*4]
	mov	rbp, rbp
	mov	byte ptr [rdi + rcx - 2], dl
	mov	rbp, rbp
	movzx	edx, byte ptr [r14 + rcx - 3]
	nop	
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	rbp, rbp
	mov	byte ptr [rdi + rcx - 3], dl
	movzx	edx, byte ptr [r14 + rcx - 4]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	lea	rdi, [rdi]
	mov	byte ptr [rdi + rcx - 4], dl
	lea	rdi, [rdi]
	add	rcx, -4
	jne	.label_520
	jmp	.label_459
.label_452:
	lea	rdi, [rdi]
	mov	rsi, r14
	nop	
	mov	rdx, r9
	mov	r13, rdi
	mov	r12, rbx
	mov	rbx, r9
	lea	rdi, [rdi]
	call	memcpy
	lea	rsi, [rsi]
	mov	r9, rbx
	mov	rbx, r12
	lea	rsi, [rsi]
	mov	rdi, r13
	lea	rdi, [rdi]
	jmp	.label_459
.label_541:
	mov	eax, 9
	lea	rdi, [rdi]
	sub	eax, ebx
	nop	word ptr cs:[rax + rax]
.label_555:
	mov	rsp, rsp
	movsxd	rdx, edx
	mov	rbp, rbp
	imul	rdx, rdx, 0x68db8bad
	mov	rsi, rdx
	nop	
	shr	rsi, 0x3f
	mov	rsp, rsp
	sar	rdx, 0x2c
	lea	rdi, [rdi]
	add	edx, esi
	mov	rsp, rsp
	add	eax, -4
	lea	rdi, [rdi]
	jne	.label_555
	mov	rsp, rsp
	mov	edi, r14d
	nop	
	jmp	.label_560
.label_561:
	lea	rdi, [rdi]
	mov	esi, 0x20
.label_563:
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	qword ptr [rsp + 0x470], rdx
	mov	r14, rdi
	mov	rbp, rbp
	call	memset
	add	r14, qword ptr [rsp + 0x470]
	mov	rsi, qword ptr [rsp + 0x458]
	mov	rbp, rbp
	mov	rdi, r14
	mov	r9b, byte ptr [rsp + 0x4a0]
	mov	rdx, qword ptr [rsp + 0x468]
.label_543:
	mov	byte ptr [rdi], r9b
	lea	rsi, [rsi]
	inc	rdi
	nop	
	mov	rcx, rdi
.label_517:
	lea	rdi, [rdi]
	add	rsi, rdx
	nop	
	mov	rdi, rcx
.label_531:
	xor	r14d, r14d
	test	rdi, rdi
	mov	rbp, rbp
	movsxd	rcx, ebx
	mov	ebx, 0
	lea	rsi, [rsi]
	je	.label_488
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x458], rsi
	mov	esi, 0x30
	mov	qword ptr [rsp + 0x40], rcx
	mov	rdx, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rbx, rdi
	nop	
	call	memset
	mov	rcx, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x458]
	add	rbx, rcx
.label_488:
	lea	rsi, [rsi]
	add	rsi, rcx
	lea	rdi, [rdi]
	mov	rdi, rbx
.label_502:
	lea	rdi, [rdi]
	lea	rbx, [rsp + 0x37]
	lea	rsi, [rsi]
	sub	rbx, r12
	lea	rsi, [rsi]
	xor	eax, eax
	test	r14d, r14d
	lea	rsi, [rsi]
	cmovns	eax, r14d
	nop	
	cdqe	
	lea	rdi, [rdi]
	cmp	rbx, rax
	lea	rdi, [rdi]
	mov	rdx, rbx
	mov	rbp, rbp
	cmovb	rdx, rax
	mov	rcx, qword ptr [rsp + 0x48]
	nop	
	sub	rcx, rsi
	cmp	rdx, rcx
	jae	.label_454
	xor	ecx, ecx
	lea	rdi, [rdi]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_548
	lea	rsi, [rsi]
	cmp	rbx, rax
	setae	al
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x498]
	lea	rdi, [rdi]
	test	ecx, ecx
	jne	.label_598
	mov	rbp, rbp
	test	al, al
	jne	.label_604
	movsxd	r14, r14d
	lea	rsi, [rsi]
	sub	r14, rbx
	cmp	r13d, 0x30
	je	.label_523
	lea	rsi, [rsi]
	cmp	r13d, 0x2b
	lea	rdi, [rdi]
	jne	.label_539
.label_523:
	mov	qword ptr [rsp + 0x458], rsi
	lea	rdi, [rdi]
	mov	esi, 0x30
	mov	rbp, rbp
	jmp	.label_609
.label_548:
	add	rsi, rdx
	lea	rsi, [rsi]
	jmp	.label_453
.label_598:
	mov	qword ptr [rsp + 0x458], rsi
	jmp	.label_486
.label_604:
	mov	qword ptr [rsp + 0x458], rsi
	jmp	.label_486
.label_539:
	mov	qword ptr [rsp + 0x458], rsi
	mov	esi, 0x20
.label_609:
	mov	qword ptr [rsp + 0x40], rdx
	mov	rdx, r14
	mov	r13, rdi
	call	memset
	nop	
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rdi, r13
	add	rdi, r14
.label_486:
	mov	r13, rdx
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x488]
	test	al, al
	je	.label_449
	nop	
	lea	rax, [rsp + 0x37]
	cmp	rax, r12
	lea	rdi, [rdi]
	je	.label_455
	mov	r14, rdi
	lea	rdi, [rdi]
	call	__ctype_toupper_loc
	mov	rdi, r14
	mov	rbp, rbp
	lea	rcx, [rsp + 0x37]
	sub	ecx, r12d
	lea	rdi, [rdi]
	lea	r8, [rsp + 0x36]
	sub	r8, r12
	test	cl, 3
	mov	rbp, rbp
	mov	rcx, rbx
	mov	r9, rbx
	mov	rbp, rbp
	je	.label_484
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x37]
	lea	rdi, [rdi]
	sub	esi, r12d
	nop	
	and	esi, 3
	neg	rsi
	mov	rcx, r9
	nop	word ptr cs:[rax + rax]
.label_597:
	movzx	ebx, byte ptr [r12 + rcx - 1]
	mov	rbp, rbp
	mov	rdx, qword ptr [rax]
	lea	rsi, [rsi]
	mov	dl, byte ptr [rdx + rbx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	mov	rsp, rsp
	dec	rcx
	mov	rbp, rbp
	inc	rsi
	lea	rsi, [rsi]
	jne	.label_597
.label_484:
	mov	rsp, rsp
	cmp	r8, 3
	mov	rbp, rbp
	mov	rbx, r9
	jb	.label_455
	nop	word ptr [rax + rax]
.label_492:
	lea	rsi, [rsi]
	movzx	edx, byte ptr [r12 + rcx - 1]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rsi + rdx*4]
	nop	
	mov	byte ptr [rdi + rcx - 1], dl
	mov	rsp, rsp
	movzx	edx, byte ptr [r12 + rcx - 2]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	mov	dl, byte ptr [rsi + rdx*4]
	lea	rsi, [rsi]
	mov	byte ptr [rdi + rcx - 2], dl
	movzx	edx, byte ptr [r12 + rcx - 3]
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 3], dl
	movzx	edx, byte ptr [r12 + rcx - 4]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	mov	dl, byte ptr [rsi + rdx*4]
	mov	rbp, rbp
	mov	byte ptr [rdi + rcx - 4], dl
	lea	rsi, [rsi]
	add	rcx, -4
	lea	rdi, [rdi]
	jne	.label_492
	lea	rsi, [rsi]
	jmp	.label_455
.label_449:
	mov	rbp, rbp
	mov	rsi, r12
	mov	rdx, rbx
	lea	rsi, [rsi]
	mov	r14, rdi
	call	memcpy
	mov	rdi, r14
.label_455:
	add	rdi, rbx
	lea	rdi, [rdi]
	mov	rcx, rdi
	mov	rsi, qword ptr [rsp + 0x458]
	mov	rdx, r13
	add	rsi, rdx
	mov	rsp, rsp
	jmp	.label_453
.label_527:
	nop	
	test	ebx, ebx
	je	.label_519
.label_1205:
	mov	rbp, rbp
	imul	edx, edx, 0x64
	lea	rsi, [rsi]
	add	edx, ebx
	nop	
	mov	edi, 6
	lea	rdi, [rdi]
	mov	r8b, 1
	mov	ebx, 4
	jmp	.label_485
.label_528:
	mov	r12, rsi
	mov	esi, 0x20
.label_530:
	lea	rsi, [rsi]
	mov	rdx, r14
	mov	rbp, rbp
	mov	r13, rdi
	call	memset
	mov	rdi, r13
	mov	rsi, r12
	add	rdi, r14
	lea	rsi, [rsi]
	mov	cl, byte ptr [rbp]
.label_522:
	mov	byte ptr [rdi], cl
	mov	rbp, rbp
	jmp	.label_533
.label_464:
	mov	rcx, r9
	mov	rdi, r13
.label_481:
	mov	rbp, rbp
	cmp	r8, 3
	mov	rbx, r12
	nop	
	jb	.label_459
.label_538:
	movzx	edx, byte ptr [r14 + rcx - 1]
	mov	rsi, qword ptr [rax]
	nop	
	mov	dl, byte ptr [rsi + rdx*4]
	nop	
	mov	byte ptr [rdi + rcx - 1], dl
	movzx	edx, byte ptr [r14 + rcx - 2]
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 2], dl
	movzx	edx, byte ptr [r14 + rcx - 3]
	nop	
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	lea	rdi, [rdi]
	mov	byte ptr [rdi + rcx - 3], dl
	mov	rbp, rbp
	movzx	edx, byte ptr [r14 + rcx - 4]
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	mov	dl, byte ptr [rsi + rdx*4]
	lea	rdi, [rdi]
	mov	byte ptr [rdi + rcx - 4], dl
	add	rcx, -4
	jne	.label_538
.label_459:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x478], r14
	mov	rsp, rsp
	add	rdi, r9
	mov	rbp, rbp
	mov	rcx, rdi
.label_574:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x458]
.label_468:
	mov	rbp, rbp
	add	rsi, rbx
	nop	dword ptr [rax + rax]
.label_453:
	nop	
	mov	rdi, rcx
.label_576:
	mov	al, byte ptr [rbp + 1]
	nop	
	inc	rbp
	lea	rsi, [rsi]
	mov	r14d, 0xffffffff
	test	al, al
	jne	.label_478
.label_491:
	cmp	qword ptr [rsp + 0x48], 0
	lea	rdi, [rdi]
	je	.label_568
	test	rdi, rdi
	je	.label_568
	lea	rdi, [rdi]
	mov	byte ptr [rdi], 0
	mov	rbp, rbp
	jmp	.label_568
.label_454:
	nop	
	xor	esi, esi
.label_568:
	mov	rax, rsi
	add	rsp, 0x4a8
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409ad0

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
	je	.label_621
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
	jl	.label_623
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_623
	mov	esi, OFFSET FLAT:.str.2_3
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_622
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_622:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_623:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_621:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_8
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
	#Procedure 0x409bc0
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
	#Procedure 0x409c10

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
	#Procedure 0x409c30

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
	#Procedure 0x409c50
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
	#Procedure 0x409cc0
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
	#Procedure 0x409ce0
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
	je	.label_624
	test	rdx, rdx
	nop	
	je	.label_624
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_624:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409d20
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
	#Procedure 0x409dd0

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
.label_688:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	ecx, r15d
	lea	rdi, [rdi]
	cmp	r15d, 0xa
	ja	.label_686
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_694]]
.label_1004:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.11_2
	nop	
	mov	esi, r15d
	mov	r14, r10
	nop	
	mov	bl, r8b
	call	gettext_quote
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:.str.12_1
	mov	esi, r15d
	mov	rsp, rsp
	call	gettext_quote
	mov	r8b, bl
	mov	rsp, rsp
	mov	r10, r14
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x100], rax
.label_1005:
	mov	byte ptr [rsp + 0x43], r8b
	mov	r13, rbp
	nop	
	test	r12b, 1
	nop	
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	rdx, qword ptr [rsp + 0x78]
	jne	.label_712
	mov	rbp, rbp
	mov	al, byte ptr [rdx]
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	mov	ecx, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], rcx
	je	.label_712
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	nop	dword ptr [rax]
.label_732:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_727
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rcx + rsi], al
.label_727:
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + rcx + 1]
	mov	rsp, rsp
	inc	rcx
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_732
.label_712:
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
	jmp	.label_629
.label_997:
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
	jmp	.label_629
.label_1000:
	lea	rsi, [rsi]
	mov	al, 1
.label_998:
	mov	rbp, rbp
	mov	r12b, 1
.label_1001:
	mov	rbp, rbp
	test	r12b, 1
	mov	cl, 1
	nop	
	je	.label_641
	lea	rsi, [rsi]
	mov	cl, al
.label_641:
	mov	rsp, rsp
	mov	al, cl
.label_999:
	mov	r9d, 2
	test	r12b, 1
	mov	rsp, rsp
	jne	.label_648
	test	r10, r10
	je	.label_655
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx], 0x27
	mov	rsp, rsp
	mov	ecx, 1
	mov	rsp, rsp
	jmp	.label_658
.label_648:
	xor	ecx, ecx
	jmp	.label_658
.label_1002:
	mov	rsp, rsp
	mov	r9d, 5
	test	r12b, 1
	jne	.label_670
	lea	rdi, [rdi]
	test	r10, r10
	je	.label_675
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], 0x22
	mov	rsp, rsp
	mov	eax, 1
	jmp	.label_682
.label_1003:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10_2
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xf0], rax
	mov	sil, 1
	jmp	.label_629
.label_655:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_658:
	nop	
	mov	qword ptr [rsp + 0x58], rcx
	nop	
	mov	ecx, OFFSET FLAT:.str.12_1
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbp, rbp
	mov	ecx, 1
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
	mov	dil, al
	mov	sil, r12b
	jmp	.label_629
.label_670:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_682
.label_675:
	lea	rdi, [rdi]
	mov	eax, 1
.label_682:
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10_2
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
.label_629:
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
	jmp	.label_725
	nop	word ptr cs:[rax + rax]
.label_689:
	nop	
	inc	rdi
.label_725:
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_645
	nop	
	cmp	rdi, rbp
	mov	rsp, rsp
	jne	.label_642
	jmp	.label_650
	nop	dword ptr [rax + rax]
.label_645:
	mov	r13, -1
	lea	rsi, [rsi]
	cmp	byte ptr [r11 + rdi], 0
	je	.label_654
.label_642:
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_665
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_668
	cmp	rbp, -1
	lea	rsi, [rsi]
	jne	.label_668
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
.label_668:
	mov	rsp, rsp
	cmp	rbx, rbp
	lea	rsi, [rsi]
	jbe	.label_705
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_706
	nop	dword ptr [rax + rax]
.label_665:
	nop	
	mov	dword ptr [rsp + 0x10c], 0
	lea	rdi, [rdi]
	jmp	.label_706
	nop	word ptr cs:[rax + rax]
.label_705:
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
	jne	.label_702
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
	je	.label_706
	jmp	.label_625
.label_702:
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
.label_706:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_745
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	nop	
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_628]]
.label_1073:
	mov	rsp, rsp
	test	rdi, rdi
	mov	rbp, rbp
	jne	.label_635
	mov	rbp, rbp
	jmp	.label_639
.label_1077:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	cmp	rbp, -1
	nop	
	je	.label_640
	lea	rdi, [rdi]
	test	rdi, rdi
	nop	
	jne	.label_646
	nop	
	cmp	rbp, 1
	je	.label_639
	xor	r13d, r13d
	jmp	.label_633
.label_1066:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xc3], 0
	je	.label_659
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_625
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_671
	mov	al, r14b
	and	al, 1
	jne	.label_674
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x58], r10
	nop	
	jae	.label_681
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x27
.label_681:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	nop	
	jae	.label_690
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_690:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_723
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_723:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	add	rax, 3
	mov	rsp, rsp
	mov	r14b, 1
	mov	rbp, rbp
	mov	rcx, rax
	jmp	.label_631
.label_1067:
	mov	rbp, rbp
	mov	bl, 0x62
	mov	rsp, rsp
	jmp	.label_692
.label_1068:
	lea	rsi, [rsi]
	mov	cl, 0x74
	jmp	.label_709
.label_1069:
	mov	rsp, rsp
	mov	bl, 0x76
	nop	
	jmp	.label_692
.label_1070:
	mov	bl, 0x66
	jmp	.label_692
.label_1071:
	lea	rsi, [rsi]
	mov	cl, 0x72
	jmp	.label_709
.label_1074:
	mov	al, 1
	mov	qword ptr [rsp + 0x68], rax
	lea	rdi, [rdi]
	cmp	r9d, 2
	jne	.label_718
	cmp	byte ptr [rsp + 0xe7], 0
	nop	
	jne	.label_721
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
	jae	.label_698
	nop	
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_698:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_741
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x5c
.label_741:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_748
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_748:
	add	qword ptr [rsp + 0x58], 3
	xor	r14d, r14d
.label_718:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_633
.label_1075:
	cmp	r9d, 5
	lea	rdi, [rdi]
	je	.label_638
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_635
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_635
	mov	rbp, rbp
	jmp	.label_649
.label_1076:
	lea	rdi, [rdi]
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_652
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_660
	lea	rdi, [rdi]
	jmp	.label_666
.label_745:
	mov	qword ptr [rsp + 0x80], r9
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x43], r8b
	mov	qword ptr [rsp + 0x110], r10
	cmp	qword ptr [rsp + 0xb8], 1
	jne	.label_693
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
.label_644:
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
	ja	.label_697
	lea	rdi, [rdi]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_697
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_633
.label_640:
	test	rdi, rdi
	jne	.label_711
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_711
.label_639:
	mov	dl, 1
.label_1072:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x66], 0
	lea	rsi, [rsi]
	je	.label_716
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, dl
	mov	rsp, rsp
	jmp	.label_633
.label_659:
	cmp	dword ptr [rsp + 0x3c], 0
	jne	.label_689
	jmp	.label_635
.label_652:
	cmp	byte ptr [rsp + 0x57], 0
	mov	cl, r15b
	je	.label_709
.label_660:
	xor	eax, eax
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_728
.label_709:
	cmp	byte ptr [rsp + 0x66], 0
	mov	bl, cl
	lea	rdi, [rdi]
	je	.label_729
.label_692:
	xor	eax, eax
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc3], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_633
	lea	rsi, [rsi]
	jmp	.label_662
.label_693:
	mov	qword ptr [rsp + 0x98], 0
	cmp	rbp, -1
	jne	.label_740
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
.label_740:
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
.label_699:
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
	je	.label_653
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x110]
	mov	rsp, rsp
	movabs	rsi, 0x20000002b
	je	.label_663
	lea	rsi, [rsi]
	cmp	rbp, -2
	nop	
	mov	rdi, qword ptr [rsp + 0xa8]
	je	.label_672
	lea	rsi, [rsi]
	cmp	rbp, 1
	seta	al
	lea	rdi, [rdi]
	and	al, byte ptr [rsp + 0x77]
	movzx	eax, al
	nop	
	cmp	eax, 1
	jne	.label_680
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	lea	rax, [rcx + rax]
	nop	
	mov	ecx, 1
	nop	
.label_704:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_695
	lea	rdi, [rdi]
	bt	rsi, rdx
	jb	.label_731
.label_695:
	lea	rsi, [rsi]
	inc	rcx
	mov	rbp, rbp
	cmp	rcx, rbp
	jb	.label_704
.label_680:
	nop	
	mov	edi, dword ptr [rsp + 0xc4]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	nop	
	jne	.label_651
	xor	r13d, r13d
.label_651:
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
	je	.label_699
	mov	rsp, rsp
	jmp	.label_644
.label_711:
	lea	rsi, [rsi]
	mov	rbp, -1
	mov	rbp, rbp
	xor	r13d, r13d
	jmp	.label_633
.label_638:
	cmp	dword ptr [rsp + 0x44], 0
	lea	rdi, [rdi]
	je	.label_635
	lea	rcx, [rdi + 2]
	mov	rsp, rsp
	cmp	rcx, rbp
	jae	.label_635
	mov	rbp, rbp
	movzx	eax, byte ptr [rdi + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_635
	lea	rsi, [rsi]
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	edx, 0x3e
	ja	.label_738
	nop	
	movabs	rsi, 0x7000a38200000000
	mov	rsp, rsp
	bt	rsi, rdx
	mov	rsp, rsp
	jae	.label_696
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_746
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_749
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rsi], 0x3f
.label_749:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_632
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x22
.label_632:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_722
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rsi + rax], 0x22
.label_722:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 3]
	cmp	rax, r10
	nop	
	jae	.label_637
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x3f
.label_637:
	mov	rbp, rbp
	add	qword ptr [rsp + 0x58], 4
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	lea	rdi, [rdi]
	xor	r13d, r13d
	jmp	.label_633
.label_635:
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_633:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x65], 0
	lea	rsi, [rsi]
	je	.label_676
	cmp	qword ptr [rsp + 0x150], 0
	mov	rsp, rsp
	jne	.label_684
	lea	rsi, [rsi]
	jmp	.label_687
.label_676:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_687
.label_684:
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
	jne	.label_691
	mov	rcx, qword ptr [rsp + 0x150]
	nop	
	and	esi, dword ptr [rcx + rdx*4]
	mov	rsp, rsp
	jmp	.label_700
	nop	word ptr cs:[rax + rax]
.label_687:
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rdi, [rdi]
	test	cl, cl
.label_700:
	mov	rbp, rbp
	mov	bl, r15b
	je	.label_728
	mov	rsp, rsp
	jmp	.label_662
.label_691:
	mov	bl, r15b
.label_662:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_625
	nop	
	cmp	r9d, 2
	jne	.label_714
	lea	rdi, [rdi]
	mov	al, r14b
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_714
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_630
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_630:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	cmp	rax, r10
	jae	.label_726
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_726:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_724
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_724:
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_714:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_736
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x5c
.label_736:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	jmp	.label_739
.label_646:
	xor	r13d, r13d
	nop	
	jmp	.label_633
.label_697:
	mov	rsp, rsp
	add	rax, rdi
	mov	qword ptr [rsp + 0xe8], rax
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_744
	nop	dword ptr [rax + rax]
.label_656:
	inc	qword ptr [rsp + 0x58]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_744:
	test	cl, cl
	je	.label_627
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0x10c]
	test	dl, 1
	mov	rbp, rbp
	je	.label_657
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_636
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x5c
.label_636:
	lea	rsi, [rsi]
	inc	qword ptr [rsp + 0x58]
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_657
	nop	dword ptr [rax]
.label_627:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_625
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_661
	mov	al, r14b
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_661
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_708
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rdx], 0x27
.label_708:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	inc	rax
	cmp	rax, r10
	jae	.label_678
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], 0x24
.label_678:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_673
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rdx + rax], 0x27
.label_673:
	mov	rsp, rsp
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_661:
	cmp	qword ptr [rsp + 0x58], r10
	lea	rsi, [rsi]
	jae	.label_701
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rax + rdx], 0x5c
.label_701:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_707
	mov	dl, r15b
	shr	dl, 6
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], dl
.label_707:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_715
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
.label_715:
	nop	
	add	qword ptr [rsp + 0x58], 3
	mov	rbp, rbp
	and	r15b, 7
	nop	
	or	r15b, 0x30
	mov	rsp, rsp
	mov	al, 1
.label_657:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xe8], rdx
	jbe	.label_728
	lea	rsi, [rsi]
	test	r14b, 1
	je	.label_734
	mov	bl, al
	nop	
	and	bl, 1
	lea	rdi, [rdi]
	jne	.label_734
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_737
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_737:
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	inc	rsi
	mov	rsp, rsp
	cmp	rsi, r10
	lea	rsi, [rsi]
	jae	.label_742
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdi + rsi], 0x27
	mov	rbp, rbp
	mov	rdi, rbx
.label_742:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_734:
	nop	
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_656
	mov	rsi, qword ptr [rsp + 0xb0]
	nop	
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rsi + rdi], r15b
	lea	rdi, [rdi]
	mov	rdi, rbx
	jmp	.label_656
	nop	word ptr cs:[rax + rax]
.label_728:
	test	r14b, 1
	lea	rsi, [rsi]
	je	.label_647
	mov	rsp, rsp
	and	al, 1
	jne	.label_647
	cmp	qword ptr [rsp + 0x58], r10
	mov	rsp, rsp
	jae	.label_643
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_643:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_743
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_743:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_647:
	mov	rsp, rsp
	mov	bl, r15b
.label_739:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_733
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], bl
.label_733:
	nop	
	inc	qword ptr [rsp + 0x58]
	nop	
	shl	r13b, 7
	mov	rsp, rsp
	sar	r13b, 7
	and	r13b, r8b
	mov	rbp, rbp
	mov	r8b, r13b
	jmp	.label_689
.label_671:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	jmp	.label_631
.label_674:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
.label_631:
	lea	rsi, [rsi]
	cmp	rcx, r10
	lea	rsi, [rsi]
	jae	.label_703
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax + rcx], 0x5c
.label_703:
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
	je	.label_720
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_710
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	cmp	edx, 9
	lea	rsi, [rsi]
	ja	.label_719
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_717
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x30
.label_717:
	lea	rsi, [rsi]
	lea	rdx, [rcx + 2]
	lea	rdi, [rdi]
	cmp	rdx, r10
	nop	
	jae	.label_626
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rdx], 0x30
.label_626:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x58], rcx
	jmp	.label_633
.label_720:
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_633
.label_710:
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	
	jmp	.label_633
.label_719:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_633
.label_663:
	xor	r13d, r13d
.label_653:
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_644
.label_672:
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	rbp, rcx
	lea	rsi, [rsi]
	jbe	.label_747
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
.label_634:
	cmp	byte ptr [r11 + rcx], 0
	nop	
	je	.label_664
	mov	rbp, rbp
	lea	rcx, [rax + rdi + 1]
	nop	
	inc	rax
	mov	rbp, rbp
	cmp	rcx, rbp
	mov	rsp, rsp
	jb	.label_634
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_644
.label_747:
	mov	rsp, rsp
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_644
.label_664:
	nop	
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_644
.label_738:
	xor	r13d, r13d
	jmp	.label_633
.label_696:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_633
.label_650:
	nop	
	mov	r13, rdi
.label_654:
	mov	rsp, rsp
	cmp	r9d, 2
	mov	rsp, rsp
	setne	al
	cmp	qword ptr [rsp + 0x58], 0
	lea	rsi, [rsi]
	setne	dl
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_669
	mov	rsp, rsp
	or	al, dl
	mov	rbp, rbp
	je	.label_683
.label_669:
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
	je	.label_685
	mov	rsp, rsp
	or	al, dl
	lea	rsi, [rsi]
	jne	.label_685
	test	r8b, 1
	mov	rbp, rbp
	jne	.label_667
	cmp	qword ptr [rsp + 0xd8], 0
	je	.label_685
	test	r10, r10
	mov	r15d, r9d
	mov	rbp, rbp
	mov	al, bl
	nop	
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0xd8]
	lea	rsi, [rsi]
	je	.label_688
.label_685:
	mov	rdx, qword ptr [rsp + 0x20]
	test	rdx, rdx
	je	.label_713
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rsi, [rsi]
	jne	.label_713
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	test	al, al
	je	.label_713
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_730:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_677
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rsi], al
.label_677:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	mov	rbp, rbp
	jne	.label_730
.label_713:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_735
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0
	lea	rdi, [rdi]
	jmp	.label_735
.label_716:
	lea	rdi, [rdi]
	mov	r9d, 2
	nop	
	jmp	.label_625
.label_731:
	mov	rsp, rsp
	mov	r9d, 2
	nop	
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rdi, [rdi]
	jmp	.label_625
.label_683:
	nop	
	mov	rbp, r13
	jmp	.label_625
.label_729:
	lea	rdi, [rdi]
	mov	r9d, 2
.label_625:
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
.label_679:
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rax
.label_735:
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
.label_667:
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
	jmp	.label_679
.label_721:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_625
.label_666:
	mov	r9d, 2
	lea	rsi, [rsi]
	jmp	.label_625
.label_649:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_625
.label_746:
	lea	rsi, [rsi]
	mov	r9d, 5
	mov	rbp, rbp
	jmp	.label_625
.label_686:
	nop	
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b350
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
	#Procedure 0x40b490
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
	je	.label_750
	mov	qword ptr [rax], rbx
.label_750:
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
	#Procedure 0x40b5e0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_751
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_754:
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
	jl	.label_754
.label_751:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_753
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_755]], OFFSET FLAT:slot0
.label_753:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_752
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_752:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b6a0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b6b0

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
	js	.label_762
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_757
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_760
.label_757:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_758
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
	jne	.label_761
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_761:
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
.label_760:
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
	ja	.label_759
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
	je	.label_756
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_756:
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
.label_759:
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
.label_762:
	lea	rdi, [rdi]
	call	abort
.label_758:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b920
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b930
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
	#Procedure 0x40b960
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
	#Procedure 0x40b990

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
	je	.label_763
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
.label_763:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ba20
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
	je	.label_764
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
.label_764:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bac0

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
	je	.label_765
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
.label_765:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bb50
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
	je	.label_766
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
.label_766:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40bbc0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_767]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_768]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_769]]
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
	#Procedure 0x40bc60
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_767]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_768]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_769]]
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
	#Procedure 0x40bd00

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_767]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_768]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_769]]
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
	#Procedure 0x40bd70
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_767]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_768]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_769]]
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
	#Procedure 0x40bde0
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
	je	.label_770
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
.label_770:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40bec0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_767]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_768]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_769]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_771
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_771
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
.label_771:
	nop	
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40bf50
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_767]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_768]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_769]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_772
	test	rdx, rdx
	je	.label_772
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
.label_772:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bfe0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_767]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_768]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_769]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_773
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_773
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
.label_773:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c080
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_767]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_768]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_769]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_774
	test	rsi, rsi
	je	.label_774
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
.label_774:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c120
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c130
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
	#Procedure 0x40c150

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
	#Procedure 0x40c170

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
	#Procedure 0x40c1a0

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
	jne	.label_776
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_778
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_777
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_777
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_777
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_777
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_777
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_777
	nop	
	mov	eax, OFFSET FLAT:.str.14_1
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_776
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_776
.label_778:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_777
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_777
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_777
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_777
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_777
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_777
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_775
.label_777:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_2
	mov	eax, OFFSET FLAT:.str.12_1
	cmove	rax, rcx
.label_776:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_775:
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_776
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_776
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c310

	.globl save_cwd
	.type save_cwd, @function
save_cwd:
	push	rbp
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	rsp, rsp
	mov	rbx, rdi
	mov	qword ptr [rbx + 8], 0
	mov	rsp, rsp
	xor	ebp, ebp
	nop	
	mov	edi, OFFSET FLAT:.str_1
	mov	esi, 0x80000
	xor	eax, eax
	call	open_safer
	mov	dword ptr [rbx], eax
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	jns	.label_779
	nop	
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
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c370

	.globl restore_cwd
	.type restore_cwd, @function
restore_cwd:
	mov	eax, dword ptr [rdi]
	test	eax, eax
	lea	rsi, [rsi]
	js	.label_780
	mov	rbp, rbp
	mov	edi, eax
	jmp	fchdir
.label_780:
	mov	rdi, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	jmp	chdir_long
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c390

	.globl free_cwd
	.type free_cwd, @function
free_cwd:
	nop	
	push	rbx
	mov	rbp, rbp
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbx]
	test	edi, edi
	nop	
	js	.label_781
	call	close
.label_781:
	mov	rdi, qword ptr [rbx + 8]
	pop	rbx
	mov	rbp, rbp
	jmp	free
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c3c0

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
	je	.label_782
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_9
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_784
.label_782:
	mov	edx, OFFSET FLAT:.str.1_6
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_784:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_4
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
	mov	esi, OFFSET FLAT:.str.3_4
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
	ja	.label_786
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_787]]
.label_1152:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4_3
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
.label_786:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_1
	jmp	.label_789
.label_1153:
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5_2
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
.label_1154:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.6_2
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
.label_1155:
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
	jmp	.label_791
.label_1156:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_2
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
	jmp	.label_790
.label_1157:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_2
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
	jmp	.label_788
.label_1158:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_3
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
.label_788:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_790:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_791:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_785
.label_1160:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_2
.label_789:
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
	jmp	.label_783
.label_1159:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_3
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
.label_783:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_785:
	mov	rbp, rbp
	call	__fprintf_chk
.label_1151:
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
	#Procedure 0x40c7b0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_792:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_792
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c7e0
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_796:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_793
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_795
	nop	word ptr cs:[rax + rax]
.label_793:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_795:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_794
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_796
.label_794:
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
	#Procedure 0x40c870

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_797
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
.label_797:
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
.label_799:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_798
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_800
	nop	dword ptr [rax + rax]
.label_798:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_800:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_801
	inc	r9
	cmp	r9, 0xa
	jb	.label_799
.label_801:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c9b0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_2
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
	mov	esi, OFFSET FLAT:.str.19_1
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
	#Procedure 0x40ca40
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
	jb	.label_802
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_803
	test	rax, rax
	je	.label_802
.label_803:
	nop	
	pop	rbx
	ret	
.label_802:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ca90

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_804
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_805
.label_804:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_805:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cac0
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
	jb	.label_807
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_806
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_806
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_806:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_808
	test	rax, rax
	je	.label_807
.label_808:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_807:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cb40

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_809
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_809
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_809:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_810
	test	rax, rax
	nop	
	je	.label_811
.label_810:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_811:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cb90
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_816
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_812
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_818
.label_816:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_815
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_815:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_817
.label_818:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_814
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_814
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_814:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_813
	test	rax, rax
	mov	rbp, rbp
	je	.label_812
.label_813:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_812:
	call	xalloc_die
.label_817:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cc70
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_819
	test	rax, rax
	mov	rbp, rbp
	je	.label_820
.label_819:
	pop	rbx
	ret	
.label_820:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40cc90
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_824
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_825
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_823
	call	free
	xor	eax, eax
	jmp	.label_821
.label_824:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_822
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_823:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_821
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_822
.label_821:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_822:
	mov	rbp, rbp
	call	xalloc_die
.label_825:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40cd20
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
	je	.label_826
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_827
.label_826:
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
.label_827:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cd80
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
	jb	.label_828
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_828
	pop	rcx
	ret	
.label_828:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x40cdb0

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
	je	.label_830
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_829
.label_830:
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
.label_829:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ce10

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
	je	.label_831
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_832
.label_831:
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
.label_832:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x40ce70

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_7
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
	.align	16
	#Procedure 0x40cec0

	.globl xgetcwd
	.type xgetcwd, @function
xgetcwd:
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	xor	edi, edi
	xor	esi, esi
	mov	rbp, rbp
	call	getcwd
	mov	rbp, rbp
	mov	rbx, rax
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rsi, [rsi]
	jne	.label_833
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	mov	rsp, rsp
	je	.label_834
.label_833:
	mov	rbp, rbp
	mov	rax, rbx
	nop	
	pop	rbx
	mov	rbp, rbp
	ret	
.label_834:
	mov	rbp, rbp
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40cf10

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
	#Procedure 0x40cfb0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_836
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_837
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
	je	.label_837
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
.label_836:
	mov	ecx, 1
.label_837:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d020

	.globl chdir_long
	.type chdir_long, @function
chdir_long:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r12
	mov	rbp, rbp
	push	rbx
	mov	rbp, rdi
	nop	
	call	chdir
	mov	ebx, eax
	test	ebx, ebx
	je	.label_852
	call	__errno_location
	lea	rsi, [rsi]
	mov	r14, rax
	mov	rbp, rbp
	cmp	dword ptr [r14], 0x24
	jne	.label_838
	mov	rdi, rbp
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	r15, rax
	test	r15, r15
	je	.label_860
	mov	rsp, rsp
	cmp	r15, 0xfff
	mov	rsp, rsp
	jbe	.label_864
	add	r15, rbp
	nop	
	mov	rax, -1
	nop	
.label_843:
	mov	rsp, rsp
	mov	rbx, rax
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp + rbx + 1]
	lea	rax, [rbx + 1]
	lea	rdi, [rdi]
	cmp	ecx, 0x2f
	lea	rdi, [rdi]
	je	.label_843
	nop	
	mov	r12d, 0xffffff9c
	test	rax, rax
	nop	
	je	.label_850
	cmp	rax, 2
	jne	.label_853
	nop	
	lea	rdi, [rbp + 3]
	lea	rsi, [rsi]
	mov	rdx, r15
	lea	rdi, [rdi]
	sub	rdx, rdi
	mov	rbp, rbp
	mov	esi, 0x2f
	lea	rdi, [rdi]
	call	memchr
	nop	
	mov	rbx, rax
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_857
	mov	byte ptr [rbx], 0
	lea	rsi, [rsi]
	mov	edi, 0xffffff9c
	mov	rsp, rsp
	mov	edx, 0x10900
	xor	eax, eax
	mov	rsi, rbp
	call	openat
	mov	rbp, rbp
	mov	r12d, eax
	mov	rbp, rbp
	test	r12d, r12d
	lea	rdi, [rdi]
	mov	byte ptr [rbx], 0x2f
	nop	
	js	.label_845
	nop	
.label_851:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbx + 1]
	inc	rbx
	mov	rsp, rsp
	cmp	eax, 0x2f
	je	.label_851
	lea	rsi, [rsi]
	jmp	.label_855
.label_852:
	xor	ebx, ebx
	jmp	.label_838
.label_850:
	mov	rbx, rbp
	jmp	.label_855
.label_853:
	mov	rsp, rsp
	mov	edi, 0xffffff9c
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.3_5
	nop	
	mov	edx, 0x10900
	xor	eax, eax
	mov	rsp, rsp
	call	openat
	lea	rsi, [rsi]
	mov	r12d, eax
	test	r12d, r12d
	js	.label_845
	lea	rbx, [rbp + rbx + 1]
.label_855:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbx]
	mov	rsp, rsp
	cmp	eax, 0x2f
	lea	rsi, [rsi]
	je	.label_840
	cmp	rbx, r15
	ja	.label_847
	mov	rax, r15
	sub	rax, rbx
	mov	rbp, rbp
	cmp	rax, 0xfff
	jle	.label_849
	nop	word ptr [rax + rax]
.label_862:
	mov	rsp, rsp
	mov	esi, 0x2f
	mov	edx, 0x1000
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	memrchr
	mov	rsp, rsp
	mov	rbp, rax
	lea	rdi, [rdi]
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_857
	lea	rsi, [rsi]
	mov	byte ptr [rbp], 0
	mov	rax, rbp
	sub	rax, rbx
	cmp	rax, 0x1000
	mov	rsp, rsp
	jge	.label_863
	mov	edx, 0x10900
	xor	eax, eax
	mov	edi, r12d
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	openat
	mov	ebx, eax
	lea	rsi, [rsi]
	test	ebx, ebx
	js	.label_848
	mov	rsp, rsp
	test	r12d, r12d
	js	.label_844
	mov	edi, r12d
	lea	rdi, [rdi]
	call	close
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	jne	.label_842
.label_844:
	mov	r12d, ebx
	mov	rsp, rsp
	mov	byte ptr [rbp], 0x2f
	mov	rbx, rbp
	nop	word ptr [rax + rax]
.label_859:
	movzx	eax, byte ptr [rbx + 1]
	inc	rbx
	cmp	eax, 0x2f
	nop	
	je	.label_859
	mov	rax, r15
	sub	rax, rbx
	mov	rbp, rbp
	cmp	rax, 0x1000
	jge	.label_862
.label_849:
	lea	rsi, [rsi]
	cmp	rbx, r15
	jae	.label_841
	mov	edx, 0x10900
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edi, r12d
	nop	
	mov	rsi, rbx
	call	openat
	lea	rdi, [rdi]
	mov	ebx, eax
	lea	rdi, [rdi]
	test	ebx, ebx
	js	.label_861
	lea	rdi, [rdi]
	test	r12d, r12d
	lea	rsi, [rsi]
	js	.label_839
	mov	edi, r12d
	nop	
	call	close
	test	eax, eax
	je	.label_839
	jmp	.label_842
.label_857:
	mov	rsp, rsp
	mov	dword ptr [r14], 0x24
	jmp	.label_856
.label_841:
	mov	ebx, r12d
.label_839:
	mov	edi, ebx
	call	fchdir
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_858
	lea	rdi, [rdi]
	mov	r12d, ebx
	jmp	.label_861
.label_845:
	mov	ebx, dword ptr [r14]
	nop	
	jmp	.label_846
.label_858:
	test	ebx, ebx
	js	.label_854
	mov	edi, ebx
	call	close
	test	eax, eax
	lea	rdi, [rdi]
	mov	ebx, 0
	mov	rbp, rbp
	je	.label_838
	lea	rdi, [rdi]
	jmp	.label_842
.label_848:
	mov	byte ptr [rbp], 0x2f
.label_861:
	nop	
	mov	ebx, dword ptr [r14]
	lea	rdi, [rdi]
	test	r12d, r12d
	nop	
	js	.label_846
	mov	edi, r12d
	nop	
	call	close
	test	eax, eax
	mov	rbp, rbp
	jne	.label_842
.label_846:
	mov	dword ptr [r14], ebx
.label_856:
	mov	ebx, 0xffffffff
.label_838:
	mov	eax, ebx
	nop	
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_854:
	xor	ebx, ebx
	lea	rsi, [rsi]
	jmp	.label_838
.label_863:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.6_3
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 0xb3
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_842:
	mov	edi, OFFSET FLAT:.str.7_2
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 0x40
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.cdb_free
	lea	rdi, [rdi]
	call	__assert_fail
.label_860:
	mov	edi, OFFSET FLAT:.str_10
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 0x7e
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_864:
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.2_5
	nop	
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 0x7f
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_840:
	nop	
	mov	edi, OFFSET FLAT:.str.4_4
	mov	esi, OFFSET FLAT:.str.1_8
	lea	rsi, [rsi]
	mov	edx, 0xa2
	nop	
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	nop	
	call	__assert_fail
.label_847:
	mov	edi, OFFSET FLAT:.str.5_3
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_8
	mov	rbp, rbp
	mov	edx, 0xa3
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d410

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
	je	.label_865
	nop	
	cmp	r15, -2
	jb	.label_865
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_865
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_865:
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
	#Procedure 0x40d4a0

	.globl read_file_system_list
	.type read_file_system_list, @function
read_file_system_list:
	push	rbp
	nop	
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	push	r12
	push	rbx
	nop	
	sub	rsp, 0x78
	mov	edi, OFFSET FLAT:.str_11
	mov	esi, OFFSET FLAT:.str.1_9
	call	fopen
	lea	rsi, [rsi]
	mov	r15, rax
	nop	
	mov	qword ptr [rsp + 0x38], r15
	mov	rsp, rsp
	test	r15, r15
	nop	
	je	.label_883
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], 0
	nop	
	mov	qword ptr [rsp + 0x30], 0
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x50]
	lea	rsi, [rsp + 0x30]
	lea	rsi, [rsi]
	mov	edx, 0xa
	mov	rcx, r15
	call	__getdelim
	cmp	rax, -1
	je	.label_874
	lea	rax, [rsp + 0x68]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], rax
	lea	rbx, [rsp + 0x5f]
	lea	r14, [rsp + 0x74]
	lea	r12, [rsp + 0x70]
	nop	
	lea	r13, [rsp + 0x60]
	nop	word ptr [rax + rax]
.label_879:
	mov	rdi, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x10], rbx
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], r14
	mov	qword ptr [rsp], r12
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.2_6
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, r13
	lea	rsi, [rsi]
	lea	rcx, [rsp + 0x48]
	nop	
	lea	r8, [rsp + 0x58]
	lea	r9, [rsp + 0x2c]
	lea	rdi, [rdi]
	call	sscanf
	nop	
	or	eax, 4
	mov	rsp, rsp
	cmp	eax, 7
	mov	rbp, rbp
	jne	.label_875
	movsxd	rdi, dword ptr [rsp + 0x74]
	lea	rsi, [rsi]
	add	rdi, qword ptr [rsp + 0x50]
	nop	
	mov	esi, OFFSET FLAT:.str.3_6
	call	strstr
	mov	rbp, rax
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_875
	mov	qword ptr [rsp], rbx
	mov	esi, OFFSET FLAT:.str.4_5
	mov	rsp, rsp
	xor	eax, eax
	mov	rdi, rbp
	lea	rdx, [rsp + 0x24]
	lea	rcx, [rsp + 0x64]
	lea	r8, [rsp + 0x4c]
	lea	r9, [rsp + 0x28]
	call	sscanf
	or	eax, 4
	lea	rsi, [rsi]
	cmp	eax, 5
	mov	rsp, rsp
	jne	.label_875
	movsxd	rax, dword ptr [rsp + 0x2c]
	mov	rcx, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0
	movsxd	rax, dword ptr [rsp + 0x74]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x50]
	mov	byte ptr [rcx + rax], 0
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rsp + 0x64]
	lea	rdi, [rdi]
	mov	byte ptr [rbp + rax], 0
	movsxd	rax, dword ptr [rsp + 0x28]
	nop	
	mov	byte ptr [rbp + rax], 0
	mov	rsp, rsp
	movsxd	rdi, dword ptr [rsp + 0x4c]
	lea	rsi, [rsi]
	add	rdi, rbp
	nop	
	call	unescape_tab
	movsxd	rdi, dword ptr [rsp + 0x70]
	mov	rbp, rbp
	add	rdi, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	call	unescape_tab
	mov	rbp, rbp
	movsxd	rdi, dword ptr [rsp + 0x58]
	add	rdi, qword ptr [rsp + 0x50]
	call	unescape_tab
	lea	rsi, [rsi]
	mov	edi, 0x38
	call	xmalloc
	mov	r13, rax
	movsxd	rdi, dword ptr [rsp + 0x4c]
	add	rdi, rbp
	nop	
	call	xstrdup
	lea	rsi, [rsi]
	mov	qword ptr [r13], rax
	lea	rsi, [rsi]
	movsxd	rdi, dword ptr [rsp + 0x70]
	mov	rsp, rsp
	add	rdi, qword ptr [rsp + 0x50]
	call	xstrdup
	nop	
	mov	qword ptr [r13 + 8], rax
	movsxd	rdi, dword ptr [rsp + 0x58]
	add	rdi, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	call	xstrdup
	mov	qword ptr [r13 + 0x10], rax
	movsxd	rdi, dword ptr [rsp + 0x24]
	lea	rdi, [rdi]
	add	rdi, rbp
	call	xstrdup
	mov	rsp, rsp
	mov	rbp, rax
	mov	qword ptr [r13 + 0x18], rbp
	mov	r12b, byte ptr [r13 + 0x28]
	lea	rsi, [rsi]
	or	r12b, 4
	mov	rbp, rbp
	mov	byte ptr [r13 + 0x28], r12b
	nop	
	mov	eax, dword ptr [rsp + 0x60]
	mov	ecx, dword ptr [rsp + 0x48]
	movzx	edx, cl
	mov	rbp, rbp
	mov	esi, eax
	mov	rbp, rbp
	shl	esi, 8
	lea	rsi, [rsi]
	and	esi, 0xfff00
	or	esi, edx
	mov	rsp, rsp
	and	ecx, 0xffffff00
	shl	rcx, 0xc
	lea	rsi, [rsi]
	and	eax, 0xfffff000
	shl	rax, 0x20
	or	rax, rcx
	mov	rbp, rbp
	or	rax, rsi
	mov	qword ptr [r13 + 0x20], rax
	mov	esi, OFFSET FLAT:.str.5_1
	mov	rdi, rbp
	mov	rsp, rsp
	call	strcmp
	mov	r14b, 1
	test	eax, eax
	mov	rsp, rsp
	mov	al, 1
	je	.label_869
	mov	esi, OFFSET FLAT:.str.6_0
	mov	rdi, rbp
	mov	rbp, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	lea	rsi, [rsi]
	je	.label_869
	nop	
	mov	esi, OFFSET FLAT:.str.7_3
	mov	rdi, rbp
	nop	
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	mov	al, 1
	je	.label_869
	mov	esi, OFFSET FLAT:.str.8_0
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	rsp, rsp
	mov	al, 1
	je	.label_869
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.9_0
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	nop	
	je	.label_869
	mov	esi, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	strcmp
	test	eax, eax
	mov	rsp, rsp
	mov	al, 1
	je	.label_869
	mov	esi, OFFSET FLAT:.str.11_0
	mov	rsp, rsp
	mov	rdi, rbp
	call	strcmp
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	mov	al, 1
	je	.label_869
	mov	esi, OFFSET FLAT:.str.12_0
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_869
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.13_0
	mov	rsp, rsp
	mov	rdi, rbp
	nop	
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	mov	al, 1
	je	.label_869
	mov	esi, OFFSET FLAT:.str.14_0
	mov	rdi, rbp
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	mov	al, 1
	lea	rsi, [rsi]
	je	.label_869
	mov	esi, OFFSET FLAT:.str.15_2
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	mov	al, 1
	je	.label_869
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.16_1
	mov	rbp, rbp
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	je	.label_869
	mov	esi, OFFSET FLAT:.str.17_1
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	sete	al
	nop	
.label_869:
	lea	rsi, [rsi]
	and	r12b, 0xfe
	or	r12b, al
	mov	byte ptr [r13 + 0x28], r12b
	nop	
	mov	r15, qword ptr [r13]
	mov	rsp, rsp
	mov	esi, 0x3a
	mov	rdi, r15
	call	strchr
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x40]
	jne	.label_877
	movzx	eax, byte ptr [r15]
	cmp	eax, 0x2f
	jne	.label_884
	movzx	eax, byte ptr [r15 + 1]
	cmp	eax, 0x2f
	jne	.label_884
	mov	esi, OFFSET FLAT:.str.18_2
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	strcmp
	nop	
	test	eax, eax
	je	.label_877
	mov	esi, OFFSET FLAT:.str.19_0
	mov	rdi, rbp
	mov	rsp, rsp
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	je	.label_877
.label_884:
	mov	edi, OFFSET FLAT:.str.20
	mov	rbp, rbp
	mov	rsi, r15
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	sete	r14b
.label_877:
	lea	rdi, [rdi]
	add	r14b, r14b
	and	r12b, 0xfd
	lea	rsi, [rsi]
	or	r12b, r14b
	lea	rdi, [rdi]
	mov	byte ptr [r13 + 0x28], r12b
	mov	qword ptr [rbx], r13
	add	r13, 0x30
	mov	qword ptr [rsp + 0x40], r13
	mov	r15, qword ptr [rsp + 0x38]
	lea	rbx, [rsp + 0x5f]
	lea	r14, [rsp + 0x74]
	nop	
	lea	r12, [rsp + 0x70]
	nop	
	lea	r13, [rsp + 0x60]
.label_875:
	lea	rdi, [rdi]
	mov	edx, 0xa
	nop	
	lea	rdi, [rsp + 0x50]
	lea	rsi, [rsp + 0x30]
	mov	rcx, r15
	mov	rsp, rsp
	call	__getdelim
	cmp	rax, -1
	mov	rbp, rbp
	jne	.label_879
	mov	rbp, rbp
	jmp	.label_880
.label_883:
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.21_0
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_9
	call	setmntent
	lea	rdi, [rdi]
	mov	r14, rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], r14
	xor	eax, eax
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_878
	lea	rsi, [rsi]
	lea	r13, [rsp + 0x68]
	mov	rdi, r14
	nop	
	call	getmntent
	mov	rbp, rax
	nop	
	test	rbp, rbp
	je	.label_885
	nop	
.label_882:
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.22_0
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rbp, rbp
	call	hasmntopt
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], rax
	lea	rdi, [rdi]
	mov	edi, 0x38
	nop	
	call	xmalloc
	nop	
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp]
	nop	
	call	xstrdup
	lea	rdi, [rdi]
	mov	qword ptr [rbx], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	call	xstrdup
	mov	qword ptr [rbx + 8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x10], 0
	nop	
	mov	rdi, qword ptr [rbp + 0x10]
	call	xstrdup
	mov	rbp, rbp
	mov	r12, rax
	mov	qword ptr [rbx + 0x18], r12
	lea	rdi, [rdi]
	mov	r14b, byte ptr [rbx + 0x28]
	or	r14b, 4
	nop	
	mov	byte ptr [rbx + 0x28], r14b
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.5_1
	mov	rdi, r12
	mov	rbp, rbp
	call	strcmp
	mov	rbp, rbp
	mov	r15b, 1
	test	eax, eax
	lea	rdi, [rdi]
	mov	bpl, 1
	je	.label_867
	nop	
	mov	esi, OFFSET FLAT:.str.6_0
	mov	rdi, r12
	lea	rdi, [rdi]
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	mov	bpl, 1
	mov	rbp, rbp
	je	.label_867
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.7_3
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsp, rsp
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	mov	bpl, 1
	lea	rdi, [rdi]
	je	.label_867
	mov	esi, OFFSET FLAT:.str.8_0
	mov	rbp, rbp
	mov	rdi, r12
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	mov	bpl, 1
	mov	rbp, rbp
	je	.label_867
	mov	esi, OFFSET FLAT:.str.9_0
	mov	rdi, r12
	nop	
	call	strcmp
	test	eax, eax
	mov	bpl, 1
	je	.label_867
	nop	
	mov	esi, OFFSET FLAT:.str.10_0
	mov	rdi, r12
	nop	
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	mov	bpl, 1
	lea	rsi, [rsi]
	je	.label_867
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.11_0
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rbp, rbp
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	mov	bpl, 1
	je	.label_867
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.12_0
	mov	rdi, r12
	mov	rsp, rsp
	call	strcmp
	test	eax, eax
	mov	bpl, 1
	lea	rdi, [rdi]
	je	.label_867
	mov	esi, OFFSET FLAT:.str.13_0
	mov	rdi, r12
	mov	rsp, rsp
	call	strcmp
	test	eax, eax
	lea	rdi, [rdi]
	mov	bpl, 1
	mov	rsp, rsp
	je	.label_867
	mov	esi, OFFSET FLAT:.str.14_0
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	bpl, 1
	je	.label_867
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.15_2
	nop	
	mov	rdi, r12
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	mov	bpl, 1
	mov	rsp, rsp
	je	.label_867
	mov	esi, OFFSET FLAT:.str.16_1
	mov	rdi, r12
	nop	
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	mov	bpl, 1
	je	.label_867
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x38], 0
	nop	
	sete	bpl
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.17_1
	mov	rdi, r12
	mov	rsp, rsp
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_867
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_867:
	and	r14b, 0xfe
	lea	rsi, [rsi]
	or	r14b, bpl
	mov	byte ptr [rbx + 0x28], r14b
	mov	rbp, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	esi, 0x3a
	lea	rsi, [rsi]
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	strchr
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_872
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp]
	mov	rbp, rbp
	cmp	eax, 0x2f
	mov	rsp, rsp
	jne	.label_873
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp + 1]
	cmp	eax, 0x2f
	mov	rbp, rbp
	jne	.label_873
	mov	esi, OFFSET FLAT:.str.18_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_872
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.19_0
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_872
	nop	word ptr cs:[rax + rax]
.label_873:
	nop	
	mov	edi, OFFSET FLAT:.str.20
	nop	
	mov	rsi, rbp
	call	strcmp
	test	eax, eax
	sete	r15b
.label_872:
	add	r15b, r15b
	mov	rsp, rsp
	and	r14b, 0xfd
	mov	rsp, rsp
	or	r14b, r15b
	mov	byte ptr [rbx + 0x28], r14b
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x20], -1
	mov	rbp, rbp
	mov	qword ptr [r13], rbx
	lea	rsi, [rsi]
	add	rbx, 0x30
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0x40]
	mov	rdi, r14
	lea	rdi, [rdi]
	call	getmntent
	mov	rsp, rsp
	mov	rbp, rax
	nop	
	test	rbp, rbp
	mov	r13, rbx
	mov	rbp, rbp
	jne	.label_882
	nop	
	jmp	.label_871
.label_874:
	lea	rax, [rsp + 0x68]
	mov	qword ptr [rsp + 0x40], rax
.label_880:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	test	byte ptr [r15], 0x20
	lea	rdi, [rdi]
	jne	.label_868
	mov	rdi, r15
	call	rpl_fclose
	cmp	eax, -1
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x40]
	jne	.label_870
	mov	rbp, rbp
	jmp	.label_876
.label_868:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	r14d, dword ptr [rbp]
	mov	rdi, r15
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x40]
	jmp	.label_876
.label_885:
	lea	rdi, [rdi]
	mov	rbx, r13
.label_871:
	nop	
	mov	rdi, r14
	mov	rbp, rbp
	call	endmntent
	nop	
	test	eax, eax
	nop	
	je	.label_876
.label_870:
	mov	qword ptr [rbx], 0
	mov	rax, qword ptr [rsp + 0x68]
	jmp	.label_878
.label_876:
	call	__errno_location
	mov	r15, rax
	lea	rsi, [rsi]
	mov	r14d, dword ptr [r15]
	mov	qword ptr [rbx], 0
	mov	rbx, qword ptr [rsp + 0x68]
	test	rbx, rbx
	je	.label_881
	nop	dword ptr [rax + rax]
.label_866:
	mov	rdi, qword ptr [rbx]
	mov	rbp, rbp
	mov	rbp, qword ptr [rbx + 0x30]
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 8]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	nop	
	test	byte ptr [rbx + 0x28], 4
	lea	rdi, [rdi]
	je	.label_886
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
.label_886:
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x68], rbp
	test	rbp, rbp
	mov	rbp, rbp
	mov	rbx, rbp
	jne	.label_866
.label_881:
	mov	dword ptr [r15], r14d
	xor	eax, eax
.label_878:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40de40

	.globl unescape_tab
	.type unescape_tab, @function
unescape_tab:
	push	r14
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	r14, rdi
	call	strlen
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	inc	rax
	lea	rsi, [rsi]
	je	.label_888
	mov	rdx, r14
	nop	word ptr cs:[rax + rax]
.label_890:
	nop	
	mov	r9b, byte ptr [r14 + rcx]
	lea	rsi, [rcx + 4]
	lea	rdi, [rdi]
	cmp	rsi, rax
	mov	rsp, rsp
	jae	.label_887
	nop	
	movzx	esi, r9b
	mov	rsp, rsp
	cmp	esi, 0x5c
	mov	rsp, rsp
	jne	.label_887
	mov	sil, byte ptr [rcx + r14 + 1]
	lea	rdi, [rdi]
	mov	bl, sil
	nop	
	and	bl, 0xfc
	lea	rsi, [rsi]
	movzx	edi, bl
	lea	rsi, [rsi]
	cmp	edi, 0x30
	jne	.label_887
	lea	rsi, [rsi]
	mov	dil, byte ptr [rcx + r14 + 2]
	nop	
	mov	bl, dil
	nop	
	and	bl, 0xf8
	nop	
	movzx	ebx, bl
	cmp	ebx, 0x30
	jne	.label_887
	lea	rsi, [rsi]
	mov	r8b, byte ptr [r14 + rcx + 3]
	mov	rsp, rsp
	mov	bl, r8b
	lea	rsi, [rsi]
	and	bl, 0xf8
	movzx	ebx, bl
	cmp	ebx, 0x30
	lea	rsi, [rsi]
	jne	.label_887
	add	rcx, 3
	shl	sil, 6
	lea	rdi, [rdi]
	shl	dil, 3
	lea	rsi, [rsi]
	add	dil, sil
	lea	rsi, [rsi]
	add	dil, r8b
	add	dil, 0x50
	mov	byte ptr [rdx], dil
	jmp	.label_889
	nop	word ptr cs:[rax + rax]
.label_887:
	mov	byte ptr [rdx], r9b
.label_889:
	lea	rsi, [rsi]
	inc	rcx
	inc	rdx
	lea	rsi, [rsi]
	cmp	rcx, rax
	lea	rsi, [rsi]
	jb	.label_890
.label_888:
	add	rsp, 8
	pop	rbx
	pop	r14
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40df50
	.globl free_mount_entry
	.type free_mount_entry, @function
free_mount_entry:

	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	call	free
	lea	rsi, [rsi]
	test	byte ptr [rbx + 0x28], 4
	je	.label_891
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
.label_891:
	mov	rdi, rbx
	lea	rdi, [rdi]
	pop	rbx
	jmp	free
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40dfa0

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	r15
	push	r14
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	r14, rdi
	xor	r15d, r15d
	test	r14, r14
	mov	rbp, rbp
	je	.label_892
	mov	rbp, rbp
	mov	rdi, r14
	call	strlen
	nop	
	mov	r15, rax
	inc	r15
.label_892:
	lea	rdi, [rdi]
	lea	rax, [r15 + 0x11]
	nop	
	and	rax, 0xfffffffffffffff8
	cmp	r15, 0x77
	mov	edi, 0x80
	nop	
	cmovae	rdi, rax
	lea	rdi, [rdi]
	call	malloc
	mov	rbp, rbp
	mov	rbx, rax
	test	rbx, rbx
	je	.label_893
	mov	rsp, rsp
	mov	qword ptr [rbx], 0
	test	r14, r14
	lea	rdi, [rdi]
	setne	byte ptr [rbx + 8]
	nop	
	mov	byte ptr [rbx + 9], 0
	lea	rsi, [rsi]
	je	.label_893
	mov	r12, rbx
	mov	rbp, rbp
	add	r12, 9
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	lea	rsi, [rsi]
	call	memcpy
	mov	byte ptr [r12 + r15], 0
.label_893:
	mov	rax, rbx
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40e050
	.globl tzfree
	.type tzfree, @function
tzfree:

	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	cmp	rdi, 2
	jb	.label_895
	nop	dword ptr [rax]
.label_894:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	jne	.label_894
.label_895:
	mov	rsp, rsp
	pop	rbx
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40e080

	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rbp, rbp
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	r15, rdx
	lea	rdi, [rdi]
	mov	rbp, rsi
	nop	
	mov	rbx, rdi
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_896
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_898
	mov	rdi, rbp
	mov	rsi, r15
	nop	
	call	localtime_r
	nop	
	mov	bpl, 1
	mov	rbp, rbp
	test	rax, rax
	je	.label_897
	nop	
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r15
	call	save_abbr
	lea	rdi, [rdi]
	mov	bpl, al
	xor	bpl, 1
.label_897:
	mov	rdi, r14
	lea	rdi, [rdi]
	call	revert_tz
	mov	rbp, rbp
	xor	ecx, ecx
	xor	al, 1
	mov	rbp, rbp
	cmovne	r15, rcx
	nop	
	test	bpl, bpl
	lea	rsi, [rsi]
	cmovne	r15, rcx
	lea	rdi, [rdi]
	mov	rax, r15
	jmp	.label_899
.label_896:
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rsi, r15
	lea	rdi, [rdi]
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	jmp	gmtime_r
.label_898:
	xor	eax, eax
.label_899:
	nop	
	add	rsp, 8
	pop	rbx
	nop	
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e160

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rbp, rbp
	push	r12
	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	r14, rdi
	mov	edi, OFFSET FLAT:.str_2
	call	getenv
	mov	r15, rax
	test	r15, r15
	mov	bl, byte ptr [r14 + 8]
	je	.label_901
	lea	rdi, [rdi]
	test	bl, bl
	lea	rsi, [rsi]
	je	.label_903
	lea	rdi, [rdi]
	lea	rdi, [r14 + 9]
	lea	rsi, [rsi]
	mov	rsi, r15
	call	strcmp
	mov	ecx, eax
	mov	rsp, rsp
	mov	eax, 1
	lea	rsi, [rsi]
	test	ecx, ecx
	je	.label_900
.label_903:
	lea	rdi, [rdi]
	mov	rdi, r15
	call	strlen
	mov	r12, rax
	inc	r12
	mov	rsp, rsp
	mov	bpl, 1
	mov	rbp, rbp
	jmp	.label_902
.label_901:
	lea	rsi, [rsi]
	xor	ebp, ebp
	mov	eax, 1
	nop	
	test	bl, bl
	nop	
	mov	r12d, 0
	mov	rbp, rbp
	je	.label_900
.label_902:
	lea	rsi, [rsi]
	lea	rax, [r12 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r12, 0x77
	mov	edi, 0x80
	lea	rsi, [rsi]
	cmovae	rdi, rax
	mov	rsp, rsp
	call	malloc
	nop	
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	mov	rbp, rbp
	je	.label_900
	lea	rdi, [rdi]
	mov	qword ptr [r13], 0
	lea	rsi, [rsi]
	mov	byte ptr [r13 + 8], bpl
	mov	rbp, rbp
	mov	byte ptr [r13 + 9], 0
	lea	rsi, [rsi]
	test	bpl, bpl
	je	.label_908
	nop	
	lea	rbp, [r13 + 9]
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rsi, r15
	lea	rdi, [rdi]
	mov	rdx, r12
	call	memcpy
	nop	
	mov	byte ptr [rbp + r12], 0
.label_908:
	lea	rdi, [rdi]
	test	bl, bl
	lea	rdi, [rdi]
	je	.label_909
	mov	rbp, rbp
	add	r14, 9
	mov	edi, OFFSET FLAT:.str_2
	mov	rsp, rsp
	mov	edx, 1
	mov	rsi, r14
	call	setenv
	mov	rsp, rsp
	jmp	.label_904
.label_909:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_2
	mov	rbp, rbp
	call	unsetenv
.label_904:
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	je	.label_907
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	mov	r14, rax
	mov	rsp, rsp
	mov	ebp, dword ptr [r14]
	mov	rsp, rsp
	cmp	r13, 2
	jb	.label_905
	nop	word ptr cs:[rax + rax]
.label_906:
	mov	rbx, qword ptr [r13]
	mov	rdi, r13
	call	free
	test	rbx, rbx
	mov	r13, rbx
	jne	.label_906
.label_905:
	mov	dword ptr [r14], ebp
	xor	eax, eax
	jmp	.label_900
.label_907:
	nop	
	call	tzset
	lea	rdi, [rdi]
	mov	rax, r13
.label_900:
	nop	
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e330

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	r15, rsi
	lea	rsi, [rsi]
	mov	r12, rdi
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	rbp, rbp
	mov	r14b, 1
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_914
	cmp	r15, rbx
	ja	.label_920
	nop	
	lea	rax, [r15 + 0x38]
	cmp	rbx, rax
	lea	rsi, [rsi]
	jb	.label_914
.label_920:
	mov	ebp, OFFSET FLAT:.str_0
	nop	
	cmp	byte ptr [rbx], 0
	je	.label_910
	lea	rbp, [r12 + 9]
	jmp	.label_912
.label_911:
	mov	rax, qword ptr [r12]
	lea	rbp, [rax + 9]
	test	rax, rax
	cmove	rbp, rcx
	mov	rbp, rbp
	cmovne	r12, rax
.label_912:
	lea	r13, [r12 + 9]
.label_922:
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_910
	cmp	byte ptr [rbp], 0
	mov	rsp, rsp
	jne	.label_913
	lea	rsi, [rsi]
	cmp	rbp, r13
	jne	.label_915
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + 8], 0
	je	.label_918
.label_913:
	mov	rbp, rbp
	mov	rdi, rbp
	call	strlen
	nop	
	lea	rcx, [rax + rbp + 1]
	lea	rsi, [rsi]
	cmp	byte ptr [rax + rbp + 1], 0
	mov	rbp, rcx
	jne	.label_922
	lea	rdi, [rdi]
	jmp	.label_911
.label_918:
	lea	rdi, [rdi]
	mov	rbp, r13
.label_915:
	mov	rdi, rbx
	mov	rbp, rbp
	call	strlen
	lea	rdx, [rax + 1]
	nop	
	mov	rcx, rbp
	lea	rsi, [rsi]
	sub	rcx, r13
	mov	rbp, rbp
	mov	rsi, rcx
	not	rsi
	lea	rsi, [rsi]
	cmp	rdx, rsi
	jbe	.label_919
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xc
.label_917:
	xor	r14d, r14d
	jmp	.label_914
.label_919:
	add	rcx, rdx
	mov	rbp, rbp
	cmp	rcx, 0x76
	ja	.label_916
	nop	
	mov	rdi, rbp
	mov	rsi, rbx
	lea	rdi, [rdi]
	mov	rbx, rdx
	call	memcpy
	mov	byte ptr [rbp + rbx], 0
	mov	qword ptr [r15 + 0x30], rbp
	jmp	.label_914
.label_916:
	add	rax, 0x12
	lea	rdi, [rdi]
	and	rax, 0xfffffffffffffff8
	lea	rsi, [rsi]
	cmp	rdx, 0x77
	mov	rsp, rsp
	mov	r13, rdx
	mov	rbp, rbp
	mov	edi, 0x80
	cmovae	rdi, rax
	mov	rsp, rsp
	call	malloc
	mov	rbp, rbp
	test	rax, rax
	je	.label_921
	nop	
	mov	qword ptr [rax], 0
	mov	word ptr [rax + 8], 1
	lea	rsi, [rsi]
	mov	rbp, rax
	add	rbp, 9
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rsi, [rsi]
	mov	rdx, r13
	mov	rbx, rax
	mov	rsp, rsp
	call	memcpy
	mov	byte ptr [rbx + r13 + 9], 0
	mov	qword ptr [r12], rbx
	mov	byte ptr [rbx + 8], 0
.label_910:
	mov	qword ptr [r15 + 0x30], rbp
.label_914:
	mov	rbp, rbp
	mov	al, r14b
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_921:
	mov	qword ptr [r12], 0
	jmp	.label_917
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40e530

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	nop	
	push	r14
	lea	rsi, [rsi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	mov	rbp, rdi
	mov	r12b, 1
	cmp	rbp, 1
	je	.label_927
	nop	
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	r15d, dword ptr [r14]
	lea	rsi, [rsi]
	cmp	byte ptr [rbp + 8], 0
	je	.label_929
	lea	rsi, [rbp + 9]
	mov	edi, OFFSET FLAT:.str_2
	mov	edx, 1
	call	setenv
	jmp	.label_923
.label_929:
	mov	edi, OFFSET FLAT:.str_2
	call	unsetenv
.label_923:
	test	eax, eax
	je	.label_926
	mov	r15d, dword ptr [r14]
	xor	r12d, r12d
	jmp	.label_924
.label_926:
	call	tzset
	mov	r12b, 1
.label_924:
	cmp	rbp, 2
	mov	rsp, rsp
	jb	.label_928
	nop	dword ptr [rax]
.label_925:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbp]
	nop	
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	test	rbx, rbx
	mov	rbp, rbx
	jne	.label_925
.label_928:
	mov	dword ptr [r14], r15d
.label_927:
	mov	al, r12b
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r14
	nop	
	pop	r15
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e5f0

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	nop	
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x40
	nop	
	mov	r15, rsi
	mov	rbx, rdi
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_932
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	set_tz
	mov	r14, rax
	mov	rbp, rbp
	test	r14, r14
	je	.label_933
	mov	rdi, r15
	lea	rsi, [rsi]
	call	mktime
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], rax
	mov	rbp, rbp
	cmp	rax, -1
	jne	.label_934
	nop	
	lea	rdi, [rsp + 0x38]
	lea	rsi, [rsp]
	call	localtime_r
	lea	rdi, [rdi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_931
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	xor	rax, qword ptr [r15]
	mov	rsp, rsp
	xor	rcx, qword ptr [r15 + 8]
	mov	rbp, rbp
	mov	edx, ecx
	or	edx, eax
	lea	rsi, [rsi]
	shr	rax, 0x20
	or	edx, eax
	nop	
	shr	rcx, 0x20
	mov	rax, qword ptr [rsp + 0x10]
	xor	rax, qword ptr [r15 + 0x10]
	mov	esi, eax
	or	esi, ecx
	lea	rsi, [rsi]
	or	esi, edx
	shr	rax, 0x20
	or	eax, esi
	mov	edi, dword ptr [r15 + 0x20]
	nop	
	mov	edx, dword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	test	edi, edi
	lea	rsi, [rsi]
	sete	sil
	test	edx, edx
	mov	rsp, rsp
	sete	cl
	lea	rdi, [rdi]
	xor	cl, sil
	or	edx, edi
	setns	dl
	and	dl, cl
	movzx	ecx, dl
	lea	rdi, [rdi]
	or	ecx, eax
	jne	.label_931
.label_934:
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r15
	call	save_abbr
	nop	
	test	al, al
	lea	rdi, [rdi]
	jne	.label_931
	mov	qword ptr [rsp + 0x38], -1
.label_931:
	mov	rdi, r14
	mov	rbp, rbp
	call	revert_tz
	test	al, al
	mov	rsp, rsp
	je	.label_933
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x38]
	jmp	.label_930
.label_933:
	lea	rdi, [rdi]
	mov	rax, -1
.label_930:
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbx
	nop	
	pop	r14
	pop	r15
	ret	
.label_932:
	mov	rdi, r15
	add	rsp, 0x40
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	r15
	mov	rbp, rbp
	jmp	timegm
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40e760

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
	jne	.label_935
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_936
	test	cl, cl
	mov	rsp, rsp
	jne	.label_936
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_936
.label_935:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_936
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_936:
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
	#Procedure 0x40e7f0

	.globl open_safer
	.type open_safer, @function
open_safer:
	mov	rsp, rsp
	sub	rsp, 0xc8
	nop	
	test	al, al
	mov	rbp, rbp
	je	.label_937
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x70], xmm4
	nop	
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_937:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	xor	edx, edx
	nop	
	test	sil, 0x40
	je	.label_938
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	mov	rsp, rsp
	lea	rax, [rsp + 0xd0]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], 0x10
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	lea	rdi, [rdi]
	ja	.label_939
	lea	rsi, [rsi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_940
.label_939:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_940:
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax]
.label_938:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	call	open
	mov	edi, eax
	mov	rsp, rsp
	call	fd_safer
	mov	rbp, rbp
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e910

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
	je	.label_942
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_941
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_943
.label_941:
	nop	
	mov	esi, OFFSET FLAT:.str.1_10
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_942
.label_943:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_942:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40e960

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
	mov	eax, OFFSET FLAT:.str.1_11
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_944
	nop	
	mov	rax, rcx
.label_944:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e9a0

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	nop	
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	rbp, rbp
	mov	ebx, edi
	mov	rbp, rbp
	cmp	ebx, 2
	ja	.label_945
	mov	edi, ebx
	call	dup_safer
	mov	r14d, eax
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rax
	nop	
	mov	r15d, dword ptr [rbp]
	mov	rsp, rsp
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	rsp, rsp
	mov	eax, r14d
	jmp	.label_946
.label_945:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_946:
	lea	rsi, [rsi]
	add	rsp, 8
	nop	
	pop	rbx
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40ea10

	.globl xvasprintf
	.type xvasprintf, @function
xvasprintf:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15, rsi
	mov	rbp, rbp
	mov	rax, rdi
	xor	ebp, ebp
	jmp	.label_951
	nop	word ptr cs:[rax + rax]
.label_952:
	lea	rdi, [rdi]
	inc	rbp
.label_951:
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rax + rbp*2]
	cmp	ecx, 0x25
	jne	.label_949
	movzx	ecx, byte ptr [rax + rbp*2 + 1]
	nop	
	cmp	ecx, 0x73
	je	.label_952
	jmp	.label_954
.label_949:
	mov	rbp, rbp
	test	cl, cl
	lea	rdi, [rdi]
	jne	.label_954
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [r15]
	movaps	xmmword ptr [rsp], xmm0
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_958
	mov	r14d, dword ptr [rsp]
	xor	ebx, ebx
	mov	rsp, rsp
	mov	r12, rbp
	nop	dword ptr [rax]
.label_956:
	mov	rsp, rsp
	cmp	r14d, 0x28
	lea	rsi, [rsi]
	ja	.label_955
	movsxd	rax, r14d
	add	rax, qword ptr [rsp + 0x10]
	add	r14d, 8
	mov	dword ptr [rsp], r14d
	jmp	.label_957
	nop	
.label_955:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rcx
.label_957:
	mov	rdi, qword ptr [rax]
	call	strlen
	add	rax, rbx
	lea	rdi, [rdi]
	cmp	rax, rbx
	mov	rbx, -1
	cmovae	rbx, rax
	lea	rdi, [rdi]
	dec	r12
	mov	rbp, rbp
	jne	.label_956
	lea	rdi, [rdi]
	test	rbx, -0x80000000
	je	.label_959
	mov	rbp, rbp
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0x4b
	mov	rsp, rsp
	xor	r14d, r14d
	lea	rdi, [rdi]
	jmp	.label_947
.label_954:
	lea	rdi, [rsp + 0x20]
	mov	esi, 1
	mov	rdx, rax
	mov	rcx, r15
	call	__vasprintf_chk
	test	eax, eax
	js	.label_960
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_947
.label_960:
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	xor	r14d, r14d
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0xc
	jne	.label_947
	lea	rdi, [rdi]
	call	xalloc_die
.label_958:
	nop	
	mov	edi, 1
	nop	
	call	xmalloc
	mov	rsp, rsp
	mov	r14, rax
	nop	
	mov	rbx, r14
	mov	rbp, rbp
	mov	byte ptr [rbx], 0
	jmp	.label_947
.label_959:
	lea	rsi, [rsi]
	inc	rax
	mov	rdi, rax
	call	xmalloc
	lea	rsi, [rsi]
	mov	r14, rax
	mov	rbx, r14
	nop	word ptr cs:[rax + rax]
.label_953:
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [r15]
	lea	rsi, [rsi]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_950
	nop	
	mov	rax, rcx
	add	rax, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	mov	dword ptr [r15], ecx
	jmp	.label_948
	nop	word ptr cs:[rax + rax]
.label_950:
	mov	rax, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [r15 + 8], rcx
.label_948:
	mov	r12, qword ptr [rax]
	mov	rdi, r12
	mov	rsp, rsp
	call	strlen
	mov	rsp, rsp
	mov	r13, rax
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r13
	mov	rbp, rbp
	call	memcpy
	add	rbx, r13
	mov	rsp, rsp
	dec	rbp
	nop	
	jne	.label_953
	mov	byte ptr [rbx], 0
.label_947:
	mov	rax, r14
	add	rsp, 0x28
	nop	
	pop	rbx
	nop	
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	nop	
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ec50

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
	js	.label_961
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_963
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
	je	.label_961
.label_963:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_961
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_962
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_962:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_961:
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
	#Procedure 0x40ed00

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_964
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_964
	test	byte ptr [rbx + 1], 1
	je	.label_964
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_964:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ed40

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
	jne	.label_965
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_965
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_966
.label_965:
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
.label_966:
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
	je	.label_967
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_967:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40edf0

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
	.section	.text
	.align	16
	#Procedure 0x40ee10

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 3
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	rpl_fcntl
	nop	word ptr cs:[rax + rax]
	nop	
	.section .text
	.align	16
	#Procedure 0x40ee30

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0xd0
	mov	rsp, rsp
	mov	ebx, edi
	test	al, al
	je	.label_978
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x50], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm6
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_978:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	nop	
	mov	qword ptr [rsp + 0x18], rcx
	nop	
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	lea	rax, [rsp]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc0], rax
	nop	
	lea	rax, [rsp + 0xf0]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xb0], 0x10
	lea	rsi, [rsi]
	cmp	esi, 0xb
	mov	rsp, rsp
	ja	.label_971
	lea	rsi, [rsi]
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_985
	mov	eax, 0x514
	mov	rsp, rsp
	bt	eax, esi
	lea	rdi, [rdi]
	jb	.label_984
	mov	rsp, rsp
	test	esi, esi
	jne	.label_971
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	lea	rsi, [rsi]
	ja	.label_972
	lea	rdi, [rdi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_977
.label_971:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_983
	mov	ecx, 0x85
	mov	rbp, rbp
	bt	ecx, eax
	lea	rsi, [rsi]
	jb	.label_984
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_976
.label_985:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_969
.label_984:
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rsp, rsp
	cmp	rcx, 0x28
	nop	
	ja	.label_970
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_973
.label_970:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_973:
	mov	edx, dword ptr [rax]
.label_986:
	nop	
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
.label_969:
	mov	ebp, eax
.label_968:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_976:
	lea	rsi, [rsi]
	cmp	eax, 6
	jne	.label_983
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_987
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_981
.label_983:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_975
	mov	rax, rcx
	lea	rsi, [rsi]
	add	rax, qword ptr [rsp + 0xc0]
	nop	
	lea	ecx, [rcx + 8]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_979
.label_972:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_977:
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax]
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_986
.label_987:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_981:
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_988
	mov	esi, 0x406
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, ebx
	mov	edx, r14d
	lea	rsi, [rsi]
	call	fcntl
	lea	rdi, [rdi]
	mov	ebp, eax
	lea	rsi, [rsi]
	test	ebp, ebp
	jns	.label_980
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_980
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	nop	
	mov	edx, r14d
	lea	rdi, [rdi]
	call	fcntl
	nop	
	mov	ebp, eax
	lea	rdi, [rdi]
	test	ebp, ebp
	js	.label_968
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	rsp, rsp
	mov	al, 1
	jmp	.label_982
.label_980:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_968
.label_975:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_979:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	nop	
	mov	edi, ebx
	lea	rdi, [rdi]
	call	fcntl
	nop	
	jmp	.label_969
.label_988:
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edi, ebx
	nop	
	mov	edx, r14d
	lea	rsi, [rsi]
	call	fcntl
	mov	ebp, eax
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	sete	al
.label_982:
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	je	.label_968
	test	ebp, ebp
	lea	rsi, [rsi]
	js	.label_968
	mov	esi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_974
	or	ecx, 1
	mov	esi, 2
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	edi, ebp
	nop	
	mov	edx, ecx
	lea	rsi, [rsi]
	call	fcntl
	lea	rdi, [rdi]
	cmp	eax, -1
	jne	.label_968
.label_974:
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	nop	
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	mov	rsp, rsp
	jmp	.label_968
	nop	word ptr cs:[rax + rax]
	nop
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]