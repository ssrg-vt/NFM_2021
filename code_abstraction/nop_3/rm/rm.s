	.section	.text
	.align	32
	#Procedure 0x401a80

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
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44
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
	mov	esi, OFFSET FLAT:.str.46
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.47
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.48
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.12
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.49
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.12
	mov	ecx, OFFSET FLAT:.str.50
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
	.align	32
	#Procedure 0x401d10

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	r15, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.14
	mov	esi, OFFSET FLAT:.str.15
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.14
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdin
	call	atexit
	mov	byte ptr [rsp + 0x18], 0
	mov	dword ptr [rsp + 0x1c], 4
	mov	byte ptr [rsp + 0x20], 0
	mov	byte ptr [rsp + 0x22], 0
	mov	byte ptr [rsp + 0x21], 0
	mov	qword ptr [rsp + 0x28], 0
	mov	byte ptr [rsp + 0x30], 0
	xor	r12d, r12d
	xor	edi, edi
	call	isatty
	test	eax, eax
	setne	byte ptr [rsp + 0x31]
	mov	byte ptr [rsp + 0x32], 0
	mov	byte ptr [rsp + 0x33], 0
	mov	r13b, 1
	jmp	.label_30
	nop	word ptr [rax + rax]
.label_15:
	mov	dword ptr [rsp + 0x1c], 3
	mov	byte ptr [rsp + 0x18], 0
.label_30:
	xor	r14d, r14d
	jmp	.label_25
	nop	word ptr cs:[rax + rax]
.label_31:
	mov	dword ptr [rsp + 0x1c], 5
	mov	byte ptr [rsp + 0x18], 1
	mov	r14b, 1
.label_25:
	xor	ebx, ebx
	jmp	.label_12
.label_19:
	mov	byte ptr [rsp + 0x21], 1
	mov	r12b, 1
	nop	dword ptr [rax]
.label_12:
	mov	edx, OFFSET FLAT:.str.16
	mov	ecx, OFFSET FLAT:long_opts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r15
	call	getopt_long
	cmp	eax, 0x68
	jle	.label_10
	lea	ecx, [rax - 0x76]
	cmp	ecx, 0xe
	ja	.label_13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_14]]
.label_978:
	mov	byte ptr [rsp + 0x32], 1
	jmp	.label_12
	nop	word ptr cs:[rax + rax]
.label_10:
	cmp	eax, 0x51
	jle	.label_17
	cmp	eax, 0x52
	je	.label_19
	cmp	eax, 0x64
	jne	.label_18
	mov	byte ptr [rsp + 0x22], 1
	jmp	.label_12
.label_17:
	cmp	eax, 0x48
	jle	.label_36
	cmp	eax, 0x49
	jne	.label_21
.label_37:
	mov	dword ptr [rsp + 0x1c], 4
	mov	byte ptr [rsp + 0x18], 0
	mov	bl, 1
	xor	r14d, r14d
	jmp	.label_12
.label_13:
	cmp	eax, 0x69
	je	.label_15
	cmp	eax, 0x72
	je	.label_19
	jmp	.label_21
.label_979:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	test	rsi, rsi
	je	.label_15
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.17_0
	mov	edx, OFFSET FLAT:interactive_args
	mov	ecx, OFFSET FLAT:interactive_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + interactive_types]]
	cmp	eax, 2
	je	.label_15
	cmp	eax, 1
	je	.label_37
	test	eax, eax
	jne	.label_12
	jmp	.label_40
.label_980:
	mov	byte ptr [rsp + 0x20], 1
	jmp	.label_12
.label_981:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r15 + rax*8 - 8]
	mov	esi, OFFSET FLAT:.str.18_0
	call	strcmp
	xor	r13d, r13d
	test	eax, eax
	je	.label_12
	jmp	.label_9
.label_982:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	test	rax, rax
	mov	r13b, 1
	je	.label_12
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x61
	jne	.label_16
	movzx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x6c
	jne	.label_16
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x6c
	jne	.label_16
	cmp	byte ptr [rax + 3], 0
	jne	.label_16
	mov	byte ptr [rsp + 0x30], 1
	mov	r13b, 1
	jmp	.label_12
.label_983:
	mov	byte ptr [rsp + 0x31], 1
	jmp	.label_12
	nop	word ptr cs:[rax + rax]
.label_18:
	cmp	eax, 0x66
	je	.label_31
	jmp	.label_21
.label_40:
	mov	dword ptr [rsp + 0x1c], 5
	jmp	.label_25
.label_36:
	mov	ecx, r14d
	cmp	eax, -1
	jne	.label_28
	mov	r14d,  dword ptr [dword ptr [rip + optind]]
	cmp	r14d, ebp
	jge	.label_33
	test	r13b, r13b
	je	.label_32
	test	r12b, r12b
	je	.label_32
	mov	edi, OFFSET FLAT:main.dev_ino_buf
	call	get_root_dev_ino
	mov	qword ptr [rsp + 0x28], rax
	test	rax, rax
	je	.label_34
	mov	r14d,  dword ptr [dword ptr [rip + optind]]
.label_32:
	test	bl, bl
	je	.label_38
	sub	ebp, r14d
	cmp	ebp, 3
	ja	.label_39
	test	r12b, r12b
	je	.label_38
.label_39:
	movsxd	rbp, ebp
	mov	r13,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	test	r12b, r12b
	je	.label_41
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, OFFSET FLAT:.str.31
	jmp	.label_42
.label_33:
	xor	ebx, ebx
	test	cl, cl
	jne	.label_11
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
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
.label_28:
	cmp	eax, 0xffffff7d
	je	.label_27
	cmp	eax, 0xffffff7e
	je	.label_20
.label_21:
	cmp	ebp, 2
	jl	.label_22
	movsxd	r12, ebp
	mov	ebx, 1
	lea	r14, [rsp + 0x38]
	nop	word ptr [rax + rax]
.label_35:
	mov	rbp, qword ptr [r15 + rbx*8]
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2d
	jne	.label_26
	cmp	byte ptr [rbp + 1], 0
	je	.label_26
	mov	edi, 1
	mov	rsi, rbp
	mov	rdx, r14
	call	__lxstat
	test	eax, eax
	je	.label_29
.label_26:
	inc	rbx
	cmp	rbx, r12
	jl	.label_35
.label_22:
	mov	edi, 1
	call	usage
.label_29:
	mov	r14,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.68
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	r15, qword ptr [r15]
	mov	edi, 1
	mov	esi, 3
	mov	rdx, rbp
	call	quotearg_n_style
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	mov	rbp, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, rbx
	mov	r9, rbp
	call	__fprintf_chk
	mov	edi, 1
	call	usage
.label_41:
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, OFFSET FLAT:.str.33
.label_42:
	mov	r8d, 5
	mov	rcx, rbp
	call	dcngettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	xor	ebx, ebx
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r13
	mov	r8, rbp
	call	__fprintf_chk
	call	yesno
	test	al, al
	je	.label_11
.label_38:
	movsxd	rax, r14d
	lea	rdi, [r15 + rax*8]
	lea	rsi, [rsp + 0x18]
	call	rm
	cmp	eax, 4
	je	.label_23
	mov	ecx, eax
	or	ecx, 1
	cmp	ecx, 3
	jne	.label_24
.label_23:
	cmp	eax, 4
	sete	al
	movzx	ebx, al
.label_11:
	mov	eax, ebx
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_27:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp + 0x10], 0
	mov	qword ptr [word ptr [rsp + 8]], OFFSET FLAT:.str.26
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str.25
	mov	esi, OFFSET FLAT:.str.12
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.23
	mov	r9d, OFFSET FLAT:.str.24
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_20:
	xor	edi, edi
	call	usage
.label_16:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_9:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_24:
	mov	edi, OFFSET FLAT:.str.34
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 0x173
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	call	__assert_fail
.label_34:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:.str_1
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4022a0

	.globl rm
	.type rm, @function
rm:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	r12, rsi
	mov	ebx, 2
	cmp	qword ptr [rdi], 0
	je	.label_68
	cmp	byte ptr [r12 + 8], 0
	mov	esi, 0x218
	je	.label_77
	mov	esi, 0x258
.label_77:
	xor	edx, edx
	call	xfts_open
	mov	qword ptr [rsp + 0x20], rax
	mov	rdi, rax
	call	rpl_fts_read
	mov	r13, rax
	mov	ebx, 2
	test	r13, r13
	je	.label_82
	mov	r15d, 2
	jmp	.label_52
.label_61:
	mov	rax, qword ptr [r12 + 0x10]
	test	rax, rax
	je	.label_44
	mov	rcx, qword ptr [r13 + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_44
	mov	rcx, qword ptr [r13 + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_44
	mov	rax, qword ptr [r13 + 0x38]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_48
	cmp	byte ptr [rax + 1], 0
	je	.label_51
.label_48:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_0
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdx, qword ptr [r13 + 0x38]
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:.str_1
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbp
	mov	r8, rbx
	call	error
	jmp	.label_73
.label_44:
	cmp	byte ptr [r12 + 0x18], 0
	je	.label_59
	mov	esi, OFFSET FLAT:.str.2_1
	xor	edx, edx
	mov	rdi, rbx
	call	file_name_concat
	mov	rbx, rax
	test	rbx, rbx
	je	.label_76
	mov	edi, 1
	mov	rsi, rbx
	lea	rdx, [rsp + 0x28]
	call	__lxstat
	test	eax, eax
	je	.label_78
.label_76:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_0
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	qword ptr [rsp + 0x18], rax
	mov	rdx, qword ptr [r13 + 0x30]
	mov	edi, 1
	mov	esi, 4
	call	quotearg_n_style
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r8, rbp
	call	error
	mov	rdi, rbx
	call	free
	jmp	.label_54
.label_55:
	mov	ebx, 0x27
	cmp	byte ptr [r12 + 0xa], 0
	jne	.label_49
	mov	ebx, 0x15
.label_49:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_0
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [r13 + 0x38]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	rax, qword ptr [r13 + 8]
	jmp	.label_66
	nop	dword ptr [rax]
.label_71:
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rax + 8]
.label_66:
	cmp	qword ptr [rax + 0x58], 0
	js	.label_54
	cmp	qword ptr [rax + 0x20], 0
	je	.label_71
.label_54:
	mov	ebp, 4
	mov	edx, 4
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rdi, rbx
	mov	rsi, r13
	call	rpl_fts_set
	mov	rdi, rbx
	call	rpl_fts_read
	mov	al, 1
	xor	r14d, r14d
	jmp	.label_58
.label_78:
	mov	rdi, rbx
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax + 0x18]
	cmp	rax, qword ptr [rsp + 0x28]
	jne	.label_80
.label_59:
	mov	edx, 1
	mov	r8d, 2
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r13
	mov	rcx, r12
	lea	r9, [rsp + 0x28]
	call	prompt
	mov	ebp, eax
	cmp	ebp, 2
	jne	.label_43
	cmp	dword ptr [rsp + 0x28], 4
	jne	.label_43
	mov	ecx, 1
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, r12
	call	excise
	mov	ebp, eax
	mov	edx, 4
	mov	rdi, rbx
	mov	rsi, r13
	call	rpl_fts_set
	mov	rdi, rbx
	call	rpl_fts_read
.label_43:
	cmp	ebp, 2
	je	.label_69
	mov	rax, qword ptr [r13 + 8]
	jmp	.label_56
	nop	word ptr cs:[rax + rax]
.label_64:
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rax + 8]
.label_56:
	cmp	qword ptr [rax + 0x58], 0
	js	.label_62
	cmp	qword ptr [rax + 0x20], 0
	je	.label_64
.label_62:
	mov	edx, 4
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rdi, rbx
	mov	rsi, r13
	call	rpl_fts_set
	mov	rdi, rbx
	call	rpl_fts_read
	jmp	.label_69
.label_80:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r13 + 0x38]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_54
.label_51:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r13 + 0x38]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_73:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_57
	nop	word ptr cs:[rax + rax]
.label_52:
	movzx	eax, word ptr [r13 + 0x70]
	lea	ecx, [rax - 1]
	cmp	ecx, 0xc
	ja	.label_60
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_63]]
.label_926:
	movzx	ecx, ax
	cmp	ecx, 6
	jne	.label_67
	cmp	byte ptr [r12 + 8], 0
	je	.label_67
	cmp	qword ptr [r13 + 0x58], 0
	jle	.label_67
	mov	rcx, qword ptr [r13 + 0x78]
	mov	rdx, qword ptr [rsp + 0x20]
	cmp	rcx, qword ptr [rdx + 0x18]
	jne	.label_70
	nop	word ptr cs:[rax + rax]
.label_67:
	or	eax, 2
	movzx	ebx, ax
	cmp	ebx, 6
	sete	al
	movzx	edx, al
	mov	r8d, 3
	xor	r9d, r9d
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r13
	mov	rcx, r12
	call	prompt
	mov	ebp, eax
	cmp	ebp, 2
	jne	.label_69
	cmp	ebx, 6
	sete	al
	movzx	ecx, al
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r13
	mov	rdx, r12
	call	excise
	mov	ebp, eax
.label_69:
	cmp	ebp, 3
	sete	r14b
	cmp	ebp, 4
	sete	al
	je	.label_58
	mov	ecx, ebp
	or	ecx, 1
	cmp	ecx, 3
	je	.label_58
	jmp	.label_72
.label_924:
	cmp	byte ptr [r12 + 9], 0
	jne	.label_47
	mov	ebx, 0x15
	cmp	byte ptr [r12 + 0xa], 0
	je	.label_49
	mov	rax, qword ptr [rsp + 0x20]
	mov	edi, dword ptr [rax + 0x2c]
	mov	rsi, qword ptr [r13 + 0x30]
	call	is_empty_dir
	test	al, al
	je	.label_55
.label_47:
	cmp	qword ptr [r13 + 0x58], 0
	jne	.label_59
	mov	rbx, qword ptr [r13 + 0x30]
	mov	rdi, rbx
	call	last_component
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_61
	movzx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x2e
	mov	ecx, 2
	je	.label_65
	mov	ecx, 1
.label_65:
	movzx	eax, byte ptr [rax + rcx]
	cmp	eax, 0x2f
	je	.label_50
	test	al, al
	jne	.label_61
.label_50:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x18], rax
	mov	ebp, 4
	xor	edi, edi
	mov	esi, 4
	mov	edx, OFFSET FLAT:.str_3
	call	quotearg_n_style
	mov	qword ptr [rsp + 0x10], rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:.str.2_1
	call	quotearg_n_style
	mov	qword ptr [rsp + 8], rax
	mov	rdx, qword ptr [r13 + 0x38]
	mov	edi, 2
	mov	esi, 4
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 8]
	mov	r9, rbx
	call	error
	jmp	.label_45
.label_925:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdx, qword ptr [r13 + 0x38]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	jmp	.label_53
.label_927:
	mov	ebx, dword ptr [r13 + 0x40]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_0
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdx, qword ptr [r13 + 0x38]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
.label_53:
	call	error
.label_57:
	mov	ebp, 4
.label_45:
	mov	edx, 4
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rdi, rbx
	mov	rsi, r13
	call	rpl_fts_set
	mov	rdi, rbx
	call	rpl_fts_read
	jmp	.label_74
.label_70:
	mov	rax, qword ptr [r13 + 8]
	jmp	.label_75
	nop	word ptr cs:[rax + rax]
.label_81:
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rax + 8]
.label_75:
	cmp	qword ptr [rax + 0x58], 0
	js	.label_79
	cmp	qword ptr [rax + 0x20], 0
	je	.label_81
.label_79:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r13 + 0x38]
	mov	ebp, 4
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_74:
	mov	al, 1
.label_58:
	test	r14b, r14b
	mov	ebx, r15d
	cmovne	ebx, ebp
	cmp	r15d, 2
	cmovne	ebx, r15d
	test	al, al
	cmovne	ebx, ebp
	mov	rdi, qword ptr [rsp + 0x20]
	call	rpl_fts_read
	mov	r13, rax
	test	r13, r13
	mov	r15d, ebx
	jne	.label_52
.label_82:
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	test	ebp, ebp
	je	.label_46
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
	mov	ebx, 4
.label_46:
	mov	rdi, qword ptr [rsp + 0x20]
	call	rpl_fts_close
	test	eax, eax
	je	.label_68
	mov	ebx, dword ptr [r14]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	mov	ebx, 4
.label_68:
	mov	eax, ebx
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_60:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17_1
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	movzx	ebp, word ptr [r13 + 0x70]
	mov	rdx, qword ptr [r13 + 0x38]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	mov	r9d, OFFSET FLAT:.str.15_1
	xor	eax, eax
	mov	rdx, r14
	mov	ecx, ebp
	mov	r8, rbx
	call	error
	call	abort
.label_72:
	mov	edi, OFFSET FLAT:.str.1_0
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 0x261
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.rm
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a30

	.globl is_empty_dir
	.type is_empty_dir, @function
is_empty_dir:
	push	rbp
	push	r14
	push	rbx
	xor	ebx, ebx
	mov	edx, 0x30900
	xor	eax, eax
	call	openat
	mov	ebp, eax
	test	ebp, ebp
	js	.label_83
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_85
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	nop	word ptr [rax + rax]
.label_86:
	mov	rdi, rbx
	call	readdir
	test	rax, rax
	je	.label_87
	movzx	ecx, byte ptr [rax + 0x13]
	cmp	ecx, 0x2e
	jne	.label_88
	movzx	ecx, byte ptr [rax + 0x14]
	cmp	ecx, 0x2e
	mov	ecx, 2
	je	.label_84
	mov	ecx, 1
.label_84:
	movzx	ecx, byte ptr [rax + rcx + 0x13]
	cmp	ecx, 0x2f
	cmove	rax, rbp
	test	cl, cl
	cmovne	rbp, rax
	cmp	ecx, 0x2f
	je	.label_86
	test	cl, cl
	je	.label_86
	mov	r14d, dword ptr [r14]
	mov	rdi, rbx
	call	closedir
	test	rbp, rbp
	je	.label_89
	xor	ebx, ebx
	jmp	.label_83
.label_85:
	mov	edi, ebp
	call	close
	xor	ebx, ebx
	jmp	.label_83
.label_87:
	mov	r14d, dword ptr [r14]
	mov	rdi, rbx
	call	closedir
.label_89:
	test	r14d, r14d
	sete	bl
	jmp	.label_83
.label_88:
	mov	rdi, rbx
	call	closedir
	xor	ebx, ebx
.label_83:
	mov	al, bl
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b00

	.globl prompt
	.type prompt, @function
prompt:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	rbx, r9
	mov	dword ptr [rsp + 0xc], r8d
	mov	rbp, rcx
	mov	r12d, edx
	mov	r15, rsi
	mov	edi, dword ptr [rdi + 0x2c]
	mov	rsi, qword ptr [r15 + 0x30]
	mov	rax, qword ptr [r15 + 0x38]
	mov	qword ptr [rsp + 0x20], rax
	test	rbx, rbx
	je	.label_90
	mov	dword ptr [rbx], 2
	mov	qword ptr [rsp + 0x58], -1
	movzx	r13d, r12b
	shl	r13d, 2
	mov	dword ptr [rsp + 0x1c], edi
	mov	qword ptr [rsp + 0x10], rsi
	call	is_empty_dir
	mov	r14b, al
	movzx	eax, r14b
	add	eax, 3
	mov	dword ptr [rbx], eax
	jmp	.label_103
.label_90:
	mov	qword ptr [rsp + 0x10], rsi
	mov	dword ptr [rsp + 0x1c], edi
	mov	qword ptr [rsp + 0x58], -1
	movzx	r13d, r12b
	shl	r13d, 2
	xor	r14d, r14d
.label_103:
	mov	ebx, 3
	cmp	qword ptr [r15 + 0x20], 0
	jne	.label_95
	mov	ecx, dword ptr [rbp + 4]
	cmp	ecx, 5
	je	.label_102
	mov	rdx, qword ptr [rbp]
	mov	rax, rdx
	shr	rax, 0x20
	xor	esi, esi
	test	dl, dl
	je	.label_113
	xor	r15d, r15d
	jmp	.label_116
.label_113:
	cmp	ecx, 3
	je	.label_106
	cmp	byte ptr [rbp + 0x19], 0
	mov	r15d, 0
	je	.label_116
.label_106:
	call	can_write_any_file
	test	al, al
	jne	.label_92
	mov	rax, qword ptr [rsp + 0x58]
	cmp	rax, -1
	jne	.label_98
	lea	rcx, [rsp + 0x28]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0x1c]
	mov	rdx, qword ptr [rsp + 0x10]
	call	__fxstatat
	test	eax, eax
	je	.label_97
	mov	qword ptr [rsp + 0x58], -2
	call	__errno_location
	movsxd	r15, dword ptr [rax]
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_94
.label_97:
	mov	rax, qword ptr [rsp + 0x58]
.label_98:
	test	rax, rax
	js	.label_120
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x40]
	cmp	eax, 0xa000
	je	.label_92
	mov	edx, 2
	mov	ecx, 0x200
	mov	edi, dword ptr [rsp + 0x1c]
	mov	rsi, qword ptr [rsp + 0x10]
	call	faccessat
	test	eax, eax
	je	.label_92
	call	__errno_location
	mov	esi, 1
	cmp	dword ptr [rax], 0xd
	je	.label_105
	mov	esi, 0xffffffff
.label_105:
	mov	r15d, dword ptr [rax]
	jmp	.label_107
.label_92:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	mov	eax, dword ptr [rbp + 4]
	xor	esi, esi
.label_116:
	cmp	eax, 3
	jne	.label_102
	jmp	.label_107
.label_120:
	mov	r15, qword ptr [rsp + 0x30]
	call	__errno_location
.label_94:
	mov	dword ptr [rax], r15d
	mov	esi, 0xffffffff
	mov	r15d, dword ptr [rax]
.label_107:
	test	esi, esi
	js	.label_115
	xor	r12b, 1
	je	.label_115
	mov	rax, qword ptr [rsp + 0x58]
	cmp	rax, -1
	jne	.label_96
	mov	r12d, esi
	lea	rcx, [rsp + 0x28]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0x1c]
	mov	rdx, qword ptr [rsp + 0x10]
	call	__fxstatat
	test	eax, eax
	je	.label_118
	mov	qword ptr [rsp + 0x58], -2
	call	__errno_location
	movsxd	r15, dword ptr [rax]
	mov	qword ptr [rsp + 0x30], r15
	mov	dword ptr [rax], r15d
	jmp	.label_99
.label_118:
	mov	rax, qword ptr [rsp + 0x58]
	mov	esi, r12d
.label_96:
	test	rax, rax
	js	.label_91
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x40]
	mov	r12d, 0xa
	cmp	eax, 0xa000
	je	.label_93
	cmp	eax, 0x4000
	mov	eax, 4
	cmove	r13d, eax
.label_115:
	mov	r12d, r13d
.label_93:
	test	esi, esi
	js	.label_99
	cmp	r12d, 4
	je	.label_100
	cmp	r12d, 0xa
	jne	.label_101
	cmp	dword ptr [rbp + 4], 3
	jne	.label_102
	jmp	.label_101
.label_100:
	cmp	byte ptr [rbp + 9], 0
	jne	.label_101
	cmp	byte ptr [rbp + 0xa], 0
	je	.label_104
	mov	r15d, 0x15
	mov	al, r14b
	xor	al, 1
	jne	.label_99
.label_101:
	mov	ebp, esi
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x20]
	call	quotearg_style
	mov	r13, rax
	cmp	r12d, 4
	setne	al
	cmp	dword ptr [rsp + 0xc], 2
	setne	cl
	or	cl, al
	or	r14b, cl
	je	.label_109
	mov	rax, qword ptr [rsp + 0x58]
	cmp	rax, -1
	jne	.label_112
	lea	rcx, [rsp + 0x28]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0x1c]
	mov	rdx, qword ptr [rsp + 0x10]
	call	__fxstatat
	test	eax, eax
	je	.label_117
	mov	qword ptr [rsp + 0x58], -2
	call	__errno_location
	movsxd	rbx, dword ptr [rax]
	mov	qword ptr [rsp + 0x30], rbx
	jmp	.label_119
.label_109:
	mov	r14,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	test	ebp, ebp
	je	.label_121
	mov	esi, OFFSET FLAT:.str.19_0
	jmp	.label_122
.label_91:
	mov	r15, qword ptr [rsp + 0x30]
	call	__errno_location
	mov	dword ptr [rax], r15d
.label_99:
	mov	ebx, 4
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x20]
	call	quotearg_style
	mov	rbp, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rcx
	mov	rcx, rbp
	call	error
	jmp	.label_95
.label_121:
	mov	esi, OFFSET FLAT:.str.20
.label_122:
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	r8, r13
	call	__fprintf_chk
	jmp	.label_108
.label_117:
	mov	rax, qword ptr [rsp + 0x58]
.label_112:
	test	rax, rax
	js	.label_114
	mov	r14,  qword ptr [word ptr [rip + stderr]]
	mov	r12, r13
	xor	edi, edi
	test	ebp, ebp
	je	.label_110
	mov	esi, OFFSET FLAT:.str.21_0
	jmp	.label_111
.label_114:
	mov	rbx, qword ptr [rsp + 0x30]
	call	__errno_location
.label_119:
	mov	dword ptr [rax], ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	mov	rcx, r13
	call	error
	mov	ebx, 4
	jmp	.label_95
.label_110:
	mov	esi, OFFSET FLAT:.str.22
.label_111:
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	r13,  qword ptr [word ptr [rip + program_name]]
	lea	rdi, [rsp + 0x28]
	call	file_type
	mov	rbp, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r15
	mov	rcx, r13
	mov	r8, rbp
	mov	r9, r12
	call	__fprintf_chk
.label_108:
	call	yesno
	test	al, al
	je	.label_95
.label_102:
	mov	ebx, 2
.label_95:
	mov	eax, ebx
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_104:
	mov	r15d, 0x15
	jmp	.label_99
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402f50

	.globl excise
	.type excise, @function
excise:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	ebp, ecx
	mov	r13, rdx
	mov	r15, rsi
	mov	rbx, rdi
	movzx	edx, bpl
	shl	edx, 9
	mov	edi, dword ptr [rbx + 0x2c]
	mov	rsi, qword ptr [r15 + 0x30]
	call	unlinkat
	test	eax, eax
	je	.label_135
	call	__errno_location
	mov	r12, rax
	mov	ebp, dword ptr [r12]
	cmp	ebp, 0x1e
	jne	.label_127
	mov	esi, dword ptr [rbx + 0x2c]
	mov	rdx, qword ptr [r15 + 0x30]
	lea	rcx, [rsp + 8]
	mov	edi, 1
	mov	r8d, 0x100
	call	__fxstatat
	test	eax, eax
	je	.label_134
	cmp	dword ptr [r12], 2
	je	.label_133
.label_134:
	mov	dword ptr [r12], 0x1e
.label_133:
	mov	ebp, dword ptr [r12]
.label_127:
	cmp	byte ptr [r13], 0
	je	.label_126
	mov	r14d, 2
	cmp	ebp, 0x16
	ja	.label_128
	mov	eax, 0x500004
	bt	eax, ebp
	jb	.label_125
.label_128:
	cmp	ebp, 0x54
	je	.label_125
.label_126:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 4
	jne	.label_124
	mov	eax, ebp
	cmp	ebp, 0x27
	ja	.label_124
	movabs	rcx, 0x8000320000
	bt	rcx, rax
	jae	.label_124
	mov	eax, dword ptr [r15 + 0x40]
	cmp	eax, 0xd
	je	.label_129
	cmp	eax, 1
	jne	.label_124
.label_129:
	mov	dword ptr [r12], eax
	mov	ebp, eax
.label_124:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r15 + 0x38]
	mov	r14d, 4
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_132
	nop	dword ptr [rax + rax]
.label_123:
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rax + 8]
.label_132:
	cmp	qword ptr [rax + 0x58], 0
	js	.label_125
	cmp	qword ptr [rax + 0x20], 0
	je	.label_123
	jmp	.label_125
.label_135:
	mov	r14d, 2
	cmp	byte ptr [r13 + 0x1a], 0
	je	.label_125
	xor	edi, edi
	test	bpl, bpl
	je	.label_130
	mov	esi, OFFSET FLAT:.str.23_0
	jmp	.label_131
.label_130:
	mov	esi, OFFSET FLAT:.str.24_0
.label_131:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r15 + 0x38]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
.label_125:
	mov	eax, r14d
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x403100

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403110

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
	je	.label_139
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, r14
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	nop	
.label_136:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_137
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_141
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_142
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_138
	mov	rdi, qword ptr [rsp + 0x18]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_137
.label_138:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_137
.label_142:
	mov	qword ptr [rsp + 0x18], rbp
	nop	word ptr [rax + rax]
.label_137:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_136
	jmp	.label_140
.label_139:
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_140:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 0x18]
.label_141:
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
	.align	32
	#Procedure 0x403210
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
	je	.label_143
	mov	esi, OFFSET FLAT:.str.1_1
	jmp	.label_144
.label_143:
	mov	esi, OFFSET FLAT:.str_4
.label_144:
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
	.align	32
	#Procedure 0x403280

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
	mov	esi, OFFSET FLAT:.str.2_2
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbx]
	test	rbx, rbx
	je	.label_149
	xor	r13d, r13d
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_146:
	test	r15, r15
	je	.label_148
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_145
.label_148:
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
	jmp	.label_147
	nop	word ptr cs:[rax + rax]
.label_145:
	mov	rbp,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.4_1
	xor	eax, eax
	mov	rdi, rbp
	call	__fprintf_chk
.label_147:
	mov	rax, qword ptr [rsp]
	mov	rbx, qword ptr [rax + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_146
.label_149:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_150
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
.label_150:
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
	.align	32
	#Procedure 0x4033b0

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
	jns	.label_151
	mov	qword ptr [rsp + 0x10], rbp
	xor	edi, edi
	cmp	rax, -1
	je	.label_152
	mov	esi, OFFSET FLAT:.str.1_1
	jmp	.label_153
.label_152:
	mov	esi, OFFSET FLAT:.str_4
.label_153:
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
.label_151:
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
	.align	32
	#Procedure 0x403470
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
	je	.label_154
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_155:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_154
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_155
.label_154:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4034e0
	.globl close_stdin_set_file_name
	.type close_stdin_set_file_name, @function
close_stdin_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4034f0

	.globl close_stdin
	.type close_stdin, @function
close_stdin:
	push	rbp
	push	r14
	push	rbx
	mov	rbx,  qword ptr [word ptr [rip + stdin]]
	mov	rdi, rbx
	call	freadahead
	xor	ebp, ebp
	test	rax, rax
	je	.label_157
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
	test	eax, eax
	jne	.label_157
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fflush
	test	eax, eax
	setne	bpl
.label_157:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	close_stream
	test	bpl, bpl
	jne	.label_156
	test	eax, eax
	jne	.label_156
	pop	rbx
	pop	r14
	pop	rbp
	jmp	close_stdout
.label_156:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_5
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_159
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_6
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	jmp	.label_158
.label_159:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_2
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
.label_158:
	call	close_stdout
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4035c0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name_0]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4035d0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4035e0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_163
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_160
	cmp	dword ptr [rbp], 0x20
	jne	.label_160
.label_163:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_162
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_160:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_7
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name_0]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_161
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_6
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_162:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_161:
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
	.align	32
	#Procedure 0x4036a0

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_164:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	edx, 0x2f
	je	.label_164
	xor	r8d, r8d
	mov	rax, rdi
	jmp	.label_168
	nop	word ptr cs:[rax + rax]
.label_165:
	mov	dl, byte ptr [rax + 1]
	inc	rax
	mov	r8b, cl
.label_168:
	mov	cl, 1
	movzx	esi, dl
	cmp	esi, 0x2f
	je	.label_165
	test	dl, dl
	je	.label_166
	mov	cl, r8b
	and	cl, 1
	je	.label_167
	xor	r8d, r8d
.label_167:
	test	cl, cl
	cmovne	rdi, rax
	mov	cl, r8b
	jmp	.label_165
.label_166:
	mov	rax, rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403710

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_169:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_170
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_169
.label_170:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403740

	.globl file_type
	.type file_type, @function
file_type:
	mov	eax, 0xf000
	and	eax, dword ptr [rdi + 0x18]
	cmp	eax, 0x5fff
	jle	.label_171
	cmp	eax, 0x9fff
	jg	.label_176
	cmp	eax, 0x6000
	je	.label_178
	cmp	eax, 0x8000
	jne	.label_177
	cmp	qword ptr [rdi + 0x30], 0
	je	.label_173
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 5
	jmp	dcgettext
.label_171:
	cmp	eax, 0x1000
	je	.label_172
	cmp	eax, 0x2000
	je	.label_175
	cmp	eax, 0x4000
	jne	.label_177
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_3
	mov	edx, 5
	jmp	dcgettext
.label_176:
	cmp	eax, 0xa000
	je	.label_174
	cmp	eax, 0xc000
	jne	.label_177
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_1
	mov	edx, 5
	jmp	dcgettext
.label_178:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	jmp	dcgettext
.label_172:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_1
	mov	edx, 5
	jmp	dcgettext
.label_175:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
	mov	edx, 5
	jmp	dcgettext
.label_174:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_2
	mov	edx, 5
	jmp	dcgettext
.label_177:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_1
	mov	edx, 5
	jmp	dcgettext
.label_173:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_8
	mov	edx, 5
	jmp	dcgettext
	nop	
	.section	.text
	.align	32
	#Procedure 0x403830

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rax
	call	mfile_name_concat
	test	rax, rax
	je	.label_179
	pop	rcx
	ret	
.label_179:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403850

	.globl mfile_name_concat
	.type mfile_name_concat, @function
mfile_name_concat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], rdx
	mov	r14, rsi
	mov	r13, rdi
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	base_len
	mov	rbp, rax
	sub	rbx, r13
	add	rbx, rbp
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	test	rbp, rbp
	je	.label_183
	movzx	ecx, byte ptr [rbx + r13 - 1]
	cmp	ecx, 0x2f
	jne	.label_184
	mov	qword ptr [rsp + 8], r14
	xor	r12d, r12d
	jmp	.label_187
.label_183:
	movzx	ecx, byte ptr [r14]
	cmp	ecx, 0x2f
	mov	r12b, 0x2e
	je	.label_182
	jmp	.label_185
.label_184:
	movzx	ecx, byte ptr [r14]
	cmp	ecx, 0x2f
	jne	.label_186
.label_185:
	xor	r12d, r12d
	jmp	.label_182
.label_186:
	mov	r12b, 0x2f
.label_182:
	mov	qword ptr [rsp + 8], r14
.label_187:
	test	r12b, r12b
	setne	cl
	movzx	ebp, cl
	lea	rcx, [r15 + rbx]
	lea	rdi, [rbp + rcx + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_181
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	add	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_180
	mov	qword ptr [rax], rbp
.label_180:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r15
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	mov	rax, r14
.label_181:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403940

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_188
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_189
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_4
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_189
	mov	esi, OFFSET FLAT:.str.2_4
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_190
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_190:
	mov	rbx, r14
.label_189:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_188:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_9
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4039f0
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
	#Procedure 0x403a30
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
	#Procedure 0x403a40
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
	#Procedure 0x403a50
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
	#Procedure 0x403a90
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
	#Procedure 0x403ab0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_191
	test	rdx, rdx
	je	.label_191
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_191:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ae0
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
	#Procedure 0x403b60

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
.label_270:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_200
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_206]]
.label_1003:
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
.label_1004:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_238
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_238
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_257:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_255
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_255:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_257
.label_238:
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
	jmp	.label_192
.label_996:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_192
.label_999:
	mov	al, 1
.label_997:
	mov	r12b, 1
.label_1000:
	test	r12b, 1
	mov	cl, 1
	je	.label_282
	mov	cl, al
.label_282:
	mov	al, cl
.label_998:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_285
	test	r10, r10
	je	.label_288
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_289
.label_285:
	xor	ecx, ecx
	jmp	.label_289
.label_1001:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_296
	test	r10, r10
	je	.label_301
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_204
.label_1002:
	mov	dil, 1
	mov	r9d, 5
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_2
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_192
.label_288:
	mov	ecx, 1
.label_289:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_1
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_192
.label_296:
	xor	eax, eax
	jmp	.label_204
.label_301:
	mov	eax, 1
.label_204:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_2
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_192:
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
	jmp	.label_221
.label_244:
	inc	rdi
.label_221:
	cmp	rbp, -1
	je	.label_264
	cmp	rdi, rbp
	jne	.label_266
	jmp	.label_267
	nop	word ptr cs:[rax + rax]
.label_264:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_269
.label_266:
	test	r12b, r12b
	je	.label_272
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_274
	cmp	rbp, -1
	jne	.label_274
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
.label_274:
	cmp	rbx, rbp
	jbe	.label_293
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_193
	nop	word ptr [rax + rax]
.label_272:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_193
.label_293:
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
	jne	.label_315
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_193
	jmp	.label_201
.label_315:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_193:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_229
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_226]]
.label_1012:
	test	rdi, rdi
	jne	.label_209
	jmp	.label_234
.label_1016:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_235
	test	rdi, rdi
	jne	.label_237
	cmp	rbp, 1
	je	.label_234
	xor	r13d, r13d
	jmp	.label_195
.label_1005:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_241
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_201
	cmp	r9d, 2
	jne	.label_248
	mov	al, r14b
	and	al, 1
	jne	.label_252
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_256
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_256:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_245
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_245:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_247
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_247:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_231
.label_1006:
	mov	bl, 0x62
	jmp	.label_280
.label_1007:
	mov	cl, 0x74
	jmp	.label_205
.label_1008:
	mov	bl, 0x76
	jmp	.label_280
.label_1009:
	mov	bl, 0x66
	jmp	.label_280
.label_1010:
	mov	cl, 0x72
	jmp	.label_205
.label_1013:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_286
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_290
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
	jae	.label_295
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_295:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_312
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_312:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_230
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_230:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_286:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_195
.label_1014:
	cmp	r9d, 5
	je	.label_208
	cmp	r9d, 2
	jne	.label_209
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_209
	jmp	.label_216
.label_1015:
	cmp	r9d, 2
	jne	.label_219
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_222
	jmp	.label_227
.label_229:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_228
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
.label_202:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_243
	test	cl, cl
	je	.label_243
	xor	eax, eax
	jmp	.label_195
.label_235:
	test	rdi, rdi
	jne	.label_260
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_260
.label_234:
	mov	dl, 1
.label_1011:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_207
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_195
.label_241:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_244
	jmp	.label_209
.label_219:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_205
.label_222:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_197
.label_205:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_276
.label_280:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_195
	jmp	.label_198
.label_228:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_283
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_283:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_232:
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
	je	.label_311
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_314
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_196
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_214
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_217:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_211
	bt	rsi, rdx
	jb	.label_215
.label_211:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_217
.label_214:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_263
	xor	r13d, r13d
.label_263:
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
	je	.label_232
	jmp	.label_202
.label_260:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_195
.label_208:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_209
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_209
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_209
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_253
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_258
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_233
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_223
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_223:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_271
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_271:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_278
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_278:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_316
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_316:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_195
.label_209:
	xor	eax, eax
	xor	r13d, r13d
.label_195:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_298
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_300
	jmp	.label_303
	nop	word ptr [rax + rax]
.label_298:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_303
.label_300:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_307
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_313
	nop	word ptr cs:[rax + rax]
.label_303:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_313:
	mov	bl, r15b
	je	.label_197
	jmp	.label_198
.label_307:
	mov	bl, r15b
.label_198:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_201
	cmp	r9d, 2
	jne	.label_203
	mov	al, r14b
	and	al, 1
	jne	.label_203
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_199
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_199:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_310
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_310:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_225
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_225:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_203:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_236
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_236:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_273
.label_237:
	xor	r13d, r13d
	jmp	.label_195
.label_243:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_246
	nop	word ptr [rax + rax]
.label_239:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_246:
	test	cl, cl
	je	.label_259
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_261
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_265
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_265:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_261
	nop	word ptr [rax + rax]
.label_259:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_201
	cmp	r9d, 2
	jne	.label_279
	mov	al, r14b
	and	al, 1
	jne	.label_279
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_281
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_281:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_250
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_250:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_294
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_294:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_279:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_306
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_306:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_309
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_309:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_212
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_212:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_261:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_197
	test	r14b, 1
	je	.label_194
	mov	bl, al
	and	bl, 1
	jne	.label_194
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_249
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_249:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_262
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_262:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_194:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_239
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_239
	nop	dword ptr [rax]
.label_197:
	test	r14b, 1
	je	.label_254
	and	al, 1
	jne	.label_254
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_304
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_304:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_275
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_275:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_254:
	mov	bl, r15b
.label_273:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_213
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_213:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_244
.label_248:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_231
.label_252:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_231:
	cmp	rcx, r10
	jae	.label_287
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_287:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_292
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_299
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_302
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_305
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_305:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_308
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_308:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_195
.label_292:
	xor	r13d, r13d
	jmp	.label_195
.label_299:
	xor	r13d, r13d
	jmp	.label_195
.label_302:
	xor	r13d, r13d
	jmp	.label_195
.label_314:
	xor	r13d, r13d
.label_311:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_202
.label_196:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_210
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_218:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_220
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_218
	xor	r13d, r13d
	jmp	.label_202
.label_210:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_202
.label_220:
	xor	r13d, r13d
	jmp	.label_202
.label_253:
	xor	r13d, r13d
	jmp	.label_195
.label_258:
	xor	r13d, r13d
	jmp	.label_195
	nop	dword ptr [rax]
.label_267:
	mov	r13, rdi
.label_269:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_240
	or	al, dl
	je	.label_242
.label_240:
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
	je	.label_251
	or	al, dl
	jne	.label_251
	test	r8b, 1
	jne	.label_268
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_251
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_270
.label_251:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_277
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_277
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_277
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_291:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_284
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_284:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_291
.label_277:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_297
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_297
.label_207:
	mov	r9d, 2
	jmp	.label_201
.label_215:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_201
.label_242:
	mov	rbp, r13
	jmp	.label_201
.label_276:
	mov	r9d, 2
.label_201:
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
.label_224:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_297:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_268:
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
	jmp	.label_224
.label_290:
	mov	r9d, 2
	jmp	.label_201
.label_227:
	mov	r9d, 2
	jmp	.label_201
.label_216:
	mov	r9d, 2
	jmp	.label_201
.label_233:
	mov	r9d, 5
	jmp	.label_201
.label_200:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404cf0
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
	#Procedure 0x404dc0
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
	je	.label_317
	mov	qword ptr [rax], rbx
.label_317:
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
	#Procedure 0x404ec0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_318
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_321:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_321
.label_318:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_322
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_319]], OFFSET FLAT:slot0
.label_322:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_320
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_320:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f60
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x404f70

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
	js	.label_323
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_328
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_324
.label_328:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_327
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
	jne	.label_326
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_326:
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
.label_324:
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
	ja	.label_329
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_325
	mov	rdi, rbx
	call	free
.label_325:
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
.label_329:
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
.label_323:
	call	abort
.label_327:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405140
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405150
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
	#Procedure 0x405170
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
	#Procedure 0x405190

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
	je	.label_330
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
.label_330:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x405200
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
	je	.label_331
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
.label_331:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405270

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
	je	.label_332
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
.label_332:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052e0
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
	je	.label_333
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
.label_333:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405350
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_334]]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_335]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_336]]
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
	#Procedure 0x4053c0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx,  qword ptr [word ptr [rip + label_334]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_335]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_336]]
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
	#Procedure 0x405430

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_334]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_335]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_336]]
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
	#Procedure 0x405490
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_334]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_335]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_336]]
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
	#Procedure 0x4054f0

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
	je	.label_337
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
.label_337:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x4055a0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_334]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_335]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_336]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_338
	test	rdx, rdx
	je	.label_338
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_338:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x405610
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_334]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_335]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_336]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_339
	test	rdx, rdx
	je	.label_339
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_339:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405680
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_334]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_335]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_336]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_340
	test	rsi, rsi
	je	.label_340
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_340:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4056f0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_334]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_335]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_336]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_341
	test	rsi, rsi
	je	.label_341
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
.label_341:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405760
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405770
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
	#Procedure 0x405790

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057b0

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
	#Procedure 0x4057d0

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
	jne	.label_344
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_345
	cmp	ecx, 0x55
	jne	.label_342
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_342
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_342
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_342
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_342
	cmp	byte ptr [rax + 5], 0
	jne	.label_342
	mov	eax, OFFSET FLAT:.str.14_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_344
	mov	eax, OFFSET FLAT:.str.15_2
	jmp	.label_344
.label_345:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_342
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_342
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_342
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_342
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_342
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_342
	cmp	byte ptr [rax + 7], 0
	je	.label_343
.label_342:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_2
	mov	eax, OFFSET FLAT:.str.12_1
	cmove	rax, rcx
.label_344:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_343:
	mov	eax, OFFSET FLAT:.str.17_2
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_344
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_344
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058c0

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rdx, [rsp]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str_1
	call	__lxstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_346
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, rbx
.label_346:
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405910

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
	je	.label_351
	mov	edx, OFFSET FLAT:.str_10
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_349
.label_351:
	mov	edx, OFFSET FLAT:.str.1_5
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_349:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_5
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
	mov	esi, OFFSET FLAT:.str.3_3
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_355
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_356]]
.label_947:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_2
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
.label_355:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_354
.label_948:
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
.label_949:
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
.label_950:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_350
.label_951:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_353
.label_952:
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
	jmp	.label_348
.label_953:
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
.label_348:
	mov	qword ptr [rsp + 0x10], rdi
.label_353:
	mov	qword ptr [rsp + 8], rsi
.label_350:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_347
.label_955:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_2
.label_354:
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
	jmp	.label_352
.label_954:
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
.label_352:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_347:
	call	__fprintf_chk
.label_946:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c00
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_357:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_357
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c30
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_360:
	cmp	r10d, 0x28
	ja	.label_358
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_359
	nop	word ptr cs:[rax + rax]
.label_358:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_359:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_361
	inc	r9
	cmp	r9, 0xa
	jb	.label_360
.label_361:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405c90

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x128
	test	al, al
	je	.label_362
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_362:
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
.label_366:
	cmp	r8d, 0x28
	ja	.label_363
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_365
	nop	
.label_363:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_365:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_364
	inc	r9
	cmp	r9, 0xa
	jb	.label_366
.label_364:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d90
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
	mov	esi, OFFSET FLAT:.str.16_1
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
	.align	32
	#Procedure 0x405e10

	.globl can_write_any_file
	.type can_write_any_file, @function
can_write_any_file:
	movzx	eax,  byte ptr [byte ptr [rip + can_write_any_file.initialized]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_367
	mov	al,  byte ptr [byte ptr [rip + can_write_any_file.can_write]]
	jmp	.label_368
.label_367:
	push	rax
	call	geteuid
	test	eax, eax
	sete	al
	sete	byte ptr [byte ptr [rip + can_write_any_file.can_write]]
	mov	byte ptr [byte ptr [rip + can_write_any_file.initialized]],  1
	add	rsp, 8
.label_368:
	test	al, al
	setne	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e50
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_369
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_370
	test	rax, rax
	je	.label_369
.label_370:
	pop	rbx
	ret	
.label_369:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e90

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_371
	test	rax, rax
	je	.label_372
.label_371:
	pop	rbx
	ret	
.label_372:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405eb0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_373
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_374
	test	rbx, rbx
	jne	.label_374
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_374:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_375
	test	rax, rax
	je	.label_373
.label_375:
	pop	rbx
	ret	
.label_373:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405f00

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_376
	test	rbx, rbx
	jne	.label_376
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_376:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_378
	test	rax, rax
	je	.label_377
.label_378:
	pop	rbx
	ret	
.label_377:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405f30
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_383
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_384
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_379
.label_383:
	test	rcx, rcx
	jne	.label_385
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_385:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_381
.label_379:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_380
	test	rbx, rbx
	jne	.label_380
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_380:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_382
	test	rax, rax
	je	.label_384
.label_382:
	pop	rbx
	ret	
.label_384:
	call	xalloc_die
.label_381:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405fd0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_386
	test	rax, rax
	je	.label_387
.label_386:
	pop	rbx
	ret	
.label_387:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ff0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_390
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_392
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_389
	call	free
	xor	eax, eax
	jmp	.label_391
.label_390:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_388
	mov	qword ptr [rsi], rbx
.label_389:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_391
	test	rax, rax
	je	.label_388
.label_391:
	pop	rbx
	ret	
.label_388:
	call	xalloc_die
.label_392:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406060
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
	je	.label_394
	test	r14, r14
	je	.label_393
.label_394:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_393:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4060a0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_395
	call	rpl_calloc
	test	rax, rax
	je	.label_395
	pop	rcx
	ret	
.label_395:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4060d0

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
	je	.label_396
	test	r15, r15
	je	.label_397
.label_396:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_397:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406110
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
	je	.label_399
	test	r15, r15
	je	.label_398
.label_399:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_398:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406160

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_6
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_6
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406190

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	test	rax, rax
	je	.label_401
	pop	rcx
	ret	
.label_401:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_400
	mov	edi, OFFSET FLAT:.str_11
	mov	esi, OFFSET FLAT:.str.1_7
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xfts_open
	call	__assert_fail
.label_400:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061d0
	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:

	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	je	.label_402
	cmp	ecx, 0x11
	jne	.label_403
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_402:
	ret	
.label_403:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4061f0

	.globl yesno
	.type yesno, @function
yesno:
	push	rbx
	sub	rsp, 0x10
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [rsp], 0
	mov	rcx,  qword ptr [word ptr [rip + stdin]]
	lea	rdi, [rsp + 8]
	lea	rsi, [rsp]
	mov	edx, 0xa
	call	__getdelim
	test	rax, rax
	jle	.label_404
	mov	rdi, qword ptr [rsp + 8]
	movzx	ecx, byte ptr [rax + rdi - 1]
	cmp	ecx, 0xa
	jne	.label_406
	mov	byte ptr [rdi + rax - 1], 0
	mov	rdi, qword ptr [rsp + 8]
.label_406:
	call	rpmatch
	test	eax, eax
	setg	bl
	jmp	.label_405
.label_404:
	xor	ebx, ebx
.label_405:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	al, bl
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406260

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_407
	test	rsi, rsi
	mov	ecx, 1
	je	.label_408
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_408
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_407:
	mov	ecx, 1
.label_408:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4062b0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_409
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_409
	test	byte ptr [rbx + 1], 1
	je	.label_409
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_409:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4062f0

	.globl freadahead
	.type freadahead, @function
freadahead:
	mov	rcx, qword ptr [rdi + 0x28]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	ja	.label_410
	mov	rax, qword ptr [rdi + 0x10]
	sub	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	test	byte ptr [rdi + 1], 1
	je	.label_411
	mov	rcx, qword ptr [rdi + 0x58]
	sub	rcx, qword ptr [rdi + 0x48]
.label_411:
	add	rax, rcx
.label_410:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406320

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
	jne	.label_412
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_412
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_413
.label_412:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_413:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_414
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_414:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406390

	.globl rpl_fts_open
	.type rpl_fts_open, @function
rpl_fts_open:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r13, rdx
	mov	r15d, esi
	mov	r12, rdi
	cmp	r15d, 0x1000
	jae	.label_424
	mov	eax, r15d
	and	eax, 0x204
	cmp	eax, 0x204
	je	.label_424
	test	r15b, 0x12
	je	.label_424
	mov	edi, 0x80
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_443
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x40], r13
	mov	eax, r15d
	and	eax, 0xfffffdfb
	or	eax, 4
	test	r15b, 2
	cmove	eax, r15d
	mov	dword ptr [rbx + 0x48], eax
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
	mov	rdi, qword ptr [r12]
	mov	ebp, 1
	test	rdi, rdi
	je	.label_447
	mov	r14, rbx
	lea	rbx, [r12 + 8]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_430:
	call	strlen
	cmp	rax, rbp
	cmova	rbp, rax
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_430
	inc	rbp
	mov	rbx, r14
.label_447:
	cmp	rbp, 0x1000
	mov	esi, 0x1000
	cmova	rsi, rbp
	add	rsi, 0x100
	mov	qword ptr [rbx + 0x30], rsi
	xor	edi, edi
	call	realloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_431
	mov	r14d, r15d
	mov	qword ptr [rbx + 0x20], rbp
	mov	qword ptr [rsp + 0x18], rbx
	mov	r15, qword ptr [r12]
	mov	qword ptr [rsp + 0x30], r12
	xor	r12d, r12d
	test	r15, r15
	je	.label_439
	mov	edi, 0x110
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_444
	mov	byte ptr [r12 + 0x108], 0
	mov	qword ptr [r12 + 0x60], 0
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [r12 + 0x50], rax
	mov	qword ptr [r12 + 0x38], rbp
	mov	dword ptr [r12 + 0x40], 0
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x72], 0
	mov	word ptr [r12 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	qword ptr [r12 + 0x58], -1
	mov	qword ptr [r12 + 0x68], -1
.label_439:
	mov	byte ptr [rsp + 0x17], 1
	test	r13, r13
	je	.label_423
	mov	rax, qword ptr [rsp + 0x18]
	mov	al, byte ptr [rax + 0x49]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0x17], al
.label_423:
	xor	ebp, ebp
	test	r15, r15
	je	.label_420
	mov	qword ptr [rsp + 8], r12
	mov	ebx, r14d
	and	ebx, 0x800
	mov	dword ptr [rsp + 4], ebx
	xor	ebp, ebp
	xor	r12d, r12d
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_446:
	mov	qword ptr [rsp + 0x28], rbp
	mov	rdi, r15
	call	strlen
	mov	rbp, rax
	test	ebx, ebx
	jne	.label_445
	cmp	rbp, 3
	jb	.label_436
	cmp	rbp, 2
	jb	.label_438
	movzx	eax, byte ptr [rbp + r15 - 1]
	cmp	eax, 0x2f
	jne	.label_421
	mov	qword ptr [rsp + 0x20], r12
.label_448:
	movzx	eax, byte ptr [r15 + rbp - 2]
	cmp	eax, 0x2f
	jne	.label_441
	dec	rbp
	cmp	rbp, 1
	ja	.label_448
	jmp	.label_441
.label_445:
	mov	qword ptr [rsp + 0x20], r12
	jmp	.label_441
.label_436:
	mov	qword ptr [rsp + 0x20], r12
	jmp	.label_441
.label_438:
	mov	qword ptr [rsp + 0x20], r12
	jmp	.label_441
.label_421:
	mov	qword ptr [rsp + 0x20], r12
.label_441:
	mov	rbx, r13
	lea	rdi, [rbp + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_422
	mov	r13, r12
	add	r13, 0x108
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, rbp
	call	memcpy
	mov	byte ptr [r12 + rbp + 0x108], 0
	mov	qword ptr [r12 + 0x60], rbp
	mov	rdi, qword ptr [rsp + 0x18]
	mov	qword ptr [r12 + 0x50], rdi
	mov	rax, qword ptr [rdi + 0x20]
	mov	qword ptr [r12 + 0x38], rax
	mov	dword ptr [r12 + 0x40], 0
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x72], 0
	mov	word ptr [r12 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	qword ptr [r12 + 0x58], 0
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x30], r13
	mov	r15, qword ptr [rsp + 0x28]
	test	r15, r15
	setne	al
	and	al, byte ptr [rsp + 0x17]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_417
	mov	word ptr [r12 + 0x70], 0xb
	mov	qword ptr [r12 + 0xa8], 2
	jmp	.label_419
	nop	dword ptr [rax + rax]
.label_417:
	xor	edx, edx
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
.label_419:
	mov	r13, rbx
	test	r13, r13
	je	.label_442
	mov	rbp, r12
	mov	qword ptr [r12 + 0x10], r15
	mov	r12, qword ptr [rsp + 0x20]
	jmp	.label_429
.label_442:
	mov	qword ptr [r12 + 0x10], 0
	test	r15, r15
	mov	rbp, r12
	je	.label_429
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + 0x10], r12
	mov	rbp, r15
.label_429:
	inc	r14
	mov	rax, qword ptr [rsp + 0x30]
	mov	r15, qword ptr [rax + 8]
	add	rax, 8
	mov	qword ptr [rsp + 0x30], rax
	test	r15, r15
	mov	ebx, dword ptr [rsp + 4]
	jne	.label_446
	test	r13, r13
	mov	rdi, qword ptr [rsp + 0x18]
	je	.label_416
	cmp	r14, 2
	mov	r12, qword ptr [rsp + 8]
	jb	.label_420
	mov	rsi, rbp
	mov	rdx, r14
	call	fts_sort
	mov	rbp, rax
	jmp	.label_420
.label_424:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
.label_443:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_431:
	mov	rdi, qword ptr [rbx + 0x20]
	jmp	.label_427
.label_422:
	mov	rbp, qword ptr [rsp + 0x28]
	mov	r12, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rsp + 0x18]
	jmp	.label_418
.label_444:
	mov	rbx, qword ptr [rsp + 0x18]
	jmp	.label_432
.label_416:
	mov	r12, qword ptr [rsp + 8]
.label_420:
	mov	edi, 0x110
	call	malloc
	test	rax, rax
	je	.label_440
	mov	byte ptr [rax + 0x108], 0
	mov	qword ptr [rax + 0x60], 0
	mov	rbx, qword ptr [rsp + 0x18]
	mov	qword ptr [rax + 0x50], rbx
	mov	rcx, qword ptr [rbx + 0x20]
	mov	qword ptr [rax + 0x38], rcx
	mov	dword ptr [rax + 0x40], 0
	mov	qword ptr [rax + 0x18], 0
	mov	word ptr [rax + 0x72], 0
	mov	word ptr [rax + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 0x20], xmm0
	mov	qword ptr [rbx], rax
	mov	qword ptr [rax + 0x10], rbp
	mov	word ptr [rax + 0x70], 9
	mov	qword ptr [rax + 0x58], 1
	movzx	eax, word ptr [rbx + 0x48]
	test	ax, 0x102
	je	.label_437
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	jne	.label_415
	jmp	.label_418
.label_440:
	mov	rbx, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx], 0
	jmp	.label_418
.label_437:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	je	.label_418
	mov	rdi, rax
	call	cycle_check_init
.label_415:
	mov	eax, dword ptr [rbx + 0x48]
	test	ax, 0x204
	jne	.label_428
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_426
	mov	edi, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_433
.label_418:
	mov	r14, rbx
	test	rbp, rbp
	je	.label_434
	nop	
.label_425:
	mov	rbx, qword ptr [rbp + 0x10]
	mov	rdi, qword ptr [rbp + 0x18]
	test	rdi, rdi
	je	.label_435
	call	closedir
.label_435:
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	mov	rbp, rbx
	jne	.label_425
.label_434:
	mov	rdi, r12
	call	free
	mov	rbx, r14
	mov	rbp, qword ptr [rbx + 0x20]
.label_432:
	mov	rdi, rbp
.label_427:
	call	free
	mov	rdi, rbx
	call	free
	xor	eax, eax
	jmp	.label_443
.label_426:
	mov	edi, dword ptr [rbx + 0x2c]
	mov	esi, OFFSET FLAT:.str_3
	xor	eax, eax
	call	openat_safer
.label_433:
	mov	dword ptr [rbx + 0x28], eax
	test	eax, eax
	jns	.label_428
	or	byte ptr [rbx + 0x48], 4
.label_428:
	mov	rdi, rbx
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	mov	rax, rbx
	jmp	.label_443
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4068f0

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	mov	eax, dword ptr [r15 + 0x48]
	cmp	qword ptr [r14 + 0x58], 0
	jne	.label_452
	test	al, 1
	je	.label_452
	mov	dl, 1
.label_452:
	lea	rbx, [r14 + 0x78]
	test	dl, dl
	jne	.label_453
	and	eax, 2
	jne	.label_453
	mov	esi, dword ptr [r15 + 0x2c]
	mov	rdx, qword ptr [r14 + 0x30]
	mov	edi, 1
	mov	r8d, 0x100
	mov	rcx, rbx
	call	__fxstatat
	test	eax, eax
	je	.label_454
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_450
.label_453:
	mov	rsi, qword ptr [r14 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__xstat
	test	eax, eax
	je	.label_454
	call	__errno_location
	mov	r15, rax
	mov	eax, dword ptr [r15]
	cmp	eax, 2
	jne	.label_450
	mov	rsi, qword ptr [r14 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__lxstat
	test	eax, eax
	je	.label_458
	mov	eax, dword ptr [r15]
.label_450:
	mov	dword ptr [r14 + 0x40], eax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	ax, 0xa
.label_449:
	movzx	eax, ax
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_454:
	mov	ecx, 0xf000
	and	ecx, dword ptr [r14 + 0x90]
	mov	ax, 0xc
	cmp	ecx, 0xa000
	je	.label_449
	cmp	ecx, 0x8000
	je	.label_455
	cmp	ecx, 0x4000
	jne	.label_456
	mov	rax, qword ptr [r14 + 0x88]
	mov	rcx, -1
	cmp	rax, 2
	jb	.label_451
	cmp	qword ptr [r14 + 0x58], 0
	jle	.label_451
	mov	ecx, dword ptr [r15 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_451:
	mov	qword ptr [r14 + 0x68], rcx
	mov	ecx, dword ptr [r14 + 0x108]
	mov	ax, 1
	movzx	edx, cl
	cmp	edx, 0x2e
	jne	.label_449
	mov	edx, ecx
	shr	edx, 8
	test	dl, dl
	je	.label_457
	movzx	edx, dl
	cmp	edx, 0x2e
	jne	.label_449
	test	ecx, 0xff0000
	jne	.label_449
.label_457:
	mov	ax, 1
	cmp	qword ptr [r14 + 0x58], 0
	je	.label_449
	mov	ax, 5
	jmp	.label_449
.label_455:
	mov	ax, 8
	jmp	.label_449
.label_456:
	mov	ax, 3
	jmp	.label_449
.label_458:
	mov	dword ptr [r15], 0
	mov	ax, 0xd
	jmp	.label_449
	nop	
	.section	.text
	.align	32
	#Procedure 0x406a90

	.globl fts_sort
	.type fts_sort, @function
fts_sort:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	r15, qword ptr [r12 + 0x40]
	cmp	qword ptr [r12 + 0x38], r14
	jae	.label_466
	lea	rsi, [r14 + 0x28]
	mov	qword ptr [r12 + 0x38], rsi
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_465
	lea	r13, [r12 + 0x10]
	mov	rdi, qword ptr [r13]
	shl	rsi, 3
	call	realloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_465
	mov	qword ptr [r13], rdi
	jmp	.label_462
.label_466:
	mov	rdi, qword ptr [r12 + 0x10]
	add	r12, 0x10
	mov	r13, r12
.label_462:
	test	rbx, rbx
	je	.label_469
	nop	dword ptr [rax]
.label_459:
	mov	qword ptr [rdi], rbx
	add	rdi, 8
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	jne	.label_459
	mov	rdi, qword ptr [r13]
.label_469:
	mov	edx, 8
	mov	rsi, r14
	mov	rcx, r15
	call	qsort
	mov	r9, qword ptr [r13]
	mov	rbx, qword ptr [r9]
	cmp	r14, 1
	mov	rcx, rbx
	je	.label_467
	mov	rcx, qword ptr [r9 + 8]
	mov	qword ptr [rbx + 0x10], rcx
	mov	rcx, r14
	add	rcx, -2
	je	.label_461
	lea	rdx, [r9 + 8]
	lea	edi, [r14 + 2]
	lea	r8, [r14 - 3]
	test	dil, 3
	je	.label_464
	lea	edi, [r14 + 2]
	and	edi, 3
	neg	rdi
	nop	dword ptr [rax]
.label_468:
	mov	rsi, qword ptr [rdx]
	mov	rax, qword ptr [rdx + 8]
	lea	rdx, [rdx + 8]
	mov	qword ptr [rsi + 0x10], rax
	dec	rcx
	inc	rdi
	jne	.label_468
.label_464:
	cmp	r8, 3
	jb	.label_461
	nop	dword ptr [rax]
.label_460:
	mov	rax, qword ptr [rdx]
	mov	rsi, qword ptr [rdx + 8]
	mov	qword ptr [rax + 0x10], rsi
	mov	rax, qword ptr [rdx + 8]
	mov	rsi, qword ptr [rdx + 0x10]
	mov	qword ptr [rax + 0x10], rsi
	mov	rax, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rdx + 0x18]
	mov	qword ptr [rax + 0x10], rsi
	mov	rax, qword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rdx + 0x20]
	lea	rdx, [rdx + 0x20]
	mov	qword ptr [rax + 0x10], rsi
	add	rcx, -4
	jne	.label_460
.label_461:
	mov	rcx, qword ptr [r9 + r14*8 - 8]
.label_467:
	mov	qword ptr [rcx + 0x10], 0
	jmp	.label_463
.label_465:
	mov	rdi, qword ptr [r12 + 0x10]
	call	free
	mov	qword ptr [r12 + 0x10], 0
	mov	qword ptr [r12 + 0x38], 0
.label_463:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c10

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_473
	cmp	qword ptr [rdi + 0x58], 0
	js	.label_474
	nop	word ptr cs:[rax + rax]
.label_484:
	mov	rbx, qword ptr [rdi + 0x10]
	test	rbx, rbx
	jne	.label_480
	mov	rbx, qword ptr [rdi + 8]
.label_480:
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	mov	rdi, rbx
	jns	.label_484
	jmp	.label_485
.label_474:
	mov	rbx, rdi
.label_485:
	mov	rdi, rbx
	call	free
.label_473:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_487
	nop	word ptr cs:[rax + rax]
.label_471:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_470
	call	closedir
.label_470:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_471
.label_487:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_477
	xor	ebp, ebp
	test	al, 4
	jne	.label_478
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebp, ebp
	test	eax, eax
	je	.label_483
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_483:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	test	ebp, ebp
	je	.label_486
	jmp	.label_478
.label_477:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebp, ebp
	test	edi, edi
	js	.label_478
	call	close
.label_486:
	test	eax, eax
	je	.label_478
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_478:
	lea	rbx, [r14 + 0x60]
	jmp	.label_482
	nop	dword ptr [rax + rax]
.label_476:
	mov	edi, eax
	call	close
.label_482:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_472
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_476
	jmp	.label_482
.label_472:
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_475
	call	hash_free
.label_475:
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_479
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_481
	call	hash_free
	jmp	.label_481
.label_479:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_481:
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	ebp, ebp
	je	.label_488
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_488:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d80

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	r12, qword ptr [r14]
	xor	r15d, r15d
	test	r12, r12
	je	.label_492
	mov	eax, dword ptr [r14 + 0x48]
	xor	r15d, r15d
	test	ah, 0x20
	jne	.label_492
	movzx	ecx, word ptr [r12 + 0x74]
	mov	word ptr [r12 + 0x74], 3
	cmp	ecx, 1
	je	.label_532
	movzx	edx, cx
	cmp	edx, 2
	jne	.label_537
	mov	ecx, dword ptr [r12 + 0x70]
	mov	esi, ecx
	and	esi, 0xfffe
	cmp	esi, 0xc
	jne	.label_540
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_527
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_489
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_493
	mov	edi, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_502
.label_532:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	mov	r15, r12
	jmp	.label_492
.label_537:
	lea	r13, [r12 + 0x70]
	mov	ecx, dword ptr [r12 + 0x70]
	jmp	.label_512
.label_540:
	lea	r13, [r12 + 0x70]
.label_512:
	movzx	esi, cx
	cmp	esi, 1
	jne	.label_490
	cmp	edx, 4
	je	.label_514
	test	al, 0x40
	je	.label_534
	mov	rdx, qword ptr [r12 + 0x78]
	cmp	rdx, qword ptr [r14 + 0x18]
	jne	.label_514
.label_534:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_521
	test	ah, 0x10
	jne	.label_526
	mov	rcx, qword ptr [r12 + 0x30]
	mov	edx, 0xffffffff
	mov	rdi, r14
	mov	rsi, r12
	call	fts_safe_changedir
	test	eax, eax
	je	.label_523
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	or	byte ptr [r12 + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_536
	nop	word ptr cs:[rax + rax]
.label_490:
	mov	r15, qword ptr [r12 + 0x10]
	test	r15, r15
	je	.label_508
	mov	qword ptr [r14], r15
	mov	rdi, r12
	call	free
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_546
	movzx	eax, word ptr [r15 + 0x74]
	cmp	eax, 4
	mov	r12, r15
	je	.label_490
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_495
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_507
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_507
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_545
	mov	edi, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_529
.label_520:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_536:
	test	rax, rax
	jne	.label_520
	jmp	.label_523
.label_514:
	test	ecx, 0x20000
	je	.label_525
	mov	edi, dword ptr [r12 + 0x44]
	call	close
.label_525:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_538
	nop	dword ptr [rax]
.label_539:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_533
	call	closedir
.label_533:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_539
	mov	qword ptr [r14 + 8], 0
.label_538:
	mov	word ptr [r12 + 0x70], 6
.label_499:
	mov	rdi, r14
	mov	rsi, r12
	call	leave_dir
	mov	r15, r12
	jmp	.label_492
.label_508:
	mov	r15, qword ptr [r12 + 8]
	cmp	qword ptr [r15 + 0x18], 0
	je	.label_544
	mov	qword ptr [r14], r15
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	r15, rax
	test	r15, r15
	je	.label_500
	mov	rdi, r12
	call	free
	jmp	.label_495
.label_527:
	mov	r15, r12
	jmp	.label_505
.label_546:
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	mov	eax, dword ptr [r14 + 0x48]
	je	.label_510
	or	eax, 0x2000
	mov	dword ptr [r14 + 0x48], eax
	xor	r15d, r15d
	jmp	.label_492
.label_489:
	mov	r15, r12
	jmp	.label_505
.label_510:
	test	ax, 0x102
	je	.label_515
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_522
	call	hash_free
	jmp	.label_522
.label_526:
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	nop	word ptr cs:[rax + rax]
.label_535:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_531
	call	closedir
.label_531:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_535
	mov	qword ptr [r14 + 8], 0
.label_521:
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_542
.label_523:
	mov	r15, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], 0
	jmp	.label_495
.label_542:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_492
	cmp	dword ptr [r12 + 0x40], 0
	je	.label_499
	movzx	eax, word ptr [r13]
	cmp	eax, 4
	je	.label_499
	mov	word ptr [r13], 7
	jmp	.label_499
.label_493:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:.str_3
	xor	eax, eax
	call	openat_safer
.label_502:
	mov	dword ptr [r12 + 0x44], eax
	test	eax, eax
	js	.label_504
	or	byte ptr [r12 + 0x72], 2
	mov	r15, r12
	jmp	.label_505
.label_500:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_492
	mov	r15, qword ptr [r12 + 8]
.label_544:
	mov	qword ptr [r14], r15
	mov	rdi, r12
	call	free
	cmp	qword ptr [r15 + 0x58], -1
	je	.label_517
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	je	.label_516
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_519
	movzx	eax, word ptr [r15 + 0x72]
	test	al, 2
	jne	.label_528
	test	al, 1
	jne	.label_543
	mov	rsi, qword ptr [r15 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_1
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_530
.label_517:
	mov	rdi, r15
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	xor	r15d, r15d
	jmp	.label_492
.label_504:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	mov	word ptr [r12 + 0x70], 7
	mov	r15, r12
	jmp	.label_505
.label_515:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_522:
	mov	rdx, qword ptr [r15 + 0x60]
	mov	qword ptr [r15 + 0x48], rdx
	mov	rdi, qword ptr [r14 + 0x20]
	lea	r12, [r15 + 0x108]
	inc	rdx
	mov	rsi, r12
	call	memmove
	mov	esi, 0x2f
	mov	rdi, r12
	call	strrchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_506
	cmp	rbx, r12
	jne	.label_509
	cmp	byte ptr [r15 + 0x109], 0
	je	.label_506
.label_509:
	inc	rbx
	mov	rdi, rbx
	call	strlen
	mov	r13, rax
	lea	rdx, [r13 + 1]
	mov	rdi, r12
	mov	rsi, rbx
	call	memmove
	mov	qword ptr [r15 + 0x60], r13
.label_506:
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [r15 + 0x38], rax
	mov	qword ptr [r15 + 0x30], rax
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_496
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [r14 + 0x58], rax
	jmp	.label_505
.label_496:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [r14 + 0x58], rax
	test	rax, rax
	je	.label_505
	mov	rdi, rax
	call	cycle_check_init
	jmp	.label_505
.label_519:
	mov	rdi, r14
	call	restore_initial_cwd
.label_530:
	test	eax, eax
	je	.label_543
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_543
.label_528:
	mov	eax, dword ptr [r14 + 0x48]
	lea	rbx, [r15 + 0x44]
	test	al, 4
	jne	.label_498
	test	ah, 2
	mov	ebp, dword ptr [r15 + 0x44]
	jne	.label_491
	mov	edi, ebp
	call	fchdir
	test	eax, eax
	je	.label_498
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_498
.label_545:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:.str_3
	xor	eax, eax
	call	openat_safer
.label_529:
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_511
	or	byte ptr [r15 + 0x72], 2
	jmp	.label_507
.label_511:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
.label_507:
	mov	word ptr [r15 + 0x74], 3
.label_495:
	mov	rax, qword ptr [r14 + 0x20]
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rcx + 0x48]
	movzx	edx, byte ptr [rdx + rcx - 1]
	cmp	edx, 0x2f
	jne	.label_518
	dec	rcx
.label_518:
	lea	rdi, [rax + rcx + 1]
	mov	byte ptr [rax + rcx], 0x2f
	lea	rsi, [r15 + 0x108]
	mov	rdx, qword ptr [r15 + 0x60]
	inc	rdx
	call	memmove
.label_505:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	jne	.label_497
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_501
	cmp	rax, 2
	jne	.label_516
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_541
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_541
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	filesystem_type
	cmp	rax, 0x52654973
	je	.label_501
	cmp	rax, 0x58465342
	je	.label_501
.label_541:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	cmp	ecx, 0x4000
	jne	.label_497
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_501
	mov	rax, qword ptr [rbx + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_501
	dec	rax
	mov	qword ptr [rbx + 0x68], rax
.label_501:
	movzx	eax, word ptr [r15 + 0x70]
.label_497:
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_492
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_513
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_513:
	mov	rdi, r14
	mov	rsi, r15
	call	enter_dir
	test	al, al
	jne	.label_492
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r15d, r15d
	jmp	.label_492
.label_491:
	mov	esi, dword ptr [r14 + 0x2c]
	cmp	esi, ebp
	jne	.label_524
	cmp	esi, -0x64
	jne	.label_516
.label_524:
	lea	rdi, [r14 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_494
	mov	edi, eax
	call	close
.label_494:
	mov	dword ptr [r14 + 0x2c], ebp
.label_498:
	mov	edi, dword ptr [rbx]
	call	close
.label_543:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	je	.label_503
	mov	eax, dword ptr [r15 + 0x40]
	cmp	eax, 0
	setne	cl
	movzx	ecx, cl
	or	ecx, 6
	cmp	eax, 0
	mov	word ptr [r15 + 0x70], cx
	jne	.label_503
	mov	rdi, r14
	mov	rsi, r15
	call	leave_dir
.label_503:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	r15, rax
.label_492:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_516:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407510

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_548
	movups	xmm0, xmmword ptr [rsi + 0x78]
	movaps	xmmword ptr [rsp], xmm0
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_549
	mov	rdi, rax
	call	free
	add	rsp, 0x18
	ret	
.label_548:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_547
	cmp	qword ptr [rax + 0x58], 0
	js	.label_547
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_549
	mov	rdx, qword ptr [rcx]
	cmp	rdx, qword ptr [rsi + 0x80]
	jne	.label_547
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	jne	.label_547
	mov	rdx, qword ptr [rax + 0x78]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	qword ptr [rcx], rax
.label_547:
	add	rsp, 0x18
	ret	
.label_549:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4075a0

	.globl fts_safe_changedir
	.type fts_safe_changedir, @function
fts_safe_changedir:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rcx
	mov	r13d, edx
	mov	r15, rdi
	test	rbx, rbx
	je	.label_556
	movzx	edx, byte ptr [rbx]
	mov	ecx, 0x2e
	mov	eax, 0x2e
	sub	eax, edx
	jne	.label_563
	movzx	eax, byte ptr [rbx + 1]
	sub	ecx, eax
	mov	eax, ecx
	jne	.label_563
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_563:
	test	eax, eax
	sete	r14b
	jmp	.label_564
.label_556:
	xor	r14d, r14d
.label_564:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 4
	jne	.label_569
	test	r13d, r13d
	jns	.label_570
	mov	cl, r14b
	xor	cl, 1
	jne	.label_571
	mov	qword ptr [rsp], rsi
	and	eax, 0x200
	je	.label_550
	lea	rbp, [r15 + 0x60]
	mov	rdi, rbp
	call	i_ring_empty
	test	al, al
	jne	.label_550
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r14b, 1
	jmp	.label_550
.label_569:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_555
	and	eax, 0x200
	je	.label_555
	mov	edi, r13d
	call	close
	jmp	.label_555
.label_570:
	mov	qword ptr [rsp], rsi
	jmp	.label_550
.label_571:
	mov	qword ptr [rsp], rsi
.label_550:
	test	r13d, r13d
	mov	r12d, r13d
	jns	.label_565
	mov	eax, dword ptr [r15 + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_568
	xor	eax, eax
	mov	rdi, rbx
	mov	esi, edx
	call	open_safer
	jmp	.label_552
.label_568:
	mov	edi, dword ptr [r15 + 0x2c]
	xor	eax, eax
	mov	rsi, rbx
	call	openat_safer
.label_552:
	mov	r12d, eax
	mov	ebp, 0xffffffff
	test	r12d, r12d
	js	.label_555
.label_565:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 2
	jne	.label_560
	test	rbx, rbx
	je	.label_561
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x2e
	jne	.label_561
	movzx	ecx, byte ptr [rbx + 1]
	cmp	ecx, 0x2e
	jne	.label_561
	cmp	byte ptr [rbx + 2], 0
	jne	.label_561
.label_560:
	lea	rdx, [rsp + 8]
	mov	edi, 1
	mov	esi, r12d
	call	__fxstat
	test	eax, eax
	jne	.label_566
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_567
	mov	rax, qword ptr [rcx + 0x80]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_567
	mov	eax, dword ptr [r15 + 0x48]
.label_561:
	test	ah, 2
	jne	.label_551
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	jmp	.label_553
.label_551:
	mov	esi, dword ptr [r15 + 0x2c]
	cmp	esi, r12d
	jne	.label_554
	cmp	esi, -0x64
	jne	.label_557
.label_554:
	test	r14b, r14b
	je	.label_558
	test	al, 4
	jne	.label_559
	test	esi, esi
	js	.label_559
	mov	edi, esi
	jmp	.label_562
.label_567:
	call	__errno_location
	mov	dword ptr [rax], 2
.label_566:
	mov	ebp, 0xffffffff
.label_553:
	test	r13d, r13d
	jns	.label_555
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_555
.label_558:
	lea	rdi, [r15 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_559
	mov	edi, eax
.label_562:
	call	close
.label_559:
	mov	dword ptr [r15 + 0x2c], r12d
	xor	ebp, ebp
.label_555:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_557:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4077a0

	.globl fts_build
	.type fts_build, @function
fts_build:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r15d, esi
	mov	r13, rdi
	mov	qword ptr [rsp + 0x78], r13
	mov	r12, qword ptr [r13]
	mov	qword ptr [rsp + 0x60], r12
	mov	rdi, qword ptr [r12 + 0x18]
	test	rdi, rdi
	je	.label_639
	mov	qword ptr [rsp + 0x48], rdi
	call	dirfd
	mov	dword ptr [rsp + 0xa4], eax
	test	eax, eax
	js	.label_644
	mov	qword ptr [rsp + 0x40], -1
	cmp	qword ptr [r13 + 0x40], 0
	jne	.label_647
	mov	eax, 0x186a0
	mov	qword ptr [rsp + 0x40], rax
.label_647:
	lea	rax, [r13 + 0x40]
	mov	qword ptr [rsp + 0x58], rax
	lea	rax, [r13 + 0x48]
	mov	qword ptr [rsp + 0x90], rax
	mov	al, 1
	mov	dword ptr [rsp + 0x1c], eax
	jmp	.label_573
.label_639:
	mov	qword ptr [rsp + 0x48], rdi
	mov	eax, dword ptr [r13 + 0x48]
	mov	ecx, eax
	and	ecx, 0x204
	mov	edi, 0xffffff9c
	cmp	ecx, 0x200
	jne	.label_577
	mov	edi, dword ptr [r13 + 0x2c]
.label_577:
	mov	rsi, qword ptr [r12 + 0x30]
	xor	edx, edx
	test	al, 0x10
	je	.label_583
	test	al, 1
	je	.label_586
	cmp	qword ptr [r12 + 0x58], 0
	je	.label_583
.label_586:
	mov	edx, 0x20000
.label_583:
	lea	rcx, [rsp + 0xa4]
	call	opendirat
	mov	qword ptr [r12 + 0x18], rax
	test	rax, rax
	je	.label_591
	lea	rcx, [r13 + 0x48]
	movzx	eax, word ptr [r12 + 0x70]
	cmp	eax, 0xb
	jne	.label_594
	mov	qword ptr [rsp + 0x90], rcx
	xor	edx, edx
	mov	rdi, r13
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	jmp	.label_621
.label_644:
	mov	rdi, qword ptr [r12 + 0x18]
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
.label_591:
	xor	ebx, ebx
	cmp	r15d, 3
	jne	.label_582
	mov	word ptr [r12 + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	xor	ebx, ebx
	jmp	.label_582
.label_594:
	test	byte ptr [rcx + 1], 1
	mov	qword ptr [rsp + 0x90], rcx
	je	.label_621
	mov	rdi, r13
	mov	rsi, r12
	call	leave_dir
	xor	edx, edx
	mov	rdi, r13
	mov	rsi, r12
	call	fts_stat
	mov	rdi, r13
	mov	rsi, r12
	call	enter_dir
	test	al, al
	je	.label_614
.label_621:
	mov	qword ptr [rsp + 0x40], -1
	cmp	qword ptr [r13 + 0x40], 0
	jne	.label_615
	mov	eax, 0x186a0
	mov	qword ptr [rsp + 0x40], rax
.label_615:
	lea	rax, [r13 + 0x40]
	mov	qword ptr [rsp + 0x58], rax
	cmp	r15d, 2
	je	.label_620
	mov	rax, qword ptr [rsp + 0x90]
	mov	eax, dword ptr [rax]
	and	eax, 0x38
	cmp	eax, 0x18
	jne	.label_612
	cmp	qword ptr [r12 + 0x88], 2
	jne	.label_612
	mov	esi, dword ptr [rsp + 0xa4]
	mov	rdi, r12
	call	filesystem_type
	cmp	rax, 0x9f9f
	jle	.label_626
	cmp	rax, 0x9fa0
	je	.label_612
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	je	.label_612
	cmp	rax, 0x5346414f
	je	.label_612
	jmp	.label_620
.label_614:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	ebx, ebx
	jmp	.label_582
.label_626:
	test	rax, rax
	je	.label_612
	cmp	rax, 0x6969
	jne	.label_620
.label_612:
	cmp	r15d, 3
	sete	bl
	mov	r14b, 1
	jmp	.label_635
.label_620:
	cmp	r15d, 3
	sete	bl
	mov	r14d, 0
	jne	.label_638
.label_635:
	mov	dword ptr [rsp + 0x24], r15d
	mov	rax, qword ptr [rsp + 0x90]
	test	byte ptr [rax + 1], 2
	mov	ebp, dword ptr [rsp + 0xa4]
	je	.label_642
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebp
	call	rpl_fcntl
	mov	ebp, eax
	mov	dword ptr [rsp + 0xa4], ebp
.label_642:
	test	ebp, ebp
	js	.label_651
	xor	ecx, ecx
	mov	rdi, r13
	mov	rsi, r12
	mov	edx, ebp
	call	fts_safe_changedir
	test	eax, eax
	je	.label_649
.label_651:
	and	bl, r14b
	movzx	eax, bl
	cmp	eax, 1
	jne	.label_575
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
.label_575:
	or	byte ptr [r12 + 0x72], 1
	mov	rdi, qword ptr [r12 + 0x18]
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
	mov	rax, qword ptr [rsp + 0x90]
	mov	eax, dword ptr [rax]
	test	ah, 2
	je	.label_581
	mov	edi, dword ptr [rsp + 0xa4]
	test	edi, edi
	js	.label_581
	call	close
.label_581:
	mov	qword ptr [r12 + 0x18], 0
	mov	dword ptr [rsp + 0x1c], 0
	jmp	.label_590
.label_638:
	mov	dword ptr [rsp + 0x1c], 0
	jmp	.label_573
.label_649:
	mov	al, 1
	mov	dword ptr [rsp + 0x1c], eax
.label_590:
	mov	r15d, dword ptr [rsp + 0x24]
.label_573:
	mov	rax, qword ptr [r12 + 0x38]
	mov	rdx, qword ptr [r12 + 0x48]
	movzx	eax, byte ptr [rax + rdx - 1]
	cmp	eax, 0x2f
	jne	.label_598
	dec	rdx
.label_598:
	mov	dword ptr [rsp + 0x24], r15d
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	mov	rax, qword ptr [rsp + 0x90]
	test	byte ptr [rax], 4
	je	.label_602
	mov	rax, qword ptr [r13 + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x68], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_602:
	lea	rax, [rdx + 1]
	mov	qword ptr [rsp + 0x80], rax
	mov	rcx, qword ptr [r13 + 0x30]
	sub	rcx, rax
	mov	qword ptr [rsp + 0x70], rcx
	mov	rax, qword ptr [r12 + 0x58]
	inc	rax
	mov	qword ptr [rsp + 0x28], rax
	add	rdx, 0x102
	mov	qword ptr [rsp + 0x10], rdx
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	mov	dword ptr [rsp + 0x20], 0
	xor	eax, eax
	xor	ebp, ebp
	xor	r15d, r15d
.label_617:
	mov	rbx, qword ptr [r12 + 0x18]
	test	rbx, rbx
	je	.label_592
	mov	qword ptr [rsp + 0x50], rax
	mov	qword ptr [rsp + 0x88], rbp
	call	__errno_location
	mov	qword ptr [rsp + 0x98], rax
	mov	rbp, qword ptr [rsp + 0x90]
	nop	dword ptr [rax]
.label_634:
	mov	rax, qword ptr [rsp + 0x98]
	mov	dword ptr [rax], 0
	mov	rdi, rbx
	call	readdir
	mov	r14, rax
	test	r14, r14
	je	.label_625
	mov	r13, r14
	add	r13, 0x13
	test	byte ptr [rbp], 0x20
	jne	.label_628
	movzx	eax, byte ptr [r13]
	cmp	eax, 0x2e
	jne	.label_628
	movzx	eax, byte ptr [r14 + 0x14]
	cmp	eax, 0x2e
	je	.label_631
	test	al, al
	je	.label_633
	jmp	.label_628
	nop	dword ptr [rax]
.label_631:
	cmp	byte ptr [r14 + 0x15], 0
	jne	.label_628
.label_633:
	mov	rbx, qword ptr [r12 + 0x18]
	test	rbx, rbx
	jne	.label_634
	jmp	.label_637
	nop	word ptr cs:[rax + rax]
.label_628:
	mov	rdi, r13
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_645
	mov	rdi, r12
	add	rdi, 0x108
	mov	qword ptr [rsp + 0x38], rdi
	mov	rsi, r13
	mov	rdx, rbx
	call	memcpy
	mov	byte ptr [r12 + rbx + 0x108], 0
	mov	qword ptr [r12 + 0x60], rbx
	mov	rbp, qword ptr [rsp + 0x78]
	mov	qword ptr [r12 + 0x50], rbp
	mov	r13, qword ptr [rbp + 0x20]
	mov	qword ptr [r12 + 0x38], r13
	mov	dword ptr [r12 + 0x40], 0
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x72], 0
	mov	word ptr [r12 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	rax, qword ptr [rsp + 0x70]
	cmp	rbx, rax
	jae	.label_572
	mov	rdx, qword ptr [rsp + 0x80]
	jmp	.label_587
	nop	word ptr cs:[rax + rax]
.label_572:
	mov	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rax + rbx]
	add	rsi, qword ptr [rbp + 0x30]
	jb	.label_593
	mov	qword ptr [rbp + 0x30], rsi
	mov	rdi, r13
	call	realloc
	test	rax, rax
	je	.label_599
	mov	qword ptr [rbp + 0x20], rax
	cmp	r13, rax
	je	.label_601
	mov	rdx, qword ptr [rsp + 0x80]
	add	rax, rdx
	mov	rcx, qword ptr [rsp + 0x90]
	test	byte ptr [rcx], 4
	mov	rcx, qword ptr [rsp + 0x68]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x68], rcx
	mov	al, 1
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_641
.label_601:
	mov	rdx, qword ptr [rsp + 0x80]
.label_641:
	mov	rax, qword ptr [rbp + 0x30]
	sub	rax, rdx
.label_587:
	add	rbx, rdx
	jb	.label_609
	mov	qword ptr [rsp + 0x70], rax
	mov	qword ptr [rsp + 0x80], rdx
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [r12 + 0x58], rax
	mov	r13, rbp
	mov	rax, qword ptr [r13]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x48], rbx
	mov	rax, qword ptr [r14]
	mov	qword ptr [r12 + 0x80], rax
	mov	rax, qword ptr [rsp + 0x90]
	test	byte ptr [rax], 4
	jne	.label_610
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_618
	nop	word ptr cs:[rax + rax]
.label_610:
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x68]
	mov	rsi, qword ptr [rsp + 0x38]
	call	memmove
.label_618:
	mov	rax, qword ptr [rsp + 0x90]
	mov	edx, dword ptr [rax]
	mov	rax, qword ptr [rsp + 0x58]
	cmp	qword ptr [rax], 0
	je	.label_607
	mov	eax, edx
	and	eax, 0x400
	jne	.label_607
	xor	edx, edx
	mov	rdi, r13
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	mov	rbp, qword ptr [rsp + 0x88]
	jmp	.label_632
	nop	dword ptr [rax]
.label_607:
	and	edx, 0x18
	movzx	ecx, byte ptr [r14 + 0x12]
	xor	eax, eax
	cmp	edx, 0x18
	mov	edx, 0
	jne	.label_605
	cmp	ecx, 4
	setne	bl
	test	cl, cl
	setne	dl
	and	dl, bl
.label_605:
	mov	word ptr [r12 + 0x70], 0xb
	lea	esi, [rcx - 1]
	cmp	esi, 0xb
	mov	rbp, qword ptr [rsp + 0x88]
	ja	.label_600
	mov	eax,  dword ptr [dword ptr [+ (rcx * 4) + label_616]]
.label_600:
	mov	dword ptr [r12 + 0x90], eax
	cmp	dl, 1
	mov	eax, 1
	adc	rax, 0
	mov	qword ptr [r12 + 0xa8], rax
.label_632:
	mov	qword ptr [r12 + 0x10], 0
	test	r15, r15
	mov	rax, r12
	je	.label_650
	mov	rax, qword ptr [rsp + 0x50]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, r15
.label_650:
	mov	r15, rax
	cmp	rbp, 0x2710
	jne	.label_578
	mov	rax, qword ptr [rsp + 0x58]
	cmp	qword ptr [rax], 0
	jne	.label_578
	mov	esi, dword ptr [rsp + 0xa4]
	mov	rdi, qword ptr [rsp + 0x60]
	call	filesystem_type
	mov	dword ptr [rsp + 0x20], 0
	cmp	rax, 0x6969
	je	.label_578
	cmp	rax, 0x1021994
	je	.label_578
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	je	.label_578
	mov	al, 1
	mov	dword ptr [rsp + 0x20], eax
	nop	dword ptr [rax]
.label_578:
	inc	rbp
	cmp	qword ptr [rsp + 0x40], rbp
	mov	rax, r12
	mov	r12, qword ptr [rsp + 0x60]
	ja	.label_617
	jmp	.label_592
.label_625:
	mov	rax, qword ptr [rsp + 0x98]
	mov	eax, dword ptr [rax]
	test	eax, eax
	mov	rbp, qword ptr [rsp + 0x88]
	je	.label_596
	mov	dword ptr [r12 + 0x40], eax
	mov	rax, qword ptr [rsp + 0x48]
	or	rax, rbp
	mov	ax, 7
	mov	cx, 4
	cmovne	cx, ax
	mov	word ptr [r12 + 0x70], cx
.label_596:
	mov	rdi, qword ptr [r12 + 0x18]
	test	rdi, rdi
	mov	r13, qword ptr [rsp + 0x78]
	je	.label_592
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
	jmp	.label_592
.label_637:
	mov	r13, qword ptr [rsp + 0x78]
	mov	rbp, qword ptr [rsp + 0x88]
.label_592:
	mov	rax, qword ptr [rsp + 0x30]
	test	al, 1
	je	.label_611
	mov	rcx, qword ptr [r13 + 8]
	mov	rax, qword ptr [r13 + 0x20]
	jmp	.label_579
.label_603:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_579:
	test	rcx, rcx
	je	.label_613
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_603
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_603
.label_613:
	cmp	qword ptr [r15 + 0x58], 0
	js	.label_611
	mov	rcx, r15
	nop	word ptr cs:[rax + rax]
.label_627:
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_630
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
.label_630:
	mov	qword ptr [rcx + 0x38], rax
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_624
	mov	rdx, qword ptr [rcx + 8]
.label_624:
	cmp	qword ptr [rdx + 0x58], 0
	mov	rcx, rdx
	jns	.label_627
.label_611:
	mov	rax, qword ptr [rsp + 0x90]
	test	byte ptr [rax], 4
	je	.label_629
	mov	rax, qword ptr [rsp + 0x68]
	mov	rcx, rax
	lea	rax, [rcx - 1]
	mov	rdx, qword ptr [rsp + 0x80]
	cmp	rdx, qword ptr [r13 + 0x30]
	cmove	rcx, rax
	test	rbp, rbp
	cmove	rcx, rax
	mov	byte ptr [rcx], 0
.label_629:
	cmp	qword ptr [rsp + 0x48], 0
	jne	.label_604
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	je	.label_604
	cmp	dword ptr [rsp + 0x24], 1
	je	.label_595
	test	rbp, rbp
	jne	.label_604
.label_595:
	cmp	qword ptr [r12 + 0x58], 0
	je	.label_643
	mov	rsi, qword ptr [r12 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_1
	mov	rdi, r13
	call	fts_safe_changedir
	jmp	.label_636
.label_643:
	mov	rdi, r13
	call	restore_initial_cwd
.label_636:
	test	eax, eax
	je	.label_604
	mov	word ptr [r12 + 0x70], 7
	mov	rax, qword ptr [rsp + 0x90]
	or	byte ptr [rax + 1], 0x20
	xor	ebx, ebx
	test	r15, r15
	je	.label_582
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_580:
	mov	rbp, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	je	.label_576
	call	closedir
.label_576:
	mov	rdi, r15
	call	free
	test	rbp, rbp
	mov	r15, rbp
	jne	.label_580
	jmp	.label_582
.label_604:
	test	rbp, rbp
	je	.label_584
	mov	eax, dword ptr [rsp + 0x20]
	test	al, 1
	jne	.label_585
	cmp	rbp, 2
	jb	.label_588
	mov	rax, qword ptr [rsp + 0x58]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_589
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, rbp
	call	fts_sort
	mov	rbx, rax
	jmp	.label_582
.label_584:
	cmp	dword ptr [rsp + 0x24], 3
	jne	.label_597
	movzx	eax, word ptr [r12 + 0x70]
	cmp	eax, 4
	je	.label_597
	movzx	eax, ax
	cmp	eax, 7
	je	.label_597
	mov	word ptr [r12 + 0x70], 6
.label_597:
	xor	ebx, ebx
	test	r15, r15
	je	.label_582
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_608:
	mov	rbp, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	je	.label_606
	call	closedir
.label_606:
	mov	rdi, r15
	call	free
	test	rbp, rbp
	mov	r15, rbp
	jne	.label_608
	jmp	.label_582
.label_585:
	mov	rdx, rbp
	mov	r14, qword ptr [rsp + 0x58]
	mov	qword ptr [word ptr [r14]], OFFSET FLAT:fts_compare_ino
	mov	rdi, r13
	mov	rsi, r15
	call	fts_sort
	mov	rbx, rax
	mov	qword ptr [r14], 0
	jmp	.label_582
.label_588:
	mov	rbx, r15
	jmp	.label_582
.label_589:
	mov	rbx, r15
	jmp	.label_582
.label_609:
	mov	rdi, r12
	call	free
	test	r15, r15
	je	.label_619
	nop	dword ptr [rax]
.label_623:
	mov	rbx, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	je	.label_622
	call	closedir
.label_622:
	mov	rdi, r15
	call	free
	test	rbx, rbx
	mov	r15, rbx
	jne	.label_623
.label_619:
	mov	rbx, qword ptr [rsp + 0x60]
	mov	rdi, qword ptr [rbx + 0x18]
	call	closedir
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x70], 7
	mov	rax, qword ptr [rsp + 0x90]
	or	byte ptr [rax + 1], 0x20
	mov	rax, qword ptr [rsp + 0x98]
	mov	dword ptr [rax], 0x24
	xor	ebx, ebx
	jmp	.label_582
.label_593:
	mov	rdi, r13
	call	free
	mov	qword ptr [rbp + 0x20], 0
	mov	rax, qword ptr [rsp + 0x98]
	mov	dword ptr [rax], 0x24
	jmp	.label_640
.label_599:
	mov	rdi, qword ptr [rbp + 0x20]
	call	free
	mov	qword ptr [rbp + 0x20], 0
.label_640:
	mov	qword ptr [rsp + 8], r12
	mov	rbp, qword ptr [rsp + 0x90]
.label_645:
	mov	rax, qword ptr [rsp + 0x98]
	mov	r14d, dword ptr [rax]
	mov	rdi, qword ptr [rsp + 8]
	call	free
	test	r15, r15
	mov	r12, qword ptr [rsp + 0x60]
	je	.label_646
	nop	dword ptr [rax]
.label_574:
	mov	rbx, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	je	.label_648
	call	closedir
.label_648:
	mov	rdi, r15
	call	free
	test	rbx, rbx
	mov	r15, rbx
	jne	.label_574
.label_646:
	mov	rdi, qword ptr [r12 + 0x18]
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x70], 7
	or	byte ptr [rbp + 1], 0x20
	mov	rax, qword ptr [rsp + 0x98]
	mov	dword ptr [rax], r14d
	xor	ebx, ebx
.label_582:
	mov	rax, rbx
	add	rsp, 0xa8
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
	#Procedure 0x408260

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_652
	test	ah, 2
	jne	.label_655
	mov	edi, dword ptr [rbx + 0x28]
	call	fchdir
	test	eax, eax
	setne	al
	jmp	.label_653
.label_652:
	xor	eax, eax
	jmp	.label_653
.label_655:
	mov	esi, dword ptr [rbx + 0x2c]
	lea	rdi, [rbx + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_657
	mov	edi, eax
	call	close
.label_657:
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
	xor	eax, eax
.label_653:
	movzx	ebp, al
	add	rbx, 0x60
	jmp	.label_656
	nop	
.label_654:
	mov	edi, eax
	call	close
.label_656:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_658
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_654
	jmp	.label_656
.label_658:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4082e0

	.globl enter_dir
	.type enter_dir, @function
enter_dir:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbp, rdi
	movzx	eax, word ptr [rbp + 0x48]
	test	ax, 0x102
	je	.label_659
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_660
	movups	xmm0, xmmword ptr [r14 + 0x78]
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], r14
	mov	rdi, qword ptr [rbp + 0x58]
	mov	rsi, rbx
	call	hash_insert
	mov	r15, rax
	mov	bpl, 1
	cmp	r15, rbx
	je	.label_661
	mov	rdi, rbx
	call	free
	test	r15, r15
	je	.label_662
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [r14], rax
	jmp	.label_663
.label_659:
	mov	rdi, qword ptr [rbp + 0x58]
	lea	rsi, [r14 + 0x78]
	call	cycle_check
	mov	bpl, 1
	test	al, al
	je	.label_661
	mov	qword ptr [r14], r14
.label_663:
	mov	word ptr [r14 + 0x70], 2
	jmp	.label_661
.label_660:
	xor	ebp, ebp
	jmp	.label_661
.label_662:
	xor	ebp, ebp
.label_661:
	mov	al, bpl
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408380

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	cmp	edx, 5
	jb	.label_664
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	add	rsp, 8
	ret	
.label_664:
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4083b0
	.globl rpl_fts_children
	.type rpl_fts_children, @function
rpl_fts_children:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12d, esi
	mov	r13, rdi
	mov	eax, r12d
	or	eax, 0x1000
	cmp	eax, 0x1000
	jne	.label_672
	mov	r15, qword ptr [r13]
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	eax, eax
	test	byte ptr [r13 + 0x49], 0x20
	jne	.label_666
	movzx	ecx, word ptr [r15 + 0x70]
	xor	eax, eax
	cmp	ecx, 1
	je	.label_665
	movzx	ecx, cx
	cmp	ecx, 9
	jne	.label_666
	mov	rax, qword ptr [r15 + 0x10]
	jmp	.label_666
.label_672:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
	jmp	.label_666
.label_665:
	mov	rbx, qword ptr [r13 + 8]
	test	rbx, rbx
	je	.label_673
	nop	dword ptr [rax]
.label_667:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_678
	call	closedir
.label_678:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_667
.label_673:
	mov	ebx, 1
	cmp	r12d, 0x1000
	jne	.label_668
	or	byte ptr [r13 + 0x49], 0x10
	mov	ebx, 2
.label_668:
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_677
	mov	rax, qword ptr [r15 + 0x30]
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x2f
	je	.label_677
	mov	eax, dword ptr [r13 + 0x48]
	test	al, 4
	jne	.label_677
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_671
	mov	edi, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_675
.label_677:
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
.label_666:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_671:
	mov	edi, dword ptr [r13 + 0x2c]
	mov	esi, OFFSET FLAT:.str_3
	xor	eax, eax
	call	openat_safer
.label_675:
	mov	r15d, eax
	test	r15d, r15d
	js	.label_669
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
	test	byte ptr [r13 + 0x49], 2
	jne	.label_676
	mov	edi, r15d
	call	fchdir
	test	eax, eax
	je	.label_681
	mov	ebx, dword ptr [r14]
	mov	edi, r15d
	call	close
	mov	dword ptr [r14], ebx
	xor	eax, eax
	jmp	.label_666
.label_669:
	mov	qword ptr [r13 + 8], 0
	xor	eax, eax
	jmp	.label_666
.label_676:
	mov	esi, dword ptr [r13 + 0x2c]
	cmp	esi, r15d
	jne	.label_670
	cmp	esi, -0x64
	jne	.label_674
.label_670:
	lea	rdi, [r13 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_679
	mov	edi, eax
	call	close
.label_679:
	mov	dword ptr [r13 + 0x2c], r15d
	jmp	.label_680
.label_681:
	mov	edi, r15d
	call	close
.label_680:
	mov	rax, qword ptr [r13 + 8]
	jmp	.label_666
.label_674:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408560

	.globl AD_hash
	.type AD_hash, @function
AD_hash:
	mov	rax, qword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408570

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_682
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
.label_682:
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408590

	.globl filesystem_type
	.type filesystem_type, @function
filesystem_type:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	r15d, esi
	mov	r13, rdi
	mov	rbx, qword ptr [r13 + 0x50]
	xor	eax, eax
	test	byte ptr [rbx + 0x49], 2
	je	.label_683
	mov	rbp, qword ptr [rbx + 0x50]
	test	rbp, rbp
	jne	.label_687
	xor	r12d, r12d
	mov	edi, 0xd
	xor	esi, esi
	mov	edx, OFFSET FLAT:dev_type_hash
	mov	ecx, OFFSET FLAT:dev_type_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	rbp, rax
	mov	qword ptr [rbx + 0x50], rbp
	test	rbp, rbp
	mov	r14d, 0
	je	.label_688
.label_687:
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsp]
	mov	rdi, rbp
	call	hash_lookup
	test	rax, rax
	je	.label_684
	mov	rax, qword ptr [rax + 8]
	jmp	.label_683
.label_684:
	mov	r12b, 1
	mov	r14, rbp
.label_688:
	xor	eax, eax
	test	r15d, r15d
	js	.label_683
	lea	rsi, [rsp + 0x10]
	mov	edi, r15d
	call	fstatfs
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_683
	test	r12b, r12b
	je	.label_685
	mov	edi, 0x10
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_685
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rbp], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbp + 8], rax
	mov	rdi, r14
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_686
	cmp	rax, rbp
	je	.label_685
	call	abort
.label_686:
	mov	rdi, rbp
	call	free
.label_685:
	mov	rax, qword ptr [rsp + 0x10]
.label_683:
	add	rsp, 0x88
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
	#Procedure 0x4086a0

	.globl dev_type_hash
	.type dev_type_hash, @function
dev_type_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4086b0

	.globl dev_type_compare
	.type dev_type_compare, @function
dev_type_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4086c0

	.globl fts_compare_ino
	.type fts_compare_ino, @function
fts_compare_ino:
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rsi]
	mov	rcx, qword ptr [rcx + 0x80]
	cmp	rcx, rax
	sbb	edx, edx
	and	edx, 1
	cmp	rax, rcx
	mov	eax, 0xffffffff
	cmovae	eax, edx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4086f0

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
	je	.label_689
	cmp	r15, -2
	jb	.label_689
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_689
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_689:
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
	#Procedure 0x408750

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
	jne	.label_691
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_690
	test	cl, cl
	jne	.label_690
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_690
.label_691:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_690
	call	__errno_location
	mov	dword ptr [rax], 0
.label_690:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4087b0

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	ret	
	.section	.text
	.align	32
	#Procedure 0x4087c0

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	cmp	dword ptr [rdi + 0x18], 0x95f616
	jne	.label_692
	mov	rcx, qword ptr [rdi + 0x10]
	test	rcx, rcx
	je	.label_693
	mov	rax, qword ptr [rsi + 8]
	cmp	rax, qword ptr [rdi]
	jne	.label_693
	mov	rdx, qword ptr [rsi]
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 8]
	je	.label_694
.label_693:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x10], rdx
	test	rdx, rcx
	jne	.label_695
	mov	al, 1
	test	rdx, rdx
	je	.label_694
	mov	rax, qword ptr [rsi]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi], rax
.label_695:
	xor	eax, eax
.label_694:
	ret	
.label_692:
	push	rax
	mov	edi, OFFSET FLAT:.str_12
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 0x3c
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.cycle_check
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x408830

	.globl open_safer
	.type open_safer, @function
open_safer:
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
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_699
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_698
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_697
.label_698:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_697:
	mov	edx, dword ptr [rax]
.label_699:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408910

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_701
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_702
	cmp	byte ptr [rax + 1], 0
	je	.label_700
.label_702:
	mov	esi, OFFSET FLAT:.str.1_9
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_701
.label_700:
	xor	ebx, ebx
.label_701:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x408950
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408960
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408970
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408980
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdx
	jae	.label_703
	mov	rdi, rcx
	not	rdi
	add	rdi, rdx
	mov	rsi, rdi
	shr	rsi, 4
	xor	eax, eax
	bt	rdi, 4
	jb	.label_708
	xor	eax, eax
	cmp	qword ptr [rcx], 0
	je	.label_706
	mov	rdi, rcx
	nop	word ptr cs:[rax + rax]
.label_704:
	mov	rdi, qword ptr [rdi + 8]
	inc	rax
	test	rdi, rdi
	jne	.label_704
.label_706:
	add	rcx, 0x10
.label_708:
	test	rsi, rsi
	je	.label_703
	nop	word ptr cs:[rax + rax]
.label_707:
	cmp	qword ptr [rcx], 0
	mov	esi, 0
	mov	rdi, rcx
	je	.label_711
	nop	
.label_710:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_710
	cmp	rsi, rax
	cmova	rax, rsi
.label_711:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_705
	lea	rdi, [rcx + 0x10]
	xor	esi, esi
.label_709:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_709
	cmp	rsi, rax
	cmova	rax, rsi
.label_705:
	add	rcx, 0x20
	cmp	rcx, rdx
	jb	.label_707
.label_703:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408a30
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rcx, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	edx, edx
	cmp	rcx, r9
	mov	esi, 0
	jae	.label_715
	mov	rax, rcx
	not	rax
	add	rax, r9
	mov	r8, rax
	shr	r8, 4
	xor	edx, edx
	bt	rax, 4
	jb	.label_714
	xor	edx, edx
	cmp	qword ptr [rcx], 0
	je	.label_720
	mov	esi, 1
	mov	rax, rcx
.label_722:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_722
	jmp	.label_723
.label_714:
	xor	esi, esi
	jmp	.label_724
.label_720:
	xor	esi, esi
.label_723:
	add	rcx, 0x10
.label_724:
	test	r8, r8
	je	.label_715
	nop	dword ptr [rax]
.label_716:
	cmp	qword ptr [rcx], 0
	mov	rax, rcx
	je	.label_717
	nop	dword ptr [rax]
.label_713:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_713
	inc	rsi
.label_717:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_721
	lea	rax, [rcx + 0x10]
	nop	word ptr [rax + rax]
.label_712:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_712
	inc	rsi
.label_721:
	add	rcx, 0x20
	cmp	rcx, r9
	jb	.label_716
.label_715:
	cmp	rsi, qword ptr [rdi + 0x18]
	jne	.label_718
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 0x20]
	je	.label_719
.label_718:
	xor	eax, eax
.label_719:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408af0
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
	jae	.label_725
	mov	rdi, rax
	not	rdi
	add	rdi, rdx
	mov	rsi, rdi
	shr	rsi, 4
	xor	ebx, ebx
	bt	rdi, 4
	jb	.label_735
	xor	ebx, ebx
	cmp	qword ptr [rax], 0
	je	.label_730
	mov	rdi, rax
	nop	dword ptr [rax]
.label_727:
	mov	rdi, qword ptr [rdi + 8]
	inc	rbx
	test	rdi, rdi
	jne	.label_727
.label_730:
	add	rax, 0x10
.label_735:
	test	rsi, rsi
	je	.label_725
	nop	word ptr cs:[rax + rax]
.label_736:
	cmp	qword ptr [rax], 0
	mov	esi, 0
	mov	rdi, rax
	je	.label_728
	nop	
.label_729:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_729
	cmp	rsi, rbx
	cmova	rbx, rsi
.label_728:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_731
	lea	rdi, [rax + 0x10]
	xor	esi, esi
.label_726:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_726
	cmp	rsi, rbx
	cmova	rbx, rsi
.label_731:
	add	rax, 0x20
	cmp	rax, rdx
	jb	.label_736
.label_725:
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str_13
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.1_10
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_732]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_733]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_734]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.2_6
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_4
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
	.align	32
	#Procedure 0x408c60

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
	jae	.label_741
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_738
	add	rbx, rax
	je	.label_738
	cmp	rsi, r12
	je	.label_740
	xor	r15d, r15d
	nop	
.label_739:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_737
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_738
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_739
.label_740:
	mov	r15, r12
	jmp	.label_738
.label_737:
	mov	r15, qword ptr [rbx]
.label_738:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_741:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ce0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_742
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_745
	nop	word ptr cs:[rax + rax]
.label_744:
	add	rcx, 0x10
.label_745:
	cmp	rcx, rdx
	jae	.label_743
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_744
.label_742:
	ret	
.label_743:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408d20
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
	jae	.label_749
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_750:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_748
	test	rdx, rdx
	jne	.label_750
	jmp	.label_746
.label_748:
	test	rdx, rdx
	je	.label_746
	mov	rax, qword ptr [rdx]
	jmp	.label_747
.label_746:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rax + rcx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_751:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_747
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_751
.label_747:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_749:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408db0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	jmp	.label_752
	nop	dword ptr [rax + rax]
.label_754:
	add	r9, 0x10
.label_752:
	cmp	r9, r8
	jae	.label_753
	cmp	qword ptr [r9], 0
	je	.label_754
	test	r9, r9
	mov	r10, r9
	je	.label_754
	nop	word ptr [rax + rax]
.label_755:
	cmp	rax, rdx
	jae	.label_753
	mov	rcx, qword ptr [r10]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r10, qword ptr [r10 + 8]
	test	r10, r10
	jne	.label_755
	mov	r8, qword ptr [rdi + 8]
	jmp	.label_754
.label_753:
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408e00
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
	jmp	.label_756
	nop	word ptr cs:[rax + rax]
.label_758:
	add	r13, 0x10
.label_756:
	cmp	r13, rax
	jae	.label_759
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_758
	test	r13, r13
	je	.label_758
	mov	rsi, r14
	call	r15
	test	al, al
	mov	rbp, r13
	je	.label_759
	nop	word ptr cs:[rax + rax]
.label_760:
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_757
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_760
	jmp	.label_759
	nop	dword ptr [rax]
.label_757:
	mov	rax, qword ptr [r12 + 8]
	jmp	.label_758
.label_759:
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
	.align	32
	#Procedure 0x408ea0
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_761
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_762:
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
	jne	.label_762
.label_761:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ee0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_763]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408f00

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
	je	.label_768
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_765
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_770]]
	jbe	.label_766
	movss	xmm1,  dword ptr [dword ptr [rip + label_775]]
	ucomiss	xmm1, xmm0
	jbe	.label_766
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_779]]
	jbe	.label_766
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_766
	addss	xmm1,  dword ptr [dword ptr [rip + label_770]]
	ucomiss	xmm0, xmm1
	jbe	.label_766
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_776]]
	ucomiss	xmm2, xmm0
	jb	.label_766
	ucomiss	xmm0, xmm1
	jbe	.label_766
.label_765:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_771
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_769
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_773
.label_769:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_773:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_777]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_778]]
	jae	.label_766
.label_771:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_774
	nop	
.label_772:
	add	rbx, 2
.label_774:
	cmp	rbx, -1
	je	.label_766
	cmp	rbx, 0xa
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	jb	.label_764
	nop	word ptr cs:[rax + rax]
.label_767:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_764
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_767
.label_764:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_772
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_766
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_766
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_766
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
	jmp	.label_768
.label_766:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_768:
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
	#Procedure 0x409120

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
	.align	32
	#Procedure 0x409130

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409140
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_780
	nop	word ptr cs:[rax + rax]
.label_783:
	add	r14, 0x10
.label_780:
	cmp	r14, rax
	jae	.label_782
	cmp	qword ptr [r14], 0
	je	.label_783
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_784
	nop	word ptr cs:[rax + rax]
.label_786:
	test	cl, 1
	je	.label_785
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_785:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_786
.label_784:
	test	cl, cl
	je	.label_781
	mov	rdi, qword ptr [r14]
	call	rax
.label_781:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_783
.label_782:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4091f0

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_791
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_791
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_789
	nop	
.label_787:
	add	r15, 0x10
.label_789:
	cmp	r15, rax
	jae	.label_791
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_787
	test	r15, r15
	je	.label_787
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_795
.label_797:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_795:
	test	rbx, rbx
	jne	.label_797
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_787
.label_791:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_794
	nop	
.label_788:
	add	r15, 0x10
.label_794:
	cmp	r15, rax
	jae	.label_792
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_788
	nop	word ptr cs:[rax + rax]
.label_796:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_796
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_788
.label_792:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_790
.label_793:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_793
.label_790:
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, r14
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4092c0

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
	jne	.label_798
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_807
	cvtsi2ss	xmm0, rsi
	jmp	.label_811
.label_807:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_811:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_777]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_778]]
	jae	.label_806
.label_798:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_815
	nop	dword ptr [rax + rax]
.label_809:
	add	rbx, 2
.label_815:
	cmp	rbx, -1
	je	.label_806
	cmp	rbx, 0xa
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	jb	.label_799
	nop	word ptr cs:[rax + rax]
.label_803:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_799
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_803
.label_799:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_809
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_806
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_800
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_806
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
	je	.label_813
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_800
.label_813:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_808
	nop	
.label_804:
	add	r12, 0x10
.label_808:
	cmp	r12, r15
	jae	.label_814
	cmp	qword ptr [r12], 0
	je	.label_804
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_801
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_816:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_812
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_805
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_802
	nop	word ptr [rax + rax]
.label_805:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_802:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_816
.label_801:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_804
.label_814:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_810
	mov	rdi, qword ptr [rsp]
	call	free
.label_806:
	xor	ebp, ebp
.label_800:
	mov	al, bpl
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_812:
	call	abort
.label_810:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409550

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
	jae	.label_821
	nop	word ptr cs:[rax + rax]
.label_819:
	mov	r13, qword ptr [r14]
	test	r13, r13
	je	.label_817
	mov	r15, qword ptr [r14 + 8]
	test	r15, r15
	je	.label_820
	mov	rsi, qword ptr [rbp + 0x10]
	nop	dword ptr [rax]
.label_829:
	mov	rbx, qword ptr [r15]
	mov	rdi, rbx
	call	qword ptr [rbp + 0x30]
	mov	rsi, qword ptr [rbp + 0x10]
	cmp	rax, rsi
	jae	.label_825
	mov	rdx, qword ptr [rbp]
	mov	rcx, qword ptr [r15 + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_827
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [r15 + 8], rdi
	mov	qword ptr [rdx + rax + 8], r15
	jmp	.label_828
	nop	dword ptr [rax]
.label_827:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [rbp + 0x18]
	mov	qword ptr [r15], 0
	mov	rax, qword ptr [rbp + 0x48]
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [rbp + 0x48], r15
.label_828:
	test	rcx, rcx
	mov	r15, rcx
	jne	.label_829
	mov	r13, qword ptr [r14]
.label_820:
	mov	qword ptr [r14 + 8], 0
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	jne	.label_817
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, r13
	call	qword ptr [rbp + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [rbp + 0x10]
	jae	.label_823
	mov	r15, qword ptr [rbp]
	shl	rbx, 4
	cmp	qword ptr [r15 + rbx], 0
	je	.label_826
	mov	rax, qword ptr [rbp + 0x48]
	test	rax, rax
	je	.label_830
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp + 0x48], rcx
	jmp	.label_818
.label_826:
	add	r15, rbx
	mov	qword ptr [r15], r13
	inc	qword ptr [rbp + 0x18]
	jmp	.label_822
.label_830:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_824
.label_818:
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [r15 + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + rbx + 8], rax
.label_822:
	mov	qword ptr [r14], 0
	dec	qword ptr [r12 + 0x18]
.label_817:
	add	r14, 0x10
	cmp	r14, qword ptr [r12 + 8]
	jb	.label_819
	mov	al, 1
.label_821:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_824:
	xor	eax, eax
	jmp	.label_821
.label_825:
	call	abort
.label_823:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4096c0

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
	je	.label_847
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_847
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_844
	cmp	rsi, r14
	je	.label_835
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_838
	mov	rax, qword ptr [r12]
	jmp	.label_841
.label_835:
	mov	rax, r14
	jmp	.label_843
.label_838:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_844
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr cs:[rax + rax]
.label_852:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_832
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_850
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_852
	jmp	.label_844
.label_832:
	mov	rax, r14
	jmp	.label_841
.label_850:
	mov	rax, qword ptr [rbp]
.label_841:
	test	rax, rax
	je	.label_844
.label_843:
	xor	ebp, ebp
	test	r15, r15
	je	.label_839
	mov	qword ptr [r15], rax
	jmp	.label_839
.label_844:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_834
	cvtsi2ss	xmm1, rax
	jmp	.label_840
.label_834:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_840:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_842
	cvtsi2ss	xmm0, rcx
	jmp	.label_848
.label_842:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_848:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_837
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_858
	ucomiss	xmm2,  dword ptr [dword ptr [rip + label_770]]
	jbe	.label_833
	movss	xmm3,  dword ptr [dword ptr [rip + label_775]]
	ucomiss	xmm3, xmm2
	jbe	.label_833
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_779]]
	jbe	.label_833
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_833
	addss	xmm3,  dword ptr [dword ptr [rip + label_770]]
	ucomiss	xmm2, xmm3
	jbe	.label_833
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5,  dword ptr [dword ptr [rip + label_776]]
	ucomiss	xmm5, xmm4
	jb	.label_833
	ucomiss	xmm4, xmm3
	ja	.label_845
.label_833:
	mov	qword ptr [word ptr [r13 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2,  dword ptr [dword ptr [rip + label_849]]
	jmp	.label_845
.label_858:
	mov	eax, OFFSET FLAT:default_tuning
.label_845:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_837
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_859
	mulss	xmm0, xmm2
.label_859:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_778]]
	jae	.label_839
	movss	xmm1,  dword ptr [dword ptr [rip + label_777]]
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
	je	.label_839
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_847
	mov	r15, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [r15 + rbp]
	mov	rsi, qword ptr [r15 + rbp]
	test	rsi, rsi
	je	.label_837
	cmp	rsi, r14
	mov	rax, r14
	je	.label_831
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_836
	mov	rax, qword ptr [r12]
	jmp	.label_831
.label_836:
	mov	rax, qword ptr [r15 + rbp + 8]
	test	rax, rax
	je	.label_837
	lea	rbp, [r15 + rbp + 8]
.label_854:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_855
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_846
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_854
	jmp	.label_837
.label_855:
	mov	rax, r14
	jmp	.label_831
.label_846:
	mov	rax, qword ptr [rbp]
.label_831:
	test	rax, rax
	jne	.label_851
.label_837:
	cmp	qword ptr [r12], 0
	je	.label_853
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_856
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_857
.label_853:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0,  xmmword ptr [word ptr [rip + label_860]]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_861
.label_856:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_839
.label_857:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_861:
	mov	ebp, 1
.label_839:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_847:
	call	abort
.label_851:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4099e0

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
	je	.label_862
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_862:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409a10

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
	jae	.label_870
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_864
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_876
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_878
	mov	r14, qword ptr [r13]
.label_876:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_883
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_869
.label_878:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_864
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_874:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_871
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_873
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_874
	jmp	.label_864
.label_883:
	mov	qword ptr [r13], 0
	jmp	.label_869
.label_871:
	mov	rcx, rax
	jmp	.label_880
.label_873:
	mov	r14, qword ptr [rcx]
.label_880:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_869:
	xor	r12d, r12d
	test	r14, r14
	je	.label_864
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_863
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_868
	cvtsi2ss	xmm1, rax
	jmp	.label_872
.label_868:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_872:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_875
	cvtsi2ss	xmm0, rcx
	jmp	.label_879
.label_875:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_879:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_863
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_865
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_770]]
	jbe	.label_867
	movss	xmm4,  dword ptr [dword ptr [rip + label_775]]
	ucomiss	xmm4, xmm3
	jbe	.label_867
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_867
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4,  dword ptr [dword ptr [rip + label_779]]
	jbe	.label_867
	movss	xmm4,  dword ptr [dword ptr [rip + label_770]]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_867
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5,  dword ptr [dword ptr [rip + label_776]]
	ucomiss	xmm5, xmm3
	jb	.label_867
	ucomiss	xmm3, xmm4
	ja	.label_882
.label_867:
	mov	qword ptr [word ptr [r15 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_882
.label_865:
	mov	eax, OFFSET FLAT:default_tuning
.label_882:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_863
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_866
	mulss	xmm0, dword ptr [rax + 8]
.label_866:
	movss	xmm1,  dword ptr [dword ptr [rip + label_777]]
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
	jne	.label_863
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_877
	nop	
.label_881:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_881
.label_877:
	mov	qword ptr [r15 + 0x48], 0
.label_863:
	mov	r12, r14
.label_864:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_870:
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409ca0

	.globl i_ring_init
	.type i_ring_init, @function
i_ring_init:
	mov	byte ptr [rdi + 0x1c], 1
	mov	dword ptr [rdi + 0x14], 0
	mov	dword ptr [rdi + 0x18], 0
	movd	xmm0, esi
	pshufd	xmm0, xmm0, 0
	movdqu	xmmword ptr [rdi], xmm0
	mov	dword ptr [rdi + 0x10], esi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409cd0

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ce0

	.globl i_ring_push
	.type i_ring_push, @function
i_ring_push:
	movzx	ecx, byte ptr [rdi + 0x1c]
	xor	ecx, 1
	add	ecx, dword ptr [rdi + 0x14]
	mov	edx, ecx
	and	edx, 3
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], esi
	mov	dword ptr [rdi + 0x14], edx
	cmp	edx, dword ptr [rdi + 0x18]
	jne	.label_884
	mov	dl, byte ptr [rdi + 0x1c]
	xor	dl, 1
	movzx	edx, dl
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_884:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409d20

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	cmp	byte ptr [rdi + 0x1c], 0
	jne	.label_885
	mov	ecx, dword ptr [rdi + 0x10]
	mov	edx, dword ptr [rdi + 0x14]
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], ecx
	mov	ecx, dword ptr [rdi + 0x14]
	cmp	ecx, dword ptr [rdi + 0x18]
	jne	.label_886
	mov	byte ptr [rdi + 0x1c], 1
	ret	
.label_886:
	add	ecx, 3
	and	ecx, 3
	mov	dword ptr [rdi + 0x14], ecx
	ret	
.label_885:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x409d50

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
	je	.label_887
	mov	rax, rcx
.label_887:
	add	rsp, 8
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409d80

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xc8
	test	al, al
	je	.label_888
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_888:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_890
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x18
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_889
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_891
.label_889:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_891:
	mov	ecx, dword ptr [rax]
.label_890:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xc8
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x409e60

	.globl opendirat
	.type opendirat, @function
opendirat:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rcx
	or	edx, 0x90900
	xor	ebx, ebx
	xor	eax, eax
	call	openat_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_893
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_892
	mov	dword ptr [r14], ebp
	jmp	.label_893
.label_892:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_893:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409eb0

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
	ja	.label_894
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
	jmp	.label_895
.label_894:
	mov	eax, ebx
.label_895:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409f00

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_896
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_898
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_896
.label_898:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_896
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_897
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_897:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_896:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x409f80

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_899
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_899:
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
	ja	.label_907
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_902
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_904
	test	esi, esi
	jne	.label_907
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_908
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_911
.label_907:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_914
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_904
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_918
.label_902:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_909
.label_904:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_919
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_913
.label_919:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_913:
	mov	edx, dword ptr [rax]
.label_912:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
.label_909:
	mov	ebp, eax
.label_901:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_918:
	cmp	eax, 6
	jne	.label_914
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_915
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_917
.label_914:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_910
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_903
.label_908:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_911:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	jmp	.label_912
.label_915:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_917:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_916
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_900
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_900
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_901
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	al, 1
	jmp	.label_906
.label_900:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_901
.label_910:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_903:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_909
.label_916:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	sete	al
.label_906:
	test	al, al
	je	.label_901
	test	ebp, ebp
	js	.label_901
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_905
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_901
.label_905:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_901
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a260

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	.section .text
	.align	32
	#Procedure 0x40a280

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]