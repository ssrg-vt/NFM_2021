	.section	.text
	.align	16
	#Procedure 0x4027d0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	ebp, edi
	mov	rbp, rbp
	test	ebp, ebp
	jne	.label_7
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	lea	rdi, [rdi]
	mov	edi, 1
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rsi, rcx
	mov	rcx, rdx
	lea	rdi, [rdi]
	mov	r8, rdx
	mov	rsp, rsp
	call	__printf_chk
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.2
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.3
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.7
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.29
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.39
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	mov	rsp, rsp
	call	__printf_chk
	mov	edi, 5
	mov	rbp, rbp
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_8
	mov	esi, OFFSET FLAT:.str.41
	mov	edx, 3
	mov	rsp, rsp
	mov	rdi, rax
	call	strncmp
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_8
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.18
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.8
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.8
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.45
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	call	__printf_chk
	mov	edi, ebp
	nop	
	call	exit
.label_7:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402af0

	.globl main
	.type main, @function
main:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	nop	
	push	r14
	lea	rdi, [rdi]
	push	r13
	lea	rsi, [rsi]
	push	r12
	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0xf8
	lea	rdi, [rdi]
	mov	r12, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [r12]
	lea	rdi, [rdi]
	call	set_program_name
	lea	rdi, [rdi]
	mov	edi, 6
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.10
	mov	esi, OFFSET FLAT:.str.11
	call	bindtextdomain
	nop	
	mov	edi, OFFSET FLAT:.str.10
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdin
	mov	rsp, rsp
	call	atexit
	lea	rdi, [rsp + 0xa8]
	lea	rsi, [rsi]
	call	cp_options_default
	nop	
	mov	byte ptr [rsp + 0xbc], 0
	mov	dword ptr [rsp + 0xe0], 1
	mov	dword ptr [rsp + 0xac], 2
	mov	rbp, rbp
	mov	byte ptr [rsp + 0xbd], 0
	mov	rbp, rbp
	mov	byte ptr [rsp + 0xbe], 0
	mov	byte ptr [rsp + 0xbf], 0
	mov	dword ptr [rsp + 0xb0], 4
	mov	byte ptr [rsp + 0xc0], 1
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0xc1], 0
	mov	rbp, rbp
	mov	byte ptr [rsp + 0xc4], 0
	nop	
	mov	byte ptr [rsp + 0xc5], 1
	mov	byte ptr [rsp + 0xca], 1
	nop	
	mov	byte ptr [rsp + 0xc6], 1
	mov	byte ptr [rsp + 0xc7], 1
	mov	byte ptr [rsp + 0xc8], 0
	mov	byte ptr [rsp + 0xcd], 0
	mov	byte ptr [rsp + 0xc9], 0
	mov	byte ptr [rsp + 0xd1], 0
	mov	byte ptr [rsp + 0xcb], 1
	mov	byte ptr [rsp + 0xcc], 0
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xce], 0
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0xcf], 1
	mov	byte ptr [rsp + 0xd0], 0
	mov	rbp, rbp
	mov	byte ptr [rsp + 0xd2], 1
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb4], 2
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0xd4], 0
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xd3], 0
	nop	
	mov	dword ptr [rsp + 0xb8], 0
	mov	rsp, rsp
	xor	ebx, ebx
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	call	isatty
	test	eax, eax
	mov	rbp, rbp
	setne	byte ptr [rsp + 0xd7]
	nop	
	mov	byte ptr [rsp + 0xd8], 0
	mov	rbp, rbp
	mov	byte ptr [rsp + 0xd5], 0
	mov	byte ptr [rsp + 0xd6], 0
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0xe8], xmm0
	xor	r13d, r13d
	mov	rbp, rbp
	xor	r15d, r15d
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	xor	r14d, r14d
	mov	rbp, rbp
	jmp	.label_19
.label_1826:
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0xd6], 1
	nop	dword ptr [rax]
.label_19:
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.12
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	rsp, rsp
	call	getopt_long
	lea	rsi, [rsi]
	cmp	eax, 0x68
	jg	.label_14
	lea	rdi, [rdi]
	cmp	eax, 0x59
	nop	
	jg	.label_16
	lea	rsi, [rsi]
	cmp	eax, 0x52
	mov	rbp, rbp
	jle	.label_18
	lea	rdi, [rdi]
	cmp	eax, 0x53
	je	.label_20
	mov	r14b, 1
	mov	rsp, rsp
	cmp	eax, 0x54
	lea	rdi, [rdi]
	je	.label_19
	lea	rdi, [rdi]
	jmp	.label_23
	nop	word ptr cs:[rax + rax]
.label_14:
	lea	ecx, [rax - 0x6e]
	mov	rsp, rsp
	cmp	ecx, 8
	mov	rbp, rbp
	ja	.label_26
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_30]]
.label_1823:
	mov	dword ptr [rsp + 0xb0], 2
	jmp	.label_19
	nop	word ptr cs:[rax + rax]
.label_16:
	cmp	eax, 0x5a
	nop	
	je	.label_19
	cmp	eax, 0x62
	je	.label_36
	mov	rbp, rbp
	cmp	eax, 0x66
	lea	rsi, [rsi]
	jne	.label_23
	mov	dword ptr [rsp + 0xb0], 1
	jmp	.label_19
.label_26:
	cmp	eax, 0x69
	je	.label_41
	mov	rbp, rbp
	cmp	eax, 0x80
	mov	rsp, rsp
	jne	.label_23
	mov	byte ptr [byte ptr [rip + remove_trailing_slashes]],  1
	jmp	.label_19
.label_1824:
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x10], 0
	jne	.label_45
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	edi, 1
	nop	
	lea	rdx, [rsp + 0x18]
	call	__xstat
	test	eax, eax
	nop	
	jne	.label_13
	nop	
	mov	eax, dword ptr [rsp + 0x30]
	mov	ecx, 0xf000
	mov	rbp, rbp
	and	eax, ecx
	mov	rsp, rsp
	cmp	eax, 0x4000
	mov	rbp, rbp
	jne	.label_15
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0x10], rax
	mov	rsp, rsp
	jmp	.label_19
.label_1825:
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xd5], 1
	jmp	.label_19
.label_20:
	lea	rsi, [rsi]
	mov	bl, 1
	mov	rbp, rbp
	mov	r13,  qword ptr [word ptr [rip + optarg]]
	lea	rdi, [rdi]
	jmp	.label_19
.label_36:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	nop	
	test	rax, rax
	lea	rdi, [rdi]
	cmovne	r15, rax
	mov	bl, 1
	mov	rsp, rsp
	jmp	.label_19
.label_41:
	mov	dword ptr [rsp + 0xb0], 3
	mov	rsp, rsp
	jmp	.label_19
.label_18:
	mov	rbp, rbp
	cmp	eax, -1
	jne	.label_37
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	movsxd	rbp, ebp
	sub	rbp, rax
	lea	rdi, [rdi]
	lea	r12, [r12 + rax*8]
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x10], 0
	sete	al
	mov	rsp, rsp
	movzx	eax, al
	lea	rsi, [rsi]
	cmp	ebp, eax
	jle	.label_39
	mov	rsp, rsp
	test	r14b, r14b
	je	.label_44
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x10], 0
	nop	
	jne	.label_47
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	cmp	ebp, 3
	jl	.label_21
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rbx, rax
	mov	rbp, rbp
	mov	rsi, qword ptr [r12 + 0x10]
	mov	edi, 4
	nop	
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	error
	nop	
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_44:
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x10], 0
	jne	.label_21
	mov	rbp, rbp
	cmp	ebp, 1
	mov	rsp, rsp
	jle	.label_29
	mov	rbp, rbp
	cmp	ebp, 2
	mov	rsp, rsp
	jne	.label_31
	mov	rbp, rbp
	mov	rsi, qword ptr [r12]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12 + 8]
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	r8d, 1
	lea	rsi, [rsi]
	call	renameatu
	xor	ecx, ecx
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_38
	mov	rbp, rbp
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
.label_38:
	mov	dword ptr [rsp + 0xdc], ecx
	jmp	.label_42
.label_31:
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rsp + 0xdc]
.label_42:
	test	ecx, ecx
	je	.label_17
	mov	r14, r13
	mov	r13, qword ptr [r12 + rbp*8 - 8]
	lea	rdx, [rsp + 0x18]
	mov	edi, 1
	mov	rsi, r13
	call	__xstat
	test	eax, eax
	je	.label_9
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	mov	eax, dword ptr [rax]
	test	eax, eax
	nop	
	je	.label_9
	mov	rsp, rsp
	cmp	eax, 2
	jne	.label_12
	nop	
	mov	r13, r14
	jmp	.label_17
.label_9:
	mov	eax, dword ptr [rsp + 0x30]
	and	eax, 0xf000
	cmp	eax, 0x4000
	mov	r13, r14
	lea	rsi, [rsi]
	jne	.label_17
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xdc], 0xffffffff
	mov	rax, qword ptr [r12 + rbp*8 - 8]
	mov	qword ptr [rsp + 0x10], rax
	dec	rbp
	mov	rbp, rbp
	jmp	.label_21
.label_17:
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rax
	cmp	ebp, 3
	nop	
	jge	.label_25
.label_21:
	mov	eax, dword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	cmp	eax, 2
	mov	rsp, rsp
	jne	.label_27
	mov	byte ptr [rsp + 0xd5], 0
	lea	rdi, [rdi]
	test	bl, bl
	mov	rsp, rsp
	je	.label_27
	cmp	eax, 2
	mov	rbp, rbp
	je	.label_33
.label_27:
	xor	eax, eax
	lea	rdi, [rdi]
	test	bl, bl
	lea	rdi, [rdi]
	je	.label_35
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r15
	mov	rbp, rbp
	call	xget_version
.label_35:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xa8], eax
	mov	rbp, rbp
	mov	rdi, r13
	lea	rsi, [rsi]
	call	set_simple_backup_suffix
	lea	rdi, [rdi]
	call	hash_init
	cmp	qword ptr [rsp + 0x10], 0
	lea	rsi, [rsi]
	je	.label_43
	cmp	ebp, 2
	lea	rsi, [rsi]
	jl	.label_46
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0xa8]
	nop	
	call	dest_info_init
	jmp	.label_10
.label_43:
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0xd9], 1
	mov	rbx, qword ptr [r12]
	mov	rbp, qword ptr [r12 + 8]
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + remove_trailing_slashes]]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	jne	.label_11
	mov	rbp, rbp
	mov	rdi, rbx
	call	strip_trailing_slashes
.label_11:
	lea	rdx, [rsp + 0xa8]
	nop	
	mov	rdi, rbx
	mov	rsi, rbp
	call	do_move
	mov	r15b, al
	jmp	.label_24
.label_46:
	mov	r15b, 1
	test	ebp, ebp
	jle	.label_24
.label_10:
	mov	r13d, ebp
	mov	r15b, 1
	lea	r14, [rsp + 0xa8]
	nop	word ptr cs:[rax + rax]
.label_48:
	nop	
	cmp	r13, 1
	lea	rsi, [rsi]
	sete	byte ptr [rsp + 0xd9]
	mov	rbp, qword ptr [r12]
	movzx	eax,  byte ptr [byte ptr [rip + remove_trailing_slashes]]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	jne	.label_32
	nop	
	mov	rdi, rbp
	call	strip_trailing_slashes
.label_32:
	mov	rdi, rbp
	call	last_component
	lea	rsi, [rsi]
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	rsi, rax
	call	file_name_concat
	mov	rbx, rax
	mov	rdi, rbx
	call	strip_trailing_slashes
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rdx, r14
	call	do_move
	lea	rdi, [rdi]
	mov	bpl, al
	mov	rsp, rsp
	mov	rdi, rbx
	call	free
	and	r15b, bpl
	add	r12, 8
	dec	r13
	test	r13d, r13d
	jne	.label_48
.label_24:
	not	r15b
	and	r15b, 1
	movzx	eax, r15b
	add	rsp, 0xf8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_37:
	cmp	eax, 0xffffff7d
	nop	
	je	.label_22
	cmp	eax, 0xffffff7e
	jne	.label_23
	lea	rsi, [rsi]
	xor	edi, edi
	call	usage
.label_23:
	mov	edi, 1
	call	usage
.label_22:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	nop	
	mov	qword ptr [rsp + 8], 0
	nop	
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str.19
	mov	esi, OFFSET FLAT:.str.8
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.17_0
	lea	rsi, [rsi]
	mov	r9d, OFFSET FLAT:.str.18_0
	xor	eax, eax
	lea	rdi, [rdi]
	call	version_etc
	lea	rsi, [rsi]
	xor	edi, edi
	call	exit
.label_45:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	nop	
	jmp	.label_40
.label_13:
	nop	
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	edi, 4
	mov	rsp, rsp
	call	quotearg_style
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rbp, rbp
	mov	rdx, rbp
	call	error
.label_15:
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.15
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
.label_34:
	mov	rsp, rsp
	mov	edi, 4
	lea	rdi, [rdi]
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	rdx, rbx
	nop	
	call	error
.label_39:
	xor	edi, edi
	test	ebp, ebp
	jg	.label_28
	mov	esi, OFFSET FLAT:.str.20
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	nop	
	call	error
	mov	edi, 1
	call	usage
.label_47:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
.label_40:
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rcx
	call	error
.label_33:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	nop	
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rsp, rsp
	call	error
	mov	rbp, rbp
	mov	edi, 1
	call	usage
.label_28:
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r12]
	mov	rsp, rsp
	mov	edi, 4
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	nop	
	mov	rdx, rbx
	call	error
	nop	
	mov	edi, 1
	lea	rdi, [rdi]
	call	usage
.label_29:
	mov	edi, OFFSET FLAT:.str.24
	mov	esi, OFFSET FLAT:.str.25
	mov	edx, 0x1c9
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	call	__assert_fail
.label_25:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	lea	rdi, [rdi]
	movsxd	rax, ebp
	mov	rsi, qword ptr [r12 + rax*8 - 8]
	lea	rdi, [rdi]
	jmp	.label_34
.label_12:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	ebx, eax
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	nop	
	mov	rcx, rax
	mov	edi, 1
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebx
	mov	rdx, r14
	mov	rbp, rbp
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4034f0

	.globl do_move
	.type do_move, @function
do_move:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x48
	mov	r15, rdx
	nop	
	mov	r14, rdi
	mov	rbp, rbp
	lea	r8, [rsp + 0xf]
	lea	r9, [rsp + 0x27]
	mov	rsp, rsp
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rcx, r15
	call	copy
	mov	rsp, rsp
	mov	bl, al
	test	bl, bl
	nop	
	je	.label_49
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_50
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_49
	mov	rsp, rsp
	mov	al, byte ptr [rsp + 0x27]
	lea	rsi, [rsi]
	test	al, al
	mov	rbp, rbp
	jne	.label_49
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x28], 0
	mov	byte ptr [rsp + 0x32], 1
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x31], 1
	mov	byte ptr [rsp + 0x30], 0
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x2c], 5
	mov	word ptr [rsp + 0x41], 0
	mov	byte ptr [rsp + 0x43], 1
	mov	edi, OFFSET FLAT:rm_option_init.dev_ino_buf
	call	get_root_dev_ino
	mov	qword ptr [rsp + 0x38], rax
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_53
	mov	byte ptr [rsp + 0x40], 0
	lea	rsi, [rsi]
	mov	al, byte ptr [r15 + 0x2e]
	mov	byte ptr [rsp + 0x42], al
	mov	qword ptr [rsp + 0x10], r14
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], 0
	lea	rdi, [rsp + 0x10]
	mov	rbp, rbp
	lea	rsi, [rsp + 0x28]
	lea	rdi, [rdi]
	call	rm
	cmp	eax, 4
	je	.label_52
	mov	rbp, rbp
	mov	ecx, eax
	nop	
	or	ecx, 1
	cmp	ecx, 3
	mov	rsp, rsp
	jne	.label_51
.label_52:
	cmp	eax, 4
	lea	rsi, [rsi]
	jne	.label_49
.label_50:
	xor	ebx, ebx
.label_49:
	mov	rbp, rbp
	and	bl, 1
	mov	al, bl
	add	rsp, 0x48
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_53:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	mov	rbp, rbp
	mov	edi, 4
	mov	esi, OFFSET FLAT:.str_1
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
.label_51:
	mov	edi, OFFSET FLAT:.str.59
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.25
	mov	edx, 0xef
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.do_move
	mov	rsp, rsp
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403680

	.globl rm
	.type rm, @function
rm:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	nop	
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	r12, rsi
	mov	ebx, 2
	lea	rsi, [rsi]
	cmp	qword ptr [rdi], 0
	je	.label_76
	lea	rdi, [rdi]
	mov	esi, 0x218
	cmp	byte ptr [r12 + 8], 0
	lea	rsi, [rsi]
	je	.label_83
	mov	rsp, rsp
	mov	esi, 0x258
.label_83:
	xor	edx, edx
	call	xfts_open
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rdi, rax
	lea	rsi, [rsi]
	call	rpl_fts_read
	mov	rbp, rbp
	mov	r13, rax
	mov	ebx, 2
	test	r13, r13
	nop	
	je	.label_91
	mov	r15d, 2
	jmp	.label_69
.label_64:
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_60
	mov	rcx, qword ptr [r13 + 0x80]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rax]
	jne	.label_60
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r13 + 0x78]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_60
	nop	
	mov	rax, qword ptr [r13 + 0x38]
	movzx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2f
	jne	.label_65
	lea	rdi, [rdi]
	cmp	byte ptr [rax + 1], 0
	je	.label_84
.label_65:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.10_0
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	r14, rax
	mov	rbp, rbp
	mov	rdx, qword ptr [r13 + 0x38]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 4
	nop	
	call	quotearg_n_style
	mov	rbp, rax
	nop	
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	call	quotearg_n_style
	mov	rsp, rsp
	mov	rbx, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, r14
	mov	rcx, rbp
	mov	r8, rbx
	nop	
	call	error
	lea	rdi, [rdi]
	jmp	.label_61
.label_60:
	cmp	byte ptr [r12 + 0x18], 0
	mov	rbp, rbp
	je	.label_87
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.2_0
	xor	edx, edx
	mov	rbp, rbp
	mov	rdi, rbx
	call	file_name_concat
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_55
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	rsi, rbx
	lea	rdx, [rsp + 0x28]
	call	__lxstat
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_62
.label_55:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_0
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	r14, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	qword ptr [rsp + 0x18], rax
	mov	rdx, qword ptr [r13 + 0x30]
	mov	edi, 1
	mov	esi, 4
	lea	rdi, [rdi]
	call	quotearg_n_style
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	r8, rbp
	call	error
	mov	rsp, rsp
	mov	rdi, rbx
	call	free
	jmp	.label_59
.label_85:
	mov	ebx, 0x27
	cmp	byte ptr [r12 + 0xa], 0
	mov	rsp, rsp
	jne	.label_77
	mov	ebx, 0x15
.label_77:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24_0
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbp, rax
	mov	rsi, qword ptr [r13 + 0x38]
	mov	edi, 4
	call	quotearg_style
	mov	rbp, rbp
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	rax, qword ptr [r13 + 8]
	lea	rsi, [rsi]
	jmp	.label_92
	nop	word ptr cs:[rax + rax]
.label_79:
	mov	qword ptr [rax + 0x20], 1
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
.label_92:
	cmp	qword ptr [rax + 0x58], 0
	lea	rdi, [rdi]
	js	.label_59
	cmp	qword ptr [rax + 0x20], 0
	je	.label_79
.label_59:
	mov	rsp, rsp
	mov	ebp, 4
	mov	edx, 4
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, r13
	lea	rsi, [rsi]
	call	rpl_fts_set
	mov	rdi, rbx
	call	rpl_fts_read
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	xor	r14d, r14d
	jmp	.label_68
.label_62:
	lea	rdi, [rdi]
	mov	rdi, rbx
	nop	
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rsp + 0x28]
	jne	.label_72
.label_87:
	mov	edx, 1
	mov	r8d, 2
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rcx, r12
	lea	r9, [rsp + 0x28]
	call	prompt
	mov	rbp, rbp
	mov	ebp, eax
	mov	rbp, rbp
	cmp	ebp, 2
	jne	.label_70
	cmp	dword ptr [rsp + 0x28], 4
	mov	rbp, rbp
	jne	.label_70
	mov	rbp, rbp
	mov	ecx, 1
	mov	rbx, qword ptr [rsp + 8]
	mov	rdi, rbx
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, r12
	call	excise
	lea	rdi, [rdi]
	mov	ebp, eax
	lea	rdi, [rdi]
	mov	edx, 4
	mov	rdi, rbx
	nop	
	mov	rsi, r13
	mov	rbp, rbp
	call	rpl_fts_set
	mov	rsp, rsp
	mov	rdi, rbx
	call	rpl_fts_read
.label_70:
	lea	rsi, [rsi]
	cmp	ebp, 2
	mov	rsp, rsp
	je	.label_57
	mov	rax, qword ptr [r13 + 8]
	mov	rsp, rsp
	jmp	.label_63
	nop	word ptr cs:[rax + rax]
.label_67:
	nop	
	mov	qword ptr [rax + 0x20], 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
.label_63:
	cmp	qword ptr [rax + 0x58], 0
	nop	
	js	.label_66
	cmp	qword ptr [rax + 0x20], 0
	lea	rdi, [rdi]
	je	.label_67
.label_66:
	mov	edx, 4
	mov	rbx, qword ptr [rsp + 8]
	mov	rdi, rbx
	mov	rsi, r13
	call	rpl_fts_set
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	rpl_fts_read
	lea	rdi, [rdi]
	jmp	.label_57
.label_72:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.13_0
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	mov	rsi, qword ptr [r13 + 0x38]
	mov	edi, 4
	call	quotearg_style
	nop	
	mov	rcx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_0
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	rdx, rcx
	call	error
	lea	rdi, [rdi]
	jmp	.label_59
.label_84:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.9
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rbp, rbp
	mov	rsi, qword ptr [r13 + 0x38]
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsp, rsp
	call	quotearg_style
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_61:
	nop	
	xor	r14d, r14d
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.11_0
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_82
	nop	word ptr cs:[rax + rax]
.label_69:
	nop	
	movzx	eax, word ptr [r13 + 0x70]
	lea	ecx, [rax - 1]
	cmp	ecx, 0xc
	lea	rsi, [rsi]
	ja	.label_54
	nop	
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_78]]
.label_1707:
	lea	rsi, [rsi]
	movzx	ecx, ax
	cmp	ecx, 6
	jne	.label_81
	cmp	byte ptr [r12 + 8], 0
	mov	rbp, rbp
	je	.label_81
	lea	rdi, [rdi]
	cmp	qword ptr [r13 + 0x58], 0
	jle	.label_81
	mov	rbp, rbp
	mov	rcx, qword ptr [r13 + 0x78]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdx + 0x18]
	jne	.label_73
	nop	dword ptr [rax]
.label_81:
	or	eax, 2
	movzx	ebx, ax
	cmp	ebx, 6
	sete	al
	lea	rsi, [rsi]
	movzx	edx, al
	mov	r8d, 3
	nop	
	xor	r9d, r9d
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	rsp, rsp
	mov	rcx, r12
	mov	rbp, rbp
	call	prompt
	mov	rbp, rbp
	mov	ebp, eax
	cmp	ebp, 2
	mov	rbp, rbp
	jne	.label_57
	lea	rdi, [rdi]
	cmp	ebx, 6
	sete	al
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r13
	mov	rdx, r12
	call	excise
	mov	rsp, rsp
	mov	ebp, eax
.label_57:
	lea	rdi, [rdi]
	cmp	ebp, 3
	sete	r14b
	cmp	ebp, 4
	sete	al
	je	.label_68
	mov	ecx, ebp
	mov	rbp, rbp
	or	ecx, 1
	nop	
	cmp	ecx, 3
	nop	
	je	.label_68
	nop	
	jmp	.label_74
.label_1705:
	cmp	byte ptr [r12 + 9], 0
	lea	rsi, [rsi]
	jne	.label_75
	mov	ebx, 0x15
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + 0xa], 0
	je	.label_77
	mov	rax, qword ptr [rsp + 8]
	mov	edi, dword ptr [rax + 0x2c]
	mov	rbp, rbp
	mov	rsi, qword ptr [r13 + 0x30]
	call	is_empty_dir
	lea	rsi, [rsi]
	test	al, al
	nop	
	je	.label_85
.label_75:
	lea	rsi, [rsi]
	cmp	qword ptr [r13 + 0x58], 0
	lea	rsi, [rsi]
	jne	.label_87
	nop	
	mov	rbx, qword ptr [r13 + 0x30]
	mov	rdi, rbx
	mov	rsp, rsp
	call	last_component
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x2e
	mov	rbp, rbp
	jne	.label_64
	movzx	ecx, byte ptr [rax + 1]
	lea	rsi, [rsi]
	cmp	ecx, 0x2e
	mov	ecx, 2
	mov	rsp, rsp
	je	.label_93
	mov	rbp, rbp
	mov	ecx, 1
.label_93:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rax + rcx]
	mov	rsp, rsp
	cmp	eax, 0x2f
	je	.label_58
	test	al, al
	jne	.label_64
.label_58:
	xor	r14d, r14d
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_0
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x18], rax
	mov	ebp, 4
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 4
	mov	edx, OFFSET FLAT:.str_2
	nop	
	call	quotearg_n_style
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rax
	mov	rbp, rbp
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, 4
	mov	edx, OFFSET FLAT:.str.2_0
	call	quotearg_n_style
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	nop	
	mov	rdx, qword ptr [r13 + 0x38]
	mov	rsp, rsp
	mov	edi, 2
	mov	rsp, rsp
	mov	esi, 4
	call	quotearg_n_style
	mov	rsp, rsp
	mov	rbx, rax
	xor	edi, edi
	nop	
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x10]
	mov	r9, rbx
	call	error
	jmp	.label_90
.label_1706:
	lea	rsi, [rsi]
	xor	r14d, r14d
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.15_1
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	nop	
	mov	rdx, qword ptr [r13 + 0x38]
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	lea	rsi, [rsi]
	jmp	.label_56
.label_1708:
	mov	rbp, rbp
	mov	ebx, dword ptr [r13 + 0x40]
	xor	r14d, r14d
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rbp
	mov	rbp, rax
	mov	rbp, rbp
	mov	rdx, qword ptr [r13 + 0x38]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rbp, rbp
	mov	rcx, rax
	xor	edi, edi
	nop	
	xor	eax, eax
	mov	esi, ebx
	mov	rbp, rbp
	mov	rdx, rbp
.label_56:
	call	error
.label_82:
	nop	
	mov	ebp, 4
.label_90:
	nop	
	mov	edx, 4
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 8]
	mov	rdi, rbx
	mov	rsi, r13
	call	rpl_fts_set
	nop	
	mov	rdi, rbx
	call	rpl_fts_read
	jmp	.label_80
.label_73:
	nop	
	mov	rax, qword ptr [r13 + 8]
	lea	rdi, [rdi]
	jmp	.label_86
	nop	word ptr [rax + rax]
.label_89:
	mov	rsp, rsp
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rax + 8]
.label_86:
	cmp	qword ptr [rax + 0x58], 0
	nop	
	js	.label_88
	cmp	qword ptr [rax + 0x20], 0
	mov	rsp, rsp
	je	.label_89
.label_88:
	lea	rdi, [rdi]
	xor	r14d, r14d
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.13_0
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbx, rax
	mov	rbp, rbp
	mov	rsi, qword ptr [r13 + 0x38]
	mov	ebp, 4
	mov	edi, 4
	call	quotearg_style
	mov	rbp, rbp
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	rdx, rbx
	mov	rsp, rsp
	call	error
.label_80:
	mov	al, 1
.label_68:
	nop	
	test	r14b, r14b
	mov	rsp, rsp
	mov	ebx, r15d
	lea	rsi, [rsi]
	cmovne	ebx, ebp
	cmp	r15d, 2
	cmovne	ebx, r15d
	nop	
	test	al, al
	mov	rbp, rbp
	cmovne	ebx, ebp
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 8]
	call	rpl_fts_read
	nop	
	mov	r13, rax
	test	r13, r13
	mov	r15d, ebx
	jne	.label_69
.label_91:
	lea	rdi, [rdi]
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	test	ebp, ebp
	je	.label_71
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_3
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	error
	lea	rdi, [rdi]
	mov	ebx, 4
.label_71:
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	call	rpl_fts_close
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_76
	nop	
	mov	ebx, dword ptr [r14]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_0
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, ebx
	nop	
	mov	rdx, rcx
	call	error
	lea	rdi, [rdi]
	mov	ebx, 4
.label_76:
	nop	
	mov	eax, ebx
	add	rsp, 0xb8
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_54:
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.17_1
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	movzx	ebp, word ptr [r13 + 0x70]
	nop	
	mov	rdx, qword ptr [r13 + 0x38]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	rbx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	esi, esi
	mov	rsp, rsp
	mov	r9d, OFFSET FLAT:.str.15_0
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, r14
	mov	rsp, rsp
	mov	ecx, ebp
	mov	r8, rbx
	call	error
	lea	rdi, [rdi]
	call	abort
.label_74:
	mov	edi, OFFSET FLAT:.str.1_0
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.2_1
	lea	rsi, [rsi]
	mov	edx, 0x261
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.rm
	nop	
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040b0

	.globl is_empty_dir
	.type is_empty_dir, @function
is_empty_dir:
	lea	rdi, [rdi]
	push	rbp
	push	r14
	push	rbx
	lea	rsi, [rsi]
	xor	ebx, ebx
	mov	edx, 0x30900
	lea	rsi, [rsi]
	xor	eax, eax
	call	openat
	nop	
	mov	ebp, eax
	test	ebp, ebp
	js	.label_95
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	mov	rbp, rbp
	test	rbx, rbx
	nop	
	je	.label_100
	call	__errno_location
	nop	
	mov	r14, rax
	mov	rsp, rsp
	mov	dword ptr [r14], 0
.label_94:
	mov	rsp, rsp
	mov	rdi, rbx
	nop	
	call	readdir
	mov	rbp, rbp
	test	rax, rax
	je	.label_96
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rax + 0x13]
	cmp	ecx, 0x2e
	jne	.label_98
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rax + 0x14]
	cmp	ecx, 0x2e
	mov	rbp, rbp
	mov	ecx, 2
	je	.label_99
	lea	rdi, [rdi]
	mov	ecx, 1
.label_99:
	movzx	ecx, byte ptr [rax + rcx + 0x13]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	cmove	rax, rbp
	lea	rdi, [rdi]
	test	cl, cl
	mov	rsp, rsp
	cmovne	rbp, rax
	mov	rsp, rsp
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	je	.label_94
	test	cl, cl
	mov	rbp, rbp
	je	.label_94
	mov	rbp, rbp
	mov	r14d, dword ptr [r14]
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	closedir
	test	rbp, rbp
	je	.label_97
	xor	ebx, ebx
	nop	
	jmp	.label_95
.label_100:
	lea	rdi, [rdi]
	mov	edi, ebp
	call	close
	lea	rsi, [rsi]
	xor	ebx, ebx
	jmp	.label_95
.label_96:
	nop	
	mov	r14d, dword ptr [r14]
	mov	rsp, rsp
	mov	rdi, rbx
	call	closedir
.label_97:
	test	r14d, r14d
	lea	rsi, [rsi]
	sete	bl
	jmp	.label_95
.label_98:
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	closedir
	lea	rsi, [rsi]
	xor	ebx, ebx
.label_95:
	mov	al, bl
	nop	
	pop	rbx
	mov	rbp, rbp
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041e0

	.globl prompt
	.type prompt, @function
prompt:
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	nop	
	push	r13
	nop	
	push	r12
	lea	rsi, [rsi]
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0xb8
	nop	
	mov	rbx, r9
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb4], r8d
	lea	rsi, [rsi]
	mov	rbp, rcx
	mov	r12d, edx
	mov	r15, rsi
	mov	edi, dword ptr [rdi + 0x2c]
	nop	
	mov	rsi, qword ptr [r15 + 0x30]
	mov	rax, qword ptr [r15 + 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa0], rax
	test	rbx, rbx
	je	.label_127
	mov	dword ptr [rbx], 2
	mov	qword ptr [rsp + 0x38], -1
	mov	rbp, rbp
	movzx	r13d, r12b
	shl	r13d, 2
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x9c], edi
	mov	qword ptr [rsp + 0xa8], rsi
	call	is_empty_dir
	mov	r14b, al
	movzx	eax, r14b
	lea	rdi, [rdi]
	add	eax, 3
	mov	dword ptr [rbx], eax
	jmp	.label_114
.label_127:
	mov	qword ptr [rsp + 0xa8], rsi
	mov	dword ptr [rsp + 0x9c], edi
	nop	
	mov	qword ptr [rsp + 0x38], -1
	lea	rdi, [rdi]
	movzx	r13d, r12b
	lea	rdi, [rdi]
	shl	r13d, 2
	xor	r14d, r14d
.label_114:
	mov	ebx, 3
	cmp	qword ptr [r15 + 0x20], 0
	jne	.label_110
	mov	ecx, dword ptr [rbp + 4]
	nop	
	cmp	ecx, 5
	je	.label_102
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp]
	mov	rax, rdx
	mov	rbp, rbp
	shr	rax, 0x20
	xor	esi, esi
	test	dl, dl
	lea	rdi, [rdi]
	je	.label_120
	mov	rbp, rbp
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_125
.label_120:
	nop	
	cmp	ecx, 3
	je	.label_130
	mov	rbp, rbp
	cmp	byte ptr [rbp + 0x19], 0
	mov	r15d, 0
	je	.label_125
.label_130:
	call	can_write_any_file
	mov	rsp, rsp
	test	al, al
	jne	.label_103
	mov	rax, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	cmp	rax, -1
	lea	rsi, [rsi]
	jne	.label_104
	mov	rsp, rsp
	lea	rcx, [rsp + 8]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	r8d, 0x100
	nop	
	mov	esi, dword ptr [rsp + 0x9c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	call	__fxstatat
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_112
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], -2
	call	__errno_location
	movsxd	r15, dword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], r15
	lea	rsi, [rsi]
	jmp	.label_115
.label_112:
	mov	rax, qword ptr [rsp + 0x38]
.label_104:
	mov	rbp, rbp
	test	rax, rax
	js	.label_133
	mov	rbp, rbp
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0xa000
	je	.label_103
	mov	edx, 2
	mov	rbp, rbp
	mov	ecx, 0x200
	mov	rbp, rbp
	mov	edi, dword ptr [rsp + 0x9c]
	mov	rsi, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	call	faccessat
	mov	rbp, rbp
	test	eax, eax
	je	.label_103
	call	__errno_location
	lea	rdi, [rdi]
	mov	esi, 1
	cmp	dword ptr [rax], 0xd
	mov	rbp, rbp
	je	.label_124
	mov	rsp, rsp
	mov	esi, 0xffffffff
.label_124:
	lea	rsi, [rsi]
	mov	r15d, dword ptr [rax]
	jmp	.label_105
.label_103:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp + 4]
	xor	esi, esi
.label_125:
	mov	rbp, rbp
	cmp	eax, 3
	lea	rsi, [rsi]
	jne	.label_102
	nop	
	jmp	.label_105
.label_133:
	mov	r15, qword ptr [rsp + 0x10]
	call	__errno_location
.label_115:
	mov	dword ptr [rax], r15d
	mov	rsp, rsp
	mov	esi, 0xffffffff
	mov	rbp, rbp
	mov	r15d, dword ptr [rax]
.label_105:
	test	esi, esi
	js	.label_109
	xor	r12b, 1
	je	.label_109
	mov	rax, qword ptr [rsp + 0x38]
	cmp	rax, -1
	jne	.label_111
	mov	r12d, esi
	lea	rcx, [rsp + 8]
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rbp, rbp
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0x9c]
	mov	rdx, qword ptr [rsp + 0xa8]
	mov	rbp, rbp
	call	__fxstatat
	test	eax, eax
	je	.label_129
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x38], -2
	mov	rbp, rbp
	call	__errno_location
	movsxd	r15, dword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], r15
	mov	dword ptr [rax], r15d
	jmp	.label_108
.label_129:
	mov	rax, qword ptr [rsp + 0x38]
	mov	esi, r12d
.label_111:
	test	rax, rax
	js	.label_117
	mov	eax, 0xf000
	lea	rsi, [rsi]
	and	eax, dword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	r12d, 0xa
	nop	
	cmp	eax, 0xa000
	je	.label_119
	nop	
	cmp	eax, 0x4000
	mov	eax, 4
	mov	rbp, rbp
	cmove	r13d, eax
.label_109:
	mov	rsp, rsp
	mov	r12d, r13d
.label_119:
	test	esi, esi
	nop	
	js	.label_108
	cmp	r12d, 4
	lea	rsi, [rsi]
	je	.label_132
	lea	rsi, [rsi]
	cmp	r12d, 0xa
	nop	
	jne	.label_106
	cmp	dword ptr [rbp + 4], 3
	jne	.label_102
	mov	rbp, rbp
	jmp	.label_106
.label_132:
	mov	rbp, rbp
	cmp	byte ptr [rbp + 9], 0
	jne	.label_106
	cmp	byte ptr [rbp + 0xa], 0
	je	.label_107
	mov	r15d, 0x15
	mov	rbp, rbp
	mov	al, r14b
	lea	rsi, [rsi]
	xor	al, 1
	mov	rsp, rsp
	jne	.label_108
.label_106:
	mov	rsp, rsp
	mov	ebp, esi
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xa0]
	nop	
	call	quotearg_style
	mov	r13, rax
	cmp	r12d, 4
	setne	al
	cmp	dword ptr [rsp + 0xb4], 2
	setne	cl
	or	cl, al
	or	r14b, cl
	mov	rbp, rbp
	je	.label_113
	mov	rax, qword ptr [rsp + 0x38]
	cmp	rax, -1
	mov	rsp, rsp
	jne	.label_116
	lea	rcx, [rsp + 8]
	lea	rdi, [rdi]
	mov	edi, 1
	mov	r8d, 0x100
	lea	rdi, [rdi]
	mov	esi, dword ptr [rsp + 0x9c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0xa8]
	call	__fxstatat
	mov	rsp, rsp
	test	eax, eax
	je	.label_121
	mov	qword ptr [rsp + 0x38], -2
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	movsxd	rbx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rbx
	jmp	.label_126
.label_113:
	nop	
	mov	r14,  qword ptr [word ptr [rip + stderr]]
	lea	rdi, [rdi]
	xor	edi, edi
	test	ebp, ebp
	mov	rbp, rbp
	je	.label_131
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.19_0
	jmp	.label_101
.label_117:
	mov	r15, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], r15d
.label_108:
	mov	ebx, 4
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xa0]
	lea	rdi, [rdi]
	call	quotearg_style
	mov	rbp, rbp
	mov	rbp, rax
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.24_0
	nop	
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rcx, rax
	nop	
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, r15d
	mov	rdx, rcx
	nop	
	mov	rcx, rbp
	mov	rbp, rbp
	call	error
	jmp	.label_110
.label_131:
	mov	esi, OFFSET FLAT:.str.20_0
.label_101:
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	r8, r13
	lea	rsi, [rsi]
	call	__fprintf_chk
	nop	
	jmp	.label_118
.label_121:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x38]
.label_116:
	test	rax, rax
	mov	rbp, rbp
	js	.label_122
	mov	r14,  qword ptr [word ptr [rip + stderr]]
	mov	r12, r13
	mov	rsp, rsp
	xor	edi, edi
	test	ebp, ebp
	mov	rsp, rsp
	je	.label_123
	mov	esi, OFFSET FLAT:.str.21_0
	jmp	.label_128
.label_122:
	nop	
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	call	__errno_location
.label_126:
	mov	rbp, rbp
	mov	dword ptr [rax], ebx
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.24_0
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, ebx
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, r13
	mov	rsp, rsp
	call	error
	mov	ebx, 4
	mov	rsp, rsp
	jmp	.label_110
.label_123:
	mov	esi, OFFSET FLAT:.str.22_0
.label_128:
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rbp, rbp
	mov	r13,  qword ptr [word ptr [rip + program_name]]
	lea	rdi, [rsp + 8]
	call	file_type
	mov	rbp, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r15
	lea	rsi, [rsi]
	mov	rcx, r13
	mov	r8, rbp
	mov	r9, r12
	call	__fprintf_chk
.label_118:
	call	yesno
	test	al, al
	mov	rsp, rsp
	je	.label_110
.label_102:
	mov	ebx, 2
.label_110:
	mov	eax, ebx
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_107:
	nop	
	mov	r15d, 0x15
	mov	rsp, rsp
	jmp	.label_108
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4047d0

	.globl excise
	.type excise, @function
excise:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x98
	lea	rdi, [rdi]
	mov	ebp, ecx
	mov	r13, rdx
	mov	r15, rsi
	mov	rbp, rbp
	mov	rbx, rdi
	mov	rsp, rsp
	movzx	edx, bpl
	lea	rdi, [rdi]
	shl	edx, 9
	mov	edi, dword ptr [rbx + 0x2c]
	mov	rsi, qword ptr [r15 + 0x30]
	lea	rsi, [rsi]
	call	unlinkat
	test	eax, eax
	je	.label_139
	lea	rsi, [rsi]
	call	__errno_location
	mov	r12, rax
	mov	ebp, dword ptr [r12]
	cmp	ebp, 0x1e
	jne	.label_143
	mov	esi, dword ptr [rbx + 0x2c]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + 0x30]
	lea	rcx, [rsp + 8]
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	r8d, 0x100
	nop	
	call	__fxstatat
	mov	rbp, rbp
	test	eax, eax
	nop	
	je	.label_140
	nop	
	cmp	dword ptr [r12], 2
	je	.label_142
.label_140:
	mov	rbp, rbp
	mov	dword ptr [r12], 0x1e
.label_142:
	mov	ebp, dword ptr [r12]
.label_143:
	cmp	byte ptr [r13], 0
	mov	rbp, rbp
	je	.label_146
	nop	
	mov	r14d, 2
	mov	rbp, rbp
	cmp	ebp, 0x16
	mov	rbp, rbp
	ja	.label_134
	mov	rbp, rbp
	mov	eax, 0x500004
	bt	eax, ebp
	jb	.label_138
.label_134:
	cmp	ebp, 0x54
	je	.label_138
.label_146:
	nop	
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 4
	mov	rsp, rsp
	jne	.label_136
	mov	rsp, rsp
	mov	eax, ebp
	lea	rdi, [rdi]
	cmp	ebp, 0x27
	ja	.label_136
	mov	rsp, rsp
	movabs	rcx, 0x8000320000
	nop	
	bt	rcx, rax
	jae	.label_136
	mov	eax, dword ptr [r15 + 0x40]
	cmp	eax, 0xd
	mov	rbp, rbp
	je	.label_141
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_136
.label_141:
	nop	
	mov	dword ptr [r12], eax
	lea	rdi, [rdi]
	mov	ebp, eax
.label_136:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24_0
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	mov	rbp, rbp
	mov	rsi, qword ptr [r15 + 0x38]
	mov	r14d, 4
	mov	edi, 4
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebp
	mov	rbp, rbp
	mov	rdx, rbx
	call	error
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_145
	nop	
.label_144:
	mov	qword ptr [rax + 0x20], 1
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
.label_145:
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x58], 0
	mov	rsp, rsp
	js	.label_138
	nop	
	cmp	qword ptr [rax + 0x20], 0
	je	.label_144
	lea	rsi, [rsi]
	jmp	.label_138
.label_139:
	mov	r14d, 2
	cmp	byte ptr [r13 + 0x1a], 0
	je	.label_138
	xor	edi, edi
	test	bpl, bpl
	je	.label_135
	mov	esi, OFFSET FLAT:.str.23_0
	mov	rsp, rsp
	jmp	.label_137
.label_135:
	mov	esi, OFFSET FLAT:.str.25_0
.label_137:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r15 + 0x38]
	mov	edi, 4
	mov	rbp, rbp
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
.label_138:
	mov	eax, r14d
	mov	rbp, rbp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404a00

	.globl set_process_security_ctx
	.type set_process_security_ctx, @function
set_process_security_ctx:
	nop	
	push	r15
	mov	rbp, rbp
	push	r14
	mov	rsp, rsp
	push	r12
	nop	
	push	rbx
	mov	rbp, rbp
	push	rax
	lea	rdi, [rdi]
	mov	rbx, r8
	mov	r15, rdi
	cmp	byte ptr [rbx + 0x25], 0
	je	.label_147
	lea	rdi, [rdi]
	cmp	byte ptr [rbx + 0x23], 0
	je	.label_148
	cmp	byte ptr [rbx + 0x26], 0
	lea	rsi, [rsi]
	je	.label_150
.label_148:
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x5f
	xor	r14d, r14d
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rsp, rsp
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, r12
	mov	rsp, rsp
	call	error
	lea	rdi, [rdi]
	cmp	byte ptr [rbx + 0x26], 0
	jne	.label_149
	nop	
	jmp	.label_151
.label_147:
	cmp	byte ptr [rbx + 0x21], 0
	je	.label_151
	mov	rbp, rbp
	xor	cl, 1
	lea	rsi, [rsi]
	jne	.label_151
.label_150:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_151:
	lea	rdi, [rdi]
	mov	r14b, 1
.label_149:
	mov	al, r14b
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ae0
	.globl set_file_security_ctx
	.type set_file_security_ctx, @function
set_file_security_ctx:

	mov	rsp, rsp
	push	r14
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	r14, rdi
	cmp	byte ptr [rcx + 0x23], 0
	lea	rsi, [rsi]
	je	.label_152
	mov	rsp, rsp
	cmp	byte ptr [rcx + 0x26], 0
	mov	rsp, rsp
	je	.label_153
.label_152:
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x5f
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_1
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbx, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, r14
	lea	rdi, [rdi]
	call	quotearg_n_style
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 0x5f
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	error
	jmp	.label_154
.label_153:
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_154:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b80

	.globl dest_info_init
	.type dest_info_init, @function
dest_info_init:
	lea	rsi, [rsi]
	push	rbx
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	edi, 0x3d
	mov	rbp, rbp
	xor	esi, esi
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:triple_hash
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:triple_compare
	mov	rsp, rsp
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	nop	
	mov	qword ptr [rbx + 0x40], rax
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404bc0
	.globl src_info_init
	.type src_info_init, @function
src_info_init:

	nop
	push	rbx
	nop	
	mov	rbx, rdi
	mov	edi, 0x3d
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:triple_hash_no_name
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:triple_compare
	mov	r8d, OFFSET FLAT:triple_free
	mov	rsp, rsp
	call	hash_initialize
	mov	qword ptr [rbx + 0x48], rax
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404bf0

	.globl copy
	.type copy, @function
copy:
	lea	rdi, [rdi]
	sub	rsp, 0x28
	nop	
	mov	rax, rcx
	nop	
	mov	qword ptr [word ptr [rip + top_level_src_name]],  rdi
	mov	qword ptr [word ptr [rip + top_level_dst_name]],  rsi
	mov	byte ptr [rsp + 0x27], 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], r9
	nop	
	mov	qword ptr [rsp + 0x10], r8
	lea	rcx, [rsp + 0x27]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rcx
	mov	dword ptr [rsp], 1
	movzx	edx, dl
	nop	
	xor	ecx, ecx
	xor	r8d, r8d
	mov	r9, rax
	call	copy_internal
	add	rsp, 0x28
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c50

	.globl copy_internal
	.type copy_internal, @function
copy_internal:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x3a8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x1e0], rcx
	mov	r14d, edx
	mov	qword ptr [rbp - 0xf0], rsi
	nop	
	mov	r12, rdi
	mov	r13, qword ptr [rbp + 0x28]
	nop	
	mov	rax, qword ptr [rbp + 0x20]
	mov	rsp, rsp
	mov	byte ptr [rax], 0
	lea	rdi, [rdi]
	mov	r15d, dword ptr [r9 + 0x34]
	cmp	byte ptr [r9 + 0x18], 0
	je	.label_355
	lea	rsi, [rsi]
	mov	rbx, r9
	mov	rbp, rbp
	test	r15d, r15d
	jns	.label_368
	lea	rsi, [rsi]
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	rsp, rsp
	mov	r8d, 1
	mov	rsi, r12
	mov	rcx, qword ptr [rbp - 0xf0]
	call	renameatu
	xor	r15d, r15d
	nop	
	test	eax, eax
	nop	
	je	.label_368
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	r15d, dword ptr [rax]
.label_368:
	test	r15d, r15d
	sete	r14b
	test	r13, r13
	nop	
	je	.label_381
	nop	
	mov	byte ptr [r13], r14b
.label_381:
	mov	rbp, rbp
	mov	r9, rbx
.label_355:
	mov	rsp, rsp
	test	r15d, r15d
	nop	
	je	.label_385
	cmp	r15d, 0x11
	mov	rsp, rsp
	jne	.label_388
	lea	rsi, [rsi]
	cmp	dword ptr [r9 + 8], 2
	lea	rsi, [rsi]
	je	.label_167
	lea	rsi, [rsi]
	jmp	.label_388
.label_385:
	cmp	byte ptr [r9 + 0x31], 0
	mov	rsp, rsp
	jne	.label_167
.label_388:
	mov	rsp, rsp
	test	r15d, r15d
	nop	
	mov	rbx, r12
	cmove	rbx, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	cmp	dword ptr [r9 + 4], 2
	lea	rdi, [rdi]
	mov	r13, r9
	lea	rdx, [rbp - 0x3d0]
	mov	rsp, rsp
	mov	edi, 1
	mov	rsi, rbx
	jne	.label_484
	call	__lxstat
	jmp	.label_409
.label_484:
	lea	rsi, [rsi]
	call	__xstat
.label_409:
	test	eax, eax
	mov	r9, r13
	je	.label_411
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.12_1
.label_404:
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rbp
	mov	r12, rax
	mov	rsp, rsp
	mov	edi, 4
	nop	
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, r15d
	mov	rbp, rbp
	mov	rdx, r12
	nop	
	call	error
.label_243:
	mov	rsp, rsp
	mov	al, r13b
	lea	rsp, [rbp - 0x28]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	nop	
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	nop	
	pop	r15
	pop	rbp
	nop	
	ret	
.label_411:
	mov	ecx, dword ptr [rbp - 0x3b8]
	mov	eax, ecx
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_427
	cmp	byte ptr [r9 + 0x2a], 0
	mov	r13, qword ptr [rbp + 0x28]
	nop	
	jne	.label_167
	mov	rbp, rbp
	cmp	byte ptr [r9 + 0x19], 0
	mov	rbp, rbp
	je	.label_367
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_1
	jmp	.label_436
.label_427:
	lea	rdi, [rdi]
	mov	r13, qword ptr [rbp + 0x28]
.label_167:
	lea	rdi, [rdi]
	mov	dl, byte ptr [rbp + 0x10]
	lea	rsi, [rsi]
	test	dl, dl
	mov	rbp, rbp
	je	.label_441
	mov	rdi, qword ptr [r9 + 0x48]
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_441
	mov	eax, ecx
	lea	rsi, [rsi]
	and	eax, 0xf000
	mov	rbp, rbp
	cmp	eax, 0x4000
	lea	rsi, [rsi]
	jne	.label_443
	mov	dword ptr [rbp - 0x104], ecx
	lea	rdi, [rdi]
	jmp	.label_446
.label_443:
	mov	dword ptr [rbp - 0x104], ecx
	cmp	dword ptr [r9], 0
	lea	rdi, [rdi]
	je	.label_448
.label_446:
	lea	rsi, [rsi]
	mov	bl, dl
	mov	r13, r9
.label_314:
	nop	
	lea	rdx, [rbp - 0x3d0]
	mov	rsi, r12
	call	record_file
	mov	r9, r13
	mov	r13, qword ptr [rbp + 0x28]
	mov	rsp, rsp
	mov	dl, bl
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x104]
.label_441:
	mov	qword ptr [rbp - 0x208], r12
	mov	eax, dword ptr [r9 + 4]
	mov	r12b, 1
	nop	
	cmp	eax, 4
	lea	rsi, [rsi]
	je	.label_457
	cmp	eax, 3
	sete	r12b
	nop	
	and	r12b, dl
.label_457:
	lea	rsi, [rsi]
	xor	r8d, r8d
	mov	rbp, rbp
	test	r14b, r14b
	je	.label_196
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xf8], rax
.label_187:
	test	dl, dl
	lea	rdi, [rdi]
	je	.label_463
	cmp	qword ptr [r9 + 0x40], 0
	je	.label_463
	mov	rsp, rsp
	cmp	byte ptr [r9 + 0x18], 0
	lea	rsi, [rsi]
	jne	.label_463
	mov	rbp, rbp
	cmp	dword ptr [r9], 0
	jne	.label_463
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], r14
	mov	r14, r9
	nop	
	mov	r13d, ecx
	test	r8b, r8b
	jne	.label_467
	lea	rbx, [rbp - 0x1d0]
	mov	edi, 1
	nop	
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rdx, rbx
	call	__lxstat
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	jne	.label_339
	jmp	.label_477
.label_196:
	cmp	r15d, 0x11
	lea	rsi, [rsi]
	jne	.label_374
	lea	rsi, [rsi]
	cmp	dword ptr [r9 + 8], 2
	jne	.label_374
	xor	r8d, r8d
	lea	rdi, [rdi]
	xor	r14d, r14d
	jmp	.label_206
.label_374:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1f0], r12b
	lea	rdi, [rdi]
	mov	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x104], ecx
	mov	rbp, rbp
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0x8000
	mov	rdx, qword ptr [rbp - 0xf0]
	je	.label_412
	mov	bl, 1
	cmp	byte ptr [r9 + 0x14], 0
	je	.label_172
	nop	
	cmp	eax, 0x4000
	je	.label_172
	nop	
	cmp	eax, 0xa000
	mov	rsp, rsp
	je	.label_172
.label_412:
	nop	
	mov	bl, 1
	cmp	byte ptr [r9 + 0x18], 0
	jne	.label_172
	cmp	byte ptr [r9 + 0x2c], 0
	jne	.label_172
	cmp	byte ptr [r9 + 0x17], 0
	lea	rdi, [rdi]
	jne	.label_172
	nop	
	cmp	dword ptr [r9], 0
	jne	.label_172
	nop	
	cmp	byte ptr [r9 + 0x15], 0
	setne	bl
.label_172:
	mov	r12, r9
	lea	rsi, [rsi]
	movzx	r8d, bl
	shl	r8d, 8
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x340]
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, 0xffffff9c
	lea	rsi, [rsi]
	call	__fxstatat
	test	eax, eax
	je	.label_169
	mov	r14, r12
	nop	
	mov	r13d, dword ptr [rbp - 0x104]
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	mov	al, 1
	nop	
	cmp	ebx, 2
	lea	rsi, [rsi]
	je	.label_175
	mov	r12, qword ptr [rbp - 0xf0]
	cmp	ebx, 0x28
	jne	.label_184
	cmp	byte ptr [r14 + 0x16], 0
	mov	rsp, rsp
	je	.label_184
	xor	eax, eax
.label_175:
	xor	r8d, r8d
	mov	rbp, rbp
	cmp	r15d, 0x11
	mov	rbp, rbp
	mov	ecx, 0
	mov	qword ptr [rbp - 0xf8], rcx
	nop	
	mov	ecx, r13d
	lea	rsi, [rsi]
	mov	r9, r14
	lea	rsi, [rsi]
	mov	r13b, byte ptr [rbp + 0x10]
	mov	dl, r13b
	mov	r14, rax
	nop	
	mov	r13, qword ptr [rbp + 0x28]
	mov	r12b, byte ptr [rbp - 0x1f0]
	mov	rsp, rsp
	jne	.label_187
	jmp	.label_206
.label_169:
	xor	r14d, r14d
	mov	rsp, rsp
	mov	r9, r12
	mov	r13, qword ptr [rbp + 0x28]
	lea	rsi, [rsi]
	mov	r12b, byte ptr [rbp - 0x1f0]
	mov	rbp, rbp
	mov	r8, rbx
	mov	ecx, dword ptr [rbp - 0x104]
.label_206:
	cmp	dword ptr [r9 + 8], 2
	nop	
	jne	.label_455
	xor	edi, edi
	jmp	.label_181
.label_455:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x104], ecx
	mov	rax, qword ptr [rbp - 0x3c8]
	cmp	rax, qword ptr [rbp - 0x338]
	mov	rbp, rbp
	jne	.label_218
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], r14
	mov	rax, qword ptr [rbp - 0x3d0]
	cmp	rax, qword ptr [rbp - 0x340]
	mov	rbp, rbp
	jne	.label_226
	mov	rbp, rbp
	mov	dil, 1
	cmp	byte ptr [r9 + 0x17], 0
	nop	
	jne	.label_195
	nop	
	jmp	.label_244
.label_184:
	mov	rbp, rbp
	xor	r13d, r13d
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
	mov	edx, 5
	nop	
	call	dcgettext
	mov	r15, rax
	nop	
	mov	edi, 4
	mov	rsi, r12
	lea	rdi, [rdi]
	call	quotearg_style
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebx
.label_359:
	mov	rdx, r15
	call	error
	mov	rsp, rsp
	jmp	.label_243
.label_218:
	mov	qword ptr [rbp - 0x40], r14
	xor	edi, edi
	mov	rsp, rsp
	jmp	.label_244
.label_448:
	lea	rdi, [rdi]
	mov	bl, dl
	mov	r13, r9
	mov	rsp, rsp
	lea	rdx, [rbp - 0x3d0]
	mov	rbp, rbp
	mov	rsi, r12
	call	seen_file
	test	al, al
	je	.label_250
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.15_2
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rbx
	call	error
	nop	
	mov	r13b, 1
	jmp	.label_243
.label_226:
	xor	edi, edi
.label_244:
	cmp	dword ptr [r9 + 4], 2
	lea	rsi, [rsi]
	jne	.label_261
	lea	rsi, [rsi]
	mov	rbx, r8
	mov	eax, dword ptr [rbp - 0x3b8]
	mov	ecx, eax
	and	ecx, 0xf000
	lea	rsi, [rbp - 0x3d0]
	lea	rdi, [rdi]
	lea	r15, [rbp - 0x340]
	lea	rsi, [rsi]
	cmp	ecx, 0xa000
	mov	rbp, rbp
	jne	.label_263
	mov	ecx, 0xf000
	and	ecx, dword ptr [rbp - 0x328]
	mov	rbp, rbp
	cmp	ecx, 0xa000
	lea	rdi, [rdi]
	jne	.label_263
	mov	r15d, edi
	mov	r14, r9
	mov	rdi, qword ptr [rbp - 0x208]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xf0]
	call	same_name
	mov	rsp, rsp
	test	al, al
	lea	rdi, [rdi]
	jne	.label_171
	nop	
	mov	r9, r14
	cmp	dword ptr [r9], 0
	lea	rsi, [rsi]
	jne	.label_280
	lea	rdi, [rdi]
	test	r15b, r15b
	lea	rsi, [rsi]
	mov	r8, rbx
	mov	rsp, rsp
	je	.label_282
	cmp	byte ptr [r9 + 0x18], 0
	mov	dil, 1
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x104]
	mov	rsp, rsp
	mov	r14, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	jne	.label_171
	mov	rbp, rbp
	jmp	.label_181
.label_261:
	test	dil, dil
	je	.label_297
	mov	rsp, rsp
	mov	rbx, r8
	mov	r14, r9
	lea	r15, [rbp - 0x1d0]
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rdx, r15
	mov	rbp, rbp
	call	__lxstat
	nop	
	test	eax, eax
	jne	.label_302
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0xd8]
	mov	edi, 1
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x208]
	lea	rdi, [rdi]
	call	__lxstat
	test	eax, eax
	je	.label_311
.label_302:
	xor	edi, edi
	mov	r9, r14
	mov	rbp, rbp
	mov	r8, rbx
	lea	rdi, [rdi]
	jmp	.label_195
.label_250:
	mov	rdi, qword ptr [r13 + 0x48]
	lea	rdi, [rdi]
	jmp	.label_314
.label_367:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.13_1
.label_436:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, r12
	lea	rdi, [rdi]
	call	quotearg_style
	mov	rcx, rax
	nop	
	xor	r13d, r13d
.label_419:
	lea	rdi, [rdi]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_438:
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	error
	lea	rsi, [rsi]
	jmp	.label_243
.label_297:
	mov	rsp, rsp
	xor	edi, edi
	nop	
	jmp	.label_195
.label_467:
	mov	rsp, rsp
	lea	rbx, [rbp - 0x340]
.label_477:
	lea	rdi, [rdi]
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	nop	
	jne	.label_339
	nop	
	mov	rdi, qword ptr [r14 + 0x40]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	rdx, rbx
	nop	
	call	seen_file
	nop	
	test	al, al
	lea	rsi, [rsi]
	je	.label_339
	xor	r13d, r13d
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26_0
	jmp	.label_347
.label_339:
	mov	ecx, r13d
	mov	rsp, rsp
	mov	r9, r14
	mov	rsp, rsp
	mov	r14, qword ptr [rbp - 0x40]
.label_463:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1f0], r12b
	mov	qword ptr [rbp - 0x40], r14
	nop	
	cmp	byte ptr [r9 + 0x2e], 0
	lea	rdi, [rdi]
	je	.label_353
	nop	
	mov	eax, ecx
	nop	
	and	eax, 0xf000
	mov	rsp, rsp
	cmp	eax, 0x4000
	je	.label_353
	mov	al, byte ptr [r9 + 0x18]
	test	al, al
	jne	.label_353
	nop	
	mov	rdi, qword ptr [rbp - 0x208]
	nop	
	mov	rsi, qword ptr [rbp - 0xf0]
	nop	
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	r14, r9
	mov	ebx, ecx
	lea	rsi, [rsi]
	call	emit_verbose
	lea	rdi, [rdi]
	mov	ecx, ebx
	mov	r9, r14
.label_353:
	mov	r14, r9
	mov	rbp, rbp
	mov	r13d, ecx
	mov	rbp, rbp
	xor	edx, edx
	test	r15d, r15d
	je	.label_365
	mov	ebx, r13d
	and	ebx, 0xf000
	cmp	ebx, 0x4000
	jne	.label_366
	nop	
	mov	al, byte ptr [r14 + 0x2a]
	lea	rdi, [rdi]
	test	al, al
	nop	
	je	.label_366
	mov	rax, qword ptr [rbp - 0x3d0]
	nop	
	mov	rcx, qword ptr [rbp - 0x3c8]
	mov	rbp, rbp
	cmp	byte ptr [rbp + 0x10], 0
	lea	rdi, [rdi]
	je	.label_378
	mov	rdi, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rsi, rcx
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rdi, [rdi]
	jmp	.label_382
.label_366:
	cmp	byte ptr [r14 + 0x18], 0
	lea	rdi, [rdi]
	je	.label_387
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x3c0], 1
	mov	rsp, rsp
	jne	.label_387
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x3d0]
	nop	
	mov	rdi, qword ptr [rbp - 0x3c8]
	mov	rbp, rbp
	call	src_to_dest_lookup
	mov	rsp, rsp
	jmp	.label_276
.label_387:
	mov	rsp, rsp
	xor	edx, edx
	cmp	byte ptr [r14 + 0x22], 0
	mov	rsp, rsp
	je	.label_365
	xor	edx, edx
	cmp	byte ptr [r14 + 0x17], 0
	mov	rsp, rsp
	jne	.label_365
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x3c0], 1
	mov	rsp, rsp
	ja	.label_405
	mov	ecx, dword ptr [r14 + 4]
	mov	rbp, rbp
	cmp	ecx, 3
	sete	al
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rbp, rbp
	cmp	ecx, 4
	lea	rsi, [rsi]
	je	.label_405
	and	al, byte ptr [rbp + 0x10]
	je	.label_365
.label_405:
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x3d0]
	mov	rsi, qword ptr [rbp - 0x3c8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xf0]
.label_382:
	call	remember_copied
	jmp	.label_276
.label_378:
	mov	rdi, rcx
	mov	rbp, rbp
	mov	rsi, rax
	call	src_to_dest_lookup
.label_276:
	mov	r12, rax
	lea	rsi, [rsi]
	xor	edx, edx
	test	r12, r12
	je	.label_365
	nop	
	cmp	ebx, 0x4000
	jne	.label_424
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x208]
	mov	rbp, rbp
	mov	rsi, r12
	call	same_name
	test	al, al
	mov	rsp, rsp
	je	.label_428
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27_0
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	r13, rax
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + top_level_src_name]]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 4
	nop	
	call	quotearg_n_style
	mov	r15, rax
	mov	rdx,  qword ptr [word ptr [rip + top_level_dst_name]]
	mov	rbp, rbp
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, 4
	call	quotearg_n_style
	mov	rbx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	nop	
	mov	rdx, r13
	mov	rcx, r15
	lea	rsi, [rsi]
	mov	r8, rbx
	call	error
	mov	rax, qword ptr [rbp + 0x20]
	lea	rsi, [rsi]
	mov	byte ptr [rax], 1
	mov	rbp, rbp
	jmp	.label_449
.label_424:
	movzx	ecx, byte ptr [r14 + 0x2e]
	movzx	r8d, byte ptr [rbp - 0x1f0]
	lea	rdi, [rdi]
	mov	edx, 1
	lea	rdi, [rdi]
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	call	create_hard_link
	lea	rdi, [rdi]
	mov	r10, r14
	mov	rsp, rsp
	mov	r13b, 1
	test	al, al
	mov	rdx, r12
	jne	.label_243
	jmp	.label_173
.label_428:
	mov	rdi, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rsi, r12
	lea	rdi, [rdi]
	call	same_name
	test	al, al
	mov	rsp, rsp
	je	.label_460
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28_0
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + top_level_src_name]]
	mov	rsp, rsp
	mov	edi, 4
	call	quotearg_style
	mov	rbp, rbp
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	nop	
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	error
	mov	r13b, 1
	mov	rsp, rsp
	cmp	qword ptr [rbp + 0x28], 0
	je	.label_243
	mov	al, byte ptr [r14 + 0x18]
	test	al, al
	je	.label_243
	mov	rax, qword ptr [rbp + 0x28]
	mov	byte ptr [rax], 1
	mov	rsp, rsp
	jmp	.label_243
.label_460:
	lea	rsi, [rsi]
	mov	ecx, dword ptr [r14 + 4]
	mov	rsp, rsp
	cmp	ecx, 3
	sete	al
	mov	rsp, rsp
	cmp	ecx, 4
	je	.label_476
	mov	cl, byte ptr [rbp + 0x10]
	lea	rdi, [rdi]
	and	al, cl
	jne	.label_476
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.29_0
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 4
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xf0]
	call	quotearg_n_style
	lea	rsi, [rsi]
	mov	r15, rax
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, 4
	mov	rdx, r12
	call	quotearg_n_style
	mov	rbx, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r13
	mov	rsp, rsp
	mov	rcx, r15
	mov	rbp, rbp
	mov	r8, rbx
	nop	
	call	error
.label_449:
	mov	rdx, r12
	nop	
	mov	r10, r14
	jmp	.label_173
.label_476:
	lea	rdi, [rdi]
	mov	rdx, r12
.label_365:
	mov	rsp, rsp
	cmp	byte ptr [r14 + 0x18], 0
	mov	r12, qword ptr [rbp - 0x208]
	lea	rsi, [rsi]
	je	.label_161
	lea	rdi, [rdi]
	cmp	r15d, 0x11
	jne	.label_165
	mov	rbx, rdx
	mov	rsp, rsp
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	call	rename
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_177
	call	__errno_location
	lea	rsi, [rsi]
	mov	r15d, dword ptr [rax]
	mov	rsp, rsp
	mov	rdx, rbx
.label_165:
	cmp	r15d, 0x16
	lea	rdi, [rdi]
	je	.label_182
	cmp	r15d, 0x12
	nop	
	je	.label_186
	test	r15d, r15d
	jne	.label_188
.label_177:
	lea	rdi, [rdi]
	cmp	byte ptr [r14 + 0x2e], 0
	mov	r13, qword ptr [rbp - 0xf0]
	nop	
	je	.label_193
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30_0
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	rsp, rsp
	mov	rdi, r12
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xf8]
	call	emit_verbose
.label_193:
	mov	rbp, rbp
	cmp	byte ptr [r14 + 0x21], 0
	nop	
	mov	rbx, qword ptr [rbp + 0x28]
	je	.label_211
	lea	rsi, [rsi]
	cmp	byte ptr [r14 + 0x23], 0
	je	.label_216
	lea	rsi, [rsi]
	cmp	byte ptr [r14 + 0x26], 0
	je	.label_220
.label_216:
	nop	
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x5f
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.3_1
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, r13
	call	quotearg_n_style
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 0x5f
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, r15
	call	error
	mov	rsp, rsp
	jmp	.label_211
.label_186:
	mov	qword ptr [rbp - 0x130], rdx
	lea	rdi, [rdi]
	mov	ebx, r13d
	nop	
	and	ebx, 0xf000
	lea	rdi, [rdi]
	cmp	ebx, 0x4000
	lea	rdi, [rdi]
	jne	.label_238
	nop	
	mov	r12, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	rdi, r12
	call	rmdir
	lea	rsi, [rsi]
	jmp	.label_246
.label_182:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.31
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	r14, rax
	nop	
	mov	rdx,  qword ptr [word ptr [rip + top_level_src_name]]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 4
	nop	
	call	quotearg_n_style
	mov	r15, rax
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [rip + top_level_dst_name]]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, 4
	nop	
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	nop	
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	rdx, r14
	mov	rsp, rsp
	mov	rcx, r15
	mov	r8, rbx
	lea	rsi, [rsi]
	call	error
	nop	
	mov	rax, qword ptr [rbp + 0x20]
	mov	byte ptr [rax], 1
	mov	r13b, 1
	mov	rbp, rbp
	jmp	.label_243
.label_188:
	lea	rsi, [rsi]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.32
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rdx, r12
	mov	r12, rax
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 4
	lea	rdi, [rdi]
	call	quotearg_n_style
	mov	r14, rax
	nop	
	mov	edi, 1
	mov	esi, 4
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	call	quotearg_n_style
	mov	rsp, rsp
	mov	rbx, rax
	mov	rsp, rsp
	xor	edi, edi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, r15d
	mov	rdx, r12
	mov	rcx, r14
	mov	r8, rbx
	mov	rsp, rsp
	jmp	.label_481
.label_238:
	lea	rsi, [rsi]
	mov	r12, qword ptr [rbp - 0xf0]
	mov	rdi, r12
	call	unlink
.label_246:
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_284
	call	__errno_location
	nop	
	mov	r15d, dword ptr [rax]
	lea	rdi, [rdi]
	cmp	r15d, 2
	jne	.label_288
.label_284:
	nop	
	cmp	ebx, 0x4000
	mov	rsp, rsp
	mov	al, 1
	nop	
	mov	qword ptr [rbp - 0x40], rax
	nop	
	je	.label_293
	mov	al, byte ptr [r14 + 0x2e]
	lea	rsi, [rsi]
	test	al, al
	lea	rdi, [rdi]
	mov	rbx, r12
	je	.label_299
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.34
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rsi, rcx
	call	__printf_chk
	mov	r12, qword ptr [rbp - 0x208]
	mov	rdi, r12
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xf0], rbx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xf8]
	call	emit_verbose
	jmp	.label_315
.label_288:
	lea	rdi, [rdi]
	xor	r13d, r13d
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.33
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	r14, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x208]
	call	quotearg_n_style
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rbp, rbp
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, 4
	nop	
	mov	rdx, r12
	call	quotearg_n_style
	lea	rsi, [rsi]
	mov	r8, rax
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, r15d
	lea	rsi, [rsi]
	mov	rdx, r14
	nop	
	mov	rcx, rbx
.label_481:
	lea	rsi, [rsi]
	call	error
	mov	rsi, qword ptr [rbp - 0x3d0]
	nop	
	mov	rdi, qword ptr [rbp - 0x3c8]
	call	forget_created
	lea	rsi, [rsi]
	jmp	.label_243
.label_220:
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x5f
.label_211:
	mov	rbp, rbp
	mov	rsi, r13
	mov	rsp, rsp
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_350
	mov	byte ptr [rbx], 1
.label_350:
	mov	rsp, rsp
	mov	r13b, 1
	cmp	byte ptr [rbp + 0x10], 0
	lea	rsi, [rsi]
	je	.label_243
	nop	
	cmp	byte ptr [r14 + 0x31], 0
	mov	rbp, rbp
	jne	.label_243
	mov	rsp, rsp
	mov	rdi, qword ptr [r14 + 0x40]
	lea	rdx, [rbp - 0x3d0]
	mov	rsp, rsp
	call	record_file
	lea	rsi, [rsi]
	jmp	.label_243
.label_293:
	mov	qword ptr [rbp - 0xf0], r12
	lea	rsi, [rsi]
	mov	r12, qword ptr [rbp - 0x208]
	jmp	.label_315
.label_299:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xf0], rbx
	mov	rsp, rsp
	mov	r12, qword ptr [rbp - 0x208]
.label_315:
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x130]
.label_161:
	mov	rbp, rbp
	cmp	byte ptr [r14 + 0x2b], 0
	mov	rsp, rsp
	mov	eax, r13d
	nop	
	mov	r8, r14
	lea	rdi, [rdi]
	je	.label_346
	lea	rdi, [rdi]
	mov	eax, dword ptr [r8 + 0x10]
.label_346:
	mov	ebx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x130], rdx
	mov	r15d, 0x3f
	cmp	byte ptr [r8 + 0x1d], 0
	nop	
	mov	r14, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	jne	.label_377
	mov	rbp, rbp
	mov	eax, r13d
	and	eax, 0xf000
	nop	
	xor	ecx, ecx
	cmp	eax, 0x4000
	mov	r15d, 0x12
	lea	rdi, [rdi]
	cmovne	r15d, ecx
.label_377:
	nop	
	movzx	ecx, r14b
	nop	
	mov	dword ptr [rbp - 0x110], ecx
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x120], r8
	call	set_process_security_ctx
	nop	
	test	al, al
	je	.label_394
	mov	rbp, rbp
	and	r15d, ebx
	mov	esi, r13d
	and	esi, 0xf000
	lea	rdi, [rdi]
	cmp	esi, 0x4000
	lea	rsi, [rsi]
	jne	.label_396
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x3d0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x3c8]
	lea	rdi, [rdi]
	je	.label_401
	mov	rbp, rbp
	mov	rdx, rdi
	nop	dword ptr [rax + rax]
.label_255:
	cmp	qword ptr [rdx + 8], rcx
	mov	rbp, rbp
	jne	.label_414
	mov	rsp, rsp
	cmp	qword ptr [rdx + 0x10], rax
	je	.label_242
.label_414:
	mov	rdx, qword ptr [rdx]
	lea	rsi, [rsi]
	test	rdx, rdx
	mov	rsp, rsp
	jne	.label_255
.label_401:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1fc], esi
	mov	rdx, rsp
	mov	rsp, rsp
	lea	rsi, [rdx - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1f0], rsi
	mov	rsp, rsi
	mov	qword ptr [rdx - 0x20], rdi
	mov	qword ptr [rdx - 0x18], rcx
	mov	qword ptr [rdx - 0x10], rax
	test	r14b, r14b
	mov	rsp, rsp
	jne	.label_420
	lea	rdi, [rdi]
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x328]
	mov	rsp, rsp
	cmp	eax, 0x4000
	jne	.label_420
	mov	r10, qword ptr [rbp - 0x120]
	nop	
	cmp	byte ptr [r10 + 0x21], 0
	mov	rbp, rbp
	jne	.label_429
	nop	
	cmp	byte ptr [r10 + 0x25], 0
	je	.label_431
.label_429:
	mov	dword ptr [rbp - 0x104], r13d
	cmp	byte ptr [r10 + 0x23], 0
	je	.label_434
	lea	rsi, [rsi]
	cmp	byte ptr [r10 + 0x26], 0
	je	.label_439
.label_434:
	mov	r14, r10
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x5f
	xor	eax, eax
	mov	qword ptr [rbp - 0x100], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_1
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 4
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbp - 0xf0]
	mov	rdx, r13
	lea	rdi, [rdi]
	call	quotearg_n_style
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x5f
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	error
	mov	r10, r14
	nop	
	cmp	byte ptr [r10 + 0x26], 0
	mov	rbp, rbp
	mov	r15d, 0
	mov	dword ptr [rbp - 0x114], eax
	lea	rsi, [rsi]
	je	.label_156
	mov	rdx, qword ptr [rbp - 0x130]
	jmp	.label_173
.label_394:
	lea	rsi, [rsi]
	xor	r13d, r13d
	nop	
	jmp	.label_243
.label_396:
	mov	rdx, qword ptr [rbp - 0x120]
	lea	rdi, [rdi]
	cmp	byte ptr [rdx + 0x2c], 0
	mov	rsp, rsp
	je	.label_458
	mov	dword ptr [rbp - 0x1fc], esi
	mov	dword ptr [rbp - 0x104], r13d
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r12]
	lea	rsi, [rsi]
	cmp	eax, 0x2f
	nop	
	je	.label_462
	mov	rsp, rsp
	mov	r13, rdx
	mov	rdi, qword ptr [rbp - 0xf0]
	call	dir_name
	mov	r14, rax
	mov	rbp, rbp
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2e
	jne	.label_466
	mov	rsp, rsp
	cmp	byte ptr [r14 + 1], 0
	je	.label_469
.label_466:
	lea	rdx, [rbp - 0x1d0]
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str_2
	lea	rsi, [rsi]
	call	__xstat
	mov	rbp, rbp
	test	eax, eax
	jne	.label_469
	mov	rsp, rsp
	lea	rdx, [rbp - 0xd8]
	mov	edi, 1
	mov	rsi, r14
	call	__xstat
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_370
.label_469:
	lea	rsi, [rsi]
	mov	rdi, r14
	call	free
.label_402:
	mov	rbp, rbp
	mov	rdx, r13
.label_462:
	mov	dword ptr [rbp - 0x1e4], r15d
	movzx	ecx, byte ptr [rdx + 0x16]
	mov	r13, rdx
	mov	esi, 0xffffff9c
	lea	rsi, [rsi]
	mov	r8d, 0xffffffff
	mov	rdi, r12
	mov	rbx, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	rdx, rbx
	call	force_symlinkat
	mov	r15, r12
	mov	r12d, eax
	mov	rbp, rbp
	test	r12d, r12d
	nop	
	jle	.label_488
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41_0
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	mov	rsp, rsp
	call	quotearg_n_style
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, 4
	mov	rdx, r15
	mov	rbp, rbp
	call	quotearg_n_style
	mov	rsp, rsp
	mov	r8, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, r12d
	lea	rsi, [rsi]
	mov	rdx, r14
	nop	
	mov	rcx, rbx
	mov	rsp, rsp
	call	error
.label_321:
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x130]
	mov	r10, r13
	lea	rsi, [rsi]
	jmp	.label_173
.label_420:
	and	ebx, 0xfff
	mov	rsp, rsp
	mov	esi, r15d
	lea	rdi, [rdi]
	not	esi
	mov	rsp, rsp
	and	esi, ebx
	mov	rbx, qword ptr [rbp - 0xf0]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	mkdir
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_191
	mov	rsp, rsp
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.36
	jmp	.label_198
.label_458:
	cmp	byte ptr [rdx + 0x17], 0
	je	.label_201
	mov	dword ptr [rbp - 0x1fc], esi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1e4], r15d
	nop	
	mov	qword ptr [rbp - 0x208], r12
	lea	rdi, [rdi]
	mov	r12b, 1
	nop	
	cmp	byte ptr [rdx + 0x16], 0
	nop	
	mov	al, 1
	lea	rdi, [rdi]
	jne	.label_202
	cmp	dword ptr [rdx + 8], 3
	sete	al
.label_202:
	mov	rbx, rdx
	nop	
	movzx	edx, al
	lea	rsi, [rsi]
	movzx	r8d, byte ptr [rbp - 0x1f0]
	mov	rbp, rbp
	xor	r15d, r15d
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x208]
	mov	rsi, qword ptr [rbp - 0xf0]
	call	create_hard_link
	test	al, al
	mov	rbp, rbp
	je	.label_227
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x104], r13d
	mov	rsp, rsp
	xor	r14d, r14d
	xor	eax, eax
	mov	qword ptr [rbp - 0x100], rax
	mov	dword ptr [rbp - 0x114], eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x130]
	mov	r10, rbx
	jmp	.label_229
.label_191:
	lea	rdx, [rbp - 0x340]
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	__lxstat
	test	eax, eax
	mov	rbp, rbp
	je	.label_239
	nop	
	call	__errno_location
	lea	rsi, [rsi]
	mov	r12d, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_198:
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	nop	
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	esi, r12d
.label_376:
	mov	rdx, r15
	lea	rsi, [rsi]
	call	error
	lea	rsi, [rsi]
	jmp	.label_253
.label_488:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x208], r15
	mov	r15b, 1
	xor	r14d, r14d
	mov	r12b, 1
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	qword ptr [rbp - 0x100], rax
	mov	dword ptr [rbp - 0x114], eax
	mov	rcx, qword ptr [rbp - 0x130]
	mov	r10, r13
	jmp	.label_229
.label_242:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
.label_309:
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_485:
	mov	rbp, rbp
	mov	rdx, rbx
	nop	
	call	error
.label_253:
	mov	rdx, qword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	mov	r10, qword ptr [rbp - 0x120]
	mov	rsp, rsp
	jmp	.label_173
.label_201:
	nop	
	cmp	esi, 0x8000
	je	.label_270
	lea	rsi, [rsi]
	cmp	esi, 0xa000
	mov	rsp, rsp
	je	.label_271
	mov	rsp, rsp
	mov	al, byte ptr [rdx + 0x14]
	mov	rsp, rsp
	test	al, al
	je	.label_271
.label_270:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1fc], esi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x104], r13d
	nop	
	mov	eax, dword ptr [rbp - 0x3b8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1e0], eax
	mov	rsp, rsp
	mov	al, byte ptr [rdx + 0x23]
	mov	byte ptr [rbp - 0x38], al
	mov	esi, 0x20000
	nop	
	cmp	dword ptr [rdx + 4], 2
	je	.label_277
	lea	rsi, [rsi]
	xor	esi, esi
.label_277:
	xor	eax, eax
	mov	rdi, r12
	call	open_safer
	mov	r13, r12
	mov	r12d, eax
	test	r12d, r12d
	js	.label_285
	nop	
	mov	dword ptr [rbp - 0x1e4], r15d
	mov	qword ptr [rbp - 0x208], r13
	lea	rdx, [rbp - 0xd8]
	mov	edi, 1
	mov	esi, r12d
	mov	rbp, rbp
	call	__fxstat
	mov	rbp, rbp
	test	eax, eax
	je	.label_298
	mov	rbp, rbp
	call	__errno_location
	lea	rsi, [rsi]
	mov	r14d, dword ptr [rax]
	xor	r15d, r15d
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.61
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x208]
.label_301:
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_310
.label_227:
	nop	
	mov	rdx, qword ptr [rbp - 0x130]
	lea	rsi, [rsi]
	mov	r10, rbx
	nop	
	jmp	.label_173
.label_239:
	mov	ecx, dword ptr [rbp - 0x328]
	mov	eax, ecx
	and	eax, 0x1c0
	lea	rsi, [rsi]
	cmp	eax, 0x1c0
	mov	rsp, rsp
	jne	.label_326
	mov	dword ptr [rbp - 0x114], ecx
	xor	ecx, ecx
	jmp	.label_322
.label_311:
	lea	rcx, [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd0]
	cmp	rax, qword ptr [rbp - 0x1c8]
	jne	.label_324
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x1d0]
	sete	dil
	jmp	.label_330
.label_326:
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	dword ptr [rbp - 0x114], ecx
	mov	rbp, rbp
	or	esi, 0x1c0
	mov	rdi, rbx
	mov	rbp, rbp
	call	chmod
	mov	cl, 1
	mov	rsp, rsp
	test	eax, eax
	je	.label_322
	call	__errno_location
	lea	rdi, [rdi]
	mov	r12d, dword ptr [rax]
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str_4
	jmp	.label_198
.label_322:
	nop	
	mov	qword ptr [rbp - 0x100], rcx
	mov	dword ptr [rbp - 0x104], r13d
	mov	rax, qword ptr [rbp + 0x18]
	lea	rsi, [rsi]
	cmp	byte ptr [rax], 0
	nop	
	mov	r10, qword ptr [rbp - 0x120]
	jne	.label_348
	mov	rdx, qword ptr [rbp - 0x340]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x338]
	mov	rdi, rbx
	mov	rbp, rbp
	mov	r14, r10
	call	remember_copied
	mov	r10, r14
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x18]
	mov	rsp, rsp
	mov	byte ptr [rax], 1
.label_348:
	lea	rdi, [rdi]
	cmp	byte ptr [r10 + 0x2e], 0
	nop	
	je	.label_278
	cmp	byte ptr [r10 + 0x18], 0
	nop	
	mov	r14, r10
	mov	r13, rbx
	mov	rsp, rsp
	je	.label_361
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.38
	mov	rbp, rbp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi, r13
	mov	rbp, rbp
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
	lea	rdi, [rdi]
	jmp	.label_334
.label_285:
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.60_0
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	r15, rax
	mov	rsp, rsp
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, r13
	jmp	.label_386
.label_370:
	nop	
	mov	ebx, r15d
	mov	rax, qword ptr [rbp - 0x1c8]
	cmp	rax, qword ptr [rbp - 0xd0]
	nop	
	jne	.label_391
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1d0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	r15, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	mov	rdi, r14
	call	free
	cmp	qword ptr [rbp - 0x38], r15
	mov	r15d, ebx
	mov	rsp, rsp
	je	.label_402
	jmp	.label_407
.label_271:
	mov	rsp, rsp
	cmp	esi, 0x5fff
	mov	rbp, rbp
	jle	.label_408
	mov	rsp, rsp
	cmp	esi, 0x6000
	je	.label_413
	lea	rsi, [rsi]
	cmp	esi, 0xa000
	je	.label_416
	cmp	esi, 0xc000
	nop	
	je	.label_413
	jmp	.label_199
.label_324:
	lea	rsi, [rsi]
	xor	edi, edi
.label_330:
	nop	
	mov	rsi, rcx
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc0]
	mov	rsp, rsp
	mov	ecx, eax
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	mov	r9, r14
	jne	.label_263
	mov	rsp, rsp
	mov	ecx, 0xf000
	lea	rdi, [rdi]
	and	ecx, dword ptr [rbp - 0x1b8]
	cmp	ecx, 0xa000
	jne	.label_263
	cmp	byte ptr [r9 + 0x15], 0
	je	.label_263
.label_280:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	r8, rbx
	lea	rsi, [rsi]
	jmp	.label_195
.label_263:
	nop	
	mov	rcx, qword ptr [r9]
	lea	rdi, [rdi]
	test	ecx, ecx
	je	.label_430
	mov	rdx, r15
	mov	r15, r9
	test	dil, dil
	je	.label_432
	mov	rdi, qword ptr [rbp - 0x208]
	mov	rsi, qword ptr [rbp - 0xf0]
	call	same_name
	test	al, al
	mov	ecx, dword ptr [rbp - 0x104]
	mov	rsp, rsp
	mov	r14, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	r9, r15
	mov	rsp, rsp
	mov	r8, rbx
	jne	.label_171
	lea	rdi, [rdi]
	xor	edi, edi
	jmp	.label_181
.label_430:
	cmp	byte ptr [r9 + 0x18], 0
	lea	rdi, [rdi]
	jne	.label_444
	cmp	byte ptr [r9 + 0x15], 0
	mov	rsp, rsp
	je	.label_445
.label_444:
	mov	ecx, 0xf000
	nop	
	and	ecx, dword ptr [r15 + 0x18]
	cmp	ecx, 0xa000
	mov	r8, rbx
	lea	rsi, [rsi]
	jne	.label_447
	xor	edi, edi
	mov	rbp, rbp
	jmp	.label_195
.label_432:
	and	eax, 0xf000
	lea	rsi, [rsi]
	xor	edi, edi
	cmp	eax, 0xa000
	mov	r9, r15
	mov	rsp, rsp
	mov	r8, rbx
	jne	.label_195
	movabs	rax, 0xffffffff00000000
	and	rcx, rax
	movabs	rax, 0x200000000
	cmp	rcx, rax
	lea	rsi, [rsi]
	je	.label_195
	lea	rsi, [rsi]
	mov	al, byte ptr [r9 + 0x18]
	test	al, al
	jne	.label_195
	mov	eax, 0xf000
	lea	rdi, [rdi]
	and	eax, dword ptr [rdx + 0x18]
	cmp	eax, 0xa000
	jne	.label_171
	xor	edi, edi
	mov	rsp, rsp
	jmp	.label_195
.label_447:
	mov	rbp, rbp
	test	dil, dil
	je	.label_268
	cmp	qword ptr [r15 + 0x10], 2
	nop	
	jb	.label_268
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1f0], rsi
	nop	
	mov	rbx, r8
	lea	rsi, [rsi]
	mov	r14, r9
	mov	rdi, qword ptr [rbp - 0x208]
	mov	rsi, qword ptr [rbp - 0xf0]
	nop	
	call	same_name
	test	al, al
	je	.label_470
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x1f0]
	mov	eax, dword ptr [rsi + 0x18]
	mov	r9, r14
.label_445:
	mov	rsp, rsp
	mov	r8, rbx
.label_268:
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0xa000
	mov	rsp, rsp
	je	.label_383
	mov	rbp, rbp
	mov	eax, 0xf000
	and	eax, dword ptr [r15 + 0x18]
	cmp	eax, 0xa000
	mov	rbp, rbp
	je	.label_383
	mov	rsp, rsp
	mov	rax, qword ptr [rsi + 8]
	cmp	rax, qword ptr [r15 + 8]
	nop	
	jne	.label_479
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	cmp	rax, qword ptr [r15]
	nop	
	jne	.label_480
	mov	dil, 1
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + 0x17], 0
	mov	rsp, rsp
	jne	.label_195
.label_383:
	mov	rbx, r8
	nop	
	cmp	byte ptr [r9 + 0x18], 0
	lea	rdi, [rdi]
	je	.label_158
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x3b8]
	cmp	eax, 0xa000
	mov	rbp, rbp
	jne	.label_158
	lea	rsi, [rsi]
	cmp	qword ptr [r15 + 0x10], 2
	jb	.label_158
	nop	
	mov	rdi, qword ptr [rbp - 0x208]
	mov	qword ptr [rbp - 0x120], r9
	mov	rbp, rbp
	mov	r14, rsi
	call	canonicalize_file_name
	mov	rsi, r14
	mov	r9, qword ptr [rbp - 0x120]
	test	rax, rax
	je	.label_158
	lea	rsi, [rsi]
	mov	r15, rax
	lea	rdi, [rdi]
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xf0]
	call	same_name
	mov	r14b, al
	mov	rdi, r15
	call	free
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x120]
	test	r14b, r14b
	mov	ecx, dword ptr [rbp - 0x104]
	lea	rsi, [rsi]
	mov	r14, qword ptr [rbp - 0x40]
	mov	r8, rbx
	mov	rbp, rbp
	jne	.label_171
	xor	edi, edi
	jmp	.label_181
.label_158:
	mov	rsp, rsp
	cmp	byte ptr [r9 + 0x2c], 0
	lea	rdi, [rdi]
	mov	r8, rbx
	lea	rdi, [rdi]
	je	.label_183
	mov	rsp, rsp
	mov	eax, 0xf000
	and	eax, dword ptr [r15 + 0x18]
	nop	
	cmp	eax, 0xa000
	jne	.label_183
	xor	edi, edi
	mov	rsp, rsp
	jmp	.label_195
.label_183:
	mov	rsp, rsp
	cmp	dword ptr [r9 + 4], 2
	jne	.label_171
	lea	rdi, [rdi]
	mov	r14, r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x120], r9
	mov	eax, 0xf000
	and	eax, dword ptr [rsi + 0x18]
	cmp	eax, 0xa000
	jne	.label_200
	mov	rbp, rbp
	lea	rdx, [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x208]
	nop	
	call	__xstat
	test	eax, eax
	mov	rbp, rbp
	jne	.label_215
	jmp	.label_219
.label_439:
	mov	rbx, r10
	lea	rsi, [rsi]
	call	__errno_location
	mov	r10, rbx
	mov	rbp, rbp
	mov	dword ptr [rax], 0x5f
	jmp	.label_224
.label_298:
	mov	rax, qword ptr [rbp - 0x3c8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0xd0]
	nop	
	jne	.label_231
	mov	rax, qword ptr [rbp - 0x3d0]
	cmp	rax, qword ptr [rbp - 0xd8]
	jne	.label_231
	nop	
	mov	edx, ebx
	and	edx, 0x1ff
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	test	al, al
	mov	r13b, al
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x1e4]
	mov	rsp, rsp
	jne	.label_192
	mov	dword ptr [rbp - 0x114], edx
	nop	
	mov	esi, 0x201
	mov	rax, qword ptr [rbp - 0x120]
	nop	
	cmp	byte ptr [rax + 0x23], 0
	jne	.label_237
	mov	esi, 1
.label_237:
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xf0]
	nop	
	call	open_safer
	mov	ebx, eax
	call	__errno_location
	mov	r15, rax
	mov	r14d, dword ptr [r15]
	mov	rcx, qword ptr [rbp - 0x120]
	cmp	byte ptr [rcx + 0x21], 0
	lea	rsi, [rsi]
	je	.label_245
	test	ebx, ebx
	jns	.label_249
	jmp	.label_289
.label_278:
	mov	rsp, rsp
	mov	r13, rbx
	jmp	.label_156
.label_431:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x104], r13d
.label_224:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x100], rax
	xor	r15d, r15d
	mov	dword ptr [rbp - 0x114], eax
	mov	rsp, rsp
	mov	r13, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	jmp	.label_156
.label_282:
	xor	edi, edi
	lea	rsi, [rsi]
	jmp	.label_195
.label_231:
	nop	
	xor	r15d, r15d
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.62
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x208]
	mov	rbp, rbp
	call	quotearg_style
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
.label_310:
	mov	rdx, rbx
	call	error
	xor	ebx, ebx
.label_164:
	lea	rsi, [rsi]
	mov	edi, r12d
	lea	rsi, [rsi]
	call	close
	test	eax, eax
	jns	.label_225
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.67
	mov	edx, 5
	call	dcgettext
	nop	
	mov	r12, rax
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x208]
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, r14d
	mov	rsp, rsp
	mov	rdx, r12
	lea	rdi, [rdi]
	call	error
.label_225:
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	free
	lea	rdi, [rdi]
	test	r15b, r15b
	nop	
	je	.label_253
	mov	rbp, rbp
	xor	r15d, r15d
	mov	r14b, 1
	mov	rbp, rbp
	mov	r12b, 1
	lea	rdi, [rdi]
	jmp	.label_294
.label_470:
	mov	r9, r14
	mov	rbp, rbp
	cmp	byte ptr [r9 + 0x18], 0
	mov	ecx, dword ptr [rbp - 0x104]
	mov	r14, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	r8, rbx
	mov	rbp, rbp
	jne	.label_171
	xor	edi, edi
	lea	rdi, [rdi]
	jmp	.label_181
.label_391:
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	free
.label_407:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	mov	rcx, rax
	nop	
	xor	edi, edi
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rdx, rbx
	mov	rsp, rsp
	call	error
	lea	rdi, [rdi]
	jmp	.label_321
.label_479:
	xor	edi, edi
	jmp	.label_195
.label_200:
	lea	rdi, [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	edx, 0x90
	call	memcpy
.label_219:
	mov	eax, 0xf000
	lea	rsi, [rsi]
	and	eax, dword ptr [r15 + 0x18]
	cmp	eax, 0xa000
	mov	rsp, rsp
	jne	.label_329
	lea	rdx, [rbp - 0x1d0]
	nop	
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0xf0]
	nop	
	call	__xstat
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_340
.label_215:
	xor	edi, edi
	mov	r9, qword ptr [rbp - 0x120]
	nop	
	mov	r8, r14
	mov	rbp, rbp
	jmp	.label_195
.label_408:
	mov	dword ptr [rbp - 0x104], r13d
	cmp	esi, 0x1000
	je	.label_344
	cmp	esi, 0x2000
	mov	r13d, dword ptr [rbp - 0x104]
	lea	rsi, [rsi]
	jne	.label_199
.label_413:
	nop	
	mov	dword ptr [rbp - 0x1fc], esi
	lea	rsi, [rsi]
	mov	edx, r15d
	not	edx
	lea	rsi, [rsi]
	and	edx, r13d
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x3a8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1d0], rax
	mov	rbp, rbp
	mov	r14d, r15d
	xor	r15d, r15d
	lea	rcx, [rbp - 0x1d0]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	rsi, rbx
	nop	
	call	__xmknod
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_362
	nop	
	call	__errno_location
	lea	rdi, [rdi]
	mov	r14d, dword ptr [rax]
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43_0
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	r15, rax
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsi, rbx
.label_386:
	call	quotearg_style
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, r14d
	jmp	.label_376
.label_361:
	xor	edi, edi
	nop	
	mov	esi, 4
	mov	rsp, rsp
	mov	rdx, r12
	lea	rsi, [rsi]
	call	quotearg_n_style
	mov	rbx, rax
	mov	edi, 1
	mov	esi, 4
	nop	
	mov	rdx, r13
	call	quotearg_n_style
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.57
	xor	eax, eax
	mov	rdx, rbx
	call	__printf_chk
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	nop	
	cmp	rax, qword ptr [rdi + 0x30]
	nop	
	jae	.label_392
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x28], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], 0xa
.label_334:
	mov	rbp, rbp
	mov	r10, r14
.label_156:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x1e0]
	mov	rsp, rsp
	test	rcx, rcx
	mov	rbp, rbp
	je	.label_400
	lea	rsi, [rsi]
	mov	al, byte ptr [r10 + 0x1c]
	test	al, al
	nop	
	je	.label_400
	nop	
	mov	rax, qword ptr [rcx]
	cmp	rax, qword ptr [rbp - 0x3d0]
	lea	rsi, [rsi]
	jne	.label_210
.label_400:
	movups	xmm0, xmmword ptr [r10 + 0x40]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x190], xmm0
	movups	xmm0, xmmword ptr [r10]
	lea	rdi, [rdi]
	movups	xmm1, xmmword ptr [r10 + 0x10]
	movups	xmm2, xmmword ptr [r10 + 0x20]
	nop	
	movups	xmm3, xmmword ptr [r10 + 0x30]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x1a0], xmm3
	movaps	xmmword ptr [rbp - 0x1b0], xmm2
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x1c0], xmm1
	movaps	xmmword ptr [rbp - 0x1d0], xmm0
	mov	esi, 2
	mov	rsp, rsp
	mov	rdi, r12
	mov	r14, r10
	call	savedir
	test	rax, rax
	mov	rsp, rsp
	je	.label_426
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1e4], r15d
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xf0], r13
	cmp	dword ptr [r14 + 4], 3
	mov	rbx, r14
	mov	rbp, rbp
	jne	.label_331
	nop	
	mov	dword ptr [rbp - 0x1cc], 2
.label_331:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x120], rbx
	mov	qword ptr [rbp - 0x208], r12
	mov	r15b, 1
	xor	ebx, ebx
	cmp	byte ptr [rax], 0
	je	.label_433
	mov	r12, rax
	mov	qword ptr [rbp - 0x1e0], rax
.label_472:
	mov	rbp, rbp
	mov	r14b, r15b
	xor	edx, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x208]
	mov	rsp, rsp
	mov	rsi, r12
	lea	rdi, [rdi]
	call	file_name_concat
	nop	
	mov	r15, rax
	mov	qword ptr [rbp - 0x38], r15
	lea	rsi, [rsi]
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	rsi, r12
	mov	rsp, rsp
	call	file_name_concat
	nop	
	mov	r13, rax
	nop	
	mov	rax, qword ptr [rbp + 0x18]
	mov	rbp, rbp
	mov	al, byte ptr [rax]
	mov	byte ptr [rbp - 0x2b0], al
	lea	rsi, [rsi]
	sub	rsp, 0x20
	lea	rdi, [rdi]
	lea	rax, [rbp - 0xd8]
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, rbp
	lea	rax, [rbp - 0x2b0]
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	qword ptr [rsp + 0x18], 0
	mov	dword ptr [rsp], 0
	mov	rdi, r15
	mov	rsi, r13
	mov	edx, dword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x3d0]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x1f0]
	lea	r9, [rbp - 0x1d0]
	call	copy_internal
	add	rsp, 0x20
	mov	r15b, al
	mov	rbp, rbp
	and	r15b, r14b
	mov	r14b, byte ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + 0x20]
	nop	
	or	byte ptr [rax], r14b
	mov	rbp, rbp
	mov	rdi, r13
	nop	
	call	free
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	free
	lea	rdi, [rdi]
	test	r14b, r14b
	jne	.label_364
	and	bl, 1
	nop	
	or	bl, byte ptr [rbp - 0x2b0]
	mov	rdi, r12
	call	strlen
	cmp	byte ptr [rax + r12 + 1], 0
	lea	r12, [rax + r12 + 1]
	jne	.label_472
	lea	rdi, [rdi]
	jmp	.label_364
.label_426:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1e4], r15d
	mov	qword ptr [rbp - 0x120], r14
	mov	qword ptr [rbp - 0xf0], r13
	lea	rsi, [rsi]
	call	__errno_location
	mov	r14d, dword ptr [rax]
	lea	rdi, [rdi]
	mov	rbx, r12
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x208], rbx
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.59_0
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
	mov	rsp, rsp
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	lea	rsi, [rsi]
	mov	rdx, r15
	call	error
	jmp	.label_492
.label_210:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1e4], r15d
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x208], r12
	mov	qword ptr [rbp - 0xf0], r13
	mov	r12b, 1
	mov	rbp, rbp
	xor	r15d, r15d
	xor	r14d, r14d
	mov	rcx, qword ptr [rbp - 0x130]
	jmp	.label_229
.label_433:
	mov	qword ptr [rbp - 0x1e0], rax
.label_364:
	mov	rdi, qword ptr [rbp - 0x1e0]
	call	free
	and	bl, 1
	mov	rax, qword ptr [rbp + 0x18]
	mov	byte ptr [rax], bl
	test	r15b, r15b
	setne	r12b
.label_492:
	mov	rsp, rsp
	xor	r15d, r15d
	xor	r14d, r14d
	jmp	.label_312
.label_329:
	lea	rdi, [rbp - 0x1d0]
	mov	edx, 0x90
	lea	rdi, [rdi]
	mov	rsi, r15
	call	memcpy
.label_340:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd0]
	cmp	rax, qword ptr [rbp - 0x1c8]
	mov	r9, qword ptr [rbp - 0x120]
	mov	r8, r14
	mov	rbp, rbp
	jne	.label_179
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x1d0]
	jne	.label_189
	cmp	byte ptr [r9 + 0x17], 0
	je	.label_171
	mov	eax, 0xf000
	and	eax, dword ptr [r15 + 0x18]
	nop	
	cmp	eax, 0xa000
	mov	rbp, rbp
	setne	dil
	jmp	.label_195
.label_171:
	lea	rdi, [rdi]
	xor	r13d, r13d
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.16_0
.label_347:
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 4
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x208]
	mov	rbp, rbp
	call	quotearg_n_style
	mov	rsp, rsp
	mov	r12, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	jmp	.label_217
.label_480:
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	jmp	.label_195
.label_179:
	xor	edi, edi
	jmp	.label_195
.label_362:
	mov	dword ptr [rbp - 0x1e4], r14d
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x104], r13d
	mov	qword ptr [rbp - 0x208], r12
	mov	rsp, rsp
	mov	r12b, 1
	mov	rbp, rbp
	jmp	.label_287
.label_416:
	mov	dword ptr [rbp - 0x1fc], esi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1e4], r15d
	mov	rsi, qword ptr [rbp - 0x3a0]
	mov	rdi, r12
	call	areadlink_with_size
	mov	r15, rax
	lea	rsi, [rsi]
	test	r15, r15
	je	.label_204
	mov	dword ptr [rbp - 0x104], r13d
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x208], r12
	mov	rax, qword ptr [rbp - 0x120]
	nop	
	movzx	ecx, byte ptr [rax + 0x16]
	lea	rsi, [rsi]
	mov	esi, 0xffffff9c
	mov	r8d, 0xffffffff
	mov	rsp, rsp
	mov	rdi, r15
	mov	rdx, qword ptr [rbp - 0xf0]
	call	force_symlinkat
	nop	
	mov	r14d, eax
	mov	rbp, rbp
	test	r14d, r14d
	jle	.label_248
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	test	al, al
	jne	.label_254
	mov	rax, qword ptr [rbp - 0x120]
	mov	rbp, rbp
	mov	al, byte ptr [rax + 0x2d]
	lea	rdi, [rdi]
	test	al, al
	je	.label_254
	lea	rdi, [rdi]
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x328]
	cmp	eax, 0xa000
	lea	rsi, [rsi]
	jne	.label_254
	mov	rbx, qword ptr [rbp - 0x310]
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsp, rsp
	call	strlen
	mov	rsp, rsp
	cmp	rbx, rax
	jne	.label_254
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	rsi, rbx
	call	areadlink_with_size
	mov	rbx, rax
	test	rbx, rbx
	je	.label_254
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rsi, r15
	call	strcmp
	mov	rsp, rsp
	mov	r12d, eax
	mov	rdi, rbx
	call	free
	mov	rbp, rbp
	test	r12d, r12d
	je	.label_248
.label_254:
	mov	rdi, r15
	call	free
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.45_0
	jmp	.label_272
.label_344:
	mov	dword ptr [rbp - 0x1fc], esi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x208], r12
	lea	rdi, [rdi]
	mov	r14d, r15d
	nop	
	mov	dword ptr [rbp - 0x1e4], r15d
	not	r14d
	nop	
	and	r14d, dword ptr [rbp - 0x104]
	mov	qword ptr [rbp - 0x1d0], 0
	xor	r15d, r15d
	mov	rsp, rsp
	lea	rcx, [rbp - 0x1d0]
	xor	edi, edi
	mov	rbx, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rsp, rsp
	mov	edx, r14d
	nop	
	call	__xmknod
	mov	r12b, 1
	test	eax, eax
	mov	rbp, rbp
	je	.label_287
	and	r14d, 0xffffefff
	mov	rdi, rbx
	nop	
	mov	esi, r14d
	call	mkfifo
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_417
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42_0
.label_272:
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rbx, rax
	nop	
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xf0]
	nop	
	jmp	.label_304
.label_199:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.47
	lea	rdi, [rdi]
	jmp	.label_309
.label_189:
	xor	edi, edi
.label_195:
	mov	ecx, dword ptr [rbp - 0x104]
	mov	r14, qword ptr [rbp - 0x40]
.label_181:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1f0], r12b
	mov	dword ptr [rbp - 0x104], ecx
	lea	rdi, [rdi]
	mov	ebx, ecx
	and	ebx, 0xf000
	cmp	ebx, 0x4000
	nop	
	je	.label_207
	nop	
	mov	al, byte ptr [r9 + 0x2d]
	lea	rsi, [rsi]
	test	al, al
	lea	rsi, [rsi]
	je	.label_207
	lea	rdi, [rdi]
	cmp	byte ptr [r9 + 0x1f], 0
	je	.label_422
	mov	dword ptr [rbp - 0x40], edi
	cmp	byte ptr [r9 + 0x18], 0
	je	.label_328
	nop	
	mov	qword ptr [rbp - 0x120], r9
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x340]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x3d0]
	nop	
	sete	al
	mov	rsp, rsp
	jmp	.label_296
.label_422:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x40], edi
	mov	r12, r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x120], r9
	xor	eax, eax
	mov	rdi, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	jmp	.label_336
.label_328:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x120], r9
	lea	rsi, [rsi]
	xor	eax, eax
.label_296:
	mov	rdi, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	r12, r8
	lea	rdi, [rdi]
	xor	al, 1
.label_336:
	mov	qword ptr [rbp - 0xf0], rdi
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	rsp, rsp
	lea	rsi, [rbp - 0x340]
	lea	rdx, [rbp - 0x3d0]
	call	utimecmp
	test	eax, eax
	mov	r9, qword ptr [rbp - 0x120]
	lea	rdi, [rdi]
	mov	r8, r12
	nop	
	mov	edi, dword ptr [rbp - 0x40]
	js	.label_207
	mov	r14, r9
	test	r13, r13
	je	.label_356
	mov	byte ptr [r13], 1
.label_356:
	mov	rdx, qword ptr [rbp - 0x3d0]
	mov	rsi, qword ptr [rbp - 0x3c8]
	mov	rbx, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	rdi, rbx
	call	remember_copied
	mov	rbp, rbp
	mov	r13b, 1
	lea	rsi, [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	mov	dl, byte ptr [rbp - 0x1f0]
	je	.label_243
	mov	r15, r14
	mov	rsp, rsp
	movzx	ecx, byte ptr [r15 + 0x2e]
	mov	rbp, rbp
	movzx	r8d, dl
	mov	rbp, rbp
	mov	edx, 1
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	r14, rax
	lea	rdi, [rdi]
	mov	rsi, rbx
	call	create_hard_link
	mov	r10, r15
	mov	rdx, r14
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xf8], rcx
	test	al, al
	mov	rbp, rbp
	jne	.label_243
.label_173:
	cmp	byte ptr [r10 + 0x25], 0
	nop	
	jne	.label_380
	test	rdx, rdx
	mov	rsp, rsp
	mov	rbx, qword ptr [rbp - 0xf0]
	mov	rax, qword ptr [rbp - 0xf8]
	jne	.label_384
	mov	rsi, qword ptr [rbp - 0x3d0]
	mov	rdi, qword ptr [rbp - 0x3c8]
	mov	r14, rax
	mov	r15, r10
	mov	rbp, rbp
	call	forget_created
	lea	rsi, [rsi]
	mov	r10, r15
	nop	
	mov	rax, r14
.label_384:
	lea	rsi, [rsi]
	mov	r15, r10
	nop	
	test	rax, rax
	je	.label_393
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsi, rbx
	mov	r14, rax
	lea	rdi, [rdi]
	call	rename
	mov	rbp, rbp
	test	eax, eax
	je	.label_399
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r13d, r13d
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.50
	jmp	.label_404
.label_207:
	mov	r12, r13
	mov	qword ptr [rbp - 0x40], r14
	cmp	byte ptr [r9 + 0x18], 0
	je	.label_410
	mov	rbp, rbp
	mov	eax, dword ptr [r9 + 8]
	mov	rbp, rbp
	cmp	eax, 2
	mov	rbp, rbp
	je	.label_415
	lea	rsi, [rsi]
	cmp	eax, 3
	je	.label_418
	cmp	eax, 4
	jne	.label_265
	nop	
	cmp	byte ptr [r9 + 0x2f], 0
	je	.label_265
	lea	rsi, [rsi]
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x328]
	cmp	eax, 0xa000
	mov	rbp, rbp
	je	.label_265
	mov	r15, r9
	mov	r13, r8
	mov	rsp, rsp
	mov	r14d, edi
	lea	rdi, [rdi]
	call	can_write_any_file
	mov	edi, r14d
	nop	
	mov	r8, r13
	lea	rdi, [rdi]
	mov	r9, r15
	lea	rdi, [rdi]
	test	al, al
	nop	
	jne	.label_265
	mov	r13, r8
	mov	rsp, rsp
	mov	esi, 2
	lea	rdi, [rdi]
	mov	r14d, edi
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	r15, r9
	lea	rdi, [rdi]
	call	euidaccess
	mov	edi, r14d
	mov	r8, r13
	lea	rsi, [rsi]
	mov	r9, r15
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_265
.label_418:
	nop	
	lea	rdx, [rbp - 0x340]
	lea	rdi, [rdi]
	mov	r14d, edi
	mov	rsp, rsp
	mov	rdi, r9
	mov	r13, r8
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	r15, r9
	call	overwrite_ok
	nop	
	mov	edi, r14d
	mov	r8, r13
	lea	rdi, [rdi]
	mov	r9, r15
	lea	rsi, [rsi]
	test	al, al
	jne	.label_265
.label_415:
	mov	r13b, 1
	mov	rbp, rbp
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_243
	mov	byte ptr [r12], 1
	jmp	.label_243
.label_393:
	xor	r13d, r13d
	jmp	.label_243
.label_410:
	lea	rsi, [rsi]
	cmp	ebx, 0x4000
	mov	rsp, rsp
	je	.label_265
	lea	rsi, [rsi]
	mov	eax, dword ptr [r9 + 8]
	mov	r13b, 1
	cmp	eax, 2
	mov	rbp, rbp
	je	.label_243
	lea	rsi, [rsi]
	cmp	eax, 3
	jne	.label_265
	mov	rsp, rsp
	mov	r12, r8
	lea	rdx, [rbp - 0x340]
	lea	rdi, [rdi]
	mov	r14d, edi
	mov	rdi, r9
	mov	r15, r9
	mov	rsi, qword ptr [rbp - 0xf0]
	call	overwrite_ok
	lea	rsi, [rsi]
	test	r14b, r14b
	jne	.label_243
	lea	rsi, [rsi]
	test	al, al
	nop	
	mov	r9, r15
	lea	rsi, [rsi]
	mov	r8, r12
	mov	rsp, rsp
	jne	.label_464
	lea	rdi, [rdi]
	jmp	.label_243
.label_265:
	mov	r13b, 1
	mov	rbp, rbp
	test	dil, dil
	jne	.label_243
.label_464:
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x328]
	cmp	eax, 0x4000
	mov	dl, byte ptr [rbp + 0x10]
	je	.label_468
	cmp	ebx, 0x4000
	lea	rdi, [rdi]
	jne	.label_471
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + 0x18], 0
	je	.label_473
	mov	rbp, rbp
	cmp	dword ptr [r9], 0
	je	.label_473
.label_471:
	lea	rdi, [rdi]
	test	dl, dl
	je	.label_468
	mov	rsp, rsp
	cmp	dword ptr [r9], 3
	je	.label_468
	mov	rdi, qword ptr [r9 + 0x40]
	mov	r12b, dl
	mov	rsp, rsp
	lea	rdx, [rbp - 0x340]
	mov	r15, r8
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	r14, r9
	call	seen_file
	mov	dl, r12b
	mov	rbp, rbp
	mov	r8, r15
	mov	r9, r14
	test	al, al
	lea	rdi, [rdi]
	je	.label_468
	xor	r13d, r13d
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.18_1
	jmp	.label_486
.label_399:
	nop	
	cmp	byte ptr [r15 + 0x2e], 0
	je	.label_491
	xor	r13d, r13d
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, r14
	nop	
	call	quotearg_n_style
	mov	r12, rax
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, 4
	mov	rdx, rbx
	nop	
	call	quotearg_n_style
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r15
	mov	rbp, rbp
	mov	rdx, r12
	lea	rdi, [rdi]
	call	__printf_chk
	jmp	.label_243
.label_468:
	cmp	ebx, 0x4000
	je	.label_176
	mov	rsp, rsp
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x328]
	lea	rsi, [rsi]
	cmp	eax, 0x4000
	jne	.label_176
	nop	
	cmp	byte ptr [r9 + 0x18], 0
	lea	rsi, [rsi]
	je	.label_185
	nop	
	cmp	dword ptr [r9], 0
	lea	rdi, [rdi]
	je	.label_185
.label_176:
	mov	r12b, byte ptr [r9 + 0x18]
	mov	rbp, rbp
	test	r12b, r12b
	lea	rdi, [rdi]
	je	.label_194
	mov	eax, 0xf000
	mov	ecx, dword ptr [rbp - 0x3b8]
	and	ecx, eax
	lea	rdi, [rdi]
	cmp	ecx, 0x4000
	jne	.label_194
	nop	
	and	eax, dword ptr [rbp - 0x328]
	cmp	eax, 0x4000
	je	.label_194
	lea	rsi, [rsi]
	cmp	dword ptr [r9], 0
	lea	rsi, [rsi]
	je	.label_205
.label_194:
	lea	rsi, [rsi]
	mov	r13, r8
	nop	
	mov	r14, qword ptr [r9]
	mov	rsp, rsp
	test	r14d, r14d
	mov	rsp, rsp
	je	.label_208
	nop	
	mov	rdi, qword ptr [rbp - 0x208]
	mov	rsp, rsp
	mov	r15, r9
	lea	rsi, [rsi]
	mov	bl, dl
	nop	
	call	last_component
	mov	dl, bl
	lea	rdi, [rdi]
	mov	r9, r15
	mov	rbp, rbp
	mov	r15, rax
	movzx	eax, byte ptr [r15]
	cmp	eax, 0x2e
	mov	rbp, rbp
	jne	.label_222
	mov	rsp, rsp
	movzx	ecx, byte ptr [r15 + 1]
	mov	eax, 2
	mov	rsp, rsp
	cmp	ecx, 0x2e
	je	.label_228
	mov	rsp, rsp
	mov	eax, 1
.label_228:
	lea	rdi, [rdi]
	mov	al, byte ptr [r15 + rax]
	test	al, al
	je	.label_208
	movzx	eax, al
	nop	
	cmp	eax, 0x2f
	je	.label_208
.label_222:
	test	r12b, r12b
	mov	rsp, rsp
	jne	.label_235
	mov	eax, 0xf000
	nop	
	and	eax, dword ptr [rbp - 0x328]
	mov	rsp, rsp
	cmp	eax, 0x4000
	jne	.label_235
.label_208:
	mov	eax, 0xf000
	lea	rdi, [rdi]
	and	eax, dword ptr [rbp - 0x328]
	mov	r15d, 0x11
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xf8], rcx
	cmp	eax, 0x4000
	jne	.label_236
	mov	ecx, dword ptr [rbp - 0x104]
	mov	r14, qword ptr [rbp - 0x40]
	mov	r12b, byte ptr [rbp - 0x1f0]
	lea	rsi, [rsi]
	mov	r8, r13
	mov	rsp, rsp
	jmp	.label_187
.label_491:
	lea	rdi, [rdi]
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_243
.label_235:
	lea	rsi, [rsi]
	cmp	r14d, 3
	lea	rsi, [rsi]
	je	.label_259
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsp, rsp
	mov	r12, r9
	nop	
	call	strlen
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0xf0]
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	mov	rbp, rbp
	call	strlen
	lea	rsi, [rsi]
	mov	r14, rax
	mov	rdi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf8], rdi
	mov	rsp, rsp
	call	strlen
	mov	r9, r12
	nop	
	mov	r12, rax
	mov	rbp, rbp
	lea	rax, [r12 + r14]
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x40], rax
	nop	
	jne	.label_259
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rdx, r14
	mov	rbx, r9
	nop	
	call	memcmp
	nop	
	mov	r9, rbx
	lea	rdi, [rdi]
	test	eax, eax
	mov	rsp, rsp
	jne	.label_259
	add	r15, r14
	nop	
	mov	rdi, r15
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xf8]
	mov	rbp, rbp
	mov	rbx, r9
	call	strcmp
	lea	rsi, [rsi]
	mov	r9, rbx
	test	eax, eax
	nop	
	jne	.label_259
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x120], r9
	mov	rbx, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	strlen
	lea	rsi, [rsi]
	mov	r14, rax
	mov	rsp, rsp
	lea	rdi, [r12 + r14 + 1]
	mov	rsp, rsp
	call	xmalloc
	mov	r15, rax
	mov	rcx, -1
	lea	rdi, [rdi]
	mov	rdi, r15
	nop	
	mov	rsi, rbx
	nop	
	mov	rdx, r14
	call	__mempcpy_chk
	nop	
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	strcpy
	mov	rsp, rsp
	lea	rdx, [rbp - 0x1d0]
	mov	edi, 1
	mov	rsi, r15
	mov	rsp, rsp
	call	__xstat
	lea	rdi, [rdi]
	mov	r14d, eax
	lea	rsi, [rsi]
	mov	rdi, r15
	call	free
	test	r14d, r14d
	mov	rsp, rsp
	jne	.label_303
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x3c8]
	nop	
	cmp	rax, qword ptr [rbp - 0x1c8]
	jne	.label_303
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x3d0]
	cmp	rax, qword ptr [rbp - 0x1d0]
	mov	r9, qword ptr [rbp - 0x120]
	nop	
	jne	.label_259
	mov	rbp, rbp
	cmp	byte ptr [r9 + 0x18], 0
	lea	rsi, [rsi]
	je	.label_313
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.21_1
	jmp	.label_317
.label_236:
	nop	
	test	r12b, r12b
	mov	r8, r13
	jne	.label_320
	nop	
	cmp	byte ptr [r9 + 0x15], 0
	jne	.label_323
	cmp	byte ptr [r9 + 0x22], 0
	mov	rbp, rbp
	je	.label_325
	cmp	qword ptr [rbp - 0x330], 1
	ja	.label_323
.label_325:
	nop	
	movabs	rax, 0xffffffff00000000
	mov	rbp, rbp
	and	r14, rax
	nop	
	movabs	rax, 0x200000000
	cmp	r14, rax
	mov	rsp, rsp
	jne	.label_320
	nop	
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x3b8]
	xor	ecx, ecx
	nop	
	mov	qword ptr [rbp - 0xf8], rcx
	lea	rdi, [rdi]
	cmp	eax, 0x8000
	lea	rdi, [rdi]
	je	.label_337
.label_323:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], r8
	mov	r12, r9
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	rdi, rbx
	nop	
	call	unlink
	test	eax, eax
	je	.label_349
	call	__errno_location
	lea	rdi, [rdi]
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	r14d, 2
	mov	rbp, rbp
	jne	.label_351
.label_349:
	lea	rdi, [rdi]
	mov	r14b, 1
	mov	r9, r12
	nop	
	cmp	byte ptr [r9 + 0x2e], 0
	lea	rdi, [rdi]
	je	.label_354
	mov	rsp, rsp
	xor	eax, eax
	mov	qword ptr [rbp - 0xf8], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25_0
	mov	rsp, rsp
	mov	edx, 5
	lea	rsi, [rsi]
	mov	r12, r9
	lea	rdi, [rdi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	r13, rax
	mov	rbp, rbp
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rbp, rbp
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rsi, r13
	lea	rdi, [rdi]
	mov	rdx, rcx
	call	__printf_chk
	mov	rsp, rsp
	mov	r9, r12
	mov	rbp, rbp
	jmp	.label_372
.label_473:
	lea	rsi, [rsi]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17_2
.label_486:
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	r15, rax
.label_256:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	call	quotearg_n_style
	lea	rsi, [rsi]
	mov	r12, rax
	mov	rbp, rbp
	mov	edi, 1
	mov	esi, 4
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x208]
.label_217:
	nop	
	call	quotearg_n_style
.label_274:
	mov	rbx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdx, r15
	nop	
	mov	rcx, r12
	lea	rdi, [rdi]
	mov	r8, rbx
	lea	rdi, [rdi]
	call	error
	nop	
	jmp	.label_243
.label_320:
	nop	
	xor	eax, eax
	mov	qword ptr [rbp - 0xf8], rax
.label_337:
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x104]
	mov	r14, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	r12b, byte ptr [rbp - 0x1f0]
	mov	rsp, rsp
	jmp	.label_187
.label_185:
	lea	rdi, [rdi]
	xor	r13d, r13d
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.19_1
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	jmp	.label_419
.label_205:
	xor	r13d, r13d
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.20_1
	mov	rbp, rbp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r15, rax
	nop	
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x208]
	mov	rsp, rsp
	call	quotearg_n_style_colon
	mov	r12, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0xf0]
	call	quotearg_n_style_colon
	jmp	.label_274
.label_351:
	lea	rdi, [rdi]
	mov	r12, rbx
	xor	r13d, r13d
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24_0
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, r12
	lea	rdi, [rdi]
	jmp	.label_440
.label_354:
	xor	eax, eax
	nop	
	mov	qword ptr [rbp - 0xf8], rax
.label_372:
	mov	ecx, dword ptr [rbp - 0x104]
	mov	r12b, byte ptr [rbp - 0x1f0]
	mov	r8, qword ptr [rbp - 0x40]
	jmp	.label_442
.label_303:
	mov	r9, qword ptr [rbp - 0x120]
.label_259:
	nop	
	mov	qword ptr [rbp - 0x120], r9
	mov	edx, dword ptr [r9]
	lea	rdi, [rdi]
	mov	edi, 0xffffff9c
	mov	rsi, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	call	backup_file_rename
	mov	r14, rax
	test	r14, r14
	mov	r12b, byte ptr [rbp - 0x1f0]
	lea	rsi, [rsi]
	je	.label_452
	mov	rdi, r14
	mov	rsp, rsp
	call	strlen
	mov	rdi, rsp
	lea	rdi, [rdi]
	lea	rdx, [rax + 1]
	add	rax, 0x10
	lea	rsi, [rsi]
	and	rax, 0xfffffffffffffff0
	lea	rsi, [rsi]
	sub	rdi, rax
	mov	qword ptr [rbp - 0xf8], rdi
	nop	
	mov	rsp, rdi
	mov	rsi, r14
	call	memcpy
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	call	free
	jmp	.label_459
.label_452:
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	r14d, dword ptr [rax]
	cmp	r14d, 2
	jne	.label_461
	lea	rsi, [rsi]
	xor	eax, eax
	mov	qword ptr [rbp - 0xf8], rax
.label_459:
	mov	rbp, rbp
	mov	r15d, 0x11
	mov	r14b, 1
	nop	
	mov	ecx, dword ptr [rbp - 0x104]
	mov	r9, qword ptr [rbp - 0x120]
	nop	
	mov	r8, r13
.label_442:
	lea	rsi, [rsi]
	mov	dl, byte ptr [rbp + 0x10]
	lea	rsi, [rsi]
	jmp	.label_187
.label_461:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23_1
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	r15, rax
	nop	
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xf0]
.label_440:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, r14d
	lea	rdi, [rdi]
	jmp	.label_359
.label_204:
	call	__errno_location
	lea	rdi, [rdi]
	mov	r14d, dword ptr [rax]
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.44_0
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, r12
.label_304:
	mov	rsp, rsp
	call	quotearg_style
	nop	
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_485
.label_248:
	lea	rsi, [rsi]
	mov	rdi, r15
	call	free
	mov	rax, qword ptr [rbp - 0x120]
	lea	rdi, [rdi]
	cmp	byte ptr [rax + 0x25], 0
	mov	rbx, rax
	lea	rsi, [rsi]
	jne	.label_490
	mov	rbp, rbp
	cmp	byte ptr [rbx + 0x1d], 0
	mov	rbp, rbp
	je	.label_163
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x3b4]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x3b0]
	mov	rdi, qword ptr [rbp - 0xf0]
	call	lchown
	test	eax, eax
	mov	rsp, rsp
	je	.label_163
	lea	rsi, [rsi]
	call	__errno_location
	mov	r14d, dword ptr [rax]
	nop	
	cmp	r14d, 0x16
	nop	
	je	.label_166
	mov	rbp, rbp
	cmp	r14d, 1
	jne	.label_170
.label_166:
	mov	rsp, rsp
	cmp	byte ptr [rbx + 0x1a], 0
	mov	rbp, rbp
	je	.label_163
.label_170:
	mov	rbp, rbp
	xor	eax, eax
	mov	qword ptr [rbp - 0x100], rax
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.46
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, r14d
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	call	error
	cmp	byte ptr [rbx + 0x24], 0
	mov	rsp, rsp
	je	.label_197
	mov	r10, rbx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	jmp	.label_173
.label_417:
	xor	r15d, r15d
.label_287:
	xor	r14d, r14d
.label_294:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x100], rax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x114], eax
.label_312:
	mov	rcx, qword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	mov	r10, qword ptr [rbp - 0x120]
.label_229:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	test	al, al
	mov	rsp, rsp
	jne	.label_213
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1fc], 0x4000
	je	.label_213
	mov	rbp, rbp
	mov	al, byte ptr [r10 + 0x14]
	test	al, al
	jne	.label_213
	cmp	byte ptr [r10 + 0x21], 0
	jne	.label_435
	lea	rsi, [rsi]
	cmp	byte ptr [r10 + 0x25], 0
	je	.label_213
.label_435:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x38], r15d
	cmp	byte ptr [r10 + 0x23], 0
	lea	rdi, [rdi]
	je	.label_230
	cmp	byte ptr [r10 + 0x26], 0
	lea	rdi, [rdi]
	je	.label_232
.label_230:
	mov	r13, rcx
	nop	
	mov	r15, r12
	lea	rsi, [rsi]
	mov	r12, r10
	mov	rbp, rbp
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.3_1
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 4
	nop	
	mov	rdx, qword ptr [rbp - 0xf0]
	call	quotearg_n_style
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x5f
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	error
	mov	r10, r12
	mov	r12, r15
	mov	rdx, r13
	cmp	byte ptr [r10 + 0x26], 0
	mov	r15d, dword ptr [rbp - 0x38]
	mov	rsp, rsp
	jne	.label_173
	nop	
	jmp	.label_213
.label_232:
	mov	rsp, rsp
	mov	rbx, r10
	lea	rsi, [rsi]
	call	__errno_location
	mov	r10, rbx
	mov	dword ptr [rax], 0x5f
	mov	r15d, dword ptr [rbp - 0x38]
.label_213:
	cmp	byte ptr [rbp + 0x10], 0
	lea	rsi, [rsi]
	je	.label_257
	cmp	qword ptr [r10 + 0x40], 0
	nop	
	je	.label_257
	mov	rbx, r10
	lea	rdx, [rbp - 0x1d0]
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	call	__lxstat
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	jne	.label_397
	nop	
	mov	rdi, qword ptr [rbx + 0x40]
	lea	rdx, [rbp - 0x1d0]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	call	record_file
.label_397:
	mov	r10, rbx
.label_257:
	cmp	dword ptr [rbp - 0x1fc], 0x4000
	mov	rbp, rbp
	je	.label_437
	mov	al, byte ptr [r10 + 0x17]
	test	al, al
	mov	rbp, rbp
	jne	.label_157
.label_437:
	test	r14b, r14b
	jne	.label_157
	lea	rsi, [rsi]
	cmp	byte ptr [r10 + 0x1f], 0
	mov	rbx, qword ptr [rbp - 0xf0]
	mov	r13, qword ptr [rbp - 0x40]
	je	.label_275
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], r12
	nop	
	mov	r12, r10
	movups	xmm0, xmmword ptr [rbp - 0x388]
	movaps	xmmword ptr [rbp - 0x1d0], xmm0
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rbp - 0x378]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x1c0], xmm0
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x1d0]
	mov	rdi, rbx
	nop	
	test	r15b, r15b
	lea	rdi, [rdi]
	je	.label_279
	lea	rsi, [rsi]
	call	lutimens
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_290
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_295
	jmp	.label_290
.label_279:
	call	utimens
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_290
	lea	rsi, [rsi]
	call	__errno_location
.label_295:
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbp - 0x1e0], eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.48
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, dword ptr [rbp - 0x1e0]
	mov	rdx, r14
	call	error
	lea	rsi, [rsi]
	cmp	byte ptr [r12 + 0x24], 0
	je	.label_290
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_243
.label_290:
	mov	r10, r12
	mov	r12, qword ptr [rbp - 0x38]
.label_275:
	lea	rdi, [rdi]
	test	r15b, r15b
	jne	.label_157
	mov	rbp, rbp
	cmp	byte ptr [r10 + 0x1d], 0
	je	.label_316
	test	r13b, r13b
	mov	rbp, rbp
	jne	.label_319
	mov	eax, dword ptr [rbp - 0x3b4]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x324]
	lea	rdi, [rdi]
	jne	.label_319
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3b0]
	cmp	eax, dword ptr [rbp - 0x320]
	mov	rbp, rbp
	je	.label_316
.label_319:
	lea	rsi, [rsi]
	test	r13b, r13b
	setne	al
	movzx	r8d, al
	mov	rbp, rbp
	lea	rcx, [rbp - 0x3d0]
	lea	r9, [rbp - 0x340]
	mov	edx, 0xffffffff
	mov	rdi, r10
	mov	rsp, rsp
	mov	r14, r10
	mov	rsi, rbx
	nop	
	call	set_owner
	cmp	eax, -1
	je	.label_341
	test	eax, eax
	jne	.label_342
	mov	rbp, rbp
	and	dword ptr [rbp - 0x104], 0xfffff1ff
.label_342:
	nop	
	mov	r10, r14
.label_316:
	cmp	byte ptr [r10 + 0x1e], 0
	jne	.label_373
	cmp	byte ptr [r10 + 0x18], 0
	mov	rsp, rsp
	je	.label_345
.label_373:
	lea	rdi, [rdi]
	mov	esi, 0xffffffff
	mov	rsp, rsp
	mov	ecx, 0xffffffff
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x208]
	mov	rdx, rbx
	nop	
	mov	r8d, dword ptr [rbp - 0x104]
	lea	rdi, [rdi]
	mov	rbx, r10
	call	copy_acl
	mov	rcx, rbx
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_157
	nop	
	cmp	byte ptr [rcx + 0x24], 0
	je	.label_157
	nop	
	xor	r13d, r13d
	jmp	.label_243
.label_341:
	mov	rsp, rsp
	xor	r13d, r13d
	jmp	.label_243
.label_345:
	lea	rsi, [rsi]
	cmp	byte ptr [r10 + 0x2b], 0
	lea	rdi, [rdi]
	je	.label_360
	mov	edx, dword ptr [r10 + 0x10]
	mov	esi, 0xffffffff
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	set_acl
	test	eax, eax
	je	.label_157
	xor	r13d, r13d
	jmp	.label_243
.label_360:
	mov	r15, rbx
	mov	rsp, rsp
	test	r13b, r13b
	je	.label_335
	mov	al, byte ptr [r10 + 0x20]
	test	al, al
	lea	rsi, [rsi]
	je	.label_335
	mov	eax, dword ptr [rbp - 0x104]
	and	eax, 0x7000
	mov	rsp, rsp
	or	eax, 0x8000
	mov	rbp, rbp
	cmp	eax, 0xc000
	lea	rdi, [rdi]
	mov	eax, 0x1ff
	mov	rsp, rsp
	mov	ebx, 0x1b6
	lea	rsi, [rsi]
	cmove	ebx, eax
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
	cmp	eax, -1
	mov	rsp, rsp
	jne	.label_375
	mov	rbp, rbp
	xor	edi, edi
	call	umask
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + cached_umask.mask]],  eax
	mov	rsp, rsp
	mov	edi, eax
	mov	rbp, rbp
	call	umask
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
.label_375:
	nop	
	not	eax
	mov	rbp, rbp
	and	ebx, eax
	mov	esi, 0xffffffff
	mov	rdi, r15
	mov	edx, ebx
	call	set_acl
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_157
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_243
.label_335:
	mov	rbp, rbp
	mov	rbx, r10
	cmp	dword ptr [rbp - 0x1e4], 0
	lea	rsi, [rsi]
	je	.label_398
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
	cmp	eax, -1
	lea	rdi, [rdi]
	jne	.label_406
	xor	edi, edi
	call	umask
	mov	dword ptr [dword ptr [rip + cached_umask.mask]],  eax
	mov	edi, eax
	call	umask
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
.label_406:
	nop	
	not	eax
	and	dword ptr [rbp - 0x1e4], eax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_223
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x1e4], 0
	je	.label_223
	lea	rsi, [rsi]
	test	r13b, r13b
	nop	
	je	.label_421
	mov	rsp, rsp
	lea	rdx, [rbp - 0x340]
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rsi, r15
	nop	
	call	__lxstat
	test	eax, eax
	je	.label_421
	call	__errno_location
	mov	r12d, dword ptr [rax]
	mov	rbp, rbp
	xor	r13d, r13d
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r15
	lea	rsi, [rsi]
	call	quotearg_style
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, r12d
	lea	rdi, [rdi]
	jmp	.label_438
.label_163:
	mov	r15b, 1
	xor	r14d, r14d
	lea	rsi, [rsi]
	mov	r12b, 1
	mov	rsp, rsp
	xor	eax, eax
	mov	qword ptr [rbp - 0x100], rax
.label_363:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x114], eax
	mov	r10, rbx
	mov	rcx, qword ptr [rbp - 0x130]
	jmp	.label_229
.label_245:
	test	ebx, ebx
	nop	
	js	.label_273
	lea	rsi, [rsi]
	mov	al, byte ptr [rcx + 0x25]
	test	al, al
	je	.label_273
.label_249:
	mov	rsp, rsp
	mov	r13d, ebx
	mov	rsp, rsp
	cmp	byte ptr [rcx + 0x23], 0
	mov	rbx, rcx
	nop	
	je	.label_241
	lea	rdi, [rdi]
	cmp	byte ptr [rbx + 0x26], 0
	nop	
	je	.label_454
.label_241:
	mov	dword ptr [r15], 0x5f
	nop	
	xor	eax, eax
	mov	qword ptr [rbp - 0x110], rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.3_1
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1f0], rax
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 4
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xf0]
	call	quotearg_n_style
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	eax, eax
	mov	qword ptr [rbp - 0x40], rax
	xor	edi, edi
	mov	esi, 0x5f
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x1f0]
	call	error
	mov	rsp, rsp
	mov	rcx, rbx
	cmp	byte ptr [rcx + 0x26], 0
	mov	rsp, rsp
	mov	ebx, r13d
	je	.label_273
	xor	r15d, r15d
	lea	rsi, [rsi]
	jmp	.label_155
.label_392:
	mov	rsp, rsp
	mov	esi, 0xa
	call	__overflow
	lea	rdi, [rdi]
	jmp	.label_334
.label_398:
	mov	dword ptr [rbp - 0x1e4], 0
	jmp	.label_223
.label_454:
	mov	dword ptr [r15], 0x5f
	mov	rsp, rsp
	mov	rcx, rbx
	mov	ebx, r13d
.label_273:
	mov	rbp, rbp
	xor	eax, eax
	mov	qword ptr [rbp - 0x40], rax
	test	ebx, ebx
	nop	
	js	.label_289
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x120], rcx
	mov	dword ptr [rbp - 0x100], 0
	nop	
	jmp	.label_478
.label_289:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	qword ptr [rbp - 0x40], rax
	nop	
	cmp	byte ptr [rcx + 0x16], 0
	mov	qword ptr [rbp - 0x120], rcx
	nop	
	mov	dword ptr [rbp - 0x100], 0
	je	.label_478
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xf0]
	call	unlink
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_487
	nop	
	mov	r14d, dword ptr [r15]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.24_0
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xf0]
	nop	
	call	quotearg_style
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rsp, rsp
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	error
	lea	rsi, [rsi]
	xor	r15d, r15d
	xor	ebx, ebx
	jmp	.label_164
.label_487:
	mov	rax, qword ptr [rbp - 0x120]
	cmp	byte ptr [rax + 0x2e], 0
	mov	rsp, rsp
	je	.label_159
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25_0
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	r14, rax
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xf0]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rsi, r14
	mov	rdx, rcx
	mov	rsp, rsp
	call	__printf_chk
.label_159:
	mov	r13b, 1
	mov	rax, qword ptr [rbp - 0x120]
	lea	rdi, [rdi]
	cmp	byte ptr [rax + 0x21], 0
	mov	ecx, dword ptr [rbp - 0x1e4]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x114]
	je	.label_192
	mov	ecx, 1
	mov	rdi, qword ptr [rbp - 0x208]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	r8, qword ptr [rbp - 0x120]
	mov	ebx, edx
	call	set_process_security_ctx
	nop	
	mov	edx, ebx
	mov	r13b, 1
	xor	r15d, r15d
	test	al, al
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x1e4]
	lea	rsi, [rsi]
	mov	al, 1
	nop	
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	mov	ebx, 0
	je	.label_164
	mov	rbp, rbp
	jmp	.label_192
.label_421:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x328]
	mov	dword ptr [rbp - 0x114], eax
	not	eax
	test	dword ptr [rbp - 0x1e4], eax
	je	.label_223
	mov	al, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x100], rax
.label_223:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x100]
	test	al, 1
	mov	rsp, rsp
	je	.label_157
	mov	esi, dword ptr [rbp - 0x114]
	lea	rsi, [rsi]
	or	esi, dword ptr [rbp - 0x1e4]
	mov	rsp, rsp
	mov	rdi, r15
	call	chmod
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_157
	nop	
	call	__errno_location
	nop	
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbp - 0x208], eax
	xor	r13d, r13d
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rsi, [rsi]
	mov	r14, rax
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, r15
	lea	rdi, [rdi]
	call	quotearg_style
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x208]
	lea	rsi, [rsi]
	mov	rdx, r14
	lea	rdi, [rdi]
	call	error
	mov	rbp, rbp
	cmp	byte ptr [rbx + 0x24], 0
	nop	
	jne	.label_243
.label_157:
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	setne	r13b
	mov	rbp, rbp
	jmp	.label_243
.label_313:
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.22_1
.label_317:
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	nop	
	mov	r15, rax
	mov	rsp, rsp
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_256
.label_197:
	mov	r15b, 1
	lea	rsi, [rsi]
	xor	r14d, r14d
	lea	rsi, [rsi]
	mov	r12b, 1
	jmp	.label_363
.label_380:
	call	restore_default_fscreatecon_or_die
.label_490:
	nop	
	call	restore_default_fscreatecon_or_die
.label_192:
	mov	dword ptr [rbp - 0x100], ecx
	mov	dword ptr [rbp - 0x114], edx
	mov	r15d, ecx
	not	r15d
	and	r15d, edx
	mov	esi, 0xc1
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	edx, r15d
	call	open_safer
	mov	ebx, eax
	call	__errno_location
	mov	qword ptr [rbp - 0x1f0], rax
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	test	ebx, ebx
	mov	rsp, rsp
	jns	.label_212
	cmp	r14d, 0x11
	jne	.label_212
	nop	
	mov	r14d, 0x11
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x120]
	nop	
	cmp	byte ptr [rax + 0x18], 0
	jne	.label_305
	lea	rdx, [rbp - 0x2b0]
	nop	
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0xf0]
	call	__lxstat
	mov	r14d, 0x11
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_212
	mov	rsp, rsp
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x298]
	mov	rbp, rbp
	cmp	eax, 0xa000
	jne	.label_212
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x120]
	cmp	byte ptr [rax + 0x30], 0
	mov	rsp, rsp
	je	.label_291
	lea	rsi, [rsi]
	mov	esi, 0x41
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	edx, r15d
	lea	rsi, [rsi]
	call	open_safer
	mov	ebx, eax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1f0]
	mov	r14d, dword ptr [rax]
.label_212:
	lea	rdi, [rdi]
	cmp	r14d, 0x15
	mov	rsp, rsp
	jne	.label_305
	test	ebx, ebx
	mov	rbp, rbp
	jns	.label_305
	lea	rdi, [rdi]
	mov	r14d, 0x15
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	cmp	byte ptr [rax], 0
	je	.label_305
	mov	rsp, rsp
	mov	r14, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	rdi, r14
	call	strlen
	nop	
	movzx	eax, byte ptr [rax + r14 - 1]
	mov	r14d, 0x14
	cmp	eax, 0x2f
	lea	rsi, [rsi]
	je	.label_305
	mov	r14d, 0x15
.label_305:
	mov	al, r13b
	mov	qword ptr [rbp - 0x40], rax
.label_478:
	test	ebx, ebx
	js	.label_493
	nop	
	lea	rdx, [rbp - 0x1d0]
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, ebx
	call	__fxstat
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	je	.label_338
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	mov	rbp, rbp
	xor	r15d, r15d
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.61
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	r13, rax
	nop	
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xf0]
	call	quotearg_style
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r13
	call	error
	nop	
	xor	eax, eax
	mov	qword ptr [rbp - 0x110], rax
	lea	rdi, [rdi]
	jmp	.label_155
.label_493:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	test	al, al
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x114]
	mov	ecx, dword ptr [rbp - 0x100]
	nop	
	jne	.label_352
	nop	
	cmp	r14d, 2
	mov	rbp, rbp
	jne	.label_352
	mov	r13b, 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x120]
	cmp	byte ptr [rax + 0x18], 0
	je	.label_192
.label_352:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.64
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xf0]
	nop	
	jmp	.label_301
.label_338:
	mov	dword ptr [rbp - 0x1f0], ebx
	xor	eax, eax
	mov	qword ptr [rbp - 0x110], rax
	mov	rbp, rbp
	cmp	byte ptr [rbp - 0x38], 0
	je	.label_240
	mov	rax, qword ptr [rbp - 0x120]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x38], 0
	nop	
	je	.label_357
	lea	rdi, [rdi]
	xor	eax, eax
	mov	qword ptr [rbp - 0x110], rax
	mov	rbp, rbp
	mov	esi, 0x40049409
	xor	eax, eax
	nop	
	mov	edi, dword ptr [rbp - 0x1f0]
	mov	rsp, rsp
	mov	edx, r12d
	call	ioctl
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_240
	mov	rax, qword ptr [rbp - 0x120]
	cmp	dword ptr [rax + 0x38], 2
	jne	.label_357
	call	__errno_location
	mov	r13d, dword ptr [rax]
	xor	r15d, r15d
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	nop	
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, 4
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	call	quotearg_n_style
	mov	r14, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x208]
	mov	rsp, rsp
	call	quotearg_n_style
	mov	rsp, rsp
	mov	rbx, rax
	mov	rbp, rbp
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, r14
	lea	rsi, [rsi]
	mov	r8, rbx
	nop	
	call	error
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x110], rax
	nop	
	jmp	.label_283
.label_357:
	call	getpagesize
	mov	rbp, rbp
	mov	ebx, eax
	mov	rax, qword ptr [rbp - 0x198]
	movabs	rsi, 0x2000000000000001
	nop	
	cmp	rax, rsi
	mov	ecx, 0x200
	lea	rsi, [rsi]
	mov	edx, 0x200
	cmovb	rdx, rax
	mov	rsp, rsp
	test	rax, rax
	cmovle	rdx, rcx
	mov	qword ptr [rbp - 0xe0], rdx
	lea	rdi, [rdi]
	cmp	rax, rsi
	mov	ecx, 0x20000
	mov	rbp, rbp
	cmovae	rdx, rcx
	lea	rsi, [rsi]
	test	rax, rax
	cmovle	rdx, rcx
	nop	
	cmp	rax, 0x20000
	cmovl	rdx, rcx
	mov	qword ptr [rbp - 0x48], rdx
	xor	r13d, r13d
	mov	rbp, rbp
	xor	esi, esi
	xor	edx, edx
	mov	rbp, rbp
	mov	ecx, 2
	mov	edi, r12d
	call	fdadvise
	lea	rdi, [rdi]
	mov	eax, 0xf000
	mov	r14d, dword ptr [rbp - 0xc0]
	and	r14d, eax
	cmp	r14d, 0x8000
	jne	.label_395
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	rdx, rcx
	sar	rdx, 0x3f
	mov	rbp, rbp
	shr	rdx, 0x37
	lea	rsi, [rsi]
	add	rdx, rcx
	sar	rdx, 9
	cmp	qword ptr [rbp - 0x98], rdx
	nop	
	setl	r13b
.label_395:
	movsxd	r15, ebx
	lea	rsi, [rsi]
	and	eax, dword ptr [rbp - 0x1b8]
	cmp	eax, 0x8000
	lea	rsi, [rsi]
	jne	.label_465
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x120]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0xc]
	mov	rbp, rbp
	cmp	ecx, 2
	mov	rbp, rbp
	sete	al
	cmp	ecx, 3
	lea	rdi, [rdi]
	mov	cl, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1d4], ecx
	je	.label_453
	lea	rsi, [rsi]
	and	al, r13b
	mov	rsp, rsp
	jne	.label_453
.label_465:
	mov	rax, qword ptr [rbp - 0xa0]
	nop	
	movabs	rcx, 0x2000000000000001
	mov	rbp, rbp
	mov	rdx, rcx
	cmp	rax, rdx
	lea	rdi, [rdi]
	mov	ecx, 0x200
	mov	rsp, rsp
	mov	edi, 0x200
	nop	
	cmovb	rdi, rax
	test	rax, rax
	lea	rsi, [rsi]
	cmovle	rdi, rcx
	cmp	rax, rdx
	mov	ecx, 0x20000
	cmovae	rdi, rcx
	test	rax, rax
	cmovle	rdi, rcx
	movabs	rbx, 0x7fffffffffffffff
	sub	rbx, r15
	mov	rsp, rsp
	cmp	rax, 0x20000
	lea	rdi, [rdi]
	cmovl	rdi, rcx
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	buffer_lcm
	mov	rcx, rax
	cmp	r14d, 0x8000
	jne	.label_482
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x48]
	nop	
	cmp	rax, rdx
	mov	rsp, rsp
	lea	rax, [rax + 1]
	cmovb	rdx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rdx
.label_482:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	lea	rsi, [rcx + rax - 1]
	xor	edx, edx
	mov	rax, rsi
	div	rcx
	mov	rsp, rsp
	mov	rax, rsi
	lea	rsi, [rsi]
	sub	rax, rdx
	mov	rbp, rbp
	cmp	rbx, rax
	cmovb	rax, rcx
	lea	rdi, [rdi]
	cmp	rsi, rdx
	mov	rbp, rbp
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1d4], 0
.label_453:
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	lea	rdi, [rax + r15]
	call	xmalloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x110], rax
	lea	rcx, [rax + r15 - 1]
	xor	edx, edx
	mov	rax, rcx
	mov	rsp, rsp
	div	r15
	mov	rsp, rsp
	sub	rcx, rdx
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	test	r13b, r13b
	je	.label_489
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xe8], rax
	mov	eax, dword ptr [rbp - 0x1d4]
	lea	rdi, [rdi]
	test	al, al
	nop	
	je	.label_390
	mov	rax, qword ptr [rbp - 0x120]
	nop	
	mov	eax, dword ptr [rax + 0xc]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x214], eax
	jmp	.label_162
.label_390:
	nop	
	mov	dword ptr [rbp - 0x214], 1
.label_162:
	lea	rsi, [rbp - 0x2b0]
	lea	rsi, [rsi]
	mov	edi, r12d
	mov	rsp, rsp
	call	extent_scan_init
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x140], rax
	cmp	dword ptr [rbp - 0x214], 3
	mov	eax, 0
	lea	rsi, [rsi]
	cmove	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0x1f8], rax
	mov	al, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x118], eax
	xor	r15d, r15d
	lea	rsi, [rsi]
	xor	ebx, ebx
.label_318:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x2b0]
	call	extent_scan_read
	nop	
	test	al, al
	lea	rdi, [rdi]
	je	.label_333
	cmp	qword ptr [rbp - 0x298], 0
	mov	r14d, 0
	nop	
	je	.label_403
.label_266:
	mov	rax, qword ptr [rbp - 0x288]
	mov	rbp, rbp
	lea	rcx, [r14 + r14*2]
	mov	rsp, rsp
	mov	r13, qword ptr [rax + rcx*8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + rcx*8 + 8]
	nop	
	mov	qword ptr [rbp - 0x38], rax
	lea	rax, [rax + r13]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0xe8]
	mov	rsp, rsp
	jle	.label_203
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	cmp	r13, rax
	mov	rbp, rbp
	cmovg	r13, rax
	sub	rax, r13
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
.label_203:
	nop	
	mov	r15, r13
	sub	r15, rbx
	sub	r15, qword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	jne	.label_451
	mov	dword ptr [rbp - 0x118], 0
	jmp	.label_267
.label_451:
	xor	edx, edx
	mov	edi, r12d
	lea	rsi, [rsi]
	mov	rsi, r13
	nop	
	call	lseek
	test	rax, rax
	js	.label_233
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x214], 1
	jne	.label_234
	cmp	qword ptr [word ptr [rip + write_zeros.zeros]],  0
	nop	
	jne	.label_174
	mov	al,  byte ptr [byte ptr [rip + write_zeros.nz]]
	nop	
	and	al, 1
	mov	edi, 0x20000
	mov	eax, 0x400
	lea	rdi, [rdi]
	cmovne	rdi, rax
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [word ptr [rip + write_zeros.zeros]],  rax
	test	rax, rax
	nop	
	jne	.label_174
	mov	qword ptr [word ptr [rip + write_zeros.zeros]], OFFSET FLAT:write_zeros.fallback
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + write_zeros.nz]],  1
.label_174:
	nop	
	test	r15, r15
	je	.label_483
	mov	al,  byte ptr [byte ptr [rip + write_zeros.nz]]
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	mov	ebx, 0x20000
	mov	eax, 0x400
	cmovne	rbx, rax
	lea	rdi, [rdi]
	cmp	rbx, r15
	cmovae	rbx, r15
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + write_zeros.zeros]]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x1f0]
	lea	rdi, [rdi]
	mov	rdx, rbx
	mov	rbp, rbp
	call	full_write
	mov	rbp, rbp
	cmp	rax, rbx
	lea	rsi, [rsi]
	mov	ecx, 0
	cmove	rcx, rbx
	mov	rbp, rbp
	sub	r15, rcx
	cmp	rax, rbx
	lea	rdi, [rdi]
	je	.label_174
	jmp	.label_262
.label_234:
	cmp	dword ptr [rbp - 0x214], 3
	sete	al
	nop	
	movzx	edx, al
	mov	edi, dword ptr [rbp - 0x1f0]
	nop	
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rcx, r15
	lea	rsi, [rsi]
	call	create_hole
	mov	cl, 1
	mov	dword ptr [rbp - 0x118], ecx
	test	al, al
	mov	rbp, rbp
	jne	.label_267
	jmp	.label_286
.label_483:
	nop	
	mov	dword ptr [rbp - 0x118], 0
.label_267:
	mov	rbp, rbp
	sub	rsp, 0x30
	mov	rbp, rbp
	lea	rax, [rbp - 0x121]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], rax
	nop	
	lea	rax, [rbp - 0x210]
	mov	qword ptr [rsp + 0x18], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rbp - 0x208]
	mov	qword ptr [rsp], rax
	mov	r9d, 1
	mov	edi, r12d
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x1f0]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	r8, qword ptr [rbp - 0x1f8]
	call	sparse_copy
	add	rsp, 0x30
	lea	rsi, [rsi]
	test	al, al
	je	.label_286
	mov	rcx, qword ptr [rbp - 0x210]
	nop	
	lea	r15, [rcx + r13]
	mov	al, byte ptr [rbp - 0x121]
	cmp	r15, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	je	.label_292
	nop	
	inc	r14d
	lea	rsi, [rsi]
	mov	r14d, r14d
	mov	rsp, rsp
	cmp	r14, qword ptr [rbp - 0x298]
	nop	
	mov	rbx, r13
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x140], rdx
	jb	.label_266
	test	rcx, rcx
	je	.label_306
	mov	dword ptr [rbp - 0x118], eax
.label_306:
	mov	rbx, r13
	jmp	.label_425
.label_292:
	mov	rsp, rsp
	test	rcx, rcx
	nop	
	je	.label_308
	mov	dword ptr [rbp - 0x118], eax
.label_308:
	nop	
	mov	byte ptr [rbp - 0x28f], 1
	mov	rbx, r13
	mov	rbp, rbp
	mov	r15, qword ptr [rbp - 0xe8]
.label_425:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x140], rax
.label_403:
	mov	rdi, qword ptr [rbp - 0x288]
	mov	rbp, rbp
	call	free
	mov	qword ptr [rbp - 0x288], 0
	mov	qword ptr [rbp - 0x298], 0
	mov	rbp, rbp
	cmp	byte ptr [rbp - 0x28f], 0
	je	.label_318
	mov	rsp, rsp
	jmp	.label_327
.label_262:
	lea	rsi, [rsi]
	call	__errno_location
	mov	r14d, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.70
	mov	rbp, rbp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbx, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xf0]
	call	quotearg_n_style_colon
.label_389:
	mov	rcx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, r14d
	lea	rsi, [rsi]
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	error
.label_286:
	mov	rdi, qword ptr [rbp - 0x288]
	nop	
	call	free
	mov	qword ptr [rbp - 0x288], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x298], 0
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_283
.label_291:
	nop	
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.63
	mov	rsp, rsp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbx, rax
	nop	
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xf0]
	nop	
	call	quotearg_style
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rbx
	call	error
	mov	al, r13b
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	xor	ebx, ebx
	jmp	.label_164
.label_233:
	lea	rsi, [rsi]
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.69
	nop	
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rbx, rax
	mov	rbp, rbp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x208]
	mov	rbp, rbp
	call	quotearg_style
	jmp	.label_389
.label_333:
	mov	rsp, rsp
	cmp	byte ptr [rbp - 0x28f], 0
	je	.label_379
.label_327:
	mov	r14, qword ptr [rbp - 0xe8]
	sub	r14, r15
	jg	.label_475
	mov	eax, dword ptr [rbp - 0x118]
	mov	rsp, rsp
	and	al, 1
	nop	
	je	.label_252
.label_475:
	cmp	dword ptr [rbp - 0x214], 1
	mov	rsp, rsp
	jne	.label_474
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [rip + write_zeros.zeros]],  0
	jne	.label_332
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + write_zeros.nz]]
	and	al, 1
	nop	
	mov	eax, 0x400
	mov	edi, 0x20000
	cmovne	rdi, rax
	lea	rsi, [rsi]
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [word ptr [rip + write_zeros.zeros]],  rax
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_332
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + write_zeros.zeros]], OFFSET FLAT:write_zeros.fallback
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + write_zeros.nz]],  1
.label_332:
	test	r14, r14
	je	.label_252
	nop	
	mov	al,  byte ptr [byte ptr [rip + write_zeros.nz]]
	and	al, 1
	mov	eax, 0x400
	mov	ebx, 0x20000
	cmovne	rbx, rax
	cmp	rbx, r14
	lea	rdi, [rdi]
	cmovae	rbx, r14
	mov	rsi,  qword ptr [word ptr [rip + write_zeros.zeros]]
	mov	edi, dword ptr [rbp - 0x1f0]
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	full_write
	nop	
	xor	ecx, ecx
	nop	
	cmp	rax, rbx
	nop	
	cmove	rcx, rbx
	sub	r14, rcx
	cmp	rax, rbx
	lea	rdi, [rdi]
	je	.label_332
	jmp	.label_180
.label_379:
	nop	
	cmp	byte ptr [rbp - 0x290], 0
	lea	rdi, [rdi]
	je	.label_423
.label_489:
	lea	rdi, [rdi]
	xor	r8d, r8d
	mov	eax, dword ptr [rbp - 0x1d4]
	test	al, al
	lea	rsi, [rsi]
	cmovne	r8, qword ptr [rbp - 0xe0]
	nop	
	mov	rax, qword ptr [rbp - 0x120]
	cmp	dword ptr [rax + 0xc], 3
	mov	rsp, rsp
	sete	al
	mov	rbp, rbp
	sub	rsp, 0x30
	lea	rcx, [rbp - 0x210]
	mov	qword ptr [rsp + 0x20], rcx
	lea	rcx, [rbp - 0x2b0]
	mov	qword ptr [rsp + 0x18], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rcx
	mov	rcx, qword ptr [rbp - 0x208]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rcx
	mov	qword ptr [rsp + 0x10], -1
	lea	rsi, [rsi]
	movzx	r9d, al
	mov	edi, r12d
	mov	esi, dword ptr [rbp - 0x1f0]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	sparse_copy
	nop	
	add	rsp, 0x30
	lea	rdi, [rdi]
	test	al, al
	je	.label_209
	lea	rsi, [rsi]
	cmp	byte ptr [rbp - 0x210], 0
	je	.label_240
	mov	rsi, qword ptr [rbp - 0x2b0]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x1f0]
	call	ftruncate
	lea	rdi, [rdi]
	test	eax, eax
	jns	.label_240
	jmp	.label_180
.label_474:
	mov	edi, dword ptr [rbp - 0x1f0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	call	ftruncate
	nop	
	test	eax, eax
	je	.label_252
.label_180:
	nop	
	call	__errno_location
	mov	r14d, dword ptr [rax]
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.66
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbx, rax
	nop	
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	call	quotearg_style
.label_371:
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, r14d
	mov	rdx, rbx
.label_369:
	nop	
	call	error
	lea	rdi, [rdi]
	jmp	.label_209
.label_252:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x214], 3
	lea	rsi, [rsi]
	jne	.label_240
	mov	rsp, rsp
	sub	qword ptr [rbp - 0xe8], r15
	jle	.label_240
	mov	esi, 3
	mov	edi, dword ptr [rbp - 0x1f0]
	mov	rdx, r15
	mov	rcx, qword ptr [rbp - 0xe8]
	nop	
	call	fallocate
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, rbp
	jns	.label_240
	call	__errno_location
	mov	rsp, rsp
	mov	ebx, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	ebx, 0x26
	mov	rbp, rbp
	je	.label_240
	lea	rdi, [rdi]
	cmp	ebx, 0x5f
	jne	.label_456
.label_240:
	mov	rax, qword ptr [rbp - 0x120]
	cmp	byte ptr [rax + 0x1f], 0
	mov	rsp, rsp
	je	.label_160
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rbp - 0x388]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x2b0], xmm0
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rbp - 0x378]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x2a0], xmm0
	lea	rdx, [rbp - 0x2b0]
	mov	edi, dword ptr [rbp - 0x1f0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	call	fdutimens
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_160
	mov	rbp, rbp
	call	__errno_location
	nop	
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.48
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xf0]
	call	quotearg_style
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	nop	
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	mov	rbp, rbp
	call	error
	mov	rax, qword ptr [rbp - 0x120]
	cmp	byte ptr [rax + 0x24], 0
	jne	.label_209
.label_160:
	mov	rax, qword ptr [rbp - 0x120]
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 0x1d], 0
	je	.label_178
	mov	eax, dword ptr [rbp - 0x3b4]
	cmp	eax, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	jne	.label_281
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x3b0]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x1b0]
	nop	
	je	.label_178
.label_281:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	test	al, al
	nop	
	setne	al
	movzx	r8d, al
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x3d0]
	lea	rsi, [rsi]
	lea	r9, [rbp - 0x1d0]
	mov	rdi, qword ptr [rbp - 0x120]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	edx, dword ptr [rbp - 0x1f0]
	lea	rsi, [rsi]
	call	set_owner
	mov	rbp, rbp
	cmp	eax, -1
	je	.label_209
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_178
	nop	
	and	dword ptr [rbp - 0x1e0], 0xfffff1ff
.label_178:
	mov	rax, qword ptr [rbp - 0x120]
	mov	rbp, rbp
	cmp	byte ptr [rax + 0x27], 0
	lea	rdi, [rdi]
	je	.label_214
	lea	rdi, [rdi]
	cmp	byte ptr [rbp - 0x1b8], 0
	mov	rbp, rbp
	js	.label_214
	nop	
	call	geteuid
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_214
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x1f0], 0
	js	.label_190
	nop	
	mov	esi, 0x180
	nop	
	mov	edi, dword ptr [rbp - 0x1f0]
	mov	rbp, rbp
	call	fchmod
	mov	rsp, rsp
	jmp	.label_358
.label_209:
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_283
.label_190:
	lea	rsi, [rsi]
	mov	esi, 0x180
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	call	chmod
.label_358:
	nop	
	test	eax, eax
	jne	.label_214
	mov	esi, dword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	not	esi
	and	esi, dword ptr [rbp - 0x114]
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1f0], 0
	js	.label_450
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x1f0]
	mov	rsp, rsp
	call	fchmod
	jmp	.label_214
.label_450:
	mov	rdi, qword ptr [rbp - 0xf0]
	call	chmod
.label_214:
	mov	rax, qword ptr [rbp - 0x120]
	cmp	byte ptr [rax + 0x1e], 0
	nop	
	jne	.label_247
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x120]
	cmp	byte ptr [rax + 0x18], 0
	je	.label_251
.label_247:
	mov	rdi, qword ptr [rbp - 0x208]
	mov	esi, r12d
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rbp - 0x1f0]
	mov	rbp, rbp
	mov	r8d, dword ptr [rbp - 0x1e0]
	mov	rsp, rsp
	call	copy_acl
	mov	r15b, 1
	test	eax, eax
	jne	.label_258
	jmp	.label_283
.label_251:
	mov	rax, qword ptr [rbp - 0x120]
	mov	rsp, rsp
	cmp	byte ptr [rax + 0x2b], 0
	lea	rdi, [rdi]
	je	.label_260
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x120]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax + 0x10]
	jmp	.label_264
.label_260:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	test	al, al
	lea	rdi, [rdi]
	je	.label_168
	mov	rax, qword ptr [rbp - 0x120]
	mov	al, byte ptr [rax + 0x20]
	mov	rsp, rsp
	test	al, al
	je	.label_168
	lea	rdi, [rdi]
	mov	edx,  dword ptr [dword ptr [rip + cached_umask.mask]]
	mov	rsp, rsp
	cmp	edx, -1
	jne	.label_269
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	call	umask
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + cached_umask.mask]],  eax
	mov	edi, eax
	call	umask
	lea	rdi, [rdi]
	mov	edx,  dword ptr [dword ptr [rip + cached_umask.mask]]
.label_269:
	not	edx
	and	edx, 0x1b6
.label_264:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	ebx, dword ptr [rbp - 0x1f0]
	mov	esi, ebx
	call	set_acl
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	sete	r15b
	jmp	.label_155
.label_168:
	mov	r15b, 1
	cmp	dword ptr [rbp - 0x100], 0
	nop	
	je	.label_283
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
	mov	rbp, rbp
	cmp	eax, -1
	jne	.label_221
	mov	rbp, rbp
	xor	edi, edi
	call	umask
	mov	dword ptr [dword ptr [rip + cached_umask.mask]],  eax
	mov	rsp, rsp
	mov	edi, eax
	call	umask
	nop	
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
.label_221:
	not	eax
	lea	rsi, [rsi]
	test	dword ptr [rbp - 0x100], eax
	je	.label_283
	cmp	dword ptr [rbp - 0x1f0], 0
	js	.label_300
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x1f0]
	nop	
	mov	esi, dword ptr [rbp - 0x114]
	mov	rbp, rbp
	call	fchmod
	jmp	.label_307
.label_423:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.68
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	call	dcgettext
	nop	
	mov	rbx, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x208]
	nop	
	call	quotearg_n_style_colon
	jmp	.label_371
.label_300:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	esi, dword ptr [rbp - 0x114]
	call	chmod
.label_307:
	nop	
	test	eax, eax
	je	.label_283
	mov	rsp, rsp
	call	__errno_location
	nop	
	mov	r14d, dword ptr [rax]
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_2
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	error
.label_258:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x120]
	mov	r15b, byte ptr [rax + 0x24]
	xor	r15b, 1
.label_283:
	mov	ebx, dword ptr [rbp - 0x1f0]
.label_155:
	mov	edi, ebx
	call	close
	test	eax, eax
	lea	rdi, [rdi]
	jns	.label_343
	call	__errno_location
	nop	
	mov	r14d, dword ptr [rax]
	nop	
	xor	r15d, r15d
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.67
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, r14d
	mov	rdx, rbx
	call	error
.label_343:
	mov	rsp, rsp
	mov	rbx, qword ptr [rbp - 0x110]
	jmp	.label_164
.label_456:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.71
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	call	quotearg_style
	mov	rbp, rbp
	mov	rcx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r14
	nop	
	jmp	.label_369
	nop	
	.section	.text
	.align	16
	#Procedure 0x409cc0

	.globl cp_options_default
	.type cp_options_default, @function
cp_options_default:
	push	rbx
	mov	rbx, rdi
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbx + 0x40], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx], xmm0
	mov	rbp, rbp
	call	geteuid
	test	eax, eax
	nop	
	sete	byte ptr [rbx + 0x1b]
	lea	rdi, [rdi]
	sete	byte ptr [rbx + 0x1a]
	mov	dword ptr [rbx + 0x34], 0xffffffff
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d10
	.globl chown_failure_ok
	.type chown_failure_ok, @function
chown_failure_ok:

	lea	rsi, [rsi]
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 0x16
	je	.label_495
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_494
.label_495:
	cmp	byte ptr [rbx + 0x1a], 0
	sete	al
	pop	rbx
	ret	
.label_494:
	xor	eax, eax
	mov	rbp, rbp
	pop	rbx
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d50
	.globl cached_umask
	.type cached_umask, @function
cached_umask:

	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
	cmp	eax, -1
	mov	rbp, rbp
	jne	.label_496
	nop	
	push	rax
	xor	edi, edi
	mov	rsp, rsp
	call	umask
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + cached_umask.mask]],  eax
	mov	rbp, rbp
	mov	edi, eax
	call	umask
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
	add	rsp, 8
.label_496:
	nop	
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409d90

	.globl create_hard_link
	.type create_hard_link, @function
create_hard_link:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	r12d, ecx
	lea	rdi, [rdi]
	mov	r15, rsi
	lea	rdi, [rdi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	movzx	r8d, r8b
	shl	r8d, 0xa
	mov	rsp, rsp
	mov	dword ptr [rsp], 0xffffffff
	lea	rsi, [rsi]
	movzx	r9d, dl
	lea	rsi, [rsi]
	mov	edi, 0xffffff9c
	mov	rsp, rsp
	mov	edx, 0xffffff9c
	mov	rsi, rbx
	mov	rcx, r15
	lea	rsi, [rsi]
	call	force_linkat
	mov	ebp, eax
	test	ebp, ebp
	mov	rsp, rsp
	jle	.label_498
	nop	
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 4
	lea	rsi, [rsi]
	mov	rdx, r15
	call	quotearg_n_style
	mov	rbp, rbp
	mov	r15, rax
	mov	edi, 1
	mov	rbp, rbp
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	lea	rdi, [rdi]
	mov	rbx, rax
	xor	edi, edi
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, ebp
	mov	rsp, rsp
	mov	rdx, r12
	lea	rdi, [rdi]
	mov	rcx, r15
	mov	r8, rbx
	nop	
	call	error
	jmp	.label_497
.label_498:
	mov	rbp, rbp
	test	ebp, ebp
	mov	rsp, rsp
	mov	r14b, 1
	jns	.label_497
	mov	rsp, rsp
	xor	r12b, 1
	lea	rsi, [rsi]
	jne	.label_497
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, r15
	mov	rbp, rbp
	call	quotearg_style
	mov	rbp, rbp
	mov	rcx, rax
	mov	rbp, rbp
	mov	edi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rsp, rsp
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	__printf_chk
.label_497:
	mov	rsp, rsp
	mov	al, r14b
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409ef0

	.globl overwrite_ok
	.type overwrite_ok, @function
overwrite_ok:
	push	r15
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	lea	rsi, [rsi]
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	rbx, rdx
	mov	rsp, rsp
	mov	r14, rsi
	mov	r12, rdi
	nop	
	mov	eax, 0xf000
	mov	rsp, rsp
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	je	.label_501
	nop	
	call	can_write_any_file
	test	al, al
	jne	.label_501
	mov	esi, 2
	mov	rdi, r14
	lea	rsi, [rsi]
	call	euidaccess
	mov	rbp, rbp
	test	eax, eax
	nop	
	je	.label_501
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbx + 0x18]
	mov	rsp, rsp
	lea	rsi, [rsp + 0x14]
	call	strmode
	nop	
	mov	byte ptr [rsp + 0x1e], 0
	mov	r15,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	cmp	byte ptr [r12 + 0x18], 0
	jne	.label_500
	lea	rsi, [rsi]
	cmp	byte ptr [r12 + 0x15], 0
	mov	rbp, rbp
	jne	.label_500
	mov	rbp, rbp
	cmp	byte ptr [r12 + 0x16], 0
	mov	rsp, rsp
	je	.label_503
.label_500:
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.54
.label_499:
	mov	rsp, rsp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	r12, rax
	nop	
	mov	r13,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	lea	rsi, [rsi]
	mov	r8, rax
	nop	
	mov	r9d, dword ptr [rbx + 0x18]
	lea	rsi, [rsi]
	and	r9d, 0xfff
	lea	rax, [rsp + 0x15]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	mov	esi, 1
	nop	
	xor	eax, eax
	nop	
	mov	rdi, r15
	mov	rdx, r12
	mov	rcx, r13
	lea	rdi, [rdi]
	call	__fprintf_chk
	mov	rsp, rsp
	jmp	.label_502
.label_501:
	mov	r15,  qword ptr [word ptr [rip + stderr]]
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.56
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r12, rax
	lea	rsi, [rsi]
	mov	r13,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 4
	mov	rsi, r14
	mov	rsp, rsp
	call	quotearg_style
	lea	rsi, [rsi]
	mov	rbx, rax
	nop	
	mov	esi, 1
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r15
	nop	
	mov	rdx, r12
	mov	rcx, r13
	lea	rsi, [rsi]
	mov	r8, rbx
	call	__fprintf_chk
.label_502:
	call	yesno
	lea	rsi, [rsi]
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	ret	
.label_503:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.55
	lea	rsi, [rsi]
	jmp	.label_499
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a0b0

	.globl emit_verbose
	.type emit_verbose, @function
emit_verbose:
	mov	rsp, rsp
	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14, rdx
	mov	rbx, rsi
	mov	rax, rdi
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 4
	mov	rdx, rax
	mov	rsp, rsp
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, rbx
	mov	rbp, rbp
	call	quotearg_n_style
	nop	
	mov	rcx, rax
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.57
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, r15
	lea	rsi, [rsi]
	call	__printf_chk
	mov	rsp, rsp
	test	r14, r14
	je	.label_504
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.58
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	edi, 4
	nop	
	mov	rsi, r14
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	nop	
	mov	rdx, rcx
	nop	
	call	__printf_chk
.label_504:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x28]
	mov	rsp, rsp
	cmp	rax, qword ptr [rdi + 0x30]
	nop	
	jae	.label_505
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	r15
	mov	rbp, rbp
	ret	
.label_505:
	lea	rdi, [rdi]
	mov	esi, 0xa
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	mov	rbp, rbp
	jmp	__overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a1b0

	.globl restore_default_fscreatecon_or_die
	.type restore_default_fscreatecon_or_die, @function
restore_default_fscreatecon_or_die:
	push	rax
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0x5f
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.75
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, 0x5f
	xor	eax, eax
	nop	
	mov	rdx, rcx
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a200

	.globl set_owner
	.type set_owner, @function
set_owner:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	r13d, edx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	r15, rdi
	mov	ebp, dword ptr [rcx + 0x1c]
	lea	rsi, [rsi]
	mov	r12d, dword ptr [rcx + 0x20]
	test	r8b, r8b
	jne	.label_506
	cmp	byte ptr [r15 + 0x1e], 0
	mov	rsp, rsp
	je	.label_514
	mov	edx, dword ptr [r9 + 0x18]
	add	rcx, 0x18
	jmp	.label_508
.label_514:
	mov	rax, qword ptr [r15 + 0x18]
	test	al, al
	nop	
	jne	.label_516
	lea	rsi, [rsi]
	cmp	byte ptr [r15 + 0x2b], 0
	je	.label_506
.label_516:
	lea	rdi, [rdi]
	mov	edx, dword ptr [r9 + 0x18]
	test	al, al
	mov	rsp, rsp
	setne	bl
	lea	rsi, [rsi]
	movabs	rsi, 0xff000000000000
	mov	rsp, rsp
	test	rax, rsi
	lea	rdi, [rdi]
	jne	.label_507
	test	bl, bl
	mov	rsp, rsp
	jne	.label_507
	lea	rcx, [r15 + 0x10]
	nop	
	jmp	.label_508
.label_507:
	add	rcx, 0x18
.label_508:
	nop	
	mov	eax, dword ptr [rcx]
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	or	ecx, 0xe00
	mov	rsp, rsp
	xor	ecx, 0x1ff
	and	ecx, edx
	lea	rdi, [rdi]
	test	cx, 0xfff
	je	.label_506
	lea	rsi, [rsi]
	and	edx, eax
	and	edx, 0x1c0
	mov	rdi, r14
	mov	rbp, rbp
	mov	esi, r13d
	lea	rdi, [rdi]
	call	qset_acl
	nop	
	test	eax, eax
	je	.label_506
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x16
	je	.label_520
	cmp	ebx, 1
	lea	rsi, [rsi]
	jne	.label_521
.label_520:
	lea	rdi, [rdi]
	cmp	byte ptr [r15 + 0x1b], 0
	je	.label_522
.label_521:
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.76
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsp, rsp
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	nop	
	call	quotearg_style
	nop	
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	lea	rdi, [rdi]
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	error
.label_522:
	mov	rsp, rsp
	movzx	eax, byte ptr [r15 + 0x24]
	nop	
	neg	eax
	lea	rsi, [rsi]
	jmp	.label_511
.label_506:
	mov	rsp, rsp
	cmp	r13d, -1
	lea	rsi, [rsi]
	je	.label_517
	mov	rsp, rsp
	mov	edi, r13d
	mov	esi, ebp
	mov	edx, r12d
	call	fchown
	mov	rbp, rbp
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	mov	rsp, rsp
	je	.label_511
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rax
	mov	ebx, dword ptr [rbp]
	cmp	ebx, 0x16
	mov	rsp, rsp
	je	.label_510
	cmp	ebx, 1
	jne	.label_513
.label_510:
	mov	rsp, rsp
	mov	esi, 0xffffffff
	mov	rbp, rbp
	mov	edi, r13d
	mov	edx, r12d
	mov	rsp, rsp
	call	fchown
	mov	rbp, rbp
	jmp	.label_515
.label_517:
	mov	rdi, r14
	mov	esi, ebp
	mov	edx, r12d
	call	lchown
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	je	.label_511
	call	__errno_location
	nop	
	mov	rbp, rax
	mov	rsp, rsp
	mov	ebx, dword ptr [rbp]
	lea	rsi, [rsi]
	cmp	ebx, 0x16
	je	.label_519
	cmp	ebx, 1
	jne	.label_513
.label_519:
	mov	esi, 0xffffffff
	mov	rdi, r14
	mov	edx, r12d
	call	lchown
.label_515:
	mov	rbp, rbp
	mov	dword ptr [rbp], ebx
.label_513:
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rbp]
	nop	
	cmp	ebx, 0x16
	je	.label_509
	cmp	ebx, 1
	mov	rsp, rsp
	jne	.label_512
.label_509:
	nop	
	cmp	byte ptr [r15 + 0x1a], 0
	je	.label_518
.label_512:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.46
	nop	
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, r14
	nop	
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebx
	lea	rdi, [rdi]
	mov	rdx, rbp
	call	error
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
	mov	rsp, rsp
	cmp	byte ptr [r15 + 0x24], 0
	jne	.label_511
.label_518:
	lea	rsi, [rsi]
	xor	eax, eax
.label_511:
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	nop	
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a4a0

	.globl sparse_copy
	.type sparse_copy, @function
sparse_copy:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	dword ptr [rsp + 0xc], r9d
	mov	qword ptr [rsp + 0x40], r8
	mov	r12, rcx
	mov	qword ptr [rsp + 0x28], rdx
	nop	
	mov	dword ptr [rsp + 0x24], esi
	mov	dword ptr [rsp + 0x54], edi
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0xa0]
	mov	r15, qword ptr [rsp + 0x90]
	mov	rsp, rsp
	mov	byte ptr [rax], 0
	mov	rsp, rsp
	mov	qword ptr [rcx], 0
	nop	
	test	r8, r8
	mov	rax, r12
	lea	rdi, [rdi]
	cmovne	rax, r8
	nop	
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rax
	nop	
	xor	r14d, r14d
	jmp	.label_532
.label_538:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rax], r10b
	mov	r15, qword ptr [rsp + 0x90]
	mov	r12, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x30]
.label_532:
	mov	qword ptr [rsp + 0x30], rdx
	cmp	rdx, r12
	mov	rbp, r12
	cmovb	rbp, rdx
	nop	
.label_533:
	lea	rsi, [rsi]
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_524
	mov	edi, dword ptr [rsp + 0x54]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rdx, rbp
	mov	rbp, rbp
	call	read
	mov	r13, rax
	mov	rbp, rbp
	test	r13, r13
	jns	.label_528
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	cmp	ebx, 4
	mov	rdx, qword ptr [rsp + 0x30]
	je	.label_533
	jmp	.label_539
	nop	word ptr [rax + rax]
.label_528:
	je	.label_524
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x48], r12
	sub	qword ptr [rsp + 0x30], r13
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	add	qword ptr [rax], r13
	mov	rbp, rbp
	mov	r10b, r14b
	nop	
	and	r10b, 1
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x28]
	nop	
	mov	r8, rax
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 0x18]
	nop	dword ptr [rax + rax]
.label_534:
	lea	rsi, [rsi]
	mov	r9b, r10b
	cmp	rbp, r13
	mov	r12, r13
	cmovb	r12, rbp
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x40], 0
	je	.label_527
	mov	rbp, rbp
	test	r12, r12
	nop	
	je	.label_527
	mov	rbp, rbp
	not	rbp
	mov	rsp, rsp
	mov	rcx, r13
	mov	rbp, rbp
	not	rcx
	mov	rsp, rsp
	cmp	rbp, rcx
	lea	rsi, [rsi]
	cmova	rcx, rbp
	nop	
	mov	rax, -2
	lea	rsi, [rsi]
	sub	rax, rcx
	mov	rbp, rbp
	mov	rcx, rsi
	lea	rsi, [rsi]
	mov	rbp, rcx
	nop	word ptr cs:[rax + rax]
.label_530:
	mov	rdx, rax
	mov	rbp, rbp
	cmp	byte ptr [rsi], 0
	jne	.label_523
	lea	rsi, [rsi]
	mov	r14b, 1
	test	rdx, rdx
	mov	rsp, rsp
	je	.label_526
	inc	rsi
	lea	rax, [rdx - 1]
	nop	
	test	dl, 0xf
	jne	.label_530
	mov	r14, rdi
	mov	rdi, rbp
	mov	rbx, r8
	mov	r15b, r9b
	mov	rsp, rsp
	call	memcmp
	lea	rsi, [rsi]
	mov	r9b, r15b
	mov	r8, rbx
	lea	rsi, [rsi]
	mov	rdi, r14
	test	eax, eax
	mov	rbp, rbp
	sete	r14b
	jmp	.label_526
.label_523:
	mov	rbp, rbp
	xor	r14d, r14d
.label_526:
	mov	rsi, rbp
.label_527:
	lea	rsi, [rsi]
	mov	r10b, r14b
	and	r10b, 1
	lea	rdi, [rdi]
	movzx	eax, r9b
	lea	rsi, [rsi]
	movzx	ecx, r10b
	nop	
	sete	dl
	cmp	ecx, eax
	setne	bl
	mov	rbp, rbp
	test	rdi, rdi
	setne	al
	cmp	r13, r12
	sete	cl
	and	cl, dl
	mov	rbp, rbp
	test	r12, r12
	mov	rbp, rbp
	sete	r15b
	lea	rsi, [rsi]
	or	r15b, cl
	and	al, bl
	jne	.label_535
	test	r15b, r15b
	jne	.label_535
	nop	
	movabs	rax, 0x7fffffffffffffff
	sub	rax, r12
	lea	rdi, [rdi]
	cmp	rdi, rax
	ja	.label_537
	add	rdi, r12
	mov	rbp, r12
	jmp	.label_541
.label_535:
	mov	rsp, rsp
	mov	bl, r10b
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], rsi
	lea	rsi, [rsi]
	test	al, 1
	mov	byte ptr [rsp + 0xb], al
	nop	
	mov	rbp, r12
	mov	eax, 0
	cmovne	rbp, rax
	mov	rsp, rsp
	add	rdi, rbp
	nop	
	test	r9b, r9b
	nop	
	mov	rcx, rdi
	je	.label_543
	mov	eax, dword ptr [rsp + 0xc]
	mov	rbp, rbp
	movzx	edx, al
	mov	edi, dword ptr [rsp + 0x24]
	mov	rsi, qword ptr [rsp + 0x98]
	call	create_hole
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_531
	mov	rbp, rbp
	jmp	.label_536
.label_543:
	nop	
	mov	edi, dword ptr [rsp + 0x24]
	lea	rsi, [rsi]
	mov	rsi, r8
	mov	rdx, rcx
	mov	qword ptr [rsp + 0x18], rcx
	call	full_write
	cmp	rax, qword ptr [rsp + 0x18]
	jne	.label_542
.label_531:
	lea	rsi, [rsi]
	test	r15b, r15b
	lea	rsi, [rsi]
	mov	r10b, bl
	lea	rsi, [rsi]
	je	.label_546
	mov	rsp, rsp
	test	r12, r12
	cmove	r13, r12
	test	byte ptr [rsp + 0xb], 1
	mov	eax, 0
	cmove	r12, rax
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rbp, rbp
	jmp	.label_544
	nop	dword ptr [rax + rax]
.label_546:
	nop	
	mov	rdi, r12
	lea	rdi, [rdi]
	mov	rbp, r12
.label_544:
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x38]
	mov	r8, rsi
.label_541:
	add	rsi, rbp
	nop	
	sub	r13, rbp
	jne	.label_534
	jmp	.label_538
.label_524:
	test	r14b, 1
	lea	rdi, [rdi]
	je	.label_540
	mov	eax, dword ptr [rsp + 0xc]
	mov	rsp, rsp
	movzx	edx, al
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 0x24]
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	call	create_hole
	mov	rsp, rsp
	test	al, al
	lea	rdi, [rdi]
	je	.label_545
.label_540:
	nop	
	mov	r14b, 1
	jmp	.label_529
.label_539:
	mov	rbp, rbp
	xor	r14d, r14d
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.72
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, r15
.label_525:
	call	quotearg_style
	nop	
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, ebx
	mov	rbp, rbp
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	error
	lea	rsi, [rsi]
	jmp	.label_529
.label_545:
	xor	r14d, r14d
	jmp	.label_529
.label_537:
	xor	r14d, r14d
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.74
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	nop	
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x90]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	lea	rsi, [rsi]
	jmp	.label_529
.label_536:
	lea	rsi, [rsi]
	xor	r14d, r14d
.label_529:
	mov	al, r14b
	add	rsp, 0x58
	mov	rbp, rbp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_542:
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	mov	ebx, dword ptr [rax]
	lea	rsi, [rsi]
	xor	r14d, r14d
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.73
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsp, rsp
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	jmp	.label_525
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a990

	.globl create_hole
	.type create_hole, @function
create_hole:
	push	rbp
	push	r15
	push	r14
	push	r12
	mov	rbp, rbp
	push	rbx
	lea	rsi, [rsi]
	mov	rbp, rcx
	nop	
	mov	r12d, edx
	mov	r14, rsi
	mov	rsp, rsp
	mov	ebx, edi
	mov	rbp, rbp
	mov	edx, 1
	lea	rsi, [rsi]
	mov	rsi, rbp
	mov	rbp, rbp
	call	lseek
	test	rax, rax
	js	.label_547
	mov	r15b, 1
	mov	rbp, rbp
	test	r12b, r12b
	mov	rbp, rbp
	je	.label_548
	sub	rax, rbp
	mov	esi, 3
	nop	
	mov	edi, ebx
	mov	rsp, rsp
	mov	rdx, rax
	mov	rbp, rbp
	mov	rcx, rbp
	mov	rsp, rsp
	call	fallocate
	nop	
	test	eax, eax
	jns	.label_548
	nop	
	call	__errno_location
	nop	
	mov	ebp, dword ptr [rax]
	cmp	ebp, 0x26
	je	.label_548
	nop	
	cmp	ebp, 0x5f
	je	.label_548
	xor	r15d, r15d
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.71
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebp
	mov	rdx, rbx
	jmp	.label_549
.label_547:
	call	__errno_location
	mov	rbp, rbp
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.69
	mov	rsp, rsp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	nop	
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	nop	
	xor	eax, eax
	mov	esi, ebx
	mov	rsp, rsp
	mov	rdx, rbp
.label_549:
	lea	rsi, [rsi]
	call	error
.label_548:
	mov	al, r15b
	nop	
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aae0

	.globl forget_created
	.type forget_created, @function
forget_created:
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rdi
	nop	
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 0x18], 0
	mov	rdi,  qword ptr [word ptr [rip + src_to_dest]]
	lea	rsi, [rsp + 8]
	call	hash_delete
	mov	rbx, rax
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_550
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, rbx
	nop	
	call	free
.label_550:
	lea	rdi, [rdi]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ab40

	.globl src_to_dest_free
	.type src_to_dest_free, @function
src_to_dest_free:
	mov	rbp, rbp
	push	rbx
	mov	rsp, rsp
	mov	rbx, rdi
	nop	
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	call	free
	mov	rdi, rbx
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ab70

	.globl src_to_dest_lookup
	.type src_to_dest_lookup, @function
src_to_dest_lookup:
	lea	rsi, [rsi]
	sub	rsp, 0x18
	mov	rbp, rbp
	mov	qword ptr [rsp], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + src_to_dest]]
	lea	rsi, [rsp]
	mov	rbp, rbp
	call	hash_lookup
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	eax, eax
	test	rcx, rcx
	nop	
	je	.label_551
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + 0x10]
.label_551:
	mov	rsp, rsp
	add	rsp, 0x18
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40abc0

	.globl remember_copied
	.type remember_copied, @function
remember_copied:
	push	r15
	push	r14
	mov	rsp, rsp
	push	r12
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	edi, 0x18
	lea	rsi, [rsi]
	call	xmalloc
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rbp, rbp
	call	xstrdup
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx], r15
	mov	rsp, rsp
	mov	qword ptr [rbx + 8], r14
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + src_to_dest]]
	mov	rbp, rbp
	mov	rsi, rbx
	call	hash_insert
	lea	rsi, [rsi]
	mov	r14, rax
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_553
	xor	eax, eax
	cmp	r14, rbx
	je	.label_552
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	call	free
	mov	rdi, rbx
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [r14 + 0x10]
.label_552:
	mov	rbp, rbp
	add	rsp, 8
	nop	
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	ret	
.label_553:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ac70

	.globl hash_init
	.type hash_init, @function
hash_init:
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	edi, 0x67
	lea	rdi, [rdi]
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:src_to_dest_hash
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:src_to_dest_compare
	nop	
	mov	r8d, OFFSET FLAT:src_to_dest_free
	call	hash_initialize
	mov	qword ptr [word ptr [rip + src_to_dest]],  rax
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_554
	mov	rsp, rsp
	pop	rax
	lea	rsi, [rsi]
	ret	
.label_554:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40acc0

	.globl src_to_dest_hash
	.type src_to_dest_hash, @function
src_to_dest_hash:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40acd0

	.globl src_to_dest_compare
	.type src_to_dest_compare, @function
src_to_dest_compare:
	mov	rax, qword ptr [rdi]
	mov	rbp, rbp
	cmp	rax, qword ptr [rsi]
	lea	rdi, [rdi]
	jne	.label_555
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	mov	rsp, rsp
	sete	al
	mov	rbp, rbp
	ret	
.label_555:
	mov	rsp, rsp
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ad00
	.globl forget_all
	.type forget_all, @function
forget_all:

	nop
	mov	rdi,  qword ptr [word ptr [rip + src_to_dest]]
	jmp	hash_free
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ad10

	.globl extent_scan_init
	.type extent_scan_init, @function
extent_scan_init:
	mov	dword ptr [rsi], edi
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x18], 0
	mov	qword ptr [rsi + 0x28], 0
	mov	qword ptr [rsi + 8], 0
	mov	byte ptr [rsi + 0x20], 0
	mov	byte ptr [rsi + 0x21], 0
	lea	rdi, [rdi]
	mov	dword ptr [rsi + 0x10], 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ad40

	.globl extent_scan_read
	.type extent_scan_read, @function
extent_scan_read:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rsp, rsp
	push	r13
	nop	
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x1008
	mov	r13, rdi
	mov	r15, qword ptr [r13 + 8]
	mov	r12, qword ptr [r13 + 0x28]
	movabs	rbp, 0x7fffffffffffffff
	xor	r14d, r14d
.label_557:
	mov	rbp, rbp
	xor	esi, esi
	nop	
	mov	edx, 0x1000
	lea	rbx, [rsp]
	mov	rdi, rbx
	nop	
	call	memset
	nop	
	mov	qword ptr [rsp], r15
	lea	rdi, [rdi]
	mov	eax, dword ptr [r13 + 0x10]
	mov	dword ptr [rsp + 0x10], eax
	mov	dword ptr [rsp + 0x18], 0x48
	not	r15
	mov	qword ptr [rsp + 8], r15
	lea	rsi, [rsi]
	mov	edi, dword ptr [r13]
	mov	esi, 0xc020660b
	xor	eax, eax
	nop	
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	ioctl
	test	eax, eax
	js	.label_559
	mov	ecx, dword ptr [rsp + 0x14]
	test	rcx, rcx
	je	.label_562
	mov	rax, qword ptr [r13 + 0x18]
	lea	rdi, [rdi]
	mov	rdx, rcx
	not	rdx
	cmp	rax, rdx
	ja	.label_567
	lea	rdi, [rdi]
	add	rax, rcx
	mov	qword ptr [r13 + 0x18], rax
	nop	
	movabs	rcx, 0x555555555555556
	cmp	rax, rcx
	lea	rdi, [rdi]
	mov	r15, rbp
	jae	.label_574
	mov	rdi, qword ptr [r13 + 0x28]
	sub	r12, rdi
	shl	rax, 3
	lea	rsi, [rax + rax*2]
	lea	rdi, [rdi]
	call	xrealloc
	mov	qword ptr [r13 + 0x28], rax
	nop	
	add	r12, rax
	mov	r8d, dword ptr [rsp + 0x14]
	test	r8d, r8d
	lea	rdi, [rdi]
	je	.label_570
	xor	r11d, r11d
	nop	dword ptr [rax]
.label_565:
	mov	ecx, r11d
	imul	rcx, rcx, 0x38
	mov	rdi, qword ptr [rsp + rcx + 0x20]
	nop	
	mov	rsi, qword ptr [rsp + rcx + 0x30]
	mov	rsp, rsp
	mov	rbp, r15
	lea	rsi, [rsi]
	sub	rbp, rsi
	cmp	rdi, rbp
	ja	.label_560
	test	r14d, r14d
	je	.label_575
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rsp + rcx + 0x48]
	mov	ebx, r9d
	lea	rdi, [rdi]
	and	ebx, 0xfffffffe
	lea	rsi, [rsi]
	mov	r10, qword ptr [r12 + 8]
	mov	rdx, qword ptr [r12]
	mov	rsp, rsp
	add	rdx, r10
	cmp	dword ptr [r12 + 0x10], ebx
	lea	rsi, [rsi]
	jne	.label_572
	cmp	rdx, rdi
	jne	.label_572
	mov	rsp, rsp
	add	r10, rsi
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 8], r10
	mov	rbp, rbp
	mov	dword ptr [r12 + 0x10], r9d
	jmp	.label_563
	nop	dword ptr [rax]
.label_575:
	mov	rdx, qword ptr [r13 + 8]
	mov	rbp, rbp
	cmp	rdx, rdi
	lea	rsi, [rsi]
	ja	.label_568
	mov	r9d, dword ptr [rsp + rcx + 0x48]
	mov	rbp, rbp
	jmp	.label_566
	nop	dword ptr [rax]
.label_572:
	lea	rsi, [rsi]
	cmp	rdx, rdi
	nop	
	jbe	.label_566
.label_568:
	mov	rsp, rsp
	mov	rbp, rdx
	mov	rbp, rbp
	sub	rbp, rdi
	sub	rsi, rbp
	lea	rsi, [rsi]
	ja	.label_558
	lea	rdi, [rdi]
	lea	rdi, [rsp + rcx + 0x20]
	nop	
	lea	rcx, [rsp + rcx + 0x30]
	mov	qword ptr [rdi], rdx
	mov	qword ptr [rcx], rsi
	dec	r11d
	mov	rsp, rsp
	jmp	.label_563
	nop	dword ptr [rax]
.label_566:
	mov	rsp, rsp
	mov	ecx, r14d
	lea	rdi, [rdi]
	lea	rcx, [rcx + rcx*2]
	lea	r12, [rax + rcx*8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx*8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx*8 + 8], rsi
	lea	rsi, [rsi]
	mov	dword ptr [rax + rcx*8 + 0x10], r9d
	inc	r14d
.label_563:
	inc	r11d
	cmp	r11d, r8d
	nop	
	jb	.label_565
.label_570:
	lea	rsi, [rsi]
	test	byte ptr [r12 + 0x10], 1
	nop	
	je	.label_571
	mov	byte ptr [r13 + 0x21], 1
.label_571:
	mov	cl, byte ptr [r13 + 0x21]
	nop	
	cmp	r14d, 0x49
	jb	.label_576
	lea	rsi, [rsi]
	test	cl, cl
	mov	rsp, rsp
	jne	.label_564
	dec	r14d
	lea	rcx, [r14 + r14*2]
	lea	r12, [rax + rcx*8 - 0x18]
	mov	rbp, rbp
	mov	qword ptr [r13 + 0x18], r14
	jmp	.label_561
	nop	word ptr [rax + rax]
.label_576:
	lea	rdi, [rdi]
	mov	eax, r14d
	nop	
	mov	qword ptr [r13 + 0x18], rax
	test	cl, cl
	mov	rbp, rbp
	jne	.label_573
.label_561:
	mov	rbp, r15
	mov	r15, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	add	r15, qword ptr [r12]
	mov	qword ptr [r13 + 8], r15
	mov	al, 1
	cmp	r14d, 0x48
	jb	.label_557
	jmp	.label_556
.label_558:
	cmp	qword ptr [r13 + 8], 0
	je	.label_569
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_556
.label_559:
	nop	
	cmp	qword ptr [r13 + 8], 0
	je	.label_569
	nop	
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_556
.label_569:
	mov	byte ptr [r13 + 0x20], 1
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_556
.label_562:
	mov	rsp, rsp
	mov	byte ptr [r13 + 0x21], 1
	cmp	qword ptr [r13 + 8], 0
	setne	al
	mov	rbp, rbp
	jmp	.label_556
.label_564:
	lea	rsi, [rsi]
	mov	eax, r14d
	mov	qword ptr [r13 + 0x18], rax
	mov	al, 1
	nop	
	jmp	.label_556
.label_573:
	mov	al, 1
.label_556:
	lea	rdi, [rdi]
	add	rsp, 0x1008
	pop	rbx
	nop	
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
.label_560:
	mov	edi, OFFSET FLAT:.str.2_2
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 0x8d
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.extent_scan_read
	call	__assert_fail
.label_567:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_5
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 0x7e
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.extent_scan_read
	call	__assert_fail
.label_574:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b090

	.globl force_linkat
	.type force_linkat, @function
force_linkat:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	nop	
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x128
	nop	
	mov	ebp, r9d
	mov	r15d, r8d
	mov	r12, rcx
	mov	rbp, rbp
	mov	ebx, edx
	mov	r13d, edi
	mov	r14d, dword ptr [rsp + 0x160]
	nop	
	test	r14d, r14d
	jns	.label_579
	lea	rdi, [rdi]
	mov	edi, r13d
	mov	qword ptr [rsp + 0x120], rsi
	lea	rdi, [rdi]
	mov	edx, ebx
	nop	
	mov	rcx, r12
	mov	r8d, r15d
	call	linkat
	xor	r14d, r14d
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	je	.label_578
	call	__errno_location
	lea	rdi, [rdi]
	mov	r14d, dword ptr [rax]
	nop	
	mov	rsi, qword ptr [rsp + 0x120]
.label_579:
	cmp	r14d, 0x11
	nop	
	jne	.label_578
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x120], rsi
	xor	bpl, 1
	mov	rsp, rsp
	jne	.label_578
	mov	rsp, rsp
	mov	rdi, r12
	nop	
	call	last_component
	nop	
	mov	rbp, rax
	sub	rbp, r12
	lea	rdi, [rbp + 9]
	nop	
	mov	r14d, r15d
	cmp	rdi, 0x101
	lea	rsi, [rsi]
	jae	.label_584
	mov	rsp, rsp
	lea	r15, [rsp]
	lea	rsi, [rsi]
	jmp	.label_581
.label_584:
	call	malloc
	lea	rsi, [rsi]
	mov	r15, rax
	mov	rsp, rsp
	test	r15, r15
	nop	
	je	.label_582
.label_581:
	nop	
	mov	rcx, -1
	mov	rsp, rsp
	mov	rdi, r15
	mov	rbp, rbp
	mov	rsi, r12
	mov	rdx, rbp
	call	__mempcpy_chk
	lea	rdi, [rdi]
	movabs	rcx, 0x5858585858587543
	nop	
	mov	qword ptr [rax], rcx
	mov	rbp, rbp
	mov	byte ptr [rax + 8], 0
	lea	rsi, [rsi]
	test	r15, r15
	je	.label_582
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x108], r13d
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x120]
	mov	qword ptr [rsp + 0x110], rax
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x118], ebx
	mov	dword ptr [rsp + 0x11c], r14d
	lea	rdi, [rdi]
	lea	rdx, [rsp + 0x108]
	mov	rsp, rsp
	xor	esi, esi
	mov	ecx, OFFSET FLAT:try_link
	mov	r8d, 6
	mov	rdi, r15
	call	try_tempname_len
	test	eax, eax
	je	.label_577
	call	__errno_location
	mov	r14d, dword ptr [rax]
	jmp	.label_580
.label_582:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	jmp	.label_578
.label_577:
	mov	edi, ebx
	lea	rdi, [rdi]
	mov	rsi, r15
	lea	rdi, [rdi]
	mov	edx, ebx
	lea	rsi, [rsi]
	mov	rcx, r12
	call	renameat
	lea	rsi, [rsi]
	mov	r14d, 0xffffffff
	mov	rbp, rbp
	test	eax, eax
	je	.label_583
	call	__errno_location
	mov	r14d, dword ptr [rax]
.label_583:
	xor	edx, edx
	mov	edi, ebx
	mov	rsi, r15
	call	unlinkat
.label_580:
	lea	rsi, [rsi]
	lea	rax, [rsp]
	cmp	r15, rax
	je	.label_578
	mov	rdi, r15
	call	free
.label_578:
	mov	eax, r14d
	lea	rsi, [rsi]
	add	rsp, 0x128
	mov	rbp, rbp
	pop	rbx
	nop	
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b2a0

	.globl try_link
	.type try_link, @function
try_link:
	mov	rax, rdi
	mov	edi, dword ptr [rsi]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	mov	rsp, rsp
	mov	r8, rdx
	mov	rsp, rsp
	shr	r8, 0x20
	mov	rsi, rcx
	mov	rcx, rax
	jmp	linkat
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b2d0

	.globl force_symlinkat
	.type force_symlinkat, @function
force_symlinkat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x118
	mov	rsp, rsp
	mov	ebp, r8d
	mov	ebx, ecx
	mov	r13, rdx
	lea	rdi, [rdi]
	mov	r14d, esi
	mov	rsp, rsp
	mov	r15, rdi
	mov	rbp, rbp
	test	ebp, ebp
	lea	rdi, [rdi]
	jns	.label_586
	mov	rdi, r15
	mov	rsp, rsp
	mov	esi, r14d
	mov	rdx, r13
	mov	rbp, rbp
	call	symlinkat
	lea	rdi, [rdi]
	xor	ebp, ebp
	mov	rsp, rsp
	test	eax, eax
	nop	
	je	.label_585
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	mov	ebp, dword ptr [rax]
.label_586:
	mov	rbp, rbp
	cmp	ebp, 0x11
	lea	rsi, [rsi]
	jne	.label_585
	xor	bl, 1
	jne	.label_585
	mov	rdi, r13
	call	last_component
	mov	rbx, rax
	sub	rbx, r13
	lea	rdi, [rbx + 9]
	cmp	rdi, 0x101
	jae	.label_587
	mov	rbp, rbp
	lea	r12, [rsp]
	lea	rsi, [rsi]
	jmp	.label_590
.label_587:
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_589
.label_590:
	mov	rcx, -1
	mov	rbp, rbp
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rsi, r13
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	__mempcpy_chk
	lea	rdi, [rdi]
	movabs	rcx, 0x5858585858587543
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	mov	byte ptr [rax + 8], 0
	test	r12, r12
	je	.label_589
	mov	qword ptr [rsp + 0x108], r15
	mov	dword ptr [rsp + 0x110], r14d
	mov	rsp, rsp
	lea	rdx, [rsp + 0x108]
	xor	esi, esi
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:try_symlink
	mov	r8d, 6
	mov	rdi, r12
	mov	rbp, rbp
	call	try_tempname_len
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_591
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	jmp	.label_588
.label_589:
	mov	rsp, rsp
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_585
.label_591:
	nop	
	mov	edi, r14d
	lea	rdi, [rdi]
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	edx, r14d
	mov	rcx, r13
	call	renameat
	mov	rbp, rbp
	mov	ebp, 0xffffffff
	test	eax, eax
	je	.label_588
	lea	rdi, [rdi]
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rsp, rsp
	xor	edx, edx
	mov	edi, r14d
	mov	rsi, r12
	lea	rsi, [rsi]
	call	unlinkat
.label_588:
	mov	rsp, rsp
	lea	rax, [rsp]
	cmp	r12, rax
	mov	rbp, rbp
	je	.label_585
	lea	rdi, [rdi]
	mov	rdi, r12
	lea	rsi, [rsi]
	call	free
.label_585:
	mov	rsp, rsp
	mov	eax, ebp
	add	rsp, 0x118
	nop	
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	nop	
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	nop	
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b4a0

	.globl try_symlink
	.type try_symlink, @function
try_symlink:
	mov	rax, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsi]
	mov	rsp, rsp
	mov	esi, dword ptr [rsi + 8]
	mov	rdx, rax
	jmp	symlinkat
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b4c0

	.globl copy_acl
	.type copy_acl, @function
copy_acl:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	rbx, rdi
	call	qcopy_acl
	mov	ebp, eax
	nop	
	cmp	ebp, -1
	je	.label_593
	mov	rbp, rbp
	cmp	ebp, -2
	jne	.label_592
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_6
	xor	eax, eax
	mov	esi, r14d
	nop	
	jmp	.label_594
.label_593:
	call	__errno_location
	lea	rdi, [rdi]
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	nop	
	mov	rbx, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	nop	
	mov	rdx, rbx
.label_594:
	call	error
.label_592:
	nop	
	mov	eax, ebp
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b570

	.globl set_acl
	.type set_acl, @function
set_acl:
	push	rbp
	mov	rbp, rbp
	push	r15
	mov	rbp, rbp
	push	r14
	nop	
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rsp, rsp
	mov	r14, rdi
	lea	rdi, [rdi]
	call	qset_acl
	mov	ebx, eax
	test	ebx, ebx
	mov	rbp, rbp
	je	.label_595
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str_4
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	rdi, r14
	lea	rdi, [rdi]
	call	quote
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, r15d
	nop	
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	error
.label_595:
	lea	rsi, [rsi]
	mov	eax, ebx
	add	rsp, 8
	nop	
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b600

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
	je	.label_596
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, rbp
	movabs	r15, 0x7fffffffffffffff
	nop	word ptr cs:[rax + rax]
.label_597:
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
	jns	.label_599
	call	__errno_location
	nop	
	mov	rbp, rax
	mov	rbp, rbp
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	mov	rsp, rsp
	jne	.label_601
.label_599:
	mov	rsp, rsp
	cmp	r13, r12
	nop	
	jb	.label_604
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	mov	rax, r12
	mov	rsp, rsp
	shr	rax, 0x3e
	mov	rbp, rbp
	jne	.label_598
	add	r12, r12
	nop	
	jmp	.label_600
	nop	dword ptr [rax + rax]
.label_598:
	cmp	r12, r15
	mov	rsp, rsp
	mov	r12, r15
	jae	.label_602
.label_600:
	mov	rsp, rsp
	mov	rdi, r12
	mov	rbp, rbp
	call	malloc
	mov	rbp, rbp
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_597
	mov	rsp, rsp
	jmp	.label_596
.label_604:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp + 0x10], rbx
	jmp	.label_596
.label_602:
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	jmp	.label_603
.label_601:
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	call	free
	mov	dword ptr [rbp], r14d
.label_603:
	mov	rbp, rbp
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_596:
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
	#Procedure 0x40b780

	.globl set_simple_backup_suffix
	.type set_simple_backup_suffix, @function
set_simple_backup_suffix:
	push	rbx
	mov	rbx, rdi
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_605
	mov	edi, OFFSET FLAT:.str_7
	call	getenv
	nop	
	mov	rbx, rax
	mov	eax, OFFSET FLAT:.str.1_4
	mov	rsp, rsp
	test	rbx, rbx
	nop	
	je	.label_606
.label_605:
	mov	eax, OFFSET FLAT:.str.1_4
	cmp	byte ptr [rbx], 0
	je	.label_606
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	call	last_component
	nop	
	cmp	rbx, rax
	mov	eax, OFFSET FLAT:.str.1_4
	nop	
	cmove	rax, rbx
.label_606:
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + simple_backup_suffix]],  rax
	lea	rsi, [rsi]
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b7e0

	.globl backupfile_internal
	.type backupfile_internal, @function
backupfile_internal:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	lea	rsi, [rsi]
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x88
	mov	dword ptr [rsp + 0x84], ecx
	mov	r15d, edx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0x40], rbp
	mov	dword ptr [rsp + 4], edi
	mov	rsp, rsp
	mov	rdi, rbp
	call	last_component
	mov	rbx, rax
	sub	rbx, rbp
	mov	qword ptr [rsp + 0x38], rbx
	mov	rdi, rax
	mov	rbp, rbp
	call	strlen
	lea	rdi, [rdi]
	mov	rbp, rax
	nop	
	add	rbp, rbx
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	lea	rsi, [rsi]
	test	rdi, rdi
	jne	.label_616
	mov	edi, OFFSET FLAT:.str_7
	lea	rsi, [rsi]
	call	getenv
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.1_4
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_614
	mov	edi, OFFSET FLAT:.str.1_4
	mov	rsp, rsp
	cmp	byte ptr [rbx], 0
	nop	
	je	.label_614
	mov	rbp, rbp
	mov	rdi, rbx
	call	last_component
	cmp	rbx, rax
	mov	edi, OFFSET FLAT:.str.1_4
	cmove	rdi, rbx
.label_614:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + simple_backup_suffix]],  rdi
.label_616:
	call	strlen
	nop	
	inc	rax
	mov	qword ptr [rsp + 0x30], rax
	cmp	rax, 9
	mov	rbp, rbp
	mov	ecx, 9
	nop	
	cmovae	rcx, rax
	lea	rdi, [rbp + rcx + 1]
	mov	qword ptr [rsp + 0x50], rdi
	nop	
	call	malloc
	nop	
	xor	r13d, r13d
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	je	.label_632
	lea	rcx, [rbp + 1]
	mov	qword ptr [rsp + 0x58], rcx
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x6c], 0xffffffff
	lea	rcx, [rbp + 4]
	mov	qword ptr [rsp + 0x78], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rbp
	xor	r12d, r12d
	mov	rsp, rsp
	mov	r13, rax
	nop	
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x70], rax
	nop	dword ptr [rax + rax]
.label_627:
	lea	rdi, [rdi]
	mov	rdi, r13
	nop	
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	call	memcpy
	mov	rbp, rbp
	cmp	r15d, 1
	lea	rsi, [rsi]
	jne	.label_618
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x28]
	lea	rdi, [r13 + rax]
	mov	r14, r13
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x30]
	call	memcpy
	mov	dword ptr [rsp + 0x14], 1
	mov	rbp, rbp
	jmp	.label_623
	nop	
.label_618:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	lea	rbx, [r13 + rax]
	mov	rdi, rbx
	nop	
	call	base_len
	mov	rbp, rbp
	mov	rbp, rax
	mov	rbp, rbp
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_631
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], r15d
	lea	rdi, [rdi]
	mov	rdi, r12
	call	rewinddir
	lea	rdi, [rdi]
	mov	r15, rbp
	lea	rdi, [rdi]
	jmp	.label_635
.label_631:
	nop	
	mov	r14w, word ptr [rbx]
	mov	word ptr [rbx], 0x2e
	lea	rdi, [rdi]
	xor	edx, edx
	nop	
	mov	edi, dword ptr [rsp + 4]
	mov	rsi, r13
	lea	rcx, [rsp + 0x6c]
	call	opendirat
	mov	r12, rax
	test	r12, r12
	je	.label_640
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x14], r15d
	lea	rdi, [rdi]
	mov	word ptr [rbx], r14w
	nop	
	mov	r15, rbp
	mov	byte ptr [rbx + r15 + 4], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbx + r15], 0x7e317e2e
.label_635:
	mov	rdi, r12
	call	readdir
	mov	rbx, rax
	lea	rsi, [rsi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_611
	lea	rsi, [rsi]
	mov	r14, r13
	mov	rbp, rbp
	lea	r13, [r15 + 4]
	lea	rax, [r15 + 2]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rax
	mov	rbp, rbp
	mov	eax, 2
	nop	
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rax
	mov	eax, 1
	nop	
	mov	qword ptr [rsp + 0x48], rax
	nop	word ptr cs:[rax + rax]
.label_607:
	mov	rsp, rsp
	lea	rbp, [rbx + 0x13]
	mov	rdi, rbp
	call	strlen
	cmp	rax, r13
	nop	
	jb	.label_619
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x38]
	lea	rdi, [r14 + rax]
	lea	rdi, [rdi]
	mov	rsi, rbp
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x20]
	call	memcmp
	nop	
	test	eax, eax
	jne	.label_619
	mov	rsp, rsp
	mov	al, byte ptr [rbx + r15 + 0x15]
	lea	rdi, [rdi]
	mov	cl, al
	lea	rdi, [rdi]
	add	cl, 0xcf
	lea	rdi, [rdi]
	movzx	ecx, cl
	mov	rbp, rbp
	cmp	ecx, 8
	mov	rbp, rbp
	ja	.label_619
	lea	rcx, [rbx + r15 + 0x13]
	lea	rsi, [rsi]
	movzx	eax, al
	cmp	eax, 0x39
	lea	rdi, [rdi]
	mov	rdx, r15
	lea	rsi, [rsi]
	sete	r15b
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rcx + 3]
	mov	ecx, eax
	add	ecx, -0x30
	mov	rbp, rbp
	cmp	ecx, 9
	mov	rbp, rbp
	ja	.label_624
	lea	rsi, [rsi]
	lea	rcx, [rbx + rdx + 0x17]
	mov	qword ptr [rsp + 0x60], rdx
	lea	rsi, [rsi]
	xor	edx, edx
	nop	dword ptr [rax]
.label_628:
	mov	rbp, rbp
	mov	rbp, rdx
	nop	
	movzx	eax, al
	mov	rbp, rbp
	cmp	eax, 0x39
	mov	rsp, rsp
	sete	al
	mov	rbp, rbp
	and	r15b, al
	movsx	eax, byte ptr [rcx + rbp]
	mov	esi, eax
	lea	rsi, [rsi]
	add	esi, -0x30
	lea	rdx, [rbp + 1]
	cmp	esi, 0xa
	jb	.label_628
	lea	rsi, [rsi]
	add	rbp, 2
	jmp	.label_622
.label_624:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x60], rdx
	lea	rsi, [rsi]
	mov	ebp, 1
.label_622:
	mov	rsp, rsp
	movzx	eax, al
	lea	rsi, [rsi]
	cmp	eax, 0x7e
	nop	
	jne	.label_626
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x60]
	nop	
	lea	rbx, [rbx + rax + 0x15]
	cmp	byte ptr [rbp + rbx + 1], 0
	je	.label_629
	mov	r15, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	jmp	.label_619
.label_626:
	nop	
	mov	r15, qword ptr [rsp + 0x60]
	jmp	.label_619
.label_629:
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x48], rbp
	lea	rdi, [rdi]
	jb	.label_633
	mov	rsp, rsp
	jne	.label_636
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	lea	rdi, [r14 + rax + 2]
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	call	memcmp
	test	eax, eax
	jle	.label_633
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x60]
	jmp	.label_619
.label_633:
	lea	rdi, [rdi]
	movzx	edx, r15b
	mov	rsp, rsp
	lea	rcx, [rdx + rbp]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x48], rcx
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x78]
	lea	rsi, [rsi]
	lea	r15, [rax + rcx]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	cmp	rax, r15
	nop	
	jae	.label_639
	lea	rdi, [rdi]
	mov	rax, r15
	lea	rdi, [rdi]
	shr	rax, 0x3e
	sete	cl
	lea	rsi, [rsi]
	shl	r15, cl
	nop	
	mov	rdi, r14
	mov	rsi, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rdx
	lea	rdi, [rdi]
	call	realloc
	nop	
	mov	rdx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	test	rax, rax
	mov	qword ptr [rsp + 0x18], r15
	jne	.label_621
	jmp	.label_625
.label_639:
	mov	rax, r14
.label_621:
	mov	qword ptr [rsp + 8], rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rax + rcx]
	mov	byte ptr [rax + rcx], 0x2e
	mov	rsp, rsp
	lea	r15, [rsi + rdx]
	mov	rsp, rsp
	mov	word ptr [rax + rcx + 1], 0x307e
	mov	r14, rax
	lea	rdi, [rdx + rsi + 2]
	lea	rdx, [rbp + 2]
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rbp, rbp
	call	memcpy
	lea	rax, [rbp + r15 + 1]
	nop	
	movzx	ecx, byte ptr [rbp + r15 + 1]
	jmp	.label_634
	nop	dword ptr [rax]
.label_609:
	mov	byte ptr [rax], 0x30
	movzx	ecx, byte ptr [rax - 1]
	dec	rax
.label_634:
	cmp	ecx, 0x39
	je	.label_609
	lea	rsi, [rsi]
	inc	cl
	nop	
	mov	byte ptr [rax], cl
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0x60]
	jmp	.label_619
.label_636:
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x60]
	nop	dword ptr [rax]
.label_619:
	mov	rsp, rsp
	mov	rdi, r12
	call	readdir
	lea	rsi, [rsi]
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_607
	mov	r13, r14
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 8]
	jmp	.label_608
.label_640:
	nop	
	mov	dword ptr [rsp + 0x14], r15d
	lea	rdi, [rdi]
	call	__errno_location
	mov	ecx, 3
	cmp	dword ptr [rax], 0xc
	je	.label_617
	mov	ecx, 2
.label_617:
	mov	word ptr [rbx], r14w
	mov	byte ptr [rbx + rbp + 4], 0
	mov	rbp, rbp
	mov	dword ptr [rbx + rbp], 0x7e317e2e
	mov	rbp, rbp
	xor	r12d, r12d
.label_608:
	cmp	ecx, 1
	lea	rsi, [rsi]
	je	.label_620
	cmp	ecx, 2
	nop	
	je	.label_611
	mov	r14, r13
	nop	
	cmp	ecx, 3
	jne	.label_623
	mov	rbp, rbp
	jmp	.label_625
.label_611:
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x14]
	cmp	eax, 2
	lea	rdi, [rdi]
	jne	.label_620
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x28]
	lea	rdi, [r13 + rax]
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	nop	
	mov	rdx, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	call	memcpy
	mov	dword ptr [rsp + 0x14], 1
.label_620:
	mov	r15d, dword ptr [rsp + 0x6c]
	mov	rbp, rbp
	mov	rdi, r13
	call	last_component
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi, rbx
	mov	rsp, rsp
	call	base_len
	mov	rbp, rax
	nop	
	cmp	rbp, 0xf
	jb	.label_638
	mov	rax, qword ptr [rsp + 0x70]
	test	rax, rax
	jne	.label_615
	nop	
	mov	r14, r13
	mov	rsp, rsp
	test	r15d, r15d
	js	.label_641
	call	__errno_location
	mov	r13, rax
	nop	
	mov	dword ptr [r13], 0
	mov	esi, 3
	lea	rsi, [rsi]
	mov	edi, r15d
	mov	rbp, rbp
	call	fpathconf
	cmp	dword ptr [r13], 1
	lea	rdi, [rdi]
	sbb	rax, 0
	jmp	.label_612
.label_638:
	mov	eax, 0xff
	lea	rsi, [rsi]
	jmp	.label_615
.label_641:
	lea	rsi, [rsi]
	mov	r15w, word ptr [rbx]
	lea	rdi, [rdi]
	mov	word ptr [rbx], 0x2e
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	r13, rax
	lea	rdi, [rdi]
	mov	dword ptr [r13], 0
	lea	rsi, [rsi]
	mov	esi, 3
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	pathconf
	cmp	dword ptr [r13], 1
	sbb	rax, 0
	nop	
	mov	word ptr [rbx], r15w
.label_612:
	nop	
	cmp	rax, -1
	mov	rdx, -1
	mov	ecx, 0xe
	cmovl	rdx, rcx
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	cmovns	rdx, rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], rdx
	mov	rax, rdx
	nop	
	mov	r13, r14
	nop	dword ptr [rax + rax]
.label_615:
	lea	rdi, [rdi]
	cmp	rax, rbp
	jae	.label_637
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rcx, [r13 + rcx]
	mov	r14, r13
	mov	rbp, rbp
	sub	rcx, rbx
	cmp	rax, rcx
	lea	rax, [rax - 1]
	lea	rdi, [rdi]
	cmova	rax, rcx
	mov	word ptr [rbx + rax], 0x7e
	mov	rsp, rsp
	jmp	.label_623
.label_637:
	mov	r14, r13
	nop	word ptr [rax + rax]
.label_623:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x84]
	nop	
	test	al, al
	lea	rsi, [rsi]
	mov	r15d, dword ptr [rsp + 0x14]
	nop	
	mov	r13, r14
	je	.label_613
	lea	rdi, [rdi]
	mov	edx, dword ptr [rsp + 0x6c]
	test	edx, edx
	jns	.label_610
	nop	
	mov	dword ptr [rsp + 0x6c], 0xffffff9c
	mov	edx, 0xffffff9c
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
.label_610:
	nop	
	cmp	r15d, 1
	setne	al
	movzx	r8d, al
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x38]
	lea	rcx, [r13 + rax]
	mov	rsp, rsp
	mov	edi, 0xffffff9c
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	call	renameatu
	test	eax, eax
	mov	rsp, rsp
	je	.label_613
	mov	rbp, rbp
	call	__errno_location
	mov	rbx, rax
	nop	
	mov	ebp, dword ptr [rbx]
	mov	rbp, rbp
	cmp	ebp, 0x11
	je	.label_627
	test	r12, r12
	je	.label_630
	mov	rsp, rsp
	mov	rdi, r12
	call	closedir
.label_630:
	lea	rdi, [rdi]
	mov	rdi, r13
	call	free
	lea	rdi, [rdi]
	mov	dword ptr [rbx], ebp
	xor	r13d, r13d
	nop	
	jmp	.label_632
.label_613:
	test	r12, r12
	nop	
	je	.label_632
	nop	
	mov	rdi, r12
	call	closedir
	jmp	.label_632
.label_625:
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	rsp, rsp
	xor	r13d, r13d
.label_632:
	lea	rdi, [rdi]
	mov	rax, r13
	add	rsp, 0x88
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	nop	
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c010

	.globl backup_file_rename
	.type backup_file_rename, @function
backup_file_rename:
	nop	
	mov	ecx, 1
	jmp	backupfile_internal
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c020
	.globl find_backup_file_name
	.type find_backup_file_name, @function
find_backup_file_name:

	mov	rsp, rsp
	push	rax
	xor	ecx, ecx
	lea	rdi, [rdi]
	call	backupfile_internal
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_642
	pop	rcx
	nop	
	ret	
.label_642:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c040
	.globl get_version
	.type get_version, @function
get_version:

	mov	rbp, rbp
	mov	eax, 2
	test	rsi, rsi
	mov	rbp, rbp
	je	.label_643
	cmp	byte ptr [rsi], 0
	je	.label_643
	push	rax
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	mov	rsp, rsp
	call	__xargmatch_internal
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + backup_types]]
	add	rsp, 8
.label_643:
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c090

	.globl xget_version
	.type xget_version, @function
xget_version:
	push	rax
	lea	rdi, [rdi]
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_644
	cmp	byte ptr [rsi], 0
	lea	rdi, [rdi]
	je	.label_644
	mov	rbp, rbp
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edx, OFFSET FLAT:backup_args
	nop	
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	jmp	.label_645
.label_644:
	mov	edi, OFFSET FLAT:.str.1_5
	call	getenv
	nop	
	mov	ecx, 2
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_646
	nop	
	cmp	byte ptr [rax], 0
	mov	rbp, rbp
	je	.label_646
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str_8
	mov	edx, OFFSET FLAT:backup_args
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	mov	rbp, rbp
	mov	rsi, rax
.label_645:
	lea	rsi, [rsi]
	call	__xargmatch_internal
	nop	
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + backup_types]]
.label_646:
	lea	rsi, [rsi]
	mov	eax, ecx
	mov	rsp, rsp
	pop	rcx
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c130

	.globl buffer_lcm
	.type buffer_lcm, @function
buffer_lcm:
	mov	r8, rdx
	test	rdi, rdi
	je	.label_647
	test	rsi, rsi
	je	.label_649
	mov	rax, rdi
	mov	rdx, rsi
	nop	word ptr cs:[rax + rax]
.label_648:
	mov	rcx, rdx
	xor	edx, edx
	div	rcx
	test	rdx, rdx
	mov	rax, rcx
	jne	.label_648
	xor	edx, edx
	mov	rax, rdi
	div	rcx
	mov	r9, rax
	mov	rcx, r9
	imul	rcx, rsi
	cmp	rcx, r8
	ja	.label_649
	xor	edx, edx
	mov	rax, rcx
	div	rsi
	cmp	rax, r9
	je	.label_650
	jmp	.label_649
.label_647:
	test	rsi, rsi
	mov	edi, 0x2000
	cmovne	rdi, rsi
.label_649:
	cmp	rdi, r8
	cmovbe	r8, rdi
	mov	rcx, r8
.label_650:
	mov	rax, rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c1a0
	.globl close_stdin_set_file_name
	.type close_stdin_set_file_name, @function
close_stdin_set_file_name:

	nop
	mov	qword ptr [word ptr [rip + file_name]],  rdi
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c1b0

	.globl close_stdin
	.type close_stdin, @function
close_stdin:
	push	rbp
	mov	rsp, rsp
	push	r14
	nop	
	push	rbx
	nop	
	mov	rbx,  qword ptr [word ptr [rip + stdin]]
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	freadahead
	xor	ebp, ebp
	test	rax, rax
	mov	rbp, rbp
	je	.label_652
	xor	esi, esi
	mov	rbp, rbp
	mov	edx, 1
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fseeko
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	jne	.label_652
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	setne	bpl
.label_652:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	close_stream
	test	bpl, bpl
	nop	
	jne	.label_654
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_654
	pop	rbx
	pop	r14
	pop	rbp
	mov	rsp, rsp
	jmp	close_stdout
.label_654:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_9
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	lea	rsi, [rsi]
	jne	.label_653
	xor	edi, edi
	nop	
	mov	edx, OFFSET FLAT:.str_6
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebp
	mov	rcx, r14
	call	error
	jmp	.label_651
.label_653:
	nop	
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.1_6
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, ebp
	lea	rsi, [rsi]
	mov	r8, r14
	call	error
.label_651:
	call	close_stdout
	nop	
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c2c0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + file_name_0]],  rdi
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c2d0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c2e0

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
	je	.label_657
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_655
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_655
.label_657:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_656
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_655:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_10
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name_0]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_658
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_6
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
.label_656:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_658:
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_6
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
	#Procedure 0x40c3e0

	.globl dir_name
	.type dir_name, @function
dir_name:
	lea	rsi, [rsi]
	push	rax
	mov	rbp, rbp
	call	mdir_name
	mov	rbp, rbp
	test	rax, rax
	je	.label_659
	pop	rcx
	ret	
.label_659:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c400
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
.label_660:
	lea	rdi, [rdi]
	mov	rax, rcx
	lea	rsi, [rsi]
	cmp	r14, rax
	mov	rsp, rsp
	jae	.label_661
	lea	rcx, [rax - 1]
	nop	
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	lea	rdi, [rdi]
	je	.label_660
.label_661:
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
	#Procedure 0x40c470

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
.label_665:
	mov	rbx, rax
	mov	rsp, rsp
	cmp	r15, rbx
	mov	rsp, rsp
	jae	.label_662
	lea	rax, [rbx - 1]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [r14 + rbx - 1]
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	je	.label_665
.label_662:
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
	je	.label_664
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
	jne	.label_663
	lea	rdi, [rdi]
	mov	byte ptr [r15], 0x2e
	nop	
	mov	ebx, 1
.label_663:
	mov	rbp, rbp
	mov	byte ptr [r15 + rbx], 0
	mov	rax, r15
.label_664:
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
	#Procedure 0x40c530

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_666:
	nop	
	movzx	edx, byte ptr [rdi + 1]
	lea	rdi, [rdi]
	inc	rdi
	cmp	edx, 0x2f
	mov	rbp, rbp
	je	.label_666
	xor	r8d, r8d
	mov	rax, rdi
	jmp	.label_667
	nop	dword ptr [rax + rax]
.label_668:
	mov	dl, byte ptr [rax + 1]
	mov	rbp, rbp
	inc	rax
	lea	rsi, [rsi]
	mov	r8b, cl
.label_667:
	mov	cl, 1
	movzx	esi, dl
	mov	rsp, rsp
	cmp	esi, 0x2f
	je	.label_668
	mov	rsp, rsp
	test	dl, dl
	mov	rbp, rbp
	je	.label_670
	mov	cl, r8b
	mov	rsp, rsp
	and	cl, 1
	je	.label_669
	xor	r8d, r8d
.label_669:
	lea	rsi, [rsi]
	test	cl, cl
	cmovne	rdi, rax
	mov	cl, r8b
	nop	
	jmp	.label_668
.label_670:
	mov	rsp, rsp
	mov	rax, rdi
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c5b0

	.globl base_len
	.type base_len, @function
base_len:
	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	call	strlen
	nop	
	mov	rcx, rax
.label_672:
	mov	rbp, rbp
	mov	rax, rcx
	lea	rsi, [rsi]
	cmp	rax, 2
	mov	rsp, rsp
	jb	.label_671
	lea	rdi, [rdi]
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_672
.label_671:
	lea	rsi, [rsi]
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c5f0

	.globl strip_trailing_slashes
	.type strip_trailing_slashes, @function
strip_trailing_slashes:
	push	rbx
	mov	rbx, rdi
	call	last_component
	cmp	byte ptr [rax], 0
	je	.label_673
	mov	rbx, rax
.label_673:
	mov	rdi, rbx
	call	base_len
	cmp	byte ptr [rbx + rax], 0
	setne	cl
	mov	byte ptr [rbx + rax], 0
	mov	al, cl
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c620

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c630
	.globl fadvise
	.type fadvise, @function
fadvise:

	lea	rdi, [rdi]
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_674
	call	fileno
	mov	rsp, rsp
	xor	esi, esi
	xor	edx, edx
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_674:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c660

	.globl open_safer
	.type open_safer, @function
open_safer:
	mov	rsp, rsp
	sub	rsp, 0xc8
	nop	
	test	al, al
	mov	rbp, rbp
	je	.label_675
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
.label_675:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	xor	edx, edx
	nop	
	test	sil, 0x40
	je	.label_676
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
	ja	.label_677
	lea	rsi, [rsi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_678
.label_677:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_678:
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax]
.label_676:
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
	#Procedure 0x40c780

	.globl record_file
	.type record_file, @function
record_file:
	nop	
	push	r15
	nop	
	push	r14
	push	r12
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rsp, rsp
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	test	r14, r14
	nop	
	je	.label_679
	mov	edi, 0x18
	call	xmalloc
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi, r12
	call	xstrdup
	lea	rsi, [rsi]
	mov	qword ptr [rbx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [rbx + 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15]
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, r14
	mov	rsi, rbx
	call	hash_insert
	test	rax, rax
	mov	rsp, rsp
	je	.label_680
	cmp	rax, rbx
	je	.label_679
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rdi, [rdi]
	jmp	triple_free
.label_679:
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r14
	nop	
	pop	r15
	mov	rsp, rsp
	ret	
.label_680:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c830

	.globl seen_file
	.type seen_file, @function
seen_file:
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_681
	lea	rsi, [rsi]
	sub	rsp, 0x18
	mov	qword ptr [rsp], rsi
	nop	
	mov	rax, qword ptr [rdx + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rdx]
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	lea	rsi, [rsp]
	call	hash_lookup
	test	rax, rax
	setne	al
	add	rsp, 0x18
	nop	
	ret	
.label_681:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c880

	.globl file_type
	.type file_type, @function
file_type:
	mov	eax, 0xf000
	and	eax, dword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	cmp	eax, 0x5fff
	jle	.label_682
	mov	rsp, rsp
	cmp	eax, 0x9fff
	jg	.label_685
	cmp	eax, 0x6000
	je	.label_689
	lea	rdi, [rdi]
	cmp	eax, 0x8000
	jne	.label_684
	mov	rbp, rbp
	cmp	qword ptr [rdi + 0x30], 0
	lea	rsi, [rsi]
	je	.label_688
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_7
	mov	edx, 5
	nop	
	jmp	dcgettext
.label_682:
	lea	rsi, [rsi]
	cmp	eax, 0x1000
	mov	rsp, rsp
	je	.label_687
	cmp	eax, 0x2000
	mov	rsp, rsp
	je	.label_683
	lea	rsi, [rsi]
	cmp	eax, 0x4000
	lea	rsi, [rsi]
	jne	.label_684
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_3
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	jmp	dcgettext
.label_685:
	mov	rsp, rsp
	cmp	eax, 0xa000
	je	.label_686
	lea	rsi, [rsi]
	cmp	eax, 0xc000
	jne	.label_684
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.10_1
	mov	edx, 5
	jmp	dcgettext
.label_689:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	jmp	dcgettext
.label_687:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
	mov	rsp, rsp
	mov	edx, 5
	mov	rsp, rsp
	jmp	dcgettext
.label_683:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
	lea	rsi, [rsi]
	mov	edx, 5
	jmp	dcgettext
.label_686:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_2
	nop	
	mov	edx, 5
	jmp	dcgettext
.label_684:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_1
	mov	edx, 5
	jmp	dcgettext
.label_688:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_11
	mov	edx, 5
	mov	rbp, rbp
	jmp	dcgettext
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c9c0

	.globl strmode
	.type strmode, @function
strmode:
	mov	eax, edi
	mov	rbp, rbp
	mov	ecx, eax
	and	ecx, 0xf000
	cmp	ecx, 0x5fff
	mov	rbp, rbp
	jle	.label_690
	lea	rdi, [rdi]
	cmp	ecx, 0x9fff
	mov	rbp, rbp
	jg	.label_699
	cmp	ecx, 0x6000
	je	.label_702
	lea	rdi, [rdi]
	mov	dl, 0x2d
	mov	rsp, rsp
	cmp	ecx, 0x8000
	lea	rsi, [rsi]
	je	.label_692
	mov	rbp, rbp
	jmp	.label_691
.label_690:
	cmp	ecx, 0x1000
	je	.label_694
	nop	
	cmp	ecx, 0x2000
	je	.label_696
	cmp	ecx, 0x4000
	jne	.label_691
	mov	dl, 0x64
	mov	rbp, rbp
	jmp	.label_692
.label_699:
	lea	rsi, [rsi]
	cmp	ecx, 0xa000
	mov	rbp, rbp
	je	.label_703
	lea	rdi, [rdi]
	cmp	ecx, 0xc000
	jne	.label_691
	nop	
	mov	dl, 0x73
	jmp	.label_692
.label_702:
	lea	rsi, [rsi]
	mov	dl, 0x62
	jmp	.label_692
.label_694:
	mov	rbp, rbp
	mov	dl, 0x70
	mov	rbp, rbp
	jmp	.label_692
.label_703:
	mov	dl, 0x6c
	jmp	.label_692
.label_691:
	mov	dl, 0x3f
	mov	rsp, rsp
	jmp	.label_692
.label_696:
	mov	rbp, rbp
	mov	dl, 0x63
.label_692:
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
	jne	.label_705
	mov	cl, 0x2d
.label_705:
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
	jne	.label_700
	mov	cl, 0x2d
.label_700:
	test	bl, 8
	jne	.label_708
	mov	rsp, rsp
	mov	dl, cl
.label_708:
	lea	rdi, [rdi]
	mov	byte ptr [rsi + 3], dl
	test	al, 0x20
	mov	cl, 0x72
	nop	
	jne	.label_693
	mov	cl, 0x2d
.label_693:
	mov	byte ptr [rsi + 4], cl
	test	al, 0x10
	mov	dl, 0x77
	mov	cl, 0x77
	jne	.label_698
	mov	rsp, rsp
	mov	cl, 0x2d
.label_698:
	mov	byte ptr [rsi + 5], cl
	mov	ecx, eax
	nop	
	and	ecx, 8
	lea	rsi, [rsi]
	lea	edi, [rcx*4 + 0x53]
	mov	cl, 0x78
	lea	rsi, [rsi]
	jne	.label_701
	nop	
	mov	cl, 0x2d
.label_701:
	mov	rsp, rsp
	test	bl, 4
	jne	.label_695
	lea	rdi, [rdi]
	mov	dil, cl
.label_695:
	lea	rsi, [rsi]
	mov	byte ptr [rsi + 6], dil
	test	al, 4
	jne	.label_697
	mov	r9b, 0x2d
.label_697:
	nop	
	mov	byte ptr [rsi + 7], r9b
	test	al, 2
	jne	.label_706
	mov	dl, 0x2d
.label_706:
	nop	
	mov	byte ptr [rsi + 8], dl
	and	eax, 1
	nop	
	jne	.label_704
	mov	rbp, rbp
	mov	r8b, 0x2d
.label_704:
	mov	rbp, rbp
	test	bl, 2
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	je	.label_707
	shl	eax, 5
	or	eax, 0x54
	mov	r8b, al
.label_707:
	mov	rbp, rbp
	mov	byte ptr [rsi + 9], r8b
	mov	byte ptr [rsi + 0xa], 0x20
	mov	byte ptr [rsi + 0xb], 0
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cb60
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
	#Procedure 0x40cb70

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rax
	call	mfile_name_concat
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	je	.label_709
	lea	rsi, [rsi]
	pop	rcx
	ret	
.label_709:
	mov	rsp, rsp
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x40cb90

	.globl mfile_name_concat
	.type mfile_name_concat, @function
mfile_name_concat:
	lea	rdi, [rdi]
	push	rbp
	nop	
	push	r15
	nop	
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	sub	rsp, 0x18
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdx
	mov	r14, rsi
	mov	r13, rdi
	call	last_component
	mov	rsp, rsp
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi, rbx
	call	base_len
	nop	
	mov	rbp, rax
	mov	rbp, rbp
	sub	rbx, r13
	add	rbx, rbp
	lea	rsi, [rsi]
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	test	rbp, rbp
	je	.label_711
	movzx	ecx, byte ptr [rbx + r13 - 1]
	lea	rdi, [rdi]
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	jne	.label_716
	mov	qword ptr [rsp + 8], r14
	lea	rdi, [rdi]
	xor	r12d, r12d
	lea	rsi, [rsi]
	jmp	.label_715
.label_711:
	movzx	ecx, byte ptr [r14]
	mov	r12b, 0x2e
	lea	rsi, [rsi]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	je	.label_712
	jmp	.label_713
.label_716:
	nop	
	movzx	ecx, byte ptr [r14]
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	jne	.label_717
.label_713:
	xor	r12d, r12d
	jmp	.label_712
.label_717:
	mov	r12b, 0x2f
.label_712:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r14
.label_715:
	test	r12b, r12b
	nop	
	setne	cl
	movzx	ebp, cl
	nop	
	lea	rcx, [r15 + rbx]
	lea	rdi, [rbp + rcx + 1]
	lea	rdi, [rdi]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_714
	mov	rcx, -1
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	lea	rsi, [rsi]
	add	rbp, rax
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_710
	mov	rsp, rsp
	mov	qword ptr [rax], rbp
.label_710:
	nop	
	mov	rcx, -1
	mov	rdi, rbp
	nop	
	mov	rsi, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rdx, r15
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	nop	
	mov	rax, r14
.label_714:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	nop	
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40cce0

	.globl full_write
	.type full_write, @function
full_write:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	ebp, edi
	xor	r14d, r14d
	test	r15, r15
	je	.label_718
	nop	word ptr [rax + rax]
.label_720:
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r15
	call	safe_write
	cmp	rax, -1
	je	.label_718
	test	rax, rax
	je	.label_719
	add	r14, rax
	add	rbx, rax
	sub	r15, rax
	jne	.label_720
	jmp	.label_718
.label_719:
	call	__errno_location
	mov	dword ptr [rax], 0x1c
.label_718:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40cd40
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cd50
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cd60
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cd70
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	nop	
	mov	rdx, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	cmp	rcx, rdx
	jae	.label_726
	mov	rdi, rcx
	not	rdi
	nop	
	add	rdi, rdx
	mov	rsi, rdi
	mov	rbp, rbp
	shr	rsi, 4
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	bt	rdi, 4
	jb	.label_723
	xor	eax, eax
	nop	
	cmp	qword ptr [rcx], 0
	mov	rsp, rsp
	je	.label_724
	mov	rbp, rbp
	mov	rdi, rcx
	nop	dword ptr [rax]
.label_721:
	nop	
	mov	rdi, qword ptr [rdi + 8]
	inc	rax
	mov	rsp, rsp
	test	rdi, rdi
	lea	rdi, [rdi]
	jne	.label_721
.label_724:
	add	rcx, 0x10
.label_723:
	nop	
	test	rsi, rsi
	je	.label_726
	nop	word ptr cs:[rax + rax]
.label_729:
	cmp	qword ptr [rcx], 0
	nop	
	mov	esi, 0
	mov	rdi, rcx
	mov	rbp, rbp
	je	.label_727
	nop	word ptr cs:[rax + rax]
.label_722:
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_722
	mov	rbp, rbp
	cmp	rsi, rax
	lea	rsi, [rsi]
	cmova	rax, rsi
.label_727:
	cmp	qword ptr [rcx + 0x10], 0
	nop	
	je	.label_725
	lea	rdi, [rcx + 0x10]
	xor	esi, esi
	nop	word ptr [rax + rax]
.label_728:
	mov	rdi, qword ptr [rdi + 8]
	mov	rbp, rbp
	inc	rsi
	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rsi, [rsi]
	jne	.label_728
	mov	rsp, rsp
	cmp	rsi, rax
	nop	
	cmova	rax, rsi
.label_725:
	mov	rsp, rsp
	add	rcx, 0x20
	mov	rsp, rsp
	cmp	rcx, rdx
	mov	rsp, rsp
	jb	.label_729
.label_726:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ce80
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rbp, rbp
	mov	rcx, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rsp, rsp
	cmp	rcx, r9
	mov	esi, 0
	jae	.label_730
	mov	rbp, rbp
	mov	rax, rcx
	mov	rbp, rbp
	not	rax
	lea	rdi, [rdi]
	add	rax, r9
	mov	rbp, rbp
	mov	r8, rax
	shr	r8, 4
	lea	rdi, [rdi]
	xor	edx, edx
	bt	rax, 4
	jb	.label_734
	xor	edx, edx
	cmp	qword ptr [rcx], 0
	mov	rsp, rsp
	je	.label_732
	mov	esi, 1
	mov	rax, rcx
	nop	dword ptr [rax + rax]
.label_742:
	mov	rbp, rbp
	inc	rdx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	test	rax, rax
	jne	.label_742
	mov	rsp, rsp
	jmp	.label_739
.label_734:
	mov	rbp, rbp
	xor	esi, esi
	jmp	.label_741
.label_732:
	xor	esi, esi
.label_739:
	add	rcx, 0x10
.label_741:
	test	r8, r8
	nop	
	je	.label_730
	nop	dword ptr [rax]
.label_736:
	cmp	qword ptr [rcx], 0
	mov	rbp, rbp
	mov	rax, rcx
	je	.label_733
	nop	dword ptr [rax]
.label_731:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	jne	.label_731
	lea	rdi, [rdi]
	inc	rsi
.label_733:
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_740
	lea	rax, [rcx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_735:
	lea	rdi, [rdi]
	inc	rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_735
	inc	rsi
.label_740:
	add	rcx, 0x20
	cmp	rcx, r9
	jb	.label_736
.label_730:
	cmp	rsi, qword ptr [rdi + 0x18]
	jne	.label_737
	lea	rdi, [rdi]
	mov	al, 1
	nop	
	cmp	rdx, qword ptr [rdi + 0x20]
	lea	rsi, [rsi]
	je	.label_738
.label_737:
	xor	eax, eax
.label_738:
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40cf90
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	lea	rsi, [rsi]
	push	r15
	mov	rbp, rbp
	push	r14
	lea	rsi, [rsi]
	push	r12
	nop	
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rbp, rbp
	mov	r15, rsi
	mov	rcx, qword ptr [rdi + 0x20]
	mov	rbp, rbp
	mov	r12, qword ptr [rdi + 0x10]
	mov	r14, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	xor	ebx, ebx
	cmp	rax, rdx
	lea	rdi, [rdi]
	jae	.label_752
	mov	rsp, rsp
	mov	rdi, rax
	not	rdi
	mov	rbp, rbp
	add	rdi, rdx
	lea	rsi, [rsi]
	mov	rsi, rdi
	mov	rsp, rsp
	shr	rsi, 4
	mov	rsp, rsp
	xor	ebx, ebx
	bt	rdi, 4
	mov	rbp, rbp
	jb	.label_753
	mov	rbp, rbp
	xor	ebx, ebx
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_743
	mov	rsp, rsp
	mov	rdi, rax
	nop	word ptr [rax + rax]
.label_744:
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 8]
	inc	rbx
	nop	
	test	rdi, rdi
	lea	rdi, [rdi]
	jne	.label_744
.label_743:
	add	rax, 0x10
.label_753:
	test	rsi, rsi
	je	.label_752
	nop	dword ptr [rax]
.label_751:
	cmp	qword ptr [rax], 0
	mov	esi, 0
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	je	.label_745
	nop	word ptr cs:[rax + rax]
.label_746:
	mov	rdi, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	inc	rsi
	nop	
	test	rdi, rdi
	jne	.label_746
	mov	rbp, rbp
	cmp	rsi, rbx
	cmova	rbx, rsi
.label_745:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_754
	lea	rdi, [rax + 0x10]
	xor	esi, esi
	nop	word ptr [rax + rax]
.label_747:
	mov	rdi, qword ptr [rdi + 8]
	mov	rsp, rsp
	inc	rsi
	test	rdi, rdi
	jne	.label_747
	mov	rbp, rbp
	cmp	rsi, rbx
	mov	rbp, rbp
	cmova	rbx, rsi
.label_754:
	add	rax, 0x20
	nop	
	cmp	rax, rdx
	jb	.label_751
.label_752:
	lea	rsi, [rsi]
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_12
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.1_8
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	nop	
	call	__fprintf_chk
	nop	
	movq	xmm1, r14
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_748]]
	punpckldq	xmm1, xmm2
	lea	rsi, [rsi]
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_749]]
	nop	
	subpd	xmm1, xmm3
	lea	rdi, [rdi]
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	lea	rsi, [rsi]
	mulsd	xmm0,  qword ptr [word ptr [rip + label_750]]
	mov	rsp, rsp
	movq	xmm1, r12
	mov	rbp, rbp
	punpckldq	xmm1, xmm2
	mov	rbp, rbp
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	mov	rsp, rsp
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.2_4
	mov	al, 1
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	lea	rsi, [rsi]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_3
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rcx, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d1a0

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	mov	rsp, rsp
	push	r15
	mov	rbp, rbp
	push	r14
	push	r12
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	r12, rsi
	mov	rsp, rsp
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rdi, r12
	call	qword ptr [r14 + 0x30]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_755
	mov	rbx, qword ptr [r14]
	nop	
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	mov	rsp, rsp
	test	rsi, rsi
	je	.label_756
	lea	rsi, [rsi]
	add	rbx, rax
	je	.label_756
	cmp	rsi, r12
	je	.label_758
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_759:
	nop	
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_757
	nop	
	mov	rbx, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_756
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx]
	nop	
	cmp	rsi, r12
	lea	rdi, [rdi]
	jne	.label_759
.label_758:
	mov	r15, r12
	jmp	.label_756
.label_757:
	nop	
	mov	r15, qword ptr [rbx]
.label_756:
	lea	rsi, [rsi]
	mov	rax, r15
	nop	
	add	rsp, 8
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	ret	
.label_755:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d260
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	mov	rbp, rbp
	je	.label_760
	nop	
	mov	rcx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdi + 8]
	mov	rbp, rbp
	jmp	.label_763
	nop	dword ptr [rax]
.label_761:
	add	rcx, 0x10
.label_763:
	cmp	rcx, rdx
	jae	.label_762
	mov	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_761
.label_760:
	mov	rsp, rsp
	ret	
.label_762:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x40d2a0
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	mov	rsp, rsp
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rbp, rbp
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	cmp	rax, qword ptr [r14 + 0x10]
	mov	rsp, rsp
	jae	.label_769
	nop	
	mov	rcx, qword ptr [r14]
	lea	rdi, [rdi]
	shl	rax, 4
	nop	
	lea	rdx, [rcx + rax]
	nop	word ptr [rax + rax]
.label_766:
	nop	
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	je	.label_764
	test	rdx, rdx
	jne	.label_766
	lea	rdi, [rdi]
	jmp	.label_765
.label_764:
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_765
	mov	rax, qword ptr [rdx]
	jmp	.label_767
.label_765:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rax + rcx + 0x10]
	nop	dword ptr [rax]
.label_768:
	mov	rbp, rbp
	cmp	rcx, rdx
	mov	eax, 0
	mov	rbp, rbp
	jae	.label_767
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_768
.label_767:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_769:
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d340
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	nop
	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_770
	nop	word ptr cs:[rax + rax]
.label_772:
	add	r9, 0x10
.label_770:
	nop	
	cmp	r9, r8
	lea	rdi, [rdi]
	jae	.label_771
	lea	rsi, [rsi]
	cmp	qword ptr [r9], 0
	je	.label_772
	test	r9, r9
	mov	rbp, rbp
	mov	r10, r9
	mov	rbp, rbp
	je	.label_772
	nop	word ptr cs:[rax + rax]
.label_773:
	mov	rsp, rsp
	cmp	rax, rdx
	jae	.label_771
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r10]
	nop	
	mov	qword ptr [rsi + rax*8], rcx
	lea	rdi, [rdi]
	inc	rax
	mov	rsp, rsp
	mov	r10, qword ptr [r10 + 8]
	test	r10, r10
	nop	
	jne	.label_773
	mov	r8, qword ptr [rdi + 8]
	jmp	.label_772
.label_771:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d3c0
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	r15, rsi
	mov	r12, rdi
	mov	r13, qword ptr [r12]
	mov	rax, qword ptr [r12 + 8]
	xor	ebx, ebx
	mov	rsp, rsp
	jmp	.label_774
	nop	dword ptr [rax]
.label_775:
	lea	rsi, [rsi]
	add	r13, 0x10
.label_774:
	nop	
	cmp	r13, rax
	lea	rsi, [rsi]
	jae	.label_777
	mov	rdi, qword ptr [r13]
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_775
	test	r13, r13
	lea	rdi, [rdi]
	je	.label_775
	mov	rsi, r14
	lea	rsi, [rsi]
	call	r15
	mov	rbp, rbp
	test	al, al
	mov	rbp, r13
	mov	rsp, rsp
	je	.label_777
	nop	word ptr [rax + rax]
.label_778:
	mov	rsp, rsp
	inc	rbx
	mov	rbp, rbp
	mov	rbp, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	test	rbp, rbp
	je	.label_776
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_778
	jmp	.label_777
	nop	word ptr cs:[rax + rax]
.label_776:
	mov	rax, qword ptr [r12 + 8]
	mov	rbp, rbp
	jmp	.label_775
.label_777:
	nop	
	mov	rax, rbx
	nop	
	add	rsp, 8
	pop	rbx
	nop	
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d490
	.globl hash_string
	.type hash_string, @function
hash_string:

	nop
	mov	al, byte ptr [rdi]
	nop	
	xor	edx, edx
	test	al, al
	je	.label_780
	inc	rdi
	nop	
	xor	edx, edx
.label_779:
	mov	rcx, rdx
	nop	
	shl	rcx, 5
	sub	rcx, rdx
	nop	
	movzx	eax, al
	add	rax, rcx
	lea	rsi, [rsi]
	xor	edx, edx
	div	rsi
	mov	al, byte ptr [rdi]
	inc	rdi
	test	al, al
	jne	.label_779
.label_780:
	mov	rax, rdx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d4d0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	nop
	mov	eax,  dword ptr [dword ptr [rip + label_781]]
	mov	dword ptr [rdi + 0x10], eax
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d4f0

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	push	r15
	nop	
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rsi, [rsi]
	mov	r14, r8
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	r12, rdi
	lea	rdi, [rdi]
	test	rdx, rdx
	mov	r13d, OFFSET FLAT:raw_hasher
	lea	rdi, [rdi]
	cmovne	r13, rdx
	test	rcx, rcx
	mov	rsp, rsp
	mov	ebp, OFFSET FLAT:raw_comparator
	lea	rdi, [rdi]
	cmovne	rbp, rcx
	mov	edi, 0x50
	mov	rsp, rsp
	call	malloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	test	r15, r15
	je	.label_782
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	mov	rbp, rbp
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_792
	movss	xmm0, dword ptr [rbx + 8]
	mov	rsp, rsp
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_790]]
	jbe	.label_787
	lea	rsi, [rsi]
	movss	xmm1,  dword ptr [dword ptr [rip + label_788]]
	ucomiss	xmm1, xmm0
	jbe	.label_787
	mov	rbp, rbp
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_795]]
	lea	rsi, [rsi]
	jbe	.label_787
	movss	xmm1, dword ptr [rbx]
	lea	rsi, [rsi]
	xorps	xmm2, xmm2
	lea	rsi, [rsi]
	ucomiss	xmm1, xmm2
	jb	.label_787
	addss	xmm1,  dword ptr [dword ptr [rip + label_790]]
	ucomiss	xmm0, xmm1
	lea	rdi, [rdi]
	jbe	.label_787
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbx + 4]
	lea	rdi, [rdi]
	movss	xmm2,  dword ptr [dword ptr [rip + label_797]]
	ucomiss	xmm2, xmm0
	jb	.label_787
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	mov	rsp, rsp
	jbe	.label_787
.label_792:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_789
	lea	rsi, [rsi]
	mov	eax, r12d
	and	eax, 1
	nop	
	test	r12, r12
	js	.label_791
	mov	rbp, rbp
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_796
.label_791:
	shr	r12, 1
	mov	rsp, rsp
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	lea	rdi, [rdi]
	addss	xmm0, xmm0
.label_796:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_785]]
	mov	rbp, rbp
	movaps	xmm2, xmm0
	mov	rbp, rbp
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	mov	rbp, rbp
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	lea	rsi, [rsi]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_786]]
	nop	
	jae	.label_787
.label_789:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	mov	rsp, rsp
	jmp	.label_794
.label_793:
	mov	rbp, rbp
	add	rbx, 2
.label_794:
	cmp	rbx, -1
	mov	rbp, rbp
	je	.label_787
	cmp	rbx, 0xa
	mov	rbp, rbp
	mov	esi, 0xc
	mov	edi, 9
	mov	rbp, rbp
	mov	ecx, 3
	lea	rdi, [rdi]
	jb	.label_783
	nop	word ptr cs:[rax + rax]
.label_784:
	xor	edx, edx
	mov	rax, rbx
	lea	rsi, [rsi]
	div	rcx
	test	rdx, rdx
	nop	
	je	.label_783
	mov	rbp, rbp
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	mov	rsp, rsp
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_784
.label_783:
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_793
	mov	rbp, rbp
	mov	rax, rbx
	lea	rdi, [rdi]
	shr	rax, 0x3c
	jne	.label_787
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_787
	mov	esi, 0x10
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	rpl_calloc
	lea	rsi, [rsi]
	mov	qword ptr [r15], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_787
	mov	rsp, rsp
	shl	rbx, 4
	nop	
	add	rax, rbx
	mov	qword ptr [r15 + 8], rax
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [r15 + 0x18], xmm0
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x30], r13
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x38], rbp
	mov	qword ptr [r15 + 0x40], r14
	mov	qword ptr [r15 + 0x48], 0
	mov	rax, r15
	lea	rdi, [rdi]
	jmp	.label_782
.label_787:
	nop	
	mov	rdi, r15
	call	free
	nop	
	xor	eax, eax
.label_782:
	add	rsp, 8
	pop	rbx
	nop	
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40d7d0

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	rol	rdi, 0x3d
	mov	rbp, rbp
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, rdi
	mov	rsp, rsp
	div	rsi
	lea	rdi, [rdi]
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d7f0

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	lea	rsi, [rsi]
	cmp	rdi, rsi
	sete	al
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d800
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	mov	rsp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	r15, rdi
	mov	rsp, rsp
	mov	r14, qword ptr [r15]
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_798
.label_802:
	mov	rsp, rsp
	add	r14, 0x10
.label_798:
	cmp	r14, rax
	jae	.label_799
	lea	rdi, [rdi]
	cmp	qword ptr [r14], 0
	nop	
	je	.label_802
	mov	rsp, rsp
	mov	rbx, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	nop	
	setne	cl
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_804
	nop	word ptr [rax + rax]
.label_803:
	nop	
	test	cl, 1
	je	.label_801
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	call	rax
	nop	
	mov	rax, qword ptr [r15 + 0x40]
.label_801:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	nop	
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	lea	rdi, [rdi]
	test	rdx, rdx
	mov	rbp, rbp
	mov	rbx, rdx
	lea	rdi, [rdi]
	jne	.label_803
.label_804:
	test	cl, cl
	je	.label_800
	mov	rdi, qword ptr [r14]
	call	rax
.label_800:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	nop	
	jmp	.label_802
.label_799:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d8e0

	.globl hash_free
	.type hash_free, @function
hash_free:
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rsp, rsp
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_811
	lea	rdi, [rdi]
	cmp	qword ptr [r14 + 0x20], 0
	lea	rdi, [rdi]
	je	.label_811
	mov	r15, qword ptr [r14]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 8]
	mov	rbp, rbp
	jmp	.label_806
	nop	word ptr [rax + rax]
.label_809:
	mov	rsp, rsp
	add	r15, 0x10
.label_806:
	lea	rdi, [rdi]
	cmp	r15, rax
	jae	.label_811
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_809
	test	r15, r15
	je	.label_809
	mov	rbp, rbp
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_814
	nop	dword ptr [rax]
.label_813:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_814:
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_813
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_809
.label_811:
	mov	r15, qword ptr [r14]
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	jmp	.label_810
	nop	dword ptr [rax + rax]
.label_807:
	mov	rbp, rbp
	add	r15, 0x10
.label_810:
	cmp	r15, rax
	jae	.label_805
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_807
	nop	dword ptr [rax + rax]
.label_812:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_812
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_807
.label_805:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_815
	nop	word ptr cs:[rax + rax]
.label_808:
	nop	
	mov	rbx, qword ptr [rdi + 8]
	call	free
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	jne	.label_808
.label_815:
	mov	rbp, rbp
	mov	rdi, qword ptr [r14]
	mov	rbp, rbp
	call	free
	mov	rdi, r14
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rsp, rsp
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40da10

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x50
	mov	r14, rdi
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x28]
	mov	rsp, rsp
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_825
	lea	rsi, [rsi]
	mov	ecx, esi
	nop	
	and	ecx, 1
	lea	rsi, [rsi]
	test	rsi, rsi
	js	.label_833
	lea	rdi, [rdi]
	cvtsi2ss	xmm0, rsi
	lea	rdi, [rdi]
	jmp	.label_824
.label_833:
	shr	rsi, 1
	or	rcx, rsi
	mov	rsp, rsp
	cvtsi2ss	xmm0, rcx
	mov	rbp, rbp
	addss	xmm0, xmm0
.label_824:
	nop	
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_785]]
	mov	rsp, rsp
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	mov	rsp, rsp
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	mov	rbp, rbp
	xor	rcx, rax
	lea	rsi, [rsi]
	cvttss2si	rsi, xmm0
	lea	rsi, [rsi]
	ucomiss	xmm0, xmm1
	mov	rbp, rbp
	cmovae	rsi, rcx
	mov	rbp, rbp
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_786]]
	mov	rbp, rbp
	jae	.label_822
.label_825:
	mov	rsp, rsp
	cmp	rsi, 0xa
	mov	rbp, rbp
	mov	ebx, 0xa
	mov	rbp, rbp
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_820
	nop	word ptr cs:[rax + rax]
.label_819:
	lea	rsi, [rsi]
	add	rbx, 2
.label_820:
	cmp	rbx, -1
	je	.label_822
	cmp	rbx, 0xa
	mov	rbp, rbp
	mov	esi, 0xc
	nop	
	mov	edi, 9
	lea	rsi, [rsi]
	mov	ecx, 3
	lea	rsi, [rsi]
	jb	.label_817
.label_826:
	nop	
	xor	edx, edx
	mov	rax, rbx
	nop	
	div	rcx
	test	rdx, rdx
	je	.label_817
	lea	rdi, [rdi + rsi + 4]
	nop	
	add	rcx, 2
	add	rsi, 8
	lea	rsi, [rsi]
	cmp	rdi, rbx
	jb	.label_826
.label_817:
	mov	rsp, rsp
	xor	edx, edx
	nop	
	mov	rax, rbx
	div	rcx
	mov	rsp, rsp
	test	rdx, rdx
	je	.label_819
	nop	
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rsi, [rsi]
	ja	.label_822
	mov	bpl, 1
	mov	rbp, rbp
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_821
	nop	
	mov	esi, 0x10
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_822
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rbx
	shl	rbx, 4
	mov	rsp, rsp
	add	rax, rbx
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [rsp + 0x18], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x28]
	movups	xmmword ptr [rsp + 0x28], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x38]
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x38], xmm0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rsp]
	nop	
	xor	edx, edx
	mov	rsi, r14
	call	transfer_entries
	test	al, al
	je	.label_832
	mov	rdi, qword ptr [r14]
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	mov	rbp, rbp
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_821
.label_832:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x48], rax
	nop	
	mov	r12, qword ptr [rsp]
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jmp	.label_829
.label_827:
	add	r12, 0x10
.label_829:
	nop	
	cmp	r12, r15
	lea	rsi, [rsi]
	jae	.label_831
	cmp	qword ptr [r12], 0
	je	.label_827
	mov	rbp, rbp
	mov	rbp, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_830
	mov	rbp, rbp
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_823:
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp]
	nop	
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	lea	rsi, [rsi]
	jae	.label_828
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	nop	
	shl	rax, 4
	lea	rdi, [rdi]
	cmp	qword ptr [rdx + rax], 0
	je	.label_816
	mov	rbp, rbp
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp + 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_818
	nop	
.label_816:
	lea	rdi, [rdi]
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	mov	rbp, rbp
	inc	qword ptr [r14 + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp], 0
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x48], rbp
.label_818:
	mov	rbp, rbp
	test	rcx, rcx
	mov	rbp, rcx
	nop	
	jne	.label_823
.label_830:
	nop	
	mov	qword ptr [r12 + 8], 0
	nop	
	jmp	.label_827
.label_831:
	nop	
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rbp, rbp
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_834
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp]
	call	free
.label_822:
	mov	rbp, rbp
	xor	ebp, ebp
.label_821:
	mov	al, bpl
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
.label_828:
	mov	rbp, rbp
	call	abort
.label_834:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40dd80

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	rbp, rbp
	mov	dword ptr [rsp + 4], edx
	mov	r12, rsi
	mov	rbp, rbp
	mov	rbp, rdi
	mov	rbp, rbp
	mov	r14, qword ptr [r12]
	nop	
	mov	al, 1
	nop	
	cmp	r14, qword ptr [r12 + 8]
	nop	
	jae	.label_835
	nop	word ptr cs:[rax + rax]
.label_847:
	mov	r13, qword ptr [r14]
	nop	
	test	r13, r13
	mov	rbp, rbp
	je	.label_836
	lea	rdi, [rdi]
	mov	r15, qword ptr [r14 + 8]
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_839
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp + 0x10]
	nop	word ptr [rax + rax]
.label_844:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15]
	mov	rdi, rbx
	nop	
	call	qword ptr [rbp + 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp + 0x10]
	lea	rdi, [rdi]
	cmp	rax, rsi
	jae	.label_848
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp]
	mov	rcx, qword ptr [r15 + 8]
	nop	
	shl	rax, 4
	mov	rsp, rsp
	cmp	qword ptr [rdx + rax], 0
	lea	rsi, [rsi]
	je	.label_841
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [r15 + 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rdx + rax + 8], r15
	nop	
	jmp	.label_843
	nop	word ptr cs:[rax + rax]
.label_841:
	mov	rbp, rbp
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [rbp + 0x18]
	nop	
	mov	qword ptr [r15], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 0x48]
	mov	qword ptr [r15 + 8], rax
	nop	
	mov	qword ptr [rbp + 0x48], r15
.label_843:
	test	rcx, rcx
	mov	r15, rcx
	mov	rsp, rsp
	jne	.label_844
	mov	r13, qword ptr [r14]
.label_839:
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 8], 0
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 4]
	mov	rsp, rsp
	test	al, al
	mov	rsp, rsp
	jne	.label_836
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, r13
	mov	rbp, rbp
	call	qword ptr [rbp + 0x30]
	mov	rbp, rbp
	mov	rbx, rax
	mov	rsp, rsp
	cmp	rbx, qword ptr [rbp + 0x10]
	lea	rdi, [rdi]
	jae	.label_846
	mov	r15, qword ptr [rbp]
	shl	rbx, 4
	nop	
	cmp	qword ptr [r15 + rbx], 0
	je	.label_837
	mov	rax, qword ptr [rbp + 0x48]
	nop	
	test	rax, rax
	je	.label_840
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp + 0x48], rcx
	jmp	.label_842
.label_837:
	nop	
	add	r15, rbx
	nop	
	mov	qword ptr [r15], r13
	nop	
	inc	qword ptr [rbp + 0x18]
	mov	rsp, rsp
	jmp	.label_845
.label_840:
	mov	edi, 0x10
	nop	
	call	malloc
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_838
.label_842:
	mov	qword ptr [rax], r13
	nop	
	mov	rcx, qword ptr [r15 + rbx + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + rbx + 8], rax
.label_845:
	mov	rbp, rbp
	mov	qword ptr [r14], 0
	nop	
	dec	qword ptr [r12 + 0x18]
.label_836:
	mov	rbp, rbp
	add	r14, 0x10
	mov	rbp, rbp
	cmp	r14, qword ptr [r12 + 8]
	jb	.label_847
	mov	al, 1
.label_835:
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	nop	
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
.label_838:
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_835
.label_848:
	call	abort
.label_846:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40df90

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	lea	rsi, [rsi]
	mov	r14, rsi
	mov	rbp, rbp
	mov	r13, rdi
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_854
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rsp, rsp
	mov	rdi, r14
	nop	
	call	qword ptr [r13 + 0x30]
	mov	rsp, rsp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	rbp, qword ptr [r13 + 0x10]
	mov	rbp, rbp
	jae	.label_854
	mov	rbx, qword ptr [r13]
	mov	rbp, rbp
	shl	rbp, 4
	mov	rbp, rbp
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	nop	
	test	rsi, rsi
	je	.label_863
	mov	rsp, rsp
	cmp	rsi, r14
	je	.label_849
	mov	rdi, r14
	nop	
	call	qword ptr [r13 + 0x38]
	test	al, al
	lea	rdi, [rdi]
	je	.label_855
	mov	rax, qword ptr [r12]
	lea	rdi, [rdi]
	jmp	.label_858
.label_849:
	mov	rax, r14
	jmp	.label_859
.label_855:
	mov	rax, qword ptr [rbx + rbp + 8]
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_863
	lea	rbp, [rbx + rbp + 8]
	nop	
.label_873:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	mov	rsp, rsp
	je	.label_867
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	mov	rsp, rsp
	test	al, al
	jne	.label_871
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_873
	nop	
	jmp	.label_863
.label_867:
	mov	rbp, rbp
	mov	rax, r14
	jmp	.label_858
.label_871:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp]
.label_858:
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_863
.label_859:
	lea	rdi, [rdi]
	xor	ebp, ebp
	test	r15, r15
	je	.label_852
	lea	rsi, [rsi]
	mov	qword ptr [r15], rax
	mov	rsp, rsp
	jmp	.label_852
.label_863:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsp, rsp
	mov	edx, eax
	and	edx, 1
	nop	
	test	rax, rax
	mov	rbp, rbp
	js	.label_879
	cvtsi2ss	xmm1, rax
	jmp	.label_877
.label_879:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	lea	rdi, [rdi]
	addss	xmm1, xmm1
.label_877:
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	edx, ecx
	and	edx, 1
	mov	rbp, rbp
	test	rcx, rcx
	mov	rbp, rbp
	js	.label_872
	cvtsi2ss	xmm0, rcx
	jmp	.label_878
.label_872:
	shr	rcx, 1
	or	rdx, rcx
	lea	rsi, [rsi]
	cvtsi2ss	xmm0, rdx
	lea	rdi, [rdi]
	addss	xmm0, xmm0
.label_878:
	lea	rdi, [rdi]
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm1, xmm3
	nop	
	jbe	.label_851
	nop	
	mov	ecx, OFFSET FLAT:default_tuning
	mov	rsp, rsp
	cmp	rax, rcx
	mov	rbp, rbp
	je	.label_864
	ucomiss	xmm2,  dword ptr [dword ptr [rip + label_790]]
	jbe	.label_850
	nop	
	movss	xmm3,  dword ptr [dword ptr [rip + label_788]]
	ucomiss	xmm3, xmm2
	jbe	.label_850
	mov	rbp, rbp
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_795]]
	jbe	.label_850
	movss	xmm3, dword ptr [rax]
	lea	rsi, [rsi]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	lea	rdi, [rdi]
	jb	.label_850
	addss	xmm3,  dword ptr [dword ptr [rip + label_790]]
	ucomiss	xmm2, xmm3
	jbe	.label_850
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5,  dword ptr [dword ptr [rip + label_797]]
	ucomiss	xmm5, xmm4
	mov	rbp, rbp
	jb	.label_850
	lea	rsi, [rsi]
	ucomiss	xmm4, xmm3
	lea	rsi, [rsi]
	ja	.label_861
.label_850:
	mov	qword ptr [word ptr [r13 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	lea	rdi, [rdi]
	movss	xmm2,  dword ptr [dword ptr [rip + label_860]]
	jmp	.label_861
.label_864:
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:default_tuning
.label_861:
	movaps	xmm3, xmm2
	mov	rsp, rsp
	mulss	xmm3, xmm0
	lea	rsi, [rsi]
	ucomiss	xmm1, xmm3
	jbe	.label_851
	nop	
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rbp, rbp
	jne	.label_874
	mov	rbp, rbp
	mulss	xmm0, xmm2
.label_874:
	lea	rsi, [rsi]
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_786]]
	mov	rsp, rsp
	jae	.label_852
	nop	
	movss	xmm1,  dword ptr [dword ptr [rip + label_785]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	lea	rdi, [rdi]
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r13
	call	hash_rehash
	test	al, al
	lea	rdi, [rdi]
	je	.label_852
	mov	rsi, qword ptr [r13 + 0x10]
	nop	
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	lea	rsi, [rsi]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_854
	nop	
	mov	r15, qword ptr [r13]
	mov	rsp, rsp
	shl	rbp, 4
	mov	rbp, rbp
	lea	r12, [r15 + rbp]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + rbp]
	test	rsi, rsi
	je	.label_851
	cmp	rsi, r14
	mov	rbp, rbp
	mov	rax, r14
	lea	rdi, [rdi]
	je	.label_853
	mov	rdi, r14
	mov	rbp, rbp
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_862
	mov	rbp, rbp
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	jmp	.label_853
.label_862:
	mov	rax, qword ptr [r15 + rbp + 8]
	nop	
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_851
	lea	rbp, [r15 + rbp + 8]
.label_856:
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	lea	rdi, [rdi]
	je	.label_870
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsp, rsp
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	mov	rsp, rsp
	test	al, al
	mov	rsp, rsp
	jne	.label_875
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 8]
	mov	rsp, rsp
	add	rbp, 8
	test	rax, rax
	mov	rsp, rsp
	jne	.label_856
	lea	rsi, [rsi]
	jmp	.label_851
.label_870:
	mov	rax, r14
	lea	rdi, [rdi]
	jmp	.label_853
.label_875:
	mov	rax, qword ptr [rbp]
.label_853:
	mov	rsp, rsp
	test	rax, rax
	jne	.label_857
.label_851:
	cmp	qword ptr [r12], 0
	je	.label_876
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	mov	rbp, rbp
	je	.label_865
	mov	rcx, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [r13 + 0x48], rcx
	nop	
	jmp	.label_866
.label_876:
	lea	rsi, [rsi]
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0,  xmmword ptr [word ptr [rip + label_868]]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	mov	rsp, rsp
	jmp	.label_869
.label_865:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_852
.label_866:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_869:
	lea	rdi, [rdi]
	mov	ebp, 1
.label_852:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_854:
	mov	rsp, rsp
	call	abort
.label_857:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e3d0

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	rbx, rsi
	lea	rdx, [rsp + 8]
	call	hash_insert_if_absent
	mov	ecx, eax
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	ecx, -1
	je	.label_880
	nop	
	test	ecx, ecx
	mov	rbp, rbp
	cmove	rbx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rax, rbx
.label_880:
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbx
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e420

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	mov	rbp, rbp
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rdi, r14
	mov	rbp, rbp
	call	qword ptr [r15 + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [r15 + 0x10]
	jae	.label_897
	mov	rbp, rbp
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	nop	
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_891
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_900
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rsp, rsp
	test	al, al
	nop	
	je	.label_884
	mov	r14, qword ptr [r13]
.label_900:
	nop	
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_886
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rax]
	lea	rsi, [rsi]
	movups	xmmword ptr [r13], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax], 0
	mov	rbp, rbp
	mov	rcx, qword ptr [r15 + 0x48]
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_890
.label_884:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_891
	lea	rsi, [rsi]
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_894:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_899
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	mov	rsp, rsp
	jne	.label_901
	mov	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	lea	rsi, [rsi]
	jne	.label_894
	lea	rsi, [rsi]
	jmp	.label_891
.label_886:
	mov	qword ptr [r13], 0
	lea	rsi, [rsi]
	jmp	.label_890
.label_899:
	mov	rcx, rax
	jmp	.label_896
.label_901:
	mov	r14, qword ptr [rcx]
.label_896:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x48], rcx
.label_890:
	lea	rdi, [rdi]
	xor	r12d, r12d
	test	r14, r14
	je	.label_891
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	mov	rbp, rbp
	jne	.label_887
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_881
	mov	rsp, rsp
	cvtsi2ss	xmm1, rax
	jmp	.label_888
.label_881:
	shr	rax, 1
	mov	rsp, rsp
	or	rcx, rax
	mov	rsp, rsp
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_888:
	mov	rcx, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	nop	
	test	rcx, rcx
	js	.label_895
	cvtsi2ss	xmm0, rcx
	mov	rsp, rsp
	jmp	.label_898
.label_895:
	mov	rbp, rbp
	shr	rcx, 1
	or	rdx, rcx
	nop	
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_898:
	movaps	xmm3, xmm2
	nop	
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_887
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	lea	rsi, [rsi]
	je	.label_883
	lea	rdi, [rdi]
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_790]]
	nop	
	jbe	.label_892
	mov	rsp, rsp
	movss	xmm4,  dword ptr [dword ptr [rip + label_788]]
	ucomiss	xmm4, xmm3
	mov	rsp, rsp
	jbe	.label_892
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_892
	mov	rbp, rbp
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4,  dword ptr [dword ptr [rip + label_795]]
	jbe	.label_892
	lea	rsi, [rsi]
	movss	xmm4,  dword ptr [dword ptr [rip + label_790]]
	addss	xmm4, xmm2
	mov	rbp, rbp
	ucomiss	xmm3, xmm4
	jbe	.label_892
	movss	xmm3, dword ptr [rax + 4]
	nop	
	movss	xmm5,  dword ptr [dword ptr [rip + label_797]]
	nop	
	ucomiss	xmm5, xmm3
	jb	.label_892
	ucomiss	xmm3, xmm4
	ja	.label_882
.label_892:
	mov	qword ptr [word ptr [r15 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_882
.label_883:
	mov	eax, OFFSET FLAT:default_tuning
.label_882:
	mulss	xmm2, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm2, xmm1
	jbe	.label_887
	mulss	xmm0, dword ptr [rax + 4]
	mov	rbp, rbp
	cmp	byte ptr [rax + 0x10], 0
	mov	rsp, rsp
	jne	.label_893
	mulss	xmm0, dword ptr [rax + 8]
.label_893:
	movss	xmm1,  dword ptr [dword ptr [rip + label_785]]
	nop	
	movaps	xmm2, xmm0
	lea	rsi, [rsi]
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	lea	rdi, [rdi]
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	mov	rbp, rbp
	test	al, al
	jne	.label_887
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_885
.label_889:
	nop	
	mov	rbx, qword ptr [rdi + 8]
	mov	rsp, rsp
	call	free
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	jne	.label_889
.label_885:
	nop	
	mov	qword ptr [r15 + 0x48], 0
.label_887:
	nop	
	mov	r12, r14
.label_891:
	mov	rax, r12
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_897:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e770

	.globl triple_hash
	.type triple_hash, @function
triple_hash:
	push	r14
	mov	rbp, rbp
	push	rbx
	push	rax
	nop	
	mov	r14, rsi
	mov	rbp, rbp
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx]
	call	hash_pjw
	xor	rax, qword ptr [rbx + 8]
	mov	rbp, rbp
	xor	edx, edx
	div	r14
	mov	rsp, rsp
	mov	rax, rdx
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40e7b0

	.globl triple_hash_no_name
	.type triple_hash_no_name, @function
triple_hash_no_name:
	nop
	mov	rax, qword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	nop	
	mov	rax, rdx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40e7c0

	.globl triple_compare
	.type triple_compare, @function
triple_compare:
	nop
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_902
	nop	
	mov	rax, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_903
	lea	rsi, [rsi]
	push	rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	same_name
	mov	rsp, rsp
	add	rsp, 8
	ret	
.label_902:
	mov	rsp, rsp
	xor	eax, eax
	ret	
.label_903:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40e800
	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:

	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_905
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_904
	mov	rbp, rbp
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	mov	rsp, rsp
	sete	al
	lea	rsi, [rsi]
	add	rsp, 8
	mov	rbp, rbp
	ret	
.label_905:
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	ret	
.label_904:
	lea	rsi, [rsi]
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40e850

	.globl triple_free
	.type triple_free, @function
triple_free:
	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	call	free
	mov	rdi, rbx
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	jmp	free
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40e880

	.globl opendirat
	.type opendirat, @function
opendirat:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	push	r14
	push	rbx
	mov	r14, rcx
	mov	rsp, rsp
	or	edx, 0x90900
	mov	rsp, rsp
	xor	ebx, ebx
	mov	rsp, rsp
	xor	eax, eax
	call	openat_safer
	lea	rsi, [rsi]
	mov	ebp, eax
	test	ebp, ebp
	js	.label_906
	mov	rsp, rsp
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_907
	mov	dword ptr [r14], ebp
	mov	rsp, rsp
	jmp	.label_906
.label_907:
	nop	
	call	__errno_location
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	mov	rsp, rsp
	call	close
	lea	rsi, [rsi]
	mov	dword ptr [rbx], r14d
	lea	rsi, [rsi]
	xor	ebx, ebx
.label_906:
	nop	
	mov	rax, rbx
	mov	rsp, rsp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40e900

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
	je	.label_908
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
	jl	.label_910
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_9
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_910
	mov	esi, OFFSET FLAT:.str.2_5
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_909
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_909:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_910:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_908:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_13
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
	#Procedure 0x40e9f0

	.globl qcopy_acl
	.type qcopy_acl, @function
qcopy_acl:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	rbx
	nop	
	push	rax
	mov	r14d, ecx
	mov	rsp, rsp
	mov	rbx, rdx
	mov	rsp, rsp
	lea	rcx, [rsp]
	mov	edx, r8d
	call	get_permissions
	lea	rsi, [rsi]
	mov	ebp, 0xfffffffe
	test	eax, eax
	mov	rbp, rbp
	jne	.label_911
	lea	r15, [rsp]
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rsi, rbx
	mov	edx, r14d
	call	set_permissions
	nop	
	mov	ebp, eax
	mov	rdi, r15
	lea	rdi, [rdi]
	call	free_permission_context
.label_911:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ea60

	.globl qset_acl
	.type qset_acl, @function
qset_acl:
	push	rbp
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rsp, rsp
	mov	eax, esi
	mov	rcx, rdi
	mov	dword ptr [rsp], edx
	mov	rsp, rsp
	lea	rbx, [rsp]
	mov	rdi, rbx
	mov	rsi, rcx
	mov	edx, eax
	call	set_permissions
	mov	ebp, eax
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	call	free_permission_context
	mov	rsp, rsp
	mov	eax, ebp
	lea	rsi, [rsi]
	add	rsp, 8
	nop	
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40eab0
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
	#Procedure 0x40eb00
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
	#Procedure 0x40eb20
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
	#Procedure 0x40eb40
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
	#Procedure 0x40ebb0
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
	#Procedure 0x40ebd0
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
	je	.label_912
	test	rdx, rdx
	nop	
	je	.label_912
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_912:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ec10
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
	#Procedure 0x40ecc0

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
.label_942:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	ecx, r15d
	lea	rdi, [rdi]
	cmp	r15d, 0xa
	ja	.label_1021
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1028]]
.label_1753:
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
	mov	edi, OFFSET FLAT:.str.12_2
	mov	esi, r15d
	mov	rsp, rsp
	call	gettext_quote
	mov	r8b, bl
	mov	rsp, rsp
	mov	r10, r14
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x100], rax
.label_1754:
	mov	byte ptr [rsp + 0x43], r8b
	mov	r13, rbp
	nop	
	test	r12b, 1
	nop	
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	rdx, qword ptr [rsp + 0x78]
	jne	.label_926
	mov	rbp, rbp
	mov	al, byte ptr [rdx]
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	mov	ecx, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], rcx
	je	.label_926
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	nop	dword ptr [rax]
.label_949:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_944
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rcx + rsi], al
.label_944:
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + rcx + 1]
	mov	rsp, rsp
	inc	rcx
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_949
.label_926:
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
	jmp	.label_959
.label_1746:
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
	jmp	.label_959
.label_1749:
	lea	rsi, [rsi]
	mov	al, 1
.label_1747:
	mov	rbp, rbp
	mov	r12b, 1
.label_1750:
	mov	rbp, rbp
	test	r12b, 1
	mov	cl, 1
	nop	
	je	.label_986
	lea	rsi, [rsi]
	mov	cl, al
.label_986:
	mov	rsp, rsp
	mov	al, cl
.label_1748:
	mov	r9d, 2
	test	r12b, 1
	mov	rsp, rsp
	jne	.label_991
	test	r10, r10
	je	.label_1035
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx], 0x27
	mov	rsp, rsp
	mov	ecx, 1
	mov	rsp, rsp
	jmp	.label_933
.label_991:
	xor	ecx, ecx
	jmp	.label_933
.label_1751:
	mov	rsp, rsp
	mov	r9d, 5
	test	r12b, 1
	jne	.label_1009
	lea	rdi, [rdi]
	test	r10, r10
	je	.label_1014
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], 0x22
	mov	rsp, rsp
	mov	eax, 1
	jmp	.label_921
.label_1752:
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
	jmp	.label_959
.label_1035:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_933:
	nop	
	mov	qword ptr [rsp + 0x58], rcx
	nop	
	mov	ecx, OFFSET FLAT:.str.12_2
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbp, rbp
	mov	ecx, 1
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
	mov	dil, al
	mov	sil, r12b
	jmp	.label_959
.label_1009:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_921
.label_1014:
	lea	rdi, [rdi]
	mov	eax, 1
.label_921:
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
.label_959:
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
	jmp	.label_931
	nop	word ptr cs:[rax + rax]
.label_937:
	nop	
	inc	rdi
.label_931:
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_987
	nop	
	cmp	rdi, rbp
	mov	rsp, rsp
	jne	.label_989
	jmp	.label_993
	nop	dword ptr [rax + rax]
.label_987:
	mov	r13, -1
	lea	rsi, [rsi]
	cmp	byte ptr [r11 + rdi], 0
	je	.label_996
.label_989:
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_1004
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_1006
	cmp	rbp, -1
	lea	rsi, [rsi]
	jne	.label_1006
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
.label_1006:
	mov	rsp, rsp
	cmp	rbx, rbp
	lea	rsi, [rsi]
	jbe	.label_1037
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_919
	nop	dword ptr [rax + rax]
.label_1004:
	nop	
	mov	dword ptr [rsp + 0x10c], 0
	lea	rdi, [rdi]
	jmp	.label_919
	nop	word ptr cs:[rax + rax]
.label_1037:
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
	jne	.label_960
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
	je	.label_919
	jmp	.label_917
.label_960:
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
.label_919:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_1020
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	nop	
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_974]]
.label_1783:
	mov	rsp, rsp
	test	rdi, rdi
	mov	rbp, rbp
	jne	.label_948
	mov	rbp, rbp
	jmp	.label_984
.label_1787:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	cmp	rbp, -1
	nop	
	je	.label_985
	lea	rdi, [rdi]
	test	rdi, rdi
	nop	
	jne	.label_988
	nop	
	cmp	rbp, 1
	je	.label_984
	xor	r13d, r13d
	jmp	.label_920
.label_1776:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xc3], 0
	je	.label_998
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_917
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_1010
	mov	al, r14b
	and	al, 1
	jne	.label_1013
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x58], r10
	nop	
	jae	.label_1017
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x27
.label_1017:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	nop	
	jae	.label_1024
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_1024:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_979
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_979:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	add	rax, 3
	mov	rsp, rsp
	mov	r14b, 1
	mov	rbp, rbp
	mov	rcx, rax
	jmp	.label_1025
.label_1777:
	mov	rbp, rbp
	mov	bl, 0x62
	mov	rsp, rsp
	jmp	.label_918
.label_1778:
	lea	rsi, [rsi]
	mov	cl, 0x74
	jmp	.label_923
.label_1779:
	mov	rsp, rsp
	mov	bl, 0x76
	nop	
	jmp	.label_918
.label_1780:
	mov	bl, 0x66
	jmp	.label_918
.label_1781:
	lea	rsi, [rsi]
	mov	cl, 0x72
	jmp	.label_923
.label_1784:
	mov	al, 1
	mov	qword ptr [rsp + 0x68], rax
	lea	rdi, [rdi]
	cmp	r9d, 2
	jne	.label_932
	cmp	byte ptr [rsp + 0xe7], 0
	nop	
	jne	.label_936
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
	jae	.label_940
	nop	
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_940:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_958
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x5c
.label_958:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_966
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_966:
	add	qword ptr [rsp + 0x58], 3
	xor	r14d, r14d
.label_932:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_920
.label_1785:
	cmp	r9d, 5
	lea	rdi, [rdi]
	je	.label_983
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_948
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_948
	mov	rbp, rbp
	jmp	.label_992
.label_1786:
	lea	rdi, [rdi]
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_994
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_999
	lea	rdi, [rdi]
	jmp	.label_1005
.label_1020:
	mov	qword ptr [rsp + 0x80], r9
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x43], r8b
	mov	qword ptr [rsp + 0x110], r10
	cmp	qword ptr [rsp + 0xb8], 1
	jne	.label_1008
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
.label_935:
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
	ja	.label_916
	lea	rdi, [rdi]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_916
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_920
.label_985:
	test	rdi, rdi
	jne	.label_925
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_925
.label_984:
	mov	dl, 1
.label_1782:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x66], 0
	lea	rsi, [rsi]
	je	.label_928
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, dl
	mov	rsp, rsp
	jmp	.label_920
.label_998:
	cmp	dword ptr [rsp + 0x3c], 0
	jne	.label_937
	jmp	.label_948
.label_994:
	cmp	byte ptr [rsp + 0x57], 0
	mov	cl, r15b
	je	.label_923
.label_999:
	xor	eax, eax
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_938
.label_923:
	cmp	byte ptr [rsp + 0x66], 0
	mov	bl, cl
	lea	rdi, [rdi]
	je	.label_976
.label_918:
	xor	eax, eax
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc3], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_920
	lea	rsi, [rsi]
	jmp	.label_922
.label_1008:
	mov	qword ptr [rsp + 0x98], 0
	cmp	rbp, -1
	jne	.label_956
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
.label_956:
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
.label_1032:
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
	je	.label_995
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x110]
	mov	rsp, rsp
	movabs	rsi, 0x20000002b
	je	.label_1001
	lea	rsi, [rsi]
	cmp	rbp, -2
	nop	
	mov	rdi, qword ptr [rsp + 0xa8]
	je	.label_1011
	lea	rsi, [rsi]
	cmp	rbp, 1
	seta	al
	lea	rdi, [rdi]
	and	al, byte ptr [rsp + 0x77]
	movzx	eax, al
	nop	
	cmp	eax, 1
	jne	.label_969
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	lea	rax, [rcx + rax]
	nop	
	mov	ecx, 1
	nop	
.label_1012:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_1030
	lea	rdi, [rdi]
	bt	rsi, rdx
	jb	.label_1027
.label_1030:
	lea	rsi, [rsi]
	inc	rcx
	mov	rbp, rbp
	cmp	rcx, rbp
	jb	.label_1012
.label_969:
	nop	
	mov	edi, dword ptr [rsp + 0xc4]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	nop	
	jne	.label_929
	xor	r13d, r13d
.label_929:
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
	je	.label_1032
	mov	rsp, rsp
	jmp	.label_935
.label_925:
	lea	rsi, [rsi]
	mov	rbp, -1
	mov	rbp, rbp
	xor	r13d, r13d
	jmp	.label_920
.label_983:
	cmp	dword ptr [rsp + 0x44], 0
	lea	rdi, [rdi]
	je	.label_948
	lea	rcx, [rdi + 2]
	mov	rsp, rsp
	cmp	rcx, rbp
	jae	.label_948
	mov	rbp, rbp
	movzx	eax, byte ptr [rdi + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_948
	lea	rsi, [rsi]
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	edx, 0x3e
	ja	.label_955
	nop	
	movabs	rsi, 0x7000a38200000000
	mov	rsp, rsp
	bt	rsi, rdx
	mov	rsp, rsp
	jae	.label_946
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_964
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_968
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rsi], 0x3f
.label_968:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_978
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x22
.label_978:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_970
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rsi + rax], 0x22
.label_970:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 3]
	cmp	rax, r10
	nop	
	jae	.label_1029
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x3f
.label_1029:
	mov	rbp, rbp
	add	qword ptr [rsp + 0x58], 4
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	lea	rdi, [rdi]
	xor	r13d, r13d
	jmp	.label_920
.label_948:
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_920:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x65], 0
	lea	rsi, [rsi]
	je	.label_1002
	cmp	qword ptr [rsp + 0x150], 0
	mov	rsp, rsp
	jne	.label_1019
	lea	rsi, [rsi]
	jmp	.label_1022
.label_1002:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_1022
.label_1019:
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
	jne	.label_1026
	mov	rcx, qword ptr [rsp + 0x150]
	nop	
	and	esi, dword ptr [rcx + rdx*4]
	mov	rsp, rsp
	jmp	.label_1033
	nop	word ptr cs:[rax + rax]
.label_1022:
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rdi, [rdi]
	test	cl, cl
.label_1033:
	mov	rbp, rbp
	mov	bl, r15b
	je	.label_938
	mov	rsp, rsp
	jmp	.label_922
.label_1026:
	mov	bl, r15b
.label_922:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_917
	nop	
	cmp	r9d, 2
	jne	.label_997
	lea	rdi, [rdi]
	mov	al, r14b
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_997
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_1023
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_1023:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	cmp	rax, r10
	jae	.label_943
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_943:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_980
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_980:
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_997:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_953
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x5c
.label_953:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	jmp	.label_939
.label_988:
	xor	r13d, r13d
	nop	
	jmp	.label_920
.label_916:
	mov	rsp, rsp
	add	rax, rdi
	mov	qword ptr [rsp + 0xe8], rax
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_963
	nop	dword ptr [rax + rax]
.label_972:
	inc	qword ptr [rsp + 0x58]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_963:
	test	cl, cl
	je	.label_973
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0x10c]
	test	dl, 1
	mov	rbp, rbp
	je	.label_975
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_982
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x5c
.label_982:
	lea	rsi, [rsi]
	inc	qword ptr [rsp + 0x58]
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_975
	nop	dword ptr [rax]
.label_973:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_917
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_1000
	mov	al, r14b
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_1000
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_957
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rdx], 0x27
.label_957:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	inc	rax
	cmp	rax, r10
	jae	.label_1015
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], 0x24
.label_1015:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_971
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rdx + rax], 0x27
.label_971:
	mov	rsp, rsp
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_1000:
	cmp	qword ptr [rsp + 0x58], r10
	lea	rsi, [rsi]
	jae	.label_1034
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rax + rdx], 0x5c
.label_1034:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_914
	mov	dl, r15b
	shr	dl, 6
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], dl
.label_914:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_962
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
.label_962:
	nop	
	add	qword ptr [rsp + 0x58], 3
	mov	rbp, rbp
	and	r15b, 7
	nop	
	or	r15b, 0x30
	mov	rsp, rsp
	mov	al, 1
.label_975:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xe8], rdx
	jbe	.label_938
	lea	rsi, [rsi]
	test	r14b, 1
	je	.label_934
	mov	bl, al
	nop	
	and	bl, 1
	lea	rdi, [rdi]
	jne	.label_934
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_954
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_954:
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	inc	rsi
	mov	rsp, rsp
	cmp	rsi, r10
	lea	rsi, [rsi]
	jae	.label_961
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdi + rsi], 0x27
	mov	rbp, rbp
	mov	rdi, rbx
.label_961:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_934:
	nop	
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_972
	mov	rsi, qword ptr [rsp + 0xb0]
	nop	
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rsi + rdi], r15b
	lea	rdi, [rdi]
	mov	rdi, rbx
	jmp	.label_972
	nop	word ptr cs:[rax + rax]
.label_938:
	test	r14b, 1
	lea	rsi, [rsi]
	je	.label_990
	mov	rsp, rsp
	and	al, 1
	jne	.label_990
	cmp	qword ptr [rsp + 0x58], r10
	mov	rsp, rsp
	jae	.label_950
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_950:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_945
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_945:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_990:
	mov	rsp, rsp
	mov	bl, r15b
.label_939:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_1003
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], bl
.label_1003:
	nop	
	inc	qword ptr [rsp + 0x58]
	nop	
	shl	r13b, 7
	mov	rsp, rsp
	sar	r13b, 7
	and	r13b, r8b
	mov	rbp, rbp
	mov	r8b, r13b
	jmp	.label_937
.label_1010:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	jmp	.label_1025
.label_1013:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
.label_1025:
	lea	rsi, [rsi]
	cmp	rcx, r10
	lea	rsi, [rsi]
	jae	.label_1036
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax + rcx], 0x5c
.label_1036:
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
	je	.label_913
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_924
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	cmp	edx, 9
	lea	rsi, [rsi]
	ja	.label_967
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_930
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x30
.label_930:
	lea	rsi, [rsi]
	lea	rdx, [rcx + 2]
	lea	rdi, [rdi]
	cmp	rdx, r10
	nop	
	jae	.label_952
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rdx], 0x30
.label_952:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x58], rcx
	jmp	.label_920
.label_913:
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_920
.label_924:
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	
	jmp	.label_920
.label_967:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_920
.label_1001:
	xor	r13d, r13d
.label_995:
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_935
.label_1011:
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	rbp, rcx
	lea	rsi, [rsi]
	jbe	.label_965
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
.label_981:
	cmp	byte ptr [r11 + rcx], 0
	nop	
	je	.label_977
	mov	rbp, rbp
	lea	rcx, [rax + rdi + 1]
	nop	
	inc	rax
	mov	rbp, rbp
	cmp	rcx, rbp
	mov	rsp, rsp
	jb	.label_981
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_935
.label_965:
	mov	rsp, rsp
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_935
.label_977:
	nop	
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_935
.label_955:
	xor	r13d, r13d
	jmp	.label_920
.label_946:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_920
.label_993:
	nop	
	mov	r13, rdi
.label_996:
	mov	rsp, rsp
	cmp	r9d, 2
	mov	rsp, rsp
	setne	al
	cmp	qword ptr [rsp + 0x58], 0
	lea	rsi, [rsi]
	setne	dl
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_1007
	mov	rsp, rsp
	or	al, dl
	mov	rbp, rbp
	je	.label_1018
.label_1007:
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
	je	.label_915
	mov	rsp, rsp
	or	al, dl
	lea	rsi, [rsi]
	jne	.label_915
	test	r8b, 1
	mov	rbp, rbp
	jne	.label_1031
.label_1769:
	cmp	qword ptr [rsp + 0xd8], 0
	je	.label_915
	test	r10, r10
	mov	r15d, r9d
	mov	rbp, rbp
	mov	al, bl
	nop	
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0xd8]
	lea	rsi, [rsi]
	je	.label_942
.label_915:
	mov	rdx, qword ptr [rsp + 0x20]
	test	rdx, rdx
	je	.label_927
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rsi, [rsi]
	jne	.label_927
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	test	al, al
	je	.label_927
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_947:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_941
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rsi], al
.label_941:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	mov	rbp, rbp
	jne	.label_947
.label_927:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_951
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0
	lea	rdi, [rdi]
	jmp	.label_951
.label_928:
	lea	rdi, [rdi]
	mov	r9d, 2
	nop	
	jmp	.label_917
.label_1027:
	mov	rsp, rsp
	mov	r9d, 2
	nop	
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rdi, [rdi]
	jmp	.label_917
.label_1018:
	nop	
	mov	rbp, r13
	jmp	.label_917
.label_976:
	lea	rdi, [rdi]
	mov	r9d, 2
.label_917:
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
.label_1016:
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rax
.label_951:
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
.label_1031:
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
	jmp	.label_1016
.label_936:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_917
.label_1005:
	mov	r9d, 2
	lea	rsi, [rsi]
	jmp	.label_917
.label_992:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_917
.label_964:
	lea	rsi, [rsi]
	mov	r9d, 5
	mov	rbp, rbp
	jmp	.label_917
.label_1021:
	nop	
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410240
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
	#Procedure 0x410380
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
	je	.label_1038
	mov	qword ptr [rax], rbx
.label_1038:
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
	#Procedure 0x4104d0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_1039
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_1043:
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
	jl	.label_1043
.label_1039:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_1042
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_1040]], OFFSET FLAT:slot0
.label_1042:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_1041
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_1041:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410590
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x4105a0

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
	js	.label_1050
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_1047
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_1045
.label_1047:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_1048
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
	jne	.label_1046
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_1046:
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
.label_1045:
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
	ja	.label_1044
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
	je	.label_1049
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_1049:
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
.label_1044:
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
.label_1050:
	lea	rdi, [rdi]
	call	abort
.label_1048:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x410810
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410820
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
	#Procedure 0x410850
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
	#Procedure 0x410880

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
	je	.label_1051
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
.label_1051:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410910
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
	je	.label_1052
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
.label_1052:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4109b0

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
	je	.label_1053
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
.label_1053:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410a40
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
	je	.label_1054
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
.label_1054:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x410ab0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_1055]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1056]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1057]]
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
	#Procedure 0x410b50
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_1055]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1056]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1057]]
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
	#Procedure 0x410bf0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_1055]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1056]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1057]]
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
	#Procedure 0x410c60
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_1055]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1056]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1057]]
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
	#Procedure 0x410cd0

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
	je	.label_1058
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
.label_1058:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	16
	#Procedure 0x410db0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_1055]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1056]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1057]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_1059
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_1059
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
.label_1059:
	nop	
	call	abort
	.section	.text
	.align	16
	#Procedure 0x410e40
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_1055]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1056]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1057]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_1060
	test	rdx, rdx
	je	.label_1060
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
.label_1060:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410ed0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_1055]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1056]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1057]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_1061
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_1061
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
.label_1061:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410f70
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_1055]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1056]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1057]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_1062
	test	rsi, rsi
	je	.label_1062
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
.label_1062:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411010
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411020
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
	#Procedure 0x411040

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
	#Procedure 0x411060

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
	#Procedure 0x411090

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
	jne	.label_1065
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_1063
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_1064
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_1064
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_1064
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_1064
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_1064
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_1064
	nop	
	mov	eax, OFFSET FLAT:.str.14_2
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_1065
	mov	eax, OFFSET FLAT:.str.15_3
	jmp	.label_1065
.label_1063:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_1064
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_1064
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_1064
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_1064
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_1064
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_1064
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_1066
.label_1064:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_2
	mov	eax, OFFSET FLAT:.str.12_2
	cmove	rax, rcx
.label_1065:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_1066:
	mov	eax, OFFSET FLAT:.str.17_3
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_1065
	mov	eax, OFFSET FLAT:.str.18_2
	jmp	.label_1065
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411200

	.globl renameatu
	.type renameatu, @function
renameatu:
	mov	rsp, rsp
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x128
	mov	rsp, rsp
	mov	r12d, r8d
	mov	rsp, rsp
	mov	r13, rcx
	mov	rbp, rbp
	mov	r14d, edx
	mov	rbp, rbp
	mov	rbp, rsi
	mov	r15d, edi
	nop	
	mov	edi, 0x13c
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	mov	ecx, r14d
	nop	
	mov	r8, r13
	lea	rdi, [rdi]
	mov	r9d, r12d
	lea	rsi, [rsi]
	call	syscall
	mov	rsp, rsp
	mov	rbx, rax
	call	__errno_location
	nop	
	test	ebx, ebx
	jns	.label_1067
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0x16
	je	.label_1075
	lea	rdi, [rdi]
	cmp	ecx, 0x5f
	je	.label_1075
	cmp	ecx, 0x26
	mov	rbp, rbp
	jne	.label_1067
.label_1075:
	mov	rbp, rbp
	test	r12d, r12d
	je	.label_1070
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	cmp	r12d, 2
	jb	.label_1072
	nop	
	mov	rax, qword ptr [rsp]
	mov	rbp, rbp
	mov	dword ptr [rax], 0x5f
	lea	rdi, [rdi]
	mov	ebx, 0xffffffff
	mov	rbp, rbp
	jmp	.label_1067
.label_1070:
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	xor	r12d, r12d
.label_1078:
	mov	rdi, rbp
	call	strlen
	lea	rsi, [rsi]
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	rdi, r13
	nop	
	call	strlen
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_1069
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	je	.label_1069
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbx + rbp - 1]
	cmp	ecx, 0x2f
	lea	rdi, [rdi]
	je	.label_1068
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rax + r13 - 1]
	cmp	eax, 0x2f
	mov	rsp, rsp
	jne	.label_1069
.label_1068:
	lea	rcx, [rsp + 8]
	mov	edi, 1
	nop	
	mov	r8d, 0x100
	mov	esi, r15d
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	__fxstatat
	lea	rdi, [rdi]
	mov	ebx, 0xffffffff
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_1067
	test	r12b, r12b
	mov	rbp, rbp
	je	.label_1073
	lea	rdi, [rdi]
	mov	eax, 0xf000
	nop	
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	je	.label_1069
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	mov	dword ptr [rax], 2
	lea	rdi, [rdi]
	jmp	.label_1067
.label_1072:
	lea	rcx, [rsp + 0x98]
	mov	edi, 1
	mov	rbp, rbp
	mov	r8d, 0x100
	mov	esi, r14d
	mov	rdx, r13
	lea	rdi, [rdi]
	call	__fxstatat
	test	eax, eax
	je	.label_1077
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp]
	mov	eax, dword ptr [rax]
	mov	rbp, rbp
	mov	r12b, 1
	cmp	eax, 2
	je	.label_1078
	mov	ebx, 0xffffffff
	cmp	eax, 0x4b
	jne	.label_1067
.label_1077:
	nop	
	mov	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x11
	mov	rsp, rsp
	mov	ebx, 0xffffffff
	nop	
	jmp	.label_1067
.label_1073:
	lea	rcx, [rsp + 0x98]
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	mov	r8d, 0x100
	nop	
	mov	esi, r14d
	lea	rdi, [rdi]
	mov	rdx, r13
	nop	
	call	__fxstatat
	nop	
	test	eax, eax
	je	.label_1076
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax], 2
	lea	rsi, [rsi]
	jne	.label_1067
	mov	rsp, rsp
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	jne	.label_1067
	mov	rbp, rbp
	jmp	.label_1069
.label_1076:
	nop	
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsp + 0xb0]
	and	ecx, eax
	cmp	ecx, 0x4000
	nop	
	jne	.label_1071
	and	eax, dword ptr [rsp + 0x20]
	mov	rbp, rbp
	cmp	eax, 0x4000
	lea	rsi, [rsi]
	jne	.label_1074
.label_1069:
	nop	
	mov	edi, r15d
	nop	
	mov	rsi, rbp
	lea	rsi, [rsi]
	mov	edx, r14d
	mov	rbp, rbp
	mov	rcx, r13
	call	renameat
	mov	rsp, rsp
	mov	ebx, eax
.label_1067:
	mov	eax, ebx
	add	rsp, 0x128
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_1071:
	mov	rax, qword ptr [rsp]
	mov	rbp, rbp
	mov	dword ptr [rax], 0x14
	lea	rdi, [rdi]
	jmp	.label_1067
.label_1074:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0x15
	jmp	.label_1067
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4114e0

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rsi, [rsi]
	lea	rdx, [rsp]
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	call	__lxstat
	mov	ecx, eax
	lea	rdi, [rdi]
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1079
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 8], rax
	mov	rsp, rsp
	mov	rax, rbx
.label_1079:
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411540

	.globl safe_write
	.type safe_write, @function
safe_write:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	rsp, rsp
	mov	r14, rsi
	nop	
	mov	r15d, edi
	nop	word ptr cs:[rax + rax]
.label_1081:
	mov	rbp, rbp
	mov	edi, r15d
	mov	rsi, r14
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	write
	mov	rsp, rsp
	mov	rbp, rax
	lea	rsi, [rsi]
	test	rbp, rbp
	lea	rsi, [rsi]
	jns	.label_1080
	call	__errno_location
	nop	
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_1081
	cmp	rbx, 0x7ff00001
	nop	
	jb	.label_1080
	nop	
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_1081
.label_1080:
	mov	rbp, rbp
	mov	rax, rbp
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x4115d0

	.globl same_name
	.type same_name, @function
same_name:
	nop	
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rcx, rdi
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	nop	
	mov	rsi, rcx
	mov	rcx, rax
	jmp	same_nameat
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4115f0

	.globl same_nameat
	.type same_nameat, @function
same_nameat:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	nop	
	push	r13
	lea	rsi, [rsi]
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x138
	lea	rsi, [rsi]
	mov	r15, rcx
	mov	dword ptr [rsp + 0x134], edx
	lea	rsi, [rsi]
	mov	r13, rsi
	mov	r12d, edi
	lea	rdi, [rdi]
	mov	rdi, r13
	lea	rsi, [rsi]
	call	last_component
	nop	
	mov	rbx, rax
	mov	rdi, r15
	call	last_component
	mov	rbp, rax
	mov	rdi, rbx
	call	base_len
	mov	r14, rax
	mov	rdi, rbp
	call	base_len
	lea	rsi, [rsi]
	cmp	r14, rax
	mov	rbp, rbp
	jne	.label_1086
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x128], r15
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 4], r12d
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, rbp
	mov	rdx, r14
	nop	
	call	memcmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_1084
	xor	ebp, ebp
	mov	rsp, rsp
	jmp	.label_1085
.label_1086:
	xor	ebp, ebp
	mov	rbp, rbp
	jmp	.label_1085
.label_1084:
	mov	rdi, r13
	mov	rsp, rsp
	call	dir_name
	lea	rdi, [rdi]
	mov	rbp, rax
	lea	rcx, [rsp + 0x98]
	lea	rsi, [rsi]
	mov	edi, 1
	mov	r8d, 0x100
	lea	rsi, [rsi]
	mov	esi, dword ptr [rsp + 4]
	mov	rdx, rbp
	call	__fxstatat
	test	eax, eax
	nop	
	je	.label_1087
	call	__errno_location
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_6
	xor	eax, eax
	mov	rcx, rbp
	mov	rbp, rbp
	call	error
.label_1087:
	mov	rdi, rbp
	mov	rbp, rbp
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x128]
	mov	rbp, rbp
	call	dir_name
	mov	rbx, rax
	nop	
	lea	rcx, [rsp + 8]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0x134]
	mov	rdx, rbx
	call	__fxstatat
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_1083
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str_6
	xor	eax, eax
	mov	rsp, rsp
	mov	rcx, rbx
	lea	rsi, [rsi]
	call	error
.label_1083:
	mov	rax, qword ptr [rsp + 0xa0]
	mov	rsp, rsp
	cmp	rax, qword ptr [rsp + 0x10]
	nop	
	jne	.label_1088
	nop	
	mov	rax, qword ptr [rsp + 0x98]
	cmp	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	sete	bpl
	jmp	.label_1082
.label_1088:
	xor	ebp, ebp
.label_1082:
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	free
.label_1085:
	mov	rsp, rsp
	mov	al, bpl
	lea	rsi, [rsi]
	add	rsp, 0x138
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4117d0

	.globl streamsavedir
	.type streamsavedir, @function
streamsavedir:
	mov	rbp, rbp
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x48
	mov	rbp, rbp
	mov	r13, rdi
	mov	rsp, rsp
	mov	ebx, esi
	nop	
	xor	r14d, r14d
	test	r13, r13
	je	.label_1098
	mov	rax,  qword ptr [word ptr [+ (rbx * 8) + comparison_function_table]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rax
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rax
	dec	rbx
	mov	qword ptr [rsp + 0x40], rbx
	xor	r15d, r15d
	xor	r12d, r12d
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	xor	ebx, ebx
	mov	rsp, rsp
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	jmp	.label_1092
	nop	dword ptr [rax]
.label_1104:
	nop	
	mov	qword ptr [rsp + 8], rbx
	mov	rdi, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	call	xstrdup
	mov	rcx, r12
	shl	rcx, 4
	mov	qword ptr [rbx + rcx], rax
	mov	rax, qword ptr [r14]
	mov	rsp, rsp
	mov	qword ptr [rbx + rcx + 8], rax
	inc	r12
	lea	rdi, [rdi]
	add	r15, qword ptr [rsp]
	mov	rbx, qword ptr [rsp + 0x30]
.label_1092:
	mov	qword ptr [rsp + 0x30], rbx
	nop	dword ptr [rax]
.label_1102:
	nop	
	mov	dword ptr [rbp], 0
	nop	
	mov	rdi, r13
	mov	rsp, rsp
	call	readdir
	mov	r14, rax
	test	r14, r14
	je	.label_1096
	movzx	eax, byte ptr [r14 + 0x13]
	cmp	eax, 0x2e
	jne	.label_1108
	movzx	eax, byte ptr [r14 + 0x14]
	cmp	eax, 0x2e
	mov	rsp, rsp
	mov	eax, 1
	jne	.label_1099
	mov	eax, 2
.label_1099:
	mov	al, byte ptr [r14 + rax + 0x13]
.label_1108:
	lea	rsi, [rsi]
	test	al, al
	je	.label_1102
	nop	
	mov	rbx, r14
	mov	rbp, rbp
	add	rbx, 0x13
	mov	rdi, rbx
	nop	
	call	strlen
	nop	
	mov	rdx, rax
	inc	rdx
	cmp	qword ptr [rsp + 0x40], 1
	ja	.label_1110
	nop	
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	cmp	rax, r12
	jne	.label_1089
	mov	rdi, qword ptr [rsp + 8]
	test	rdi, rdi
	je	.label_1093
	lea	rsi, [rsi]
	movabs	rax, 0x555555555555555
	lea	rdi, [rdi]
	cmp	r12, rax
	jae	.label_1091
	mov	qword ptr [rsp + 0x38], rbx
	mov	qword ptr [rsp], rdx
	mov	rax, r12
	shr	rax, 1
	lea	rcx, [r12 + rax + 1]
	jmp	.label_1103
	nop	word ptr cs:[rax + rax]
.label_1110:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x38], rbx
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x30]
	nop	
	mov	rax, rbx
	sub	rax, r15
	cmp	rax, rdx
	nop	
	mov	rax, qword ptr [rsp + 0x28]
	ja	.label_1106
	lea	rdi, [rdi]
	mov	rbx, rdx
	add	rbx, r15
	nop	
	jb	.label_1091
	mov	rsp, rsp
	test	rax, rax
	je	.label_1094
	mov	rsp, rsp
	movabs	rcx, 0x5555555555555554
	mov	rbp, rbp
	cmp	rbx, rcx
	mov	rbp, rbp
	jae	.label_1091
	mov	r14, rdx
	mov	rbp, rbp
	mov	rcx, rbx
	nop	
	shr	rcx, 1
	mov	rbp, rbp
	lea	rbx, [rbx + rcx + 1]
	jmp	.label_1111
.label_1089:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], rbx
	mov	qword ptr [rsp], rdx
	mov	rbx, qword ptr [rsp + 8]
	jmp	.label_1104
.label_1093:
	mov	qword ptr [rsp + 0x38], rbx
	mov	qword ptr [rsp], rdx
	test	r12, r12
	lea	rdi, [rdi]
	mov	rcx, r12
	mov	eax, 8
	mov	rbp, rbp
	cmove	rcx, rax
	lea	rsi, [rsi]
	mov	rax, rcx
	shr	rax, 0x3b
	jne	.label_1109
.label_1103:
	mov	qword ptr [rsp + 0x10], rcx
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rsi, [rsi]
	shl	rsi, 4
	call	xrealloc
	mov	rbx, rax
	mov	rbp, rbp
	jmp	.label_1104
.label_1094:
	mov	r14, rdx
	test	rbx, rbx
	mov	ecx, 0x80
	nop	
	cmove	rbx, rcx
	mov	rbp, rbp
	test	rbx, rbx
	nop	
	js	.label_1100
.label_1111:
	mov	rdi, rax
	mov	rsp, rsp
	mov	rsi, rbx
	nop	
	call	xrealloc
	mov	rsp, rsp
	mov	rdx, r14
.label_1106:
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rax + r15]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x38]
	mov	r14, rdx
	call	memcpy
	mov	rbp, rbp
	add	r15, r14
	lea	rsi, [rsi]
	jmp	.label_1092
.label_1096:
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rbp]
	test	ebx, ebx
	je	.label_1095
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 8]
	nop	
	call	free
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
	mov	dword ptr [rbp], ebx
	xor	r14d, r14d
	nop	
	jmp	.label_1098
.label_1095:
	nop	
	cmp	qword ptr [rsp + 0x40], 1
	nop	
	mov	r14, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	ja	.label_1101
	test	r12, r12
	nop	
	je	.label_1105
	mov	rsp, rsp
	mov	edx, 0x10
	mov	rbx, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	rdi, rbx
	nop	
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	call	qsort
	inc	r15
	mov	rdi, r15
	nop	
	call	xmalloc
	nop	
	mov	r14, rax
	lea	rdi, [rdi]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1090:
	lea	rbp, [r14 + r15]
	mov	rsi, qword ptr [rbx]
	mov	rdi, rbp
	call	stpcpy
	mov	rbp, rbp
	inc	r15
	sub	r15, rbp
	add	r15, rax
	mov	rdi, qword ptr [rbx]
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	add	rbx, 0x10
	dec	r12
	lea	rsi, [rsi]
	jne	.label_1090
	nop	
	jmp	.label_1097
.label_1101:
	nop	
	cmp	qword ptr [rsp + 0x30], r15
	jne	.label_1107
	lea	rsi, [r15 + 1]
	mov	rdi, r14
	lea	rsi, [rsi]
	call	xrealloc
	mov	r14, rax
	jmp	.label_1107
.label_1105:
	mov	rbp, rbp
	inc	r15
	mov	rbp, rbp
	mov	rdi, r15
	call	xmalloc
	mov	r14, rax
	xor	r15d, r15d
.label_1097:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 8]
	mov	rsp, rsp
	call	free
.label_1107:
	lea	rdi, [rdi]
	mov	byte ptr [r14 + r15], 0
.label_1098:
	mov	rax, r14
	lea	rsi, [rsi]
	add	rsp, 0x48
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rbp, rbp
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	nop	
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_1091:
	call	xalloc_die
.label_1109:
	lea	rdi, [rdi]
	call	xalloc_die
.label_1100:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411bf0

	.globl savedir
	.type savedir, @function
savedir:
	push	rbp
	push	r14
	lea	rsi, [rsi]
	push	rbx
	mov	ebp, esi
	call	opendir_safer
	mov	rbx, rax
	mov	rbp, rbp
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_1112
	nop	
	mov	rdi, rbx
	mov	esi, ebp
	call	streamsavedir
	lea	rdi, [rdi]
	mov	r14, rax
	mov	rdi, rbx
	call	closedir
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_1112
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r14
	mov	rsp, rsp
	call	free
	lea	rdi, [rdi]
	mov	dword ptr [rbx], ebp
	mov	rsp, rsp
	xor	r14d, r14d
.label_1112:
	mov	rax, r14
	pop	rbx
	pop	r14
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411c60

	.globl direntry_cmp_name
	.type direntry_cmp_name, @function
direntry_cmp_name:
	mov	rdi, qword ptr [rdi]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi]
	jmp	strcmp
	nop	
	.section	.text
	.align	16
	#Procedure 0x411c70

	.globl direntry_cmp_inode
	.type direntry_cmp_inode, @function
direntry_cmp_inode:
	mov	rax, qword ptr [rdi + 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rsi + 8]
	mov	rsp, rsp
	seta	al
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rbp, rbp
	mov	eax, 0xffffffff
	lea	rsi, [rsi]
	cmovae	eax, ecx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411ca0

	.globl try_tempname_len
	.type try_tempname_len, @function
try_tempname_len:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	push	r15
	nop	
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, r8
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 0x20], rdx
	mov	ebx, esi
	mov	rbp, rbp
	mov	r14, rdi
	nop	
	call	__errno_location
	mov	qword ptr [rsp + 0x28], rax
	nop	
	mov	r15d, dword ptr [rax]
	nop	
	mov	rdi, r14
	call	strlen
	mov	rbp, rax
	lea	rsi, [rsi]
	movsxd	r13, ebx
	lea	rsi, [rsi]
	lea	rax, [r13 + r12]
	lea	rdi, [rdi]
	cmp	rbp, rax
	mov	rsp, rsp
	jb	.label_1117
	mov	rbp, rbp
	mov	rax, rbp
	nop	
	sub	rax, r12
	sub	rax, r13
	add	rax, r14
	mov	rbp, rbp
	mov	rcx, -1
	nop	dword ptr [rax + rax]
.label_1119:
	nop	
	movzx	edx, byte ptr [rax + rcx + 1]
	inc	rcx
	nop	
	cmp	edx, 0x58
	nop	
	je	.label_1119
	mov	rsp, rsp
	cmp	rcx, r12
	jae	.label_1120
.label_1117:
	mov	rax, qword ptr [rsp + 0x28]
	mov	dword ptr [rax], 0x16
	mov	r12d, 0xffffffff
.label_1114:
	mov	eax, r12d
	add	rsp, 0x38
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1120:
	nop	
	mov	dword ptr [rsp + 0x34], r15d
	mov	qword ptr [rsp + 0x18], r14
	mov	rsp, rsp
	xor	r14d, r14d
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	rsi, r12
	mov	rbp, rbp
	call	randint_all_new
	mov	r15, rax
	nop	
	mov	rax, r12
	lea	rdi, [rdi]
	mov	r12d, 0xffffffff
	test	r15, r15
	je	.label_1114
	mov	rsp, rsp
	sub	rbp, r13
	lea	rdi, [rdi]
	add	rbp, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	rcx, rax
	neg	rcx
	mov	qword ptr [rsp + 0x10], rcx
	mov	r13, rax
	nop	dword ptr [rax]
.label_1118:
	test	r13, r13
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	je	.label_1113
	nop	dword ptr [rax]
.label_1121:
	mov	rbp, rbp
	mov	esi, 0x3d
	mov	rdi, r15
	call	randint_genmax
	mov	al,  byte ptr [byte ptr [rax + letters]]
	mov	byte ptr [rbp + rbx], al
	nop	
	inc	rbx
	lea	rdi, [rdi]
	jne	.label_1121
.label_1113:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	call	qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	r12d, eax
	test	r12d, r12d
	nop	
	jns	.label_1115
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x28]
	mov	ebx, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	ebx, 0x11
	mov	r12d, 0xffffffff
	nop	
	jne	.label_1116
	lea	rsi, [rsi]
	inc	r14d
	cmp	r14d, 0x3a2f7
	lea	rdi, [rdi]
	jbe	.label_1118
	lea	rdi, [rdi]
	mov	rdi, r15
	call	randint_all_free
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x28]
	mov	dword ptr [rax], 0x11
	mov	r12d, 0xffffffff
	mov	rbp, rbp
	jmp	.label_1114
.label_1115:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x34]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	mov	dword ptr [rcx], eax
	mov	rsp, rsp
	mov	ebx, eax
.label_1116:
	mov	rdi, r15
	call	randint_all_free
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x28]
	mov	dword ptr [rax], ebx
	mov	rbp, rbp
	jmp	.label_1114
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411ea0
	.globl gen_tempname_len
	.type gen_tempname_len, @function
gen_tempname_len:

	mov	rbp, rbp
	push	rax
	mov	dword ptr [rsp + 4], edx
	nop	
	cmp	ecx, 3
	jae	.label_1122
	lea	rsi, [rsi]
	movsxd	rax, ecx
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1123]]
	lea	rsi, [rsi]
	lea	rdx, [rsp + 4]
	call	try_tempname_len
	pop	rcx
	ret	
.label_1122:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str_14
	mov	esi, OFFSET FLAT:.str.1_10
	mov	rsp, rsp
	mov	edx, 0x147
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.gen_tempname_len
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411ef0

	.globl try_file
	.type try_file, @function
try_file:
	mov	esi, dword ptr [rsi]
	and	esi, 0xffffff3c
	lea	rdi, [rdi]
	or	esi, 0xc2
	mov	edx, 0x180
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	jmp	open
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411f20

	.globl try_dir
	.type try_dir, @function
try_dir:
	mov	esi, 0x1c0
	lea	rsi, [rsi]
	jmp	mkdir
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411f30

	.globl try_nocreate
	.type try_nocreate, @function
try_nocreate:
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x90
	lea	rsi, [rsi]
	mov	rax, rdi
	lea	rdx, [rsp]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	rsi, rax
	call	__lxstat
	mov	ebx, eax
	call	__errno_location
	test	ebx, ebx
	je	.label_1125
	cmp	dword ptr [rax], 0x4b
	jne	.label_1124
.label_1125:
	mov	dword ptr [rax], 0x11
.label_1124:
	xor	ecx, ecx
	cmp	dword ptr [rax], 2
	mov	eax, 0xffffffff
	cmove	eax, ecx
	nop	
	add	rsp, 0x90
	pop	rbx
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411f90
	.globl gen_tempname
	.type gen_tempname, @function
gen_tempname:

	lea	rdi, [rdi]
	push	rax
	mov	dword ptr [rsp + 4], edx
	cmp	ecx, 3
	mov	rsp, rsp
	jae	.label_1126
	mov	rsp, rsp
	movsxd	rax, ecx
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1123]]
	lea	rdx, [rsp + 4]
	nop	
	mov	r8d, 6
	mov	rsp, rsp
	call	try_tempname_len
	pop	rcx
	mov	rbp, rbp
	ret	
.label_1126:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_14
	nop	
	mov	esi, OFFSET FLAT:.str.1_10
	mov	edx, 0x147
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.gen_tempname_len
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411ff0
	.globl try_tempname
	.type try_tempname, @function
try_tempname:

	mov	r8d, 6
	lea	rsi, [rsi]
	jmp	try_tempname_len
	nop	
	.section	.text
	.align	16
	#Procedure 0x412000

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
	ja	.label_1127
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
	jmp	.label_1128
.label_1127:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_1128:
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
	#Procedure 0x412070

	.globl utimecmp
	.type utimecmp, @function
utimecmp:
	mov	rbp, rbp
	mov	eax, ecx
	lea	rsi, [rsi]
	mov	rcx, rdx
	mov	rdx, rsi
	lea	rsi, [rsi]
	mov	rsi, rdi
	nop	
	mov	edi, 0xffffff9c
	mov	r8d, eax
	jmp	utimecmpat
	nop	
	.section	.text
	.align	16
	#Procedure 0x412090

	.globl utimecmpat
	.type utimecmpat, @function
utimecmpat:
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	nop	
	sub	rsp, 0xe8
	mov	rbp, rdx
	mov	rsp, rsp
	mov	r14, qword ptr [rbp + 0x58]
	mov	rbp, rbp
	mov	r15, qword ptr [rbp + 0x60]
	nop	
	mov	r12, qword ptr [rcx + 0x58]
	mov	r13d, dword ptr [rcx + 0x60]
	lea	rsi, [rsi]
	test	r8b, 1
	mov	rsp, rsp
	je	.label_1134
	lea	rdi, [rdi]
	cmp	r14, r12
	jne	.label_1151
	xor	ecx, ecx
	cmp	r15d, r13d
	mov	rsp, rsp
	je	.label_1129
.label_1151:
	lea	rdi, [rdi]
	lea	rax, [r12 - 2]
	mov	rsp, rsp
	mov	ecx, 0xffffffff
	cmp	r14, rax
	jle	.label_1129
	lea	rax, [r14 - 2]
	lea	rsi, [rsi]
	mov	ecx, 1
	cmp	r12, rax
	jle	.label_1129
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x1c], edi
	mov	qword ptr [rsp + 0x48], rsi
	nop	
	mov	rbx,  qword ptr [word ptr [rip + utimecmpat.ht]]
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_1137
	mov	edi, 0x10
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:dev_info_hash
	mov	ecx, OFFSET FLAT:dev_info_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	rbx, rax
	nop	
	mov	qword ptr [word ptr [rip + utimecmpat.ht]],  rbx
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_1150
.label_1137:
	mov	rsi,  qword ptr [word ptr [rip + utimecmpat.new_dst_res]]
	test	rsi, rsi
	nop	
	jne	.label_1145
	lea	rdi, [rdi]
	mov	edi, 0x10
	lea	rdi, [rdi]
	call	malloc
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + utimecmpat.new_dst_res]],  rsi
	nop	
	test	rsi, rsi
	je	.label_1130
	lea	rsi, [rsi]
	mov	dword ptr [rsi + 8], 0x77359400
	lea	rdi, [rdi]
	mov	byte ptr [rsi + 0xc], 0
.label_1145:
	nop	
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rsi], rax
	mov	rdi, rbx
	call	hash_insert
	mov	r11, rax
	lea	rsi, [rsi]
	test	r11, r11
	je	.label_1142
	cmp	r11,  qword ptr [word ptr [rip + utimecmpat.new_dst_res]]
	jne	.label_1133
	nop	
	mov	qword ptr [word ptr [rip + utimecmpat.new_dst_res]],  0
	jmp	.label_1133
.label_1142:
	mov	rbx,  qword ptr [word ptr [rip + utimecmpat.ht]]
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_1154
.label_1130:
	nop	
	mov	rax, qword ptr [rbp]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsp + 8]
	mov	rsp, rsp
	mov	rdi, rbx
	call	hash_lookup
	lea	rdi, [rdi]
	mov	r11, rax
.label_1154:
	mov	rbp, rbp
	test	r11, r11
	jne	.label_1133
.label_1150:
	mov	dword ptr [rsp + 0x10], 0x77359400
	nop	
	mov	byte ptr [rsp + 0x14], 0
	mov	rsp, rsp
	lea	r11, [rsp + 8]
.label_1133:
	mov	r10, qword ptr [r11 + 8]
	lea	rdi, [rdi]
	movabs	rax, 0xff00000000
	test	r10, rax
	lea	rsi, [rsi]
	jne	.label_1139
	mov	rbx, qword ptr [rbp + 0x48]
	nop	
	mov	rax, qword ptr [rbp + 0x50]
	movsxd	r8, dword ptr [rbp + 0x70]
	mov	ecx, ebx
	mov	rbp, rbp
	or	ecx, r14d
	or	ecx, dword ptr [rbp + 0x68]
	nop	
	and	ecx, 1
	lea	rsi, [rsi]
	movsxd	rdx, eax
	lea	rsi, [rsi]
	imul	rsi, rdx, 0x66666667
	nop	
	mov	rdi, rsi
	shr	rdi, 0x3f
	lea	rsi, [rsi]
	sar	rsi, 0x22
	add	esi, edi
	add	esi, esi
	lea	esi, [rsi + rsi*4]
	mov	rbp, rbp
	sub	edx, esi
	imul	rsi, r8, 0x66666667
	mov	rsp, rsp
	mov	rdi, rsi
	shr	rdi, 0x3f
	mov	rbp, rbp
	sar	rsi, 0x22
	add	esi, edi
	mov	rsp, rsp
	add	esi, esi
	lea	esi, [rsi + rsi*4]
	mov	edi, r8d
	sub	edi, esi
	nop	
	movsxd	rsi, r15d
	mov	rsp, rsp
	imul	rsi, rsi, 0x66666667
	mov	rbp, rsi
	mov	rsp, rsp
	shr	rbp, 0x3f
	mov	rsp, rsp
	sar	rsi, 0x22
	add	esi, ebp
	mov	rbp, rbp
	add	esi, esi
	lea	rdi, [rdi]
	lea	esi, [rsi + rsi*4]
	lea	rsi, [rsi]
	mov	ebp, r15d
	nop	
	sub	ebp, esi
	lea	rdi, [rdi]
	or	ebp, edx
	mov	rbp, rbp
	or	ebp, edi
	mov	rbp, rbp
	je	.label_1149
	lea	rsi, [rsi]
	mov	dword ptr [r11 + 8], 1
	mov	r10d, 1
.label_1138:
	mov	rbp, rbp
	mov	dword ptr [r11 + 8], r10d
	lea	rsi, [rsi]
	mov	byte ptr [r11 + 0xc], 1
.label_1139:
	nop	
	cmp	r10d, 0x77359400
	nop	
	sete	al
	nop	
	movzx	eax, al
	mov	rbp, rbp
	not	rax
	and	r12, rax
	mov	eax, r13d
	lea	rdi, [rdi]
	cdq	
	mov	rbp, rbp
	idiv	r10d
	mov	rsp, rsp
	sub	r13d, edx
.label_1134:
	mov	ecx, 0xffffffff
	mov	rsp, rsp
	cmp	r14, r12
	jl	.label_1129
	mov	ecx, 1
	jg	.label_1129
	cmp	r15d, r13d
	mov	ecx, 0xffffffff
	jl	.label_1129
	setg	al
	mov	rbp, rbp
	movzx	ecx, al
.label_1129:
	mov	eax, ecx
	mov	rsp, rsp
	add	rsp, 0xe8
	mov	rbp, rbp
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_1149:
	mov	ebp, 0xa
	nop	
	cmp	r10d, 0xa
	mov	rsp, rsp
	jle	.label_1136
	mov	qword ptr [rsp + 0xe0], rbx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], r11
	mov	edx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rax
	mov	edi, r15d
.label_1144:
	mov	r9, rbp
	movsxd	rsi, edi
	imul	rdi, rsi, 0x66666667
	nop	
	mov	rsi, rdi
	shr	rsi, 0x3f
	lea	rdi, [rdi]
	sar	rdi, 0x22
	lea	rdi, [rdi]
	add	edi, esi
	movsxd	rax, r8d
	nop	
	imul	r8, rax, 0x66666667
	mov	rbp, rbp
	mov	rsi, r8
	lea	rdi, [rdi]
	shr	rsi, 0x3f
	sar	r8, 0x22
	mov	rsp, rsp
	add	r8d, esi
	mov	rsp, rsp
	movsxd	rdx, edx
	nop	
	imul	rdx, rdx, 0x66666667
	mov	rsi, rdx
	nop	
	shr	rsi, 0x3f
	lea	rsi, [rsi]
	sar	rdx, 0x22
	mov	rbp, rbp
	add	edx, esi
	movsxd	r11, edx
	mov	rbp, rbp
	imul	rsi, r11, 0x66666667
	mov	rbp, rsi
	mov	rsp, rsp
	shr	rbp, 0x3f
	mov	rsp, rsp
	sar	rsi, 0x22
	add	esi, ebp
	lea	rdi, [rdi]
	add	esi, esi
	mov	rbp, rbp
	lea	esi, [rsi + rsi*4]
	sub	r11d, esi
	mov	rbp, rbp
	movsxd	rsi, r8d
	mov	rsp, rsp
	imul	rbp, rsi, 0x66666667
	lea	rsi, [rsi]
	mov	rbx, rbp
	shr	rbx, 0x3f
	mov	rsp, rsp
	sar	rbp, 0x22
	nop	
	add	ebp, ebx
	add	ebp, ebp
	lea	rsi, [rsi]
	lea	ebx, [rbp + rbp*4]
	lea	rsi, [rsi]
	sub	esi, ebx
	or	esi, r11d
	movsxd	rbp, edi
	imul	rbx, rbp, 0x66666667
	mov	rax, rbx
	shr	rax, 0x3f
	sar	rbx, 0x22
	add	ebx, eax
	add	ebx, ebx
	mov	rsp, rsp
	lea	eax, [rbx + rbx*4]
	sub	ebp, eax
	or	ebp, esi
	nop	
	jne	.label_1146
	mov	rbp, rbp
	mov	rbp, r9
	cmp	ebp, 0x3b9aca00
	nop	
	je	.label_1141
	lea	rsi, [rsi]
	add	ebp, ebp
	lea	ebp, [rbp + rbp*4]
	mov	rsp, rsp
	cmp	ebp, r10d
	jl	.label_1144
	nop	
	jmp	.label_1153
.label_1136:
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	dword ptr [r11 + 8], ebp
	lea	rsi, [rsi]
	jmp	.label_1132
.label_1146:
	mov	rbp, r9
.label_1153:
	mov	r11, qword ptr [rsp + 0x40]
	mov	dword ptr [r11 + 8], ebp
	nop	
	cmp	ebp, 2
	mov	r10d, ebp
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0xe0]
	jl	.label_1138
	jmp	.label_1132
.label_1141:
	xor	ecx, 1
	mov	ebp, 0x3b9aca00
	shl	ebp, cl
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	dword ptr [r11 + 8], ebp
.label_1132:
	cmp	ebp, 0x77359400
	lea	rdi, [rdi]
	sete	al
	nop	
	movzx	edi, al
	lea	rdi, [rdi]
	mov	ecx, 1
	cmp	r12, r14
	jl	.label_1129
	cmp	r14, r12
	mov	rbp, rbp
	setne	al
	lea	rdi, [rdi]
	cmp	r13d, r15d
	jg	.label_1152
	lea	rdi, [rdi]
	test	al, al
	mov	rsp, rsp
	je	.label_1129
.label_1152:
	mov	rsp, rsp
	mov	rax, rdi
	not	rax
	nop	
	and	rax, r12
	mov	rbp, rbp
	mov	ecx, 0xffffffff
	cmp	r14, rax
	mov	rsp, rsp
	jl	.label_1129
	mov	rbp, rbp
	jne	.label_1135
	mov	eax, r13d
	nop	
	cdq	
	nop	
	idiv	ebp
	lea	rdi, [rdi]
	mov	eax, r13d
	nop	
	sub	eax, edx
	lea	rsi, [rsi]
	cmp	r15d, eax
	mov	rsp, rsp
	jl	.label_1129
.label_1135:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], rbx
	mov	rbp, rbp
	mov	rax, qword ptr [rsp]
	nop	
	cdqe	
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	or	rdi, r14
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rdi
	movsxd	rax, ebp
	mov	rsp, rsp
	imul	rax, rax, 0x38e38e39
	mov	rcx, rax
	shr	rcx, 0x3f
	sar	rax, 0x21
	add	eax, ecx
	add	eax, r15d
	nop	
	cdqe	
	mov	qword ptr [rsp + 0x38], rax
	lea	rdx, [rsp + 0x20]
	lea	rdi, [rdi]
	mov	ecx, 0x100
	mov	edi, dword ptr [rsp + 0x1c]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rbx, r11
	lea	rdi, [rdi]
	call	utimensat
	mov	rdx, rbx
	mov	rsp, rsp
	mov	ecx, 0xfffffffe
	test	eax, eax
	jne	.label_1129
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rsp + 0x40], rdx
	lea	rcx, [rsp + 0x50]
	mov	edi, 1
	mov	rbp, rbp
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0x1c]
	nop	
	mov	rbp, qword ptr [rsp + 0x48]
	mov	rdx, rbp
	nop	
	call	__fxstatat
	mov	ebx, eax
	mov	rsp, rsp
	movsxd	rax, ebx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xa8]
	mov	rsp, rsp
	xor	rcx, r14
	or	rcx, rax
	mov	rbp, rbp
	movsxd	rax, r15d
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	xor	rdx, rax
	or	rdx, rcx
	lea	rsi, [rsi]
	je	.label_1155
	nop	
	mov	qword ptr [rsp + 0x30], r14
	mov	qword ptr [rsp + 0x38], rax
	lea	rdx, [rsp + 0x20]
	mov	ecx, 0x100
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0x1c]
	mov	rsi, rbp
	call	utimensat
.label_1155:
	test	ebx, ebx
	je	.label_1148
	mov	ecx, 0xfffffffe
	lea	rdi, [rdi]
	jmp	.label_1129
.label_1148:
	mov	eax, dword ptr [rsp + 0xa8]
	and	eax, 1
	neg	eax
	and	eax, 0x3b9aca00
	add	rax, qword ptr [rsp + 0xb0]
	movsxd	rdx, eax
	mov	rbp, rbp
	imul	rcx, rdx, 0x66666667
	mov	rsp, rsp
	mov	rsi, rcx
	shr	rsi, 0x3f
	sar	rcx, 0x22
	add	ecx, esi
	nop	
	add	ecx, ecx
	mov	rsp, rsp
	lea	esi, [rcx + rcx*4]
	lea	rsi, [rsi]
	mov	ecx, 1
	nop	
	cmp	edx, esi
	je	.label_1131
	nop	
	mov	r10d, 1
	mov	r11, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	jmp	.label_1138
.label_1131:
	mov	rbp, qword ptr [rsp]
.label_1140:
	mov	r10d, 0x77359400
	mov	rbp, rbp
	cmp	ecx, 0x3b9aca00
	je	.label_1143
	mov	rsp, rsp
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	lea	rsi, [rsi]
	cmp	ecx, ebp
	nop	
	je	.label_1147
	cdqe	
	imul	rax, rax, 0x66666667
	mov	rdx, rax
	lea	rsi, [rsi]
	shr	rdx, 0x3f
	sar	rax, 0x22
	mov	rsp, rsp
	add	eax, edx
	movsxd	rdx, eax
	imul	rsi, rdx, 0x66666667
	mov	rdi, rsi
	lea	rsi, [rsi]
	shr	rdi, 0x3f
	sar	rsi, 0x22
	nop	
	add	esi, edi
	lea	rsi, [rsi]
	add	esi, esi
	lea	esi, [rsi + rsi*4]
	lea	rdi, [rdi]
	cmp	edx, esi
	lea	rsi, [rsi]
	mov	r10d, ecx
	mov	rbp, rbp
	je	.label_1140
.label_1143:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x40]
	jmp	.label_1138
.label_1147:
	lea	rdi, [rdi]
	mov	r10d, ebp
	mov	r11, qword ptr [rsp + 0x40]
	jmp	.label_1138
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4127d0

	.globl dev_info_hash
	.type dev_info_hash, @function
dev_info_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	nop	
	div	rsi
	mov	rbp, rbp
	mov	rax, rdx
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4127f0

	.globl dev_info_compare
	.type dev_info_compare, @function
dev_info_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	nop	
	sete	al
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x412800
	.globl lutimensat
	.type lutimensat, @function
lutimensat:

	lea	rsi, [rsi]
	mov	ecx, 0x100
	nop	
	jmp	utimensat
	nop	
	.section	.text
	.align	16
	#Procedure 0x412810

	.globl fdutimens
	.type fdutimens, @function
fdutimens:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r12
	push	rbx
	sub	rsp, 0xf0
	mov	r14, rsi
	mov	rbp, rbp
	mov	r15d, edi
	xor	r12d, r12d
	test	rdx, rdx
	lea	rbx, [rsp + 0xb0]
	lea	rdi, [rdi]
	cmove	rbx, rdx
	je	.label_1161
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rdx]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	movups	xmm0, xmmword ptr [rdx + 0x10]
	movaps	xmmword ptr [rsp + 0xc0], xmm0
	mov	rcx, qword ptr [rbx + 8]
	mov	rsp, rsp
	mov	rdx, rcx
	and	rdx, 0xfffffffffffffffe
	nop	
	cmp	rcx, 0x3b9aca00
	mov	rbp, rbp
	jb	.label_1167
	mov	rbp, rbp
	cmp	rdx, 0x3ffffffe
	jne	.label_1176
.label_1167:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x18]
	mov	rdi, rax
	nop	
	and	rdi, 0xfffffffffffffffe
	mov	rbp, rbp
	cmp	rax, 0x3b9aca00
	jb	.label_1179
	cmp	rdi, 0x3ffffffe
	je	.label_1179
.label_1176:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	ebp, 0xffffffff
	mov	rbp, rbp
	jmp	.label_1160
.label_1179:
	lea	rsi, [rsi]
	xor	esi, esi
	cmp	rdx, 0x3ffffffe
	mov	rbp, rbp
	mov	edx, 0
	jne	.label_1188
	lea	rsi, [rsi]
	mov	qword ptr [rbx], 0
	mov	rbp, rbp
	cmp	rcx, 0x3ffffffe
	mov	rsp, rsp
	sete	cl
	movzx	edx, cl
	mov	rbp, rbp
	mov	esi, 1
.label_1188:
	cmp	rdi, 0x3ffffffe
	jne	.label_1156
	mov	qword ptr [rbx + 0x10], 0
	cmp	rax, 0x3ffffffe
	sete	al
	movzx	eax, al
	add	edx, eax
	nop	
	mov	esi, 1
.label_1156:
	lea	rdi, [rdi]
	cmp	edx, 1
	mov	rbp, rbp
	sete	al
	movzx	r12d, al
	mov	rsp, rsp
	add	r12d, esi
	lea	rdi, [rdi]
	mov	ebp, 0xffffffff
	mov	rbp, rbp
	js	.label_1160
.label_1161:
	test	r15d, r15d
	jns	.label_1168
	test	r14, r14
	jne	.label_1168
	call	__errno_location
	mov	dword ptr [rax], 9
	mov	ebp, 0xffffffff
	jmp	.label_1160
.label_1168:
	nop	
	cmp	dword ptr [dword ptr [rip + utimensat_works_really]],  0
	lea	rdi, [rdi]
	js	.label_1178
	cmp	r12d, 2
	lea	rsi, [rsi]
	jne	.label_1175
	lea	rdi, [rdi]
	lea	rdx, [rsp + 0x20]
	mov	edi, 1
	mov	rbp, rbp
	test	r15d, r15d
	js	.label_1177
	nop	
	mov	esi, r15d
	mov	rsp, rsp
	call	__fxstat
	nop	
	jmp	.label_1183
.label_1177:
	lea	rsi, [rsi]
	mov	rsi, r14
	call	__xstat
.label_1183:
	mov	rsp, rsp
	mov	ebp, 0xffffffff
	test	eax, eax
	jne	.label_1160
	mov	rsp, rsp
	cmp	qword ptr [rbx + 8], 0x3ffffffe
	jne	.label_1187
	movups	xmm0, xmmword ptr [rsp + 0x68]
	movaps	xmmword ptr [rbx], xmm0
	mov	r12d, 3
	jmp	.label_1175
.label_1187:
	lea	rdi, [rdi]
	mov	r12d, 3
	mov	rbp, rbp
	cmp	qword ptr [rbx + 0x18], 0x3ffffffe
	lea	rsi, [rsi]
	jne	.label_1175
	movups	xmm0, xmmword ptr [rsp + 0x78]
	movaps	xmmword ptr [rbx + 0x10], xmm0
.label_1175:
	mov	rbp, rbp
	test	r15d, r15d
	jns	.label_1158
	mov	edi, 0xffffff9c
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rsi, r14
	nop	
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	utimensat
	mov	ebp, eax
	test	ebp, ebp
	jle	.label_1162
	nop	
	call	__errno_location
	mov	dword ptr [rax], 0x26
	nop	
	jmp	.label_1163
.label_1162:
	lea	rdi, [rdi]
	je	.label_1164
	call	__errno_location
.label_1163:
	nop	
	cmp	dword ptr [rax], 0x26
	lea	rsi, [rsi]
	jne	.label_1164
.label_1158:
	lea	rdi, [rdi]
	test	r15d, r15d
	lea	rsi, [rsi]
	js	.label_1178
	nop	
	mov	edi, r15d
	mov	rsi, rbx
	mov	rsp, rsp
	call	futimens
	mov	rsp, rsp
	mov	ebp, eax
	test	ebp, ebp
	mov	rsp, rsp
	jle	.label_1172
	lea	rdi, [rdi]
	call	__errno_location
	mov	dword ptr [rax], 0x26
	mov	rsp, rsp
	jmp	.label_1174
.label_1164:
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  1
	jmp	.label_1160
.label_1172:
	mov	rsp, rsp
	je	.label_1180
	lea	rdi, [rdi]
	call	__errno_location
.label_1174:
	cmp	dword ptr [rax], 0x26
	mov	rsp, rsp
	jne	.label_1180
.label_1178:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  0xffffffff
	mov	dword ptr [dword ptr [rip + lutimensat_works_really]],  0xffffffff
	nop	
	test	r12d, r12d
	mov	rbp, rbp
	je	.label_1184
	cmp	r12d, 3
	lea	rsi, [rsi]
	je	.label_1189
	lea	rdx, [rsp + 0x20]
	mov	edi, 1
	lea	rdi, [rdi]
	test	r15d, r15d
	mov	rsp, rsp
	js	.label_1190
	mov	rbp, rbp
	mov	esi, r15d
	call	__fxstat
	mov	rsp, rsp
	jmp	.label_1194
.label_1184:
	nop	
	xor	r12d, r12d
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_1191
	jmp	.label_1159
.label_1180:
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  1
	jmp	.label_1160
.label_1190:
	nop	
	mov	rsi, r14
	call	__xstat
.label_1194:
	mov	rsp, rsp
	mov	ebp, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_1160
.label_1189:
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_1165
	mov	rax, qword ptr [rbx + 8]
	nop	
	cmp	rax, 0x3ffffffe
	je	.label_1166
	cmp	rax, 0x3fffffff
	mov	rsp, rsp
	jne	.label_1169
	nop	
	cmp	qword ptr [rbx + 0x18], 0x3fffffff
	lea	rsi, [rsi]
	jne	.label_1170
	mov	rsp, rsp
	xor	r12d, r12d
	lea	rsi, [rsi]
	jmp	.label_1159
.label_1165:
	lea	rdi, [rdi]
	xor	r12d, r12d
	jmp	.label_1159
.label_1166:
	xor	ebp, ebp
	mov	rbp, rbp
	cmp	qword ptr [rbx + 0x18], 0x3ffffffe
	je	.label_1160
	lea	rbp, [rbx + 0x18]
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rsp + 0x68]
	mov	rsp, rsp
	movaps	xmmword ptr [rbx], xmm0
	lea	rdi, [rdi]
	jmp	.label_1181
.label_1169:
	lea	rbp, [rbx + 0x18]
	jmp	.label_1181
.label_1170:
	mov	rsp, rsp
	lea	rbp, [rbx + 0x18]
	mov	rdi, rbx
	call	gettime
.label_1181:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp]
	mov	rsp, rsp
	cmp	rax, 0x3fffffff
	je	.label_1186
	cmp	rax, 0x3ffffffe
	mov	rsp, rsp
	jne	.label_1191
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x80]
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx + 0x18], rcx
	jmp	.label_1191
.label_1186:
	lea	rdi, [rdi]
	add	rbx, 0x10
	mov	rbp, rbp
	mov	rdi, rbx
	call	gettime
.label_1191:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb0]
	mov	qword ptr [rsp + 0xd0], rax
	mov	rbp, rbp
	movabs	rcx, 0x20c49ba5e353f7cf
	mov	rax, rcx
	imul	qword ptr [rsp + 0xb8]
	mov	rax, rdx
	mov	rsp, rsp
	shr	rax, 0x3f
	sar	rdx, 7
	nop	
	add	rdx, rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xd8], rdx
	mov	rax, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe0], rax
	mov	rax, rcx
	lea	rsi, [rsi]
	imul	qword ptr [rsp + 0xc8]
	mov	rax, rdx
	mov	rbp, rbp
	shr	rax, 0x3f
	lea	rsi, [rsi]
	sar	rdx, 7
	add	rdx, rax
	mov	qword ptr [rsp + 0xe8], rdx
	lea	r12, [rsp + 0xd0]
.label_1159:
	lea	rsi, [rsi]
	test	r15d, r15d
	js	.label_1182
	xor	ebp, ebp
	xor	esi, esi
	mov	edi, r15d
	mov	rdx, r12
	mov	rsp, rsp
	call	futimesat
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_1185
	mov	ebp, 0xffffffff
	test	r14, r14
	je	.label_1160
	nop	
	mov	rdi, r14
	mov	rsi, r12
	lea	rsi, [rsi]
	call	utimes
	jmp	.label_1192
.label_1182:
	mov	edi, 0xffffff9c
	lea	rdi, [rdi]
	mov	rsi, r14
	mov	rdx, r12
	call	futimesat
.label_1192:
	mov	ebp, eax
.label_1160:
	mov	eax, ebp
	lea	rsi, [rsi]
	add	rsp, 0xf0
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1185:
	test	r12, r12
	mov	rbp, rbp
	je	.label_1160
	nop	
	mov	rbx, qword ptr [r12 + 8]
	mov	rbp, rbp
	mov	r14, qword ptr [r12 + 0x18]
	mov	rbp, rbp
	cmp	rbx, 0x7a11f
	mov	rsp, rsp
	setg	al
	cmp	r14, 0x7a11f
	lea	rsi, [rsi]
	setg	cl
	lea	rdi, [rdi]
	or	cl, al
	movzx	eax, cl
	lea	rsi, [rsi]
	cmp	eax, 1
	jne	.label_1160
	lea	rdx, [rsp + 0x20]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, r15d
	nop	
	call	__fxstat
	mov	rbp, rbp
	test	eax, eax
	jne	.label_1160
	lea	rdx, [r12 + 0x10]
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rax, qword ptr [rsp + 0x78]
	sub	rcx, qword ptr [r12]
	sub	rax, qword ptr [r12 + 0x10]
	movups	xmm0, xmmword ptr [r12]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp], xmm0
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rsp, rsp
	xor	edx, edx
	lea	rsi, [rsi]
	cmp	rbx, 0x7a120
	lea	rdi, [rdi]
	jl	.label_1173
	lea	rdi, [rdi]
	cmp	rcx, 1
	jne	.label_1173
	mov	rbp, rbp
	xor	edx, edx
	cmp	qword ptr [rsp + 0x70], 0
	mov	rsp, rsp
	jne	.label_1173
	lea	rdi, [rdi]
	lea	rdx, [rsp]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], 0
.label_1173:
	cmp	r14, 0x7a120
	nop	
	jl	.label_1171
	cmp	rax, 1
	lea	rdi, [rdi]
	jne	.label_1171
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x80], 0
	nop	
	je	.label_1193
.label_1171:
	lea	rdi, [rdi]
	test	rdx, rdx
	jne	.label_1195
	jmp	.label_1157
.label_1193:
	lea	rdx, [rsp]
	mov	qword ptr [rsp + 0x18], 0
.label_1195:
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edi, r15d
	nop	
	call	futimesat
.label_1157:
	xor	ebp, ebp
	mov	rsp, rsp
	jmp	.label_1160
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412e40

	.globl utimens
	.type utimens, @function
utimens:
	lea	rsi, [rsi]
	mov	rax, rsi
	mov	rcx, rdi
	mov	edi, 0xffffffff
	nop	
	mov	rsi, rcx
	lea	rsi, [rsi]
	mov	rdx, rax
	jmp	fdutimens
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x412e60

	.globl lutimens
	.type lutimens, @function
lutimens:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	nop	
	sub	rsp, 0xb0
	mov	r14, rdi
	mov	rsp, rsp
	xor	ebx, ebx
	lea	rdi, [rdi]
	test	rsi, rsi
	mov	rsp, rsp
	lea	r15, [rsp + 0x90]
	mov	r12, r15
	cmove	r12, rsi
	lea	rdi, [rdi]
	je	.label_1215
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm0
	movups	xmm0, xmmword ptr [rsi + 0x10]
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	mov	rcx, qword ptr [r12 + 8]
	mov	rdx, rcx
	and	rdx, 0xfffffffffffffffe
	cmp	rcx, 0x3b9aca00
	jb	.label_1201
	lea	rdi, [rdi]
	cmp	rdx, 0x3ffffffe
	jne	.label_1208
.label_1201:
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x18]
	mov	rsp, rsp
	mov	rdi, rax
	and	rdi, 0xfffffffffffffffe
	nop	
	cmp	rax, 0x3b9aca00
	jb	.label_1212
	cmp	rdi, 0x3ffffffe
	mov	rsp, rsp
	je	.label_1212
.label_1208:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x16
.label_1206:
	mov	ebp, 0xffffffff
	nop	
	jmp	.label_1204
.label_1212:
	mov	rsp, rsp
	xor	esi, esi
	cmp	rdx, 0x3ffffffe
	mov	edx, 0
	nop	
	jne	.label_1200
	mov	qword ptr [r12], 0
	lea	rsi, [rsi]
	cmp	rcx, 0x3ffffffe
	mov	rbp, rbp
	sete	cl
	movzx	edx, cl
	mov	rbp, rbp
	mov	esi, 1
.label_1200:
	cmp	rdi, 0x3ffffffe
	lea	rsi, [rsi]
	jne	.label_1209
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x10], 0
	mov	rbp, rbp
	cmp	rax, 0x3ffffffe
	sete	al
	movzx	eax, al
	add	edx, eax
	mov	esi, 1
.label_1209:
	mov	rsp, rsp
	cmp	edx, 1
	lea	rsi, [rsi]
	sete	al
	movzx	ebx, al
	mov	rbp, rbp
	add	ebx, esi
	mov	ebp, 0xffffffff
	js	.label_1204
.label_1215:
	nop	
	cmp	dword ptr [dword ptr [rip + lutimensat_works_really]],  0
	js	.label_1202
	cmp	ebx, 2
	nop	
	jne	.label_1205
	mov	rsp, rsp
	lea	rdx, [rsp]
	mov	rbp, rbp
	mov	edi, 1
	mov	rbp, rbp
	mov	rsi, r14
	nop	
	call	__lxstat
	mov	rsp, rsp
	mov	ebp, 0xffffffff
	test	eax, eax
	nop	
	jne	.label_1204
	mov	rsp, rsp
	cmp	qword ptr [r12 + 8], 0x3ffffffe
	jne	.label_1213
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rsp + 0x48]
	movaps	xmmword ptr [r12], xmm0
	mov	ebx, 3
	jmp	.label_1205
.label_1213:
	mov	rbp, rbp
	mov	ebx, 3
	mov	rsp, rsp
	cmp	qword ptr [r12 + 0x18], 0x3ffffffe
	nop	
	jne	.label_1205
	movups	xmm0, xmmword ptr [rsp + 0x58]
	mov	rsp, rsp
	movaps	xmmword ptr [r12 + 0x10], xmm0
.label_1205:
	mov	edi, 0xffffff9c
	mov	rsp, rsp
	mov	ecx, 0x100
	mov	rsp, rsp
	mov	rsi, r14
	mov	rsp, rsp
	mov	rdx, r12
	lea	rsi, [rsi]
	call	utimensat
	mov	rsp, rsp
	mov	ebp, eax
	test	ebp, ebp
	jle	.label_1207
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0x26
	mov	rbp, rbp
	jmp	.label_1211
.label_1207:
	je	.label_1214
	lea	rsi, [rsi]
	call	__errno_location
.label_1211:
	cmp	dword ptr [rax], 0x26
	jne	.label_1214
.label_1202:
	mov	dword ptr [dword ptr [rip + lutimensat_works_really]],  0xffffffff
	mov	rsp, rsp
	test	ebx, ebx
	nop	
	je	.label_1218
	mov	rbp, rbp
	cmp	ebx, 3
	lea	rsi, [rsi]
	je	.label_1197
	lea	rsi, [rsi]
	lea	rdx, [rsp]
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rsp, rsp
	mov	rsi, r14
	call	__lxstat
	lea	rdi, [rdi]
	mov	ebp, 0xffffffff
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	jne	.label_1204
.label_1197:
	xor	edx, edx
	test	r12, r12
	je	.label_1196
	mov	rax, qword ptr [r12 + 8]
	nop	
	cmp	rax, 0x3ffffffe
	mov	rbp, rbp
	je	.label_1210
	lea	rsi, [rsi]
	cmp	rax, 0x3fffffff
	lea	rdi, [rdi]
	jne	.label_1217
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rsp, rsp
	cmp	qword ptr [r12 + 0x18], 0x3fffffff
	je	.label_1196
	lea	rbx, [r12 + 0x18]
	mov	rdi, r12
	mov	rbp, rbp
	call	gettime
	mov	rbp, rbp
	jmp	.label_1203
.label_1214:
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  1
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + lutimensat_works_really]],  1
	mov	rsp, rsp
	jmp	.label_1204
.label_1218:
	mov	rsp, rsp
	lea	rdx, [rsp]
	mov	edi, 1
	mov	rsi, r14
	call	__lxstat
	mov	ebp, 0xffffffff
	test	eax, eax
	mov	rdx, r12
	jne	.label_1204
	nop	
	jmp	.label_1196
.label_1210:
	xor	ebp, ebp
	cmp	qword ptr [r12 + 0x18], 0x3ffffffe
	je	.label_1204
	lea	rbx, [r12 + 0x18]
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rsp + 0x48]
	movaps	xmmword ptr [r12], xmm0
	lea	rsi, [rsi]
	jmp	.label_1203
.label_1217:
	lea	rbx, [r12 + 0x18]
.label_1203:
	nop	
	mov	rax, qword ptr [rbx]
	cmp	rax, 0x3fffffff
	je	.label_1199
	nop	
	cmp	rax, 0x3ffffffe
	lea	rsi, [rsi]
	jne	.label_1198
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x60]
	mov	qword ptr [r12 + 0x10], rax
	mov	qword ptr [r12 + 0x18], rcx
	mov	rdx, r15
	jmp	.label_1196
.label_1199:
	add	r12, 0x10
	mov	rdi, r12
	call	gettime
	mov	rdx, r15
	jmp	.label_1196
.label_1198:
	mov	rbp, rbp
	mov	rdx, r15
.label_1196:
	mov	eax, 0xf000
	nop	
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0xa000
	lea	rsi, [rsi]
	jne	.label_1216
	lea	rsi, [rsi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x26
	lea	rdi, [rdi]
	jmp	.label_1206
.label_1216:
	mov	rsp, rsp
	mov	edi, 0xffffffff
	lea	rsi, [rsi]
	mov	rsi, r14
	nop	
	call	fdutimens
	lea	rsi, [rsi]
	mov	ebp, eax
.label_1204:
	mov	eax, ebp
	add	rsp, 0xb0
	pop	rbx
	pop	r12
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x413250

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
	je	.label_1222
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_15
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_1223
.label_1222:
	mov	edx, OFFSET FLAT:.str.1_11
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_1223:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_6
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
	ja	.label_1225
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_1226]]
.label_1713:
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
.label_1225:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_2
	jmp	.label_1220
.label_1714:
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
.label_1715:
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
.label_1716:
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
	jmp	.label_1221
.label_1717:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_1
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
	jmp	.label_1219
.label_1718:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_1
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
	jmp	.label_1228
.label_1719:
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
.label_1228:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_1219:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_1221:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_1224
.label_1721:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_3
.label_1220:
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
	jmp	.label_1227
.label_1720:
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
.label_1227:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_1224:
	mov	rbp, rbp
	call	__fprintf_chk
.label_1712:
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
	#Procedure 0x413640
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_1229:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_1229
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413670
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_1233:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_1230
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_1231
	nop	word ptr cs:[rax + rax]
.label_1230:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1231:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_1232
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_1233
.label_1232:
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
	#Procedure 0x413700

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_1234
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
.label_1234:
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
.label_1236:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_1235
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_1237
	nop	dword ptr [rax + rax]
.label_1235:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_1237:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_1238
	inc	r9
	cmp	r9, 0xa
	jb	.label_1236
.label_1238:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413840
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_3
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_0
	xor	eax, eax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_1
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
	mov	esi, OFFSET FLAT:.str.19_2
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
	#Procedure 0x4138d0

	.globl can_write_any_file
	.type can_write_any_file, @function
can_write_any_file:
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + can_write_any_file.initialized]]
	and	eax, 1
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_1239
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + can_write_any_file.can_write]]
	lea	rsi, [rsi]
	jmp	.label_1240
.label_1239:
	push	rax
	lea	rdi, [rdi]
	call	geteuid
	test	eax, eax
	sete	al
	sete	byte ptr [byte ptr [rip + can_write_any_file.can_write]]
	mov	byte ptr [byte ptr [rip + can_write_any_file.initialized]],  1
	nop	
	add	rsp, 8
.label_1240:
	lea	rdi, [rdi]
	test	al, al
	mov	rsp, rsp
	setne	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x413920
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
	jb	.label_1241
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_1242
	test	rax, rax
	je	.label_1241
.label_1242:
	nop	
	pop	rbx
	ret	
.label_1241:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x413970

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_1243
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1244
.label_1243:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_1244:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4139a0
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
	jb	.label_1246
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_1245
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_1245
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_1245:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_1247
	test	rax, rax
	je	.label_1246
.label_1247:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_1246:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413a20

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_1248
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_1248
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_1248:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_1249
	test	rax, rax
	nop	
	je	.label_1250
.label_1249:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_1250:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413a70
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1255
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_1251
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_1257
.label_1255:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_1254
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_1254:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_1256
.label_1257:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_1253
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_1253
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_1253:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_1252
	test	rax, rax
	mov	rbp, rbp
	je	.label_1251
.label_1252:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_1251:
	call	xalloc_die
.label_1256:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413b50
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1258
	test	rax, rax
	mov	rbp, rbp
	je	.label_1259
.label_1258:
	pop	rbx
	ret	
.label_1259:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x413b70
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_1263
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_1264
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_1262
	call	free
	xor	eax, eax
	jmp	.label_1260
.label_1263:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_1261
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_1262:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_1260
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_1261
.label_1260:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_1261:
	mov	rbp, rbp
	call	xalloc_die
.label_1264:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x413c00
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
	je	.label_1265
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_1266
.label_1265:
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
.label_1266:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413c60
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
	jb	.label_1267
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_1267
	pop	rcx
	ret	
.label_1267:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x413c90

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
	je	.label_1269
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_1268
.label_1269:
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
.label_1268:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x413cf0

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
	je	.label_1270
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_1271
.label_1270:
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
.label_1271:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x413d50

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_12
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:.str_6
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x413da0

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1273
	mov	rsp, rsp
	pop	rcx
	ret	
.label_1273:
	nop	
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0x16
	lea	rdi, [rdi]
	jne	.label_1272
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_16
	nop	
	mov	esi, OFFSET FLAT:.str.1_13
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xfts_open
	lea	rsi, [rsi]
	call	__assert_fail
.label_1272:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413e00
	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:

	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	mov	rbp, rbp
	je	.label_1274
	cmp	ecx, 0x11
	lea	rdi, [rdi]
	jne	.label_1275
	mov	rsp, rsp
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_1274:
	lea	rsi, [rsi]
	ret	
.label_1275:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x413e30

	.globl yesno
	.type yesno, @function
yesno:
	push	rbx
	sub	rsp, 0x10
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], 0
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + stdin]]
	mov	rsp, rsp
	lea	rdi, [rsp]
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	call	__getdelim
	test	rax, rax
	jle	.label_1277
	mov	rdi, qword ptr [rsp]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rax + rdi - 1]
	cmp	ecx, 0xa
	mov	rsp, rsp
	jne	.label_1278
	mov	byte ptr [rdi + rax - 1], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp]
.label_1278:
	call	rpmatch
	mov	rbp, rbp
	test	eax, eax
	setg	bl
	mov	rsp, rsp
	jmp	.label_1276
.label_1277:
	xor	ebx, ebx
.label_1276:
	mov	rdi, qword ptr [rsp]
	call	free
	mov	al, bl
	nop	
	add	rsp, 0x10
	nop	
	pop	rbx
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x413ec0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_1279
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_1280
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
	je	.label_1280
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
.label_1279:
	mov	ecx, 1
.label_1280:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413f30

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1281
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_1281
	test	byte ptr [rbx + 1], 1
	je	.label_1281
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_1281:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x413f70

	.globl freadahead
	.type freadahead, @function
freadahead:
	mov	rcx, qword ptr [rdi + 0x28]
	nop	
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	nop	
	ja	.label_1282
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x10]
	sub	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	nop	
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	je	.label_1283
	mov	rcx, qword ptr [rdi + 0x58]
	sub	rcx, qword ptr [rdi + 0x48]
.label_1283:
	lea	rdi, [rdi]
	add	rax, rcx
.label_1282:
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413fb0

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
	jne	.label_1284
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1284
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1285
.label_1284:
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
.label_1285:
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
	je	.label_1286
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1286:
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
	#Procedure 0x414060

	.globl rpl_fts_open
	.type rpl_fts_open, @function
rpl_fts_open:
	push	rbp
	nop	
	push	r15
	mov	rsp, rsp
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rsp, rsp
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x38
	mov	r13, rdx
	mov	r15d, esi
	mov	r12, rdi
	cmp	r15d, 0x1000
	jae	.label_1297
	mov	rbp, rbp
	mov	eax, r15d
	lea	rdi, [rdi]
	and	eax, 0x204
	nop	
	cmp	eax, 0x204
	je	.label_1297
	mov	rsp, rsp
	test	r15b, 0x12
	nop	
	je	.label_1297
	mov	rsp, rsp
	mov	edi, 0x80
	mov	rsp, rsp
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_1292
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbx + 0x30], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbx + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x40], r13
	mov	eax, r15d
	and	eax, 0xfffffdfb
	mov	rsp, rsp
	or	eax, 4
	lea	rdi, [rdi]
	test	r15b, 2
	lea	rdi, [rdi]
	cmove	eax, r15d
	lea	rdi, [rdi]
	mov	dword ptr [rbx + 0x48], eax
	mov	rbp, rbp
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
	mov	rdi, qword ptr [r12]
	mov	ebp, 1
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_1316
	mov	r14, rbx
	mov	rbp, rbp
	lea	rbx, [r12 + 8]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_1301:
	nop	
	call	strlen
	cmp	rax, rbp
	mov	rsp, rsp
	cmova	rbp, rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	lea	rsi, [rsi]
	jne	.label_1301
	inc	rbp
	mov	rsp, rsp
	mov	rbx, r14
.label_1316:
	cmp	rbp, 0x1000
	lea	rsi, [rsi]
	mov	esi, 0x1000
	cmova	rsi, rbp
	mov	rsp, rsp
	add	rsi, 0x100
	nop	
	mov	qword ptr [rbx + 0x30], rsi
	xor	edi, edi
	mov	rsp, rsp
	call	realloc
	mov	rbp, rax
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_1299
	mov	r14d, r15d
	mov	qword ptr [rbx + 0x20], rbp
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rbx
	mov	r15, qword ptr [r12]
	mov	qword ptr [rsp], r12
	lea	rsi, [rsi]
	xor	r12d, r12d
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_1312
	mov	edi, 0x110
	call	malloc
	mov	r12, rax
	mov	rbp, rbp
	test	r12, r12
	je	.label_1320
	mov	byte ptr [r12 + 0x108], 0
	mov	qword ptr [r12 + 0x60], 0
	mov	rax, qword ptr [rsp + 8]
	nop	
	mov	qword ptr [r12 + 0x50], rax
	mov	qword ptr [r12 + 0x38], rbp
	mov	rbp, rbp
	mov	dword ptr [r12 + 0x40], 0
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x18], 0
	mov	rsp, rsp
	mov	word ptr [r12 + 0x72], 0
	mov	word ptr [r12 + 0x74], 3
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	qword ptr [r12 + 0x58], -1
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x68], -1
.label_1312:
	mov	byte ptr [rsp + 0x17], 1
	mov	rsp, rsp
	test	r13, r13
	je	.label_1302
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	al, byte ptr [rax + 0x49]
	and	al, 4
	lea	rdi, [rdi]
	shr	al, 2
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x17], al
.label_1302:
	mov	rsp, rsp
	xor	ebp, ebp
	mov	rsp, rsp
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_1288
	mov	qword ptr [rsp + 0x20], r12
	mov	ebx, r14d
	and	ebx, 0x800
	mov	dword ptr [rsp + 0x34], ebx
	xor	ebp, ebp
	mov	rsp, rsp
	xor	r12d, r12d
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_1314:
	mov	qword ptr [rsp + 0x18], rbp
	mov	rdi, r15
	lea	rsi, [rsi]
	call	strlen
	mov	rbp, rax
	test	ebx, ebx
	jne	.label_1317
	lea	rdi, [rdi]
	cmp	rbp, 3
	jb	.label_1313
	cmp	rbp, 2
	nop	
	jb	.label_1287
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp + r15 - 1]
	lea	rsi, [rsi]
	cmp	eax, 0x2f
	jne	.label_1289
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], r12
.label_1294:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r15 + rbp - 2]
	cmp	eax, 0x2f
	jne	.label_1291
	lea	rdi, [rdi]
	dec	rbp
	lea	rdi, [rdi]
	cmp	rbp, 1
	lea	rsi, [rsi]
	ja	.label_1294
	jmp	.label_1291
.label_1317:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], r12
	jmp	.label_1291
.label_1313:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], r12
	jmp	.label_1291
.label_1287:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], r12
	jmp	.label_1291
.label_1289:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], r12
	nop	dword ptr [rax + rax]
.label_1291:
	mov	rbx, r13
	lea	rsi, [rsi]
	lea	rdi, [rbp + 0x110]
	nop	
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	rbp, rbp
	mov	r12, rax
	test	r12, r12
	je	.label_1303
	lea	rsi, [rsi]
	mov	r13, r12
	add	r13, 0x108
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rsi, r15
	nop	
	mov	rdx, rbp
	call	memcpy
	mov	rbp, rbp
	mov	byte ptr [r12 + rbp + 0x108], 0
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x60], rbp
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x50], rdi
	nop	
	mov	rax, qword ptr [rdi + 0x20]
	mov	qword ptr [r12 + 0x38], rax
	mov	rsp, rsp
	mov	dword ptr [r12 + 0x40], 0
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x72], 0
	mov	rsp, rsp
	mov	word ptr [r12 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	qword ptr [r12 + 0x58], 0
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x30], r13
	nop	
	mov	r15, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	test	r15, r15
	mov	rbp, rbp
	setne	al
	and	al, byte ptr [rsp + 0x17]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_1308
	mov	word ptr [r12 + 0x70], 0xb
	mov	rsp, rsp
	mov	qword ptr [r12 + 0xa8], 2
	jmp	.label_1300
	nop	word ptr cs:[rax + rax]
.label_1308:
	nop	
	xor	edx, edx
	mov	rsi, r12
	mov	rbp, rbp
	call	fts_stat
	mov	rsp, rsp
	mov	word ptr [r12 + 0x70], ax
.label_1300:
	mov	rsp, rsp
	mov	r13, rbx
	nop	
	test	r13, r13
	je	.label_1293
	mov	rbp, r12
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x10], r15
	nop	
	mov	r12, qword ptr [rsp + 0x28]
	jmp	.label_1305
.label_1293:
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x10], 0
	mov	rsp, rsp
	test	r15, r15
	lea	rdi, [rdi]
	mov	rbp, r12
	je	.label_1305
	nop	
	mov	rax, qword ptr [rsp + 0x28]
	nop	
	mov	qword ptr [rax + 0x10], r12
	mov	rbp, r15
.label_1305:
	nop	
	inc	r14
	mov	rax, qword ptr [rsp]
	mov	rbp, rbp
	mov	r15, qword ptr [rax + 8]
	add	rax, 8
	mov	qword ptr [rsp], rax
	test	r15, r15
	mov	rsp, rsp
	mov	ebx, dword ptr [rsp + 0x34]
	jne	.label_1314
	mov	rsp, rsp
	test	r13, r13
	mov	rdi, qword ptr [rsp + 8]
	je	.label_1318
	cmp	r14, 2
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	jb	.label_1288
	mov	rsi, rbp
	lea	rsi, [rsi]
	mov	rdx, r14
	call	fts_sort
	mov	rbp, rax
	nop	
	jmp	.label_1288
.label_1297:
	nop	
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	rbp, rbp
	xor	eax, eax
.label_1292:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
.label_1299:
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rbp, rbp
	jmp	.label_1311
.label_1303:
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r12, qword ptr [rsp + 0x20]
	mov	rbx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jmp	.label_1296
.label_1320:
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 8]
	jmp	.label_1306
.label_1318:
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x20]
.label_1288:
	mov	edi, 0x110
	call	malloc
	test	rax, rax
	mov	rsp, rsp
	je	.label_1304
	mov	rsp, rsp
	mov	byte ptr [rax + 0x108], 0
	mov	qword ptr [rax + 0x60], 0
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x50], rbx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0x20]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x38], rcx
	lea	rsi, [rsi]
	mov	dword ptr [rax + 0x40], 0
	mov	qword ptr [rax + 0x18], 0
	mov	word ptr [rax + 0x72], 0
	lea	rsi, [rsi]
	mov	word ptr [rax + 0x74], 3
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 0x20], xmm0
	nop	
	mov	qword ptr [rbx], rax
	mov	qword ptr [rax + 0x10], rbp
	mov	word ptr [rax + 0x70], 9
	mov	qword ptr [rax + 0x58], 1
	movzx	eax, word ptr [rbx + 0x48]
	test	ax, 0x102
	je	.label_1307
	mov	edi, 0x1f
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:AD_hash
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	jne	.label_1295
	lea	rsi, [rsi]
	jmp	.label_1296
.label_1304:
	mov	rbx, qword ptr [rsp + 8]
	nop	
	mov	qword ptr [rbx], 0
	jmp	.label_1296
.label_1307:
	mov	edi, 0x20
	lea	rdi, [rdi]
	call	malloc
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	je	.label_1296
	lea	rsi, [rsi]
	mov	rdi, rax
	call	cycle_check_init
.label_1295:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbx + 0x48]
	nop	
	test	ax, 0x204
	jne	.label_1298
	mov	edx, eax
	and	edx, 0x10
	mov	rbp, rbp
	shl	edx, 0xd
	mov	rsp, rsp
	or	edx, 0x90900
	mov	rbp, rbp
	test	ah, 2
	nop	
	jne	.label_1290
	mov	edi, OFFSET FLAT:.str_2
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, edx
	lea	rsi, [rsi]
	call	open_safer
	lea	rdi, [rdi]
	jmp	.label_1309
.label_1296:
	lea	rdi, [rdi]
	mov	r14, rbx
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_1310
	nop	dword ptr [rax]
.label_1319:
	mov	rbx, qword ptr [rbp + 0x10]
	nop	
	mov	rdi, qword ptr [rbp + 0x18]
	test	rdi, rdi
	mov	rsp, rsp
	je	.label_1315
	lea	rdi, [rdi]
	call	closedir
.label_1315:
	mov	rsp, rsp
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	free
	test	rbx, rbx
	lea	rdi, [rdi]
	mov	rbp, rbx
	mov	rbp, rbp
	jne	.label_1319
.label_1310:
	mov	rdi, r12
	call	free
	mov	rbx, r14
	mov	rbp, qword ptr [rbx + 0x20]
.label_1306:
	nop	
	mov	rdi, rbp
.label_1311:
	call	free
	mov	rsp, rsp
	mov	rdi, rbx
	call	free
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_1292
.label_1290:
	mov	rsp, rsp
	mov	edi, dword ptr [rbx + 0x2c]
	mov	esi, OFFSET FLAT:.str_2
	xor	eax, eax
	call	openat_safer
.label_1309:
	mov	rsp, rsp
	mov	dword ptr [rbx + 0x28], eax
	lea	rdi, [rdi]
	test	eax, eax
	jns	.label_1298
	lea	rsi, [rsi]
	or	byte ptr [rbx + 0x48], 4
.label_1298:
	nop	
	mov	rdi, rbx
	nop	
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	lea	rsi, [rsi]
	mov	rax, rbx
	lea	rdi, [rdi]
	jmp	.label_1292
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x414780

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	r15
	nop	
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	mov	eax, dword ptr [r15 + 0x48]
	lea	rsi, [rsi]
	cmp	qword ptr [r14 + 0x58], 0
	jne	.label_1321
	test	al, 1
	nop	
	je	.label_1321
	lea	rsi, [rsi]
	mov	dl, 1
.label_1321:
	mov	rbp, rbp
	lea	rbx, [r14 + 0x78]
	lea	rdi, [rdi]
	test	dl, dl
	lea	rdi, [rdi]
	jne	.label_1329
	and	eax, 2
	jne	.label_1329
	mov	rbp, rbp
	mov	esi, dword ptr [r15 + 0x2c]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r14 + 0x30]
	nop	
	mov	edi, 1
	mov	r8d, 0x100
	mov	rsp, rsp
	mov	rcx, rbx
	lea	rsi, [rsi]
	call	__fxstatat
	test	eax, eax
	je	.label_1327
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	eax, dword ptr [rax]
	mov	rbp, rbp
	jmp	.label_1330
.label_1329:
	mov	rsp, rsp
	mov	rsi, qword ptr [r14 + 0x30]
	mov	rbp, rbp
	mov	edi, 1
	lea	rsi, [rsi]
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	__xstat
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_1327
	lea	rdi, [rdi]
	call	__errno_location
	mov	r15, rax
	mov	eax, dword ptr [r15]
	cmp	eax, 2
	jne	.label_1330
	mov	rsi, qword ptr [r14 + 0x30]
	nop	
	mov	edi, 1
	mov	rsp, rsp
	mov	rdx, rbx
	mov	rsp, rsp
	call	__lxstat
	test	eax, eax
	mov	rbp, rbp
	je	.label_1324
	lea	rsi, [rsi]
	mov	eax, dword ptr [r15]
.label_1330:
	mov	dword ptr [r14 + 0x40], eax
	mov	rbp, rbp
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx], xmm0
	mov	ax, 0xa
.label_1323:
	movzx	eax, ax
	nop	
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1327:
	mov	rbp, rbp
	mov	ecx, 0xf000
	and	ecx, dword ptr [r14 + 0x90]
	lea	rsi, [rsi]
	mov	ax, 0xc
	cmp	ecx, 0xa000
	je	.label_1323
	cmp	ecx, 0x8000
	nop	
	je	.label_1322
	cmp	ecx, 0x4000
	mov	rbp, rbp
	jne	.label_1325
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x88]
	mov	rcx, -1
	lea	rdi, [rdi]
	cmp	rax, 2
	mov	rsp, rsp
	jb	.label_1328
	cmp	qword ptr [r14 + 0x58], 0
	jle	.label_1328
	mov	ecx, dword ptr [r15 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	lea	rdi, [rdi]
	mov	rcx, rax
.label_1328:
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x68], rcx
	mov	ecx, dword ptr [r14 + 0x108]
	mov	ax, 1
	mov	rsp, rsp
	movzx	edx, cl
	cmp	edx, 0x2e
	mov	rsp, rsp
	jne	.label_1323
	mov	edx, ecx
	shr	edx, 8
	test	dl, dl
	je	.label_1326
	mov	rbp, rbp
	movzx	edx, dl
	lea	rsi, [rsi]
	cmp	edx, 0x2e
	jne	.label_1323
	lea	rsi, [rsi]
	test	ecx, 0xff0000
	lea	rdi, [rdi]
	jne	.label_1323
.label_1326:
	nop	
	mov	ax, 1
	cmp	qword ptr [r14 + 0x58], 0
	mov	rsp, rsp
	je	.label_1323
	mov	ax, 5
	jmp	.label_1323
.label_1322:
	mov	ax, 8
	jmp	.label_1323
.label_1325:
	lea	rdi, [rdi]
	mov	ax, 3
	lea	rsi, [rsi]
	jmp	.label_1323
.label_1324:
	mov	dword ptr [r15], 0
	mov	ax, 0xd
	jmp	.label_1323
	nop	
	.section	.text
	.align	16
	#Procedure 0x4149b0

	.globl fts_sort
	.type fts_sort, @function
fts_sort:
	mov	rsp, rsp
	push	r15
	mov	rbp, rbp
	push	r14
	lea	rsi, [rsi]
	push	r13
	mov	rsp, rsp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	r15, qword ptr [r12 + 0x40]
	lea	rdi, [rdi]
	cmp	qword ptr [r12 + 0x38], r14
	jae	.label_1339
	lea	rsi, [r14 + 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x38], rsi
	mov	rbp, rbp
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_1333
	mov	rsp, rsp
	lea	r13, [r12 + 0x10]
	mov	rdi, qword ptr [r13]
	shl	rsi, 3
	lea	rsi, [rsi]
	call	realloc
	mov	rdi, rax
	lea	rdi, [rdi]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_1333
	mov	qword ptr [r13], rdi
	lea	rdi, [rdi]
	jmp	.label_1336
.label_1339:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	add	r12, 0x10
	mov	r13, r12
.label_1336:
	mov	rsp, rsp
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_1331
	nop	dword ptr [rax]
.label_1332:
	mov	qword ptr [rdi], rbx
	add	rdi, 8
	mov	rbx, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_1332
	mov	rdi, qword ptr [r13]
.label_1331:
	mov	edx, 8
	nop	
	mov	rsi, r14
	nop	
	mov	rcx, r15
	nop	
	call	qsort
	mov	r9, qword ptr [r13]
	mov	rbx, qword ptr [r9]
	mov	rsp, rsp
	cmp	r14, 1
	mov	rcx, rbx
	je	.label_1340
	nop	
	mov	rcx, qword ptr [r9 + 8]
	mov	qword ptr [rbx + 0x10], rcx
	mov	rsp, rsp
	mov	rcx, r14
	add	rcx, -2
	mov	rsp, rsp
	je	.label_1337
	mov	rsp, rsp
	lea	rdx, [r9 + 8]
	lea	rsi, [rsi]
	lea	edi, [r14 + 2]
	mov	rsp, rsp
	lea	r8, [r14 - 3]
	lea	rsi, [rsi]
	test	dil, 3
	mov	rbp, rbp
	je	.label_1335
	lea	rsi, [rsi]
	lea	edi, [r14 + 2]
	and	edi, 3
	neg	rdi
	nop	
.label_1334:
	mov	rsi, qword ptr [rdx]
	nop	
	mov	rax, qword ptr [rdx + 8]
	lea	rdx, [rdx + 8]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x10], rax
	dec	rcx
	nop	
	inc	rdi
	jne	.label_1334
.label_1335:
	lea	rsi, [rsi]
	cmp	r8, 3
	mov	rbp, rbp
	jb	.label_1337
	nop	dword ptr [rax + rax]
.label_1341:
	mov	rsp, rsp
	mov	rax, qword ptr [rdx]
	mov	rsi, qword ptr [rdx + 8]
	mov	qword ptr [rax + 0x10], rsi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdx + 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rdx + 0x10]
	mov	qword ptr [rax + 0x10], rsi
	mov	rax, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rdx + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], rsi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdx + 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdx + 0x20]
	lea	rdx, [rdx + 0x20]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], rsi
	mov	rbp, rbp
	add	rcx, -4
	lea	rsi, [rsi]
	jne	.label_1341
.label_1337:
	mov	rsp, rsp
	mov	rcx, qword ptr [r9 + r14*8 - 8]
.label_1340:
	mov	qword ptr [rcx + 0x10], 0
	jmp	.label_1338
.label_1333:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12 + 0x10]
	call	free
	mov	qword ptr [r12 + 0x10], 0
	mov	qword ptr [r12 + 0x38], 0
.label_1338:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414bb0

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	lea	rsi, [rsi]
	push	rbp
	push	r14
	nop	
	push	rbx
	nop	
	mov	r14, rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [r14]
	mov	rsp, rsp
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_1351
	lea	rsi, [rsi]
	cmp	qword ptr [rdi + 0x58], 0
	lea	rsi, [rsi]
	js	.label_1353
	nop	word ptr [rax + rax]
.label_1359:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rdi + 0x10]
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_1355
	mov	rbx, qword ptr [rdi + 8]
.label_1355:
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	cmp	qword ptr [rbx + 0x58], 0
	lea	rsi, [rsi]
	mov	rdi, rbx
	jns	.label_1359
	mov	rsp, rsp
	jmp	.label_1343
.label_1353:
	mov	rbx, rdi
.label_1343:
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	call	free
.label_1351:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_1348
	nop	dword ptr [rax]
.label_1354:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_1358
	lea	rsi, [rsi]
	call	closedir
.label_1358:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	lea	rdi, [rdi]
	mov	rbx, rbp
	jne	.label_1354
.label_1348:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	lea	rdi, [rdi]
	mov	eax, dword ptr [r14 + 0x48]
	lea	rdi, [rdi]
	test	ah, 2
	jne	.label_1360
	xor	ebp, ebp
	mov	rbp, rbp
	test	al, 4
	jne	.label_1345
	nop	
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebp, ebp
	test	eax, eax
	je	.label_1344
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_1344:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	lea	rsi, [rsi]
	test	ebp, ebp
	nop	
	je	.label_1349
	nop	
	jmp	.label_1345
.label_1360:
	mov	rsp, rsp
	mov	edi, dword ptr [r14 + 0x2c]
	lea	rsi, [rsi]
	xor	ebp, ebp
	lea	rdi, [rdi]
	test	edi, edi
	js	.label_1345
	nop	
	call	close
.label_1349:
	nop	
	test	eax, eax
	nop	
	je	.label_1345
	call	__errno_location
	mov	rbp, rbp
	mov	ebp, dword ptr [rax]
.label_1345:
	lea	rsi, [rsi]
	lea	rbx, [r14 + 0x60]
	jmp	.label_1346
	nop	
.label_1342:
	mov	edi, eax
	mov	rsp, rsp
	call	close
.label_1346:
	mov	rsp, rsp
	mov	rdi, rbx
	call	i_ring_empty
	lea	rdi, [rdi]
	test	al, al
	jne	.label_1357
	mov	rbp, rbp
	mov	rdi, rbx
	call	i_ring_pop
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	jns	.label_1342
	nop	
	jmp	.label_1346
.label_1357:
	mov	rsp, rsp
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_1347
	nop	
	call	hash_free
.label_1347:
	nop	
	movzx	eax, word ptr [r14 + 0x48]
	mov	rbp, rbp
	test	ax, 0x102
	je	.label_1350
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x58]
	mov	rbp, rbp
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_1352
	lea	rdi, [rdi]
	call	hash_free
	nop	
	jmp	.label_1352
.label_1350:
	mov	rdi, qword ptr [r14 + 0x58]
	lea	rdi, [rdi]
	call	free
.label_1352:
	mov	rdi, r14
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	xor	eax, eax
	test	ebp, ebp
	je	.label_1356
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], ebp
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
.label_1356:
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414da0

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	nop	
	push	r13
	mov	rsp, rsp
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rsp, rsp
	mov	r14, rdi
	nop	
	mov	r12, qword ptr [r14]
	xor	r15d, r15d
	test	r12, r12
	je	.label_1363
	mov	rsp, rsp
	mov	eax, dword ptr [r14 + 0x48]
	xor	r15d, r15d
	mov	rbp, rbp
	test	ah, 0x20
	mov	rsp, rsp
	jne	.label_1363
	lea	rdi, [rdi]
	movzx	ecx, word ptr [r12 + 0x74]
	nop	
	mov	word ptr [r12 + 0x74], 3
	mov	rsp, rsp
	cmp	ecx, 1
	nop	
	je	.label_1416
	movzx	edx, cx
	cmp	edx, 2
	mov	rsp, rsp
	jne	.label_1364
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r12 + 0x70]
	mov	rsp, rsp
	mov	esi, ecx
	and	esi, 0xfffe
	mov	rbp, rbp
	cmp	esi, 0xc
	jne	.label_1369
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_1379
	mov	eax, dword ptr [r14 + 0x48]
	mov	rbp, rbp
	test	al, 4
	lea	rdi, [rdi]
	jne	.label_1384
	mov	edx, eax
	nop	
	and	edx, 0x10
	shl	edx, 0xd
	lea	rdi, [rdi]
	or	edx, 0x90900
	mov	rsp, rsp
	test	ah, 2
	jne	.label_1396
	nop	
	mov	edi, OFFSET FLAT:.str_2
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, edx
	call	open_safer
	nop	
	jmp	.label_1400
.label_1416:
	xor	edx, edx
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r12
	call	fts_stat
	mov	rbp, rbp
	mov	word ptr [r12 + 0x70], ax
	mov	r15, r12
	jmp	.label_1363
.label_1364:
	lea	r13, [r12 + 0x70]
	mov	ecx, dword ptr [r12 + 0x70]
	jmp	.label_1408
.label_1369:
	mov	rbp, rbp
	lea	r13, [r12 + 0x70]
.label_1408:
	movzx	esi, cx
	mov	rsp, rsp
	cmp	esi, 1
	jne	.label_1404
	cmp	edx, 4
	je	.label_1415
	lea	rsi, [rsi]
	test	al, 0x40
	je	.label_1418
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r12 + 0x78]
	nop	
	cmp	rdx, qword ptr [r14 + 0x18]
	jne	.label_1415
.label_1418:
	mov	rbx, qword ptr [r14 + 8]
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_1365
	test	ah, 0x10
	jne	.label_1399
	nop	
	mov	rcx, qword ptr [r12 + 0x30]
	mov	edx, 0xffffffff
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsi, r12
	call	fts_safe_changedir
	test	eax, eax
	mov	rbp, rbp
	je	.label_1371
	call	__errno_location
	mov	eax, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [r12 + 0x40], eax
	or	byte ptr [r12 + 0x72], 1
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 8]
	lea	rdi, [rdi]
	jmp	.label_1381
	nop	word ptr [rax + rax]
.label_1404:
	mov	r15, qword ptr [r12 + 0x10]
	test	r15, r15
	je	.label_1401
	mov	rsp, rsp
	mov	qword ptr [r14], r15
	mov	rbp, rbp
	mov	rdi, r12
	lea	rdi, [rdi]
	call	free
	nop	
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_1398
	movzx	eax, word ptr [r15 + 0x74]
	cmp	eax, 4
	mov	r12, r15
	lea	rsi, [rsi]
	je	.label_1404
	mov	rbp, rbp
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_1373
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	nop	
	call	fts_stat
	lea	rsi, [rsi]
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	nop	
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_1370
	mov	eax, dword ptr [r14 + 0x48]
	nop	
	test	al, 4
	mov	rbp, rbp
	jne	.label_1370
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	lea	rdi, [rdi]
	or	edx, 0x90900
	mov	rbp, rbp
	test	ah, 2
	jne	.label_1409
	mov	edi, OFFSET FLAT:.str_2
	lea	rdi, [rdi]
	xor	eax, eax
	mov	esi, edx
	lea	rdi, [rdi]
	call	open_safer
	lea	rsi, [rsi]
	jmp	.label_1417
.label_1380:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_1381:
	mov	rbp, rbp
	test	rax, rax
	jne	.label_1380
	jmp	.label_1371
.label_1415:
	test	ecx, 0x20000
	je	.label_1382
	mov	rbp, rbp
	mov	edi, dword ptr [r12 + 0x44]
	mov	rsp, rsp
	call	close
.label_1382:
	nop	
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_1388
	nop	word ptr cs:[rax + rax]
.label_1367:
	nop	
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_1395
	call	closedir
.label_1395:
	mov	rdi, rbx
	call	free
	nop	
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_1367
	mov	rbp, rbp
	mov	qword ptr [r14 + 8], 0
.label_1388:
	nop	
	mov	word ptr [r12 + 0x70], 6
.label_1375:
	mov	rdi, r14
	mov	rsi, r12
	call	leave_dir
	mov	rsp, rsp
	mov	r15, r12
	mov	rbp, rbp
	jmp	.label_1363
.label_1401:
	lea	rsi, [rsi]
	mov	r15, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	cmp	qword ptr [r15 + 0x18], 0
	je	.label_1412
	mov	qword ptr [r14], r15
	mov	rax, qword ptr [r15 + 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	mov	rbp, rbp
	call	fts_build
	mov	r15, rax
	test	r15, r15
	nop	
	je	.label_1366
	mov	rdi, r12
	call	free
	nop	
	jmp	.label_1373
.label_1379:
	mov	rbp, rbp
	mov	r15, r12
	jmp	.label_1374
.label_1398:
	lea	rdi, [rdi]
	mov	rdi, r14
	lea	rdi, [rdi]
	call	restore_initial_cwd
	mov	rbp, rbp
	test	eax, eax
	mov	eax, dword ptr [r14 + 0x48]
	je	.label_1377
	or	eax, 0x2000
	mov	dword ptr [r14 + 0x48], eax
	mov	rbp, rbp
	xor	r15d, r15d
	nop	
	jmp	.label_1363
.label_1384:
	mov	r15, r12
	mov	rbp, rbp
	jmp	.label_1374
.label_1377:
	test	ax, 0x102
	je	.label_1389
	mov	rdi, qword ptr [r14 + 0x58]
	nop	
	test	rdi, rdi
	je	.label_1392
	mov	rbp, rbp
	call	hash_free
	jmp	.label_1392
.label_1399:
	nop	
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	nop	word ptr [rax + rax]
.label_1405:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	nop	
	test	rdi, rdi
	je	.label_1383
	nop	
	call	closedir
.label_1383:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	lea	rdi, [rdi]
	mov	rbx, rbp
	jne	.label_1405
	lea	rsi, [rsi]
	mov	qword ptr [r14 + 8], 0
.label_1365:
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	lea	rsi, [rsi]
	mov	qword ptr [r14 + 8], rax
	mov	rsp, rsp
	test	rax, rax
	je	.label_1414
.label_1371:
	mov	r15, qword ptr [r14 + 8]
	mov	rsp, rsp
	mov	qword ptr [r14 + 8], 0
	jmp	.label_1373
.label_1414:
	xor	r15d, r15d
	lea	rdi, [rdi]
	test	byte ptr [r14 + 0x49], 0x20
	mov	rsp, rsp
	jne	.label_1363
	lea	rsi, [rsi]
	cmp	dword ptr [r12 + 0x40], 0
	lea	rdi, [rdi]
	je	.label_1375
	movzx	eax, word ptr [r13]
	nop	
	cmp	eax, 4
	nop	
	je	.label_1375
	mov	rbp, rbp
	mov	word ptr [r13], 7
	nop	
	jmp	.label_1375
.label_1396:
	lea	rsi, [rsi]
	mov	edi, dword ptr [r14 + 0x2c]
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_2
	lea	rdi, [rdi]
	xor	eax, eax
	call	openat_safer
.label_1400:
	mov	dword ptr [r12 + 0x44], eax
	mov	rsp, rsp
	test	eax, eax
	js	.label_1386
	or	byte ptr [r12 + 0x72], 2
	mov	r15, r12
	jmp	.label_1374
.label_1366:
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_1363
	mov	rsp, rsp
	mov	r15, qword ptr [r12 + 8]
.label_1412:
	lea	rdi, [rdi]
	mov	qword ptr [r14], r15
	mov	rdi, r12
	mov	rbp, rbp
	call	free
	mov	rsp, rsp
	cmp	qword ptr [r15 + 0x58], -1
	nop	
	je	.label_1402
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	nop	
	je	.label_1394
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0
	lea	rsi, [rsi]
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_1411
	movzx	eax, word ptr [r15 + 0x72]
	test	al, 2
	nop	
	jne	.label_1387
	test	al, 1
	jne	.label_1397
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_0
	mov	rdi, r14
	call	fts_safe_changedir
	lea	rdi, [rdi]
	jmp	.label_1372
.label_1402:
	mov	rdi, r15
	mov	rsp, rsp
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	mov	qword ptr [r14], 0
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_1363
.label_1386:
	call	__errno_location
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	lea	rdi, [rdi]
	mov	word ptr [r12 + 0x70], 7
	mov	rsp, rsp
	mov	r15, r12
	mov	rbp, rbp
	jmp	.label_1374
.label_1389:
	mov	rdi, qword ptr [r14 + 0x58]
	mov	rsp, rsp
	call	free
.label_1392:
	nop	
	mov	rdx, qword ptr [r15 + 0x60]
	mov	qword ptr [r15 + 0x48], rdx
	mov	rdi, qword ptr [r14 + 0x20]
	lea	rdi, [rdi]
	lea	r12, [r15 + 0x108]
	lea	rdi, [rdi]
	inc	rdx
	mov	rsi, r12
	call	memmove
	lea	rsi, [rsi]
	mov	esi, 0x2f
	mov	rdi, r12
	mov	rsp, rsp
	call	strrchr
	mov	rbx, rax
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_1391
	lea	rsi, [rsi]
	cmp	rbx, r12
	nop	
	jne	.label_1407
	nop	
	cmp	byte ptr [r15 + 0x109], 0
	je	.label_1391
.label_1407:
	mov	rbp, rbp
	inc	rbx
	mov	rdi, rbx
	nop	
	call	strlen
	mov	rsp, rsp
	mov	r13, rax
	mov	rsp, rsp
	lea	rdx, [r13 + 1]
	mov	rdi, r12
	lea	rdi, [rdi]
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	memmove
	mov	qword ptr [r15 + 0x60], r13
.label_1391:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [r15 + 0x38], rax
	mov	qword ptr [r15 + 0x30], rax
	movzx	eax, word ptr [r14 + 0x48]
	mov	rbp, rbp
	test	ax, 0x102
	je	.label_1362
	mov	edi, 0x1f
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	lea	rdi, [rdi]
	call	hash_initialize
	mov	qword ptr [r14 + 0x58], rax
	lea	rsi, [rsi]
	jmp	.label_1374
.label_1362:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [r14 + 0x58], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_1374
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsp, rsp
	call	cycle_check_init
	jmp	.label_1374
.label_1411:
	mov	rdi, r14
	call	restore_initial_cwd
.label_1372:
	test	eax, eax
	je	.label_1397
	call	__errno_location
	mov	rbp, rbp
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	rbp, rbp
	or	byte ptr [r14 + 0x49], 0x20
	mov	rbp, rbp
	jmp	.label_1397
.label_1387:
	mov	eax, dword ptr [r14 + 0x48]
	lea	rsi, [rsi]
	lea	rbx, [r15 + 0x44]
	test	al, 4
	nop	
	jne	.label_1393
	mov	rbp, rbp
	test	ah, 2
	mov	ebp, dword ptr [r15 + 0x44]
	jne	.label_1410
	mov	edi, ebp
	call	fchdir
	mov	rsp, rsp
	test	eax, eax
	je	.label_1393
	nop	
	call	__errno_location
	mov	eax, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_1393
.label_1409:
	mov	rbp, rbp
	mov	edi, dword ptr [r14 + 0x2c]
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_2
	xor	eax, eax
	call	openat_safer
.label_1417:
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_1368
	or	byte ptr [r15 + 0x72], 2
	lea	rdi, [rdi]
	jmp	.label_1370
.label_1368:
	call	__errno_location
	nop	
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
.label_1370:
	mov	rbp, rbp
	mov	word ptr [r15 + 0x74], 3
.label_1373:
	mov	rbp, rbp
	mov	rax, qword ptr [r14 + 0x20]
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rcx + 0x48]
	movzx	edx, byte ptr [rdx + rcx - 1]
	cmp	edx, 0x2f
	mov	rsp, rsp
	jne	.label_1378
	mov	rsp, rsp
	dec	rcx
.label_1378:
	lea	rdi, [rax + rcx + 1]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x2f
	mov	rsp, rsp
	lea	rsi, [r15 + 0x108]
	mov	rdx, qword ptr [r15 + 0x60]
	mov	rbp, rbp
	inc	rdx
	call	memmove
.label_1374:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	mov	rsp, rsp
	jne	.label_1385
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_1376
	cmp	rax, 2
	jne	.label_1394
	nop	
	mov	rbx, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_1406
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	mov	rbp, rbp
	jne	.label_1406
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	filesystem_type
	cmp	rax, 0x52654973
	mov	rbp, rbp
	je	.label_1376
	mov	rsp, rsp
	cmp	rax, 0x58465342
	mov	rbp, rbp
	je	.label_1376
.label_1406:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	nop	
	call	fts_stat
	lea	rsi, [rsi]
	mov	word ptr [r15 + 0x70], ax
	lea	rsi, [rsi]
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	cmp	ecx, 0x4000
	jne	.label_1385
	lea	rsi, [rsi]
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_1376
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x68]
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	nop	
	jb	.label_1376
	dec	rax
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x68], rax
.label_1376:
	mov	rbp, rbp
	movzx	eax, word ptr [r15 + 0x70]
.label_1385:
	lea	rdi, [rdi]
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_1363
	cmp	qword ptr [r15 + 0x58], 0
	mov	rbp, rbp
	jne	.label_1390
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_1390:
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, r15
	call	enter_dir
	lea	rdi, [rdi]
	test	al, al
	mov	rsp, rsp
	jne	.label_1363
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0xc
	nop	
	xor	r15d, r15d
	jmp	.label_1363
.label_1410:
	mov	rsp, rsp
	mov	esi, dword ptr [r14 + 0x2c]
	cmp	esi, ebp
	nop	
	jne	.label_1403
	cmp	esi, -0x64
	mov	rsp, rsp
	jne	.label_1394
.label_1403:
	mov	rsp, rsp
	lea	rdi, [r14 + 0x60]
	lea	rsi, [rsi]
	call	i_ring_push
	test	eax, eax
	js	.label_1413
	mov	edi, eax
	call	close
.label_1413:
	mov	rsp, rsp
	mov	dword ptr [r14 + 0x2c], ebp
.label_1393:
	mov	edi, dword ptr [rbx]
	call	close
.label_1397:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	mov	rsp, rsp
	je	.label_1361
	mov	eax, dword ptr [r15 + 0x40]
	lea	rsi, [rsi]
	cmp	eax, 0
	setne	cl
	lea	rdi, [rdi]
	movzx	ecx, cl
	or	ecx, 6
	mov	rbp, rbp
	cmp	eax, 0
	nop	
	mov	word ptr [r15 + 0x70], cx
	mov	rsp, rsp
	jne	.label_1361
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r15
	call	leave_dir
.label_1361:
	xor	eax, eax
	mov	rbp, rbp
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	r15, rax
.label_1363:
	mov	rax, r15
	mov	rsp, rsp
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_1394:
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x415770

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_1420
	movups	xmm0, xmmword ptr [rsi + 0x78]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp], xmm0
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	mov	rsp, rsp
	call	hash_delete
	lea	rdi, [rdi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1421
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	add	rsp, 0x18
	ret	
.label_1420:
	mov	rsp, rsp
	mov	rax, qword ptr [rsi + 8]
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1419
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x58], 0
	nop	
	js	.label_1419
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	mov	rsp, rsp
	je	.label_1421
	mov	rdx, qword ptr [rcx]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rsi + 0x80]
	lea	rdi, [rdi]
	jne	.label_1419
	nop	
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	mov	rbp, rbp
	jne	.label_1419
	mov	rdx, qword ptr [rax + 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	qword ptr [rcx], rax
.label_1419:
	lea	rdi, [rdi]
	add	rsp, 0x18
	ret	
.label_1421:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415830

	.globl fts_safe_changedir
	.type fts_safe_changedir, @function
fts_safe_changedir:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x98
	mov	rsp, rsp
	mov	rbx, rcx
	lea	rsi, [rsi]
	mov	r13d, edx
	mov	r15, rdi
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_1431
	mov	rbp, rbp
	movzx	edx, byte ptr [rbx]
	lea	rsi, [rsi]
	mov	ecx, 0x2e
	lea	rsi, [rsi]
	mov	eax, 0x2e
	sub	eax, edx
	lea	rsi, [rsi]
	jne	.label_1438
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx + 1]
	lea	rsi, [rsi]
	sub	ecx, eax
	lea	rsi, [rsi]
	mov	eax, ecx
	jne	.label_1438
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_1438:
	test	eax, eax
	lea	rsi, [rsi]
	sete	r14b
	lea	rdi, [rdi]
	jmp	.label_1425
.label_1431:
	xor	r14d, r14d
.label_1425:
	lea	rsi, [rsi]
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 4
	mov	rsp, rsp
	jne	.label_1433
	nop	
	test	r13d, r13d
	jns	.label_1430
	mov	rbp, rbp
	mov	cl, r14b
	mov	rbp, rbp
	xor	cl, 1
	jne	.label_1432
	nop	
	mov	qword ptr [rsp + 0x90], rsi
	and	eax, 0x200
	mov	rbp, rbp
	je	.label_1422
	lea	rbp, [r15 + 0x60]
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	i_ring_empty
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	jne	.label_1422
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	mov	rsp, rsp
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r14b, 1
	nop	
	jmp	.label_1422
.label_1433:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_1427
	and	eax, 0x200
	je	.label_1427
	lea	rdi, [rdi]
	mov	edi, r13d
	mov	rsp, rsp
	call	close
	nop	
	jmp	.label_1427
.label_1430:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x90], rsi
	nop	
	jmp	.label_1422
.label_1432:
	mov	qword ptr [rsp + 0x90], rsi
.label_1422:
	test	r13d, r13d
	mov	rbp, rbp
	mov	r12d, r13d
	jns	.label_1436
	mov	rbp, rbp
	mov	eax, dword ptr [r15 + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	mov	rsp, rsp
	or	edx, 0x90900
	nop	
	test	ah, 2
	mov	rbp, rbp
	jne	.label_1440
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	esi, edx
	call	open_safer
	mov	rbp, rbp
	jmp	.label_1428
.label_1440:
	mov	rbp, rbp
	mov	edi, dword ptr [r15 + 0x2c]
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsi, rbx
	nop	
	call	openat_safer
.label_1428:
	mov	rbp, rbp
	mov	r12d, eax
	mov	ebp, 0xffffffff
	lea	rsi, [rsi]
	test	r12d, r12d
	lea	rdi, [rdi]
	js	.label_1427
.label_1436:
	lea	rsi, [rsi]
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 2
	nop	
	jne	.label_1435
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_1437
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x2e
	jne	.label_1437
	movzx	ecx, byte ptr [rbx + 1]
	cmp	ecx, 0x2e
	jne	.label_1437
	cmp	byte ptr [rbx + 2], 0
	mov	rsp, rsp
	jne	.label_1437
.label_1435:
	lea	rdx, [rsp]
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, r12d
	lea	rdi, [rdi]
	call	__fxstat
	test	eax, eax
	jne	.label_1426
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x90]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	jne	.label_1429
	nop	
	mov	rax, qword ptr [rcx + 0x80]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rsp + 8]
	nop	
	jne	.label_1429
	mov	eax, dword ptr [r15 + 0x48]
.label_1437:
	mov	rbp, rbp
	test	ah, 2
	jne	.label_1434
	nop	
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	mov	rbp, rbp
	jmp	.label_1439
.label_1434:
	mov	esi, dword ptr [r15 + 0x2c]
	lea	rsi, [rsi]
	cmp	esi, r12d
	jne	.label_1441
	cmp	esi, -0x64
	jne	.label_1442
.label_1441:
	lea	rdi, [rdi]
	test	r14b, r14b
	je	.label_1443
	test	al, 4
	lea	rsi, [rsi]
	jne	.label_1423
	nop	
	test	esi, esi
	js	.label_1423
	mov	rbp, rbp
	mov	edi, esi
	jmp	.label_1424
.label_1429:
	nop	
	call	__errno_location
	mov	dword ptr [rax], 2
.label_1426:
	mov	ebp, 0xffffffff
.label_1439:
	test	r13d, r13d
	jns	.label_1427
	call	__errno_location
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	nop	
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_1427
.label_1443:
	lea	rsi, [rsi]
	lea	rdi, [r15 + 0x60]
	lea	rsi, [rsi]
	call	i_ring_push
	lea	rsi, [rsi]
	test	eax, eax
	js	.label_1423
	mov	edi, eax
.label_1424:
	mov	rsp, rsp
	call	close
.label_1423:
	mov	dword ptr [r15 + 0x2c], r12d
	xor	ebp, ebp
.label_1427:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	nop	
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1442:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x415b10

	.globl fts_build
	.type fts_build, @function
fts_build:
	nop	
	push	rbp
	mov	rsp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rdi, [rdi]
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0xa8
	lea	rsi, [rsi]
	mov	r15d, esi
	lea	rdi, [rdi]
	mov	r13, rdi
	mov	qword ptr [rsp + 0x98], r13
	lea	rsi, [rsi]
	mov	r12, qword ptr [r13]
	nop	
	mov	qword ptr [rsp + 0x68], r12
	mov	rdi, qword ptr [r12 + 0x18]
	mov	rbp, rbp
	test	rdi, rdi
	mov	rsp, rsp
	je	.label_1482
	mov	qword ptr [rsp + 0x38], rdi
	call	dirfd
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x5c], eax
	lea	rsi, [rsi]
	test	eax, eax
	js	.label_1505
	mov	qword ptr [rsp + 0x50], -1
	nop	
	cmp	qword ptr [r13 + 0x40], 0
	nop	
	jne	.label_1509
	mov	eax, 0x186a0
	mov	qword ptr [rsp + 0x50], rax
.label_1509:
	lea	rax, [r13 + 0x40]
	mov	qword ptr [rsp + 0x30], rax
	lea	rax, [r13 + 0x48]
	mov	qword ptr [rsp + 0x90], rax
	mov	al, 1
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x74], eax
	jmp	.label_1488
.label_1482:
	mov	qword ptr [rsp + 0x38], rdi
	mov	rsp, rsp
	mov	eax, dword ptr [r13 + 0x48]
	mov	ecx, eax
	mov	rsp, rsp
	and	ecx, 0x204
	mov	edi, 0xffffff9c
	nop	
	cmp	ecx, 0x200
	mov	rsp, rsp
	jne	.label_1470
	mov	edi, dword ptr [r13 + 0x2c]
.label_1470:
	mov	rbp, rbp
	mov	rsi, qword ptr [r12 + 0x30]
	xor	edx, edx
	mov	rsp, rsp
	test	al, 0x10
	mov	rbp, rbp
	je	.label_1446
	nop	
	test	al, 1
	nop	
	je	.label_1523
	lea	rsi, [rsi]
	cmp	qword ptr [r12 + 0x58], 0
	mov	rbp, rbp
	je	.label_1446
.label_1523:
	lea	rdi, [rdi]
	mov	edx, 0x20000
.label_1446:
	nop	
	lea	rcx, [rsp + 0x5c]
	call	opendirat
	mov	qword ptr [r12 + 0x18], rax
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1454
	nop	
	lea	rcx, [r13 + 0x48]
	lea	rdi, [rdi]
	movzx	eax, word ptr [r12 + 0x70]
	nop	
	cmp	eax, 0xb
	mov	rsp, rsp
	jne	.label_1457
	mov	qword ptr [rsp + 0x90], rcx
	xor	edx, edx
	mov	rdi, r13
	lea	rdi, [rdi]
	mov	rsi, r12
	lea	rsi, [rsi]
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	jmp	.label_1468
.label_1505:
	mov	rdi, qword ptr [r12 + 0x18]
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
.label_1454:
	mov	rsp, rsp
	xor	ebx, ebx
	cmp	r15d, 3
	jne	.label_1462
	lea	rsi, [rsi]
	mov	word ptr [r12 + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	nop	
	mov	dword ptr [r12 + 0x40], eax
	xor	ebx, ebx
	jmp	.label_1462
.label_1457:
	mov	rbp, rbp
	test	byte ptr [rcx + 1], 1
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x90], rcx
	je	.label_1468
	mov	rdi, r13
	nop	
	mov	rsi, r12
	lea	rsi, [rsi]
	call	leave_dir
	xor	edx, edx
	mov	rdi, r13
	mov	rsi, r12
	mov	rbp, rbp
	call	fts_stat
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsi, r12
	mov	rsp, rsp
	call	enter_dir
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	je	.label_1491
.label_1468:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], -1
	lea	rdi, [rdi]
	cmp	qword ptr [r13 + 0x40], 0
	lea	rdi, [rdi]
	jne	.label_1494
	mov	eax, 0x186a0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], rax
.label_1494:
	lea	rax, [r13 + 0x40]
	mov	qword ptr [rsp + 0x30], rax
	cmp	r15d, 2
	nop	
	je	.label_1499
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x90]
	mov	rsp, rsp
	mov	eax, dword ptr [rax]
	nop	
	and	eax, 0x38
	cmp	eax, 0x18
	mov	rbp, rbp
	jne	.label_1501
	mov	rbp, rbp
	cmp	qword ptr [r12 + 0x88], 2
	jne	.label_1501
	mov	esi, dword ptr [rsp + 0x5c]
	mov	rdi, r12
	lea	rsi, [rsi]
	call	filesystem_type
	cmp	rax, 0x9f9f
	nop	
	jle	.label_1507
	cmp	rax, 0x9fa0
	lea	rsi, [rsi]
	je	.label_1501
	mov	rbp, rbp
	mov	ecx, 0xff534d42
	mov	rsp, rsp
	cmp	rax, rcx
	je	.label_1501
	mov	rsp, rsp
	cmp	rax, 0x5346414f
	je	.label_1501
	lea	rsi, [rsi]
	jmp	.label_1499
.label_1491:
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0xc
	lea	rdi, [rdi]
	xor	ebx, ebx
	jmp	.label_1462
.label_1507:
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1501
	mov	rbp, rbp
	cmp	rax, 0x6969
	jne	.label_1499
.label_1501:
	cmp	r15d, 3
	nop	
	sete	bl
	mov	rbp, rbp
	mov	r14b, 1
	jmp	.label_1518
.label_1499:
	cmp	r15d, 3
	lea	rsi, [rsi]
	sete	bl
	mov	rbp, rbp
	mov	r14d, 0
	mov	rbp, rbp
	jne	.label_1520
.label_1518:
	mov	rsp, rsp
	mov	dword ptr [rsp + 8], r15d
	mov	rax, qword ptr [rsp + 0x90]
	nop	
	test	byte ptr [rax + 1], 2
	mov	ebp, dword ptr [rsp + 0x5c]
	lea	rdi, [rdi]
	je	.label_1445
	nop	
	mov	esi, 0x406
	nop	
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebp
	call	rpl_fcntl
	mov	ebp, eax
	mov	dword ptr [rsp + 0x5c], ebp
.label_1445:
	nop	
	test	ebp, ebp
	nop	
	js	.label_1458
	xor	ecx, ecx
	mov	rbp, rbp
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	edx, ebp
	mov	rsp, rsp
	call	fts_safe_changedir
	test	eax, eax
	mov	rsp, rsp
	je	.label_1449
.label_1458:
	and	bl, r14b
	lea	rsi, [rsi]
	movzx	eax, bl
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_1467
	lea	rsi, [rsi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [r12 + 0x40], eax
.label_1467:
	or	byte ptr [r12 + 0x72], 1
	mov	rdi, qword ptr [r12 + 0x18]
	lea	rsi, [rsi]
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax]
	mov	rbp, rbp
	test	ah, 2
	lea	rdi, [rdi]
	je	.label_1474
	mov	edi, dword ptr [rsp + 0x5c]
	test	edi, edi
	js	.label_1474
	call	close
.label_1474:
	mov	qword ptr [r12 + 0x18], 0
	mov	dword ptr [rsp + 0x74], 0
	jmp	.label_1486
.label_1520:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x74], 0
	nop	
	jmp	.label_1488
.label_1449:
	mov	rsp, rsp
	mov	al, 1
	mov	dword ptr [rsp + 0x74], eax
.label_1486:
	mov	r15d, dword ptr [rsp + 8]
.label_1488:
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [r12 + 0x48]
	mov	rbp, rbp
	movzx	eax, byte ptr [rax + rdx - 1]
	cmp	eax, 0x2f
	jne	.label_1521
	dec	rdx
.label_1521:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 8], r15d
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	test	byte ptr [rax], 4
	je	.label_1497
	mov	rax, qword ptr [r13 + 0x20]
	mov	rbp, rbp
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x28], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_1497:
	lea	rax, [rdx + 1]
	mov	qword ptr [rsp + 0x78], rax
	mov	rcx, qword ptr [r13 + 0x30]
	sub	rcx, rax
	mov	qword ptr [rsp + 0x60], rcx
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x58]
	inc	rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	mov	rsp, rsp
	add	rdx, 0x102
	mov	qword ptr [rsp + 0x48], rdx
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xa0], rax
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], rax
	mov	dword ptr [rsp + 0xc], 0
	xor	eax, eax
	lea	rdi, [rdi]
	xor	ebp, ebp
	xor	r15d, r15d
.label_1444:
	mov	rsp, rsp
	mov	rbx, qword ptr [r12 + 0x18]
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_1456
	mov	qword ptr [rsp + 0x88], rax
	mov	qword ptr [rsp + 0x18], rbp
	call	__errno_location
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x80], rax
	mov	rbp, qword ptr [rsp + 0x90]
	nop	word ptr cs:[rax + rax]
.label_1463:
	mov	rax, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	mov	rdi, rbx
	call	readdir
	lea	rsi, [rsi]
	mov	r14, rax
	lea	rdi, [rdi]
	test	r14, r14
	je	.label_1451
	mov	rsp, rsp
	mov	r13, r14
	add	r13, 0x13
	nop	
	test	byte ptr [rbp], 0x20
	jne	.label_1455
	movzx	eax, byte ptr [r13]
	mov	rsp, rsp
	cmp	eax, 0x2e
	lea	rdi, [rdi]
	jne	.label_1455
	nop	
	movzx	eax, byte ptr [r14 + 0x14]
	cmp	eax, 0x2e
	lea	rdi, [rdi]
	je	.label_1461
	test	al, al
	je	.label_1465
	lea	rsi, [rsi]
	jmp	.label_1455
	nop	word ptr cs:[rax + rax]
.label_1461:
	mov	rsp, rsp
	cmp	byte ptr [r14 + 0x15], 0
	lea	rsi, [rsi]
	jne	.label_1455
.label_1465:
	nop	
	mov	rbx, qword ptr [r12 + 0x18]
	test	rbx, rbx
	nop	
	jne	.label_1463
	jmp	.label_1475
	nop	word ptr cs:[rax + rax]
.label_1455:
	mov	rdi, r13
	mov	rsp, rsp
	call	strlen
	mov	rsp, rsp
	mov	rbx, rax
	lea	rdi, [rbx + 0x110]
	lea	rsi, [rsi]
	and	rdi, 0xfffffffffffffff8
	mov	rsp, rsp
	call	malloc
	mov	r12, rax
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_1485
	nop	
	mov	rdi, r12
	mov	rbp, rbp
	add	rdi, 0x108
	nop	
	mov	qword ptr [rsp + 0x20], rdi
	lea	rdi, [rdi]
	mov	rsi, r13
	lea	rdi, [rdi]
	mov	rdx, rbx
	nop	
	call	memcpy
	mov	byte ptr [r12 + rbx + 0x108], 0
	mov	qword ptr [r12 + 0x60], rbx
	mov	rbp, qword ptr [rsp + 0x98]
	mov	qword ptr [r12 + 0x50], rbp
	lea	rdi, [rdi]
	mov	r13, qword ptr [rbp + 0x20]
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x38], r13
	mov	rbp, rbp
	mov	dword ptr [r12 + 0x40], 0
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x72], 0
	mov	rbp, rbp
	mov	word ptr [r12 + 0x74], 3
	mov	rbp, rbp
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	rax, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	cmp	rbx, rax
	mov	rbp, rbp
	jae	.label_1492
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	jmp	.label_1506
.label_1492:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x48]
	lea	rsi, [rax + rbx]
	lea	rdi, [rdi]
	add	rsi, qword ptr [rbp + 0x30]
	jb	.label_1510
	lea	rdi, [rdi]
	mov	qword ptr [rbp + 0x30], rsi
	mov	rdi, r13
	call	realloc
	lea	rdi, [rdi]
	test	rax, rax
	nop	
	je	.label_1512
	mov	rsp, rsp
	mov	qword ptr [rbp + 0x20], rax
	lea	rdi, [rdi]
	cmp	r13, rax
	lea	rsi, [rsi]
	je	.label_1514
	mov	rdx, qword ptr [rsp + 0x78]
	mov	rbp, rbp
	add	rax, rdx
	mov	rcx, qword ptr [rsp + 0x90]
	test	byte ptr [rcx], 4
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x28], rcx
	mov	rbp, rbp
	mov	al, 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x40], rax
	mov	rbp, rbp
	jmp	.label_1516
.label_1514:
	mov	rdx, qword ptr [rsp + 0x78]
.label_1516:
	mov	rax, qword ptr [rbp + 0x30]
	sub	rax, rdx
.label_1506:
	mov	rsp, rsp
	add	rbx, rdx
	jb	.label_1447
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x60], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x78], rdx
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x58], rax
	mov	rbp, rbp
	mov	r13, rbp
	mov	rax, qword ptr [r13]
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 8], rax
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x48], rbx
	mov	rsp, rsp
	mov	rax, qword ptr [r14]
	mov	qword ptr [r12 + 0x80], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x90]
	test	byte ptr [rax], 4
	jne	.label_1450
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_1471
	nop	word ptr cs:[rax + rax]
.label_1450:
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	mov	rdx, qword ptr [r12 + 0x60]
	mov	rsp, rsp
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	call	memmove
.label_1471:
	mov	rax, qword ptr [rsp + 0x90]
	mov	edx, dword ptr [rax]
	nop	
	mov	rax, qword ptr [rsp + 0x30]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	je	.label_1481
	mov	eax, edx
	mov	rsp, rsp
	and	eax, 0x400
	jne	.label_1481
	xor	edx, edx
	mov	rsp, rsp
	mov	rdi, r13
	mov	rsp, rsp
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	mov	rbp, qword ptr [rsp + 0x18]
	jmp	.label_1490
	nop	
.label_1481:
	and	edx, 0x18
	movzx	ecx, byte ptr [r14 + 0x12]
	xor	eax, eax
	cmp	edx, 0x18
	lea	rsi, [rsi]
	mov	edx, 0
	lea	rdi, [rdi]
	jne	.label_1493
	nop	
	cmp	ecx, 4
	setne	bl
	test	cl, cl
	setne	dl
	and	dl, bl
.label_1493:
	mov	word ptr [r12 + 0x70], 0xb
	mov	rsp, rsp
	lea	esi, [rcx - 1]
	mov	rsp, rsp
	cmp	esi, 0xb
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x18]
	ja	.label_1498
	mov	eax,  dword ptr [dword ptr [+ (rcx * 4) + label_1503]]
.label_1498:
	mov	dword ptr [r12 + 0x90], eax
	cmp	dl, 1
	mov	eax, 1
	adc	rax, 0
	mov	rsp, rsp
	mov	qword ptr [r12 + 0xa8], rax
.label_1490:
	mov	qword ptr [r12 + 0x10], 0
	test	r15, r15
	nop	
	mov	rax, r12
	je	.label_1517
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, r15
.label_1517:
	mov	rbp, rbp
	mov	r15, rax
	cmp	rbp, 0x2710
	jne	.label_1466
	mov	rax, qword ptr [rsp + 0x30]
	cmp	qword ptr [rax], 0
	nop	
	jne	.label_1466
	mov	esi, dword ptr [rsp + 0x5c]
	mov	rdi, qword ptr [rsp + 0x68]
	nop	
	call	filesystem_type
	mov	dword ptr [rsp + 0xc], 0
	cmp	rax, 0x6969
	mov	rbp, rbp
	je	.label_1466
	mov	rsp, rsp
	cmp	rax, 0x1021994
	je	.label_1466
	mov	ecx, 0xff534d42
	mov	rbp, rbp
	cmp	rax, rcx
	mov	rsp, rsp
	je	.label_1466
	mov	rsp, rsp
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	nop	word ptr cs:[rax + rax]
.label_1466:
	mov	rbp, rbp
	inc	rbp
	cmp	qword ptr [rsp + 0x50], rbp
	mov	rbp, rbp
	mov	rax, r12
	mov	r12, qword ptr [rsp + 0x68]
	ja	.label_1444
	jmp	.label_1456
.label_1451:
	mov	rax, qword ptr [rsp + 0x80]
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_1452
	nop	
	mov	dword ptr [r12 + 0x40], eax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x38]
	or	rax, rbp
	mov	ax, 7
	mov	cx, 4
	mov	rbp, rbp
	cmovne	cx, ax
	lea	rdi, [rdi]
	mov	word ptr [r12 + 0x70], cx
.label_1452:
	mov	rdi, qword ptr [r12 + 0x18]
	lea	rdi, [rdi]
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x98]
	je	.label_1456
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
	jmp	.label_1456
.label_1475:
	mov	r13, qword ptr [rsp + 0x98]
	mov	rbp, qword ptr [rsp + 0x18]
.label_1456:
	nop	
	mov	rax, qword ptr [rsp + 0x40]
	test	al, 1
	lea	rsi, [rsi]
	je	.label_1477
	mov	rcx, qword ptr [r13 + 8]
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 0x20]
	lea	rdi, [rdi]
	jmp	.label_1478
	nop	word ptr cs:[rax + rax]
.label_1487:
	mov	qword ptr [rcx + 0x38], rax
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
.label_1478:
	nop	
	test	rcx, rcx
	je	.label_1484
	mov	rdx, qword ptr [rcx + 0x30]
	mov	rbp, rbp
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_1487
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x30], rdx
	mov	rsp, rsp
	jmp	.label_1487
.label_1484:
	cmp	qword ptr [r15 + 0x58], 0
	mov	rsp, rsp
	js	.label_1477
	mov	rcx, r15
	nop	word ptr cs:[rax + rax]
.label_1502:
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	lea	rsi, [rsi]
	je	.label_1495
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x30], rdx
.label_1495:
	mov	qword ptr [rcx + 0x38], rax
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_1500
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + 8]
.label_1500:
	lea	rdi, [rdi]
	cmp	qword ptr [rdx + 0x58], 0
	mov	rbp, rbp
	mov	rcx, rdx
	jns	.label_1502
.label_1477:
	nop	
	mov	rax, qword ptr [rsp + 0x90]
	test	byte ptr [rax], 4
	mov	rbp, rbp
	je	.label_1504
	mov	rax, qword ptr [rsp + 0x28]
	mov	rcx, rax
	lea	rax, [rcx - 1]
	mov	rdx, qword ptr [rsp + 0x78]
	cmp	rdx, qword ptr [r13 + 0x30]
	cmove	rcx, rax
	mov	rsp, rsp
	test	rbp, rbp
	cmove	rcx, rax
	mov	byte ptr [rcx], 0
.label_1504:
	cmp	qword ptr [rsp + 0x38], 0
	jne	.label_1511
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x74]
	nop	
	test	al, al
	je	.label_1511
	cmp	dword ptr [rsp + 8], 1
	je	.label_1522
	mov	rsp, rsp
	test	rbp, rbp
	lea	rdi, [rdi]
	jne	.label_1511
.label_1522:
	cmp	qword ptr [r12 + 0x58], 0
	je	.label_1515
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r12 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_0
	nop	
	mov	rdi, r13
	call	fts_safe_changedir
	jmp	.label_1519
.label_1515:
	mov	rdi, r13
	lea	rdi, [rdi]
	call	restore_initial_cwd
.label_1519:
	test	eax, eax
	je	.label_1511
	lea	rdi, [rdi]
	mov	word ptr [r12 + 0x70], 7
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	or	byte ptr [rax + 1], 0x20
	nop	
	xor	ebx, ebx
	lea	rdi, [rdi]
	test	r15, r15
	je	.label_1462
	xor	ebx, ebx
.label_1459:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	mov	rbp, rbp
	test	rdi, rdi
	mov	rsp, rsp
	je	.label_1483
	call	closedir
.label_1483:
	lea	rdi, [rdi]
	mov	rdi, r15
	call	free
	mov	rsp, rsp
	test	rbp, rbp
	mov	r15, rbp
	jne	.label_1459
	mov	rbp, rbp
	jmp	.label_1462
.label_1511:
	test	rbp, rbp
	mov	rbp, rbp
	je	.label_1464
	mov	eax, dword ptr [rsp + 0xc]
	test	al, 1
	jne	.label_1460
	cmp	rbp, 2
	jb	.label_1469
	nop	
	mov	rax, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_1472
	mov	rbp, rbp
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	fts_sort
	mov	rbx, rax
	mov	rbp, rbp
	jmp	.label_1462
.label_1464:
	cmp	dword ptr [rsp + 8], 3
	jne	.label_1479
	lea	rdi, [rdi]
	movzx	eax, word ptr [r12 + 0x70]
	cmp	eax, 4
	lea	rsi, [rsi]
	je	.label_1479
	movzx	eax, ax
	cmp	eax, 7
	lea	rdi, [rdi]
	je	.label_1479
	mov	word ptr [r12 + 0x70], 6
.label_1479:
	xor	ebx, ebx
	test	r15, r15
	je	.label_1462
	nop	
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1496:
	nop	
	mov	rbp, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	nop	
	je	.label_1489
	mov	rbp, rbp
	call	closedir
.label_1489:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	test	rbp, rbp
	mov	rsp, rsp
	mov	r15, rbp
	jne	.label_1496
	mov	rsp, rsp
	jmp	.label_1462
.label_1460:
	lea	rdi, [rdi]
	mov	rdx, rbp
	mov	r14, qword ptr [rsp + 0x30]
	mov	qword ptr [word ptr [r14]], OFFSET FLAT:fts_compare_ino
	nop	
	mov	rdi, r13
	mov	rbp, rbp
	mov	rsi, r15
	lea	rsi, [rsi]
	call	fts_sort
	mov	rbx, rax
	mov	qword ptr [r14], 0
	jmp	.label_1462
.label_1469:
	mov	rbx, r15
	nop	
	jmp	.label_1462
.label_1472:
	nop	
	mov	rbx, r15
	jmp	.label_1462
.label_1447:
	mov	rdi, r12
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	test	r15, r15
	mov	rbp, rbp
	je	.label_1508
	nop	word ptr cs:[rax + rax]
.label_1513:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r15 + 0x10]
	nop	
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_1453
	call	closedir
.label_1453:
	nop	
	mov	rdi, r15
	call	free
	lea	rsi, [rsi]
	test	rbx, rbx
	nop	
	mov	r15, rbx
	mov	rsp, rsp
	jne	.label_1513
.label_1508:
	mov	rbx, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x18]
	call	closedir
	mov	qword ptr [rbx + 0x18], 0
	mov	rsp, rsp
	mov	word ptr [rbx + 0x70], 7
	mov	rax, qword ptr [rsp + 0x90]
	or	byte ptr [rax + 1], 0x20
	mov	rax, qword ptr [rsp + 0x80]
	mov	dword ptr [rax], 0x24
	lea	rdi, [rdi]
	xor	ebx, ebx
	jmp	.label_1462
.label_1510:
	mov	rdi, r13
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 0x20], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x80]
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x24
	jmp	.label_1448
.label_1512:
	mov	rdi, qword ptr [rbp + 0x20]
	call	free
	mov	rsp, rsp
	mov	qword ptr [rbp + 0x20], 0
.label_1448:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa0], r12
	mov	rbp, qword ptr [rsp + 0x90]
.label_1485:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x80]
	nop	
	mov	r14d, dword ptr [rax]
	mov	rdi, qword ptr [rsp + 0xa0]
	lea	rdi, [rdi]
	call	free
	test	r15, r15
	mov	r12, qword ptr [rsp + 0x68]
	mov	rsp, rsp
	je	.label_1473
	nop	word ptr cs:[rax + rax]
.label_1480:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 0x18]
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_1476
	lea	rdi, [rdi]
	call	closedir
.label_1476:
	mov	rdi, r15
	lea	rdi, [rdi]
	call	free
	test	rbx, rbx
	mov	rsp, rsp
	mov	r15, rbx
	jne	.label_1480
.label_1473:
	mov	rbp, rbp
	mov	rdi, qword ptr [r12 + 0x18]
	mov	rsp, rsp
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
	lea	rdi, [rdi]
	mov	word ptr [r12 + 0x70], 7
	lea	rdi, [rdi]
	or	byte ptr [rbp + 1], 0x20
	mov	rax, qword ptr [rsp + 0x80]
	mov	dword ptr [rax], r14d
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_1462:
	mov	rbp, rbp
	mov	rax, rbx
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416920

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rsi, [rsi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_1524
	nop	
	test	ah, 2
	lea	rsi, [rsi]
	jne	.label_1528
	mov	edi, dword ptr [rbx + 0x28]
	mov	rsp, rsp
	call	fchdir
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	setne	al
	jmp	.label_1529
.label_1524:
	xor	eax, eax
	jmp	.label_1529
.label_1528:
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbx + 0x2c]
	lea	rdi, [rbx + 0x60]
	mov	rbp, rbp
	call	i_ring_push
	test	eax, eax
	mov	rbp, rbp
	js	.label_1526
	mov	rsp, rsp
	mov	edi, eax
	lea	rdi, [rdi]
	call	close
.label_1526:
	nop	
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
	lea	rsi, [rsi]
	xor	eax, eax
.label_1529:
	mov	rsp, rsp
	movzx	ebp, al
	lea	rsi, [rsi]
	add	rbx, 0x60
	jmp	.label_1527
	nop	dword ptr [rax]
.label_1525:
	mov	edi, eax
	mov	rbp, rbp
	call	close
.label_1527:
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	i_ring_empty
	mov	rsp, rsp
	test	al, al
	nop	
	jne	.label_1530
	mov	rdi, rbx
	call	i_ring_pop
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jns	.label_1525
	lea	rsi, [rsi]
	jmp	.label_1527
.label_1530:
	mov	eax, ebp
	mov	rbp, rbp
	add	rsp, 8
	nop	
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4169f0

	.globl enter_dir
	.type enter_dir, @function
enter_dir:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	push	rbx
	lea	rsi, [rsi]
	push	rax
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rsp, rsp
	mov	rbp, rdi
	movzx	eax, word ptr [rbp + 0x48]
	test	ax, 0x102
	je	.label_1533
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	nop	
	je	.label_1535
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [r14 + 0x78]
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], r14
	nop	
	mov	rdi, qword ptr [rbp + 0x58]
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rsp, rsp
	call	hash_insert
	mov	r15, rax
	lea	rsi, [rsi]
	mov	bpl, 1
	cmp	r15, rbx
	mov	rsp, rsp
	je	.label_1531
	mov	rsp, rsp
	mov	rdi, rbx
	call	free
	nop	
	test	r15, r15
	je	.label_1532
	nop	
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [r14], rax
	jmp	.label_1534
.label_1533:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp + 0x58]
	mov	rsp, rsp
	lea	rsi, [r14 + 0x78]
	call	cycle_check
	nop	
	mov	bpl, 1
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	je	.label_1531
	lea	rsi, [rsi]
	mov	qword ptr [r14], r14
.label_1534:
	nop	
	mov	word ptr [r14 + 0x70], 2
	lea	rsi, [rsi]
	jmp	.label_1531
.label_1535:
	xor	ebp, ebp
	jmp	.label_1531
.label_1532:
	xor	ebp, ebp
.label_1531:
	nop	
	mov	al, bpl
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416ad0

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	mov	rsp, rsp
	cmp	edx, 5
	jb	.label_1536
	nop	
	push	rax
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	mov	rbp, rbp
	add	rsp, 8
	ret	
.label_1536:
	mov	rsp, rsp
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x416b00
	.globl rpl_fts_children
	.type rpl_fts_children, @function
rpl_fts_children:

	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rsp, rsp
	push	rax
	nop	
	mov	r12d, esi
	mov	rbp, rbp
	mov	r13, rdi
	nop	
	mov	eax, r12d
	or	eax, 0x1000
	cmp	eax, 0x1000
	lea	rsi, [rsi]
	jne	.label_1537
	mov	r15, qword ptr [r13]
	lea	rdi, [rdi]
	call	__errno_location
	mov	r14, rax
	lea	rdi, [rdi]
	mov	dword ptr [r14], 0
	mov	rsp, rsp
	xor	eax, eax
	nop	
	test	byte ptr [r13 + 0x49], 0x20
	jne	.label_1538
	movzx	ecx, word ptr [r15 + 0x70]
	mov	rbp, rbp
	xor	eax, eax
	cmp	ecx, 1
	je	.label_1547
	movzx	ecx, cx
	cmp	ecx, 9
	nop	
	jne	.label_1538
	mov	rax, qword ptr [r15 + 0x10]
	jmp	.label_1538
.label_1537:
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x16
	mov	rsp, rsp
	xor	eax, eax
	nop	
	jmp	.label_1538
.label_1547:
	mov	rbx, qword ptr [r13 + 8]
	test	rbx, rbx
	nop	
	je	.label_1549
	nop	word ptr cs:[rax + rax]
.label_1541:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_1551
	call	closedir
.label_1551:
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	test	rbp, rbp
	nop	
	mov	rbx, rbp
	jne	.label_1541
.label_1549:
	mov	ebx, 1
	lea	rsi, [rsi]
	cmp	r12d, 0x1000
	jne	.label_1546
	or	byte ptr [r13 + 0x49], 0x10
	mov	rsp, rsp
	mov	ebx, 2
.label_1546:
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x58], 0
	nop	
	jne	.label_1544
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x30]
	mov	rsp, rsp
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x2f
	je	.label_1544
	mov	eax, dword ptr [r13 + 0x48]
	test	al, 4
	lea	rdi, [rdi]
	jne	.label_1544
	mov	edx, eax
	and	edx, 0x10
	lea	rsi, [rsi]
	shl	edx, 0xd
	or	edx, 0x90900
	mov	rsp, rsp
	test	ah, 2
	jne	.label_1548
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str_2
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, edx
	mov	rbp, rbp
	call	open_safer
	jmp	.label_1542
.label_1544:
	mov	rdi, r13
	mov	esi, ebx
	mov	rbp, rbp
	call	fts_build
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 8], rax
.label_1538:
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_1548:
	mov	edi, dword ptr [r13 + 0x2c]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str_2
	xor	eax, eax
	call	openat_safer
.label_1542:
	mov	r15d, eax
	test	r15d, r15d
	mov	rbp, rbp
	js	.label_1553
	mov	rbp, rbp
	mov	rdi, r13
	mov	esi, ebx
	lea	rsi, [rsi]
	call	fts_build
	mov	rsp, rsp
	mov	qword ptr [r13 + 8], rax
	mov	rbp, rbp
	test	byte ptr [r13 + 0x49], 2
	jne	.label_1550
	nop	
	mov	edi, r15d
	call	fchdir
	test	eax, eax
	je	.label_1540
	lea	rdi, [rdi]
	mov	ebx, dword ptr [r14]
	mov	edi, r15d
	call	close
	mov	rsp, rsp
	mov	dword ptr [r14], ebx
	mov	rsp, rsp
	xor	eax, eax
	nop	
	jmp	.label_1538
.label_1553:
	lea	rdi, [rdi]
	mov	qword ptr [r13 + 8], 0
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_1538
.label_1550:
	mov	esi, dword ptr [r13 + 0x2c]
	mov	rbp, rbp
	cmp	esi, r15d
	mov	rsp, rsp
	jne	.label_1539
	lea	rsi, [rsi]
	cmp	esi, -0x64
	jne	.label_1543
.label_1539:
	lea	rdi, [r13 + 0x60]
	call	i_ring_push
	test	eax, eax
	mov	rbp, rbp
	js	.label_1545
	mov	edi, eax
	mov	rbp, rbp
	call	close
.label_1545:
	mov	dword ptr [r13 + 0x2c], r15d
	jmp	.label_1552
.label_1540:
	lea	rsi, [rsi]
	mov	edi, r15d
	call	close
.label_1552:
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 8]
	jmp	.label_1538
.label_1543:
	mov	rbp, rbp
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416d60

	.globl AD_hash
	.type AD_hash, @function
AD_hash:
	mov	rax, qword ptr [rdi + 8]
	mov	rbp, rbp
	xor	edx, edx
	div	rsi
	lea	rdi, [rdi]
	mov	rax, rdx
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416d80

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	mov	rbp, rbp
	jne	.label_1554
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	mov	rsp, rsp
	ret	
.label_1554:
	mov	rsp, rsp
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416db0

	.globl filesystem_type
	.type filesystem_type, @function
filesystem_type:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x88
	mov	r15d, esi
	mov	r13, rdi
	mov	rbx, qword ptr [r13 + 0x50]
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	test	byte ptr [rbx + 0x49], 2
	je	.label_1557
	mov	rbp, qword ptr [rbx + 0x50]
	mov	rbp, rbp
	test	rbp, rbp
	jne	.label_1556
	xor	r12d, r12d
	lea	rsi, [rsi]
	mov	edi, 0xd
	xor	esi, esi
	mov	edx, OFFSET FLAT:dev_type_hash
	mov	ecx, OFFSET FLAT:dev_type_compare
	mov	r8d, OFFSET FLAT:free
	lea	rdi, [rdi]
	call	hash_initialize
	mov	rsp, rsp
	mov	rbp, rax
	mov	qword ptr [rbx + 0x50], rbp
	test	rbp, rbp
	lea	rdi, [rdi]
	mov	r14d, 0
	mov	rbp, rbp
	je	.label_1559
.label_1556:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r13 + 0x78]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	lea	rsi, [rsp]
	mov	rdi, rbp
	mov	rsp, rsp
	call	hash_lookup
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1560
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	jmp	.label_1557
.label_1560:
	mov	r12b, 1
	mov	r14, rbp
.label_1559:
	xor	eax, eax
	nop	
	test	r15d, r15d
	js	.label_1557
	lea	rsi, [rsp + 0x10]
	mov	edi, r15d
	mov	rbp, rbp
	call	fstatfs
	mov	ecx, eax
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	test	ecx, ecx
	jne	.label_1557
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_1555
	mov	edi, 0x10
	lea	rsi, [rsi]
	call	malloc
	mov	rbp, rax
	nop	
	test	rbp, rbp
	je	.label_1555
	mov	rax, qword ptr [r13 + 0x78]
	lea	rsi, [rsi]
	mov	qword ptr [rbp], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbp + 8], rax
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1558
	nop	
	cmp	rax, rbp
	lea	rsi, [rsi]
	je	.label_1555
	lea	rdi, [rdi]
	call	abort
.label_1558:
	mov	rdi, rbp
	call	free
.label_1555:
	mov	rax, qword ptr [rsp + 0x10]
.label_1557:
	lea	rsi, [rsi]
	add	rsp, 0x88
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x416f20

	.globl dev_type_hash
	.type dev_type_hash, @function
dev_type_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	mov	rsp, rsp
	div	rsi
	mov	rsp, rsp
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416f40

	.globl dev_type_compare
	.type dev_type_compare, @function
dev_type_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	lea	rdi, [rdi]
	sete	al
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x416f50

	.globl fts_compare_ino
	.type fts_compare_ino, @function
fts_compare_ino:
	mov	rax, qword ptr [rdi]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x80]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsi]
	mov	rcx, qword ptr [rcx + 0x80]
	lea	rdi, [rdi]
	cmp	rcx, rax
	sbb	edx, edx
	lea	rdi, [rdi]
	and	edx, 1
	mov	rsp, rsp
	cmp	rax, rcx
	mov	eax, 0xffffffff
	lea	rdi, [rdi]
	cmovae	eax, edx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416f90

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
	je	.label_1561
	nop	
	cmp	r15, -2
	jb	.label_1561
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_1561
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_1561:
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
	#Procedure 0x417020

	.globl free_permission_context
	.type free_permission_context, @function
free_permission_context:
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417030

	.globl get_permissions
	.type get_permissions, @function
get_permissions:
	lea	rdi, [rdi]
	mov	dword ptr [rcx], edx
	mov	rsp, rsp
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417040
	.globl chmod_or_fchmod
	.type chmod_or_fchmod, @function
chmod_or_fchmod:

	cmp	esi, -1
	je	.label_1562
	lea	rdi, [rdi]
	mov	edi, esi
	nop	
	mov	esi, edx
	mov	rsp, rsp
	jmp	fchmod
.label_1562:
	mov	rbp, rbp
	mov	esi, edx
	mov	rbp, rbp
	jmp	chmod
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417070

	.globl set_permissions
	.type set_permissions, @function
set_permissions:
	nop	
	push	rax
	mov	rbp, rbp
	mov	rax, rsi
	mov	esi, dword ptr [rdi]
	nop	
	cmp	edx, -1
	mov	rsp, rsp
	je	.label_1563
	lea	rsi, [rsi]
	mov	edi, edx
	mov	rbp, rbp
	call	fchmod
	jmp	.label_1564
.label_1563:
	mov	rbp, rbp
	mov	rdi, rax
	call	chmod
.label_1564:
	neg	eax
	sbb	eax, eax
	lea	rdi, [rdi]
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4170b0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	jmp	usage
	.section	.text
	.align	16
	#Procedure 0x4170c0

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
	je	.label_1571
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
.label_1568:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	strncmp
	test	eax, eax
	jne	.label_1570
	mov	rdi, r15
	mov	rsp, rsp
	call	strlen
	mov	rbp, rbp
	cmp	rax, rbx
	lea	rsi, [rsi]
	je	.label_1565
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_1569
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	test	rax, rax
	je	.label_1567
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
	je	.label_1570
.label_1567:
	mov	rsp, rsp
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_1570
.label_1569:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rbp
	nop	dword ptr [rax + rax]
.label_1570:
	nop	
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	lea	rsi, [rsi]
	inc	rbp
	add	r14, r13
	test	r15, r15
	nop	
	jne	.label_1568
	lea	rsi, [rsi]
	jmp	.label_1566
.label_1571:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], -1
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x10], rax
.label_1566:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	mov	rsp, rsp
	cmove	rbp, qword ptr [rsp + 0x18]
.label_1565:
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
	#Procedure 0x417240
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
	je	.label_1572
	mov	esi, OFFSET FLAT:.str.1_14
	nop	
	jmp	.label_1573
.label_1572:
	nop	
	mov	esi, OFFSET FLAT:.str_17
.label_1573:
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
	#Procedure 0x4172e0

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
	mov	esi, OFFSET FLAT:.str.2_7
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
	je	.label_1576
	lea	rdi, [rdi]
	xor	r13d, r13d
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1579:
	test	r15, r15
	mov	rbp, rbp
	je	.label_1578
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	lea	rdi, [rdi]
	call	memcmp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1575
.label_1578:
	mov	r13,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.3_5
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_1574
	nop	dword ptr [rax]
.label_1575:
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
.label_1574:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	mov	rbx, qword ptr [rax + r15*8 + 8]
	inc	r15
	add	r12, r14
	lea	rsi, [rsi]
	test	rbx, rbx
	jne	.label_1579
.label_1576:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_1577
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
.label_1577:
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
	#Procedure 0x417460

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
	jns	.label_1581
	mov	qword ptr [rsp + 8], rbp
	mov	rbp, rbp
	xor	edi, edi
	cmp	rax, -1
	je	.label_1582
	mov	esi, OFFSET FLAT:.str.1_14
	mov	rsp, rsp
	jmp	.label_1580
.label_1582:
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_17
.label_1580:
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
.label_1581:
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
	#Procedure 0x417580
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
	je	.label_1583
	lea	rsi, [rsi]
	add	rbx, 8
	nop	dword ptr [rax]
.label_1584:
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
	je	.label_1583
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	mov	rbp, rbp
	test	r13, r13
	mov	eax, 0
	jne	.label_1584
.label_1583:
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
	#Procedure 0x417610

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
	jne	.label_1585
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_1586
	test	cl, cl
	mov	rsp, rsp
	jne	.label_1586
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_1586
.label_1585:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_1586
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_1586:
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
	#Procedure 0x4176a0

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4176c0

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	nop	
	cmp	dword ptr [rdi + 0x18], 0x95f616
	jne	.label_1587
	mov	rbp, rbp
	mov	rcx, qword ptr [rdi + 0x10]
	test	rcx, rcx
	je	.label_1589
	mov	rax, qword ptr [rsi + 8]
	cmp	rax, qword ptr [rdi]
	nop	
	jne	.label_1589
	mov	rsp, rsp
	mov	rdx, qword ptr [rsi]
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	je	.label_1590
.label_1589:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 1]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x10], rdx
	mov	rbp, rbp
	test	rdx, rcx
	jne	.label_1588
	mov	al, 1
	test	rdx, rdx
	lea	rsi, [rsi]
	je	.label_1590
	mov	rax, qword ptr [rsi]
	nop	
	mov	qword ptr [rdi + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi], rax
.label_1588:
	mov	rsp, rsp
	xor	eax, eax
.label_1590:
	ret	
.label_1587:
	push	rax
	mov	edi, OFFSET FLAT:.str_18
	mov	esi, OFFSET FLAT:.str.1_15
	mov	edx, 0x3c
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.cycle_check
	nop	
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417750

	.globl opendir_safer
	.type opendir_safer, @function
opendir_safer:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	push	r12
	push	rbx
	call	opendir
	mov	rsp, rsp
	mov	r14, rax
	lea	rdi, [rdi]
	xor	ebx, ebx
	nop	
	test	r14, r14
	mov	rbp, rbp
	je	.label_1592
	lea	rsi, [rsi]
	mov	rdi, r14
	call	dirfd
	mov	ecx, eax
	nop	
	cmp	ecx, 2
	mov	rbp, rbp
	ja	.label_1593
	lea	rsi, [rsi]
	mov	esi, 0x406
	lea	rdi, [rdi]
	mov	edx, 3
	xor	eax, eax
	mov	edi, ecx
	call	rpl_fcntl
	mov	rsp, rsp
	mov	ebp, eax
	test	ebp, ebp
	lea	rdi, [rdi]
	js	.label_1595
	mov	edi, ebp
	call	fdopendir
	lea	rsi, [rsi]
	mov	rbx, rax
	call	__errno_location
	mov	r15, rax
	mov	r12d, dword ptr [r15]
	mov	rbp, rbp
	test	rbx, rbx
	lea	rsi, [rsi]
	jne	.label_1594
	mov	edi, ebp
	call	close
	jmp	.label_1591
.label_1593:
	lea	rdi, [rdi]
	mov	rbx, r14
	jmp	.label_1592
.label_1595:
	call	__errno_location
	mov	r15, rax
	mov	r12d, dword ptr [r15]
.label_1591:
	xor	ebx, ebx
.label_1594:
	mov	rdi, r14
	nop	
	call	closedir
	lea	rdi, [rdi]
	mov	dword ptr [r15], r12d
.label_1592:
	nop	
	mov	rax, rbx
	nop	
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x417820

	.globl gettime
	.type gettime, @function
gettime:
	mov	rsp, rsp
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	clock_gettime
	.section	.text
	.align	16
	#Procedure 0x417830
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	lea	rsi, [rsi]
	sub	rsp, 0x18
	lea	rsi, [rsi]
	lea	rsi, [rsp + 8]
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	call	clock_gettime
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x10]
	add	rsp, 0x18
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x417860

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
	je	.label_1597
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_1596
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_1598
.label_1596:
	nop	
	mov	esi, OFFSET FLAT:.str.1_16
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_1597
.label_1598:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_1597:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4178b0

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	lea	rsi, [rsi]
	mov	cl, byte ptr [rdi]
	xor	eax, eax
	test	cl, cl
	je	.label_1599
	mov	rbp, rbp
	inc	rdi
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1600:
	movsx	rcx, cl
	rol	rax, 9
	add	rax, rcx
	lea	rdi, [rdi]
	mov	cl, byte ptr [rdi]
	mov	rbp, rbp
	inc	rdi
	test	cl, cl
	mov	rsp, rsp
	jne	.label_1600
.label_1599:
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417900

	.globl i_ring_init
	.type i_ring_init, @function
i_ring_init:
	mov	rsp, rsp
	mov	byte ptr [rdi + 0x1c], 1
	lea	rdi, [rdi]
	mov	dword ptr [rdi + 0x14], 0
	mov	dword ptr [rdi + 0x18], 0
	lea	rdi, [rdi]
	movd	xmm0, esi
	lea	rsi, [rsi]
	pshufd	xmm0, xmm0, 0
	movdqu	xmmword ptr [rdi], xmm0
	mov	rbp, rbp
	mov	dword ptr [rdi + 0x10], esi
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417940

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417950

	.globl i_ring_push
	.type i_ring_push, @function
i_ring_push:
	movzx	ecx, byte ptr [rdi + 0x1c]
	lea	rsi, [rsi]
	xor	ecx, 1
	add	ecx, dword ptr [rdi + 0x14]
	mov	edx, ecx
	and	edx, 3
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], esi
	mov	dword ptr [rdi + 0x14], edx
	mov	rbp, rbp
	cmp	edx, dword ptr [rdi + 0x18]
	jne	.label_1601
	lea	rsi, [rsi]
	mov	dl, byte ptr [rdi + 0x1c]
	mov	rbp, rbp
	xor	dl, 1
	movzx	edx, dl
	mov	rbp, rbp
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_1601:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4179a0

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	nop	
	cmp	byte ptr [rdi + 0x1c], 0
	lea	rdi, [rdi]
	jne	.label_1602
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rdi + 0x10]
	mov	rbp, rbp
	mov	edx, dword ptr [rdi + 0x14]
	mov	rbp, rbp
	mov	eax, dword ptr [rdi + rdx*4]
	mov	rbp, rbp
	mov	dword ptr [rdi + rdx*4], ecx
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rdi + 0x14]
	lea	rsi, [rsi]
	cmp	ecx, dword ptr [rdi + 0x18]
	mov	rsp, rsp
	jne	.label_1603
	lea	rsi, [rsi]
	mov	byte ptr [rdi + 0x1c], 1
	lea	rdi, [rdi]
	ret	
.label_1603:
	add	ecx, 3
	and	ecx, 3
	lea	rsi, [rsi]
	mov	dword ptr [rdi + 0x14], ecx
	ret	
.label_1602:
	push	rax
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417a00

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
	mov	eax, OFFSET FLAT:.str.1_17
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_1604
	nop	
	mov	rax, rcx
.label_1604:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417a40

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	nop	
	sub	rsp, 0xd8
	nop	
	test	al, al
	lea	rdi, [rdi]
	je	.label_1605
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x70], xmm2
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x80], xmm3
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x90], xmm4
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1605:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	dl, 0x40
	je	.label_1607
	lea	rdi, [rdi]
	lea	rax, [rsp + 0x20]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp], 0x18
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1608
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	mov	rbp, rbp
	mov	dword ptr [rsp], ecx
	jmp	.label_1606
.label_1608:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rcx
.label_1606:
	mov	ecx, dword ptr [rax]
.label_1607:
	xor	eax, eax
	call	openat
	lea	rsi, [rsi]
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417b40
	.globl randint_new
	.type randint_new, @function
randint_new:

	push	rbx
	mov	rbp, rbp
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	edi, 0x18
	nop	
	call	xmalloc
	nop	
	mov	qword ptr [rax], rbx
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 8], xmm0
	mov	rbp, rbp
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417b70

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	lea	rsi, [rsi]
	push	rbx
	call	randread_new
	mov	rbx, rax
	xor	eax, eax
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_1609
	mov	rsp, rsp
	mov	edi, 0x18
	call	xmalloc
	mov	qword ptr [rax], rbx
	mov	rsp, rsp
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [rax + 8], xmm0
.label_1609:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417bb0
	.globl randint_get_source
	.type randint_get_source, @function
randint_get_source:

	nop
	mov	rax, qword ptr [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417bc0

	.globl randint_genmax
	.type randint_genmax, @function
randint_genmax:
	nop	
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	r13
	push	r12
	nop	
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x18
	lea	rsi, [rsi]
	mov	r13, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rdi
	mov	r15, qword ptr [rdi]
	mov	rbx, qword ptr [rdi + 8]
	mov	rbp, rbp
	lea	rax, [rdi + 8]
	mov	qword ptr [rsp], rax
	nop	
	mov	r14, qword ptr [rdi + 0x10]
	lea	rbp, [r13 + 1]
	mov	rsp, rsp
	lea	r12, [rsp + 0x10]
	nop	word ptr [rax + rax]
.label_1615:
	nop	
	cmp	r14, r13
	jae	.label_1614
	mov	rax, r14
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_1610:
	lea	rsi, [rsi]
	shl	rax, 8
	or	rax, 0xff
	mov	rbp, rbp
	inc	rdx
	lea	rdi, [rdi]
	cmp	rax, r13
	lea	rdi, [rdi]
	jb	.label_1610
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, r12
	call	randread
	mov	rbp, rbp
	mov	rax, r12
	nop	word ptr cs:[rax + rax]
.label_1612:
	mov	rcx, rbx
	mov	rsp, rsp
	shl	rcx, 8
	mov	rsp, rsp
	movzx	ebx, byte ptr [rax]
	or	rbx, rcx
	shl	r14, 8
	or	r14, 0xff
	nop	
	inc	rax
	nop	
	cmp	r14, r13
	jb	.label_1612
.label_1614:
	mov	rcx, rbx
	mov	rsi, r14
	sub	rsi, r13
	lea	rdi, [rdi]
	je	.label_1611
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rax, rsi
	div	rbp
	nop	
	mov	rdi, rdx
	mov	rsp, rsp
	sub	r14, rdi
	nop	
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, rcx
	div	rbp
	lea	rsi, [rsi]
	mov	rbx, rdx
	mov	rbp, rbp
	dec	rdi
	cmp	rcx, r14
	mov	r14, rdi
	ja	.label_1615
	xor	edx, edx
	mov	rax, rcx
	div	rbp
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	xor	edx, edx
	mov	rax, rsi
	div	rbp
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, rbx
	jmp	.label_1613
.label_1611:
	mov	rsp, rsp
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rsp]
	movups	xmmword ptr [rax], xmm0
.label_1613:
	mov	rax, rcx
	mov	rbp, rbp
	add	rsp, 0x18
	mov	rbp, rbp
	pop	rbx
	nop	
	pop	r12
	nop	
	pop	r13
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417d30
	.globl randint_free
	.type randint_free, @function
randint_free:

	push	rbx
	mov	rbx, rdi
	mov	esi, 0x18
	call	explicit_bzero
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417d50

	.globl randint_all_free
	.type randint_all_free, @function
randint_all_free:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	randread_free
	lea	rsi, [rsi]
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	esi, 0x18
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	explicit_bzero
	mov	rbp, rbp
	mov	rdi, rbx
	call	free
	mov	rbp, rbp
	mov	dword ptr [rbp], r15d
	mov	rsp, rsp
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417db0

	.globl randread_new
	.type randread_new, @function
randread_new:
	mov	rbp, rbp
	push	r15
	nop	
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	r12, rsi
	mov	r14, rdi
	lea	rsi, [rsi]
	test	r12, r12
	mov	rsp, rsp
	je	.label_1619
	nop	
	xor	ebx, ebx
	test	r14, r14
	je	.label_1620
	mov	esi, OFFSET FLAT:.str_19
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	call	fopen_safer
	lea	rdi, [rdi]
	mov	rbx, rax
	nop	
	xor	r15d, r15d
	lea	rsi, [rsi]
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_1621
.label_1620:
	nop	
	mov	edi, 0x1038
	call	xmalloc
	mov	r15, rax
	lea	rdi, [rdi]
	mov	qword ptr [r15], rbx
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [r15 + 8]], OFFSET FLAT:randread_error
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x10], r14
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_1618
	mov	rsi, r15
	add	rsi, 0x18
	cmp	r12, 0x1000
	mov	ecx, 0x1000
	cmovbe	rcx, r12
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	rdi, rbx
	call	setvbuf
	mov	rsp, rsp
	jmp	.label_1621
.label_1619:
	mov	edi, 0x1038
	mov	rbp, rbp
	call	xmalloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rbp, rbp
	mov	qword ptr [r15], 0
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [r15 + 8]], OFFSET FLAT:randread_error
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x10], 0
	jmp	.label_1621
.label_1618:
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x18], 0
	mov	r14, r15
	add	r14, 0x20
	mov	rsp, rsp
	xor	r13d, r13d
	mov	edi, OFFSET FLAT:.str.3_6
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	call	open
	mov	rbp, rbp
	mov	ebx, eax
	test	ebx, ebx
	js	.label_1617
	lea	rdi, [rdi]
	cmp	r12, 0x800
	mov	edx, 0x800
	mov	rsp, rsp
	cmovbe	rdx, r12
	mov	edi, ebx
	mov	rsi, r14
	call	read
	nop	
	mov	r12, rax
	mov	rbp, rbp
	mov	edi, ebx
	nop	
	call	close
	lea	rsi, [rsi]
	xor	r13d, r13d
	test	r12, r12
	js	.label_1617
	lea	rsi, [rsi]
	cmp	r12, 0x7ff
	lea	rsi, [rsi]
	mov	r13, r12
	ja	.label_1616
.label_1617:
	mov	eax, 0x800
	lea	rsi, [rsi]
	sub	rax, r13
	cmp	rax, 0x10
	mov	ebx, 0x10
	mov	rbp, rbp
	cmovbe	rbx, rax
	lea	rsi, [rsi]
	lea	r12, [rsp]
	xor	esi, esi
	mov	rdi, r12
	lea	rdi, [rdi]
	call	gettimeofday
	mov	rsp, rsp
	lea	rdi, [r14 + r13]
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	memcpy
	add	rbx, r13
	cmp	rbx, 0x7ff
	ja	.label_1616
	mov	eax, 0x800
	mov	rsp, rsp
	sub	rax, rbx
	mov	rsp, rsp
	cmp	rax, 4
	lea	rdi, [rdi]
	mov	r12d, 4
	lea	rdi, [rdi]
	cmovbe	r12, rax
	nop	
	call	getpid
	mov	rbp, rbp
	mov	dword ptr [rsp], eax
	nop	
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsi]
	lea	rsi, [rsp]
	mov	rdx, r12
	mov	rbp, rbp
	call	memcpy
	mov	rbp, rbp
	add	r12, rbx
	lea	rsi, [rsi]
	cmp	r12, 0x7ff
	mov	rsp, rsp
	ja	.label_1616
	mov	eax, 0x800
	mov	rbp, rbp
	sub	rax, r12
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getppid
	mov	dword ptr [rsp], eax
	mov	rsp, rsp
	lea	rdi, [r14 + r12]
	nop	
	lea	rsi, [rsp]
	mov	rdx, rbx
	call	memcpy
	mov	rbp, rbp
	add	rbx, r12
	cmp	rbx, 0x7ff
	ja	.label_1616
	mov	eax, 0x800
	nop	
	sub	rax, rbx
	cmp	rax, 4
	lea	rdi, [rdi]
	mov	r12d, 4
	lea	rsi, [rsi]
	cmovbe	r12, rax
	call	getuid
	mov	dword ptr [rsp], eax
	mov	rsp, rsp
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp]
	nop	
	mov	rdx, r12
	mov	rbp, rbp
	call	memcpy
	add	r12, rbx
	nop	
	cmp	r12, 0x7ff
	lea	rdi, [rdi]
	ja	.label_1616
	mov	rbp, rbp
	mov	eax, 0x800
	lea	rsi, [rsi]
	sub	rax, r12
	nop	
	cmp	rax, 4
	mov	rbp, rbp
	mov	ebx, 4
	cmovbe	rbx, rax
	mov	rbp, rbp
	call	getgid
	mov	rsp, rsp
	mov	dword ptr [rsp], eax
	mov	rbp, rbp
	add	r12, r14
	lea	rdi, [rdi]
	lea	rsi, [rsp]
	mov	rdi, r12
	mov	rsp, rsp
	mov	rdx, rbx
	call	memcpy
.label_1616:
	mov	rdi, r14
	nop	
	call	isaac_seed
.label_1621:
	mov	rax, r15
	add	rsp, 0x10
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4180e0
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	rsp, rsp
	mov	qword ptr [rdi + 8], rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4180f0
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	mov	qword ptr [rdi + 0x10], rsi
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x418100

	.globl randread
	.type randread, @function
randread:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	push	r15
	nop	
	push	r14
	push	r13
	nop	
	push	r12
	nop	
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rbp, rbp
	mov	rbx, rdx
	mov	rbp, rbp
	mov	r15, rsi
	nop	
	mov	r14, rdi
	mov	rcx, qword ptr [r14]
	mov	rsp, rsp
	test	rcx, rcx
	nop	
	je	.label_1622
	mov	esi, 1
	mov	rdi, r15
	mov	rdx, rbx
	mov	rbp, rbp
	call	fread_unlocked
	mov	rbp, rax
	nop	
	call	__errno_location
	mov	r12, rax
	nop	
	cmp	rbp, rbx
	mov	rsp, rsp
	je	.label_1624
	nop	
.label_1626:
	lea	rdi, [rdi]
	sub	rbx, rbp
	add	r15, rbp
	mov	rax, qword ptr [r14]
	mov	eax, dword ptr [rax]
	and	eax, 0x20
	mov	rbp, rbp
	cmovne	eax, dword ptr [r12]
	mov	dword ptr [r12], eax
	mov	rdi, qword ptr [r14 + 0x10]
	call	qword ptr [r14 + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [r14]
	mov	rsp, rsp
	mov	esi, 1
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rdx, rbx
	call	fread_unlocked
	mov	rbp, rax
	cmp	rbx, rbp
	jne	.label_1626
	mov	rsp, rsp
	jmp	.label_1624
.label_1622:
	mov	r12, qword ptr [r14 + 0x18]
	mov	rsp, rsp
	lea	r13, [r14 + 0x838]
	mov	rsi, r13
	sub	rsi, r12
	add	rsi, 0x800
	lea	rsi, [rsi]
	cmp	r12, rbx
	nop	
	jae	.label_1628
	lea	rbp, [r14 + 0x20]
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rdx, r12
	lea	rdi, [rdi]
	call	memcpy
	add	r15, r12
	lea	rsi, [rsi]
	sub	rbx, r12
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1625:
	nop	
	cmp	rbx, 0x800
	jb	.label_1623
	mov	rdi, rbp
	mov	rsi, r15
	call	isaac_refill
	add	r15, 0x800
	mov	rbp, rbp
	add	rbx, -0x800
	jne	.label_1625
	mov	rbp, rbp
	jmp	.label_1627
.label_1623:
	mov	rdi, rbp
	mov	rsi, r13
	mov	rsp, rsp
	call	isaac_refill
	lea	rdi, [rdi]
	mov	r12d, 0x800
	mov	rsi, r13
.label_1628:
	mov	rdi, r15
	mov	rdx, rbx
	call	memcpy
	sub	r12, rbx
.label_1627:
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x18], r12
.label_1624:
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x418280

	.globl randread_free
	.type randread_free, @function
randread_free:
	mov	rsp, rsp
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	esi, 0x1038
	nop	
	call	explicit_bzero
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	free
	mov	rbp, rbp
	test	r14, r14
	je	.label_1629
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r14
	jmp	rpl_fclose
.label_1629:
	xor	eax, eax
	nop	
	add	rsp, 8
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r14
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4182d0

	.globl randread_error
	.type randread_error, @function
randread_error:
	mov	rsp, rsp
	push	rbp
	nop	
	push	r15
	nop	
	push	r14
	push	rbx
	push	rax
	nop	
	mov	rbx, rdi
	test	rbx, rbx
	nop	
	je	.label_1630
	mov	rsp, rsp
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	lea	rsi, [rsi]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	lea	rdi, [rdi]
	jne	.label_1632
	mov	esi, OFFSET FLAT:.str.1_18
	jmp	.label_1631
.label_1632:
	mov	esi, OFFSET FLAT:.str.2_8
.label_1631:
	mov	rsp, rsp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	nop	
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, r14d
	mov	esi, r15d
	lea	rsi, [rsi]
	mov	rdx, rbp
	mov	rbp, rbp
	call	error
.label_1630:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x418360

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	mov	rax, qword ptr [rdi + 0x800]
	mov	rdx, qword ptr [rdi + 0x810]
	inc	rdx
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 0x808]
	mov	rbp, rbp
	add	rcx, rdx
	mov	qword ptr [rdi + 0x810], rdx
	nop	
	lea	r9, [rdi + 0x400]
	mov	rsp, rsp
	mov	r8, rsi
	mov	r10, rdi
	nop	dword ptr [rax]
.label_1633:
	mov	r11, rax
	lea	rdi, [rdi]
	shl	r11, 0x15
	mov	rbp, rbp
	xor	r11, rax
	not	r11
	add	r11, qword ptr [r10 + 0x400]
	mov	rdx, qword ptr [r10]
	nop	
	mov	eax, edx
	and	eax, 0x7f8
	add	rcx, qword ptr [rdi + rax]
	lea	rsi, [rsi]
	add	rcx, r11
	mov	qword ptr [r10], rcx
	lea	rsi, [rsi]
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	qword ptr [r8], rdx
	mov	rax, r11
	shr	rax, 5
	xor	rax, r11
	nop	
	add	rax, qword ptr [r10 + 0x408]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r10 + 8]
	lea	rdi, [rdi]
	mov	r11d, ecx
	lea	rdi, [rdi]
	and	r11d, 0x7f8
	add	rdx, rax
	lea	rsi, [rsi]
	add	rdx, qword ptr [rdi + r11]
	mov	rbp, rbp
	mov	qword ptr [r10 + 8], rdx
	mov	rsp, rsp
	shr	rdx, 8
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [r8 + 8], rcx
	mov	rsp, rsp
	mov	r11, rax
	shl	r11, 0xc
	xor	r11, rax
	lea	rdi, [rdi]
	add	r11, qword ptr [r10 + 0x410]
	mov	rdx, qword ptr [r10 + 0x10]
	mov	rsp, rsp
	mov	eax, edx
	lea	rdi, [rdi]
	and	eax, 0x7f8
	lea	rdi, [rdi]
	add	rcx, r11
	nop	
	add	rcx, qword ptr [rdi + rax]
	nop	
	mov	qword ptr [r10 + 0x10], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x10], rdx
	mov	rax, r11
	shr	rax, 0x21
	mov	rbp, rbp
	xor	rax, r11
	add	rax, qword ptr [r10 + 0x418]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r10 + 0x18]
	lea	rsi, [rsi]
	mov	r11d, ecx
	and	r11d, 0x7f8
	lea	rsi, [rsi]
	add	rdx, rax
	add	rdx, qword ptr [rdi + r11]
	lea	rsi, [rsi]
	mov	qword ptr [r10 + 0x18], rdx
	shr	rdx, 8
	mov	rbp, rbp
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [r8 + 0x18], rcx
	add	r10, 0x20
	add	r8, 0x20
	mov	rbp, rbp
	cmp	r10, r9
	jb	.label_1633
	add	rsi, 0x400
	lea	r8, [rdi + 0x800]
	nop	word ptr cs:[rax + rax]
.label_1634:
	mov	r10, rax
	shl	r10, 0x15
	xor	r10, rax
	not	r10
	add	r10, qword ptr [r9 - 0x400]
	mov	rsp, rsp
	mov	rdx, qword ptr [r9]
	mov	rbp, rbp
	mov	eax, edx
	and	eax, 0x7f8
	add	rcx, qword ptr [rdi + rax]
	add	rcx, r10
	mov	rsp, rsp
	mov	qword ptr [r9], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	nop	
	add	rdx, qword ptr [rdi + rcx]
	mov	rbp, rbp
	mov	qword ptr [rsi], rdx
	mov	rax, r10
	nop	
	shr	rax, 5
	lea	rsi, [rsi]
	xor	rax, r10
	add	rax, qword ptr [r9 - 0x3f8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r9 + 8]
	mov	r10d, ecx
	and	r10d, 0x7f8
	nop	
	add	rdx, rax
	add	rdx, qword ptr [rdi + r10]
	mov	qword ptr [r9 + 8], rdx
	shr	rdx, 8
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 8], rcx
	mov	r10, rax
	shl	r10, 0xc
	nop	
	xor	r10, rax
	nop	
	add	r10, qword ptr [r9 - 0x3f0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r9 + 0x10]
	mov	eax, edx
	lea	rsi, [rsi]
	and	eax, 0x7f8
	add	rcx, r10
	lea	rdi, [rdi]
	add	rcx, qword ptr [rdi + rax]
	mov	qword ptr [r9 + 0x10], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	qword ptr [rsi + 0x10], rdx
	nop	
	mov	rax, r10
	nop	
	shr	rax, 0x21
	xor	rax, r10
	nop	
	add	rax, qword ptr [r9 - 0x3e8]
	mov	rcx, qword ptr [r9 + 0x18]
	mov	r10d, ecx
	mov	rsp, rsp
	and	r10d, 0x7f8
	mov	rbp, rbp
	add	rdx, rax
	add	rdx, qword ptr [rdi + r10]
	mov	qword ptr [r9 + 0x18], rdx
	shr	rdx, 8
	mov	rsp, rsp
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [rsi + 0x18], rcx
	add	r9, 0x20
	add	rsi, 0x20
	cmp	r9, r8
	nop	
	jb	.label_1634
	mov	qword ptr [rdi + 0x800], rax
	mov	qword ptr [rdi + 0x808], rcx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x418640

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	mov	rsp, rsp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rsp, rsp
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	movabs	rdx, 0x647c4677a2884b7c
	nop	
	movabs	r8, 0xb9f8b322c73ac862
	mov	rbp, rbp
	movabs	rsi, 0x8c0ea5053d4712a0
	movabs	rcx, 0xb29b2e824a595524
	movabs	rax, 0x82f053db8355e0ce
	movabs	r11, 0x48fe4a0fa5a09315
	mov	rbp, rbp
	movabs	r10, 0xae985bf2cbfc89ed
	movabs	r9, 0x98f5704f6c44c0ab
	lea	rdi, [rdi]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1635:
	mov	rbp, rbp
	add	rdx, qword ptr [rdi + rbx*8]
	add	r8, qword ptr [rdi + rbx*8 + 8]
	mov	rbp, rbp
	add	rsi, qword ptr [rdi + rbx*8 + 0x10]
	add	rcx, qword ptr [rdi + rbx*8 + 0x18]
	add	rax, qword ptr [rdi + rbx*8 + 0x20]
	lea	rdi, [rdi]
	add	r11, qword ptr [rdi + rbx*8 + 0x28]
	mov	rbp, rbp
	add	r10, qword ptr [rdi + rbx*8 + 0x30]
	lea	rsi, [rsi]
	add	r9, qword ptr [rdi + rbx*8 + 0x38]
	mov	rbp, rbp
	sub	rdx, rax
	lea	rsi, [rsi]
	mov	r14, r9
	shr	r14, 9
	xor	r14, r11
	add	r9, rdx
	sub	r8, r14
	lea	r11, [r8 + rdx]
	mov	rbp, rbp
	shl	rdx, 9
	mov	r15, rdx
	nop	
	xor	r15, r10
	sub	rsi, r15
	lea	rdi, [rdi]
	mov	r10, r8
	nop	
	shr	r8, 0x17
	nop	
	xor	r9, r8
	add	r10, rsi
	sub	rcx, r9
	mov	rbp, rbp
	lea	r12, [rcx + rsi]
	lea	rsi, [rsi]
	shl	rsi, 0xf
	mov	rdx, rsi
	nop	
	xor	rdx, r11
	sub	rax, rdx
	mov	r8, rcx
	shr	r8, 0xe
	mov	rsp, rsp
	xor	r8, r10
	mov	r10, rcx
	nop	
	add	r10, rax
	mov	rbp, rbp
	sub	r14, r8
	nop	
	lea	r13, [r14 + rax]
	shl	rax, 0x14
	mov	rsi, rax
	mov	rsp, rsp
	xor	rsi, r12
	sub	r15, rsi
	mov	rcx, r14
	shr	rcx, 0x11
	mov	rsp, rsp
	xor	rcx, r10
	mov	rbp, rbp
	mov	r11, r14
	mov	rbp, rbp
	add	r11, r15
	mov	rbp, rbp
	sub	r9, rcx
	lea	r10, [r9 + r15]
	lea	rdi, [rdi]
	shl	r15, 0xe
	mov	rsp, rsp
	mov	rax, r15
	xor	rax, r13
	mov	rsp, rsp
	mov	qword ptr [rdi + rbx*8], rdx
	mov	qword ptr [rdi + rbx*8 + 8], r8
	lea	rsi, [rsi]
	mov	qword ptr [rdi + rbx*8 + 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rdi + rbx*8 + 0x18], rcx
	mov	rbp, rbp
	mov	qword ptr [rdi + rbx*8 + 0x20], rax
	mov	qword ptr [rdi + rbx*8 + 0x28], r11
	mov	qword ptr [rdi + rbx*8 + 0x30], r10
	nop	
	mov	qword ptr [rdi + rbx*8 + 0x38], r9
	nop	
	add	rbx, 8
	cmp	rbx, 0x100
	lea	rdi, [rdi]
	jl	.label_1635
	xor	ebx, ebx
	nop	
.label_1636:
	mov	rsp, rsp
	add	rdx, qword ptr [rdi + rbx*8]
	add	r8, qword ptr [rdi + rbx*8 + 8]
	lea	rdi, [rdi]
	add	rsi, qword ptr [rdi + rbx*8 + 0x10]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdi + rbx*8 + 0x18]
	mov	rbp, rbp
	add	rax, qword ptr [rdi + rbx*8 + 0x20]
	lea	rsi, [rsi]
	add	r11, qword ptr [rdi + rbx*8 + 0x28]
	mov	rbp, rbp
	add	r10, qword ptr [rdi + rbx*8 + 0x30]
	nop	
	add	r9, qword ptr [rdi + rbx*8 + 0x38]
	lea	rsi, [rsi]
	sub	rdx, rax
	mov	rsp, rsp
	mov	r14, r9
	shr	r14, 9
	mov	rbp, rbp
	xor	r14, r11
	mov	rbp, rbp
	add	r9, rdx
	lea	rdi, [rdi]
	sub	r8, r14
	lea	rsi, [rsi]
	lea	r12, [r8 + rdx]
	shl	rdx, 9
	xor	rdx, r10
	lea	rdi, [rdi]
	sub	rsi, rdx
	mov	r11, r8
	shr	r11, 0x17
	xor	r11, r9
	mov	rsp, rsp
	add	r8, rsi
	sub	rcx, r11
	mov	rbp, rbp
	lea	r9, [rcx + rsi]
	lea	rdi, [rdi]
	shl	rsi, 0xf
	mov	rsp, rsp
	mov	r15, rsi
	xor	r15, r12
	sub	rax, r15
	lea	rsi, [rsi]
	mov	rsi, rcx
	shr	rsi, 0xe
	xor	r8, rsi
	add	rcx, rax
	sub	r14, r8
	lea	r12, [r14 + rax]
	lea	rsi, [rsi]
	shl	rax, 0x14
	mov	rsi, rax
	xor	rsi, r9
	lea	rdi, [rdi]
	sub	rdx, rsi
	mov	rax, r14
	shr	rax, 0x11
	nop	
	xor	rcx, rax
	add	r14, rdx
	sub	r11, rcx
	mov	rsp, rsp
	lea	r10, [r11 + rdx]
	shl	rdx, 0xe
	mov	rbp, rbp
	xor	rdx, r12
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rbx*8], r15
	mov	qword ptr [rdi + rbx*8 + 8], r8
	mov	qword ptr [rdi + rbx*8 + 0x10], rsi
	mov	qword ptr [rdi + rbx*8 + 0x18], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rbx*8 + 0x20], rdx
	mov	qword ptr [rdi + rbx*8 + 0x28], r14
	mov	qword ptr [rdi + rbx*8 + 0x30], r10
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rbx*8 + 0x38], r11
	add	rbx, 8
	cmp	rbx, 0x100
	mov	r9, r11
	mov	r11, r14
	mov	rax, rdx
	mov	rdx, r15
	jl	.label_1636
	mov	rsp, rsp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x800], xmm0
	mov	qword ptr [rdi + 0x810], 0
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x418970

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
	.section	.text
	.align	16
	#Procedure 0x418990

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	mov	rax, rsi
	xor	esi, esi
	mov	rdx, rax
	lea	rdi, [rdi]
	jmp	memset
	.section	.text
	.align	16
	#Procedure 0x4189a0

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
	js	.label_1637
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_1639
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
	je	.label_1637
.label_1639:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1637
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_1638
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_1638:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_1637:
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
	#Procedure 0x418a50

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
	je	.label_1657
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
.label_1657:
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
	ja	.label_1650
	lea	rsi, [rsi]
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_1643
	mov	eax, 0x514
	mov	rsp, rsp
	bt	eax, esi
	lea	rdi, [rdi]
	jb	.label_1640
	mov	rsp, rsp
	test	esi, esi
	jne	.label_1650
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	lea	rsi, [rsi]
	ja	.label_1652
	lea	rdi, [rdi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1656
.label_1650:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_1645
	mov	ecx, 0x85
	mov	rbp, rbp
	bt	ecx, eax
	lea	rsi, [rsi]
	jb	.label_1640
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_1646
.label_1643:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_1648
.label_1640:
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rsp, rsp
	cmp	rcx, 0x28
	nop	
	ja	.label_1649
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1653
.label_1649:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1653:
	mov	edx, dword ptr [rax]
.label_1660:
	nop	
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
.label_1648:
	mov	ebp, eax
.label_1642:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_1646:
	lea	rsi, [rsi]
	cmp	eax, 6
	jne	.label_1645
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_1647
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1641
.label_1645:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_1655
	mov	rax, rcx
	lea	rsi, [rsi]
	add	rax, qword ptr [rsp + 0xc0]
	nop	
	lea	ecx, [rcx + 8]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_1658
.label_1652:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1656:
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax]
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_1660
.label_1647:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1641:
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_1651
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
	jns	.label_1659
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1659
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
	js	.label_1642
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	rsp, rsp
	mov	al, 1
	jmp	.label_1644
.label_1659:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_1642
.label_1655:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_1658:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	nop	
	mov	edi, ebx
	lea	rdi, [rdi]
	call	fcntl
	nop	
	jmp	.label_1648
.label_1651:
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
.label_1644:
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	je	.label_1642
	test	ebp, ebp
	lea	rsi, [rsi]
	js	.label_1642
	mov	esi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1654
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
	jne	.label_1642
.label_1654:
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
	jmp	.label_1642
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x418e20

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
	.section .text
	.align	16
	#Procedure 0x418e40

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	lea	rdi, [rdi]
	push	rbp
	push	r14
	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rsp, rsp
	call	fopen
	lea	rsi, [rsi]
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_1663
	mov	rsp, rsp
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_1664
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	call	dup_safer
	mov	rsp, rsp
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1661
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fclose
	mov	rbp, rbp
	test	eax, eax
	jne	.label_1665
	mov	rsp, rsp
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, r14
	call	fdopen
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_1663
.label_1665:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	lea	rdi, [rdi]
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbx], r14d
	mov	rbp, rbp
	jmp	.label_1662
.label_1664:
	mov	rax, rbx
	mov	rsp, rsp
	jmp	.label_1663
.label_1661:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_1662:
	xor	eax, eax
.label_1663:
	mov	rbp, rbp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]