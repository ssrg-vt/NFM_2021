	.section	.text
	.align	32
	#Procedure 0x401a80

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rbp
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_7
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	mov	rsp, rsp
	xor	eax, eax
	mov	rsi, rcx
	nop	
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.4
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.9
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.12
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	lea	rdi, [rdi]
	call	emit_ancillary_info
	mov	edi, ebp
	lea	rsi, [rsi]
	call	exit
.label_7:
	lea	rsi, [rsi]
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rdx, rax
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	lea	rdi, [rdi]
	mov	esi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, rbx
	call	__fprintf_chk
	lea	rsi, [rsi]
	mov	edi, ebp
	nop	
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d20

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	mov	rsp, rsp
	push	rbx
	nop	
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.26
	nop	word ptr cs:[rax + rax]
.label_9:
	mov	edi, OFFSET FLAT:.str.13
	lea	rsi, [rsi]
	call	strcmp
	test	eax, eax
	je	.label_10
	mov	rsi, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	add	rbx, 0x10
	test	rsi, rsi
	mov	rbp, rbp
	jne	.label_9
.label_10:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:.str.13
	cmovne	rbx, rax
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.34
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi, rax
	mov	edi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	call	__printf_chk
	mov	rsp, rsp
	mov	edi, 5
	xor	esi, esi
	lea	rsi, [rsi]
	call	setlocale
	lea	rsi, [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_8
	mov	esi, OFFSET FLAT:.str.36
	mov	edx, 3
	mov	rdi, rax
	nop	
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.13
	lea	rdi, [rdi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.13
	xor	eax, eax
	call	__printf_chk
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.40
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str_0
	nop	
	cmove	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	nop	
	xor	eax, eax
	mov	rsi, rdx
	mov	rbp, rbp
	mov	rdx, rbx
	nop	
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r14
	jmp	__printf_chk
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401ea0

	.globl main
	.type main, @function
main:
	mov	rsp, rsp
	push	rbp
	lea	rsi, [rsi]
	push	r15
	nop	
	push	r14
	mov	rsp, rsp
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0xc8
	mov	rbx, rsi
	nop	
	mov	ebp, edi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.15
	mov	esi, OFFSET FLAT:.str.16
	lea	rdi, [rdi]
	call	bindtextdomain
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.15
	call	textdomain
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:close_stdout
	mov	rsp, rsp
	call	atexit
	lea	rdi, [rsp + 0xa0]
	call	chopt_init
	lea	rdi, [rdi]
	mov	r13d, 0xffffffff
	mov	r15d, 0x10
.label_801:
	mov	rbp, rbp
	xor	r12d, r12d
	jmp	.label_12
.label_15:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xa0], 0
	nop	word ptr cs:[rax + rax]
.label_12:
	mov	edx, OFFSET FLAT:.str.17_0
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:long_options
	mov	rsp, rsp
	xor	r8d, r8d
	mov	edi, ebp
	lea	rdi, [rdi]
	mov	rsi, rbx
	call	getopt_long
	nop	
	cmp	eax, 0x65
	lea	rsi, [rsi]
	jle	.label_32
	cmp	eax, 0x7f
	lea	rsi, [rsi]
	jle	.label_35
	mov	rsp, rsp
	add	eax, -0x80
	cmp	eax, 3
	lea	rsi, [rsi]
	ja	.label_11
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rax * 8) + label_24]]
.label_800:
	mov	rbp, rbp
	mov	r13d, 1
	jmp	.label_12
	nop	dword ptr [rax + rax]
.label_32:
	cmp	eax, 0x4f
	jg	.label_21
	cmp	eax, 0x47
	lea	rsi, [rsi]
	jle	.label_22
	mov	r15d, 0x11
	cmp	eax, 0x48
	je	.label_12
	cmp	eax, 0x4c
	jne	.label_11
	lea	rsi, [rsi]
	mov	r15d, 2
	jmp	.label_12
	nop	word ptr cs:[rax + rax]
.label_35:
	mov	rsp, rsp
	cmp	eax, 0x66
	je	.label_26
	mov	rbp, rbp
	cmp	eax, 0x68
	mov	rsp, rsp
	je	.label_34
	cmp	eax, 0x76
	mov	rbp, rbp
	je	.label_15
	jmp	.label_11
	nop	word ptr cs:[rax + rax]
.label_21:
	cmp	eax, 0x50
	nop	
	je	.label_27
	cmp	eax, 0x52
	mov	rsp, rsp
	je	.label_20
	lea	rdi, [rdi]
	cmp	eax, 0x63
	jne	.label_11
	mov	dword ptr [rsp + 0xa0], 1
	mov	rsp, rsp
	jmp	.label_12
.label_802:
	mov	r12b, 1
	jmp	.label_12
.label_803:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + reference_file]],  rax
	mov	rsp, rsp
	jmp	.label_12
.label_26:
	mov	byte ptr [rsp + 0xb1], 1
	jmp	.label_12
.label_34:
	xor	r13d, r13d
	jmp	.label_12
.label_27:
	mov	r15d, 0x10
	jmp	.label_12
.label_20:
	mov	byte ptr [rsp + 0xa4], 1
	lea	rsi, [rsi]
	jmp	.label_12
.label_22:
	cmp	eax, -1
	jne	.label_19
	mov	rsp, rsp
	mov	r14d, 0x10
	cmp	byte ptr [rsp + 0xa4], 0
	lea	rdi, [rdi]
	je	.label_18
	lea	rdi, [rdi]
	cmp	r15d, 0x10
	jne	.label_25
	cmp	r13d, 1
	mov	rsp, rsp
	mov	r13d, 0
	lea	rsi, [rsi]
	jne	.label_18
	nop	
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.21
	mov	rbp, rbp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	mov	edi, 1
	lea	rdi, [rdi]
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_25:
	mov	r14d, r15d
.label_18:
	test	r13d, r13d
	setne	byte ptr [rsp + 0xb0]
	nop	
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	rdi, [rdi]
	mov	edx, ebp
	sub	edx, eax
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + reference_file]]
	mov	rbp, rbp
	cmp	rcx, 1
	mov	esi, 1
	mov	rsp, rsp
	adc	esi, 0
	cmp	edx, esi
	jl	.label_14
	lea	rdi, [rdi]
	test	rcx, rcx
	nop	
	je	.label_23
	mov	rdi,  qword ptr [word ptr [rip + reference_file]]
	lea	rsi, [rsp + 0x10]
	call	stat
	nop	
	test	eax, eax
	mov	rsp, rsp
	jne	.label_30
	mov	rsp, rsp
	mov	ebp, dword ptr [rsp + 0x30]
	nop	
	mov	edi, ebp
	lea	rdi, [rdi]
	call	gid_to_name
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xc0], rax
	jmp	.label_13
.label_23:
	lea	ecx, [rax + 1]
	nop	
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	rbp, rbp
	mov	rbp, qword ptr [rbx + rax*8]
	xor	eax, eax
	mov	rsp, rsp
	cmp	byte ptr [rbp], 0
	je	.label_16
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	xstrdup
.label_16:
	mov	qword ptr [rsp + 0xc0], rax
	mov	rdi, rbp
	mov	rbp, rbp
	call	parse_group
	mov	rsp, rsp
	mov	ebp, eax
.label_13:
	test	r12b, r12b
	je	.label_17
	mov	al, byte ptr [rsp + 0xa4]
	test	al, al
	je	.label_17
	mov	edi, OFFSET FLAT:main.dev_ino_buf
	call	get_root_dev_ino
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa8], rax
	mov	rsp, rsp
	test	rax, rax
	je	.label_31
.label_17:
	mov	rbp, rbp
	or	r14d, 0x400
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	rdi, [rbx + rax*8]
	nop	
	lea	rax, [rsp + 0xa0]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rax
	mov	edx, 0xffffffff
	mov	rsp, rsp
	mov	r8d, 0xffffffff
	mov	r9d, 0xffffffff
	mov	esi, r14d
	mov	ecx, ebp
	nop	
	call	chown_files
	lea	rsi, [rsi]
	movzx	eax, al
	mov	rsp, rsp
	xor	eax, 1
	lea	rsi, [rsi]
	add	rsp, 0xc8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	nop	
	ret	
.label_19:
	cmp	eax, 0xffffff7d
	je	.label_33
	lea	rsi, [rsi]
	cmp	eax, 0xffffff7e
	jne	.label_11
	xor	edi, edi
	lea	rsi, [rsi]
	call	usage
.label_33:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:.str.13
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.19
	mov	r9d, OFFSET FLAT:.str.20
	xor	eax, eax
	mov	rbp, rbp
	call	version_etc
	xor	edi, edi
	lea	rsi, [rsi]
	call	exit
.label_11:
	mov	edi, 1
	call	usage
.label_14:
	xor	edi, edi
	lea	rsi, [rsi]
	cmp	eax, ebp
	jge	.label_29
	mov	esi, OFFSET FLAT:.str.23
	mov	rsp, rsp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	r14, rax
	mov	rsp, rsp
	movsxd	rax, ebp
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + rax*8 - 8]
	nop	
	call	quote
	nop	
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	rdx, r14
	nop	
	call	error
	mov	edi, 1
	call	usage
.label_30:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + reference_file]]
	mov	edi, 4
	lea	rsi, [rsi]
	jmp	.label_28
.label_31:
	lea	rsi, [rsi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.24
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbp, rax
	nop	
	mov	edi, 4
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_1
.label_28:
	mov	rbp, rbp
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebx
	nop	
	mov	rdx, rbp
	mov	rsp, rsp
	call	error
.label_29:
	mov	esi, OFFSET FLAT:.str.22
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	rdx, rcx
	call	error
	mov	edi, 1
	lea	rdi, [rdi]
	call	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402400

	.globl parse_group
	.type parse_group, @function
parse_group:
	mov	rbp, rbp
	push	r14
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r14, rdi
	lea	rsi, [rsi]
	mov	ebx, 0xffffffff
	cmp	byte ptr [r14], 0
	lea	rsi, [rsi]
	je	.label_36
	mov	rdi, r14
	call	getgrnam
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_38
	nop	
	mov	ebx, dword ptr [rax + 0x10]
	mov	rbp, rbp
	jmp	.label_39
.label_38:
	lea	rcx, [rsp]
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 0xa
	lea	rdi, [rdi]
	mov	r8d, OFFSET FLAT:.str_0
	mov	rdi, r14
	mov	rsp, rsp
	call	xstrtoul
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_37
	mov	rbx, qword ptr [rsp]
	mov	rax, rbx
	shr	rax, 0x20
	mov	rsp, rsp
	jne	.label_37
.label_39:
	call	endgrent
.label_36:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	ret	
.label_37:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi, r14
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	error
	.section	.text
	.align	32
	#Procedure 0x4024d0

	.globl chopt_init
	.type chopt_init, @function
chopt_init:
	lea	rdi, [rdi]
	mov	dword ptr [rdi], 2
	nop	
	mov	qword ptr [rdi + 8], 0
	mov	byte ptr [rdi + 0x10], 1
	mov	byte ptr [rdi + 4], 0
	mov	rbp, rbp
	mov	byte ptr [rdi + 0x11], 0
	mov	rsp, rsp
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rdi + 0x18], xmm0
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x402500
	.globl chopt_free
	.type chopt_free, @function
chopt_free:

	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x18]
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [rbx + 0x20]
	pop	rbx
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x402520

	.globl gid_to_name
	.type gid_to_name, @function
gid_to_name:
	mov	rbp, rbp
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	ebx, edi
	call	getgrgid
	mov	rsp, rsp
	test	rax, rax
	je	.label_40
	mov	rdi, qword ptr [rax]
	lea	rdi, [rdi]
	jmp	.label_41
.label_40:
	lea	rdi, [rdi]
	mov	edi, ebx
	mov	rbp, rbp
	lea	rsi, [rsp]
	call	umaxtostr
	mov	rdi, rax
.label_41:
	call	xstrdup
	lea	rdi, [rdi]
	add	rsp, 0x20
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402570

	.globl uid_to_name
	.type uid_to_name, @function
uid_to_name:
	lea	rsi, [rsi]
	push	rbx
	nop	
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	ebx, edi
	lea	rsi, [rsi]
	call	getpwuid
	lea	rsi, [rsi]
	test	rax, rax
	nop	
	je	.label_42
	mov	rdi, qword ptr [rax]
	mov	rbp, rbp
	jmp	.label_43
.label_42:
	lea	rsi, [rsi]
	mov	edi, ebx
	nop	
	lea	rsi, [rsp]
	lea	rdi, [rdi]
	call	umaxtostr
	mov	rdi, rax
.label_43:
	call	xstrdup
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4025c0

	.globl chown_files
	.type chown_files, @function
chown_files:
	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	push	r15
	mov	rbp, rbp
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rsp, rsp
	mov	ebp, r9d
	mov	rbp, rbp
	mov	r14d, ecx
	nop	
	mov	r15d, edx
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0x50]
	mov	ebx, ebp
	and	ebx, r8d
	mov	rsp, rsp
	xor	eax, eax
	cmp	ebx, -1
	je	.label_44
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x10], r8d
	jmp	.label_45
.label_44:
	mov	dword ptr [rsp + 0x10], r8d
	cmp	byte ptr [r12 + 0x10], 0
	jne	.label_45
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	dword ptr [r12], 2
	jne	.label_45
	mov	eax, 8
.label_45:
	lea	rsi, [rsi]
	or	eax, esi
	xor	edx, edx
	nop	
	mov	esi, eax
	mov	rsp, rsp
	call	xfts_open
	mov	r13, rax
	mov	rdi, r13
	mov	rsp, rsp
	call	rpl_fts_read
	lea	rsi, [rsi]
	mov	bl, 1
	mov	rbp, rbp
	test	rax, rax
	mov	rbp, rbp
	je	.label_46
	nop	
	mov	dword ptr [rsp + 0x14], r14d
	lea	rsi, [rsi]
	mov	r14d, dword ptr [rsp + 0x10]
	nop	word ptr [rax + rax]
.label_48:
	mov	qword ptr [rsp], r12
	mov	rdi, r13
	lea	rdi, [rdi]
	mov	rsi, rax
	mov	rbp, rbp
	mov	edx, r15d
	mov	ecx, dword ptr [rsp + 0x14]
	mov	r8d, r14d
	mov	rsp, rsp
	mov	r9d, ebp
	mov	rsp, rsp
	call	change_file_owner
	nop	
	and	bl, al
	lea	rsi, [rsi]
	mov	rdi, r13
	lea	rsi, [rsi]
	call	rpl_fts_read
	nop	
	test	rax, rax
	jne	.label_48
.label_46:
	lea	rsi, [rsi]
	call	__errno_location
	mov	ebp, dword ptr [rax]
	test	ebp, ebp
	je	.label_49
	mov	rsp, rsp
	cmp	byte ptr [r12 + 0x11], 0
	je	.label_50
	xor	ebx, ebx
	jmp	.label_49
.label_50:
	xor	ebx, ebx
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str_2
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_49:
	lea	rdi, [rdi]
	mov	rdi, r13
	lea	rsi, [rsi]
	call	rpl_fts_close
	test	eax, eax
	nop	
	je	.label_47
	call	__errno_location
	mov	ebp, dword ptr [rax]
	lea	rdi, [rdi]
	xor	ebx, ebx
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebp
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	error
.label_47:
	mov	al, bl
	add	rsp, 0x18
	mov	rbp, rbp
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402770

	.globl change_file_owner
	.type change_file_owner, @function
change_file_owner:
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	nop	
	push	r13
	lea	rsi, [rsi]
	push	r12
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0xc8
	mov	r12d, r8d
	mov	r8d, ecx
	nop	
	mov	r11d, edx
	mov	rsp, rsp
	mov	rbx, rdi
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x100]
	mov	r13, qword ptr [rsi + 0x30]
	mov	rax, qword ptr [rsi + 0x38]
	mov	qword ptr [rsp + 0x30], rax
	movzx	eax, word ptr [rsi + 0x70]
	mov	rbp, rbp
	dec	eax
	cmp	eax, 9
	mov	rbp, rbp
	ja	.label_82
	lea	rdi, [rdi]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_87]]
.label_791:
	cmp	byte ptr [rbp + 4], 0
	nop	
	je	.label_82
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + 8]
	mov	rbp, rbp
	mov	r15b, 1
	test	rax, rax
	nop	
	je	.label_69
	mov	rsp, rsp
	mov	rcx, qword ptr [rsi + 0x80]
	cmp	rcx, qword ptr [rax]
	lea	rdi, [rdi]
	jne	.label_69
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsi + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	lea	rdi, [rdi]
	jne	.label_69
	mov	rbp, rbx
	mov	r13, rsi
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx]
	lea	rdi, [rdi]
	cmp	eax, 0x2f
	jne	.label_62
	cmp	byte ptr [rbx + 1], 0
	nop	
	je	.label_68
.label_62:
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.4_0
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	r15, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 4
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	quotearg_n_style
	nop	
	mov	r12, rbp
	mov	rbp, rax
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, 4
	mov	edx, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	call	quotearg_n_style
	mov	rbp, rbp
	mov	rbx, rax
	xor	edi, edi
	nop	
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, r15
	mov	rcx, rbp
	mov	rbp, r12
	lea	rsi, [rsi]
	mov	r8, rbx
	call	error
	jmp	.label_83
.label_792:
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rsi
	mov	rbp, rbp
	mov	r14d, r8d
	mov	rbp, rbp
	mov	r15d, r11d
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x28], r12d
	nop	
	mov	r12d, r9d
	lea	rsi, [rsi]
	call	cycle_warning_required
	lea	rsi, [rsi]
	mov	r9d, r12d
	mov	r12d, dword ptr [rsp + 0x28]
	mov	r11d, r15d
	mov	rsi, rbp
	mov	r8d, r14d
	mov	rdx, qword ptr [rsp + 0x100]
	mov	rbp, rdx
	mov	rsp, rsp
	test	al, al
	je	.label_82
	mov	rsp, rsp
	xor	r15d, r15d
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.9_0
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	rsp, rsp
	jmp	.label_69
.label_793:
	mov	qword ptr [rsp + 0x28], rbx
	mov	bl, 1
	xor	r12d, r12d
	nop	
	cmp	byte ptr [rbp + 0x11], 0
	mov	rsp, rsp
	jne	.label_77
	mov	r15d, dword ptr [rsi + 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rsi
	lea	rdi, [rdi]
	xor	r13d, r13d
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
	jmp	.label_80
.label_794:
	nop	
	mov	r15b, 1
	mov	rsp, rsp
	cmp	byte ptr [rbp + 4], 0
	mov	rsp, rsp
	je	.label_69
.label_82:
	mov	eax, r9d
	and	eax, r12d
	cmp	eax, -1
	mov	rbp, rbp
	jne	.label_78
	nop	
	cmp	dword ptr [rbp], 2
	mov	rsp, rsp
	jne	.label_78
	cmp	qword ptr [rbp + 8], 0
	mov	rsp, rsp
	jne	.label_78
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_71
.label_78:
	mov	rsp, rsp
	lea	r14, [rsi + 0x78]
	cmp	byte ptr [rbp + 0x10], 0
	mov	rsp, rsp
	je	.label_52
	lea	rsi, [rsi]
	mov	eax, 0xf000
	lea	rsi, [rsi]
	and	eax, dword ptr [rsi + 0x90]
	cmp	eax, 0xa000
	mov	rbp, rbp
	jne	.label_52
	mov	rsp, rsp
	mov	edi, dword ptr [rbx + 0x2c]
	lea	rdi, [rdi]
	lea	r14, [rsp + 0x38]
	lea	rsi, [rsi]
	xor	ecx, ecx
	nop	
	mov	qword ptr [rsp + 0x20], rsi
	mov	rsi, r13
	lea	rsi, [rsi]
	mov	rdx, r14
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x28], r12d
	lea	rsi, [rsi]
	mov	r12d, r8d
	mov	r15d, r11d
	mov	ebp, r9d
	call	fstatat
	mov	r9d, ebp
	mov	rsp, rsp
	mov	r11d, r15d
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	r8d, r12d
	mov	rsp, rsp
	mov	r12d, dword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x100]
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_52
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rbx
	mov	bl, 1
	lea	r13, [rsp + 0x38]
	cmp	byte ptr [rbp + 0x11], 0
	mov	rbp, rbp
	jne	.label_79
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x1c], r8d
	nop	
	mov	r14d, r11d
	nop	
	call	__errno_location
	nop	
	mov	r15d, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x30]
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbx
	nop	
	call	error
	mov	bl, 1
	mov	r11d, r14d
	mov	r8d, dword ptr [rsp + 0x1c]
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_61
.label_52:
	nop	
	cmp	r12d, -1
	mov	rbp, rbp
	je	.label_56
	mov	eax, dword ptr [r14 + 0x1c]
	lea	rdi, [rdi]
	cmp	eax, r12d
	nop	
	sete	dl
	cmp	r9d, -1
	je	.label_51
	cmp	eax, r12d
	je	.label_65
	nop	
	jmp	.label_51
.label_795:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rbx
	mov	bl, 1
	mov	rbp, rbp
	xor	r12d, r12d
	nop	
	cmp	byte ptr [rbp + 0x11], 0
	nop	
	jne	.label_77
	mov	r14d, dword ptr [rsi + 0x40]
	mov	qword ptr [rsp + 0x20], rsi
	xor	r13d, r13d
	xor	edi, edi
	nop	
	mov	esi, 3
	mov	r15, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	mov	ebp, r8d
	mov	r12d, r11d
	mov	rbp, rbp
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	esi, r14d
	nop	
	call	error
	mov	bl, 1
	mov	r11d, r12d
	mov	rbp, rbp
	mov	r8d, ebp
	mov	rsp, rsp
	mov	rbp, r15
	jmp	.label_79
.label_796:
	nop	
	cmp	qword ptr [rsi + 0x58], 0
	mov	rbp, rbp
	jne	.label_84
	cmp	qword ptr [rsi + 0x20], 0
	je	.label_85
.label_84:
	mov	qword ptr [rsp + 0x28], rbx
	lea	rdi, [rdi]
	mov	bl, 1
	xor	r12d, r12d
	cmp	byte ptr [rbp + 0x11], 0
	lea	rdi, [rdi]
	je	.label_86
.label_77:
	lea	rdi, [rdi]
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x20], rsi
	mov	rbp, rbp
	xor	r15d, r15d
	jmp	.label_61
.label_56:
	mov	dl, 1
	mov	rsp, rsp
	cmp	r9d, -1
	lea	rsi, [rsi]
	je	.label_51
.label_65:
	cmp	dword ptr [r14 + 0x20], r9d
	sete	dl
.label_51:
	movzx	eax, word ptr [rsi + 0x70]
	nop	
	cmp	eax, 6
	ja	.label_57
	mov	ecx, 0x56
	bt	ecx, eax
	nop	
	jae	.label_57
	mov	rax, qword ptr [rbp + 8]
	mov	rbp, rbp
	test	rax, rax
	je	.label_57
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 8]
	cmp	rcx, qword ptr [rax]
	jne	.label_57
	mov	rsp, rsp
	mov	rcx, qword ptr [r14]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rax + 8]
	lea	rdi, [rdi]
	jne	.label_57
	mov	rbp, qword ptr [rsp + 0x30]
	nop	
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2f
	jne	.label_73
	cmp	byte ptr [rbp + 1], 0
	lea	rdi, [rdi]
	je	.label_76
.label_73:
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4_0
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	r14, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbp
	call	quotearg_n_style
	lea	rsi, [rsi]
	mov	rbp, rax
	mov	rsp, rsp
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	call	quotearg_n_style
	mov	rbx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdx, r14
	mov	rbp, rbp
	mov	rcx, rbp
	mov	rbp, rbp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	error
	mov	rbp, rbp
	jmp	.label_90
.label_57:
	test	dl, dl
	je	.label_92
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x1b], dl
	nop	
	mov	qword ptr [rsp + 0x20], rsi
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbx + 0x2c]
	cmp	byte ptr [rbp + 0x10], 0
	lea	rsi, [rsi]
	je	.label_54
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rbx
	mov	dword ptr [rsp], r9d
	mov	rbp, rbp
	mov	rsi, r13
	nop	
	mov	qword ptr [rsp + 0x10], r13
	lea	rsi, [rsi]
	mov	rdx, r14
	mov	r13, r14
	mov	rbp, rbp
	mov	ecx, r11d
	mov	dword ptr [rsp + 0x1c], r11d
	mov	r14d, r8d
	lea	rsi, [rsi]
	mov	r9d, r12d
	mov	rsp, rsp
	call	restricted_chown
	add	eax, -2
	cmp	eax, 4
	lea	rdi, [rdi]
	ja	.label_70
	nop	
	mov	bl, 1
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rsp, rsp
	xor	r12d, r12d
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x100]
	mov	rsp, rsp
	mov	rbp, rdx
	lea	rsi, [rsi]
	mov	r8d, r14d
	nop	
	mov	r11d, dword ptr [rsp + 0x1c]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_75]]
.label_870:
	lea	rdi, [rdi]
	mov	bl, 1
	mov	rsp, rsp
	mov	al, byte ptr [rsp + 0x1b]
	lea	rsi, [rsi]
	mov	r12b, al
	mov	rbp, rbp
	mov	r15b, 1
	nop	
	jmp	.label_61
.label_92:
	mov	r13, r14
	nop	
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp + 0x28], rbx
	mov	bl, 1
	xor	r12d, r12d
	lea	rdi, [rdi]
	mov	r15b, 1
	jmp	.label_61
.label_54:
	mov	qword ptr [rsp + 0x28], rbx
	mov	rsp, rsp
	mov	rsi, r13
	mov	edx, r11d
	mov	dword ptr [rsp + 0x1c], r11d
	mov	ecx, r8d
	lea	rdi, [rdi]
	mov	r12d, r8d
	lea	rsi, [rsi]
	call	lchownat
	mov	rbp, rbp
	test	eax, eax
	sete	r15b
	nop	
	mov	bl, 1
	mov	r13, r14
	lea	rdi, [rdi]
	je	.label_58
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x5f
	setne	bl
	mov	al, 1
	je	.label_59
	mov	al, r15b
.label_59:
	mov	r15b, al
.label_58:
	mov	rdx, qword ptr [rsp + 0x100]
	mov	rsp, rsp
	mov	rbp, rdx
	mov	r8d, r12d
	mov	rsp, rsp
	mov	r11d, dword ptr [rsp + 0x1c]
	lea	rdi, [rdi]
	jmp	.label_64
.label_86:
	lea	rdi, [rdi]
	mov	r15d, dword ptr [rsi + 0x40]
	mov	qword ptr [rsp + 0x20], rsi
	xor	r13d, r13d
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.6_0
.label_80:
	mov	edx, 5
	lea	rdi, [rdi]
	mov	r14d, r8d
	mov	rbp, rbp
	mov	r12d, r11d
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	nop	
	xor	eax, eax
	mov	esi, r15d
	lea	rdi, [rdi]
	mov	rdx, rbp
	nop	
	call	error
	nop	
	mov	bl, 1
	mov	rbp, rbp
	mov	r11d, r12d
	mov	rbp, rbp
	mov	r8d, r14d
	nop	
	mov	rbp, qword ptr [rsp + 0x100]
.label_79:
	lea	rdi, [rdi]
	xor	r12d, r12d
	xor	r15d, r15d
.label_61:
	cmp	dword ptr [rbp], 2
	lea	rdi, [rdi]
	je	.label_60
	mov	al, r15b
	and	al, 1
	lea	rsi, [rsi]
	test	r12b, r12b
	je	.label_67
	lea	rsi, [rsi]
	mov	cl, bl
	mov	rsp, rsp
	and	cl, r15b
	mov	rbp, rbp
	je	.label_67
	cmp	r11d, -1
	lea	rdi, [rdi]
	je	.label_91
	cmp	dword ptr [r13 + 0x1c], r11d
	jne	.label_53
.label_91:
	mov	rsp, rsp
	cmp	r8d, -1
	je	.label_67
	lea	rdi, [rdi]
	cmp	dword ptr [r13 + 0x20], r8d
	mov	rbp, rbp
	jne	.label_53
.label_67:
	cmp	dword ptr [rbp], 0
	mov	rbp, rbp
	jne	.label_60
	test	al, al
	mov	rbp, rbp
	movzx	eax, bl
	lea	eax, [rax + rax*2 + 1]
	mov	rbp, rbp
	mov	r14d, 3
	mov	rsp, rsp
	cmovne	r14d, eax
	mov	rsp, rsp
	xor	r12d, r12d
	test	r13, r13
	mov	ebx, 0
	nop	
	jne	.label_63
	jmp	.label_72
.label_53:
	lea	rdi, [rdi]
	movzx	ecx, bl
	nop	
	inc	ecx
	test	al, al
	mov	r14d, 3
	cmovne	r14d, ecx
.label_63:
	mov	rsp, rsp
	mov	edi, dword ptr [r13 + 0x1c]
	mov	rbp, rbp
	mov	rbx, rbp
	call	uid_to_name
	mov	r12, rax
	lea	rdi, [rdi]
	mov	edi, dword ptr [r13 + 0x20]
	mov	rsp, rsp
	call	gid_to_name
	lea	rdi, [rdi]
	mov	rbp, rbx
	mov	rbx, rax
.label_72:
	mov	r8, qword ptr [rbp + 0x18]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp + 0x20]
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	mov	esi, r14d
	mov	rdx, r12
	mov	rcx, rbx
	call	describe_change
	lea	rdi, [rdi]
	mov	rdi, r12
	call	free
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_60:
	mov	rsp, rsp
	cmp	byte ptr [rbp + 4], 0
	mov	rdi, qword ptr [rsp + 0x28]
	jne	.label_88
	mov	rsp, rsp
	mov	edx, 4
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x20]
	call	rpl_fts_set
.label_88:
	and	r15b, 1
.label_69:
	nop	
	mov	al, r15b
	add	rsp, 0xc8
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
.label_85:
	mov	qword ptr [rsi + 0x20], 1
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fts_set
	mov	rbp, rbp
	mov	r15b, 1
	jmp	.label_69
.label_871:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x28]
	mov	edi, dword ptr [rax + 0x2c]
	mov	rsi, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	r14, rbp
	mov	rsp, rsp
	mov	edx, r11d
	mov	ecx, r8d
	mov	ebp, r8d
	mov	rbp, rbp
	mov	r15d, r11d
	call	chownat
	mov	rbp, rbp
	mov	bl, 1
	mov	r11d, r15d
	mov	r8d, ebp
	mov	rbp, r14
	mov	rsp, rsp
	test	eax, eax
	sete	r15b
.label_64:
	mov	cl, byte ptr [rsp + 0x1b]
	mov	rbp, rbp
	test	cl, cl
	lea	rdi, [rdi]
	je	.label_55
	mov	al, r15b
	mov	rsp, rsp
	and	al, 1
	mov	rbp, rbp
	jne	.label_81
	mov	r14d, r11d
	lea	rsi, [rsi]
	cmp	byte ptr [rbp + 0x11], 0
	je	.label_89
	mov	rsp, rsp
	mov	r12b, cl
	mov	r11d, r14d
	jmp	.label_61
.label_55:
	mov	r12b, cl
	jmp	.label_61
.label_81:
	mov	r12b, cl
	jmp	.label_61
.label_89:
	nop	
	mov	r12b, cl
	mov	byte ptr [rsp + 0x10], bl
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x1c], r8d
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	cmp	r14d, -1
	je	.label_66
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.11_0
	lea	rdi, [rdi]
	jmp	.label_74
.label_71:
	lea	rsi, [rsi]
	lea	r14, [rsi + 0x78]
	mov	dl, 1
	lea	rsi, [rsi]
	jmp	.label_51
.label_76:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.3_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	nop	
	mov	rsi, rbp
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	nop	
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_90:
	xor	r15d, r15d
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	nop	
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	error
	lea	rdi, [rdi]
	jmp	.label_69
.label_66:
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.12_0
.label_74:
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	call	quotearg_style
	nop	
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	rdx, qword ptr [rsp + 0x100]
	mov	rbp, rdx
	mov	rbp, rbp
	mov	r8d, dword ptr [rsp + 0x1c]
	mov	r11d, r14d
	mov	bl, byte ptr [rsp + 0x10]
	jmp	.label_61
.label_68:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.3_0
	mov	rbp, rbp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	r15, rax
	mov	rsp, rsp
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	nop	
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	lea	rdi, [rdi]
	call	error
.label_83:
	xor	r15d, r15d
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5_0
	mov	rsp, rsp
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	nop	
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	error
	mov	edx, 4
	nop	
	mov	rdi, rbp
	mov	rsi, r13
	lea	rdi, [rdi]
	call	rpl_fts_set
	mov	rdi, rbp
	call	rpl_fts_read
	mov	rbp, rbp
	jmp	.label_69
.label_70:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4032a0

	.globl restricted_chown
	.type restricted_chown, @function
restricted_chown:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x98
	lea	rsi, [rsi]
	mov	r13d, r9d
	mov	rbp, rbp
	mov	rbp, rdx
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	r15d, edi
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0xd0]
	nop	
	and	eax, r13d
	mov	ebx, 5
	lea	rdi, [rdi]
	cmp	eax, -1
	je	.label_95
	nop	
	mov	eax, 0xf000
	nop	
	and	eax, dword ptr [rbp + 0x18]
	mov	r12d, 0x900
	cmp	eax, 0x8000
	mov	rsp, rsp
	je	.label_97
	cmp	eax, 0x4000
	jne	.label_95
	mov	r12d, 0x10900
.label_97:
	mov	rsp, rsp
	mov	dword ptr [rsp], ecx
	mov	dword ptr [rsp + 4], r8d
	xor	eax, eax
	mov	edi, r15d
	mov	rsi, r14
	mov	edx, r12d
	call	openat
	mov	rsp, rsp
	test	eax, eax
	jns	.label_99
	call	__errno_location
	mov	rcx, rax
	nop	
	cmp	dword ptr [rcx], 0xd
	lea	rdi, [rdi]
	jne	.label_94
	mov	rbp, rbp
	mov	eax, 0xf000
	lea	rsi, [rsi]
	and	eax, dword ptr [rbp + 0x18]
	cmp	eax, 0x8000
	nop	
	jne	.label_94
	or	r12d, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	edi, r15d
	nop	
	mov	rsi, r14
	mov	edx, r12d
	mov	rbp, rbp
	mov	rbx, rcx
	call	openat
	mov	rbp, rbp
	mov	rcx, rbx
	test	eax, eax
	mov	rbp, rbp
	js	.label_94
.label_99:
	lea	rdi, [rdi]
	lea	rsi, [rsp + 8]
	nop	
	mov	edi, eax
	mov	rsp, rsp
	mov	r15d, edi
	lea	rdi, [rdi]
	call	__fstat
	mov	ebx, 6
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_93
	nop	
	mov	rax, qword ptr [rbp + 8]
	mov	ebx, 4
	cmp	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	jne	.label_93
	mov	rax, qword ptr [rbp]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_93
	cmp	r13d, -1
	je	.label_96
	nop	
	mov	ebx, 2
	mov	rbp, rbp
	cmp	dword ptr [rsp + 0x24], r13d
	mov	rsp, rsp
	jne	.label_93
.label_96:
	mov	rbp, rbp
	cmp	dword ptr [rsp + 0xd0], -1
	je	.label_100
	mov	ebx, 2
	mov	eax, dword ptr [rsp + 0xd0]
	cmp	dword ptr [rsp + 0x28], eax
	jne	.label_93
.label_100:
	nop	
	mov	edi, r15d
	mov	esi, dword ptr [rsp]
	mov	edx, dword ptr [rsp + 4]
	call	fchown
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	mov	ebx, 6
	mov	rbp, rbp
	je	.label_98
.label_93:
	call	__errno_location
	mov	rbp, rax
	nop	
	mov	r14d, dword ptr [rbp]
	mov	edi, r15d
	call	close
	mov	dword ptr [rbp], r14d
	jmp	.label_95
.label_94:
	lea	rdi, [rdi]
	mov	ebx, 5
	cmp	dword ptr [rcx], 0xd
	nop	
	je	.label_95
	mov	ebx, 6
.label_95:
	mov	rsp, rsp
	mov	eax, ebx
	add	rsp, 0x98
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	nop	
	pop	r14
	nop	
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_98:
	nop	
	mov	edi, r15d
	call	close
	test	eax, eax
	setne	al
	lea	rdi, [rdi]
	movzx	eax, al
	lea	ebx, [rax*4 + 2]
	jmp	.label_95
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4034b0

	.globl describe_change
	.type describe_change, @function
describe_change:
	mov	rbp, rbp
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	nop	
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x18
	mov	r13, r9
	nop	
	mov	r14, r8
	mov	rbx, rcx
	lea	rdi, [rdi]
	mov	rbp, rdx
	lea	rsi, [rsi]
	mov	r15d, esi
	mov	rbp, rbp
	mov	r12, rdi
	lea	rdi, [rdi]
	cmp	r15d, 1
	lea	rsi, [rsi]
	jne	.label_114
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	mov	rbp, rbp
	mov	edi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rdx, rcx
	lea	rdi, [rdi]
	add	rsp, 0x18
	nop	
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__printf_chk
.label_114:
	mov	qword ptr [rsp + 0x10], r12
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, r13
	mov	rbp, rbp
	call	user_group_str
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	test	r14, r14
	cmove	rbp, r14
	lea	rdi, [rdi]
	test	r13, r13
	cmove	rbx, r13
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rsi, rbx
	call	user_group_str
	nop	
	mov	r12, rax
	nop	
	cmp	r15d, 4
	je	.label_105
	cmp	r15d, 3
	je	.label_108
	lea	rdi, [rdi]
	cmp	r15d, 2
	jne	.label_110
	mov	rsp, rsp
	test	r14, r14
	je	.label_112
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14
	jmp	.label_106
.label_105:
	xor	edi, edi
	lea	rsi, [rsi]
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_101
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.22_0
	mov	rbp, rbp
	jmp	.label_106
.label_108:
	mov	rbp, rbp
	test	r12, r12
	je	.label_109
	test	r14, r14
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x10]
	je	.label_111
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.17_1
	lea	rsi, [rsi]
	jmp	.label_107
.label_112:
	test	r13, r13
	nop	
	mov	r14, qword ptr [rsp + 0x10]
	je	.label_117
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15_0
	jmp	.label_107
.label_101:
	lea	rdi, [rdi]
	test	r13, r13
	nop	
	je	.label_102
	nop	
	mov	esi, OFFSET FLAT:.str.23_0
	jmp	.label_106
.label_109:
	lea	rdi, [rdi]
	test	r14, r14
	mov	r14, qword ptr [rsp + 0x10]
	je	.label_115
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.20_0
	jmp	.label_113
.label_111:
	xor	edi, edi
	test	r13, r13
	je	.label_103
	mov	esi, OFFSET FLAT:.str.18_0
	lea	rdi, [rdi]
	jmp	.label_107
.label_117:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_0
	mov	rbp, rbp
	jmp	.label_107
.label_102:
	mov	esi, OFFSET FLAT:.str.24_0
.label_106:
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbx, rax
	mov	rbp, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	jmp	.label_116
.label_115:
	mov	rsp, rsp
	xor	edi, edi
	test	r13, r13
	mov	rsp, rsp
	je	.label_104
	mov	esi, OFFSET FLAT:.str.21_0
	jmp	.label_113
.label_103:
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.19_0
.label_107:
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	nop	
	mov	rbp, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	jmp	.label_116
.label_104:
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.19_0
.label_113:
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	nop	
	mov	rbp, qword ptr [rsp + 8]
	nop	
	mov	rdi, r12
	call	free
	mov	rbp, rbp
	mov	r12, rbp
	xor	ebp, ebp
.label_116:
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	rsi, rbx
	lea	rsi, [rsi]
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, r12
	mov	r8, rbp
	call	__printf_chk
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rbp, rbp
	call	free
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rsp, rsp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	pop	r15
	pop	rbp
	jmp	free
.label_110:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403770

	.globl user_group_str
	.type user_group_str, @function
user_group_str:
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	rbx
	mov	r14, rsi
	lea	rdi, [rdi]
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_120
	test	r14, r14
	je	.label_118
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	strlen
	mov	rbp, rbp
	mov	r15, rax
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	call	strlen
	lea	rsi, [rsi]
	lea	rdi, [r15 + rax + 2]
	call	xmalloc
	mov	r15, rax
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsi, rbx
	call	stpcpy
	mov	word ptr [rax], 0x3a
	nop	
	lea	rdi, [rax + 1]
	mov	rsi, r14
	call	stpcpy
	jmp	.label_121
.label_120:
	xor	r15d, r15d
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_121
	mov	rdi, r14
	jmp	.label_119
.label_121:
	mov	rbp, rbp
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_118:
	lea	rdi, [rdi]
	mov	rdi, rbx
.label_119:
	pop	rbx
	pop	r14
	pop	r15
	jmp	xstrdup
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403810
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
	#Procedure 0x403820
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403830

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	call	close_stream
	test	eax, eax
	je	.label_123
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_122
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	jne	.label_122
.label_123:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_125
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	rbp
	ret	
.label_122:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_4
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	lea	rdi, [rdi]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_124
	xor	edi, edi
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str_3
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, ebp
	nop	
	mov	rcx, r14
	lea	rdi, [rdi]
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_125:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_124:
	mov	rbp, rbp
	mov	rdi, rbx
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_1
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rsi, [rsi]
	mov	r8, r14
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403930

	.globl chownat
	.type chownat, @function
chownat:
	mov	rbp, rbp
	xor	r8d, r8d
	nop	
	jmp	fchownat
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403940

	.globl lchownat
	.type lchownat, @function
lchownat:
	nop	
	mov	r8d, 0x100
	mov	rsp, rsp
	jmp	fchownat
	nop	
	.section	.text
	.align	32
	#Procedure 0x403950

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	lea	rdi, [rdi]
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	dword ptr [rax + rax]
.label_126:
	mov	rbp, rbp
	mov	rax, rcx
	lea	rdi, [rdi]
	mul	r8
	mov	rsp, rsp
	shr	rdx, 3
	lea	eax, [rdx + rdx]
	mov	rbp, rbp
	lea	eax, [rax + rax*4]
	mov	edi, ecx
	sub	edi, eax
	or	edi, 0x30
	lea	rsi, [rsi]
	mov	byte ptr [rsi - 1], dil
	mov	rbp, rbp
	dec	rsi
	cmp	rcx, 9
	mov	rcx, rdx
	ja	.label_126
	mov	rax, rsi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4039b0

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
	je	.label_127
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
	jl	.label_129
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_129
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
	jne	.label_128
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_128:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_129:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_127:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_5
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
	#Procedure 0x403aa0
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
	#Procedure 0x403af0
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
	#Procedure 0x403b10
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
	#Procedure 0x403b30

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
	#Procedure 0x403ba0
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
	#Procedure 0x403bc0

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
	je	.label_130
	test	rdx, rdx
	nop	
	je	.label_130
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_130:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403c00
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
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
	mov	rax, qword ptr [rbp + 0x28]
	mov	rcx, qword ptr [rbp + 0x30]
	lea	rsi, [rsi]
	lea	rdx, [rbp + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rdx
	nop	
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x20]
	call	quotearg_buffer_restyled
	mov	dword ptr [rbx], r14d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	nop	
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403ca0

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
	sub	rsp, 0x108
	mov	ebx, r9d
	nop	
	mov	dword ptr [rsp + 0x6c], ebx
	mov	r13d, r8d
	mov	qword ptr [rsp + 0xc0], rcx
	mov	r12, rdx
	mov	rbp, rbp
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xe0], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x150]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x148]
	mov	qword ptr [rsp + 0x90], rax
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], rax
	mov	r15b, bl
	mov	rbp, rbp
	shr	r15b, 1
	mov	rbp, rbp
	and	r15b, 1
	nop	
	mov	eax, ebx
	and	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x5c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x58], ebx
	mov	rsp, rsp
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x80], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa8], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xd0], rax
	mov	eax, 0
	mov	rbp, rbp
	xor	r11d, r11d
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
.label_240:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rsi, [rsi]
	mov	ecx, r13d
	lea	rdi, [rdi]
	cmp	r13d, 0xa
	ja	.label_194
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	rsp, rsp
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_230]]
.label_811:
	lea	rsi, [rsi]
	mov	r12d, r11d
	nop	
	mov	edi, OFFSET FLAT:.str.11_1
	mov	esi, r13d
	nop	
	mov	r14, r10
	mov	bl, r8b
	mov	rbp, rbp
	mov	rbp, r9
	call	gettext_quote
	mov	qword ptr [rsp + 0x90], rax
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.12_1
	mov	esi, r13d
	mov	rsp, rsp
	call	gettext_quote
	mov	rsp, rsp
	mov	r11d, r12d
	mov	r9, rbp
	mov	r8b, bl
	nop	
	mov	r10, r14
	nop	
	mov	qword ptr [rsp + 0x88], rax
.label_812:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	rbp, rbp
	test	r15b, 1
	mov	rbp, rbp
	mov	eax, 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xf0], rax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_137
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rsp, rsp
	je	.label_137
	mov	rsp, rsp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_175:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_164
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rsi], al
.label_164:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	al, byte ptr [rdx + rcx + 1]
	lea	rdi, [rdi]
	inc	rcx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rbp, rbp
	test	al, al
	jne	.label_175
.label_137:
	mov	rbx, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	mov	rdi, rbx
	mov	r12, r10
	nop	
	call	strlen
	mov	r10, r12
	mov	qword ptr [rsp + 0xd0], rax
	lea	rdi, [rdi]
	mov	r14d, r13d
	mov	qword ptr [rsp + 0xa8], rbx
	mov	sil, 1
	mov	rbp, rbp
	mov	dil, r15b
	mov	r8b, byte ptr [rsp + 0x69]
	mov	rsp, rsp
	mov	r9, rbp
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	mov	r11d, dword ptr [rsp + 0xb8]
	nop	
	jmp	.label_140
.label_804:
	lea	rsi, [rsi]
	xor	r14d, r14d
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	jmp	.label_140
.label_807:
	mov	rsp, rsp
	mov	al, 1
.label_805:
	mov	r15b, 1
.label_808:
	test	r15b, 1
	mov	rsp, rsp
	mov	cl, 1
	je	.label_207
	mov	cl, al
.label_207:
	lea	rdi, [rdi]
	mov	al, cl
.label_806:
	mov	r14d, 2
	mov	rsp, rsp
	test	r15b, 1
	mov	rsp, rsp
	jne	.label_212
	test	r10, r10
	je	.label_219
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	lea	rdi, [rdi]
	jmp	.label_222
.label_212:
	xor	ecx, ecx
	jmp	.label_222
.label_809:
	mov	r14d, 5
	mov	rsp, rsp
	test	r15b, 1
	jne	.label_231
	test	r10, r10
	je	.label_148
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	lea	rsi, [rsi]
	jmp	.label_153
.label_810:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_1
	nop	
	mov	qword ptr [rsp + 0xa8], rax
	nop	
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	rbp, rbp
	mov	dil, 1
	jmp	.label_140
.label_219:
	nop	
	mov	ecx, 1
	nop	dword ptr [rax]
.label_222:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa8], rcx
	lea	rdi, [rdi]
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	mov	rbp, rbp
	jmp	.label_140
.label_231:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_153
.label_148:
	mov	rbp, rbp
	mov	eax, 1
.label_153:
	nop	
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_1
	mov	qword ptr [rsp + 0xa8], rax
	mov	rsp, rsp
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	lea	rsi, [rsi]
	mov	sil, 1
	mov	dil, r15b
	nop	word ptr cs:[rax + rax]
.label_140:
	mov	qword ptr [rsp + 0x98], rdi
	mov	byte ptr [rsp + 0xa6], sil
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x140], 0
	lea	rsi, [rsi]
	setne	bl
	cmp	r14d, 2
	lea	rsi, [rsi]
	setne	r15b
	mov	rsp, rsp
	sete	dl
	mov	rbp, rbp
	mov	cl, sil
	and	cl, 1
	mov	byte ptr [rsp + 0xa5], cl
	sete	byte ptr [rsp + 0x6b]
	lea	rdi, [rdi]
	mov	r12b, r15b
	and	r12b, cl
	mov	byte ptr [rsp + 0xbf], r12b
	cmp	qword ptr [rsp + 0xd0], 0
	mov	rsp, rsp
	setne	r13b
	mov	al, r13b
	and	al, r12b
	mov	rbp, rbp
	mov	byte ptr [rsp + 0xdf], al
	mov	al, dil
	mov	rsp, rsp
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xcf], al
	mov	rsp, rsp
	sete	cl
	lea	rdi, [rdi]
	and	dl, al
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x7f], dl
	and	bl, al
	mov	byte ptr [rsp + 0xb7], bl
	or	cl, r15b
	mov	byte ptr [rsp + 0xa7], cl
	nop	
	and	sil, dil
	mov	rsp, rsp
	and	sil, r13b
	mov	byte ptr [rsp + 0x6a], sil
	nop	
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_173
	nop	word ptr [rax + rax]
.label_198:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	lea	rsi, [rsi]
	sar	r15b, 7
	and	r15b, r8b
	lea	rdi, [rdi]
	mov	r8b, r15b
	nop	
	inc	rsi
.label_173:
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_225
	cmp	rsi, rbp
	jne	.label_226
	jmp	.label_229
	nop	word ptr cs:[rax + rax]
.label_225:
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + rsi], 0
	nop	
	je	.label_229
.label_226:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_234
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_210
	mov	rsp, rsp
	cmp	rbp, -1
	lea	rdi, [rdi]
	jne	.label_210
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, rbp
	mov	rdi, r9
	mov	rbp, rbp
	mov	rbp, r10
	nop	
	mov	r15b, r8b
	lea	rsi, [rsi]
	mov	r13, r14
	lea	rsi, [rsi]
	mov	r12, r9
	mov	r14, rsi
	lea	rdi, [rdi]
	call	strlen
	mov	rsp, rsp
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	r11d, dword ptr [rsp + 0xb8]
	mov	r9, r12
	mov	r12b, byte ptr [rsp + 0xbf]
	nop	
	mov	r14, r13
	lea	rdi, [rdi]
	mov	r8b, r15b
	mov	rbp, rbp
	mov	r10, rbp
	mov	rbp, rax
.label_210:
	lea	rsi, [rsi]
	cmp	rbx, rbp
	jbe	.label_150
.label_234:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xec], 0
.label_192:
	mov	rsp, rsp
	movzx	r13d, byte ptr [r9 + rsi]
	mov	rsp, rsp
	cmp	r13, 0x7e
	nop	
	ja	.label_156
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	r15b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	bl, 0x61
	nop	
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_165]]
.label_823:
	test	rsi, rsi
	jne	.label_172
	jmp	.label_174
	nop	word ptr [rax + rax]
.label_150:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12d, r11d
	lea	rsi, [rsi]
	mov	r13, r14
	lea	rdi, [rdi]
	mov	r15b, r8b
	mov	rbx, r10
	lea	rdi, [r9 + rsi]
	mov	r14, rsi
	mov	rbp, r9
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xa8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xd0]
	mov	rbp, rbp
	call	memcmp
	mov	rsp, rsp
	test	eax, eax
	sete	al
	mov	dword ptr [rsp + 0xec], eax
	jne	.label_188
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	nop	
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_192
	mov	rsp, rsp
	jmp	.label_141
.label_188:
	mov	rbp, rbp
	mov	r10, rbx
	mov	rbp, rbp
	mov	r8b, r15b
	mov	rbp, rbp
	mov	rdi, r13
	nop	
	mov	r9, rbp
	nop	
	mov	r11d, r12d
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0xc0]
	nop	
	mov	r12b, byte ptr [rsp + 0xbf]
	nop	
	mov	rsi, r14
	jmp	.label_192
.label_827:
	xor	eax, eax
	cmp	rbp, -1
	lea	rsi, [rsi]
	je	.label_228
	test	rsi, rsi
	nop	
	jne	.label_220
	cmp	rbp, 1
	lea	rsi, [rsi]
	je	.label_174
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_136
.label_816:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_241
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xcf], 0
	nop	
	jne	.label_141
	cmp	edi, 2
	nop	
	jne	.label_237
	lea	rdi, [rdi]
	mov	al, r11b
	and	al, 1
	nop	
	jne	.label_239
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_243
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], 0x27
.label_243:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_132
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_132:
	nop	
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_183
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_183:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	rsp, rsp
	mov	r11b, 1
	nop	
	mov	rcx, rax
	jmp	.label_149
.label_817:
	mov	bl, 0x62
	lea	rsi, [rsi]
	jmp	.label_155
.label_818:
	mov	cl, 0x74
	jmp	.label_162
.label_819:
	mov	bl, 0x76
	lea	rdi, [rdi]
	jmp	.label_155
.label_820:
	mov	bl, 0x66
	jmp	.label_155
.label_821:
	nop	
	mov	cl, 0x72
	mov	rsp, rsp
	jmp	.label_162
.label_824:
	lea	rsi, [rsi]
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	rbp, rbp
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 2
	jne	.label_221
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_159
	nop	
	test	r10, r10
	sete	al
	mov	rcx, qword ptr [rsp + 0x80]
	mov	rdx, rcx
	lea	rdi, [rdi]
	test	rdx, rdx
	nop	
	setne	cl
	nop	
	or	cl, al
	cmove	rdx, r10
	mov	qword ptr [rsp + 0x80], rdx
	mov	eax, 0
	mov	rsp, rsp
	cmove	r10, rax
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_170
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_170:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_196
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x5c
.label_196:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_203
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_203:
	nop	
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	mov	rbp, rbp
	jmp	.label_213
.label_825:
	lea	rdi, [rdi]
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 5
	mov	rsp, rsp
	je	.label_214
	cmp	r14d, 2
	lea	rdi, [rdi]
	jne	.label_227
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_159
.label_227:
	mov	rdi, r14
	jmp	.label_172
.label_826:
	mov	r14, rdi
	nop	
	cmp	r14d, 2
	mov	rsp, rsp
	jne	.label_232
	nop	
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_159
	mov	rdi, r14
	jmp	.label_242
.label_156:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	lea	rsi, [rsi]
	jne	.label_246
	mov	rbp, rbp
	mov	r14, r9
	mov	rbx, rsi
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	rsi, rbx
	nop	
	mov	r9, r14
	mov	rax, qword ptr [rax]
	movzx	r15d, word ptr [rax + r13*2]
	mov	rsp, rsp
	shr	r15d, 0xe
	lea	rdi, [rdi]
	and	r15b, 1
	lea	rsi, [rsi]
	mov	ebx, 1
.label_190:
	lea	rdi, [rdi]
	and	r15b, 1
	mov	dl, r15b
	or	dl, byte ptr [rsp + 0x6b]
	mov	byte ptr [rsp + 0xc0], dl
	cmp	rbx, 1
	mov	rcx, rbx
	mov	r10, qword ptr [rsp + 0x40]
	mov	r8b, byte ptr [rsp + 0x69]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	mov	r11d, dword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	ja	.label_147
	test	dl, dl
	mov	rsp, rsp
	je	.label_147
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_136
.label_228:
	test	rsi, rsi
	jne	.label_169
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_169
.label_174:
	mov	rbp, rbp
	mov	dl, 1
.label_822:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_141
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r15b, dl
	mov	rbp, rbp
	jmp	.label_136
.label_241:
	cmp	dword ptr [rsp + 0x5c], 0
	mov	rbp, rbp
	je	.label_172
	lea	rsi, [rsi]
	mov	r14, rdi
	inc	rsi
	jmp	.label_173
.label_221:
	mov	rdi, r14
.label_213:
	xor	eax, eax
	nop	
	mov	r15b, 1
	lea	rdi, [rdi]
	jmp	.label_136
.label_232:
	mov	rdi, r14
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x6a], 0
	nop	
	mov	cl, r13b
	nop	
	je	.label_162
.label_242:
	lea	rsi, [rsi]
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_176
.label_162:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xa7], 0
	lea	rsi, [rsi]
	mov	bl, cl
	nop	
	je	.label_141
.label_155:
	mov	rbp, rbp
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_136
	lea	rsi, [rsi]
	jmp	.label_182
.label_246:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_161
	mov	rsp, rsp
	mov	rdi, r9
	mov	rbx, r9
	lea	rdi, [rdi]
	mov	rbp, rsi
	mov	rsp, rsp
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_161:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	nop	
	mov	r15b, 1
	xor	ebx, ebx
	lea	rsi, [rsi]
	lea	r14, [rsp + 0x100]
.label_184:
	lea	rax, [rbx + rsi]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x30], rsi
	nop	
	lea	rsi, [r9 + rax]
	mov	qword ptr [rsp + 0x48], r9
	mov	rbp, rbp
	mov	rdx, rbp
	mov	rbp, rbp
	sub	rdx, rax
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0xfc]
	nop	
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rdi, [rdi]
	mov	rbp, rax
	test	rbp, rbp
	je	.label_248
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	lea	rsi, [rsi]
	mov	r10, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	nop	
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rdi, [rdi]
	je	.label_251
	cmp	rbp, -2
	nop	
	je	.label_143
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_215
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	lea	rsi, [rsi]
	mov	ecx, 1
.label_167:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	mov	rsp, rsp
	cmp	edx, 0x21
	lea	rsi, [rsi]
	ja	.label_195
	mov	rbp, rbp
	bt	rsi, rdx
	jb	.label_166
.label_195:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jb	.label_167
.label_215:
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_134
	xor	r15d, r15d
.label_134:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	add	rbx, rbp
	mov	r14, rdi
	nop	
	call	mbsinit
	mov	rsp, rsp
	test	eax, eax
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	je	.label_184
	jmp	.label_190
.label_169:
	mov	rbp, -1
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_136
.label_214:
	mov	rdi, r14
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x58], 0
	lea	rdi, [rdi]
	je	.label_172
	lea	rcx, [rsi + 2]
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jae	.label_172
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_172
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	mov	rsp, rsp
	cmp	edx, 0x3e
	ja	.label_204
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	nop	
	bt	rsi, rdx
	lea	rdi, [rdi]
	jae	.label_144
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_141
	lea	rsi, [rsi]
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_200
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_200:
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, r10
	jae	.label_252
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 0x22
.label_252:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_235
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x22
.label_235:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	nop	
	cmp	rax, r10
	lea	rsi, [rsi]
	jae	.label_247
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_247:
	nop	
	add	qword ptr [rsp + 0xf0], 4
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_136
.label_172:
	xor	eax, eax
	mov	rsp, rsp
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_136:
	test	r12b, r12b
	je	.label_245
	cmp	qword ptr [rsp + 0x140], 0
	nop	
	jne	.label_152
	jmp	.label_154
	nop	word ptr cs:[rax + rax]
.label_245:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xb7], 0
	lea	rdi, [rdi]
	je	.label_154
.label_152:
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	lea	rsi, [rsi]
	movzx	edx, cl
	mov	esi, 1
	mov	rsp, rsp
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_191
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_176
	jmp	.label_182
	nop	word ptr cs:[rax + rax]
.label_154:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_182
	jmp	.label_176
.label_191:
	mov	bl, r13b
	mov	rsi, r14
.label_182:
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_141
	mov	rsp, rsp
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_145
	nop	
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_145
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_163
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_163:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_199
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x24
.label_199:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_208
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_208:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_145:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_223
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_223:
	lea	rdi, [rdi]
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_193
.label_220:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_136
.label_147:
	mov	rsp, rsp
	add	rcx, rsi
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_238
	nop	word ptr cs:[rax + rax]
.label_158:
	mov	rbp, rbp
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_238:
	mov	rbp, rbp
	test	dl, dl
	mov	rbp, rbp
	je	.label_250
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	lea	rdi, [rdi]
	je	.label_131
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_138
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	lea	rsi, [rsi]
	mov	rsi, rbx
.label_138:
	nop	
	inc	qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xec], 0
	mov	rsp, rsp
	jmp	.label_131
	nop	dword ptr [rax]
.label_250:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_159
	cmp	r14d, 2
	jne	.label_206
	mov	rsp, rsp
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_206
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_171
	mov	rax, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	byte ptr [rax + rdx], 0x27
.label_171:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_181
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_181:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	nop	
	lea	rax, [rax + 2]
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_187
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_187:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_206:
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_209
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_209:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rdi, [rdi]
	inc	rax
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_211
	mov	dl, r13b
	mov	rsp, rsp
	shr	dl, 6
	or	dl, 0x30
	mov	rsp, rsp
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	lea	rsi, [rsi]
	mov	rsi, rdi
.label_211:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_216
	mov	dl, r13b
	shr	dl, 3
	nop	
	and	dl, 7
	or	dl, 0x30
	nop	
	mov	rbx, rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_216:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	rsp, rsp
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_131:
	mov	rsp, rsp
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_176
	test	r11b, 1
	lea	rdi, [rdi]
	je	.label_244
	mov	bl, al
	lea	rdi, [rdi]
	and	bl, 1
	mov	r14, rdi
	jne	.label_146
	lea	rsi, [rsi]
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_249
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_249:
	mov	rsi, qword ptr [rsp + 0xf0]
	nop	
	inc	rsi
	cmp	rsi, r10
	nop	
	jae	.label_139
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rdi + rsi], 0x27
.label_139:
	add	qword ptr [rsp + 0xf0], 2
	mov	rbp, rbp
	xor	r11d, r11d
	mov	rsi, rbx
	lea	rdi, [rdi]
	jmp	.label_146
	nop	word ptr cs:[rax + rax]
.label_244:
	lea	rsi, [rsi]
	mov	r14, rdi
.label_146:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_158
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rsi + rbx], r13b
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	jmp	.label_158
	nop	word ptr cs:[rax + rax]
.label_176:
	lea	rsi, [rsi]
	test	r11b, 1
	je	.label_178
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_178
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_189
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rax + rcx], 0x27
.label_189:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_186
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_186:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 2
	lea	rdi, [rdi]
	xor	r11d, r11d
	nop	
	mov	bl, r13b
	lea	rsi, [rsi]
	jmp	.label_193
	nop	word ptr cs:[rax + rax]
.label_178:
	lea	rsi, [rsi]
	mov	bl, r13b
	mov	r14, rdi
.label_193:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_198
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], bl
	lea	rdi, [rdi]
	jmp	.label_198
.label_237:
	nop	
	mov	rcx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	jmp	.label_149
.label_239:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_149:
	cmp	rcx, r10
	jae	.label_217
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_217:
	lea	rsi, [rsi]
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	lea	rsi, [rsi]
	mov	r13b, 0x30
	cmp	edi, 2
	lea	rsi, [rsi]
	je	.label_224
	lea	rdx, [rsi + 1]
	lea	rsi, [rsi]
	cmp	rdx, rbp
	jae	.label_197
	nop	
	mov	dl, byte ptr [r9 + rdx]
	mov	rbp, rbp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	mov	rbp, rbp
	cmp	edx, 9
	mov	rsp, rsp
	ja	.label_236
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_201
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	nop	
	mov	rsi, rbx
.label_201:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_135
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsp, rsp
	mov	rsi, rbx
.label_135:
	mov	rsp, rsp
	add	rcx, 3
	xor	r15d, r15d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rdi, [rdi]
	jmp	.label_136
.label_224:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_136
.label_197:
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_136
.label_236:
	xor	r15d, r15d
	jmp	.label_136
.label_248:
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_160
.label_251:
	xor	r15d, r15d
	nop	
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	jmp	.label_168
.label_143:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	jae	.label_177
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_185:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	cmp	byte ptr [rax + rbx], 0
	nop	
	je	.label_179
	lea	rax, [rsi + rbx + 1]
	lea	rsi, [rsi]
	inc	rbx
	cmp	rax, rbp
	jb	.label_185
	xor	r15d, r15d
	nop	
	jmp	.label_160
.label_177:
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_168:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_160:
	mov	byte ptr [rsp + 0xa6], r8b
	lea	rdi, [rdi]
	jmp	.label_190
.label_179:
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_160
.label_204:
	lea	rdi, [rdi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_136
.label_144:
	mov	rsp, rsp
	xor	r15d, r15d
	nop	
	mov	rsi, rbx
	jmp	.label_136
	nop	word ptr cs:[rax + rax]
.label_229:
	cmp	qword ptr [rsp + 0xf0], 0
	mov	rbp, rbp
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	and	cl, 1
	je	.label_205
	lea	rdi, [rdi]
	or	dl, al
	lea	rdi, [rdi]
	je	.label_159
.label_205:
	nop	
	mov	qword ptr [rsp + 0xc0], rbp
	mov	rsp, rsp
	mov	r12, r9
	nop	
	test	cl, cl
	setne	al
	lea	rdi, [rdi]
	cmp	r14d, 2
	nop	
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	lea	rdi, [rdi]
	test	sil, 1
	lea	rdi, [rdi]
	je	.label_180
	lea	rdi, [rdi]
	or	dl, al
	jne	.label_180
	lea	rdi, [rdi]
	test	r8b, 1
	jne	.label_233
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_180
	lea	rdi, [rdi]
	test	r10, r10
	nop	
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	r15b, dl
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_240
.label_180:
	nop	
	mov	rdx, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	test	rdx, rdx
	je	.label_133
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_133
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_133
	inc	rdx
	nop	dword ptr [rax + rax]
.label_151:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_142
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_142:
	nop	
	inc	qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	inc	rdx
	test	al, al
	jne	.label_151
.label_133:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_157
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_157
.label_141:
	lea	rdi, [rdi]
	mov	rdx, r9
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_202:
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rsi, [rsi]
	mov	r8d, 4
	cmove	r8d, r14d
	lea	rsi, [rsi]
	cmp	r14d, 2
	mov	rbp, rbp
	cmovne	r8d, r14d
	nop	
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	nop	
	mov	rax, qword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	rsi, r10
	mov	rcx, rbp
.label_218:
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_157:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	nop	
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
.label_166:
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_202
.label_159:
	lea	rsi, [rsi]
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rbp, rbp
	jmp	.label_202
.label_233:
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x140]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	mov	r8d, 5
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x80]
	lea	rdi, [rdi]
	mov	rdx, r12
	nop	
	mov	rcx, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	jmp	.label_218
.label_194:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053f0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	lea	rdi, [rdi]
	mov	rax, rdx
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rcx, rax
	mov	rbp, rbp
	jmp	quotearg_alloc_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405410

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
	mov	qword ptr [rsp + 0x28], r14
	mov	r15, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r12, rcx
	mov	rbp, rbp
	call	__errno_location
	mov	qword ptr [rsp + 0x38], rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x44], ecx
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
	call	xcharalloc
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
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	rax, rax
	mov	ecx, dword ptr [rsp + 0x44]
	mov	rdx, qword ptr [rsp + 0x38]
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
	#Procedure 0x405560
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
.label_258:
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
	jl	.label_258
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
	mov	qword ptr [word ptr [rip + label_255]], OFFSET FLAT:slot0
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
	#Procedure 0x405620

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x405630

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
	mov	qword ptr [rsp + 0x40], rsi
	mov	ebx, edi
	call	__errno_location
	test	ebx, ebx
	js	.label_265
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_260
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_263
.label_260:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_261
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
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
	jne	.label_264
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_264:
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
.label_263:
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
	mov	qword ptr [rsp + 0x20], rcx
	mov	r8d, dword ptr [rcx]
	mov	r12d, dword ptr [rcx + 4]
	or	r12d, 1
	mov	rsp, rsp
	lea	rdx, [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rdx
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
	mov	rdx, qword ptr [rsp + 0x40]
	nop	
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	nop	
	mov	r14, rax
	cmp	r15, r14
	ja	.label_262
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
	je	.label_259
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_259:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	call	xcharalloc
	mov	rbx, rax
	nop	
	mov	qword ptr [rbp], rbx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rcx]
	nop	
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
.label_262:
	mov	rax, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x2c]
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
.label_265:
	lea	rdi, [rdi]
	call	abort
.label_261:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x4058a0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4058b0
	.globl quotearg
	.type quotearg, @function
quotearg:

	nop
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	rsi, rax
	jmp	quotearg_n
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058d0
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rcx, rdi
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsi, rcx
	lea	rsi, [rsi]
	mov	rdx, rax
	jmp	quotearg_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4058f0

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r14
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x40
	mov	rsp, rsp
	mov	rbx, rdx
	mov	ebp, edi
	nop	
	lea	r14, [rsp + 8]
	lea	rdi, [rdi]
	mov	rdi, r14
	call	quoting_options_from_style
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, rbx
	mov	rcx, r14
	call	quotearg_n_options
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405950

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	mov	rbp, rbp
	sub	rsp, 0x38
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	mov	rbp, rbp
	je	.label_266
	mov	dword ptr [rdi], esi
	nop	
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rdi + 0x34], eax
	lea	rsi, [rsi]
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	nop	
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rdi + 0x24], xmm2
	movups	xmmword ptr [rdi + 0x14], xmm1
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi + 4], xmm0
	lea	rdi, [rdi]
	mov	rax, rdi
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
.label_266:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4059c0

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x38
	nop	
	mov	r14, rcx
	lea	rdi, [rdi]
	mov	rbx, rdx
	lea	rsi, [rsi]
	mov	ebp, edi
	lea	rsi, [rsi]
	lea	r15, [rsp]
	nop	
	mov	rdi, r15
	call	quoting_options_from_style
	mov	edi, ebp
	nop	
	mov	rsi, rbx
	nop	
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r14
	nop	
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405a20

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	mov	rax, rsi
	mov	rbp, rbp
	mov	ecx, edi
	xor	edi, edi
	mov	esi, ecx
	mov	rbp, rbp
	mov	rdx, rax
	jmp	quotearg_n_style
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a40
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	mov	rax, rdx
	mov	rcx, rsi
	lea	rsi, [rsi]
	mov	edx, edi
	xor	edi, edi
	mov	esi, edx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_style_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a60

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x40
	mov	eax, edx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rbx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_267]]
	mov	qword ptr [rsp + 0x30], rcx
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_268]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_269]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	lea	r15, [rsp]
	lea	rsi, [rsi]
	mov	edx, 1
	mov	rsp, rsp
	mov	rdi, r15
	mov	esi, eax
	mov	rbp, rbp
	call	set_char_quoting
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsi, rbx
	nop	
	mov	rdx, r14
	mov	rsp, rsp
	mov	rcx, r15
	call	quotearg_n_options
	nop	
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	r15
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405b00

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	lea	rdi, [rdi]
	mov	rsi, -1
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rbp, rbp
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405b20

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	mov	esi, 0x3a
	mov	rbp, rbp
	jmp	quotearg_char
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b30
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b40

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r14, rdx
	mov	ebp, edi
	lea	rsi, [rsi]
	lea	rbx, [rsp + 8]
	mov	rdi, rbx
	mov	rbp, rbp
	call	quoting_options_from_style
	nop	
	mov	esi, 0x3a
	lea	rdi, [rdi]
	mov	edx, 1
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	call	set_char_quoting
	mov	rdx, -1
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rcx, rbx
	mov	rsp, rsp
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x40
	nop	
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405bb0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	lea	rsi, [rsi]
	mov	r8, -1
	nop	
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405bc0

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	r14, r8
	mov	rbp, rbp
	mov	rbx, rcx
	mov	ebp, edi
	mov	rax,  qword ptr [word ptr [rip + label_267]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_268]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_269]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	rdi, r15
	call	set_custom_quoting
	mov	edi, ebp
	nop	
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rdx, r14
	mov	rcx, r15
	mov	rsp, rsp
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405c50
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	mov	rax, rdx
	mov	rsp, rsp
	mov	rcx, rsi
	mov	rdx, rdi
	nop	
	xor	edi, edi
	mov	rsi, rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	jmp	quotearg_n_custom
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405c80
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	mov	rax, rcx
	mov	rcx, rdx
	mov	rbp, rbp
	mov	rdx, rsi
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	r8, rax
	mov	rsp, rsp
	jmp	quotearg_n_custom_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405cb0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405cc0
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	nop	
	mov	rcx, rdi
	xor	edi, edi
	lea	rdi, [rdi]
	mov	rsi, rcx
	mov	rdx, rax
	lea	rsi, [rsi]
	jmp	quote_n_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ce0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405cf0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	quote_n
	.section	.text
	.align	32
	#Procedure 0x405d00

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	nop	
	sub	rsp, 0x10
	mov	r14d, esi
	lea	rsi, [rsi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	mov	rbp, rbp
	call	dcgettext
	cmp	rax, rbx
	mov	rsp, rsp
	jne	.label_270
	mov	rsp, rsp
	call	locale_charset
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0
	mov	rsp, rsp
	mov	dword ptr [rsp], 0
	nop	
	mov	esi, 0x55
	mov	rbp, rbp
	mov	edx, 0x54
	mov	rsp, rsp
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	call	strcaseeq0
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_271
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	cmp	ecx, 0x60
	je	.label_270
	nop	
	mov	eax, OFFSET FLAT:.str.15_1
	jmp	.label_270
.label_271:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 8], 0x30
	mov	dword ptr [rsp], 0x33
	lea	rdi, [rdi]
	mov	esi, 0x47
	nop	
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	rbp, rbp
	mov	r8d, 0x38
	mov	rsp, rsp
	mov	r9d, 0x30
	mov	rdi, rbp
	call	strcaseeq0
	test	eax, eax
	mov	rbp, rbp
	je	.label_272
	nop	
	mov	eax, OFFSET FLAT:.str.17_2
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x60
	lea	rdi, [rdi]
	je	.label_270
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_270
.label_272:
	cmp	r14d, 9
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.10_1
	mov	eax, OFFSET FLAT:.str.12_1
	lea	rsi, [rsi]
	cmove	rax, rcx
.label_270:
	add	rsp, 0x10
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e30

	.globl strcaseeq0
	.type strcaseeq0, @function
strcaseeq0:
	mov	rsp, rsp
	push	rbp
	nop	
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	push	rax
	mov	rbp, rbp
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	nop	
	mov	r13d, edx
	lea	rsi, [rsi]
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	lea	rsi, [rsi]
	call	c_isupper
	movsx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_274
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	lea	rdi, [rdi]
	je	.label_273
	jmp	.label_275
.label_274:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rdi, [rdi]
	jne	.label_275
.label_273:
	mov	rsp, rsp
	mov	eax, 1
	test	bpl, bpl
	mov	rsp, rsp
	je	.label_275
	mov	al, byte ptr [rsp + 0x40]
	movsx	ecx, byte ptr [rsp + 0x48]
	lea	rsi, [rsi]
	mov	dword ptr [rsp], ecx
	movsx	esi, r13b
	movsx	edx, r12b
	nop	
	movsx	ecx, r15b
	nop	
	movsx	r8d, r14b
	mov	rbp, rbp
	movsx	r9d, al
	mov	rdi, rbx
	call	strcaseeq1
.label_275:
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ef0

	.globl strcaseeq1
	.type strcaseeq1, @function
strcaseeq1:
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rbp, rbp
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 4], r9d
	lea	rdi, [rdi]
	mov	r15d, r8d
	mov	rbp, rbp
	mov	r12d, ecx
	mov	r13d, edx
	mov	rsp, rsp
	mov	ebp, esi
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	r14b, byte ptr [rsp + 0x40]
	lea	rsi, [rsi]
	mov	edi, ebp
	lea	rdi, [rdi]
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 1]
	nop	
	test	al, al
	mov	rsp, rsp
	je	.label_278
	nop	
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	nop	
	je	.label_277
	lea	rsi, [rsi]
	jmp	.label_276
.label_278:
	lea	rsi, [rsi]
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_276
.label_277:
	lea	rdi, [rdi]
	mov	eax, 1
	test	bpl, bpl
	lea	rdi, [rdi]
	je	.label_276
	nop	
	movsx	esi, r13b
	mov	rbp, rbp
	movsx	edx, r12b
	lea	rdi, [rdi]
	movsx	ecx, r15b
	mov	eax, dword ptr [rsp + 4]
	movsx	r8d, al
	lea	rdi, [rdi]
	movsx	r9d, r14b
	mov	rbp, rbp
	mov	rdi, rbx
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	jmp	strcaseeq2
.label_276:
	add	rsp, 8
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405fe0

	.globl strcaseeq2
	.type strcaseeq2, @function
strcaseeq2:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	r14d, r9d
	lea	rdi, [rdi]
	mov	r15d, r8d
	mov	rbp, rbp
	mov	r12d, ecx
	mov	r13d, edx
	lea	rsi, [rsi]
	mov	ebp, esi
	mov	rbx, rdi
	nop	
	mov	edi, ebp
	call	c_isupper
	mov	rbp, rbp
	movsx	ecx, byte ptr [rbx + 2]
	test	al, al
	je	.label_281
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_280
	jmp	.label_279
.label_281:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	movzx	edx, bpl
	mov	rsp, rsp
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_279
.label_280:
	nop	
	mov	eax, 1
	lea	rsi, [rsi]
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_279
	lea	rdi, [rdi]
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	jmp	strcaseeq3
.label_279:
	mov	rsp, rsp
	add	rsp, 8
	mov	rbp, rbp
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
	#Procedure 0x4060b0

	.globl strcaseeq3
	.type strcaseeq3, @function
strcaseeq3:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	r14d, r8d
	mov	r15d, ecx
	mov	rbp, rbp
	mov	r12d, edx
	lea	rdi, [rdi]
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	nop	
	call	c_isupper
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rbx + 3]
	nop	
	test	al, al
	je	.label_284
	lea	rsi, [rsi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_283
	jmp	.label_282
.label_284:
	xor	eax, eax
	mov	rsp, rsp
	movzx	edx, bpl
	movzx	ecx, cl
	nop	
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_282
.label_283:
	lea	rsi, [rsi]
	mov	eax, 1
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_282
	movsx	esi, r12b
	mov	rsp, rsp
	movsx	edx, r15b
	mov	rsp, rsp
	movsx	ecx, r14b
	nop	
	mov	rdi, rbx
	pop	rbx
	nop	
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq4
.label_282:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406150

	.globl strcaseeq4
	.type strcaseeq4, @function
strcaseeq4:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	r14d, ecx
	lea	rdi, [rdi]
	mov	r15d, edx
	nop	
	mov	ebp, esi
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	edi, ebp
	nop	
	call	c_isupper
	nop	
	movsx	ecx, byte ptr [rbx + 4]
	mov	rbp, rbp
	test	al, al
	mov	rbp, rbp
	je	.label_287
	lea	rdi, [rdi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	mov	rsp, rsp
	je	.label_286
	nop	
	jmp	.label_285
.label_287:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_285
.label_286:
	mov	eax, 1
	test	bpl, bpl
	je	.label_285
	lea	rdi, [rdi]
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	jmp	strcaseeq5
.label_285:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061f0

	.globl strcaseeq5
	.type strcaseeq5, @function
strcaseeq5:
	push	rbp
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rsi, [rsi]
	mov	r14d, edx
	mov	rsp, rsp
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 5]
	lea	rsi, [rsi]
	test	al, al
	nop	
	je	.label_290
	mov	rsp, rsp
	and	ecx, 0xffffffdf
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ecx, ebp
	lea	rsi, [rsi]
	je	.label_289
	lea	rsi, [rsi]
	jmp	.label_288
.label_290:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	nop	
	jne	.label_288
.label_289:
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	test	bpl, bpl
	nop	
	je	.label_288
	movsx	esi, r14b
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	rbp
	jmp	strcaseeq6
.label_288:
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406280

	.globl strcaseeq6
	.type strcaseeq6, @function
strcaseeq6:
	nop
	push	rbp
	mov	rbp, rbp
	push	rbx
	push	rax
	nop	
	mov	ebp, esi
	nop	
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	mov	rsp, rsp
	movsx	ecx, byte ptr [rbx + 6]
	test	al, al
	mov	rsp, rsp
	je	.label_293
	and	ecx, 0xffffffdf
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_292
	jmp	.label_291
.label_293:
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_291
.label_292:
	mov	eax, 1
	nop	
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_291
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_291:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4062f0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	xor	edi, edi
	lea	rsi, [rsi]
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	je	.label_294
	mov	eax, 1
	mov	rsp, rsp
	test	ecx, 0xffffffdf
	lea	rdi, [rdi]
	jne	.label_296
	mov	rbp, rbp
	jmp	.label_295
.label_294:
	mov	eax, 1
	lea	rsi, [rsi]
	test	cl, cl
	je	.label_295
.label_296:
	xor	eax, eax
.label_295:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406340

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rsi, [rsi]
	lea	rsi, [rsp]
	mov	edi, OFFSET FLAT:.str_1
	mov	rsp, rsp
	call	__lstat
	lea	rdi, [rdi]
	mov	ecx, eax
	xor	eax, eax
	lea	rdi, [rdi]
	test	ecx, ecx
	jne	.label_297
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	mov	qword ptr [rbx + 8], rax
	lea	rsi, [rsi]
	mov	rax, rbx
.label_297:
	mov	rsp, rsp
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x4063a0

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
	je	.label_302
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_6
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_300
.label_302:
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
.label_300:
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
	ja	.label_306
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_298]]
.label_900:
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
.label_306:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_1
	jmp	.label_304
.label_901:
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
.label_902:
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
.label_903:
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
	jmp	.label_305
.label_904:
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
	jmp	.label_301
.label_905:
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
	jmp	.label_299
.label_906:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_2
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
.label_299:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_301:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_305:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_307
.label_908:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_2
.label_304:
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
	jmp	.label_303
.label_907:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_2
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
.label_303:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_307:
	mov	rbp, rbp
	call	__fprintf_chk
.label_899:
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
	#Procedure 0x406790
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_308:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_308
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4067c0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_312:
	nop	
	movsxd	r10, dword ptr [r8]
	lea	rdi, [rdi]
	cmp	r10, 0x28
	ja	.label_309
	mov	r11, r10
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	rbp, rbp
	mov	dword ptr [r8], eax
	mov	rsp, rsp
	jmp	.label_311
	nop	word ptr cs:[rax + rax]
.label_309:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_311:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_310
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_312
.label_310:
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
	#Procedure 0x406850

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	nop	
	je	.label_313
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x30], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x40], xmm1
	nop	
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	nop	
	movaps	xmmword ptr [rsp + 0x70], xmm4
	nop	
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_313:
	mov	qword ptr [rsp + 0x28], r9
	nop	
	mov	qword ptr [rsp + 0x20], r8
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	mov	rbp, rbp
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], 0x20
	lea	r8, [rsp + 0xb0]
	mov	rsp, rsp
	call	version_etc_va
	lea	rdi, [rdi]
	add	rsp, 0xc8
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406900
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
	mov	edx, OFFSET FLAT:.str.15_2
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
	.align	32
	#Procedure 0x406990
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rsp, rsp
	div	rsi
	mov	rbp, rbp
	cmp	rax, rdi
	mov	rbp, rbp
	jb	.label_314
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_314:
	nop	
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4069d0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_315
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_316
.label_315:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_316:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a00
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	lea	rdi, [rdi]
	mov	rcx, rdx
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	edx, edx
	nop	
	div	rcx
	cmp	rax, rsi
	mov	rbp, rbp
	jb	.label_317
	imul	rcx, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	jmp	xrealloc
.label_317:
	push	rax
	mov	rsp, rsp
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a40

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_318
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_318
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_318:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_319
	test	rax, rax
	nop	
	je	.label_320
.label_319:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_320:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a90

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	nop	
	mov	r8, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_321
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_322
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_323
.label_321:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_324
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_324:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_325
.label_323:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	r8, rcx
	nop	
	mov	rsi, r8
	mov	rbp, rbp
	pop	rax
	lea	rdi, [rdi]
	jmp	xrealloc
.label_322:
	call	xalloc_die
.label_325:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406b30

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	jmp	xmalloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b40
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	mov	rsp, rsp
	jmp	x2nrealloc
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406b50
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	r14, rdi
	nop	
	call	xmalloc
	mov	rbx, rax
	xor	esi, esi
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rdx, r14
	call	memset
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b90
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
	jb	.label_326
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_326
	pop	rcx
	ret	
.label_326:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x406bc0

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	rbx
	nop	
	mov	r15, rsi
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rdi, r15
	call	xmalloc
	mov	rsp, rsp
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, r15
	lea	rdi, [rdi]
	call	memcpy
	mov	rax, rbx
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c10

	.globl xstrdup
	.type xstrdup, @function
xstrdup:
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	rsp, rsp
	call	strlen
	lea	rsi, [rax + 1]
	mov	rdi, rbx
	mov	rbp, rbp
	pop	rbx
	jmp	xmemdup
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406c30

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
	#Procedure 0x406c80

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_328
	mov	rsp, rsp
	pop	rcx
	ret	
.label_328:
	nop	
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0x16
	lea	rdi, [rdi]
	jne	.label_327
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_7
	nop	
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xfts_open
	lea	rsi, [rsi]
	call	__assert_fail
.label_327:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ce0

	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:
	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	mov	rbp, rbp
	je	.label_329
	cmp	ecx, 0x11
	lea	rdi, [rdi]
	jne	.label_330
	mov	rsp, rsp
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_329:
	lea	rsi, [rsi]
	ret	
.label_330:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x406d10

	.globl xstrtoul
	.type xstrtoul, @function
xstrtoul:
	push	rbp
	push	r15
	nop	
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	lea	rsi, [rsi]
	mov	r13, r8
	nop	
	mov	r14d, edx
	mov	rbp, rsi
	mov	rsp, rsp
	mov	rbx, rdi
	cmp	r14d, 0x25
	lea	rsi, [rsi]
	jae	.label_336
	mov	rsp, rsp
	mov	qword ptr [rsp], rcx
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	r12, rax
	mov	rbp, rbp
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	
.label_353:
	mov	rbp, rbp
	movzx	eax, byte ptr [rdx]
	inc	rdx
	mov	rbp, rbp
	test	byte ptr [rcx + rax*2 + 1], 0x20
	lea	rdi, [rdi]
	jne	.label_353
	mov	rbp, rbp
	test	rbp, rbp
	lea	rdi, [rdi]
	lea	rcx, [rsp + 0x10]
	lea	rsi, [rsi]
	cmovne	rcx, rbp
	movzx	eax, al
	mov	rsp, rsp
	mov	r15d, 4
	cmp	eax, 0x2d
	lea	rsi, [rsi]
	je	.label_333
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rcx
	mov	rsi, rbp
	mov	edx, r14d
	call	strtoul
	mov	rcx, rbp
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rcx]
	mov	rbp, rbp
	cmp	rax, rbx
	je	.label_347
	lea	rsi, [rsi]
	mov	eax, dword ptr [r12]
	lea	rsi, [rsi]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	lea	rsi, [rsi]
	je	.label_350
	cmp	eax, 0x22
	jne	.label_333
	mov	r12d, 1
.label_350:
	mov	rbp, rbp
	test	rbp, rbp
	mov	rsp, rsp
	jne	.label_344
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	jmp	.label_337
.label_347:
	lea	rdi, [rdi]
	mov	rbp, r13
	nop	
	test	rbp, rbp
	mov	rsp, rsp
	je	.label_333
	mov	rbx, rcx
	nop	
	movsx	esi, byte ptr [rax]
	mov	rbp, rbp
	test	esi, esi
	mov	rbp, rbp
	je	.label_333
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	nop	
	mov	rcx, rbx
	mov	rsp, rsp
	je	.label_333
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], 1
	nop	
	xor	r12d, r12d
.label_344:
	mov	rax, qword ptr [rcx]
	mov	rsp, rsp
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_352
	mov	rsp, rsp
	mov	r13, rcx
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_339
	lea	rsi, [rsi]
	mov	r15d, 0x400
	lea	rdi, [rdi]
	mov	r14d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	lea	rdi, [rdi]
	ja	.label_341
	nop	
	movabs	rax, 0x814400308945
	mov	rbp, rbp
	bt	rax, rbx
	jae	.label_345
	mov	esi, 0x30
	mov	rdi, rbp
	mov	rsp, rsp
	call	strchr
	mov	r14d, 1
	mov	rbx, r13
	nop	
	test	rax, rax
	nop	
	je	.label_338
	mov	rax, qword ptr [rbx]
	movsx	ecx, byte ptr [rax + 1]
	mov	r14d, 1
	mov	rbp, rbp
	cmp	ecx, 0x42
	lea	rsi, [rsi]
	je	.label_332
	cmp	ecx, 0x44
	je	.label_332
	cmp	ecx, 0x69
	lea	rdi, [rdi]
	jne	.label_338
	mov	rsp, rsp
	movzx	eax, byte ptr [rax + 2]
	mov	r14d, 3
	nop	
	cmp	eax, 0x42
	je	.label_338
	mov	r14d, 1
	jmp	.label_338
.label_332:
	mov	rbp, rbp
	mov	r15d, 0x3e8
	mov	r14d, 2
.label_338:
	mov	rax, qword ptr [rbx]
	nop	
	movsx	eax, byte ptr [rax]
	cmp	eax, 0x59
	jg	.label_346
	mov	rsp, rsp
	lea	ecx, [rax - 0x42]
	cmp	ecx, 0xe
	ja	.label_349
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_343]]
.label_887:
	lea	rdi, [rsp + 8]
	mov	esi, 0x400
	jmp	.label_334
.label_346:
	cmp	eax, 0x73
	jg	.label_354
	nop	
	lea	ecx, [rax - 0x62]
	cmp	ecx, 0xb
	ja	.label_355
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_331]]
.label_829:
	mov	rbp, rbp
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	lea	rdi, [rdi]
	jmp	.label_334
.label_349:
	cmp	eax, 0x54
	je	.label_342
	lea	rdi, [rdi]
	cmp	eax, 0x59
	lea	rdi, [rdi]
	jne	.label_339
	mov	rbp, rbp
	lea	rdi, [rsp + 8]
	mov	edx, 8
	mov	rsp, rsp
	jmp	.label_335
.label_354:
	cmp	eax, 0x74
	nop	
	je	.label_342
	mov	rsp, rsp
	cmp	eax, 0x77
	jne	.label_339
	nop	
	lea	rdi, [rsp + 8]
	nop	
	mov	esi, 2
.label_334:
	lea	rsi, [rsi]
	call	bkm_scale
	lea	rdi, [rdi]
	jmp	.label_351
.label_830:
	lea	rdi, [rsp + 8]
	mov	edx, 3
	jmp	.label_335
.label_831:
	lea	rdi, [rsp + 8]
	mov	edx, 1
	lea	rsi, [rsi]
	jmp	.label_335
.label_832:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, 2
	jmp	.label_335
.label_342:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	mov	edx, 4
	nop	
	jmp	.label_335
.label_355:
	lea	rdi, [rdi]
	cmp	eax, 0x5a
	jne	.label_339
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	mov	edx, 7
	jmp	.label_335
.label_339:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	or	r12d, 2
	lea	rdi, [rdi]
	jmp	.label_348
.label_888:
	lea	rdi, [rsp + 8]
	lea	rsi, [rsi]
	mov	edx, 6
	lea	rsi, [rsi]
	jmp	.label_335
.label_889:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 8]
	mov	edx, 5
.label_335:
	nop	
	mov	esi, r15d
	call	bkm_scale_by_power
.label_351:
	nop	
	or	eax, r12d
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx]
	nop	
	lea	rdx, [rcx + r14]
	lea	rsi, [rsi]
	mov	qword ptr [rbx], rdx
	nop	
	cmp	byte ptr [rcx + r14], 0
	je	.label_340
	nop	
	or	eax, 2
.label_340:
	mov	r12d, eax
.label_352:
	nop	
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rsp + 8]
.label_337:
	mov	qword ptr [rcx], rax
.label_348:
	lea	rsi, [rsi]
	mov	r15d, r12d
.label_333:
	mov	eax, r15d
	nop	
	add	rsp, 0x18
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
.label_341:
	mov	rbp, rbp
	mov	rbx, r13
	nop	
	jmp	.label_338
.label_345:
	mov	rbp, rbp
	mov	rbx, r13
	mov	rsp, rsp
	jmp	.label_338
.label_336:
	mov	edi, OFFSET FLAT:.str_8
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_6
	lea	rsi, [rsi]
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoul
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407130

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	movsxd	rcx, esi
	mov	rsp, rsp
	mov	rsi, -1
	mov	rax, -1
	xor	edx, edx
	div	rcx
	mov	rdx, qword ptr [rdi]
	imul	rcx, rdx
	mov	rbp, rbp
	cmp	rax, rdx
	cmovb	rcx, rsi
	lea	rsi, [rsi]
	sbb	eax, eax
	and	eax, 1
	mov	rbp, rbp
	mov	qword ptr [rdi], rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407170

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	nop	
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	mov	rbp, rbp
	mov	r14d, esi
	mov	rbp, rbp
	mov	r15, rdi
	mov	rsp, rsp
	xor	ebx, ebx
	mov	rbp, rbp
	test	ebp, ebp
	je	.label_356
	nop	word ptr cs:[rax + rax]
.label_357:
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	esi, r14d
	nop	
	call	bkm_scale
	lea	rdi, [rdi]
	or	ebx, eax
	dec	ebp
	lea	rdi, [rdi]
	jne	.label_357
.label_356:
	mov	rsp, rsp
	mov	eax, ebx
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4071e0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_358
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_359
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
	je	.label_359
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
.label_358:
	mov	ecx, 1
.label_359:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407250

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
	mov	rbp, rdx
	mov	r14d, esi
	mov	r15, rdi
	cmp	r14d, 0x1000
	jae	.label_360
	mov	rbp, rbp
	mov	eax, r14d
	lea	rdi, [rdi]
	and	eax, 0x204
	nop	
	cmp	eax, 0x204
	je	.label_360
	mov	rsp, rsp
	test	r14b, 0x12
	nop	
	je	.label_360
	mov	rsp, rsp
	mov	edi, 0x80
	mov	rsp, rsp
	call	malloc
	mov	r13, rax
	xor	eax, eax
	nop	
	test	r13, r13
	lea	rdi, [rdi]
	je	.label_373
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [r13 + 0x70], xmm0
	movups	xmmword ptr [r13 + 0x60], xmm0
	movups	xmmword ptr [r13 + 0x50], xmm0
	movups	xmmword ptr [r13 + 0x40], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [r13 + 0x30], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [r13 + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [r13 + 0x10], xmm0
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [r13 + 0x40], rbp
	mov	eax, r14d
	and	eax, 0xfffffdfb
	mov	rsp, rsp
	or	eax, 4
	lea	rdi, [rdi]
	test	r14b, 2
	lea	rdi, [rdi]
	cmove	eax, r14d
	lea	rdi, [rdi]
	mov	dword ptr [r13 + 0x48], eax
	mov	rbp, rbp
	mov	dword ptr [r13 + 0x2c], 0xffffff9c
	mov	rdi, r15
	call	fts_maxarglen
	lea	rdi, [rdi]
	cmp	rax, 0x1000
	mov	esi, 0x1000
	cmova	rsi, rax
	mov	rbp, rbp
	mov	rdi, r13
	call	fts_palloc
	nop	
	test	al, al
	je	.label_365
	mov	rsp, rsp
	xor	r12d, r12d
	mov	rsp, rsp
	cmp	qword ptr [r15], 0
	je	.label_378
	mov	esi, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rdi, r13
	mov	rsp, rsp
	call	fts_alloc
	mov	r12, rax
	lea	rsi, [rsi]
	test	r12, r12
	je	.label_361
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x58], -1
	nop	
	mov	qword ptr [r12 + 0x68], -1
.label_378:
	mov	byte ptr [rsp + 0x27], 1
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_371
	mov	al, byte ptr [r13 + 0x49]
	lea	rsi, [rsi]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0x27], al
.label_371:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], r13
	mov	r13, qword ptr [r15]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rax
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_375
	mov	qword ptr [rsp + 0x18], r12
	mov	qword ptr [rsp + 0x10], rbp
	and	r14d, 0x800
	mov	rbp, rbp
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	r12d, r12d
	nop	
.label_368:
	nop	
	mov	rdi, r13
	call	strlen
	mov	rbp, rbp
	test	r14d, r14d
	lea	rdi, [rdi]
	jne	.label_366
	mov	rsp, rsp
	cmp	rax, 3
	jb	.label_366
	mov	rbp, rbp
	cmp	rax, 2
	jb	.label_366
	movzx	ecx, byte ptr [rax + r13 - 1]
	mov	rbp, rbp
	cmp	ecx, 0x2f
	jne	.label_366
	nop	word ptr cs:[rax + rax]
.label_374:
	mov	rsp, rsp
	movzx	ecx, byte ptr [r13 + rax - 2]
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	jne	.label_366
	lea	rsi, [rsi]
	dec	rax
	cmp	rax, 1
	lea	rdi, [rdi]
	ja	.label_374
.label_366:
	mov	rsp, rsp
	mov	rsi, qword ptr [r15]
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rdx, rax
	call	fts_alloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_364
	mov	qword ptr [rbp + 0x58], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbp + 8], rax
	mov	rax, rbp
	add	rax, 0x108
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 0x30], rax
	mov	rbx, qword ptr [rsp + 0x30]
	test	rbx, rbx
	setne	al
	lea	rdi, [rdi]
	and	al, byte ptr [rsp + 0x27]
	movzx	eax, al
	cmp	eax, 1
	nop	
	jne	.label_369
	lea	rdi, [rdi]
	mov	word ptr [rbp + 0x70], 0xb
	lea	rsi, [rsi]
	mov	esi, 1
	mov	rdi, rbp
	mov	rsp, rsp
	call	fts_set_stat_required
	lea	rsi, [rsi]
	jmp	.label_379
.label_369:
	xor	edx, edx
	mov	rdi, r13
	lea	rdi, [rdi]
	mov	rsi, rbp
	lea	rdi, [rdi]
	call	fts_stat
	lea	rsi, [rsi]
	mov	word ptr [rbp + 0x70], ax
.label_379:
	cmp	qword ptr [rsp + 0x10], 0
	mov	rbp, rbp
	je	.label_376
	mov	qword ptr [rbp + 0x10], rbx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rbp
	jmp	.label_362
.label_376:
	mov	rbp, rbp
	mov	qword ptr [rbp + 0x10], 0
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_372
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x10], rbp
	nop	
	mov	qword ptr [rsp + 8], rbp
	jmp	.label_362
.label_372:
	mov	rbp, rbp
	mov	rax, rbp
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x30], rbp
	nop	word ptr cs:[rax + rax]
.label_362:
	lea	rsi, [rsi]
	inc	r12
	mov	r13, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	add	r15, 8
	test	r13, r13
	nop	
	jne	.label_368
	cmp	qword ptr [rsp + 0x10], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	je	.label_363
	cmp	r12, 2
	mov	rbp, rbp
	jb	.label_363
	nop	
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rdx, r12
	mov	rsp, rsp
	call	fts_sort
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rax
.label_363:
	mov	r12, qword ptr [rsp + 0x18]
.label_375:
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str_0
	xor	edx, edx
	mov	r13, qword ptr [rsp + 0x28]
	mov	rdi, r13
	call	fts_alloc
	mov	rsp, rsp
	mov	qword ptr [r13], rax
	test	rax, rax
	nop	
	je	.label_377
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], rbx
	mov	rax, qword ptr [r13]
	mov	word ptr [rax + 0x70], 9
	mov	rax, qword ptr [r13]
	mov	qword ptr [rax + 0x58], 1
	mov	rdi, r13
	mov	rsp, rsp
	call	setup_dir
	test	al, al
	nop	
	je	.label_367
	movzx	eax, word ptr [r13 + 0x48]
	mov	rbp, rbp
	test	ax, 0x204
	mov	rsp, rsp
	jne	.label_370
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str_9
	nop	
	mov	rdi, r13
	call	diropen
	mov	dword ptr [r13 + 0x28], eax
	mov	rbp, rbp
	test	eax, eax
	nop	
	jns	.label_370
	or	byte ptr [r13 + 0x48], 4
.label_370:
	mov	rsp, rsp
	mov	rdi, r13
	mov	rsp, rsp
	add	rdi, 0x60
	lea	rdi, [rdi]
	mov	esi, 0xffffffff
	call	i_ring_init
	nop	
	mov	rax, r13
	nop	
	jmp	.label_373
.label_360:
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0x16
	xor	eax, eax
.label_373:
	mov	rbp, rbp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_364:
	mov	r12, qword ptr [rsp + 0x18]
.label_377:
	mov	rbx, qword ptr [rsp + 0x30]
.label_367:
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rbp, rbp
	call	fts_lfree
	mov	rdi, r12
	lea	rsi, [rsi]
	call	free
.label_361:
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
.label_365:
	nop	
	mov	rdi, r13
	nop	
	call	free
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_373
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4076e0

	.globl fts_maxarglen
	.type fts_maxarglen, @function
fts_maxarglen:
	mov	rsp, rsp
	push	r14
	push	rbx
	nop	
	push	rax
	nop	
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	mov	r14d, 1
	test	rdi, rdi
	je	.label_380
	mov	rsp, rsp
	add	rbx, 8
	mov	rbp, rbp
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_381:
	lea	rdi, [rdi]
	call	strlen
	cmp	rax, r14
	lea	rsi, [rsi]
	cmova	r14, rax
	nop	
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_381
	inc	r14
.label_380:
	mov	rax, r14
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407750

	.globl fts_palloc
	.type fts_palloc, @function
fts_palloc:
	push	rbx
	mov	rbx, rdi
	nop	
	add	rsi, 0x100
	lea	rdi, [rdi]
	add	rsi, qword ptr [rbx + 0x30]
	jae	.label_382
	mov	rdi, qword ptr [rbx + 0x20]
	lea	rdi, [rdi]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0x24
	nop	
	xor	eax, eax
	nop	
	pop	rbx
	ret	
.label_382:
	mov	qword ptr [rbx + 0x30], rsi
	nop	
	mov	rdi, qword ptr [rbx + 0x20]
	call	realloc
	test	rax, rax
	je	.label_383
	mov	qword ptr [rbx + 0x20], rax
	mov	al, 1
	mov	rbp, rbp
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_383:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	xor	eax, eax
	pop	rbx
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4077d0

	.globl fts_alloc
	.type fts_alloc, @function
fts_alloc:
	push	r15
	mov	rsp, rsp
	push	r14
	push	r12
	push	rbx
	lea	rdi, [rdi]
	push	rax
	lea	rsi, [rsi]
	mov	r15, rdx
	nop	
	mov	r12, rsi
	lea	rsi, [rsi]
	mov	r14, rdi
	lea	rdi, [r15 + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	lea	rsi, [rsi]
	mov	rbx, rax
	xor	eax, eax
	nop	
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_384
	mov	rdi, rbx
	lea	rdi, [rdi]
	add	rdi, 0x108
	lea	rdi, [rdi]
	mov	rsi, r12
	mov	rbp, rbp
	mov	rdx, r15
	lea	rdi, [rdi]
	call	memcpy
	mov	byte ptr [rbx + r15 + 0x108], 0
	mov	qword ptr [rbx + 0x60], r15
	mov	qword ptr [rbx + 0x50], r14
	mov	rbp, rbp
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rbx + 0x38], rax
	mov	dword ptr [rbx + 0x40], 0
	nop	
	mov	qword ptr [rbx + 0x18], 0
	nop	
	mov	word ptr [rbx + 0x72], 0
	lea	rsi, [rsi]
	mov	word ptr [rbx + 0x74], 3
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rbx + 0x20], xmm0
	lea	rsi, [rsi]
	mov	rax, rbx
.label_384:
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4078a0

	.globl fts_set_stat_required
	.type fts_set_stat_required, @function
fts_set_stat_required:
	lea	rdi, [rdi]
	movzx	eax, word ptr [rdi + 0x70]
	nop	
	cmp	eax, 0xb
	jne	.label_385
	movzx	eax, sil
	inc	rax
	nop	
	mov	qword ptr [rdi + 0xa8], rax
	ret	
.label_385:
	push	rax
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4078d0

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	r15
	nop	
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	cmp	qword ptr [r15 + 0x58], 0
	lea	rsi, [rsi]
	jne	.label_390
	test	byte ptr [r14 + 0x48], 1
	je	.label_390
	nop	
	mov	dl, 1
.label_390:
	lea	rsi, [rsi]
	lea	rbx, [r15 + 0x78]
	mov	rbp, rbp
	test	dl, dl
	lea	rdi, [rdi]
	jne	.label_386
	lea	rdi, [rdi]
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 2
	jne	.label_386
	mov	rbp, rbp
	mov	edi, dword ptr [r14 + 0x2c]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + 0x30]
	nop	
	mov	ecx, 0x100
	mov	rdx, rbx
	mov	rsp, rsp
	call	fstatat
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_393
	call	__errno_location
	mov	rbp, rbp
	mov	eax, dword ptr [rax]
	lea	rdi, [rdi]
	jmp	.label_396
.label_386:
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x30]
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rbp, rbp
	call	stat
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_393
	lea	rdi, [rdi]
	call	__errno_location
	mov	r14, rax
	lea	rdi, [rdi]
	cmp	dword ptr [r14], 2
	jne	.label_389
	mov	rdi, qword ptr [r15 + 0x30]
	mov	rsi, rbx
	call	__lstat
	test	eax, eax
	nop	
	je	.label_387
.label_389:
	mov	rsp, rsp
	mov	eax, dword ptr [r14]
.label_396:
	mov	rsp, rsp
	mov	dword ptr [r15 + 0x40], eax
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbx + 0x80], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbx + 0x50], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	ax, 0xa
.label_388:
	movzx	eax, ax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	ret	
.label_393:
	nop	
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	mov	ax, 0xc
	cmp	ecx, 0xa000
	mov	rbp, rbp
	je	.label_388
	cmp	ecx, 0x8000
	lea	rsi, [rsi]
	je	.label_395
	cmp	ecx, 0x4000
	jne	.label_391
	mov	rax, qword ptr [r15 + 0x88]
	nop	
	mov	rcx, -1
	cmp	rax, 2
	mov	rbp, rbp
	jb	.label_392
	lea	rdi, [rdi]
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_392
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r14 + 0x48]
	mov	rsp, rsp
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_392:
	mov	qword ptr [r15 + 0x68], rcx
	mov	ax, 1
	movzx	ecx, byte ptr [r15 + 0x108]
	lea	rdi, [rdi]
	cmp	ecx, 0x2e
	mov	rsp, rsp
	jne	.label_388
	mov	cl, byte ptr [r15 + 0x109]
	test	cl, cl
	mov	rsp, rsp
	je	.label_394
	movzx	ecx, cl
	mov	rsp, rsp
	cmp	ecx, 0x2e
	jne	.label_388
	cmp	byte ptr [r15 + 0x10a], 0
	jne	.label_388
.label_394:
	mov	ax, 1
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x58], 0
	lea	rsi, [rsi]
	je	.label_388
	mov	ax, 5
	lea	rsi, [rsi]
	jmp	.label_388
.label_395:
	lea	rdi, [rdi]
	mov	ax, 8
	nop	
	jmp	.label_388
.label_391:
	mov	ax, 3
	mov	rsp, rsp
	jmp	.label_388
.label_387:
	mov	dword ptr [r14], 0
	mov	ax, 0xd
	jmp	.label_388
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407af0

	.globl fts_sort
	.type fts_sort, @function
fts_sort:
	mov	rsp, rsp
	push	r15
	mov	rbp, rbp
	push	r14
	lea	rsi, [rsi]
	push	r12
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	r12, qword ptr [r15 + 0x40]
	lea	rdi, [rdi]
	cmp	qword ptr [r15 + 0x38], r14
	jae	.label_402
	lea	rsi, [r14 + 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x38], rsi
	mov	rbp, rbp
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_400
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 0x10]
	shl	rsi, 3
	call	realloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_400
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x10], rax
.label_402:
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_403
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x10]
	nop	word ptr [rax + rax]
.label_397:
	lea	rdi, [rdi]
	mov	qword ptr [rax], rbx
	lea	rsi, [rsi]
	add	rax, 8
	mov	rbx, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	test	rbx, rbx
	mov	rsp, rsp
	jne	.label_397
.label_403:
	mov	rdi, qword ptr [r15 + 0x10]
	mov	edx, 8
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rcx, r12
	mov	rbp, rbp
	call	qsort
	mov	rax, qword ptr [r15 + 0x10]
	mov	rbx, qword ptr [rax]
	nop	
	cmp	r14, 1
	nop	
	je	.label_399
	nop	
	mov	ecx, 1
	sub	rcx, r14
	dec	r14
	mov	rsp, rsp
	lea	rdx, [rax + 8]
	nop	dword ptr [rax + rax]
.label_398:
	mov	rsi, qword ptr [rdx - 8]
	mov	rdi, qword ptr [rdx]
	nop	
	mov	qword ptr [rsi + 0x10], rdi
	add	rdx, 8
	mov	rsp, rsp
	inc	rcx
	jne	.label_398
	mov	rsp, rsp
	lea	rax, [rax + r14*8]
.label_399:
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	jmp	.label_401
.label_400:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x10], 0
	mov	qword ptr [r15 + 0x38], 0
.label_401:
	mov	rax, rbx
	add	rsp, 8
	nop	
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r14
	pop	r15
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c40

	.globl setup_dir
	.type setup_dir, @function
setup_dir:
	mov	rsp, rsp
	push	r14
	push	rbx
	mov	rbp, rbp
	push	rax
	lea	rsi, [rsi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	movzx	eax, word ptr [rbx + 0x48]
	test	ax, 0x102
	mov	rbp, rbp
	je	.label_404
	nop	
	xor	r14d, r14d
	mov	rsp, rsp
	mov	edi, 0x1f
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx + 0x58], rax
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	jne	.label_406
	jmp	.label_405
.label_404:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [rbx + 0x58], rax
	nop	
	test	rax, rax
	mov	rsp, rsp
	je	.label_407
	mov	rdi, rax
	call	cycle_check_init
.label_406:
	mov	r14b, 1
	jmp	.label_405
.label_407:
	mov	rbp, rbp
	xor	r14d, r14d
.label_405:
	mov	al, r14b
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	r14
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ce0

	.globl diropen
	.type diropen, @function
diropen:
	nop	
	mov	eax, dword ptr [rdi + 0x48]
	mov	edx, eax
	nop	
	and	edx, 0x10
	lea	rdi, [rdi]
	shl	edx, 0xd
	mov	rsp, rsp
	or	edx, 0x90900
	test	ah, 2
	nop	
	jne	.label_408
	xor	eax, eax
	mov	rdi, rsi
	nop	
	mov	esi, edx
	mov	rbp, rbp
	jmp	open_safer
.label_408:
	mov	edi, dword ptr [rdi + 0x2c]
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	jmp	openat_safer
	nop	
	.section	.text
	.align	32
	#Procedure 0x407d20

	.globl fts_lfree
	.type fts_lfree, @function
fts_lfree:
	push	r14
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	nop	
	je	.label_409
.label_411:
	mov	r14, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_410
	call	closedir
.label_410:
	nop	
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
	test	r14, r14
	mov	rbx, r14
	jne	.label_411
.label_409:
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r14
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407d70

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	lea	rsi, [rsi]
	push	r14
	push	rbx
	nop	
	push	rax
	nop	
	mov	r14, rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [r14]
	mov	rsp, rsp
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_420
	lea	rsi, [rsi]
	cmp	qword ptr [rdi + 0x58], 0
	lea	rsi, [rsi]
	js	.label_416
	nop	word ptr [rax + rax]
.label_423:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rdi + 0x10]
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_417
	mov	rbx, qword ptr [rdi + 8]
.label_417:
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	cmp	qword ptr [rbx + 0x58], 0
	lea	rsi, [rsi]
	mov	rdi, rbx
	jns	.label_423
	mov	rsp, rsp
	jmp	.label_415
.label_416:
	mov	rbx, rdi
.label_415:
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	call	free
.label_420:
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_418
	call	fts_lfree
.label_418:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	lea	rsi, [rsi]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_414
	lea	rdi, [rdi]
	xor	ebx, ebx
	test	al, 4
	jne	.label_413
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebx, ebx
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_419
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_419:
	mov	rbp, rbp
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	nop	
	test	ebx, ebx
	je	.label_412
	jmp	.label_413
.label_414:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebx, ebx
	test	edi, edi
	js	.label_413
	call	close
.label_412:
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_413
	nop	
	call	__errno_location
	nop	
	mov	ebx, dword ptr [rax]
.label_413:
	mov	rsp, rsp
	lea	rdi, [r14 + 0x60]
	lea	rsi, [rsi]
	call	fd_ring_clear
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	nop	
	je	.label_421
	nop	
	call	hash_free
.label_421:
	nop	
	mov	rdi, r14
	call	free_dir
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	free
	xor	eax, eax
	test	ebx, ebx
	mov	rsp, rsp
	je	.label_422
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], ebx
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
.label_422:
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r14
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407ed0

	.globl fd_ring_clear
	.type fd_ring_clear, @function
fd_ring_clear:
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	jmp	.label_424
	nop	dword ptr [rax]
.label_426:
	mov	edi, eax
	mov	rsp, rsp
	call	close
.label_424:
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	i_ring_empty
	lea	rdi, [rdi]
	test	al, al
	nop	
	jne	.label_425
	nop	
	mov	rdi, rbx
	call	i_ring_pop
	nop	
	test	eax, eax
	jns	.label_426
	jmp	.label_424
.label_425:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407f10

	.globl free_dir
	.type free_dir, @function
free_dir:
	mov	rbp, rbp
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	lea	rsi, [rsi]
	je	.label_427
	mov	rdi, qword ptr [rdi + 0x58]
	test	rdi, rdi
	nop	
	je	.label_428
	lea	rdi, [rdi]
	jmp	hash_free
.label_427:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rdi + 0x58]
	nop	
	jmp	free
.label_428:
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407f50

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	rbx
	nop	
	mov	r14, rdi
	mov	rsp, rsp
	mov	rbx, qword ptr [r14]
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	rbp, rbp
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_434
	nop	
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_434
	movzx	eax, word ptr [rbx + 0x74]
	mov	rsp, rsp
	mov	word ptr [rbx + 0x74], 3
	cmp	eax, 2
	mov	rbp, rbp
	je	.label_452
	mov	rsp, rsp
	movzx	ecx, ax
	lea	rdi, [rdi]
	cmp	ecx, 1
	nop	
	jne	.label_456
	mov	rsp, rsp
	xor	edx, edx
	nop	
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	rsp, rsp
	mov	word ptr [rbx + 0x70], ax
	lea	rdi, [rdi]
	mov	r15, rbx
	mov	rsp, rsp
	jmp	.label_434
.label_452:
	movzx	ecx, word ptr [rbx + 0x70]
	mov	rbp, rbp
	and	ecx, 0xfffe
	cmp	ecx, 0xc
	jne	.label_456
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	movzx	eax, ax
	mov	rsp, rsp
	cmp	eax, 1
	jne	.label_466
	mov	rbp, rbp
	test	byte ptr [r14 + 0x48], 4
	lea	rdi, [rdi]
	jne	.label_429
	mov	esi, OFFSET FLAT:.str_9
	nop	
	mov	rdi, r14
	call	diropen
	lea	rdi, [rdi]
	mov	dword ptr [rbx + 0x44], eax
	mov	rsp, rsp
	test	eax, eax
	js	.label_438
	nop	
	or	byte ptr [rbx + 0x72], 2
	nop	
	mov	r15, rbx
	lea	rsi, [rsi]
	jmp	.label_432
.label_456:
	movzx	ecx, word ptr [rbx + 0x70]
	nop	
	cmp	ecx, 1
	jne	.label_441
	movzx	eax, ax
	lea	rsi, [rsi]
	cmp	eax, 4
	je	.label_443
	mov	rbp, rbp
	test	byte ptr [r14 + 0x48], 0x40
	je	.label_447
	mov	rax, qword ptr [rbx + 0x78]
	cmp	rax, qword ptr [r14 + 0x18]
	jne	.label_443
.label_447:
	cmp	qword ptr [r14 + 8], 0
	mov	rbp, rbp
	je	.label_451
	mov	eax, dword ptr [r14 + 0x48]
	mov	rsp, rsp
	test	ah, 0x10
	jne	.label_454
	cmp	qword ptr [r14 + 8], 0
	je	.label_451
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x30]
	mov	edx, 0xffffffff
	lea	rsi, [rsi]
	mov	rdi, r14
	nop	
	mov	rsi, rbx
	call	fts_safe_changedir
	test	eax, eax
	mov	rbp, rbp
	je	.label_459
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	nop	
	or	byte ptr [rbx + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	jmp	.label_463
	nop	dword ptr [rax]
.label_441:
	mov	r15, qword ptr [rbx + 0x10]
	test	r15, r15
	jne	.label_465
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_468
	lea	rdi, [rdi]
	mov	r15, qword ptr [rbx + 0x10]
	test	r15, r15
	mov	rsp, rsp
	je	.label_430
.label_465:
	lea	rdi, [rdi]
	mov	qword ptr [r14], r15
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r15 + 0x58], 0
	mov	rsp, rsp
	je	.label_439
	mov	rbp, rbp
	movzx	eax, word ptr [r15 + 0x74]
	lea	rdi, [rdi]
	cmp	eax, 4
	nop	
	mov	rbx, r15
	je	.label_441
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_442
	lea	rsi, [rsi]
	mov	edx, 1
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	nop	
	jne	.label_449
	lea	rsi, [rsi]
	test	byte ptr [r14 + 0x48], 4
	jne	.label_449
	nop	
	mov	esi, OFFSET FLAT:.str_9
	lea	rdi, [rdi]
	mov	rdi, r14
	call	diropen
	nop	
	mov	dword ptr [r15 + 0x44], eax
	mov	rbp, rbp
	test	eax, eax
	js	.label_457
	or	byte ptr [r15 + 0x72], 2
	jmp	.label_449
.label_461:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_463:
	lea	rdi, [rdi]
	test	rax, rax
	jne	.label_461
	lea	rdi, [rdi]
	jmp	.label_459
.label_443:
	lea	rsi, [rsi]
	test	byte ptr [rbx + 0x72], 2
	lea	rsi, [rsi]
	je	.label_464
	mov	edi, dword ptr [rbx + 0x44]
	mov	rbp, rbp
	call	close
.label_464:
	mov	rdi, qword ptr [r14 + 8]
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_467
	call	fts_lfree
	mov	qword ptr [r14 + 8], 0
.label_467:
	mov	word ptr [rbx + 0x70], 6
.label_436:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, rbx
	nop	
	call	leave_dir
	mov	r15, rbx
	jmp	.label_434
.label_439:
	nop	
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_446
	or	byte ptr [r14 + 0x49], 0x20
	xor	r15d, r15d
	jmp	.label_434
.label_466:
	nop	
	mov	r15, rbx
	jmp	.label_432
.label_429:
	mov	r15, rbx
	mov	rbp, rbp
	jmp	.label_432
.label_468:
	nop	
	mov	qword ptr [r14], rax
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	rsp, rsp
	mov	esi, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	fts_build
	lea	rsi, [rsi]
	mov	r15, rax
	test	r15, r15
	je	.label_453
	mov	rdi, rbx
	mov	rsp, rsp
	call	free
	jmp	.label_442
.label_446:
	mov	rdi, r14
	call	free_dir
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsi, r15
	call	fts_load
	nop	
	mov	rdi, r14
	call	setup_dir
	jmp	.label_432
.label_454:
	nop	
	and	eax, 0xffffefff
	mov	rbp, rbp
	mov	dword ptr [r14 + 0x48], eax
	mov	rdi, qword ptr [r14 + 8]
	lea	rdi, [rdi]
	call	fts_lfree
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 8], 0
.label_451:
	mov	rbp, rbp
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_470
.label_459:
	nop	
	mov	r15, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], 0
	mov	rbp, rbp
	jmp	.label_442
.label_470:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_434
	nop	
	cmp	dword ptr [rbx + 0x40], 0
	je	.label_436
	mov	rbp, rbp
	movzx	eax, word ptr [rbx + 0x70]
	cmp	eax, 4
	nop	
	je	.label_436
	mov	word ptr [rbx + 0x70], 7
	jmp	.label_436
.label_438:
	call	__errno_location
	nop	
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	nop	
	mov	word ptr [rbx + 0x70], 7
	mov	r15, rbx
	jmp	.label_432
.label_453:
	xor	r15d, r15d
	lea	rdi, [rdi]
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_434
.label_430:
	lea	rsi, [rsi]
	mov	r15, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	mov	qword ptr [r14], r15
	mov	rdi, rbx
	call	free
	lea	rsi, [rsi]
	cmp	qword ptr [r15 + 0x58], -1
	mov	rsp, rsp
	je	.label_455
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	mov	rsp, rsp
	je	.label_433
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0
	mov	rsp, rsp
	cmp	qword ptr [r15 + 0x58], 0
	lea	rsi, [rsi]
	je	.label_458
	lea	rdi, [rdi]
	movzx	eax, word ptr [r15 + 0x72]
	test	al, 2
	nop	
	jne	.label_460
	nop	
	test	al, 1
	mov	rbp, rbp
	jne	.label_437
	nop	
	mov	rsi, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	mov	edx, 0xffffffff
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.2_2
	lea	rdi, [rdi]
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_431
.label_455:
	mov	rsp, rsp
	mov	rdi, r15
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_434
.label_458:
	mov	rdi, r14
	mov	rsp, rsp
	call	restore_initial_cwd
.label_431:
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_437
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	mov	eax, dword ptr [rax]
	nop	
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_437
.label_460:
	nop	
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_448
	lea	rsi, [rsi]
	test	ah, 2
	lea	rsi, [rsi]
	mov	esi, dword ptr [r15 + 0x44]
	jne	.label_450
	mov	edi, esi
	call	fchdir
	nop	
	test	eax, eax
	je	.label_448
	call	__errno_location
	lea	rdi, [rdi]
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_448
.label_457:
	call	__errno_location
	lea	rdi, [rdi]
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	rsp, rsp
	mov	word ptr [r15 + 0x70], 7
.label_449:
	mov	word ptr [r15 + 0x74], 3
.label_442:
	mov	rax, qword ptr [r14 + 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [rcx + 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x48]
	movzx	edx, byte ptr [rdx + rcx - 1]
	lea	rsi, [rsi]
	cmp	edx, 0x2f
	jne	.label_462
	lea	rdi, [rdi]
	dec	rcx
.label_462:
	mov	rsp, rsp
	lea	rdi, [rax + rcx + 1]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], 0x2f
	lea	rsi, [r15 + 0x108]
	mov	rsp, rsp
	mov	rdx, qword ptr [r15 + 0x60]
	nop	
	inc	rdx
	call	memmove
.label_432:
	mov	qword ptr [r14], r15
	lea	rdi, [rdi]
	movzx	eax, word ptr [r15 + 0x70]
	lea	rdi, [rdi]
	cmp	eax, 0xb
	jne	.label_435
	mov	rax, qword ptr [r15 + 0xa8]
	lea	rsi, [rsi]
	cmp	rax, 1
	je	.label_440
	mov	rsp, rsp
	cmp	rax, 2
	jne	.label_433
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x68], 0
	lea	rsi, [rsi]
	jne	.label_444
	nop	
	mov	eax, dword ptr [r14 + 0x48]
	nop	
	and	eax, 0x18
	cmp	eax, 0x18
	mov	rbp, rbp
	jne	.label_444
	mov	esi, dword ptr [r14 + 0x2c]
	nop	
	mov	rdi, rbx
	mov	rsp, rsp
	call	leaf_optimization
	mov	rsp, rsp
	cmp	eax, 2
	je	.label_440
.label_444:
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, r15
	lea	rdi, [rdi]
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	mov	rbp, rbp
	cmp	ecx, 0x4000
	jne	.label_435
	cmp	qword ptr [r15 + 0x58], 0
	mov	rsp, rsp
	je	.label_440
	mov	rax, qword ptr [rbx + 0x68]
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	lea	rdi, [rdi]
	jb	.label_440
	dec	rax
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x68], rax
.label_440:
	movzx	eax, word ptr [r15 + 0x70]
.label_435:
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_434
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x58], 0
	lea	rsi, [rsi]
	jne	.label_469
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_469:
	mov	rdi, r14
	mov	rsi, r15
	call	enter_dir
	test	al, al
	jne	.label_434
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_434
.label_450:
	mov	edx, 1
	lea	rsi, [rsi]
	mov	rdi, r14
	call	cwd_advance_fd
.label_448:
	nop	
	mov	edi, dword ptr [r15 + 0x44]
	mov	rbp, rbp
	call	close
.label_437:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	je	.label_445
	mov	eax, dword ptr [r15 + 0x40]
	mov	rsp, rsp
	cmp	eax, 0
	setne	cl
	nop	
	movzx	ecx, cl
	or	ecx, 6
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	word ptr [r15 + 0x70], cx
	jne	.label_445
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
	call	leave_dir
.label_445:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	r15, rax
.label_434:
	mov	rax, r15
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	nop	
	ret	
.label_433:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4086c0

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_471
	mov	rax, qword ptr [rsi + 0x78]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rsi + 0x80]
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rdi, [rdi]
	lea	rsi, [rsp]
	lea	rdi, [rdi]
	call	hash_delete
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_473
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
	mov	rsp, rsp
	add	rsp, 0x18
	mov	rsp, rsp
	ret	
.label_471:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsi + 8]
	lea	rdi, [rdi]
	test	rax, rax
	nop	
	je	.label_472
	cmp	qword ptr [rax + 0x58], 0
	js	.label_472
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	lea	rdi, [rdi]
	je	.label_473
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx]
	nop	
	cmp	rdx, qword ptr [rsi + 0x80]
	jne	.label_472
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	lea	rdi, [rdi]
	jne	.label_472
	mov	rdx, qword ptr [rax + 0x78]
	mov	qword ptr [rcx + 8], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rdi + 0x58]
	mov	qword ptr [rcx], rax
.label_472:
	add	rsp, 0x18
	mov	rsp, rsp
	ret	
.label_473:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408790

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
	mov	r14, rdi
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_486
	mov	rbp, rbp
	movzx	edx, byte ptr [rbx]
	lea	rsi, [rsi]
	mov	ecx, 0x2e
	lea	rsi, [rsi]
	mov	eax, 0x2e
	sub	eax, edx
	lea	rsi, [rsi]
	jne	.label_484
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx + 1]
	lea	rsi, [rsi]
	sub	ecx, eax
	lea	rsi, [rsi]
	mov	eax, ecx
	jne	.label_484
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_484:
	test	eax, eax
	lea	rsi, [rsi]
	sete	r15b
	lea	rdi, [rdi]
	jmp	.label_489
.label_486:
	xor	r15d, r15d
.label_489:
	lea	rsi, [rsi]
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	mov	rsp, rsp
	jne	.label_474
	nop	
	test	r13d, r13d
	jns	.label_476
	mov	rbp, rbp
	mov	cl, r15b
	mov	rbp, rbp
	xor	cl, 1
	jne	.label_479
	nop	
	and	eax, 0x200
	je	.label_480
	mov	rbp, rbp
	mov	qword ptr [rsp], rsi
	lea	rbp, [r14 + 0x60]
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	i_ring_empty
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	jne	.label_478
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	mov	rsp, rsp
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r15b, 1
	nop	
	jmp	.label_478
.label_474:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_475
	and	eax, 0x200
	je	.label_475
	lea	rdi, [rdi]
	mov	edi, r13d
	mov	rsp, rsp
	call	close
	nop	
	jmp	.label_475
.label_480:
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rsi
	nop	
	jmp	.label_478
.label_476:
	mov	qword ptr [rsp], rsi
	jmp	.label_478
.label_479:
	mov	rbp, rbp
	mov	qword ptr [rsp], rsi
.label_478:
	test	r13d, r13d
	mov	rbp, rbp
	mov	r12d, r13d
	jns	.label_482
	mov	rdi, r14
	mov	rsi, rbx
	mov	rsp, rsp
	call	diropen
	nop	
	mov	r12d, eax
	mov	rbp, rbp
	mov	ebp, 0xffffffff
	mov	rbp, rbp
	test	r12d, r12d
	mov	rbp, rbp
	js	.label_475
.label_482:
	lea	rsi, [rsi]
	test	byte ptr [r14 + 0x48], 2
	jne	.label_487
	mov	rbp, rbp
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_477
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2e
	nop	
	jne	.label_477
	mov	rbp, rbp
	movzx	eax, byte ptr [rbx + 1]
	cmp	eax, 0x2e
	lea	rsi, [rsi]
	jne	.label_477
	lea	rdi, [rdi]
	cmp	byte ptr [rbx + 2], 0
	lea	rsi, [rsi]
	jne	.label_477
.label_487:
	lea	rsi, [rsp + 8]
	nop	
	mov	edi, r12d
	call	__fstat
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_481
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_483
	mov	rax, qword ptr [rcx + 0x80]
	cmp	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	jne	.label_483
.label_477:
	test	byte ptr [r14 + 0x49], 2
	lea	rsi, [rsi]
	jne	.label_485
	mov	edi, r12d
	lea	rdi, [rdi]
	call	fchdir
	mov	ebp, eax
	jmp	.label_488
.label_485:
	lea	rdi, [rdi]
	test	r15b, r15b
	sete	al
	movzx	edx, al
	lea	rsi, [rsi]
	mov	rdi, r14
	nop	
	mov	esi, r12d
	lea	rdi, [rdi]
	call	cwd_advance_fd
	nop	
	xor	ebp, ebp
	jmp	.label_475
.label_483:
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 2
.label_481:
	nop	
	mov	ebp, 0xffffffff
.label_488:
	test	r13d, r13d
	jns	.label_475
	mov	rbp, rbp
	call	__errno_location
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbx], r14d
.label_475:
	lea	rdi, [rdi]
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	nop	
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4089f0

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
	sub	rsp, 0x88
	lea	rsi, [rsi]
	mov	r12d, esi
	lea	rdi, [rdi]
	mov	r14, rdi
	mov	rbp, qword ptr [r14]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x48], rbp
	nop	
	mov	r15, qword ptr [rbp + 0x18]
	mov	qword ptr [rsp + 0x60], r15
	mov	rbp, rbp
	test	r15, r15
	mov	rsp, rsp
	je	.label_544
	mov	rdi, r15
	call	dirfd
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x84], eax
	lea	rsi, [rsi]
	test	eax, eax
	js	.label_503
	mov	qword ptr [rsp + 0x38], -1
	nop	
	cmp	qword ptr [r14 + 0x40], 0
	nop	
	jne	.label_507
	mov	eax, 0x186a0
	mov	qword ptr [rsp + 0x38], rax
.label_507:
	lea	rax, [r14 + 0x40]
	mov	qword ptr [rsp + 0x58], rax
	mov	al, 1
	mov	dword ptr [rsp + 0x18], eax
	jmp	.label_515
.label_544:
	mov	rsp, rsp
	mov	eax, 0x204
	and	eax, dword ptr [r14 + 0x48]
	mov	edi, 0xffffff9c
	mov	rsp, rsp
	cmp	eax, 0x200
	jne	.label_521
	mov	rsp, rsp
	mov	edi, dword ptr [r14 + 0x2c]
.label_521:
	mov	rsi, qword ptr [rbp + 0x30]
	nop	
	mov	eax, dword ptr [r14 + 0x48]
	mov	rsp, rsp
	xor	edx, edx
	test	al, 0x10
	mov	rbp, rbp
	je	.label_530
	test	al, 1
	mov	rsp, rsp
	je	.label_533
	mov	rbp, rbp
	cmp	qword ptr [rbp + 0x58], 0
	nop	
	je	.label_530
.label_533:
	nop	
	mov	edx, 0x20000
.label_530:
	lea	rsi, [rsi]
	lea	rcx, [rsp + 0x84]
	mov	rbp, rbp
	call	opendirat
	lea	rdi, [rdi]
	mov	qword ptr [rbp + 0x18], rax
	nop	
	test	rax, rax
	je	.label_542
	movzx	eax, word ptr [rbp + 0x70]
	mov	rsp, rsp
	cmp	eax, 0xb
	lea	rsi, [rsi]
	jne	.label_546
	nop	
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rdi, r14
	nop	
	mov	rsi, rbp
	mov	rsp, rsp
	call	fts_stat
	mov	word ptr [rbp + 0x70], ax
	jmp	.label_495
.label_503:
	mov	rdi, qword ptr [rbp + 0x18]
	lea	rdi, [rdi]
	call	closedir
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 0x18], 0
.label_542:
	xor	r13d, r13d
	cmp	r12d, 3
	jne	.label_500
	mov	word ptr [rbp + 0x70], 4
	call	__errno_location
	mov	rsp, rsp
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbp + 0x40], eax
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_500
.label_546:
	test	byte ptr [r14 + 0x49], 1
	je	.label_495
	nop	
	mov	rdi, r14
	mov	rsi, rbp
	call	leave_dir
	mov	rbp, rbp
	xor	edx, edx
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsi, rbp
	call	fts_stat
	nop	
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, rbp
	call	enter_dir
	test	al, al
	je	.label_526
.label_495:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], -1
	lea	rsi, [rsi]
	cmp	qword ptr [r14 + 0x40], 0
	jne	.label_527
	mov	rsp, rsp
	mov	eax, 0x186a0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], rax
.label_527:
	mov	rsp, rsp
	lea	rax, [r14 + 0x40]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x58], rax
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x18], eax
	test	r15, r15
	mov	rbp, rbp
	jne	.label_515
	cmp	r12d, 2
	jne	.label_543
	mov	r13d, r12d
	nop	
	xor	r12d, r12d
	lea	rsi, [rsi]
	jmp	.label_545
.label_543:
	mov	rsp, rsp
	mov	eax, dword ptr [r14 + 0x48]
	nop	
	and	eax, 0x38
	cmp	eax, 0x18
	mov	rbp, rbp
	jne	.label_490
	mov	rbp, rbp
	cmp	qword ptr [rbp + 0x88], 2
	jne	.label_490
	mov	r13d, r12d
	mov	esi, dword ptr [rsp + 0x84]
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	leaf_optimization
	nop	
	test	eax, eax
	setne	r12b
	lea	rsi, [rsi]
	jmp	.label_499
.label_526:
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0xc
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_500
.label_490:
	mov	r13d, r12d
	lea	rsi, [rsi]
	xor	r12d, r12d
.label_499:
	mov	rbp, rbp
	xor	r12b, 1
.label_545:
	cmp	r13d, 3
	lea	rdi, [rdi]
	je	.label_512
	test	r12b, r12b
	jne	.label_512
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x18], r12d
	mov	rbp, rbp
	mov	r12d, r13d
	jmp	.label_515
.label_512:
	mov	qword ptr [rsp + 0x60], r15
	nop	
	test	byte ptr [r14 + 0x49], 2
	mov	rbp, rbp
	mov	ebx, dword ptr [rsp + 0x84]
	je	.label_522
	mov	esi, 0x406
	lea	rsi, [rsi]
	mov	edx, 3
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	edi, ebx
	mov	rsp, rsp
	call	rpl_fcntl
	mov	ebx, eax
	nop	
	mov	dword ptr [rsp + 0x84], ebx
.label_522:
	test	ebx, ebx
	lea	rdi, [rdi]
	js	.label_536
	nop	
	xor	ecx, ecx
	nop	
	mov	rdi, r14
	mov	rsi, rbp
	mov	edx, ebx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_539
.label_536:
	nop	
	cmp	r13d, 3
	nop	
	jne	.label_541
	test	r12b, r12b
	mov	rbp, rbp
	je	.label_541
	lea	rsi, [rsi]
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp + 0x40], eax
.label_541:
	or	byte ptr [rbp + 0x72], 1
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 0x18], 0
	mov	eax, dword ptr [r14 + 0x48]
	lea	rdi, [rdi]
	test	ah, 2
	lea	rsi, [rsi]
	je	.label_509
	lea	rsi, [rsi]
	mov	edi, dword ptr [rsp + 0x84]
	lea	rdi, [rdi]
	test	edi, edi
	js	.label_509
	call	close
.label_509:
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 0x18], 0
	mov	dword ptr [rsp + 0x18], 0
.label_539:
	lea	rdi, [rdi]
	mov	r12d, r13d
	lea	rsi, [rsi]
	mov	r15, qword ptr [rsp + 0x60]
.label_515:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 0x38]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp + 0x48]
	movzx	eax, byte ptr [rax + rdx - 1]
	cmp	eax, 0x2f
	jne	.label_520
	dec	rdx
.label_520:
	mov	dword ptr [rsp + 0x1c], r12d
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	lea	rdi, [rdi]
	test	byte ptr [r14 + 0x48], 4
	nop	
	je	.label_518
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x50], rcx
	mov	rsp, rsp
	mov	byte ptr [rax + rdx], 0x2f
.label_518:
	mov	rsp, rsp
	lea	rax, [rdx + 1]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x68], rax
	mov	rcx, qword ptr [r14 + 0x30]
	sub	rcx, rax
	mov	qword ptr [rsp + 0x40], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x58]
	inc	rax
	nop	
	mov	qword ptr [rsp + 0x28], rax
	add	rdx, 2
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rdx
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	r12d, r12d
	xor	ebx, ebx
	xor	r13d, r13d
.label_505:
	cmp	qword ptr [rbp + 0x18], 0
	je	.label_492
	mov	qword ptr [rsp + 0x70], rbx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], r13
	call	__errno_location
	mov	rsp, rsp
	mov	r13, rax
	nop	dword ptr [rax]
.label_525:
	mov	rsp, rsp
	mov	dword ptr [r13], 0
	mov	rdi, qword ptr [rbp + 0x18]
	mov	rbp, rbp
	call	readdir
	mov	rsp, rsp
	mov	r15, rax
	mov	rbp, rbp
	test	r15, r15
	mov	rsp, rsp
	je	.label_504
	test	byte ptr [r14 + 0x48], 0x20
	jne	.label_508
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r15 + 0x13]
	cmp	eax, 0x2e
	mov	rsp, rsp
	jne	.label_508
	mov	rsp, rsp
	movzx	eax, byte ptr [r15 + 0x14]
	cmp	eax, 0x2e
	je	.label_514
	test	al, al
	je	.label_516
	mov	rbp, rbp
	jmp	.label_508
	nop	dword ptr [rax]
.label_514:
	cmp	byte ptr [r15 + 0x15], 0
	jne	.label_508
.label_516:
	mov	rsp, rsp
	cmp	qword ptr [rbp + 0x18], 0
	mov	rsp, rsp
	jne	.label_525
	jmp	.label_528
	nop	dword ptr [rax]
.label_508:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], r12
	lea	rdi, [rdi]
	mov	rbx, r15
	add	rbx, 0x13
	mov	rsp, rsp
	mov	rdi, rbx
	call	strlen
	nop	
	mov	rbp, rax
	mov	rdi, r14
	mov	rsi, rbx
	mov	rsp, rsp
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	fts_alloc
	nop	
	mov	r12, rax
	test	r12, r12
	lea	rdi, [rdi]
	je	.label_496
	cmp	rbp, qword ptr [rsp + 0x40]
	jae	.label_532
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x68]
	mov	rsp, rsp
	jmp	.label_540
	nop	dword ptr [rax]
.label_532:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r14 + 0x20]
	nop	
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rax + rbp]
	nop	
	mov	rdi, r14
	call	fts_palloc
	test	al, al
	mov	rsp, rsp
	je	.label_496
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x20]
	cmp	rbx, rax
	lea	rsi, [rsi]
	je	.label_531
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x68]
	add	rax, rbx
	test	byte ptr [r14 + 0x48], 4
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x50]
	nop	
	cmovne	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], rcx
	nop	
	mov	al, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_502
.label_531:
	nop	
	mov	rbx, qword ptr [rsp + 0x68]
.label_502:
	mov	rax, qword ptr [r14 + 0x30]
	sub	rax, rbx
	mov	qword ptr [rsp + 0x40], rax
.label_540:
	add	rbp, rbx
	lea	rdi, [rdi]
	jb	.label_535
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x58], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14]
	mov	qword ptr [r12 + 8], rax
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x48], rbp
	mov	rbp, rbp
	mov	rax, qword ptr [r15]
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x80], rax
	test	byte ptr [r14 + 0x48], 4
	mov	rbp, rbp
	jne	.label_498
	mov	rbp, rbp
	lea	rax, [r12 + 0x108]
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_537
	nop	dword ptr [rax]
.label_498:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	lea	rdi, [rdi]
	lea	rsi, [r12 + 0x108]
	mov	rdx, qword ptr [r12 + 0x60]
	lea	rdi, [rdi]
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x50]
	call	memmove
.label_537:
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x48]
	nop	
	mov	r13, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_511
	test	byte ptr [r14 + 0x49], 4
	mov	rbp, rbp
	jne	.label_511
	mov	qword ptr [rsp + 0x68], rbx
	xor	edx, edx
	mov	rsp, rsp
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, r12
	call	fts_stat
	mov	rbp, rbp
	mov	word ptr [r12 + 0x70], ax
	mov	rbp, rbp
	jmp	.label_529
	nop	
.label_511:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x68], rbx
	mov	rdi, r12
	add	rdi, 0x78
	mov	eax, dword ptr [r14 + 0x48]
	mov	rsp, rsp
	and	eax, 0x18
	cmp	eax, 0x18
	lea	rdi, [rdi]
	jne	.label_513
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r15 + 0x12]
	mov	rbp, rbp
	cmp	eax, 4
	mov	rbp, rbp
	setne	cl
	mov	rbp, rbp
	test	al, al
	setne	bl
	lea	rdi, [rdi]
	and	bl, cl
	lea	rdi, [rdi]
	jmp	.label_524
.label_513:
	mov	rsp, rsp
	xor	ebx, ebx
.label_524:
	mov	word ptr [r12 + 0x70], 0xb
	lea	rdi, [rdi]
	movzx	esi, byte ptr [r15 + 0x12]
	call	set_stat_type
	xor	bl, 1
	movzx	esi, bl
	lea	rsi, [rsi]
	mov	rdi, r12
	lea	rdi, [rdi]
	call	fts_set_stat_required
.label_529:
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x60]
	mov	qword ptr [r12 + 0x10], 0
	test	r13, r13
	mov	rsp, rsp
	mov	rax, r12
	je	.label_517
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], r12
	mov	rax, r13
.label_517:
	mov	r13, rax
	nop	
	mov	rbx, qword ptr [rsp + 0x70]
	cmp	rbx, 0x2710
	mov	rbp, rbp
	jne	.label_493
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	jne	.label_493
	mov	esi, dword ptr [rsp + 0x84]
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rsp, rsp
	call	dirent_inode_sort_may_be_useful
	mov	qword ptr [rsp + 0x10], rax
	nop	dword ptr [rax]
.label_493:
	inc	rbx
	cmp	qword ptr [rsp + 0x38], rbx
	ja	.label_505
	jmp	.label_492
.label_504:
	mov	eax, dword ptr [r13]
	test	eax, eax
	mov	r15, qword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x70]
	lea	rdi, [rdi]
	je	.label_510
	nop	
	mov	dword ptr [rbp + 0x40], eax
	mov	rax, r15
	or	rax, rbx
	mov	ax, 7
	mov	cx, 4
	cmovne	cx, ax
	mov	rsp, rsp
	mov	word ptr [rbp + 0x70], cx
.label_510:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp + 0x18]
	mov	rbp, rbp
	test	rdi, rdi
	mov	r13, qword ptr [rsp + 0x78]
	je	.label_492
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	jmp	.label_492
.label_528:
	mov	r15, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x78]
	mov	rbx, qword ptr [rsp + 0x70]
.label_492:
	mov	rax, qword ptr [rsp + 0x30]
	nop	
	test	al, 1
	je	.label_534
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, r13
	call	fts_padjust
.label_534:
	mov	rbp, rbp
	test	byte ptr [r14 + 0x48], 4
	mov	r12d, dword ptr [rsp + 0x1c]
	je	.label_538
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, rax
	nop	
	lea	rax, [rcx - 1]
	mov	rdx, qword ptr [rsp + 0x68]
	cmp	rdx, qword ptr [r14 + 0x30]
	nop	
	cmove	rcx, rax
	test	rbx, rbx
	cmove	rcx, rax
	mov	rbp, rbp
	mov	byte ptr [rcx], 0
.label_538:
	mov	rsp, rsp
	test	r15, r15
	jne	.label_494
	mov	eax, dword ptr [rsp + 0x18]
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	je	.label_494
	mov	rsp, rsp
	cmp	r12d, 1
	je	.label_497
	mov	rbp, rbp
	test	rbx, rbx
	jne	.label_494
.label_497:
	mov	rbp, rbp
	cmp	qword ptr [rbp + 0x58], 0
	je	.label_501
	mov	rsi, qword ptr [rbp + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_2
	mov	rdi, r14
	mov	rsp, rsp
	call	fts_safe_changedir
	jmp	.label_506
.label_501:
	mov	rdi, r14
	nop	
	call	restore_initial_cwd
.label_506:
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_494
	mov	word ptr [rbp + 0x70], 7
	or	byte ptr [r14 + 0x49], 0x20
	mov	rbp, rbp
	jmp	.label_491
.label_494:
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_519
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	test	al, 1
	je	.label_523
	mov	rbp, qword ptr [rsp + 0x58]
	mov	qword ptr [word ptr [rbp]], OFFSET FLAT:fts_compare_ino
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	nop	
	call	fts_sort
	mov	r13, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp], 0
.label_523:
	cmp	rbx, 2
	mov	rbp, rbp
	jb	.label_500
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	test	rax, rax
	nop	
	je	.label_500
	mov	rdi, r14
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, rbx
	call	fts_sort
	mov	r13, rax
	jmp	.label_500
.label_519:
	cmp	r12d, 3
	lea	rdi, [rdi]
	jne	.label_491
	mov	rsp, rsp
	movzx	eax, word ptr [rbp + 0x70]
	cmp	eax, 4
	mov	rsp, rsp
	je	.label_491
	movzx	eax, ax
	cmp	eax, 7
	je	.label_491
	mov	word ptr [rbp + 0x70], 6
.label_491:
	lea	rsi, [rsi]
	mov	rdi, r13
	call	fts_lfree
	xor	r13d, r13d
.label_500:
	lea	rdi, [rdi]
	mov	rax, r13
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
.label_496:
	nop	
	mov	ebx, dword ptr [r13]
	mov	rdi, r12
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [rsp + 0x78]
	call	fts_lfree
	mov	rbp, qword ptr [rsp + 0x48]
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	mov	rsp, rsp
	mov	word ptr [rbp + 0x70], 7
	or	byte ptr [r14 + 0x49], 0x20
	mov	dword ptr [r13], ebx
	xor	r13d, r13d
	jmp	.label_500
.label_535:
	mov	rsp, rsp
	mov	rdi, r12
	nop	
	call	free
	mov	rdi, qword ptr [rsp + 0x78]
	call	fts_lfree
	mov	rbx, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	call	closedir
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x70], 7
	lea	rdi, [rdi]
	or	byte ptr [r14 + 0x49], 0x20
	mov	dword ptr [r13], 0x24
	xor	r13d, r13d
	nop	
	jmp	.label_500
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4093f0

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
	jne	.label_547
	nop	
	test	ah, 2
	lea	rsi, [rsi]
	jne	.label_548
	mov	edi, dword ptr [rbx + 0x28]
	mov	rsp, rsp
	call	fchdir
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	setne	al
	jmp	.label_549
.label_547:
	xor	eax, eax
	jmp	.label_549
.label_548:
	lea	rdi, [rdi]
	mov	esi, 0xffffff9c
	mov	edx, 1
	mov	rbp, rbp
	mov	rdi, rbx
	call	cwd_advance_fd
	mov	rbp, rbp
	xor	eax, eax
.label_549:
	mov	rsp, rsp
	movzx	ebp, al
	lea	rdi, [rdi]
	add	rbx, 0x60
	nop	
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fd_ring_clear
	mov	rsp, rsp
	mov	eax, ebp
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409480

	.globl fts_load
	.type fts_load, @function
fts_load:
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	push	rbx
	mov	r12, rsi
	mov	r14, rdi
	mov	rbp, rbp
	mov	rdx, qword ptr [r12 + 0x60]
	mov	qword ptr [r12 + 0x48], rdx
	mov	rdi, qword ptr [r14 + 0x20]
	lea	r15, [r12 + 0x108]
	inc	rdx
	mov	rsi, r15
	call	memmove
	mov	esi, 0x2f
	mov	rsp, rsp
	mov	rdi, r15
	call	strrchr
	mov	rsp, rsp
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_551
	cmp	rbx, r15
	mov	rbp, rbp
	jne	.label_550
	cmp	byte ptr [rbx + 1], 0
	mov	rbp, rbp
	je	.label_551
.label_550:
	lea	rdi, [rdi]
	inc	rbx
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	strlen
	lea	rdi, [rdi]
	mov	r13, rax
	lea	rdx, [r13 + 1]
	nop	
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, rbx
	call	memmove
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x60], r13
.label_551:
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x38], rax
	mov	qword ptr [r12 + 0x30], rax
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	nop	
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409540

	.globl leaf_optimization
	.type leaf_optimization, @function
leaf_optimization:
	nop	
	push	rax
	call	filesystem_type
	lea	rsi, [rsi]
	cmp	rax, 0x52654972
	jle	.label_552
	lea	rsi, [rsi]
	mov	ecx, 2
	cmp	rax, 0x58465341
	jg	.label_556
	cmp	rax, 0x52654973
	mov	rsp, rsp
	je	.label_555
	cmp	rax, 0x5346414f
	mov	rbp, rbp
	je	.label_554
	jmp	.label_553
.label_552:
	test	rax, rax
	je	.label_554
	nop	
	cmp	rax, 0x6969
	mov	rbp, rbp
	je	.label_554
	lea	rdi, [rdi]
	cmp	rax, 0x9fa0
	lea	rsi, [rsi]
	je	.label_554
	jmp	.label_553
.label_556:
	mov	rbp, rbp
	cmp	rax, 0x58465342
	lea	rsi, [rsi]
	je	.label_555
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	jne	.label_553
.label_554:
	xor	ecx, ecx
	mov	rbp, rbp
	jmp	.label_555
.label_553:
	mov	rsp, rsp
	mov	ecx, 1
.label_555:
	mov	rsp, rsp
	mov	eax, ecx
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4095d0

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
	je	.label_559
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	nop	
	je	.label_561
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x78]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [r14 + 0x80]
	nop	
	mov	qword ptr [rbx + 8], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x10], r14
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp + 0x58]
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	hash_insert
	mov	r15, rax
	mov	rsp, rsp
	mov	bpl, 1
	mov	rsp, rsp
	cmp	r15, rbx
	je	.label_557
	nop	
	mov	rdi, rbx
	call	free
	nop	
	test	r15, r15
	je	.label_560
	mov	rax, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [r14], rax
	mov	rsp, rsp
	jmp	.label_558
.label_559:
	mov	rdi, qword ptr [rbp + 0x58]
	nop	
	lea	rsi, [r14 + 0x78]
	lea	rsi, [rsi]
	call	cycle_check
	mov	rsp, rsp
	mov	bpl, 1
	lea	rsi, [rsi]
	test	al, al
	nop	
	je	.label_557
	lea	rsi, [rsi]
	mov	qword ptr [r14], r14
.label_558:
	mov	word ptr [r14 + 0x70], 2
	jmp	.label_557
.label_561:
	xor	ebp, ebp
	nop	
	jmp	.label_557
.label_560:
	xor	ebp, ebp
.label_557:
	mov	al, bpl
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4096c0

	.globl cwd_advance_fd
	.type cwd_advance_fd, @function
cwd_advance_fd:
	mov	rbp, rbp
	push	rbp
	push	rbx
	lea	rdi, [rdi]
	push	rax
	nop	
	mov	ebp, esi
	mov	rsp, rsp
	mov	rbx, rdi
	mov	esi, dword ptr [rbx + 0x2c]
	mov	rsp, rsp
	cmp	esi, ebp
	jne	.label_562
	mov	rbp, rbp
	cmp	esi, -0x64
	nop	
	jne	.label_564
.label_562:
	mov	rbp, rbp
	test	dl, dl
	lea	rsi, [rsi]
	je	.label_565
	lea	rdi, [rbx + 0x60]
	mov	rsp, rsp
	call	i_ring_push
	test	eax, eax
	mov	rsp, rsp
	js	.label_566
	mov	edi, eax
	mov	rsp, rsp
	jmp	.label_563
.label_565:
	nop	
	test	esi, esi
	js	.label_566
	mov	rbp, rbp
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 4
	lea	rdi, [rdi]
	jne	.label_566
	mov	edi, esi
.label_563:
	call	close
.label_566:
	mov	dword ptr [rbx + 0x2c], ebp
	add	rsp, 8
	nop	
	pop	rbx
	pop	rbp
	ret	
.label_564:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409740

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	mov	rsp, rsp
	cmp	edx, 5
	jb	.label_567
	nop	
	push	rax
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	mov	rbp, rbp
	add	rsp, 8
	ret	
.label_567:
	mov	rsp, rsp
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409770
	.globl rpl_fts_children
	.type rpl_fts_children, @function
rpl_fts_children:

	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r12
	push	rbx
	lea	rdi, [rdi]
	mov	ebp, esi
	mov	rsp, rsp
	mov	rbx, rdi
	nop	
	mov	eax, ebp
	mov	rbp, rbp
	or	eax, 0x1000
	nop	
	cmp	eax, 0x1000
	jne	.label_577
	mov	r12, qword ptr [rbx]
	lea	rsi, [rsi]
	call	__errno_location
	mov	r14, rax
	lea	rdi, [rdi]
	mov	dword ptr [r14], 0
	xor	eax, eax
	lea	rdi, [rdi]
	test	byte ptr [rbx + 0x49], 0x20
	mov	rsp, rsp
	jne	.label_569
	nop	
	movzx	ecx, word ptr [r12 + 0x70]
	xor	eax, eax
	cmp	ecx, 1
	mov	rbp, rbp
	je	.label_571
	movzx	ecx, cx
	cmp	ecx, 9
	jne	.label_569
	mov	rax, qword ptr [r12 + 0x10]
	nop	
	jmp	.label_569
.label_577:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_569
.label_571:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 8]
	nop	
	test	rdi, rdi
	je	.label_568
	call	fts_lfree
.label_568:
	nop	
	mov	r15d, 1
	cmp	ebp, 0x1000
	jne	.label_574
	mov	rbp, rbp
	or	byte ptr [rbx + 0x49], 0x10
	mov	r15d, 2
.label_574:
	cmp	qword ptr [r12 + 0x58], 0
	jne	.label_572
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x30]
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rax]
	nop	
	cmp	eax, 0x2f
	je	.label_572
	test	byte ptr [rbx + 0x48], 4
	lea	rsi, [rsi]
	jne	.label_572
	mov	esi, OFFSET FLAT:.str_9
	mov	rdi, rbx
	mov	rsp, rsp
	call	diropen
	mov	rbp, rbp
	mov	ebp, eax
	nop	
	test	ebp, ebp
	mov	rsp, rsp
	js	.label_576
	mov	rsp, rsp
	mov	rdi, rbx
	mov	esi, r15d
	call	fts_build
	mov	qword ptr [rbx + 8], rax
	test	byte ptr [rbx + 0x49], 2
	lea	rdi, [rdi]
	jne	.label_570
	mov	edi, ebp
	call	fchdir
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_575
	mov	rsp, rsp
	mov	ebx, dword ptr [r14]
	mov	edi, ebp
	lea	rsi, [rsi]
	call	close
	mov	dword ptr [r14], ebx
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_569
.label_572:
	mov	rdi, rbx
	mov	esi, r15d
	call	fts_build
	mov	rbp, rbp
	mov	qword ptr [rbx + 8], rax
.label_569:
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	nop	
	ret	
.label_576:
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 8], 0
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_569
.label_570:
	mov	edx, 1
	mov	rsp, rsp
	mov	rdi, rbx
	mov	esi, ebp
	call	cwd_advance_fd
	jmp	.label_573
.label_575:
	mov	edi, ebp
	mov	rbp, rbp
	call	close
.label_573:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	jmp	.label_569
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409920

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
	.align	32
	#Procedure 0x409940

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	mov	rbp, rbp
	jne	.label_578
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	mov	rsp, rsp
	ret	
.label_578:
	mov	rsp, rsp
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409970

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
	je	.label_580
	mov	rbp, qword ptr [rbx + 0x50]
	mov	rbp, rbp
	test	rbp, rbp
	jne	.label_579
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
	je	.label_582
.label_579:
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
	je	.label_583
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	jmp	.label_580
.label_583:
	mov	r12b, 1
	mov	r14, rbp
.label_582:
	xor	eax, eax
	nop	
	test	r15d, r15d
	js	.label_580
	lea	rsi, [rsp + 0x10]
	mov	edi, r15d
	mov	rbp, rbp
	call	fstatfs
	mov	ecx, eax
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	test	ecx, ecx
	jne	.label_580
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_581
	mov	edi, 0x10
	lea	rsi, [rsi]
	call	malloc
	mov	rbp, rax
	nop	
	test	rbp, rbp
	je	.label_581
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
	je	.label_584
	nop	
	cmp	rax, rbp
	lea	rsi, [rsi]
	je	.label_581
	lea	rdi, [rdi]
	call	abort
.label_584:
	mov	rdi, rbp
	call	free
.label_581:
	mov	rax, qword ptr [rsp + 0x10]
.label_580:
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
	.align	32
	#Procedure 0x409ae0

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
	.align	32
	#Procedure 0x409b00

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
	.align	32
	#Procedure 0x409b10

	.globl set_stat_type
	.type set_stat_type, @function
set_stat_type:
	lea	rdi, [rdi]
	dec	esi
	mov	rbp, rbp
	xor	eax, eax
	cmp	esi, 0xb
	nop	
	ja	.label_585
	mov	rsp, rsp
	movsxd	rax, esi
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + label_586]]
.label_585:
	mov	dword ptr [rdi + 0x18], eax
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409b40

	.globl dirent_inode_sort_may_be_useful
	.type dirent_inode_sort_may_be_useful, @function
dirent_inode_sort_may_be_useful:
	nop	
	push	rax
	call	filesystem_type
	mov	rcx, rax
	xor	eax, eax
	cmp	rcx, 0x6969
	lea	rdi, [rdi]
	je	.label_587
	mov	rbp, rbp
	cmp	rcx, 0x1021994
	je	.label_587
	mov	edx, 0xff534d42
	nop	
	cmp	rcx, rdx
	je	.label_587
	mov	rsp, rsp
	mov	al, 1
.label_587:
	lea	rdi, [rdi]
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409b80

	.globl fts_padjust
	.type fts_padjust, @function
fts_padjust:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 8]
	mov	rax, qword ptr [rdi + 0x20]
	mov	rbp, rbp
	jmp	.label_588
.label_590:
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x38], rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
.label_588:
	test	rcx, rcx
	je	.label_593
	nop	
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rdi, [rcx + 0x108]
	cmp	rdx, rdi
	mov	rsp, rsp
	je	.label_590
	nop	
	sub	rdx, qword ptr [rcx + 0x38]
	nop	
	add	rdx, rax
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_590
.label_593:
	cmp	qword ptr [rsi + 0x58], 0
	nop	
	js	.label_592
	nop	word ptr cs:[rax + rax]
.label_594:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsi + 0x30]
	lea	rsi, [rsi]
	lea	rdx, [rsi + 0x108]
	cmp	rcx, rdx
	je	.label_589
	mov	rsp, rsp
	sub	rcx, qword ptr [rsi + 0x38]
	mov	rbp, rbp
	add	rcx, rax
	nop	
	mov	qword ptr [rsi + 0x30], rcx
.label_589:
	mov	qword ptr [rsi + 0x38], rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi + 0x10]
	test	rcx, rcx
	jne	.label_591
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi + 8]
.label_591:
	cmp	qword ptr [rcx + 0x58], 0
	mov	rsi, rcx
	lea	rsi, [rsi]
	jns	.label_594
.label_592:
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x409c30

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
	.align	32
	#Procedure 0x409c70
	.globl fts_compar
	.type fts_compar, @function
fts_compar:

	push	rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax + 0x50]
	call	qword ptr [rax + 0x40]
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x409c80

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
	je	.label_595
	nop	
	cmp	r15, -2
	jb	.label_595
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_595
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_595:
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
	#Procedure 0x409d10
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_596
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_596
.label_597:
	ret	
.label_596:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_597
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409d40
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_598
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_598:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409d60
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409d70
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
	#Procedure 0x409d80
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_599
.label_600:
	ret	
.label_599:
	cmp	edi, 0x7f
	je	.label_600
	xor	eax, eax
	jmp	.label_600
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409da0
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
	#Procedure 0x409db0
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
	#Procedure 0x409dc0
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
	#Procedure 0x409dd0
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
	#Procedure 0x409de0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_601
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_601
.label_602:
	ret	
.label_601:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_602
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409e10
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_603
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_603:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409e30

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
	#Procedure 0x409e40
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_604
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_604:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409e60
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
	#Procedure 0x409e70
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
	#Procedure 0x409e80

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
	mov	rdi, rbx
	mov	rbp, rbp
	call	ferror_unlocked
	mov	ebp, eax
	mov	rdi, rbx
	nop	
	call	rpl_fclose
	mov	rbp, rbp
	test	ebp, ebp
	nop	
	je	.label_606
	mov	ebx, 0xffffffff
	mov	rbp, rbp
	test	eax, eax
	jne	.label_605
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	jmp	.label_605
.label_606:
	test	eax, eax
	mov	rbp, rbp
	sete	cl
	neg	eax
	nop	
	sbb	ebx, ebx
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_605
	test	cl, cl
	jne	.label_605
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	nop	
	cmove	ebx, ecx
.label_605:
	mov	rsp, rsp
	mov	eax, ebx
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x409f20

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409f40

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	nop	
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	cmp	dword ptr [r15 + 0x18], 0x95f616
	jne	.label_607
	nop	
	cmp	qword ptr [r15 + 0x10], 0
	mov	rsp, rsp
	je	.label_609
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r15]
	lea	rsi, [rsi]
	jne	.label_609
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r14]
	mov	rbp, rbp
	mov	al, 1
	mov	rbp, rbp
	cmp	rcx, qword ptr [r15 + 8]
	je	.label_608
.label_609:
	mov	rbx, qword ptr [r15 + 0x10]
	inc	rbx
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x10], rbx
	mov	rdi, rbx
	nop	
	call	is_zero_or_power_of_two
	lea	rdi, [rdi]
	test	al, al
	je	.label_610
	mov	rsp, rsp
	mov	al, 1
	test	rbx, rbx
	je	.label_608
	mov	rax, qword ptr [r14]
	mov	qword ptr [r15 + 8], rax
	mov	rax, qword ptr [r14 + 8]
	mov	rsp, rsp
	mov	qword ptr [r15], rax
.label_610:
	nop	
	xor	eax, eax
.label_608:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
.label_607:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_10
	mov	esi, OFFSET FLAT:.str.1_7
	mov	rsp, rsp
	mov	edx, 0x3c
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.cycle_check
	call	__assert_fail
	nop	
	.section	.text
	.align	32
	#Procedure 0x409ff0

	.globl is_zero_or_power_of_two
	.type is_zero_or_power_of_two, @function
is_zero_or_power_of_two:
	lea	rax, [rdi - 1]
	test	rax, rdi
	sete	al
	mov	rbp, rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a000

	.globl open_safer
	.type open_safer, @function
open_safer:
	mov	rsp, rsp
	sub	rsp, 0xc8
	nop	
	test	al, al
	mov	rbp, rbp
	je	.label_611
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
.label_611:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	xor	edx, edx
	nop	
	test	sil, 0x40
	je	.label_612
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
	ja	.label_614
	lea	rsi, [rsi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_613
.label_614:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_613:
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax]
.label_612:
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
	.align	32
	#Procedure 0x40a120

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
	je	.label_616
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_615
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_617
.label_615:
	nop	
	mov	esi, OFFSET FLAT:.str.1_8
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_616
.label_617:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_616:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a170

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a180

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	mov	rax, qword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a190

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a1a0

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	mov	rcx, qword ptr [rdi]
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdi + 8]
	nop	
	jae	.label_618
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_621:
	cmp	qword ptr [rcx], 0
	nop	
	mov	esi, 0
	mov	rdi, rcx
	mov	rbp, rbp
	je	.label_619
	nop	word ptr cs:[rax + rax]
.label_620:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	inc	rsi
	test	rdi, rdi
	jne	.label_620
	nop	
	cmp	rsi, rax
	mov	rsp, rsp
	cmova	rax, rsi
.label_619:
	mov	rbp, rbp
	add	rcx, 0x10
	nop	
	cmp	rcx, rdx
	jb	.label_621
.label_618:
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a210
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rbp, rbp
	mov	rsi, qword ptr [rdi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	rsi, qword ptr [rdi + 8]
	mov	rsp, rsp
	mov	edx, 0
	jae	.label_622
	mov	r8, qword ptr [rdi + 8]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_624:
	lea	rdi, [rdi]
	cmp	qword ptr [rsi], 0
	mov	rbp, rbp
	mov	rax, rsi
	je	.label_623
	nop	
.label_625:
	lea	rdi, [rdi]
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_625
	inc	rdx
.label_623:
	mov	rsp, rsp
	add	rsi, 0x10
	cmp	rsi, r8
	jb	.label_624
.label_622:
	mov	rbp, rbp
	cmp	rdx, qword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	jne	.label_627
	lea	rsi, [rsi]
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	mov	rsp, rsp
	je	.label_626
.label_627:
	mov	rbp, rbp
	xor	eax, eax
.label_626:
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a290
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	nop	
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	r13, rsi
	mov	rbx, rdi
	mov	rsp, rsp
	call	hash_get_n_entries
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	hash_get_n_buckets
	lea	rdi, [rdi]
	mov	r12, rax
	mov	rsp, rsp
	mov	rdi, rbx
	call	hash_get_n_buckets_used
	mov	rbp, rbp
	mov	r15, rax
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	hash_get_max_bucket_length
	mov	rsp, rsp
	mov	r14, rax
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_11
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rcx, rbp
	mov	rsp, rsp
	call	__fprintf_chk
	mov	rbp, rbp
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.1_9
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r15
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_628]]
	punpckldq	xmm1, xmm2
	mov	rsp, rsp
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_629]]
	mov	rbp, rbp
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	lea	rsi, [rsi]
	addpd	xmm0, xmm1
	nop	
	mulsd	xmm0,  qword ptr [word ptr [rip + label_630]]
	movq	xmm1, r12
	mov	rbp, rbp
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.2_3
	mov	rsp, rsp
	mov	al, 1
	mov	rdi, r13
	mov	rcx, r15
	mov	rbp, rbp
	call	__fprintf_chk
	mov	rbp, rbp
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_2
	nop	
	xor	eax, eax
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rcx, r14
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	jmp	__fprintf_chk
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a3e0

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
	call	safe_hasher
	mov	rbx, rax
	xor	r15d, r15d
	lea	rsi, [rsi]
	cmp	qword ptr [rbx], 0
	je	.label_631
	test	rbx, rbx
	nop	
	je	.label_631
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_632:
	mov	rsi, qword ptr [rbx]
	mov	rsp, rsp
	cmp	rsi, r12
	je	.label_633
	lea	rsi, [rsi]
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_633
	mov	rbx, qword ptr [rbx + 8]
	nop	
	test	rbx, rbx
	jne	.label_632
	jmp	.label_631
.label_633:
	mov	r15, qword ptr [rbx]
.label_631:
	nop	
	mov	rax, r15
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r12
	nop	
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a470

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbx
	mov	rbx, rdi
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdi, rsi
	lea	rdi, [rdi]
	mov	rsi, rax
	call	qword ptr [rbx + 0x30]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_634
	lea	rdi, [rdi]
	shl	rax, 4
	add	rax, qword ptr [rbx]
	lea	rsi, [rsi]
	pop	rbx
	nop	
	ret	
.label_634:
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a4b0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	mov	rbp, rbp
	je	.label_635
	nop	
	mov	rcx, qword ptr [rdi]
	lea	rdi, [rdi]
	jmp	.label_637
	nop	word ptr cs:[rax + rax]
.label_638:
	mov	rbp, rbp
	add	rcx, 0x10
.label_637:
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_636
	mov	rax, qword ptr [rcx]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_638
.label_635:
	ret	
.label_636:
	mov	rsp, rsp
	push	rax
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a500
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
	call	safe_hasher
	mov	rbp, rbp
	mov	rcx, rax
	nop	dword ptr [rax + rax]
.label_641:
	cmp	qword ptr [rcx], rbx
	jne	.label_639
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx + 8]
	nop	
	test	rdx, rdx
	lea	rdi, [rdi]
	jne	.label_640
.label_639:
	nop	
	mov	rcx, qword ptr [rcx + 8]
	nop	
	test	rcx, rcx
	jne	.label_641
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r14 + 8]
	add	rax, 0x10
	nop	dword ptr [rax + rax]
.label_643:
	cmp	rax, rdx
	lea	rdi, [rdi]
	mov	ecx, 0
	jae	.label_642
	mov	rbp, rbp
	mov	rcx, qword ptr [rax]
	add	rax, 0x10
	test	rcx, rcx
	je	.label_643
	jmp	.label_642
.label_640:
	mov	rbp, rbp
	mov	rcx, qword ptr [rdx]
.label_642:
	mov	rax, rcx
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a590
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	nop
	mov	r8, qword ptr [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_644
	nop	dword ptr [rax + rax]
.label_647:
	mov	rbp, rbp
	add	r8, 0x10
.label_644:
	cmp	r8, qword ptr [rdi + 8]
	nop	
	jae	.label_646
	lea	rdi, [rdi]
	cmp	qword ptr [r8], 0
	lea	rsi, [rsi]
	je	.label_647
	test	r8, r8
	mov	r9, r8
	mov	rbp, rbp
	je	.label_647
	nop	word ptr cs:[rax + rax]
.label_645:
	mov	rbp, rbp
	cmp	rax, rdx
	mov	rsp, rsp
	jae	.label_646
	mov	rcx, qword ptr [r9]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + rax*8], rcx
	nop	
	inc	rax
	lea	rdi, [rdi]
	mov	r9, qword ptr [r9 + 8]
	mov	rsp, rsp
	test	r9, r9
	jne	.label_645
	nop	
	jmp	.label_647
.label_646:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a600
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
	xor	ebx, ebx
	jmp	.label_648
	nop	word ptr cs:[rax + rax]
.label_649:
	mov	rsp, rsp
	add	r13, 0x10
.label_648:
	lea	rsi, [rsi]
	cmp	r13, qword ptr [r12 + 8]
	nop	
	jae	.label_650
	lea	rsi, [rsi]
	cmp	qword ptr [r13], 0
	je	.label_649
	mov	rbp, rbp
	test	r13, r13
	mov	rbp, r13
	je	.label_649
	nop	word ptr [rax + rax]
.label_651:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	lea	rsi, [rsi]
	call	r15
	mov	rbp, rbp
	test	al, al
	je	.label_650
	mov	rsp, rsp
	inc	rbx
	mov	rsp, rsp
	mov	rbp, qword ptr [rbp + 8]
	mov	rbp, rbp
	test	rbp, rbp
	lea	rsi, [rsi]
	jne	.label_651
	jmp	.label_649
.label_650:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a6b0
	.globl hash_string
	.type hash_string, @function
hash_string:

	nop
	mov	al, byte ptr [rdi]
	nop	
	xor	edx, edx
	test	al, al
	je	.label_653
	inc	rdi
	nop	
	xor	edx, edx
.label_652:
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
	jne	.label_652
.label_653:
	mov	rax, rdx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a6f0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	nop
	mov	eax,  dword ptr [dword ptr [rip + label_654]]
	mov	dword ptr [rdi + 0x10], eax
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a710

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
	mov	rbx, r8
	lea	rsi, [rsi]
	mov	r12, rsi
	mov	r15, rdi
	lea	rdi, [rdi]
	test	rdx, rdx
	mov	ebp, OFFSET FLAT:raw_hasher
	lea	rdi, [rdi]
	cmovne	rbp, rdx
	test	rcx, rcx
	mov	rsp, rsp
	mov	r14d, OFFSET FLAT:raw_comparator
	lea	rdi, [rdi]
	cmovne	r14, rcx
	mov	edi, 0x50
	mov	rsp, rsp
	call	malloc
	mov	rsp, rsp
	mov	r13, rax
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	test	r13, r13
	je	.label_655
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rbx
	test	r12, r12
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:default_tuning
	cmovne	rbx, r12
	mov	qword ptr [r13 + 0x28], rbx
	mov	rdi, r13
	call	check_tuning
	mov	rsp, rsp
	test	al, al
	je	.label_656
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rsi, rbx
	call	compute_bucket_size
	mov	rbp, rbp
	mov	qword ptr [r13 + 0x10], rax
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_656
	mov	esi, 0x10
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_656
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rsp, rsp
	shl	rcx, 4
	lea	rdi, [rdi]
	add	rax, rcx
	mov	qword ptr [r13 + 8], rax
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [r13 + 0x18], xmm0
	mov	rsp, rsp
	mov	qword ptr [r13 + 0x30], rbp
	mov	qword ptr [r13 + 0x38], r14
	mov	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 0x40], rax
	mov	qword ptr [r13 + 0x48], 0
	nop	
	mov	rax, r13
	jmp	.label_655
.label_656:
	mov	rbp, rbp
	mov	rdi, r13
	call	free
	xor	eax, eax
.label_655:
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a850

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	push	rbx
	mov	rbp, rbp
	mov	rbx, rsi
	mov	rsp, rsp
	mov	esi, 3
	mov	rsp, rsp
	call	rotr_sz
	lea	rdi, [rdi]
	xor	edx, edx
	div	rbx
	mov	rax, rdx
	mov	rbp, rbp
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a880

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
	.align	32
	#Procedure 0x40a890

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	mov	rcx, qword ptr [rdi + 0x28]
	nop	
	mov	edx, OFFSET FLAT:default_tuning
	mov	al, 1
	cmp	rcx, rdx
	mov	rsp, rsp
	je	.label_657
	lea	rsi, [rsi]
	movss	xmm0, dword ptr [rcx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_660]]
	nop	
	jbe	.label_658
	movss	xmm1,  dword ptr [dword ptr [rip + label_661]]
	ucomiss	xmm1, xmm0
	jbe	.label_658
	movss	xmm1, dword ptr [rcx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_659]]
	jbe	.label_658
	movss	xmm1, dword ptr [rcx]
	lea	rdi, [rdi]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_658
	mov	rsp, rsp
	addss	xmm1,  dword ptr [dword ptr [rip + label_660]]
	ucomiss	xmm0, xmm1
	jbe	.label_658
	mov	rsp, rsp
	movss	xmm0, dword ptr [rcx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_662]]
	ucomiss	xmm2, xmm0
	nop	
	jb	.label_658
	ucomiss	xmm0, xmm1
	ja	.label_657
.label_658:
	mov	qword ptr [word ptr [rdi + 40]], OFFSET FLAT:default_tuning
	xor	eax, eax
.label_657:
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a920

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	cmp	byte ptr [rsi + 0x10], 0
	jne	.label_663
	mov	eax, edi
	nop	
	and	eax, 1
	lea	rsi, [rsi]
	test	rdi, rdi
	js	.label_665
	mov	rsp, rsp
	cvtsi2ss	xmm0, rdi
	mov	rbp, rbp
	jmp	.label_664
.label_665:
	lea	rsi, [rsi]
	shr	rdi, 1
	or	rax, rdi
	mov	rsp, rsp
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_664:
	divss	xmm0, dword ptr [rsi + 8]
	nop	
	movss	xmm1,  dword ptr [dword ptr [rip + label_666]]
	nop	
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	mov	rsp, rsp
	cvttss2si	rax, xmm2
	mov	rsp, rsp
	movabs	rcx, 0x8000000000000000
	mov	rsp, rsp
	xor	rcx, rax
	mov	rsp, rsp
	cvttss2si	rdi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rdi, rcx
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_667]]
	jae	.label_668
.label_663:
	push	rax
	mov	rbp, rbp
	call	next_prime
	mov	rcx, rax
	xor	eax, eax
	mov	rdx, rcx
	shr	rdx, 0x3c
	cmove	rax, rcx
	lea	rsi, [rsi]
	add	rsp, 8
.label_668:
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a9d0
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
	jmp	.label_671
	nop	dword ptr [rax]
.label_669:
	add	r14, 0x10
.label_671:
	mov	rsp, rsp
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_672
	cmp	qword ptr [r14], 0
	lea	rdi, [rdi]
	je	.label_669
	nop	
	mov	rbx, qword ptr [r14 + 8]
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x40]
	lea	rsi, [rsi]
	test	rax, rax
	setne	cl
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_670
	nop	dword ptr [rax + rax]
.label_674:
	test	cl, 1
	nop	
	je	.label_673
	mov	rdi, qword ptr [rbx]
	mov	rsp, rsp
	call	rax
.label_673:
	lea	rdi, [rdi]
	mov	qword ptr [rbx], 0
	nop	
	mov	rdx, qword ptr [rbx + 8]
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rax
	nop	
	mov	qword ptr [r15 + 0x48], rbx
	mov	rax, qword ptr [r15 + 0x40]
	lea	rsi, [rsi]
	test	rax, rax
	setne	cl
	test	rdx, rdx
	lea	rdi, [rdi]
	mov	rbx, rdx
	mov	rbp, rbp
	jne	.label_674
.label_670:
	lea	rdi, [rdi]
	test	cl, cl
	je	.label_675
	mov	rdi, qword ptr [r14]
	call	rax
.label_675:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	jmp	.label_669
.label_672:
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40aaa0

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
	mov	r15, rdi
	mov	rsp, rsp
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_680
	lea	rdi, [rdi]
	cmp	qword ptr [r15 + 0x20], 0
	lea	rdi, [rdi]
	je	.label_680
	mov	r14, qword ptr [r15]
	lea	rsi, [rsi]
	jmp	.label_677
	nop	word ptr cs:[rax + rax]
.label_681:
	mov	rbp, rbp
	add	r14, 0x10
.label_677:
	mov	rsp, rsp
	cmp	r14, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	jae	.label_680
	cmp	qword ptr [r14], 0
	je	.label_681
	test	r14, r14
	mov	rbp, rbp
	mov	rbx, r14
	je	.label_681
	nop	word ptr cs:[rax + rax]
.label_678:
	mov	rdi, qword ptr [rbx]
	mov	rbp, rbp
	call	qword ptr [r15 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_678
	jmp	.label_681
.label_680:
	mov	r14, qword ptr [r15]
	jmp	.label_682
	nop	word ptr [rax + rax]
.label_683:
	mov	rbp, rbp
	add	r14, 0x10
.label_682:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_685
	mov	rdi, qword ptr [r14 + 8]
	mov	rsp, rsp
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_683
	nop	dword ptr [rax]
.label_679:
	mov	rbp, rbp
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	lea	rdi, [rdi]
	mov	rdi, rbx
	jne	.label_679
	lea	rdi, [rdi]
	jmp	.label_683
.label_685:
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_684
	nop	word ptr cs:[rax + rax]
.label_676:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rdi, rbx
	lea	rdi, [rdi]
	jne	.label_676
.label_684:
	mov	rdi, qword ptr [r15]
	call	free
	nop	
	mov	rdi, r15
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40abc0

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r14
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x50
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x28]
	mov	rdi, rsi
	mov	rsp, rsp
	mov	rsi, rax
	mov	rsp, rsp
	call	compute_bucket_size
	mov	rbp, rax
	lea	rsi, [rsi]
	test	rbp, rbp
	nop	
	je	.label_689
	lea	rsi, [rsi]
	mov	r14b, 1
	cmp	rbp, qword ptr [rbx + 0x10]
	lea	rdi, [rdi]
	je	.label_688
	lea	rdi, [rdi]
	mov	esi, 0x10
	mov	rdi, rbp
	call	rpl_calloc
	mov	rsp, rsp
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	test	rax, rax
	nop	
	je	.label_689
	mov	qword ptr [rsp + 0x10], rbp
	mov	rsp, rsp
	shl	rbp, 4
	add	rbp, qword ptr [rsp]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rbp
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rsp + 0x18], xmm0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x38]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x40]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rbx + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	lea	rdi, [rsp]
	xor	edx, edx
	mov	rsi, rbx
	call	transfer_entries
	mov	rbp, rbp
	test	al, al
	nop	
	je	.label_687
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx]
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx], rax
	nop	
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 0x10], rax
	nop	
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx + 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	mov	rsp, rsp
	jmp	.label_688
.label_687:
	nop	
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	mov	rsp, rsp
	lea	rsi, [rsp]
	mov	edx, 1
	nop	
	mov	rdi, rbx
	call	transfer_entries
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	je	.label_686
	lea	rsi, [rsp]
	mov	rbp, rbp
	xor	edx, edx
	mov	rdi, rbx
	nop	
	call	transfer_entries
	test	al, al
	lea	rdi, [rdi]
	je	.label_686
	mov	rdi, qword ptr [rsp]
	call	free
.label_689:
	mov	rbp, rbp
	xor	r14d, r14d
.label_688:
	lea	rsi, [rsi]
	mov	al, r14b
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
.label_686:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ad70

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
	mov	r12, rsi
	mov	r14, rdi
	mov	rbp, rbp
	mov	r15, qword ptr [r12]
	mov	rbp, rbp
	mov	al, 1
	nop	
	cmp	r15, qword ptr [r12 + 8]
	nop	
	jae	.label_690
	nop	
	mov	dword ptr [rsp + 4], edx
	nop	word ptr cs:[rax + rax]
.label_691:
	cmp	qword ptr [r15], 0
	nop	
	je	.label_693
	mov	rbp, rbp
	mov	rbx, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_698
	nop	word ptr [rax + rax]
.label_695:
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, r13
	call	safe_hasher
	nop	
	mov	rbp, qword ptr [rbx + 8]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_694
	mov	rcx, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rax + 8], rbx
	nop	
	jmp	.label_696
	nop	word ptr [rax + rax]
.label_694:
	mov	rsp, rsp
	mov	qword ptr [rax], r13
	lea	rsi, [rsi]
	inc	qword ptr [r14 + 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	mov	rsp, rsp
	call	free_entry
.label_696:
	nop	
	test	rbp, rbp
	mov	rbp, rbp
	mov	rbx, rbp
	jne	.label_695
.label_698:
	mov	r13, qword ptr [r15]
	nop	
	mov	qword ptr [r15 + 8], 0
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	nop	
	jne	.label_693
	mov	rdi, r14
	mov	rsi, r13
	mov	rsp, rsp
	call	safe_hasher
	mov	rbx, rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbx], 0
	mov	rsp, rsp
	je	.label_692
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsp, rsp
	call	allocate_entry
	test	rax, rax
	je	.label_697
	mov	rbp, rbp
	mov	qword ptr [rax], r13
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 8]
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 8], rax
	jmp	.label_699
.label_692:
	mov	qword ptr [rbx], r13
	nop	
	inc	qword ptr [r14 + 0x18]
.label_699:
	mov	qword ptr [r15], 0
	dec	qword ptr [r12 + 0x18]
.label_693:
	nop	
	add	r15, 0x10
	cmp	r15, qword ptr [r12 + 8]
	mov	rbp, rbp
	jb	.label_691
	mov	al, 1
	jmp	.label_690
.label_697:
	nop	
	xor	eax, eax
.label_690:
	nop	
	add	rsp, 8
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	nop	
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aef0

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	lea	rsi, [rsi]
	test	r14, r14
	mov	rbp, rbp
	je	.label_709
	lea	rdx, [rsp]
	lea	rsi, [rsi]
	xor	ebp, ebp
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdi, r15
	nop	
	mov	rsi, r14
	mov	rsp, rsp
	call	hash_find_entry
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_714
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_700
	mov	rbp, rbp
	mov	qword ptr [rbx], rax
	jmp	.label_700
.label_714:
	nop	
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	nop	
	js	.label_706
	cvtsi2ss	xmm0, rcx
	lea	rdi, [rdi]
	jmp	.label_711
.label_706:
	shr	rcx, 1
	lea	rdi, [rdi]
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_711:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rsp, rsp
	mov	edx, eax
	lea	rsi, [rsi]
	and	edx, 1
	test	rax, rax
	js	.label_703
	cvtsi2ss	xmm1, rax
	mov	rsp, rsp
	jmp	.label_708
.label_703:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	mov	rsp, rsp
	addss	xmm1, xmm1
.label_708:
	mulss	xmm1, dword ptr [rcx + 8]
	lea	rdi, [rdi]
	ucomiss	xmm0, xmm1
	jbe	.label_702
	mov	rdi, r15
	call	check_tuning
	nop	
	mov	rax, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	lea	rdi, [rdi]
	and	edx, 1
	mov	rsp, rsp
	test	rcx, rcx
	mov	rbp, rbp
	js	.label_704
	lea	rdi, [rdi]
	cvtsi2ss	xmm2, rcx
	jmp	.label_712
.label_704:
	shr	rcx, 1
	lea	rsi, [rsi]
	or	rdx, rcx
	mov	rsp, rsp
	cvtsi2ss	xmm2, rdx
	addss	xmm2, xmm2
.label_712:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rsp, rsp
	movss	xmm1, dword ptr [rcx + 8]
	mov	edx, eax
	nop	
	and	edx, 1
	mov	rbp, rbp
	test	rax, rax
	js	.label_701
	cvtsi2ss	xmm0, rax
	jmp	.label_710
.label_701:
	shr	rax, 1
	or	rdx, rax
	lea	rdi, [rdi]
	cvtsi2ss	xmm0, rdx
	mov	rsp, rsp
	addss	xmm0, xmm0
.label_710:
	movaps	xmm3, xmm1
	lea	rsi, [rsi]
	mulss	xmm3, xmm0
	ucomiss	xmm2, xmm3
	mov	rbp, rbp
	jbe	.label_702
	mov	rbp, rbp
	cmp	byte ptr [rcx + 0x10], 0
	mulss	xmm0, dword ptr [rcx + 0xc]
	jne	.label_707
	mulss	xmm0, xmm1
.label_707:
	mov	ebp, 0xffffffff
	lea	rsi, [rsi]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_667]]
	lea	rdi, [rdi]
	jae	.label_700
	lea	rdi, [rdi]
	movss	xmm1,  dword ptr [dword ptr [rip + label_666]]
	movaps	xmm2, xmm0
	lea	rdi, [rdi]
	subss	xmm2, xmm1
	nop	
	cvttss2si	rax, xmm2
	nop	
	movabs	rcx, 0x8000000000000000
	mov	rsp, rsp
	xor	rcx, rax
	mov	rbp, rbp
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	nop	
	mov	rdi, r15
	call	hash_rehash
	test	al, al
	mov	rbp, rbp
	je	.label_700
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, r14
	call	hash_find_entry
	lea	rdi, [rdi]
	test	rax, rax
	jne	.label_709
.label_702:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_705
	mov	rdi, r15
	call	allocate_entry
	mov	rbp, rbp
	mov	ebp, 0xffffffff
	lea	rsi, [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_700
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	inc	qword ptr [r15 + 0x20]
	lea	rsi, [rsi]
	jmp	.label_713
.label_705:
	mov	qword ptr [rax], r14
	nop	
	inc	qword ptr [r15 + 0x20]
	inc	qword ptr [r15 + 0x18]
.label_713:
	mov	rbp, rbp
	mov	ebp, 1
.label_700:
	mov	rbp, rbp
	mov	eax, ebp
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
.label_709:
	lea	rdi, [rdi]
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b170

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	r12d, ecx
	mov	rbp, rdx
	nop	
	mov	r13, rsi
	lea	rdi, [rdi]
	mov	r14, rdi
	mov	rbp, rbp
	call	safe_hasher
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbx]
	xor	r15d, r15d
	nop	
	test	rsi, rsi
	je	.label_715
	cmp	rsi, r13
	nop	
	je	.label_719
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	je	.label_721
.label_719:
	mov	r15, qword ptr [rbx]
	test	r12b, r12b
	mov	rsp, rsp
	je	.label_715
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx + 8]
	test	rsi, rsi
	je	.label_717
	nop	
	movups	xmm0, xmmword ptr [rsi]
	mov	rsp, rsp
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_720
.label_721:
	mov	rax, qword ptr [rbx + 8]
	nop	
	xor	r15d, r15d
	lea	rdi, [rdi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_715
	lea	rsi, [rsi]
	add	rbx, 8
	mov	rsp, rsp
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_718:
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	nop	
	cmp	rsi, r13
	mov	rsp, rsp
	je	.label_716
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	mov	rsp, rsp
	test	al, al
	jne	.label_716
	nop	
	mov	rbx, qword ptr [rbx]
	nop	
	mov	rax, qword ptr [rbx + 8]
	add	rbx, 8
	test	rax, rax
	jne	.label_718
	jmp	.label_715
.label_717:
	mov	rbp, rbp
	mov	qword ptr [rbx], 0
	lea	rsi, [rsi]
	jmp	.label_715
.label_716:
	nop	
	mov	rsi, qword ptr [rbx]
	mov	r15, qword ptr [rsi]
	test	r12b, r12b
	je	.label_715
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbx], rax
.label_720:
	mov	rdi, r14
	mov	rbp, rbp
	call	free_entry
.label_715:
	mov	rax, r15
	mov	rbp, rbp
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	nop	
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b290

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x48]
	test	rax, rax
	nop	
	je	.label_722
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rdi + 0x48], rcx
	ret	
.label_722:
	push	rax
	mov	edi, 0x10
	mov	rsp, rsp
	call	malloc
	add	rsp, 8
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b2c0

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
	je	.label_723
	nop	
	test	ecx, ecx
	mov	rbp, rbp
	cmove	rbx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rax, rbx
.label_723:
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbx
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b310

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	mov	rsp, rsp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	nop	
	mov	r15, rdi
	lea	rdi, [rdi]
	lea	rdx, [rsp + 8]
	mov	ecx, 1
	call	hash_find_entry
	mov	r14, rax
	mov	rbp, rbp
	xor	eax, eax
	test	r14, r14
	mov	rbp, rbp
	je	.label_733
	dec	qword ptr [r15 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	jne	.label_724
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	nop	
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_731
	cvtsi2ss	xmm0, rax
	jmp	.label_735
.label_731:
	shr	rax, 1
	mov	rsp, rsp
	or	rcx, rax
	nop	
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_735:
	nop	
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	mov	edx, ecx
	mov	rsp, rsp
	and	edx, 1
	lea	rsi, [rsi]
	test	rcx, rcx
	mov	rbp, rbp
	js	.label_725
	mov	rbp, rbp
	cvtsi2ss	xmm1, rcx
	mov	rsp, rsp
	jmp	.label_730
.label_725:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_730:
	mulss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	lea	rsi, [rsi]
	jbe	.label_724
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_729
	mov	rsp, rsp
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rcx
	lea	rsi, [rsi]
	jmp	.label_734
.label_729:
	shr	rcx, 1
	or	rdx, rcx
	lea	rsi, [rsi]
	xorps	xmm1, xmm1
	lea	rsi, [rsi]
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_734:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_726
	lea	rsi, [rsi]
	cvtsi2ss	xmm0, rax
	jmp	.label_732
.label_726:
	shr	rax, 1
	or	rdx, rax
	mov	rsp, rsp
	cvtsi2ss	xmm0, rdx
	lea	rdi, [rdi]
	addss	xmm0, xmm0
.label_732:
	movss	xmm2, dword ptr [rcx]
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_724
	mov	rbp, rbp
	mulss	xmm0, dword ptr [rcx + 4]
	cmp	byte ptr [rcx + 0x10], 0
	mov	rsp, rsp
	jne	.label_728
	mulss	xmm0, dword ptr [rcx + 8]
.label_728:
	movss	xmm1,  dword ptr [dword ptr [rip + label_666]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	lea	rdi, [rdi]
	cvttss2si	rax, xmm2
	mov	rsp, rsp
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	mov	rsp, rsp
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	lea	rsi, [rsi]
	test	al, al
	jne	.label_724
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	nop	
	je	.label_736
	nop	word ptr cs:[rax + rax]
.label_727:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	mov	rsp, rsp
	test	rbx, rbx
	mov	rbp, rbp
	mov	rdi, rbx
	jne	.label_727
.label_736:
	nop	
	mov	qword ptr [r15 + 0x48], 0
.label_724:
	mov	rax, r14
.label_733:
	add	rsp, 0x10
	nop	
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b500

	.globl next_prime
	.type next_prime, @function
next_prime:
	nop	
	push	r14
	lea	rdi, [rdi]
	push	rbx
	push	rax
	nop	
	cmp	rdi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rdi
	lea	rsi, [rsi]
	or	rbx, 1
	mov	r14, -1
	jmp	.label_737
	nop	word ptr cs:[rax + rax]
.label_738:
	lea	rsi, [rsi]
	add	rbx, 2
.label_737:
	mov	rbp, rbp
	cmp	rbx, -1
	nop	
	je	.label_739
	nop	
	mov	rdi, rbx
	call	is_prime
	test	al, al
	mov	rbp, rbp
	je	.label_738
	mov	rsp, rsp
	mov	r14, rbx
.label_739:
	nop	
	mov	rax, r14
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b570

	.globl is_prime
	.type is_prime, @function
is_prime:
	lea	rdi, [rdi]
	mov	r8, rdi
	nop	
	mov	esi, 3
	nop	
	mov	edi, 9
	nop	
	mov	ecx, 0x10
	cmp	r8, 0xa
	jb	.label_740
	nop	
.label_741:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	je	.label_740
	add	rdi, rcx
	mov	rbp, rbp
	add	rsi, 2
	lea	rdi, [rdi]
	add	rcx, 8
	mov	rbp, rbp
	cmp	rdi, r8
	jb	.label_741
.label_740:
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r8
	div	rsi
	lea	rsi, [rsi]
	test	rdx, rdx
	setne	al
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b5d0

	.globl free_entry
	.type free_entry, @function
free_entry:
	lea	rsi, [rsi]
	mov	qword ptr [rsi], 0
	nop	
	mov	rax, qword ptr [rdi + 0x48]
	nop	
	mov	qword ptr [rsi + 8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x48], rsi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b5f0

	.globl i_ring_init
	.type i_ring_init, @function
i_ring_init:
	mov	rsp, rsp
	mov	byte ptr [rdi + 0x1c], 1
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x14], 0
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_742:
	lea	rdi, [rdi]
	mov	dword ptr [rdi + rax*4], esi
	lea	rsi, [rsi]
	inc	rax
	cmp	rax, 4
	mov	rbp, rbp
	jne	.label_742
	mov	rbp, rbp
	mov	dword ptr [rdi + 0x10], esi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b630

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b640

	.globl i_ring_push
	.type i_ring_push, @function
i_ring_push:
	mov	al, byte ptr [rdi + 0x1c]
	lea	rsi, [rsi]
	xor	al, 1
	movzx	edx, al
	add	edx, dword ptr [rdi + 0x14]
	and	edx, 3
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], esi
	mov	dword ptr [rdi + 0x14], edx
	mov	rbp, rbp
	mov	ecx, dword ptr [rdi + 0x18]
	cmp	edx, ecx
	lea	rsi, [rsi]
	jne	.label_743
	mov	rbp, rbp
	mov	dl, byte ptr [rdi + 0x1c]
	xor	dl, 1
	mov	rbp, rbp
	movzx	edx, dl
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_743:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b690

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	nop	
	push	rbx
	lea	rdi, [rdi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	call	i_ring_empty
	mov	rbp, rbp
	test	al, al
	mov	rbp, rbp
	jne	.label_744
	mov	rbp, rbp
	mov	ecx, dword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbx + 0x14]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbx + rdx*4]
	mov	rsp, rsp
	mov	dword ptr [rbx + rdx*4], ecx
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbx + 0x14]
	lea	rdi, [rdi]
	cmp	ecx, dword ptr [rbx + 0x18]
	jne	.label_745
	mov	byte ptr [rbx + 0x1c], 1
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_745:
	add	ecx, 3
	and	ecx, 3
	mov	dword ptr [rbx + 0x14], ecx
	mov	rbp, rbp
	pop	rbx
	ret	
.label_744:
	mov	rbp, rbp
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b6f0

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
	mov	eax, OFFSET FLAT:.str.1_10
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_746
	nop	
	mov	rax, rcx
.label_746:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b730

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	nop	
	sub	rsp, 0xc8
	nop	
	test	al, al
	lea	rdi, [rdi]
	je	.label_747
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x50], xmm2
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x60], xmm3
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x70], xmm4
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x80], xmm5
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_747:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	dl, 0x40
	je	.label_748
	lea	rdi, [rdi]
	lea	rax, [rsp]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xc0], rax
	lea	rsi, [rsi]
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], 0x18
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_750
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_749
.label_750:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xb8], rcx
.label_749:
	mov	ecx, dword ptr [rax]
.label_748:
	xor	eax, eax
	call	openat
	lea	rsi, [rsi]
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xc8
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b850

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
	js	.label_751
	mov	rsp, rsp
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_752
	mov	dword ptr [r14], ebp
	mov	rsp, rsp
	jmp	.label_751
.label_752:
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
.label_751:
	nop	
	mov	rax, rbx
	mov	rsp, rsp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b8d0

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
	ja	.label_753
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
	jmp	.label_754
.label_753:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_754:
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
	.align	32
	#Procedure 0x40b940

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	rbx, rdi
	call	fileno
	mov	rbp, rbp
	test	eax, eax
	js	.label_755
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_756
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
	je	.label_755
.label_756:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_755
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	lea	rsi, [rsi]
	test	ebp, ebp
	je	.label_757
	call	__errno_location
	mov	dword ptr [rax], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_757:
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_755:
	lea	rsi, [rsi]
	mov	rdi, rbx
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	rbp
	nop	
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ba00

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xc8
	test	al, al
	mov	rbp, rbp
	je	.label_758
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x30], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm6
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_758:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	nop	
	lea	rax, [rsp + 0xd0]
	nop	
	mov	qword ptr [rsp + 0xb8], rax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xb4], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], 0x10
	nop	
	cmp	esi, 0xb
	mov	rsp, rsp
	ja	.label_761
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	lea	rsi, [rsi]
	jb	.label_759
	mov	rsp, rsp
	mov	eax, 0x514
	lea	rsi, [rsi]
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_767
	mov	rbp, rbp
	test	esi, esi
	jne	.label_761
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_764
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	mov	rbp, rbp
	lea	ecx, [rcx + 8]
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], ecx
	lea	rdi, [rdi]
	jmp	.label_770
.label_761:
	lea	eax, [rsi - 0x400]
	lea	rdi, [rdi]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_762
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_767
	lea	rdi, [rdi]
	mov	ecx, 0x102
	bt	ecx, eax
	mov	rbp, rbp
	jae	.label_771
.label_759:
	lea	rsi, [rsi]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_767:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_763
	mov	rax, rcx
	mov	rbp, rbp
	add	rax, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_766
.label_763:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_766:
	mov	edx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_771:
	nop	
	cmp	eax, 6
	jne	.label_762
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_769
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	lea	rsi, [rsi]
	jmp	.label_760
.label_762:
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_765
	mov	rbp, rbp
	mov	rax, rcx
	mov	rsp, rsp
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_768
.label_764:
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_770:
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	call	rpl_fcntl_DUPFD
	add	rsp, 0xc8
	lea	rsi, [rsi]
	ret	
.label_769:
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_760:
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xc8
	lea	rsi, [rsi]
	ret	
.label_765:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_768:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	rsp, rsp
	call	fcntl
	lea	rsi, [rsi]
	add	rsp, 0xc8
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bca0

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	lea	rdi, [rdi]
	mov	ecx, esi
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	edx, ecx
	jmp	fcntl
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bcc0

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	mov	rsp, rsp
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	lea	rsi, [rsi]
	js	.label_772
	mov	esi, 0x406
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	lea	rsi, [rsi]
	test	ebx, ebx
	nop	
	jns	.label_773
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	nop	
	jne	.label_773
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_774
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_775
.label_773:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	mov	rbp, rbp
	jmp	.label_775
.label_772:
	mov	rbp, rbp
	mov	edi, ebp
	mov	rbp, rbp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_775:
	test	ebx, ebx
	js	.label_774
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_774
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_776
	or	ecx, 1
	nop	
	mov	esi, 2
	mov	rbp, rbp
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	mov	rsp, rsp
	call	fcntl
	mov	rbp, rbp
	cmp	eax, -1
	mov	rbp, rbp
	jne	.label_774
.label_776:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	lea	rdi, [rdi]
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_774:
	lea	rdi, [rdi]
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bdd0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_777
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_777
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_777:
	mov	rsp, rsp
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	
	.section	.text
	.align	32
	#Procedure 0x40be00

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	jne	.label_778
	mov	rbp, rbp
	ret	
.label_778:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, 1
	lea	rdi, [rdi]
	jmp	rpl_fseeko
	nop	
	.section	.text
	.align	32
	#Procedure 0x40be20

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
	jne	.label_779
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_779
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_780
.label_779:
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
.label_780:
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
	je	.label_781
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_781:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bed0

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
	.align	32
	#Procedure 0x40bef0
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	rsp, rsp
	mov	cl, sil
	rol	rdi, cl
	mov	rax, rdi
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bf00
	.globl rotr64
	.type rotr64, @function
rotr64:

	mov	cl, sil
	ror	rdi, cl
	lea	rdi, [rdi]
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40bf10
	.globl rotl32
	.type rotl32, @function
rotl32:

	lea	rdi, [rdi]
	mov	cl, sil
	rol	edi, cl
	mov	eax, edi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bf20
	.globl rotr32
	.type rotr32, @function
rotr32:

	nop
	mov	cl, sil
	ror	edi, cl
	mov	eax, edi
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40bf30
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	mov	cl, sil
	mov	rbp, rbp
	rol	rdi, cl
	mov	rax, rdi
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bf40

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	mov	cl, sil
	ror	rdi, cl
	mov	rax, rdi
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bf50
	.globl rotl16
	.type rotl16, @function
rotl16:

	mov	eax, edi
	mov	cl, sil
	shl	eax, cl
	lea	rsi, [rsi]
	mov	ecx, 0x10
	mov	rsp, rsp
	sub	ecx, esi
	mov	rbp, rbp
	shr	edi, cl
	or	edi, eax
	mov	rbp, rbp
	movzx	eax, di
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bf80
	.globl rotr16
	.type rotr16, @function
rotr16:

	mov	rbp, rbp
	mov	eax, edi
	mov	cl, sil
	shr	eax, cl
	lea	rdi, [rdi]
	mov	ecx, 0x10
	mov	rsp, rsp
	sub	ecx, esi
	shl	edi, cl
	lea	rsi, [rsi]
	or	edi, eax
	movzx	eax, di
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bfb0
	.globl rotl8
	.type rotl8, @function
rotl8:

	mov	rbp, rbp
	mov	eax, edi
	nop	
	mov	cl, sil
	mov	rsp, rsp
	shl	eax, cl
	mov	rsp, rsp
	mov	ecx, 8
	sub	ecx, esi
	nop	
	shr	edi, cl
	lea	rdi, [rdi]
	or	edi, eax
	movzx	eax, dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bfe0
	.globl rotr8
	.type rotr8, @function
rotr8:

	mov	eax, edi
	mov	rsp, rsp
	mov	cl, sil
	nop	
	shr	eax, cl
	mov	rsp, rsp
	mov	ecx, 8
	lea	rsi, [rsi]
	sub	ecx, esi
	lea	rdi, [rdi]
	shl	edi, cl
	or	edi, eax
	movzx	eax, dil
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c010

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
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c0e0

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x40c0f0

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c100

	.globl __lstat
	.type __lstat, @function
__lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section .text
	.align	32
	#Procedure 0x40c110

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
