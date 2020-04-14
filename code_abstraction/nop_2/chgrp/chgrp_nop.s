	.section	.text
	.align	16
	#Procedure 0x401a30

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
	jne	.label_9
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
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.34
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	nop	
	mov	edx, OFFSET FLAT:.str.17
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.18
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	call	__printf_chk
	lea	rdi, [rdi]
	mov	edi, 5
	mov	rbp, rbp
	xor	esi, esi
	mov	rsp, rsp
	call	setlocale
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_8
	nop	
	mov	esi, OFFSET FLAT:.str.36
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.13
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	rbp, rbp
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.13
	nop	
	mov	ecx, OFFSET FLAT:.str.40
	xor	eax, eax
	mov	rbp, rbp
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_9:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401db0

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
	lea	rdi, [rsp + 0x10]
	call	chopt_init
	lea	rdi, [rdi]
	mov	r12d, 0xffffffff
	mov	r15d, 0x10
.label_972:
	mov	rbp, rbp
	xor	r13d, r13d
	jmp	.label_11
.label_18:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x10], 1
	nop	
.label_11:
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
	jle	.label_24
	cmp	eax, 0x7f
	lea	rsi, [rsi]
	jle	.label_34
	mov	rsp, rsp
	add	eax, -0x80
	cmp	eax, 3
	lea	rsi, [rsi]
	ja	.label_10
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rax * 8) + label_25]]
.label_971:
	mov	rbp, rbp
	mov	r12d, 1
	jmp	.label_11
	nop	dword ptr [rax + rax]
.label_24:
	cmp	eax, 0x4f
	jg	.label_30
	cmp	eax, 0x47
	lea	rsi, [rsi]
	jle	.label_31
	mov	r15d, 0x11
	cmp	eax, 0x48
	je	.label_11
	cmp	eax, 0x4c
	jne	.label_10
	lea	rsi, [rsi]
	mov	r15d, 2
	jmp	.label_11
	nop	word ptr cs:[rax + rax]
.label_34:
	mov	rsp, rsp
	cmp	eax, 0x66
	je	.label_13
	mov	rbp, rbp
	cmp	eax, 0x68
	mov	rsp, rsp
	je	.label_36
	cmp	eax, 0x76
	mov	rbp, rbp
	jne	.label_10
	mov	dword ptr [rsp + 0x10], 0
	jmp	.label_11
	nop	dword ptr [rax]
.label_30:
	nop	
	cmp	eax, 0x50
	je	.label_15
	mov	rsp, rsp
	cmp	eax, 0x52
	lea	rdi, [rdi]
	je	.label_17
	cmp	eax, 0x63
	je	.label_18
	mov	rsp, rsp
	jmp	.label_10
.label_973:
	mov	r13b, 1
	jmp	.label_11
.label_974:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + reference_file]],  rax
	mov	rsp, rsp
	jmp	.label_11
.label_13:
	mov	byte ptr [rsp + 0x21], 1
	jmp	.label_11
.label_36:
	xor	r12d, r12d
	jmp	.label_11
.label_15:
	mov	r15d, 0x10
	jmp	.label_11
.label_17:
	mov	byte ptr [rsp + 0x14], 1
	lea	rsi, [rsi]
	jmp	.label_11
.label_31:
	cmp	eax, -1
	jne	.label_27
	mov	rsp, rsp
	mov	r14d, 0x10
	cmp	byte ptr [rsp + 0x14], 0
	lea	rdi, [rdi]
	je	.label_21
	lea	rdi, [rdi]
	cmp	r15d, 0x10
	jne	.label_29
	cmp	r12d, 1
	mov	rsp, rsp
	mov	r12d, 0
	lea	rsi, [rsi]
	jne	.label_21
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
.label_29:
	mov	r14d, r15d
.label_21:
	test	r12d, r12d
	setne	byte ptr [rsp + 0x20]
	nop	
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	rdi, [rdi]
	mov	ecx, ebp
	sub	ecx, eax
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + reference_file]]
	mov	rbp, rbp
	cmp	rsi, 1
	mov	edx, 1
	mov	rsp, rsp
	adc	edx, 0
	cmp	ecx, edx
	jl	.label_37
	lea	rdi, [rdi]
	test	rsi, rsi
	nop	
	je	.label_19
	lea	rdx, [rsp + 0x38]
	mov	edi, 1
	call	__xstat
	nop	
	test	eax, eax
	mov	rsp, rsp
	jne	.label_22
	mov	rsp, rsp
	mov	ebp, dword ptr [rsp + 0x58]
	nop	
	mov	edi, ebp
	lea	rdi, [rdi]
	call	gid_to_name
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_23
.label_19:
	lea	ecx, [rax + 1]
	nop	
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	rbp, rbp
	mov	r12, qword ptr [rbx + rax*8]
	xor	eax, eax
	mov	rsp, rsp
	cmp	byte ptr [r12], 0
	je	.label_26
	lea	rsi, [rsi]
	mov	rdi, r12
	call	xstrdup
.label_26:
	mov	qword ptr [rsp + 0x30], rax
	mov	ebp, 0xffffffff
	mov	rbp, rbp
	cmp	byte ptr [r12], 0
	mov	rsp, rsp
	je	.label_23
	mov	rdi, r12
	call	getgrnam
	test	rax, rax
	je	.label_32
	mov	ebp, dword ptr [rax + 0x10]
	jmp	.label_33
.label_32:
	lea	rcx, [rsp + 0x38]
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rsp, rsp
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_0
	mov	rbp, rbp
	mov	rdi, r12
	lea	rsi, [rsi]
	call	xstrtoul
	test	eax, eax
	nop	
	jne	.label_35
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rax, rbp
	mov	rsp, rsp
	shr	rax, 0x20
	jne	.label_35
.label_33:
	call	endgrent
.label_23:
	test	r13b, r13b
	nop	
	je	.label_12
	lea	rsi, [rsi]
	mov	al, byte ptr [rsp + 0x14]
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	je	.label_12
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:main.dev_ino_buf
	nop	
	call	get_root_dev_ino
	mov	qword ptr [rsp + 0x18], rax
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_20
.label_12:
	or	r14d, 0x400
	nop	
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	rdi, [rbx + rax*8]
	lea	rax, [rsp + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	mov	edx, 0xffffffff
	mov	r8d, 0xffffffff
	lea	rsi, [rsi]
	mov	r9d, 0xffffffff
	mov	esi, r14d
	mov	rbp, rbp
	mov	ecx, ebp
	call	chown_files
	movzx	eax, al
	mov	rsp, rsp
	xor	eax, 1
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_27:
	cmp	eax, 0xffffff7d
	lea	rsi, [rsi]
	je	.label_16
	cmp	eax, 0xffffff7e
	jne	.label_10
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	call	usage
.label_16:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], 0
	nop	
	mov	esi, OFFSET FLAT:.str.13
	nop	
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.19
	mov	r9d, OFFSET FLAT:.str.20
	mov	rbp, rbp
	xor	eax, eax
	call	version_etc
	nop	
	xor	edi, edi
	call	exit
.label_10:
	mov	edi, 1
	call	usage
.label_37:
	xor	edi, edi
	cmp	eax, ebp
	jge	.label_14
	mov	esi, OFFSET FLAT:.str.23
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	r14, rax
	movsxd	rax, ebp
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + rax*8 - 8]
	lea	rsi, [rsi]
	call	quote
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	lea	rsi, [rsi]
	call	error
	nop	
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_22:
	mov	rbp, rbp
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsp, rsp
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + reference_file]]
	mov	rsp, rsp
	mov	edi, 4
	jmp	.label_28
.label_20:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.24
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	lea	rdi, [rdi]
	mov	edi, 4
	mov	esi, OFFSET FLAT:.str_1
.label_28:
	call	quotearg_style
	mov	rcx, rax
	mov	rbp, rbp
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rbp, rbp
	mov	rdx, rbp
	call	error
.label_14:
	mov	esi, OFFSET FLAT:.str.22
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 1
	call	usage
.label_35:
	nop	
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.53
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r12
	lea	rdi, [rdi]
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	edi, 1
	nop	
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402370

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
	.align	16
	#Procedure 0x4023a0
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
	.align	16
	#Procedure 0x4023c0

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
	je	.label_39
	mov	rdi, qword ptr [rax]
	lea	rdi, [rdi]
	jmp	.label_38
.label_39:
	lea	rdi, [rdi]
	mov	edi, ebx
	mov	rbp, rbp
	lea	rsi, [rsp]
	call	umaxtostr
	mov	rdi, rax
.label_38:
	call	xstrdup
	lea	rdi, [rdi]
	add	rsp, 0x20
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402410
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
	je	.label_40
	mov	rdi, qword ptr [rax]
	mov	rbp, rbp
	jmp	.label_41
.label_40:
	lea	rsi, [rsi]
	mov	edi, ebx
	nop	
	lea	rsi, [rsp]
	lea	rdi, [rdi]
	call	umaxtostr
	mov	rdi, rax
.label_41:
	call	xstrdup
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402460

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
	sub	rsp, 0x178
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x94], r9d
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x16c], ecx
	nop	
	mov	dword ptr [rsp + 0x148], edx
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0x1b0]
	and	r9d, r8d
	mov	dword ptr [rsp + 0xa4], r9d
	mov	rsp, rsp
	xor	eax, eax
	cmp	r9d, -1
	je	.label_68
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xa0], r8d
	jmp	.label_81
.label_68:
	mov	dword ptr [rsp + 0xa0], r8d
	cmp	byte ptr [r15 + 0x10], 0
	jne	.label_81
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	dword ptr [r15], 2
	jne	.label_81
	mov	eax, 8
.label_81:
	lea	rsi, [rsi]
	or	eax, esi
	xor	edx, edx
	nop	
	mov	esi, eax
	mov	rsp, rsp
	call	xfts_open
	mov	r14, rax
	mov	qword ptr [rsp + 0x170], r14
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	rpl_fts_read
	mov	rbp, rbp
	mov	r13, rax
	mov	rbp, rbp
	mov	r12b, 1
	nop	
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_91
	mov	bl, 1
	jmp	.label_92
.label_56:
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.19_0
.label_59:
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	xor	ebp, ebp
	nop	
	mov	rsi, qword ptr [rsp + 0x160]
	lea	rsi, [rsi]
	jmp	.label_101
.label_69:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x160], rbp
	nop	
	mov	edi, dword ptr [rsp + 0x98]
	call	close
	lea	rsi, [rsi]
	test	eax, eax
	setne	al
	movzx	eax, al
	lea	eax, [rax*4 + 2]
	mov	rsp, rsp
	jmp	.label_63
	nop	word ptr [rax + rax]
.label_92:
	mov	r10, qword ptr [r13 + 0x30]
	mov	rbp, qword ptr [r13 + 0x38]
	movzx	eax, word ptr [r13 + 0x70]
	dec	eax
	lea	rsi, [rsi]
	cmp	eax, 9
	mov	rsp, rsp
	ja	.label_62
	jmp	qword ptr [word ptr [+ (rax * 8) + label_121]]
.label_889:
	cmp	byte ptr [r15 + 4], 0
	je	.label_62
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	mov	r12b, 1
	test	rax, rax
	je	.label_72
	mov	rcx, qword ptr [r13 + 0x80]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rax]
	lea	rsi, [rsi]
	jne	.label_72
	mov	rcx, qword ptr [r13 + 0x78]
	nop	
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_72
	movzx	eax, byte ptr [rbp]
	lea	rdi, [rdi]
	cmp	eax, 0x2f
	mov	rbp, rbp
	jne	.label_45
	cmp	byte ptr [rbp + 1], 0
	je	.label_49
.label_45:
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.4_0
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rdx, rbp
	mov	rbp, rbp
	mov	rbp, r14
	lea	rdi, [rdi]
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rbp, rbp
	call	quotearg_n_style
	mov	rsp, rsp
	mov	r12, rax
	mov	edi, 1
	mov	esi, 4
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str_1
	call	quotearg_n_style
	mov	r8, rax
	mov	rsp, rsp
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, r14
	mov	r14, rbp
	mov	rbp, rbp
	mov	rcx, r12
	call	error
	jmp	.label_75
.label_890:
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsi, r13
	nop	
	mov	r12, rbp
	mov	rsp, rsp
	mov	rbp, r10
	call	cycle_warning_required
	lea	rsi, [rsi]
	mov	r10, rbp
	mov	rbp, r12
	test	al, al
	mov	rsp, rsp
	je	.label_62
	xor	r12d, r12d
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
	mov	rbp, rbp
	mov	edx, 5
	mov	rbp, rbp
	mov	r13, rbp
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbp, r14
	mov	rbp, rbp
	mov	r14, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r13
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, r14
	mov	r14, rbp
	call	error
	jmp	.label_72
.label_891:
	mov	qword ptr [rsp + 0x160], rbp
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x14f], bl
	nop	
	mov	r14b, 1
	xor	ebp, ebp
	lea	rdi, [rdi]
	cmp	byte ptr [r15 + 0x11], 0
	jne	.label_77
	mov	r12d, dword ptr [r13 + 0x40]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
	jmp	.label_104
.label_892:
	mov	r12b, 1
	cmp	byte ptr [r15 + 4], 0
	je	.label_72
.label_62:
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0xa4], -1
	mov	rsp, rsp
	jne	.label_110
	cmp	dword ptr [r15], 2
	jne	.label_110
	lea	rsi, [rsi]
	cmp	qword ptr [r15 + 8], 0
	je	.label_112
	nop	word ptr cs:[rax + rax]
.label_110:
	lea	rsi, [rsi]
	lea	rdx, [r13 + 0x78]
	cmp	byte ptr [r15 + 0x10], 0
	mov	rsp, rsp
	mov	r14d, dword ptr [rsp + 0xa0]
	lea	rdi, [rdi]
	jne	.label_115
	jmp	.label_94
.label_893:
	nop	
	mov	qword ptr [rsp + 0x160], rbp
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x14f], bl
	mov	r14b, 1
	xor	ebp, ebp
	cmp	byte ptr [r15 + 0x11], 0
	jne	.label_77
	mov	rsp, rsp
	mov	ebp, dword ptr [r13 + 0x40]
	lea	rdi, [rdi]
	xor	ebx, ebx
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x160]
	nop	
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	edi, edi
	nop	
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebp
	jmp	.label_43
.label_894:
	mov	rsp, rsp
	cmp	qword ptr [r13 + 0x58], 0
	jne	.label_53
	nop	
	cmp	qword ptr [r13 + 0x20], 0
	je	.label_55
.label_53:
	mov	qword ptr [rsp + 0x160], rbp
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x14f], bl
	mov	rsp, rsp
	mov	r14b, 1
	lea	rdi, [rdi]
	xor	ebp, ebp
	cmp	byte ptr [r15 + 0x11], 0
	mov	rbp, rbp
	je	.label_58
.label_77:
	lea	rdi, [rdi]
	xor	ebx, ebx
	lea	rsi, [rsi]
	xor	r12d, r12d
	lea	rsi, [rsi]
	jmp	.label_65
.label_58:
	mov	r12d, dword ptr [r13 + 0x40]
	lea	rsi, [rsi]
	xor	ebx, ebx
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6_0
.label_104:
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x160]
	call	quotearg_style
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, r12d
	mov	rdx, rbp
.label_43:
	mov	rsp, rsp
	call	error
	xor	ebp, ebp
	xor	r12d, r12d
	lea	rdi, [rdi]
	jmp	.label_65
.label_112:
	lea	rdx, [r13 + 0x78]
	cmp	byte ptr [r15 + 0x10], 0
	mov	sil, 1
	mov	rsp, rsp
	mov	r14d, dword ptr [rsp + 0xa0]
	mov	rsp, rsp
	je	.label_83
.label_115:
	mov	eax, dword ptr [r13 + 0x90]
	mov	rsp, rsp
	mov	ecx, 0xf000
	and	eax, ecx
	mov	rbp, rbp
	cmp	eax, 0xa000
	jne	.label_94
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x170]
	mov	esi, dword ptr [rax + 0x2c]
	mov	edi, 1
	mov	rsp, rsp
	xor	r8d, r8d
	mov	rdx, r10
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x160], rbp
	mov	rbp, rbp
	lea	rbp, [rsp]
	lea	rsi, [rsi]
	mov	rcx, rbp
	mov	r12, r13
	mov	r13, r10
	call	__fxstatat
	lea	rdi, [rdi]
	mov	r10, r13
	mov	r13, r12
	test	eax, eax
	nop	
	mov	rdx, rbp
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x160]
	mov	rbp, rbp
	je	.label_94
	mov	byte ptr [rsp + 0x14f], bl
	mov	dword ptr [rsp + 0xa0], r14d
	mov	r14b, 1
	cmp	byte ptr [r15 + 0x11], 0
	je	.label_109
	lea	rsi, [rsi]
	xor	ebp, ebp
	lea	rsi, [rsi]
	jmp	.label_114
	nop	word ptr [rax + rax]
.label_94:
	cmp	r14d, -1
	mov	rbp, rbp
	je	.label_47
	mov	eax, dword ptr [rdx + 0x1c]
	mov	rsp, rsp
	cmp	eax, r14d
	sete	sil
	lea	rdi, [rdi]
	cmp	dword ptr [rsp + 0x94], -1
	lea	rdi, [rdi]
	je	.label_83
	cmp	eax, r14d
	mov	rsp, rsp
	je	.label_122
	lea	rdi, [rdi]
	jmp	.label_83
.label_47:
	mov	sil, 1
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x94], -1
	je	.label_83
.label_122:
	nop	
	mov	eax, dword ptr [rsp + 0x94]
	nop	
	cmp	dword ptr [rdx + 0x20], eax
	sete	sil
.label_83:
	movzx	eax, word ptr [r13 + 0x70]
	lea	rsi, [rsi]
	cmp	eax, 6
	ja	.label_42
	mov	rbp, rbp
	mov	ecx, 0x56
	bt	ecx, eax
	jae	.label_42
	mov	rax, qword ptr [r15 + 8]
	test	rax, rax
	je	.label_42
	mov	rcx, qword ptr [rdx + 8]
	nop	
	cmp	rcx, qword ptr [rax]
	jne	.label_42
	nop	
	mov	rcx, qword ptr [rdx]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_42
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp]
	lea	rsi, [rsi]
	cmp	eax, 0x2f
	lea	rsi, [rsi]
	jne	.label_60
	lea	rdi, [rdi]
	cmp	byte ptr [rbp + 1], 0
	mov	rbp, rbp
	je	.label_64
.label_60:
	mov	dword ptr [rsp + 0xa0], r14d
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.4_0
	nop	
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	nop	
	mov	rdx, rbp
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	r12, rax
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, 4
	mov	edx, OFFSET FLAT:.str_1
	mov	rbp, rbp
	call	quotearg_n_style
	nop	
	mov	r8, rax
	xor	edi, edi
	nop	
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, r14
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x170]
	mov	rcx, r12
	mov	rbp, rbp
	call	error
	jmp	.label_86
	nop	word ptr cs:[rax + rax]
.label_42:
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x14f], bl
	lea	rdi, [rdi]
	test	sil, sil
	je	.label_89
	mov	dword ptr [rsp + 0xa0], r14d
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x170]
	mov	rsp, rsp
	mov	r14d, dword ptr [rax + 0x2c]
	cmp	byte ptr [r15 + 0x10], 0
	mov	rsp, rsp
	je	.label_90
	nop	
	cmp	dword ptr [rsp + 0xa4], -1
	je	.label_96
	mov	eax, dword ptr [rdx + 0x18]
	nop	
	mov	ecx, 0xf000
	and	eax, ecx
	lea	rdi, [rdi]
	mov	r12d, 0x900
	cmp	eax, 0x8000
	je	.label_111
	lea	rsi, [rsi]
	cmp	eax, 0x4000
	jne	.label_96
	mov	r12d, 0x10900
.label_111:
	mov	rbp, rbp
	mov	byte ptr [rsp + 0xa8], sil
	mov	rbp, rbp
	mov	rbx, rdx
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, r14d
	mov	rsi, r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x150], r10
	mov	rsp, rsp
	mov	edx, r12d
	mov	rsp, rsp
	call	openat
	mov	rsp, rsp
	test	eax, eax
	jns	.label_116
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	r15, rax
	nop	
	mov	eax, dword ptr [r15]
	cmp	eax, 0xd
	jne	.label_78
	mov	ecx, dword ptr [rbx + 0x18]
	mov	eax, 0xf000
	mov	rsp, rsp
	and	ecx, eax
	mov	eax, 0xd
	cmp	ecx, 0x8000
	jne	.label_78
	or	r12d, 1
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, r14d
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x150]
	mov	edx, r12d
	lea	rdi, [rdi]
	call	openat
	test	eax, eax
	lea	rdi, [rdi]
	js	.label_44
.label_116:
	nop	
	mov	dword ptr [rsp + 0x98], eax
	mov	edi, 1
	mov	esi, eax
	lea	rdx, [rsp + 0xb0]
	mov	rsp, rsp
	call	__fxstat
	nop	
	mov	r15d, 6
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_57
	mov	rsp, rsp
	mov	r12d, dword ptr [rsp + 0xa0]
	lea	rsi, [rsi]
	jmp	.label_50
.label_89:
	mov	rbx, rdx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x160], rbp
	mov	dword ptr [rsp + 0xa0], r14d
	nop	
	mov	r14b, 1
	mov	rbp, rbp
	xor	ebp, ebp
	mov	r12b, 1
	mov	rsp, rsp
	jmp	.label_65
.label_90:
	mov	byte ptr [rsp + 0xa8], sil
	mov	rbx, rdx
	mov	r8d, 0x100
	mov	edi, r14d
	mov	rsi, r10
	mov	edx, dword ptr [rsp + 0x148]
	mov	ecx, dword ptr [rsp + 0x16c]
	call	fchownat
	test	eax, eax
	lea	rsi, [rsi]
	sete	r12b
	mov	r14b, 1
	je	.label_80
	mov	rbp, rbp
	call	__errno_location
	cmp	dword ptr [rax], 0x5f
	setne	r14b
	mov	al, 1
	mov	rsp, rsp
	je	.label_82
	mov	al, r12b
.label_82:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x160], rbp
	mov	r12b, al
	jmp	.label_85
.label_96:
	mov	rbp, rbp
	mov	byte ptr [rsp + 0xa8], sil
	mov	rbx, rdx
.label_95:
	mov	qword ptr [rsp + 0x160], rbp
	xor	r8d, r8d
	mov	edi, r14d
	mov	rsi, r10
	nop	
	mov	edx, dword ptr [rsp + 0x148]
	mov	ecx, dword ptr [rsp + 0x16c]
	call	fchownat
	lea	rdi, [rdi]
	test	eax, eax
	mov	rsp, rsp
	sete	r12b
	mov	r14b, 1
	jmp	.label_85
.label_109:
	lea	rsi, [rsi]
	mov	r12, r15
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rsi, [rsi]
	xor	ebp, ebp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.10_0
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	r15, rax
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x160]
	lea	rdi, [rdi]
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r15
	nop	
	call	error
	mov	r15, r12
.label_114:
	nop	
	lea	rbx, [rsp]
	xor	r12d, r12d
	jmp	.label_65
.label_55:
	mov	qword ptr [r13 + 0x20], 1
	mov	edx, 1
	nop	
	mov	rdi, r14
	mov	rsi, r13
	call	rpl_fts_set
	lea	rdi, [rdi]
	mov	r12b, 1
	jmp	.label_72
.label_80:
	mov	qword ptr [rsp + 0x160], rbp
.label_85:
	test	r12b, 1
	jne	.label_71
	jmp	.label_125
.label_57:
	mov	rax, qword ptr [rbx + 8]
	mov	r15d, 4
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	r12d, dword ptr [rsp + 0xa0]
	jne	.label_50
	mov	rsp, rsp
	mov	rax, qword ptr [rbx]
	cmp	rax, qword ptr [rsp + 0xb0]
	jne	.label_50
	cmp	r12d, -1
	lea	rsi, [rsi]
	mov	r15d, 2
	je	.label_46
	cmp	dword ptr [rsp + 0xcc], r12d
	nop	
	jne	.label_50
.label_46:
	mov	rbp, rbp
	cmp	dword ptr [rsp + 0x94], -1
	lea	rsi, [rsi]
	je	.label_54
	mov	eax, dword ptr [rsp + 0x94]
	lea	rdi, [rdi]
	cmp	dword ptr [rsp + 0xd0], eax
	mov	rsp, rsp
	jne	.label_50
.label_54:
	nop	
	mov	edi, dword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rsp + 0x148]
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0x16c]
	call	fchown
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	mov	r15d, 6
	je	.label_69
.label_50:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x160], rbp
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	r14d, dword ptr [rbp]
	nop	
	mov	edi, dword ptr [rsp + 0x98]
	mov	rbp, rbp
	call	close
	nop	
	mov	rax, r15
	mov	rsp, rsp
	mov	dword ptr [rbp], r14d
	jmp	.label_63
.label_64:
	nop	
	mov	dword ptr [rsp + 0xa0], r14d
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.3_0
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, rbp
	call	quotearg_style
	nop	
	mov	rcx, rax
	xor	edi, edi
	nop	
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rdx, r14
	lea	rdi, [rdi]
	call	error
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0x170]
.label_86:
	xor	r12d, r12d
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rcx, rax
	nop	
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_72
.label_49:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_0
	mov	rsp, rsp
	mov	edx, 5
	lea	rsi, [rsi]
	mov	r12, rbp
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, r14
	mov	r14, rax
	nop	
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	nop	
	mov	rdx, r14
	mov	r14, rbp
	lea	rdi, [rdi]
	call	error
.label_75:
	xor	r12d, r12d
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.5_0
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rsp, rsp
	call	error
	nop	
	mov	edx, 4
	mov	rdi, r14
	mov	rsi, r13
	call	rpl_fts_set
	lea	rsi, [rsi]
	mov	rdi, r14
	call	rpl_fts_read
	lea	rdi, [rdi]
	jmp	.label_72
.label_44:
	lea	rdi, [rdi]
	mov	eax, dword ptr [r15]
.label_78:
	nop	
	mov	qword ptr [rsp + 0x160], rbp
	cmp	eax, 0xd
	setne	al
	lea	rdi, [rdi]
	movzx	eax, al
	mov	rbp, rbp
	add	eax, 5
	mov	r12d, dword ptr [rsp + 0xa0]
.label_63:
	mov	dword ptr [rsp + 0xa0], r12d
	mov	rbp, rbp
	add	eax, -2
	lea	rdi, [rdi]
	cmp	eax, 4
	nop	
	mov	r15, qword ptr [rsp + 0x1b0]
	mov	rbp, rbp
	ja	.label_52
	mov	rbp, rbp
	mov	r14b, 1
	xor	r12d, r12d
	lea	rdi, [rdi]
	xor	ebp, ebp
	mov	r10, qword ptr [rsp + 0x150]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_61]]
	.section	.text
	.align	16
	#Procedure 0x403600

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
	je	.label_126
	test	r14, r14
	je	.label_128
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
	jmp	.label_127
.label_126:
	xor	r15d, r15d
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_127
	mov	rdi, r14
	jmp	.label_129
.label_127:
	mov	rbp, rbp
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_128:
	lea	rdi, [rdi]
	mov	rdi, rbx
.label_129:
	pop	rbx
	pop	r14
	pop	r15
	jmp	xstrdup
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4036a0
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
	#Procedure 0x4036b0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4036c0

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
	je	.label_133
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_130
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_130
.label_133:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_131
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_130:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_4
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_132
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_2
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
.label_131:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_132:
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
	#Procedure 0x4037c0

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	lea	rdi, [rdi]
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	dword ptr [rax + rax]
.label_134:
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
	ja	.label_134
	mov	rax, rsi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403820

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
	je	.label_135
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
	jl	.label_137
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_137
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
	jne	.label_136
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_136:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_137:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_135:
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
	.align	16
	#Procedure 0x403910
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
	#Procedure 0x403960
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
	#Procedure 0x403980
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
	#Procedure 0x4039a0
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
	#Procedure 0x403a10
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
	#Procedure 0x403a30
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
	je	.label_138
	test	rdx, rdx
	nop	
	je	.label_138
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_138:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403a70
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
	#Procedure 0x403b20

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
.label_185:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	ecx, r15d
	lea	rdi, [rdi]
	cmp	r15d, 0xa
	ja	.label_141
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_150]]
.label_937:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.11_1
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
.label_938:
	mov	byte ptr [rsp + 0x43], r8b
	mov	r13, rbp
	nop	
	test	r12b, 1
	nop	
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	rdx, qword ptr [rsp + 0x78]
	jne	.label_177
	mov	rbp, rbp
	mov	al, byte ptr [rdx]
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	mov	ecx, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], rcx
	je	.label_177
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	nop	dword ptr [rax]
.label_196:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_193
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rcx + rsi], al
.label_193:
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + rcx + 1]
	mov	rsp, rsp
	inc	rcx
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_196
.label_177:
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
	jmp	.label_143
.label_930:
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
	jmp	.label_143
.label_933:
	lea	rsi, [rsi]
	mov	al, 1
.label_931:
	mov	rbp, rbp
	mov	r12b, 1
.label_934:
	mov	rbp, rbp
	test	r12b, 1
	mov	cl, 1
	nop	
	je	.label_229
	lea	rsi, [rsi]
	mov	cl, al
.label_229:
	mov	rsp, rsp
	mov	al, cl
.label_932:
	mov	r9d, 2
	test	r12b, 1
	mov	rsp, rsp
	jne	.label_235
	test	r10, r10
	je	.label_242
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx], 0x27
	mov	rsp, rsp
	mov	ecx, 1
	mov	rsp, rsp
	jmp	.label_243
.label_235:
	xor	ecx, ecx
	jmp	.label_243
.label_935:
	mov	rsp, rsp
	mov	r9d, 5
	test	r12b, 1
	jne	.label_252
	lea	rdi, [rdi]
	test	r10, r10
	je	.label_257
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], 0x22
	mov	rsp, rsp
	mov	eax, 1
	jmp	.label_171
.label_936:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10_1
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xf0], rax
	mov	sil, 1
	jmp	.label_143
.label_242:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_243:
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
	jmp	.label_143
.label_252:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_171
.label_257:
	lea	rdi, [rdi]
	mov	eax, 1
.label_171:
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10_1
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
.label_143:
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
	jmp	.label_174
	nop	word ptr cs:[rax + rax]
.label_145:
	nop	
	inc	rdi
.label_174:
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_230
	nop	
	cmp	rdi, rbp
	mov	rsp, rsp
	jne	.label_240
	jmp	.label_237
	nop	dword ptr [rax + rax]
.label_230:
	mov	r13, -1
	lea	rsi, [rsi]
	cmp	byte ptr [r11 + rdi], 0
	je	.label_241
.label_240:
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_248
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_250
	cmp	rbp, -1
	lea	rsi, [rsi]
	jne	.label_250
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
.label_250:
	mov	rsp, rsp
	cmp	rbx, rbp
	lea	rsi, [rsi]
	jbe	.label_160
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_163
	nop	dword ptr [rax + rax]
.label_248:
	nop	
	mov	dword ptr [rsp + 0x10c], 0
	lea	rdi, [rdi]
	jmp	.label_163
	nop	word ptr cs:[rax + rax]
.label_160:
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
	jne	.label_212
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
	je	.label_163
	jmp	.label_164
.label_212:
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
.label_163:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_217
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	nop	
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_219]]
.label_952:
	mov	rsp, rsp
	test	rdi, rdi
	mov	rbp, rbp
	jne	.label_183
	mov	rbp, rbp
	jmp	.label_227
.label_956:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	cmp	rbp, -1
	nop	
	je	.label_228
	lea	rdi, [rdi]
	test	rdi, rdi
	nop	
	jne	.label_232
	nop	
	cmp	rbp, 1
	je	.label_227
	xor	r13d, r13d
	jmp	.label_148
.label_945:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xc3], 0
	je	.label_244
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_164
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_253
	mov	al, r14b
	and	al, 1
	jne	.label_256
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x58], r10
	nop	
	jae	.label_182
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x27
.label_182:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	nop	
	jae	.label_146
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_146:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_154
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_154:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	add	rax, 3
	mov	rsp, rsp
	mov	r14b, 1
	mov	rbp, rbp
	mov	rcx, rax
	jmp	.label_153
.label_946:
	mov	rbp, rbp
	mov	bl, 0x62
	mov	rsp, rsp
	jmp	.label_176
.label_947:
	lea	rsi, [rsi]
	mov	cl, 0x74
	jmp	.label_172
.label_948:
	mov	rsp, rsp
	mov	bl, 0x76
	nop	
	jmp	.label_176
.label_949:
	mov	bl, 0x66
	jmp	.label_176
.label_950:
	lea	rsi, [rsi]
	mov	cl, 0x72
	jmp	.label_172
.label_953:
	mov	al, 1
	mov	qword ptr [rsp + 0x68], rax
	lea	rdi, [rdi]
	cmp	r9d, 2
	jne	.label_186
	cmp	byte ptr [rsp + 0xe7], 0
	nop	
	jne	.label_187
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
	jae	.label_191
	nop	
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_191:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_254
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x5c
.label_254:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_213
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_213:
	add	qword ptr [rsp + 0x58], 3
	xor	r14d, r14d
.label_186:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_148
.label_954:
	cmp	r9d, 5
	lea	rdi, [rdi]
	je	.label_226
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_183
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_183
	mov	rbp, rbp
	jmp	.label_236
.label_955:
	lea	rdi, [rdi]
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_238
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_245
	lea	rdi, [rdi]
	jmp	.label_249
.label_217:
	mov	qword ptr [rsp + 0x80], r9
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x43], r8b
	mov	qword ptr [rsp + 0x110], r10
	cmp	qword ptr [rsp + 0xb8], 1
	jne	.label_199
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
.label_139:
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
	ja	.label_152
	lea	rdi, [rdi]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_152
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_148
.label_228:
	test	rdi, rdi
	jne	.label_175
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_175
.label_227:
	mov	dl, 1
.label_951:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x66], 0
	lea	rsi, [rsi]
	je	.label_180
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, dl
	mov	rsp, rsp
	jmp	.label_148
.label_244:
	cmp	dword ptr [rsp + 0x3c], 0
	jne	.label_145
	jmp	.label_183
.label_238:
	cmp	byte ptr [rsp + 0x57], 0
	mov	cl, r15b
	je	.label_172
.label_245:
	xor	eax, eax
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_168
.label_172:
	cmp	byte ptr [rsp + 0x66], 0
	mov	bl, cl
	lea	rdi, [rdi]
	je	.label_194
.label_176:
	xor	eax, eax
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc3], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_148
	lea	rsi, [rsi]
	jmp	.label_161
.label_199:
	mov	qword ptr [rsp + 0x98], 0
	cmp	rbp, -1
	jne	.label_204
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
.label_204:
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
.label_209:
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
	je	.label_239
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x110]
	mov	rsp, rsp
	movabs	rsi, 0x20000002b
	je	.label_247
	lea	rsi, [rsi]
	cmp	rbp, -2
	nop	
	mov	rdi, qword ptr [rsp + 0xa8]
	je	.label_210
	lea	rsi, [rsi]
	cmp	rbp, 1
	seta	al
	lea	rdi, [rdi]
	and	al, byte ptr [rsp + 0x77]
	movzx	eax, al
	nop	
	cmp	eax, 1
	jne	.label_261
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	lea	rax, [rcx + rax]
	nop	
	mov	ecx, 1
	nop	
.label_159:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_151
	lea	rdi, [rdi]
	bt	rsi, rdx
	jb	.label_231
.label_151:
	lea	rsi, [rsi]
	inc	rcx
	mov	rbp, rbp
	cmp	rcx, rbp
	jb	.label_159
.label_261:
	nop	
	mov	edi, dword ptr [rsp + 0xc4]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	nop	
	jne	.label_173
	xor	r13d, r13d
.label_173:
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
	je	.label_209
	mov	rsp, rsp
	jmp	.label_139
.label_175:
	lea	rsi, [rsi]
	mov	rbp, -1
	mov	rbp, rbp
	xor	r13d, r13d
	jmp	.label_148
.label_226:
	cmp	dword ptr [rsp + 0x44], 0
	lea	rdi, [rdi]
	je	.label_183
	lea	rcx, [rdi + 2]
	mov	rsp, rsp
	cmp	rcx, rbp
	jae	.label_183
	mov	rbp, rbp
	movzx	eax, byte ptr [rdi + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_183
	lea	rsi, [rsi]
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	edx, 0x3e
	ja	.label_203
	nop	
	movabs	rsi, 0x7000a38200000000
	mov	rsp, rsp
	bt	rsi, rdx
	mov	rsp, rsp
	jae	.label_206
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_220
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_215
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rsi], 0x3f
.label_215:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_222
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x22
.label_222:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_214
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rsi + rax], 0x22
.label_214:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 3]
	cmp	rax, r10
	nop	
	jae	.label_167
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x3f
.label_167:
	mov	rbp, rbp
	add	qword ptr [rsp + 0x58], 4
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	lea	rdi, [rdi]
	xor	r13d, r13d
	jmp	.label_148
.label_183:
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_148:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x65], 0
	lea	rsi, [rsi]
	je	.label_234
	cmp	qword ptr [rsp + 0x150], 0
	mov	rsp, rsp
	jne	.label_263
	lea	rsi, [rsi]
	jmp	.label_142
.label_234:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_142
.label_263:
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
	jne	.label_147
	mov	rcx, qword ptr [rsp + 0x150]
	nop	
	and	esi, dword ptr [rcx + rdx*4]
	mov	rsp, rsp
	jmp	.label_155
	nop	word ptr cs:[rax + rax]
.label_142:
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rdi, [rdi]
	test	cl, cl
.label_155:
	mov	rbp, rbp
	mov	bl, r15b
	je	.label_168
	mov	rsp, rsp
	jmp	.label_161
.label_147:
	mov	bl, r15b
.label_161:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_164
	nop	
	cmp	r9d, 2
	jne	.label_178
	lea	rdi, [rdi]
	mov	al, r14b
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_178
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_258
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_258:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	cmp	rax, r10
	jae	.label_192
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_192:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_216
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_216:
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_178:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_200
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x5c
.label_200:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	jmp	.label_162
.label_232:
	xor	r13d, r13d
	nop	
	jmp	.label_148
.label_152:
	mov	rsp, rsp
	add	rax, rdi
	mov	qword ptr [rsp + 0xe8], rax
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_208
	nop	dword ptr [rax + rax]
.label_169:
	inc	qword ptr [rsp + 0x58]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_208:
	test	cl, cl
	je	.label_218
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0x10c]
	test	dl, 1
	mov	rbp, rbp
	je	.label_157
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_225
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x5c
.label_225:
	lea	rsi, [rsi]
	inc	qword ptr [rsp + 0x58]
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_157
	nop	dword ptr [rax]
.label_218:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_164
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_246
	mov	al, r14b
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_246
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_207
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rdx], 0x27
.label_207:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	inc	rax
	cmp	rax, r10
	jae	.label_259
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], 0x24
.label_259:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_170
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rdx + rax], 0x27
.label_170:
	mov	rsp, rsp
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_246:
	cmp	qword ptr [rsp + 0x58], r10
	lea	rsi, [rsi]
	jae	.label_156
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rax + rdx], 0x5c
.label_156:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_166
	mov	dl, r15b
	shr	dl, 6
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], dl
.label_166:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_179
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
.label_179:
	nop	
	add	qword ptr [rsp + 0x58], 3
	mov	rbp, rbp
	and	r15b, 7
	nop	
	or	r15b, 0x30
	mov	rsp, rsp
	mov	al, 1
.label_157:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xe8], rdx
	jbe	.label_168
	lea	rsi, [rsi]
	test	r14b, 1
	je	.label_197
	mov	bl, al
	nop	
	and	bl, 1
	lea	rdi, [rdi]
	jne	.label_197
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_202
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_202:
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	inc	rsi
	mov	rsp, rsp
	cmp	rsi, r10
	lea	rsi, [rsi]
	jae	.label_205
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdi + rsi], 0x27
	mov	rbp, rbp
	mov	rdi, rbx
.label_205:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_197:
	nop	
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_169
	mov	rsi, qword ptr [rsp + 0xb0]
	nop	
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rsi + rdi], r15b
	lea	rdi, [rdi]
	mov	rdi, rbx
	jmp	.label_169
	nop	word ptr cs:[rax + rax]
.label_168:
	test	r14b, 1
	lea	rsi, [rsi]
	je	.label_233
	mov	rsp, rsp
	and	al, 1
	jne	.label_233
	cmp	qword ptr [rsp + 0x58], r10
	mov	rsp, rsp
	jae	.label_149
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_149:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_190
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_190:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_233:
	mov	rsp, rsp
	mov	bl, r15b
.label_162:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_255
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], bl
.label_255:
	nop	
	inc	qword ptr [rsp + 0x58]
	nop	
	shl	r13b, 7
	mov	rsp, rsp
	sar	r13b, 7
	and	r13b, r8b
	mov	rbp, rbp
	mov	r8b, r13b
	jmp	.label_145
.label_253:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	jmp	.label_153
.label_256:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
.label_153:
	lea	rsi, [rsi]
	cmp	rcx, r10
	lea	rsi, [rsi]
	jae	.label_158
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax + rcx], 0x5c
.label_158:
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
	je	.label_165
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_201
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	cmp	edx, 9
	lea	rsi, [rsi]
	ja	.label_211
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_184
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x30
.label_184:
	lea	rsi, [rsi]
	lea	rdx, [rcx + 2]
	lea	rdi, [rdi]
	cmp	rdx, r10
	nop	
	jae	.label_188
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rdx], 0x30
.label_188:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x58], rcx
	jmp	.label_148
.label_165:
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_148
.label_201:
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	
	jmp	.label_148
.label_211:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_148
.label_247:
	xor	r13d, r13d
.label_239:
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_139
.label_210:
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	rbp, rcx
	lea	rsi, [rsi]
	jbe	.label_224
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
.label_223:
	cmp	byte ptr [r11 + rcx], 0
	nop	
	je	.label_221
	mov	rbp, rbp
	lea	rcx, [rax + rdi + 1]
	nop	
	inc	rax
	mov	rbp, rbp
	cmp	rcx, rbp
	mov	rsp, rsp
	jb	.label_223
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_139
.label_224:
	mov	rsp, rsp
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_139
.label_221:
	nop	
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_139
.label_203:
	xor	r13d, r13d
	jmp	.label_148
.label_206:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_148
.label_237:
	nop	
	mov	r13, rdi
.label_241:
	mov	rsp, rsp
	cmp	r9d, 2
	mov	rsp, rsp
	setne	al
	cmp	qword ptr [rsp + 0x58], 0
	lea	rsi, [rsi]
	setne	dl
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_251
	mov	rsp, rsp
	or	al, dl
	mov	rbp, rbp
	je	.label_262
.label_251:
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
	je	.label_140
	mov	rsp, rsp
	or	al, dl
	lea	rsi, [rsi]
	jne	.label_140
	test	r8b, 1
	mov	rbp, rbp
	jne	.label_144
	cmp	qword ptr [rsp + 0xd8], 0
	je	.label_140
	test	r10, r10
	mov	r15d, r9d
	mov	rbp, rbp
	mov	al, bl
	nop	
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0xd8]
	lea	rsi, [rsi]
	je	.label_185
.label_140:
	mov	rdx, qword ptr [rsp + 0x20]
	test	rdx, rdx
	je	.label_181
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rsi, [rsi]
	jne	.label_181
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	test	al, al
	je	.label_181
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_195:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_189
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rsi], al
.label_189:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	mov	rbp, rbp
	jne	.label_195
.label_181:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_198
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0
	lea	rdi, [rdi]
	jmp	.label_198
.label_180:
	lea	rdi, [rdi]
	mov	r9d, 2
	nop	
	jmp	.label_164
.label_231:
	mov	rsp, rsp
	mov	r9d, 2
	nop	
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rdi, [rdi]
	jmp	.label_164
.label_262:
	nop	
	mov	rbp, r13
	jmp	.label_164
.label_194:
	lea	rdi, [rdi]
	mov	r9d, 2
.label_164:
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
.label_260:
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rax
.label_198:
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
.label_144:
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
	jmp	.label_260
.label_187:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_164
.label_249:
	mov	r9d, 2
	lea	rsi, [rsi]
	jmp	.label_164
.label_236:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_164
.label_220:
	lea	rsi, [rsi]
	mov	r9d, 5
	mov	rbp, rbp
	jmp	.label_164
.label_141:
	nop	
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050a0
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
	#Procedure 0x4051e0
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
	je	.label_264
	mov	qword ptr [rax], rbx
.label_264:
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
	#Procedure 0x405330
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_265
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_268:
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
	jl	.label_268
.label_265:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_267
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_269]], OFFSET FLAT:slot0
.label_267:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_266
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_266:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053f0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x405400

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
	js	.label_273
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_275
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_271
.label_275:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_276
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
	jne	.label_272
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_272:
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
.label_271:
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
	ja	.label_270
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
	je	.label_274
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_274:
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
.label_270:
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
.label_273:
	lea	rdi, [rdi]
	call	abort
.label_276:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x405670
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405680
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
	#Procedure 0x4056b0
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
	#Procedure 0x4056e0

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
	je	.label_277
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
.label_277:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405770
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
	je	.label_278
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
.label_278:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405810

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
	je	.label_279
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
.label_279:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4058a0
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
	je	.label_280
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
.label_280:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405910
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_281]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_282]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_283]]
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
	#Procedure 0x4059b0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_281]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_282]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_283]]
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
	#Procedure 0x405a50

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_281]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_282]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_283]]
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
	#Procedure 0x405ac0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_281]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_282]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_283]]
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
	#Procedure 0x405b30

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
	je	.label_284
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
.label_284:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405c10
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_281]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_282]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_283]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_285
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_285
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
.label_285:
	nop	
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405ca0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_281]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_282]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_283]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_286
	test	rdx, rdx
	je	.label_286
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
.label_286:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d30
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_281]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_282]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_283]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_287
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_287
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
.label_287:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405dd0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_281]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_282]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_283]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_288
	test	rsi, rsi
	je	.label_288
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
.label_288:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e70
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e80
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
	#Procedure 0x405ea0
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
	#Procedure 0x405ec0

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
	#Procedure 0x405ef0

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
	jne	.label_290
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_292
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_289
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_289
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_289
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_289
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_289
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_289
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_290
	mov	eax, OFFSET FLAT:.str.15_1
	jmp	.label_290
.label_292:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_289
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_289
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_289
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_289
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_289
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_289
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_291
.label_289:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_1
	mov	eax, OFFSET FLAT:.str.12_1
	cmove	rax, rcx
.label_290:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_291:
	mov	eax, OFFSET FLAT:.str.17_2
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_290
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_290
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406060

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
	jne	.label_293
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 8], rax
	mov	rsp, rsp
	mov	rax, rbx
.label_293:
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4060c0

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
	je	.label_294
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
	jmp	.label_296
.label_294:
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
.label_296:
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
	ja	.label_299
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_300]]
.label_919:
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
.label_299:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_1
	jmp	.label_297
.label_920:
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
.label_921:
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
.label_922:
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
	jmp	.label_303
.label_923:
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
	jmp	.label_302
.label_924:
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
	jmp	.label_301
.label_925:
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
.label_301:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_302:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_303:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_298
.label_927:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_2
.label_297:
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
	jmp	.label_295
.label_926:
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
.label_295:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_298:
	mov	rbp, rbp
	call	__fprintf_chk
.label_918:
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
	#Procedure 0x4064b0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_304:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_304
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4064e0
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_307:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_305
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_306
	nop	word ptr cs:[rax + rax]
.label_305:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_306:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_308
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_307
.label_308:
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
	#Procedure 0x406570

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_309
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
.label_309:
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
.label_311:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_310
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_312
	nop	dword ptr [rax + rax]
.label_310:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_312:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_313
	inc	r9
	cmp	r9, 0xa
	jb	.label_311
.label_313:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4066b0
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
	.align	16
	#Procedure 0x406740
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
	jb	.label_314
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_315
	test	rax, rax
	je	.label_314
.label_315:
	nop	
	pop	rbx
	ret	
.label_314:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406790

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_316
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_317
.label_316:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_317:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4067c0
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
	jb	.label_319
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_318
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_318
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_318:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_320
	test	rax, rax
	je	.label_319
.label_320:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_319:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406840

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_321
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_321
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_321:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_322
	test	rax, rax
	nop	
	je	.label_323
.label_322:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_323:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406890
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_328
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_324
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_330
.label_328:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_327
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_327:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_329
.label_330:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_326
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_326
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_326:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_325
	test	rax, rax
	mov	rbp, rbp
	je	.label_324
.label_325:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_324:
	call	xalloc_die
.label_329:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406970
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_331
	test	rax, rax
	mov	rbp, rbp
	je	.label_332
.label_331:
	pop	rbx
	ret	
.label_332:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406990
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_336
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_337
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_335
	call	free
	xor	eax, eax
	jmp	.label_333
.label_336:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_334
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_335:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_333
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_334
.label_333:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_334:
	mov	rbp, rbp
	call	xalloc_die
.label_337:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406a20
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
	je	.label_338
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_339
.label_338:
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
.label_339:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a80
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
	jb	.label_340
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_340
	pop	rcx
	ret	
.label_340:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x406ab0

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
	je	.label_342
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_341
.label_342:
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
.label_341:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406b10

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
	je	.label_343
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_344
.label_343:
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
.label_344:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x406b70

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
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406bc0

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_346
	mov	rsp, rsp
	pop	rcx
	ret	
.label_346:
	nop	
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0x16
	lea	rdi, [rdi]
	jne	.label_345
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_7
	nop	
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xfts_open
	lea	rsi, [rsi]
	call	__assert_fail
.label_345:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c20

	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:
	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	mov	rbp, rbp
	je	.label_347
	cmp	ecx, 0x11
	lea	rdi, [rdi]
	jne	.label_348
	mov	rsp, rsp
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_347:
	lea	rsi, [rsi]
	ret	
.label_348:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x406c50

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
	mov	r14, r8
	nop	
	mov	r12d, edx
	mov	rbp, rsi
	mov	rsp, rsp
	mov	rbx, rdi
	cmp	r12d, 0x25
	lea	rsi, [rsi]
	jae	.label_371
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	r15, rax
	mov	rbp, rbp
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	
.label_365:
	mov	rbp, rbp
	movzx	eax, byte ptr [rdx]
	inc	rdx
	mov	rbp, rbp
	test	byte ptr [rcx + rax*2 + 1], 0x20
	lea	rdi, [rdi]
	jne	.label_365
	mov	rbp, rbp
	test	rbp, rbp
	lea	rdi, [rdi]
	lea	rsi, [rsp + 8]
	lea	rsi, [rsi]
	cmovne	rsi, rbp
	movzx	eax, al
	mov	rsp, rsp
	mov	r13d, 4
	cmp	eax, 0x2d
	lea	rsi, [rsi]
	je	.label_363
	mov	rsp, rsp
	mov	rdi, rbx
	mov	edx, r12d
	mov	rbp, rsi
	call	strtoul
	mov	rcx, rbp
	mov	rbp, rax
	mov	rbp, rbp
	mov	r12, qword ptr [rcx]
	mov	rbp, rbp
	cmp	r12, rbx
	mov	rbp, rbp
	je	.label_351
	mov	eax, dword ptr [r15]
	lea	rsi, [rsi]
	xor	ebx, ebx
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_359
	cmp	eax, 0x22
	lea	rsi, [rsi]
	jne	.label_363
	mov	ebx, 1
.label_359:
	test	r14, r14
	jne	.label_367
	mov	rbp, rbp
	jmp	.label_356
.label_351:
	mov	rsp, rsp
	test	r14, r14
	je	.label_363
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	lea	rdi, [rdi]
	je	.label_363
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	mov	rbx, rcx
	call	strchr
	nop	
	mov	rcx, rbx
	mov	rbp, rbp
	xor	ebx, ebx
	mov	rbp, rbp
	mov	ebp, 1
	test	rax, rax
	je	.label_363
.label_367:
	movsx	r13d, byte ptr [r12]
	nop	
	test	r13d, r13d
	mov	rsp, rsp
	je	.label_356
	mov	rsp, rsp
	mov	qword ptr [rsp], rcx
	nop	
	mov	rdi, r14
	mov	esi, r13d
	mov	rsp, rsp
	call	strchr
	test	rax, rax
	je	.label_352
	mov	rsp, rsp
	mov	r15d, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_349
	movabs	rdx, 0x814400308945
	lea	rsi, [rsi]
	bt	rdx, rax
	lea	rdi, [rdi]
	jae	.label_349
	mov	esi, 0x30
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strchr
	nop	
	mov	r15d, 1
	mov	rbp, rbp
	mov	esi, 0x400
	test	rax, rax
	je	.label_349
	movsx	eax, byte ptr [r12 + 1]
	mov	rsp, rsp
	mov	r15d, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	nop	
	je	.label_358
	nop	
	cmp	eax, 0x44
	je	.label_358
	cmp	eax, 0x69
	jne	.label_349
	mov	rbp, rbp
	movzx	eax, byte ptr [r12 + 2]
	lea	rsi, [rsi]
	mov	r15d, 3
	cmp	eax, 0x42
	je	.label_366
	mov	r15d, 1
.label_366:
	lea	rdi, [rdi]
	mov	esi, 0x400
	mov	rsp, rsp
	jmp	.label_349
.label_358:
	mov	r15d, 2
	nop	
	mov	esi, 0x3e8
.label_349:
	cmp	r13d, 0x59
	jg	.label_372
	lea	eax, [r13 - 0x42]
	mov	rbp, rbp
	cmp	eax, 0xe
	ja	.label_373
	jmp	qword ptr [word ptr [+ (rax * 8) + label_350]]
.label_905:
	nop	
	mov	rax, rbp
	shr	rax, 0x36
	setne	dl
	mov	rsp, rsp
	shl	rbp, 0xa
	jmp	.label_354
.label_372:
	cmp	r13d, 0x73
	mov	rbp, rbp
	jg	.label_360
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	ja	.label_364
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_368]]
.label_979:
	nop	
	mov	rax, rbp
	shr	rax, 0x37
	setne	dl
	shl	rbp, 9
.label_354:
	cmp	rax, 1
	mov	rbp, rbp
	sbb	rax, rax
	not	rax
	lea	rdi, [rdi]
	or	rbp, rax
	movzx	eax, dl
	jmp	.label_369
.label_373:
	lea	rdi, [rdi]
	cmp	r13d, 0x54
	lea	rdi, [rdi]
	je	.label_355
	mov	rbp, rbp
	cmp	r13d, 0x59
	jne	.label_352
	mov	rsp, rsp
	mov	rdi, -1
	mov	rax, -1
	nop	
	xor	edx, edx
	mov	rsp, rsp
	div	rsi
	cmp	rax, rbp
	nop	
	sbb	r8b, r8b
	nop	
	mov	rcx, rbp
	lea	rsi, [rsi]
	imul	rcx, rsi
	lea	rdi, [rdi]
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	dl, dl
	mov	rbp, rcx
	imul	rbp, rsi
	lea	rsi, [rsi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	cmovb	rbp, rdi
	lea	rdi, [rdi]
	cmp	rax, rbp
	sbb	r9b, r9b
	lea	rdi, [rdi]
	mov	rcx, rbp
	mov	rbp, rbp
	imul	rcx, rsi
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	cmovb	rcx, rdi
	cmp	rax, rcx
	lea	rsi, [rsi]
	sbb	r10b, r10b
	mov	rbp, rbp
	mov	rbp, rcx
	imul	rbp, rsi
	lea	rdi, [rdi]
	cmp	rax, rcx
	cmovb	rbp, rdi
	mov	rsp, rsp
	cmp	rax, rbp
	mov	rsp, rsp
	sbb	r11b, r11b
	lea	rdi, [rdi]
	mov	rcx, rbp
	imul	rcx, rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rcx, rdi
	lea	rdi, [rdi]
	cmp	rax, rcx
	sbb	r14b, r14b
	nop	
	mov	rbp, rcx
	imul	rbp, rsi
	nop	
	cmp	rax, rcx
	mov	rsp, rsp
	cmovb	rbp, rdi
	nop	
	cmp	rax, rbp
	lea	rsi, [rsi]
	sbb	r13b, r13b
	nop	
	mov	rcx, rbp
	imul	rcx, rsi
	nop	
	cmp	rax, rbp
	cmovb	rcx, rdi
	nop	
	cmp	rax, rcx
	sbb	bpl, bpl
	imul	rsi, rcx
	lea	rsi, [rsi]
	cmp	rax, rcx
	cmovb	rsi, rdi
	nop	
	or	dl, r8b
	lea	rsi, [rsi]
	or	dl, r9b
	or	dl, r10b
	mov	rsp, rsp
	or	dl, r11b
	and	dl, 1
	or	dl, r14b
	mov	rbp, rbp
	or	dl, r13b
	nop	
	or	dl, bpl
	mov	rbp, rbp
	jmp	.label_353
.label_360:
	nop	
	cmp	r13d, 0x74
	mov	rbp, rbp
	je	.label_355
	mov	rsp, rsp
	cmp	r13d, 0x77
	jne	.label_352
	mov	rbp, rbp
	lea	rax, [rbp + rbp]
	lea	rsi, [rsi]
	test	rbp, rbp
	mov	rcx, -1
	cmovns	rcx, rax
	shr	rbp, 0x3f
	mov	rsp, rsp
	mov	eax, ebp
	mov	rbp, rcx
	jmp	.label_369
.label_907:
	lea	rsi, [rsi]
	mov	r8, -1
	mov	rbp, rbp
	mov	rax, -1
	nop	
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	mov	rbp, rbp
	sbb	r9b, r9b
	mov	rsp, rsp
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r8
	mov	rsp, rsp
	cmp	rax, rdi
	lea	rsi, [rsi]
	sbb	dl, dl
	lea	rdi, [rdi]
	mov	rbp, rdi
	imul	rbp, rsi
	lea	rsi, [rsi]
	cmp	rax, rdi
	nop	
	cmovb	rbp, r8
	lea	rsi, [rsi]
	cmp	rax, rbp
	sbb	dil, dil
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, r8
	nop	
	or	dl, r9b
	or	dl, dil
	nop	
	jmp	.label_362
.label_908:
	mov	rbp, rbp
	mov	rdi, -1
	lea	rdi, [rdi]
	mov	rax, -1
	xor	edx, edx
	lea	rsi, [rsi]
	div	rsi
	mov	rsp, rsp
	imul	rsi, rbp
	lea	rdi, [rdi]
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	mov	rsp, rsp
	and	eax, 1
	jmp	.label_361
.label_909:
	mov	r8, -1
	nop	
	mov	rax, -1
	lea	rsi, [rsi]
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	lea	rsi, [rsi]
	sbb	r9b, r9b
	mov	rdi, rbp
	lea	rsi, [rsi]
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r8
	mov	rsp, rsp
	cmp	rax, rdi
	sbb	dl, dl
	imul	rsi, rdi
	lea	rdi, [rdi]
	cmp	rax, rdi
	cmovb	rsi, r8
	or	dl, r9b
	nop	
	jmp	.label_362
.label_355:
	mov	rbp, rbp
	mov	r9, -1
	nop	
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	lea	rdi, [rdi]
	sbb	r8b, r8b
	lea	rdi, [rdi]
	mov	rdi, rbp
	imul	rdi, rsi
	nop	
	cmp	rax, rbp
	mov	rbp, rbp
	cmovb	rdi, r9
	lea	rsi, [rsi]
	cmp	rax, rdi
	mov	rbp, rbp
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	lea	rdi, [rdi]
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	mov	rsp, rsp
	imul	rdi, rsi
	mov	rbp, rbp
	cmp	rax, rbp
	cmovb	rdi, r9
	mov	rbp, rbp
	cmp	rax, rdi
	nop	
	sbb	cl, cl
	imul	rsi, rdi
	cmp	rax, rdi
	lea	rsi, [rsi]
	cmovb	rsi, r9
	lea	rdi, [rdi]
	or	dl, r8b
	mov	rbp, rbp
	or	dl, r10b
	or	dl, cl
	jmp	.label_362
.label_364:
	cmp	r13d, 0x5a
	lea	rdi, [rdi]
	jne	.label_352
	lea	rsi, [rsi]
	mov	rdi, -1
	nop	
	mov	rax, -1
	nop	
	xor	edx, edx
	div	rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	nop	
	sbb	r8b, r8b
	mov	rbp, rbp
	mov	rcx, rbp
	mov	rbp, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	mov	rbp, rbp
	cmp	rax, rcx
	lea	rdi, [rdi]
	sbb	dl, dl
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	nop	
	cmp	rax, rbp
	mov	rbp, rbp
	sbb	r9b, r9b
	mov	rcx, rbp
	nop	
	imul	rcx, rsi
	mov	rsp, rsp
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r10b, r10b
	mov	rbp, rbp
	mov	rbp, rcx
	lea	rdi, [rdi]
	imul	rbp, rsi
	lea	rsi, [rsi]
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rsp, rsp
	mov	rcx, rbp
	imul	rcx, rsi
	lea	rdi, [rdi]
	cmp	rax, rbp
	cmovb	rcx, rdi
	nop	
	cmp	rax, rcx
	sbb	r14b, r14b
	mov	rbp, rcx
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rcx
	lea	rdi, [rdi]
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	cl, cl
	imul	rsi, rbp
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rsi, rdi
	mov	rbp, rbp
	or	dl, r8b
	or	dl, r9b
	lea	rsi, [rsi]
	or	dl, r10b
	lea	rsi, [rsi]
	and	dl, 1
	or	dl, r11b
	mov	rbp, rbp
	or	dl, r14b
	or	dl, cl
.label_353:
	lea	rsi, [rsi]
	movzx	eax, dl
	and	eax, 1
	jmp	.label_361
.label_352:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rax], rbp
	or	ebx, 2
	mov	rsp, rsp
	jmp	.label_357
.label_906:
	lea	rdi, [rdi]
	mov	r9, -1
	mov	rbp, rbp
	mov	rax, -1
	xor	edx, edx
	mov	rbp, rbp
	div	rsi
	cmp	rax, rbp
	mov	rbp, rbp
	sbb	r8b, r8b
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rbp, rbp
	imul	rdi, rsi
	mov	rsp, rsp
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	nop	
	sbb	dl, dl
	mov	rbp, rdi
	lea	rsi, [rsi]
	imul	rbp, rsi
	mov	rsp, rsp
	cmp	rax, rdi
	cmovb	rbp, r9
	mov	rsp, rsp
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rbp, rbp
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	nop	
	cmp	rax, rdi
	sbb	r11b, r11b
	mov	rbp, rbp
	mov	rbp, rdi
	nop	
	imul	rbp, rsi
	cmp	rax, rdi
	nop	
	cmovb	rbp, r9
	mov	rbp, rbp
	cmp	rax, rbp
	sbb	r14b, r14b
	nop	
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	bpl, bpl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	or	dl, r10b
	lea	rsi, [rsi]
	or	dl, r11b
	lea	rsi, [rsi]
	or	dl, r14b
	lea	rdi, [rdi]
	or	dl, bpl
.label_362:
	lea	rdi, [rdi]
	and	dl, 1
	lea	rsi, [rsi]
	movzx	eax, dl
.label_361:
	mov	rbp, rsi
.label_369:
	or	eax, ebx
	nop	
	lea	rcx, [r12 + r15]
	mov	rdx, qword ptr [rsp]
	mov	rbp, rbp
	mov	qword ptr [rdx], rcx
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + r15], 0
	mov	rbp, rbp
	je	.label_370
	or	eax, 2
.label_370:
	mov	ebx, eax
.label_356:
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	qword ptr [rax], rbp
.label_357:
	mov	r13d, ebx
.label_363:
	mov	eax, r13d
	mov	rsp, rsp
	add	rsp, 0x18
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_910:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	mov	rbp, rbp
	sbb	r8b, r8b
	mov	rdx, rbp
	lea	rsi, [rsi]
	imul	rdx, rsi
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	cmovb	rdx, rdi
	cmp	rax, rdx
	sbb	cl, cl
	lea	rdi, [rdi]
	mov	rbp, rdx
	nop	
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rdx
	cmovb	rbp, rdi
	cmp	rax, rbp
	nop	
	sbb	r9b, r9b
	lea	rsi, [rsi]
	mov	rdx, rbp
	lea	rsi, [rsi]
	imul	rdx, rsi
	nop	
	cmp	rax, rbp
	mov	rbp, rbp
	cmovb	rdx, rdi
	nop	
	cmp	rax, rdx
	mov	rsp, rsp
	sbb	r10b, r10b
	mov	rbp, rbp
	mov	rbp, rdx
	mov	rbp, rbp
	imul	rbp, rsi
	lea	rdi, [rdi]
	cmp	rax, rdx
	cmovb	rbp, rdi
	nop	
	cmp	rax, rbp
	sbb	dl, dl
	lea	rsi, [rsi]
	imul	rsi, rbp
	cmp	rax, rbp
	lea	rdi, [rdi]
	cmovb	rsi, rdi
	mov	rbp, rbp
	or	cl, r8b
	or	cl, r9b
	or	cl, r10b
	nop	
	or	cl, dl
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	jmp	.label_361
.label_371:
	mov	edi, OFFSET FLAT:.str_8
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_6
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoul
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407530

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_374
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_375
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
	je	.label_375
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
.label_374:
	mov	ecx, 1
.label_375:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4075a0

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
	jae	.label_401
	mov	rbp, rbp
	mov	eax, r15d
	lea	rdi, [rdi]
	and	eax, 0x204
	nop	
	cmp	eax, 0x204
	je	.label_401
	mov	rsp, rsp
	test	r15b, 0x12
	nop	
	je	.label_401
	mov	rsp, rsp
	mov	edi, 0x80
	mov	rsp, rsp
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_377
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
	je	.label_381
	mov	r14, rbx
	mov	rbp, rbp
	lea	rbx, [r12 + 8]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_398:
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
	jne	.label_398
	inc	rbp
	mov	rsp, rsp
	mov	rbx, r14
.label_381:
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
	je	.label_395
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
	je	.label_376
	mov	edi, 0x110
	call	malloc
	mov	r12, rax
	mov	rbp, rbp
	test	r12, r12
	je	.label_385
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
.label_376:
	mov	byte ptr [rsp + 0x17], 1
	mov	rsp, rsp
	test	r13, r13
	je	.label_400
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	al, byte ptr [rax + 0x49]
	and	al, 4
	lea	rdi, [rdi]
	shr	al, 2
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x17], al
.label_400:
	mov	rsp, rsp
	xor	ebp, ebp
	mov	rsp, rsp
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_387
	mov	qword ptr [rsp + 0x20], r12
	mov	ebx, r14d
	and	ebx, 0x800
	mov	dword ptr [rsp + 0x34], ebx
	xor	ebp, ebp
	mov	rsp, rsp
	xor	r12d, r12d
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_378:
	mov	qword ptr [rsp + 0x18], rbp
	mov	rdi, r15
	lea	rsi, [rsi]
	call	strlen
	mov	rbp, rax
	test	ebx, ebx
	jne	.label_382
	lea	rdi, [rdi]
	cmp	rbp, 3
	jb	.label_389
	cmp	rbp, 2
	nop	
	jb	.label_386
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp + r15 - 1]
	lea	rsi, [rsi]
	cmp	eax, 0x2f
	jne	.label_388
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], r12
.label_391:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r15 + rbp - 2]
	cmp	eax, 0x2f
	jne	.label_390
	lea	rdi, [rdi]
	dec	rbp
	lea	rdi, [rdi]
	cmp	rbp, 1
	lea	rsi, [rsi]
	ja	.label_391
	jmp	.label_390
.label_382:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], r12
	jmp	.label_390
.label_389:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], r12
	jmp	.label_390
.label_386:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], r12
	jmp	.label_390
.label_388:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], r12
	nop	dword ptr [rax + rax]
.label_390:
	mov	rbx, r13
	lea	rsi, [rsi]
	lea	rdi, [rbp + 0x110]
	nop	
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	rbp, rbp
	mov	r12, rax
	test	r12, r12
	je	.label_399
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
	jne	.label_407
	mov	word ptr [r12 + 0x70], 0xb
	mov	rsp, rsp
	mov	qword ptr [r12 + 0xa8], 2
	jmp	.label_397
	nop	word ptr cs:[rax + rax]
.label_407:
	nop	
	xor	edx, edx
	mov	rsi, r12
	mov	rbp, rbp
	call	fts_stat
	mov	rsp, rsp
	mov	word ptr [r12 + 0x70], ax
.label_397:
	mov	rsp, rsp
	mov	r13, rbx
	nop	
	test	r13, r13
	je	.label_403
	mov	rbp, r12
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x10], r15
	nop	
	mov	r12, qword ptr [rsp + 0x28]
	jmp	.label_405
.label_403:
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x10], 0
	mov	rsp, rsp
	test	r15, r15
	lea	rdi, [rdi]
	mov	rbp, r12
	je	.label_405
	nop	
	mov	rax, qword ptr [rsp + 0x28]
	nop	
	mov	qword ptr [rax + 0x10], r12
	mov	rbp, r15
.label_405:
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
	jne	.label_378
	mov	rsp, rsp
	test	r13, r13
	mov	rdi, qword ptr [rsp + 8]
	je	.label_383
	cmp	r14, 2
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	jb	.label_387
	mov	rsi, rbp
	lea	rsi, [rsi]
	mov	rdx, r14
	call	fts_sort
	mov	rbp, rax
	nop	
	jmp	.label_387
.label_401:
	nop	
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	rbp, rbp
	xor	eax, eax
.label_377:
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
.label_395:
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rbp, rbp
	jmp	.label_396
.label_399:
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r12, qword ptr [rsp + 0x20]
	mov	rbx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jmp	.label_393
.label_385:
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 8]
	jmp	.label_380
.label_383:
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x20]
.label_387:
	mov	edi, 0x110
	call	malloc
	test	rax, rax
	mov	rsp, rsp
	je	.label_404
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
	je	.label_406
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
	jne	.label_392
	lea	rsi, [rsi]
	jmp	.label_393
.label_404:
	mov	rbx, qword ptr [rsp + 8]
	nop	
	mov	qword ptr [rbx], 0
	jmp	.label_393
.label_406:
	mov	edi, 0x20
	lea	rdi, [rdi]
	call	malloc
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	je	.label_393
	lea	rsi, [rsi]
	mov	rdi, rax
	call	cycle_check_init
.label_392:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbx + 0x48]
	nop	
	test	ax, 0x204
	jne	.label_394
	mov	edx, eax
	and	edx, 0x10
	mov	rbp, rbp
	shl	edx, 0xd
	mov	rsp, rsp
	or	edx, 0x90900
	mov	rbp, rbp
	test	ah, 2
	nop	
	jne	.label_402
	mov	edi, OFFSET FLAT:.str_9
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, edx
	lea	rsi, [rsi]
	call	open_safer
	lea	rdi, [rdi]
	jmp	.label_408
.label_393:
	lea	rdi, [rdi]
	mov	r14, rbx
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_409
	nop	dword ptr [rax]
.label_384:
	mov	rbx, qword ptr [rbp + 0x10]
	nop	
	mov	rdi, qword ptr [rbp + 0x18]
	test	rdi, rdi
	mov	rsp, rsp
	je	.label_379
	lea	rdi, [rdi]
	call	closedir
.label_379:
	mov	rsp, rsp
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	free
	test	rbx, rbx
	lea	rdi, [rdi]
	mov	rbp, rbx
	mov	rbp, rbp
	jne	.label_384
.label_409:
	mov	rdi, r12
	call	free
	mov	rbx, r14
	mov	rbp, qword ptr [rbx + 0x20]
.label_380:
	nop	
	mov	rdi, rbp
.label_396:
	call	free
	mov	rsp, rsp
	mov	rdi, rbx
	call	free
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_377
.label_402:
	mov	rsp, rsp
	mov	edi, dword ptr [rbx + 0x2c]
	mov	esi, OFFSET FLAT:.str_9
	xor	eax, eax
	call	openat_safer
.label_408:
	mov	rsp, rsp
	mov	dword ptr [rbx + 0x28], eax
	lea	rdi, [rdi]
	test	eax, eax
	jns	.label_394
	lea	rsi, [rsi]
	or	byte ptr [rbx + 0x48], 4
.label_394:
	nop	
	mov	rdi, rbx
	nop	
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	lea	rsi, [rsi]
	mov	rax, rbx
	lea	rdi, [rdi]
	jmp	.label_377
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407cc0

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
	jne	.label_410
	test	al, 1
	nop	
	je	.label_410
	lea	rsi, [rsi]
	mov	dl, 1
.label_410:
	mov	rbp, rbp
	lea	rbx, [r14 + 0x78]
	lea	rdi, [rdi]
	test	dl, dl
	lea	rdi, [rdi]
	jne	.label_417
	and	eax, 2
	jne	.label_417
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
	je	.label_415
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	eax, dword ptr [rax]
	mov	rbp, rbp
	jmp	.label_418
.label_417:
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
	je	.label_415
	lea	rdi, [rdi]
	call	__errno_location
	mov	r15, rax
	mov	eax, dword ptr [r15]
	cmp	eax, 2
	jne	.label_418
	mov	rsi, qword ptr [r14 + 0x30]
	nop	
	mov	edi, 1
	mov	rsp, rsp
	mov	rdx, rbx
	mov	rsp, rsp
	call	__lxstat
	test	eax, eax
	mov	rbp, rbp
	je	.label_413
	lea	rsi, [rsi]
	mov	eax, dword ptr [r15]
.label_418:
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
.label_411:
	movzx	eax, ax
	nop	
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_415:
	mov	rbp, rbp
	mov	ecx, 0xf000
	and	ecx, dword ptr [r14 + 0x90]
	lea	rsi, [rsi]
	mov	ax, 0xc
	cmp	ecx, 0xa000
	je	.label_411
	cmp	ecx, 0x8000
	nop	
	je	.label_412
	cmp	ecx, 0x4000
	mov	rbp, rbp
	jne	.label_414
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x88]
	mov	rcx, -1
	lea	rdi, [rdi]
	cmp	rax, 2
	mov	rsp, rsp
	jb	.label_416
	cmp	qword ptr [r14 + 0x58], 0
	jle	.label_416
	mov	ecx, dword ptr [r15 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	lea	rdi, [rdi]
	mov	rcx, rax
.label_416:
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x68], rcx
	mov	ecx, dword ptr [r14 + 0x108]
	mov	ax, 1
	mov	rsp, rsp
	movzx	edx, cl
	cmp	edx, 0x2e
	mov	rsp, rsp
	jne	.label_411
	mov	edx, ecx
	shr	edx, 8
	test	dl, dl
	je	.label_419
	mov	rbp, rbp
	movzx	edx, dl
	lea	rsi, [rsi]
	cmp	edx, 0x2e
	jne	.label_411
	lea	rsi, [rsi]
	test	ecx, 0xff0000
	lea	rdi, [rdi]
	jne	.label_411
.label_419:
	nop	
	mov	ax, 1
	cmp	qword ptr [r14 + 0x58], 0
	mov	rsp, rsp
	je	.label_411
	mov	ax, 5
	jmp	.label_411
.label_412:
	mov	ax, 8
	jmp	.label_411
.label_414:
	lea	rdi, [rdi]
	mov	ax, 3
	lea	rsi, [rsi]
	jmp	.label_411
.label_413:
	mov	dword ptr [r15], 0
	mov	ax, 0xd
	jmp	.label_411
	nop	
	.section	.text
	.align	16
	#Procedure 0x407ef0

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
	jae	.label_428
	lea	rsi, [r14 + 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x38], rsi
	mov	rbp, rbp
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_423
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
	je	.label_423
	mov	qword ptr [r13], rdi
	lea	rdi, [rdi]
	jmp	.label_425
.label_428:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	add	r12, 0x10
	mov	r13, r12
.label_425:
	mov	rsp, rsp
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_420
	nop	dword ptr [rax]
.label_422:
	mov	qword ptr [rdi], rbx
	add	rdi, 8
	mov	rbx, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_422
	mov	rdi, qword ptr [r13]
.label_420:
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
	je	.label_430
	nop	
	mov	rcx, qword ptr [r9 + 8]
	mov	qword ptr [rbx + 0x10], rcx
	mov	rsp, rsp
	mov	rcx, r14
	add	rcx, -2
	mov	rsp, rsp
	je	.label_429
	mov	rsp, rsp
	lea	rdx, [r9 + 8]
	lea	rsi, [rsi]
	lea	edi, [r14 + 2]
	mov	rsp, rsp
	lea	r8, [r14 - 3]
	lea	rsi, [rsi]
	test	dil, 3
	mov	rbp, rbp
	je	.label_424
	lea	rsi, [rsi]
	lea	edi, [r14 + 2]
	and	edi, 3
	neg	rdi
	nop	
.label_421:
	mov	rsi, qword ptr [rdx]
	nop	
	mov	rax, qword ptr [rdx + 8]
	lea	rdx, [rdx + 8]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x10], rax
	dec	rcx
	nop	
	inc	rdi
	jne	.label_421
.label_424:
	lea	rsi, [rsi]
	cmp	r8, 3
	mov	rbp, rbp
	jb	.label_429
	nop	dword ptr [rax + rax]
.label_426:
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
	jne	.label_426
.label_429:
	mov	rsp, rsp
	mov	rcx, qword ptr [r9 + r14*8 - 8]
.label_430:
	mov	qword ptr [rcx + 0x10], 0
	jmp	.label_427
.label_423:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12 + 0x10]
	call	free
	mov	qword ptr [r12 + 0x10], 0
	mov	qword ptr [r12 + 0x38], 0
.label_427:
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
	#Procedure 0x4080f0

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
	je	.label_448
	lea	rsi, [rsi]
	cmp	qword ptr [rdi + 0x58], 0
	lea	rsi, [rsi]
	js	.label_432
	nop	word ptr [rax + rax]
.label_438:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rdi + 0x10]
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_434
	mov	rbx, qword ptr [rdi + 8]
.label_434:
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	cmp	qword ptr [rbx + 0x58], 0
	lea	rsi, [rsi]
	mov	rdi, rbx
	jns	.label_438
	mov	rsp, rsp
	jmp	.label_440
.label_432:
	mov	rbx, rdi
.label_440:
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	call	free
.label_448:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_445
	nop	dword ptr [rax]
.label_442:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_436
	lea	rsi, [rsi]
	call	closedir
.label_436:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	lea	rdi, [rdi]
	mov	rbx, rbp
	jne	.label_442
.label_445:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	lea	rdi, [rdi]
	mov	eax, dword ptr [r14 + 0x48]
	lea	rdi, [rdi]
	test	ah, 2
	jne	.label_449
	xor	ebp, ebp
	mov	rbp, rbp
	test	al, 4
	jne	.label_431
	nop	
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebp, ebp
	test	eax, eax
	je	.label_441
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_441:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	lea	rsi, [rsi]
	test	ebp, ebp
	nop	
	je	.label_446
	nop	
	jmp	.label_431
.label_449:
	mov	rsp, rsp
	mov	edi, dword ptr [r14 + 0x2c]
	lea	rsi, [rsi]
	xor	ebp, ebp
	lea	rdi, [rdi]
	test	edi, edi
	js	.label_431
	nop	
	call	close
.label_446:
	nop	
	test	eax, eax
	nop	
	je	.label_431
	call	__errno_location
	mov	rbp, rbp
	mov	ebp, dword ptr [rax]
.label_431:
	lea	rsi, [rsi]
	lea	rbx, [r14 + 0x60]
	jmp	.label_433
	nop	
.label_439:
	mov	edi, eax
	mov	rsp, rsp
	call	close
.label_433:
	mov	rsp, rsp
	mov	rdi, rbx
	call	i_ring_empty
	lea	rdi, [rdi]
	test	al, al
	jne	.label_437
	mov	rbp, rbp
	mov	rdi, rbx
	call	i_ring_pop
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	jns	.label_439
	nop	
	jmp	.label_433
.label_437:
	mov	rsp, rsp
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_443
	nop	
	call	hash_free
.label_443:
	nop	
	movzx	eax, word ptr [r14 + 0x48]
	mov	rbp, rbp
	test	ax, 0x102
	je	.label_447
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x58]
	mov	rbp, rbp
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_444
	lea	rdi, [rdi]
	call	hash_free
	nop	
	jmp	.label_444
.label_447:
	mov	rdi, qword ptr [r14 + 0x58]
	lea	rdi, [rdi]
	call	free
.label_444:
	mov	rdi, r14
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	xor	eax, eax
	test	ebp, ebp
	je	.label_435
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], ebp
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
.label_435:
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
	#Procedure 0x4082e0

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
	je	.label_452
	mov	rsp, rsp
	mov	eax, dword ptr [r14 + 0x48]
	xor	r15d, r15d
	mov	rbp, rbp
	test	ah, 0x20
	mov	rsp, rsp
	jne	.label_452
	lea	rdi, [rdi]
	movzx	ecx, word ptr [r12 + 0x74]
	nop	
	mov	word ptr [r12 + 0x74], 3
	mov	rsp, rsp
	cmp	ecx, 1
	nop	
	je	.label_465
	movzx	edx, cx
	cmp	edx, 2
	mov	rsp, rsp
	jne	.label_475
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r12 + 0x70]
	mov	rsp, rsp
	mov	esi, ecx
	and	esi, 0xfffe
	mov	rbp, rbp
	cmp	esi, 0xc
	jne	.label_507
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_488
	mov	eax, dword ptr [r14 + 0x48]
	mov	rbp, rbp
	test	al, 4
	lea	rdi, [rdi]
	jne	.label_492
	mov	edx, eax
	nop	
	and	edx, 0x10
	shl	edx, 0xd
	lea	rdi, [rdi]
	or	edx, 0x90900
	mov	rsp, rsp
	test	ah, 2
	jne	.label_494
	nop	
	mov	edi, OFFSET FLAT:.str_9
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, edx
	call	open_safer
	nop	
	jmp	.label_502
.label_465:
	xor	edx, edx
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r12
	call	fts_stat
	mov	rbp, rbp
	mov	word ptr [r12 + 0x70], ax
	mov	r15, r12
	jmp	.label_452
.label_475:
	lea	r13, [r12 + 0x70]
	mov	ecx, dword ptr [r12 + 0x70]
	jmp	.label_451
.label_507:
	mov	rbp, rbp
	lea	r13, [r12 + 0x70]
.label_451:
	movzx	esi, cx
	mov	rsp, rsp
	cmp	esi, 1
	jne	.label_458
	cmp	edx, 4
	je	.label_464
	lea	rsi, [rsi]
	test	al, 0x40
	je	.label_467
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r12 + 0x78]
	nop	
	cmp	rdx, qword ptr [r14 + 0x18]
	jne	.label_464
.label_467:
	mov	rbx, qword ptr [r14 + 8]
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_477
	test	ah, 0x10
	jne	.label_491
	nop	
	mov	rcx, qword ptr [r12 + 0x30]
	mov	edx, 0xffffffff
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsi, r12
	call	fts_safe_changedir
	test	eax, eax
	mov	rbp, rbp
	je	.label_485
	call	__errno_location
	mov	eax, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [r12 + 0x40], eax
	or	byte ptr [r12 + 0x72], 1
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 8]
	lea	rdi, [rdi]
	jmp	.label_482
	nop	word ptr [rax + rax]
.label_458:
	mov	r15, qword ptr [r12 + 0x10]
	test	r15, r15
	je	.label_462
	mov	rsp, rsp
	mov	qword ptr [r14], r15
	mov	rbp, rbp
	mov	rdi, r12
	lea	rdi, [rdi]
	call	free
	nop	
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_500
	movzx	eax, word ptr [r15 + 0x74]
	cmp	eax, 4
	mov	r12, r15
	lea	rsi, [rsi]
	je	.label_458
	mov	rbp, rbp
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_468
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
	jne	.label_481
	mov	eax, dword ptr [r14 + 0x48]
	nop	
	test	al, 4
	mov	rbp, rbp
	jne	.label_481
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	lea	rdi, [rdi]
	or	edx, 0x90900
	mov	rbp, rbp
	test	ah, 2
	jne	.label_496
	mov	edi, OFFSET FLAT:.str_9
	lea	rdi, [rdi]
	xor	eax, eax
	mov	esi, edx
	lea	rdi, [rdi]
	call	open_safer
	lea	rsi, [rsi]
	jmp	.label_484
.label_489:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_482:
	mov	rbp, rbp
	test	rax, rax
	jne	.label_489
	jmp	.label_485
.label_464:
	test	ecx, 0x20000
	je	.label_490
	mov	rbp, rbp
	mov	edi, dword ptr [r12 + 0x44]
	mov	rsp, rsp
	call	close
.label_490:
	nop	
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_493
	nop	word ptr cs:[rax + rax]
.label_471:
	nop	
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_498
	call	closedir
.label_498:
	mov	rdi, rbx
	call	free
	nop	
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_471
	mov	rbp, rbp
	mov	qword ptr [r14 + 8], 0
.label_493:
	nop	
	mov	word ptr [r12 + 0x70], 6
.label_483:
	mov	rdi, r14
	mov	rsi, r12
	call	leave_dir
	mov	rsp, rsp
	mov	r15, r12
	mov	rbp, rbp
	jmp	.label_452
.label_462:
	lea	rsi, [rsi]
	mov	r15, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	cmp	qword ptr [r15 + 0x18], 0
	je	.label_457
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
	je	.label_478
	mov	rdi, r12
	call	free
	nop	
	jmp	.label_468
.label_488:
	mov	rbp, rbp
	mov	r15, r12
	jmp	.label_461
.label_500:
	lea	rdi, [rdi]
	mov	rdi, r14
	lea	rdi, [rdi]
	call	restore_initial_cwd
	mov	rbp, rbp
	test	eax, eax
	mov	eax, dword ptr [r14 + 0x48]
	je	.label_487
	or	eax, 0x2000
	mov	dword ptr [r14 + 0x48], eax
	mov	rbp, rbp
	xor	r15d, r15d
	nop	
	jmp	.label_452
.label_492:
	mov	r15, r12
	mov	rbp, rbp
	jmp	.label_461
.label_487:
	test	ax, 0x102
	je	.label_474
	mov	rdi, qword ptr [r14 + 0x58]
	nop	
	test	rdi, rdi
	je	.label_497
	mov	rbp, rbp
	call	hash_free
	jmp	.label_497
.label_491:
	nop	
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	nop	word ptr [rax + rax]
.label_506:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	nop	
	test	rdi, rdi
	je	.label_486
	nop	
	call	closedir
.label_486:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	lea	rdi, [rdi]
	mov	rbx, rbp
	jne	.label_506
	lea	rsi, [rsi]
	mov	qword ptr [r14 + 8], 0
.label_477:
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	lea	rsi, [rsi]
	mov	qword ptr [r14 + 8], rax
	mov	rsp, rsp
	test	rax, rax
	je	.label_463
.label_485:
	mov	r15, qword ptr [r14 + 8]
	mov	rsp, rsp
	mov	qword ptr [r14 + 8], 0
	jmp	.label_468
.label_463:
	xor	r15d, r15d
	lea	rdi, [rdi]
	test	byte ptr [r14 + 0x49], 0x20
	mov	rsp, rsp
	jne	.label_452
	lea	rsi, [rsi]
	cmp	dword ptr [r12 + 0x40], 0
	lea	rdi, [rdi]
	je	.label_483
	movzx	eax, word ptr [r13]
	nop	
	cmp	eax, 4
	nop	
	je	.label_483
	mov	rbp, rbp
	mov	word ptr [r13], 7
	nop	
	jmp	.label_483
.label_494:
	lea	rsi, [rsi]
	mov	edi, dword ptr [r14 + 0x2c]
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_9
	lea	rdi, [rdi]
	xor	eax, eax
	call	openat_safer
.label_502:
	mov	dword ptr [r12 + 0x44], eax
	mov	rsp, rsp
	test	eax, eax
	js	.label_501
	or	byte ptr [r12 + 0x72], 2
	mov	r15, r12
	jmp	.label_461
.label_478:
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_452
	mov	rsp, rsp
	mov	r15, qword ptr [r12 + 8]
.label_457:
	lea	rdi, [rdi]
	mov	qword ptr [r14], r15
	mov	rdi, r12
	mov	rbp, rbp
	call	free
	mov	rsp, rsp
	cmp	qword ptr [r15 + 0x58], -1
	nop	
	je	.label_504
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	nop	
	je	.label_476
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0
	lea	rsi, [rsi]
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_455
	movzx	eax, word ptr [r15 + 0x72]
	test	al, 2
	nop	
	jne	.label_503
	test	al, 1
	jne	.label_470
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_2
	mov	rdi, r14
	call	fts_safe_changedir
	lea	rdi, [rdi]
	jmp	.label_472
.label_504:
	mov	rdi, r15
	mov	rsp, rsp
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	mov	qword ptr [r14], 0
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_452
.label_501:
	call	__errno_location
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	lea	rdi, [rdi]
	mov	word ptr [r12 + 0x70], 7
	mov	rsp, rsp
	mov	r15, r12
	mov	rbp, rbp
	jmp	.label_461
.label_474:
	mov	rdi, qword ptr [r14 + 0x58]
	mov	rsp, rsp
	call	free
.label_497:
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
	je	.label_454
	lea	rsi, [rsi]
	cmp	rbx, r12
	nop	
	jne	.label_499
	nop	
	cmp	byte ptr [r15 + 0x109], 0
	je	.label_454
.label_499:
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
.label_454:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [r15 + 0x38], rax
	mov	qword ptr [r15 + 0x30], rax
	movzx	eax, word ptr [r14 + 0x48]
	mov	rbp, rbp
	test	ax, 0x102
	je	.label_473
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
	jmp	.label_461
.label_473:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [r14 + 0x58], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_461
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsp, rsp
	call	cycle_check_init
	jmp	.label_461
.label_455:
	mov	rdi, r14
	call	restore_initial_cwd
.label_472:
	test	eax, eax
	je	.label_470
	call	__errno_location
	mov	rbp, rbp
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	rbp, rbp
	or	byte ptr [r14 + 0x49], 0x20
	mov	rbp, rbp
	jmp	.label_470
.label_503:
	mov	eax, dword ptr [r14 + 0x48]
	lea	rsi, [rsi]
	lea	rbx, [r15 + 0x44]
	test	al, 4
	nop	
	jne	.label_459
	mov	rbp, rbp
	test	ah, 2
	mov	ebp, dword ptr [r15 + 0x44]
	jne	.label_450
	mov	edi, ebp
	call	fchdir
	mov	rsp, rsp
	test	eax, eax
	je	.label_459
	nop	
	call	__errno_location
	mov	eax, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_459
.label_496:
	mov	rbp, rbp
	mov	edi, dword ptr [r14 + 0x2c]
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_9
	xor	eax, eax
	call	openat_safer
.label_484:
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_480
	or	byte ptr [r15 + 0x72], 2
	lea	rdi, [rdi]
	jmp	.label_481
.label_480:
	call	__errno_location
	nop	
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
.label_481:
	mov	rbp, rbp
	mov	word ptr [r15 + 0x74], 3
.label_468:
	mov	rbp, rbp
	mov	rax, qword ptr [r14 + 0x20]
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rcx + 0x48]
	movzx	edx, byte ptr [rdx + rcx - 1]
	cmp	edx, 0x2f
	mov	rsp, rsp
	jne	.label_453
	mov	rsp, rsp
	dec	rcx
.label_453:
	lea	rdi, [rax + rcx + 1]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x2f
	mov	rsp, rsp
	lea	rsi, [r15 + 0x108]
	mov	rdx, qword ptr [r15 + 0x60]
	mov	rbp, rbp
	inc	rdx
	call	memmove
.label_461:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	mov	rsp, rsp
	jne	.label_479
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_466
	cmp	rax, 2
	jne	.label_476
	nop	
	mov	rbx, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_456
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	mov	rbp, rbp
	jne	.label_456
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	filesystem_type
	cmp	rax, 0x52654973
	mov	rbp, rbp
	je	.label_466
	mov	rsp, rsp
	cmp	rax, 0x58465342
	mov	rbp, rbp
	je	.label_466
.label_456:
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
	jne	.label_479
	lea	rsi, [rsi]
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_466
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x68]
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	nop	
	jb	.label_466
	dec	rax
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x68], rax
.label_466:
	mov	rbp, rbp
	movzx	eax, word ptr [r15 + 0x70]
.label_479:
	lea	rdi, [rdi]
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_452
	cmp	qword ptr [r15 + 0x58], 0
	mov	rbp, rbp
	jne	.label_495
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_495:
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, r15
	call	enter_dir
	lea	rdi, [rdi]
	test	al, al
	mov	rsp, rsp
	jne	.label_452
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0xc
	nop	
	xor	r15d, r15d
	jmp	.label_452
.label_450:
	mov	rsp, rsp
	mov	esi, dword ptr [r14 + 0x2c]
	cmp	esi, ebp
	nop	
	jne	.label_505
	cmp	esi, -0x64
	mov	rsp, rsp
	jne	.label_476
.label_505:
	mov	rsp, rsp
	lea	rdi, [r14 + 0x60]
	lea	rsi, [rsi]
	call	i_ring_push
	test	eax, eax
	js	.label_460
	mov	edi, eax
	call	close
.label_460:
	mov	rsp, rsp
	mov	dword ptr [r14 + 0x2c], ebp
.label_459:
	mov	edi, dword ptr [rbx]
	call	close
.label_470:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	mov	rsp, rsp
	je	.label_469
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
	jne	.label_469
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r15
	call	leave_dir
.label_469:
	xor	eax, eax
	mov	rbp, rbp
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	r15, rax
.label_452:
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
.label_476:
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408cb0

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_509
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
	je	.label_510
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	add	rsp, 0x18
	ret	
.label_509:
	mov	rsp, rsp
	mov	rax, qword ptr [rsi + 8]
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_508
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x58], 0
	nop	
	js	.label_508
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	mov	rsp, rsp
	je	.label_510
	mov	rdx, qword ptr [rcx]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rsi + 0x80]
	lea	rdi, [rdi]
	jne	.label_508
	nop	
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	mov	rbp, rbp
	jne	.label_508
	mov	rdx, qword ptr [rax + 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	qword ptr [rcx], rax
.label_508:
	lea	rdi, [rdi]
	add	rsp, 0x18
	ret	
.label_510:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408d70

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
	je	.label_520
	mov	rbp, rbp
	movzx	edx, byte ptr [rbx]
	lea	rsi, [rsi]
	mov	ecx, 0x2e
	lea	rsi, [rsi]
	mov	eax, 0x2e
	sub	eax, edx
	lea	rsi, [rsi]
	jne	.label_512
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx + 1]
	lea	rsi, [rsi]
	sub	ecx, eax
	lea	rsi, [rsi]
	mov	eax, ecx
	jne	.label_512
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_512:
	test	eax, eax
	lea	rsi, [rsi]
	sete	r14b
	lea	rdi, [rdi]
	jmp	.label_531
.label_520:
	xor	r14d, r14d
.label_531:
	lea	rsi, [rsi]
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 4
	mov	rsp, rsp
	jne	.label_527
	nop	
	test	r13d, r13d
	jns	.label_524
	mov	rbp, rbp
	mov	cl, r14b
	mov	rbp, rbp
	xor	cl, 1
	jne	.label_532
	nop	
	mov	qword ptr [rsp + 0x90], rsi
	and	eax, 0x200
	mov	rbp, rbp
	je	.label_515
	lea	rbp, [r15 + 0x60]
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	i_ring_empty
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	jne	.label_515
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	mov	rsp, rsp
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r14b, 1
	nop	
	jmp	.label_515
.label_527:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_511
	and	eax, 0x200
	je	.label_511
	lea	rdi, [rdi]
	mov	edi, r13d
	mov	rsp, rsp
	call	close
	nop	
	jmp	.label_511
.label_524:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x90], rsi
	nop	
	jmp	.label_515
.label_532:
	mov	qword ptr [rsp + 0x90], rsi
.label_515:
	test	r13d, r13d
	mov	rbp, rbp
	mov	r12d, r13d
	jns	.label_516
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
	jne	.label_519
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	esi, edx
	call	open_safer
	mov	rbp, rbp
	jmp	.label_529
.label_519:
	mov	rbp, rbp
	mov	edi, dword ptr [r15 + 0x2c]
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsi, rbx
	nop	
	call	openat_safer
.label_529:
	mov	rbp, rbp
	mov	r12d, eax
	mov	ebp, 0xffffffff
	lea	rsi, [rsi]
	test	r12d, r12d
	lea	rdi, [rdi]
	js	.label_511
.label_516:
	lea	rsi, [rsi]
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 2
	nop	
	jne	.label_514
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_517
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x2e
	jne	.label_517
	movzx	ecx, byte ptr [rbx + 1]
	cmp	ecx, 0x2e
	jne	.label_517
	cmp	byte ptr [rbx + 2], 0
	mov	rsp, rsp
	jne	.label_517
.label_514:
	lea	rdx, [rsp]
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, r12d
	lea	rdi, [rdi]
	call	__fxstat
	test	eax, eax
	jne	.label_528
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x90]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	jne	.label_530
	nop	
	mov	rax, qword ptr [rcx + 0x80]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rsp + 8]
	nop	
	jne	.label_530
	mov	eax, dword ptr [r15 + 0x48]
.label_517:
	mov	rbp, rbp
	test	ah, 2
	jne	.label_513
	nop	
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	mov	rbp, rbp
	jmp	.label_518
.label_513:
	mov	esi, dword ptr [r15 + 0x2c]
	lea	rsi, [rsi]
	cmp	esi, r12d
	jne	.label_525
	cmp	esi, -0x64
	jne	.label_521
.label_525:
	lea	rdi, [rdi]
	test	r14b, r14b
	je	.label_522
	test	al, 4
	lea	rsi, [rsi]
	jne	.label_523
	nop	
	test	esi, esi
	js	.label_523
	mov	rbp, rbp
	mov	edi, esi
	jmp	.label_526
.label_530:
	nop	
	call	__errno_location
	mov	dword ptr [rax], 2
.label_528:
	mov	ebp, 0xffffffff
.label_518:
	test	r13d, r13d
	jns	.label_511
	call	__errno_location
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	nop	
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_511
.label_522:
	lea	rsi, [rsi]
	lea	rdi, [r15 + 0x60]
	lea	rsi, [rsi]
	call	i_ring_push
	lea	rsi, [rsi]
	test	eax, eax
	js	.label_523
	mov	edi, eax
.label_526:
	mov	rsp, rsp
	call	close
.label_523:
	mov	dword ptr [r15 + 0x2c], r12d
	xor	ebp, ebp
.label_511:
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
.label_521:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409050

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
	je	.label_610
	mov	qword ptr [rsp + 0x38], rdi
	call	dirfd
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x5c], eax
	lea	rsi, [rsi]
	test	eax, eax
	js	.label_563
	mov	qword ptr [rsp + 0x50], -1
	nop	
	cmp	qword ptr [r13 + 0x40], 0
	nop	
	jne	.label_566
	mov	eax, 0x186a0
	mov	qword ptr [rsp + 0x50], rax
.label_566:
	lea	rax, [r13 + 0x40]
	mov	qword ptr [rsp + 0x30], rax
	lea	rax, [r13 + 0x48]
	mov	qword ptr [rsp + 0x90], rax
	mov	al, 1
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x74], eax
	jmp	.label_539
.label_610:
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
	jne	.label_577
	mov	edi, dword ptr [r13 + 0x2c]
.label_577:
	mov	rbp, rbp
	mov	rsi, qword ptr [r12 + 0x30]
	xor	edx, edx
	mov	rsp, rsp
	test	al, 0x10
	mov	rbp, rbp
	je	.label_585
	nop	
	test	al, 1
	nop	
	je	.label_586
	lea	rsi, [rsi]
	cmp	qword ptr [r12 + 0x58], 0
	mov	rbp, rbp
	je	.label_585
.label_586:
	lea	rdi, [rdi]
	mov	edx, 0x20000
.label_585:
	nop	
	lea	rcx, [rsp + 0x5c]
	call	opendirat
	mov	qword ptr [r12 + 0x18], rax
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_593
	nop	
	lea	rcx, [r13 + 0x48]
	lea	rdi, [rdi]
	movzx	eax, word ptr [r12 + 0x70]
	nop	
	cmp	eax, 0xb
	mov	rsp, rsp
	jne	.label_596
	mov	qword ptr [rsp + 0x90], rcx
	xor	edx, edx
	mov	rdi, r13
	lea	rdi, [rdi]
	mov	rsi, r12
	lea	rsi, [rsi]
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	jmp	.label_602
.label_563:
	mov	rdi, qword ptr [r12 + 0x18]
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
.label_593:
	mov	rsp, rsp
	xor	ebx, ebx
	cmp	r15d, 3
	jne	.label_538
	lea	rsi, [rsi]
	mov	word ptr [r12 + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	nop	
	mov	dword ptr [r12 + 0x40], eax
	xor	ebx, ebx
	jmp	.label_538
.label_596:
	mov	rbp, rbp
	test	byte ptr [rcx + 1], 1
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x90], rcx
	je	.label_602
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
	je	.label_545
.label_602:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], -1
	lea	rdi, [rdi]
	cmp	qword ptr [r13 + 0x40], 0
	lea	rdi, [rdi]
	jne	.label_550
	mov	eax, 0x186a0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], rax
.label_550:
	lea	rax, [r13 + 0x40]
	mov	qword ptr [rsp + 0x30], rax
	cmp	r15d, 2
	nop	
	je	.label_555
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x90]
	mov	rsp, rsp
	mov	eax, dword ptr [rax]
	nop	
	and	eax, 0x38
	cmp	eax, 0x18
	mov	rbp, rbp
	jne	.label_559
	mov	rbp, rbp
	cmp	qword ptr [r12 + 0x88], 2
	jne	.label_559
	mov	esi, dword ptr [rsp + 0x5c]
	mov	rdi, r12
	lea	rsi, [rsi]
	call	filesystem_type
	cmp	rax, 0x9f9f
	nop	
	jle	.label_564
	cmp	rax, 0x9fa0
	lea	rsi, [rsi]
	je	.label_559
	mov	rbp, rbp
	mov	ecx, 0xff534d42
	mov	rsp, rsp
	cmp	rax, rcx
	je	.label_559
	mov	rsp, rsp
	cmp	rax, 0x5346414f
	je	.label_559
	lea	rsi, [rsi]
	jmp	.label_555
.label_545:
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0xc
	lea	rdi, [rdi]
	xor	ebx, ebx
	jmp	.label_538
.label_564:
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_559
	mov	rbp, rbp
	cmp	rax, 0x6969
	jne	.label_555
.label_559:
	cmp	r15d, 3
	nop	
	sete	bl
	mov	rbp, rbp
	mov	r14b, 1
	jmp	.label_582
.label_555:
	cmp	r15d, 3
	lea	rsi, [rsi]
	sete	bl
	mov	rbp, rbp
	mov	r14d, 0
	mov	rbp, rbp
	jne	.label_584
.label_582:
	mov	rsp, rsp
	mov	dword ptr [rsp + 8], r15d
	mov	rax, qword ptr [rsp + 0x90]
	nop	
	test	byte ptr [rax + 1], 2
	mov	ebp, dword ptr [rsp + 0x5c]
	lea	rdi, [rdi]
	je	.label_587
	nop	
	mov	esi, 0x406
	nop	
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebp
	call	rpl_fcntl
	mov	ebp, eax
	mov	dword ptr [rsp + 0x5c], ebp
.label_587:
	nop	
	test	ebp, ebp
	nop	
	js	.label_572
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
	je	.label_600
.label_572:
	and	bl, r14b
	lea	rsi, [rsi]
	movzx	eax, bl
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_601
	lea	rsi, [rsi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [r12 + 0x40], eax
.label_601:
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
	je	.label_534
	mov	edi, dword ptr [rsp + 0x5c]
	test	edi, edi
	js	.label_534
	call	close
.label_534:
	mov	qword ptr [r12 + 0x18], 0
	mov	dword ptr [rsp + 0x74], 0
	jmp	.label_536
.label_584:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x74], 0
	nop	
	jmp	.label_539
.label_600:
	mov	rsp, rsp
	mov	al, 1
	mov	dword ptr [rsp + 0x74], eax
.label_536:
	mov	r15d, dword ptr [rsp + 8]
.label_539:
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [r12 + 0x48]
	mov	rbp, rbp
	movzx	eax, byte ptr [rax + rdx - 1]
	cmp	eax, 0x2f
	jne	.label_548
	dec	rdx
.label_548:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 8], r15d
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	test	byte ptr [rax], 4
	je	.label_553
	mov	rax, qword ptr [r13 + 0x20]
	mov	rbp, rbp
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x28], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_553:
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
.label_581:
	mov	rsp, rsp
	mov	rbx, qword ptr [r12 + 0x18]
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_540
	mov	qword ptr [rsp + 0x88], rax
	mov	qword ptr [rsp + 0x18], rbp
	call	__errno_location
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x80], rax
	mov	rbp, qword ptr [rsp + 0x90]
	nop	word ptr cs:[rax + rax]
.label_556:
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
	je	.label_592
	mov	rsp, rsp
	mov	r13, r14
	add	r13, 0x13
	nop	
	test	byte ptr [rbp], 0x20
	jne	.label_594
	movzx	eax, byte ptr [r13]
	mov	rsp, rsp
	cmp	eax, 0x2e
	lea	rdi, [rdi]
	jne	.label_594
	nop	
	movzx	eax, byte ptr [r14 + 0x14]
	cmp	eax, 0x2e
	lea	rdi, [rdi]
	je	.label_598
	test	al, al
	je	.label_604
	lea	rsi, [rsi]
	jmp	.label_594
	nop	word ptr cs:[rax + rax]
.label_598:
	mov	rsp, rsp
	cmp	byte ptr [r14 + 0x15], 0
	lea	rsi, [rsi]
	jne	.label_594
.label_604:
	nop	
	mov	rbx, qword ptr [r12 + 0x18]
	test	rbx, rbx
	nop	
	jne	.label_556
	jmp	.label_609
	nop	word ptr cs:[rax + rax]
.label_594:
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
	je	.label_541
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
	jae	.label_547
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	jmp	.label_574
.label_547:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x48]
	lea	rsi, [rax + rbx]
	lea	rdi, [rdi]
	add	rsi, qword ptr [rbp + 0x30]
	jb	.label_567
	lea	rdi, [rdi]
	mov	qword ptr [rbp + 0x30], rsi
	mov	rdi, r13
	call	realloc
	lea	rdi, [rdi]
	test	rax, rax
	nop	
	je	.label_595
	mov	rsp, rsp
	mov	qword ptr [rbp + 0x20], rax
	lea	rdi, [rdi]
	cmp	r13, rax
	lea	rsi, [rsi]
	je	.label_576
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
	jmp	.label_580
.label_576:
	mov	rdx, qword ptr [rsp + 0x78]
.label_580:
	mov	rax, qword ptr [rbp + 0x30]
	sub	rax, rdx
.label_574:
	mov	rsp, rsp
	add	rbx, rdx
	jb	.label_589
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
	jne	.label_591
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_605
	nop	word ptr cs:[rax + rax]
.label_591:
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
.label_605:
	mov	rax, qword ptr [rsp + 0x90]
	mov	edx, dword ptr [rax]
	nop	
	mov	rax, qword ptr [rsp + 0x30]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	je	.label_558
	mov	eax, edx
	mov	rsp, rsp
	and	eax, 0x400
	jne	.label_558
	xor	edx, edx
	mov	rsp, rsp
	mov	rdi, r13
	mov	rsp, rsp
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	mov	rbp, qword ptr [rsp + 0x18]
	jmp	.label_543
	nop	
.label_558:
	and	edx, 0x18
	movzx	ecx, byte ptr [r14 + 0x12]
	xor	eax, eax
	cmp	edx, 0x18
	lea	rsi, [rsi]
	mov	edx, 0
	lea	rdi, [rdi]
	jne	.label_549
	nop	
	cmp	ecx, 4
	setne	bl
	test	cl, cl
	setne	dl
	and	dl, bl
.label_549:
	mov	word ptr [r12 + 0x70], 0xb
	mov	rsp, rsp
	lea	esi, [rcx - 1]
	mov	rsp, rsp
	cmp	esi, 0xb
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x18]
	ja	.label_554
	mov	eax,  dword ptr [dword ptr [+ (rcx * 4) + label_561]]
.label_554:
	mov	dword ptr [r12 + 0x90], eax
	cmp	dl, 1
	mov	eax, 1
	adc	rax, 0
	mov	rsp, rsp
	mov	qword ptr [r12 + 0xa8], rax
.label_543:
	mov	qword ptr [r12 + 0x10], 0
	test	r15, r15
	nop	
	mov	rax, r12
	je	.label_579
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, r15
.label_579:
	mov	rbp, rbp
	mov	r15, rax
	cmp	rbp, 0x2710
	jne	.label_570
	mov	rax, qword ptr [rsp + 0x30]
	cmp	qword ptr [rax], 0
	nop	
	jne	.label_570
	mov	esi, dword ptr [rsp + 0x5c]
	mov	rdi, qword ptr [rsp + 0x68]
	nop	
	call	filesystem_type
	mov	dword ptr [rsp + 0xc], 0
	cmp	rax, 0x6969
	mov	rbp, rbp
	je	.label_570
	mov	rsp, rsp
	cmp	rax, 0x1021994
	je	.label_570
	mov	ecx, 0xff534d42
	mov	rbp, rbp
	cmp	rax, rcx
	mov	rsp, rsp
	je	.label_570
	mov	rsp, rsp
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	nop	word ptr cs:[rax + rax]
.label_570:
	mov	rbp, rbp
	inc	rbp
	cmp	qword ptr [rsp + 0x50], rbp
	mov	rbp, rbp
	mov	rax, r12
	mov	r12, qword ptr [rsp + 0x68]
	ja	.label_581
	jmp	.label_540
.label_592:
	mov	rax, qword ptr [rsp + 0x80]
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_544
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
.label_544:
	mov	rdi, qword ptr [r12 + 0x18]
	lea	rdi, [rdi]
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x98]
	je	.label_540
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
	jmp	.label_540
.label_609:
	mov	r13, qword ptr [rsp + 0x98]
	mov	rbp, qword ptr [rsp + 0x18]
.label_540:
	nop	
	mov	rax, qword ptr [rsp + 0x40]
	test	al, 1
	lea	rsi, [rsi]
	je	.label_546
	mov	rcx, qword ptr [r13 + 8]
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 0x20]
	lea	rdi, [rdi]
	jmp	.label_611
	nop	word ptr cs:[rax + rax]
.label_537:
	mov	qword ptr [rcx + 0x38], rax
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
.label_611:
	nop	
	test	rcx, rcx
	je	.label_535
	mov	rdx, qword ptr [rcx + 0x30]
	mov	rbp, rbp
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_537
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x30], rdx
	mov	rsp, rsp
	jmp	.label_537
.label_535:
	cmp	qword ptr [r15 + 0x58], 0
	mov	rsp, rsp
	js	.label_546
	mov	rcx, r15
	nop	word ptr cs:[rax + rax]
.label_560:
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	lea	rsi, [rsi]
	je	.label_551
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x30], rdx
.label_551:
	mov	qword ptr [rcx + 0x38], rax
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_557
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + 8]
.label_557:
	lea	rdi, [rdi]
	cmp	qword ptr [rdx + 0x58], 0
	mov	rbp, rbp
	mov	rcx, rdx
	jns	.label_560
.label_546:
	nop	
	mov	rax, qword ptr [rsp + 0x90]
	test	byte ptr [rax], 4
	mov	rbp, rbp
	je	.label_562
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
.label_562:
	cmp	qword ptr [rsp + 0x38], 0
	jne	.label_568
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x74]
	nop	
	test	al, al
	je	.label_568
	cmp	dword ptr [rsp + 8], 1
	je	.label_573
	mov	rsp, rsp
	test	rbp, rbp
	lea	rdi, [rdi]
	jne	.label_568
.label_573:
	cmp	qword ptr [r12 + 0x58], 0
	je	.label_578
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r12 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_2
	nop	
	mov	rdi, r13
	call	fts_safe_changedir
	jmp	.label_583
.label_578:
	mov	rdi, r13
	lea	rdi, [rdi]
	call	restore_initial_cwd
.label_583:
	test	eax, eax
	je	.label_568
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
	je	.label_538
	xor	ebx, ebx
.label_597:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	mov	rbp, rbp
	test	rdi, rdi
	mov	rsp, rsp
	je	.label_569
	call	closedir
.label_569:
	lea	rdi, [rdi]
	mov	rdi, r15
	call	free
	mov	rsp, rsp
	test	rbp, rbp
	mov	r15, rbp
	jne	.label_597
	mov	rbp, rbp
	jmp	.label_538
.label_568:
	test	rbp, rbp
	mov	rbp, rbp
	je	.label_599
	mov	eax, dword ptr [rsp + 0xc]
	test	al, 1
	jne	.label_608
	cmp	rbp, 2
	jb	.label_603
	nop	
	mov	rax, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_606
	mov	rbp, rbp
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	fts_sort
	mov	rbx, rax
	mov	rbp, rbp
	jmp	.label_538
.label_599:
	cmp	dword ptr [rsp + 8], 3
	jne	.label_533
	lea	rdi, [rdi]
	movzx	eax, word ptr [r12 + 0x70]
	cmp	eax, 4
	lea	rsi, [rsi]
	je	.label_533
	movzx	eax, ax
	cmp	eax, 7
	lea	rdi, [rdi]
	je	.label_533
	mov	word ptr [r12 + 0x70], 6
.label_533:
	xor	ebx, ebx
	test	r15, r15
	je	.label_538
	nop	
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_552:
	nop	
	mov	rbp, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	nop	
	je	.label_542
	mov	rbp, rbp
	call	closedir
.label_542:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	test	rbp, rbp
	mov	rsp, rsp
	mov	r15, rbp
	jne	.label_552
	mov	rsp, rsp
	jmp	.label_538
.label_608:
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
	jmp	.label_538
.label_603:
	mov	rbx, r15
	nop	
	jmp	.label_538
.label_606:
	nop	
	mov	rbx, r15
	jmp	.label_538
.label_589:
	mov	rdi, r12
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	test	r15, r15
	mov	rbp, rbp
	je	.label_565
	nop	word ptr cs:[rax + rax]
.label_575:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r15 + 0x10]
	nop	
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_588
	call	closedir
.label_588:
	nop	
	mov	rdi, r15
	call	free
	lea	rsi, [rsi]
	test	rbx, rbx
	nop	
	mov	r15, rbx
	mov	rsp, rsp
	jne	.label_575
.label_565:
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
	jmp	.label_538
.label_567:
	mov	rdi, r13
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 0x20], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x80]
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x24
	jmp	.label_590
.label_595:
	mov	rdi, qword ptr [rbp + 0x20]
	call	free
	mov	rsp, rsp
	mov	qword ptr [rbp + 0x20], 0
.label_590:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa0], r12
	mov	rbp, qword ptr [rsp + 0x90]
.label_541:
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
	je	.label_607
	nop	word ptr cs:[rax + rax]
.label_612:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 0x18]
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_571
	lea	rdi, [rdi]
	call	closedir
.label_571:
	mov	rdi, r15
	lea	rdi, [rdi]
	call	free
	test	rbx, rbx
	mov	rsp, rsp
	mov	r15, rbx
	jne	.label_612
.label_607:
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
.label_538:
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
	#Procedure 0x409e60

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
	jne	.label_613
	nop	
	test	ah, 2
	lea	rsi, [rsi]
	jne	.label_618
	mov	edi, dword ptr [rbx + 0x28]
	mov	rsp, rsp
	call	fchdir
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	setne	al
	jmp	.label_615
.label_613:
	xor	eax, eax
	jmp	.label_615
.label_618:
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbx + 0x2c]
	lea	rdi, [rbx + 0x60]
	mov	rbp, rbp
	call	i_ring_push
	test	eax, eax
	mov	rbp, rbp
	js	.label_616
	mov	rsp, rsp
	mov	edi, eax
	lea	rdi, [rdi]
	call	close
.label_616:
	nop	
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
	lea	rsi, [rsi]
	xor	eax, eax
.label_615:
	mov	rsp, rsp
	movzx	ebp, al
	lea	rsi, [rsi]
	add	rbx, 0x60
	jmp	.label_617
	nop	dword ptr [rax]
.label_614:
	mov	edi, eax
	mov	rbp, rbp
	call	close
.label_617:
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	i_ring_empty
	mov	rsp, rsp
	test	al, al
	nop	
	jne	.label_619
	mov	rdi, rbx
	call	i_ring_pop
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jns	.label_614
	lea	rsi, [rsi]
	jmp	.label_617
.label_619:
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
	#Procedure 0x409f30

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
	je	.label_622
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	nop	
	je	.label_624
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
	je	.label_620
	mov	rsp, rsp
	mov	rdi, rbx
	call	free
	nop	
	test	r15, r15
	je	.label_621
	nop	
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [r14], rax
	jmp	.label_623
.label_622:
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
	je	.label_620
	lea	rsi, [rsi]
	mov	qword ptr [r14], r14
.label_623:
	nop	
	mov	word ptr [r14 + 0x70], 2
	lea	rsi, [rsi]
	jmp	.label_620
.label_624:
	xor	ebp, ebp
	jmp	.label_620
.label_621:
	xor	ebp, ebp
.label_620:
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
	#Procedure 0x40a010

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	mov	rsp, rsp
	cmp	edx, 5
	jb	.label_625
	nop	
	push	rax
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	mov	rbp, rbp
	add	rsp, 8
	ret	
.label_625:
	mov	rsp, rsp
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a040
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
	jne	.label_626
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
	jne	.label_627
	movzx	ecx, word ptr [r15 + 0x70]
	mov	rbp, rbp
	xor	eax, eax
	cmp	ecx, 1
	je	.label_635
	movzx	ecx, cx
	cmp	ecx, 9
	nop	
	jne	.label_627
	mov	rax, qword ptr [r15 + 0x10]
	jmp	.label_627
.label_626:
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x16
	mov	rsp, rsp
	xor	eax, eax
	nop	
	jmp	.label_627
.label_635:
	mov	rbx, qword ptr [r13 + 8]
	test	rbx, rbx
	nop	
	je	.label_638
	nop	word ptr cs:[rax + rax]
.label_630:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_640
	call	closedir
.label_640:
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	test	rbp, rbp
	nop	
	mov	rbx, rbp
	jne	.label_630
.label_638:
	mov	ebx, 1
	lea	rsi, [rsi]
	cmp	r12d, 0x1000
	jne	.label_634
	or	byte ptr [r13 + 0x49], 0x10
	mov	rsp, rsp
	mov	ebx, 2
.label_634:
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x58], 0
	nop	
	jne	.label_633
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x30]
	mov	rsp, rsp
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x2f
	je	.label_633
	mov	eax, dword ptr [r13 + 0x48]
	test	al, 4
	lea	rdi, [rdi]
	jne	.label_633
	mov	edx, eax
	and	edx, 0x10
	lea	rsi, [rsi]
	shl	edx, 0xd
	or	edx, 0x90900
	mov	rsp, rsp
	test	ah, 2
	jne	.label_636
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str_9
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, edx
	mov	rbp, rbp
	call	open_safer
	jmp	.label_631
.label_633:
	mov	rdi, r13
	mov	esi, ebx
	mov	rbp, rbp
	call	fts_build
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 8], rax
.label_627:
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
.label_636:
	mov	edi, dword ptr [r13 + 0x2c]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str_9
	xor	eax, eax
	call	openat_safer
.label_631:
	mov	r15d, eax
	test	r15d, r15d
	mov	rbp, rbp
	js	.label_642
	mov	rbp, rbp
	mov	rdi, r13
	mov	esi, ebx
	lea	rsi, [rsi]
	call	fts_build
	mov	rsp, rsp
	mov	qword ptr [r13 + 8], rax
	mov	rbp, rbp
	test	byte ptr [r13 + 0x49], 2
	jne	.label_639
	nop	
	mov	edi, r15d
	call	fchdir
	test	eax, eax
	je	.label_629
	lea	rdi, [rdi]
	mov	ebx, dword ptr [r14]
	mov	edi, r15d
	call	close
	mov	rsp, rsp
	mov	dword ptr [r14], ebx
	mov	rsp, rsp
	xor	eax, eax
	nop	
	jmp	.label_627
.label_642:
	lea	rdi, [rdi]
	mov	qword ptr [r13 + 8], 0
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_627
.label_639:
	mov	esi, dword ptr [r13 + 0x2c]
	mov	rbp, rbp
	cmp	esi, r15d
	mov	rsp, rsp
	jne	.label_628
	lea	rsi, [rsi]
	cmp	esi, -0x64
	jne	.label_632
.label_628:
	lea	rdi, [r13 + 0x60]
	call	i_ring_push
	test	eax, eax
	mov	rbp, rbp
	js	.label_637
	mov	edi, eax
	mov	rbp, rbp
	call	close
.label_637:
	mov	dword ptr [r13 + 0x2c], r15d
	jmp	.label_641
.label_629:
	lea	rsi, [rsi]
	mov	edi, r15d
	call	close
.label_641:
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 8]
	jmp	.label_627
.label_632:
	mov	rbp, rbp
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a2a0

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
	#Procedure 0x40a2c0

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	mov	rbp, rbp
	jne	.label_643
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	mov	rsp, rsp
	ret	
.label_643:
	mov	rsp, rsp
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a2f0

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
	je	.label_646
	mov	rbp, qword ptr [rbx + 0x50]
	mov	rbp, rbp
	test	rbp, rbp
	jne	.label_645
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
	je	.label_648
.label_645:
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
	je	.label_644
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	jmp	.label_646
.label_644:
	mov	r12b, 1
	mov	r14, rbp
.label_648:
	xor	eax, eax
	nop	
	test	r15d, r15d
	js	.label_646
	lea	rsi, [rsp + 0x10]
	mov	edi, r15d
	mov	rbp, rbp
	call	fstatfs
	mov	ecx, eax
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	test	ecx, ecx
	jne	.label_646
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_647
	mov	edi, 0x10
	lea	rsi, [rsi]
	call	malloc
	mov	rbp, rax
	nop	
	test	rbp, rbp
	je	.label_647
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
	je	.label_649
	nop	
	cmp	rax, rbp
	lea	rsi, [rsi]
	je	.label_647
	lea	rdi, [rdi]
	call	abort
.label_649:
	mov	rdi, rbp
	call	free
.label_647:
	mov	rax, qword ptr [rsp + 0x10]
.label_646:
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
	#Procedure 0x40a460

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
	#Procedure 0x40a480

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
	#Procedure 0x40a490

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
	#Procedure 0x40a4d0

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
	je	.label_650
	nop	
	cmp	r15, -2
	jb	.label_650
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_650
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_650:
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
	#Procedure 0x40a560

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
	jne	.label_651
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_652
	test	cl, cl
	mov	rsp, rsp
	jne	.label_652
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_652
.label_651:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_652
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_652:
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
	#Procedure 0x40a5f0

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
	#Procedure 0x40a610

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	nop	
	cmp	dword ptr [rdi + 0x18], 0x95f616
	jne	.label_653
	mov	rbp, rbp
	mov	rcx, qword ptr [rdi + 0x10]
	test	rcx, rcx
	je	.label_655
	mov	rax, qword ptr [rsi + 8]
	cmp	rax, qword ptr [rdi]
	nop	
	jne	.label_655
	mov	rsp, rsp
	mov	rdx, qword ptr [rsi]
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	je	.label_656
.label_655:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 1]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x10], rdx
	mov	rbp, rbp
	test	rdx, rcx
	jne	.label_654
	mov	al, 1
	test	rdx, rdx
	lea	rsi, [rsi]
	je	.label_656
	mov	rax, qword ptr [rsi]
	nop	
	mov	qword ptr [rdi + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi], rax
.label_654:
	mov	rsp, rsp
	xor	eax, eax
.label_656:
	ret	
.label_653:
	push	rax
	mov	edi, OFFSET FLAT:.str_10
	mov	esi, OFFSET FLAT:.str.1_7
	mov	edx, 0x3c
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.cycle_check
	nop	
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a6a0

	.globl open_safer
	.type open_safer, @function
open_safer:
	mov	rsp, rsp
	sub	rsp, 0xc8
	nop	
	test	al, al
	mov	rbp, rbp
	je	.label_657
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
.label_657:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	xor	edx, edx
	nop	
	test	sil, 0x40
	je	.label_658
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
	ja	.label_659
	lea	rsi, [rsi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_660
.label_659:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_660:
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax]
.label_658:
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
	#Procedure 0x40a7c0

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
	je	.label_662
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_661
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_663
.label_661:
	nop	
	mov	esi, OFFSET FLAT:.str.1_8
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_662
.label_663:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_662:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a810
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a820
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a830
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a840
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
	jae	.label_664
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
	jb	.label_670
	xor	eax, eax
	nop	
	cmp	qword ptr [rcx], 0
	mov	rsp, rsp
	je	.label_671
	mov	rbp, rbp
	mov	rdi, rcx
	nop	dword ptr [rax]
.label_669:
	nop	
	mov	rdi, qword ptr [rdi + 8]
	inc	rax
	mov	rsp, rsp
	test	rdi, rdi
	lea	rdi, [rdi]
	jne	.label_669
.label_671:
	add	rcx, 0x10
.label_670:
	nop	
	test	rsi, rsi
	je	.label_664
	nop	word ptr cs:[rax + rax]
.label_668:
	cmp	qword ptr [rcx], 0
	nop	
	mov	esi, 0
	mov	rdi, rcx
	mov	rbp, rbp
	je	.label_665
	nop	word ptr cs:[rax + rax]
.label_666:
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_666
	mov	rbp, rbp
	cmp	rsi, rax
	lea	rsi, [rsi]
	cmova	rax, rsi
.label_665:
	cmp	qword ptr [rcx + 0x10], 0
	nop	
	je	.label_672
	lea	rdi, [rcx + 0x10]
	xor	esi, esi
	nop	word ptr [rax + rax]
.label_667:
	mov	rdi, qword ptr [rdi + 8]
	mov	rbp, rbp
	inc	rsi
	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rsi, [rsi]
	jne	.label_667
	mov	rsp, rsp
	cmp	rsi, rax
	nop	
	cmova	rax, rsi
.label_672:
	mov	rsp, rsp
	add	rcx, 0x20
	mov	rsp, rsp
	cmp	rcx, rdx
	mov	rsp, rsp
	jb	.label_668
.label_664:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a950
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
	jae	.label_678
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
	jb	.label_683
	xor	edx, edx
	cmp	qword ptr [rcx], 0
	mov	rsp, rsp
	je	.label_679
	mov	esi, 1
	mov	rax, rcx
	nop	dword ptr [rax + rax]
.label_682:
	mov	rbp, rbp
	inc	rdx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	test	rax, rax
	jne	.label_682
	mov	rsp, rsp
	jmp	.label_675
.label_683:
	mov	rbp, rbp
	xor	esi, esi
	jmp	.label_677
.label_679:
	xor	esi, esi
.label_675:
	add	rcx, 0x10
.label_677:
	test	r8, r8
	nop	
	je	.label_678
	nop	dword ptr [rax]
.label_684:
	cmp	qword ptr [rcx], 0
	mov	rbp, rbp
	mov	rax, rcx
	je	.label_680
	nop	dword ptr [rax]
.label_681:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	jne	.label_681
	lea	rdi, [rdi]
	inc	rsi
.label_680:
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_676
	lea	rax, [rcx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_673:
	lea	rdi, [rdi]
	inc	rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_673
	inc	rsi
.label_676:
	add	rcx, 0x20
	cmp	rcx, r9
	jb	.label_684
.label_678:
	cmp	rsi, qword ptr [rdi + 0x18]
	jne	.label_685
	lea	rdi, [rdi]
	mov	al, 1
	nop	
	cmp	rdx, qword ptr [rdi + 0x20]
	lea	rsi, [rsi]
	je	.label_674
.label_685:
	xor	eax, eax
.label_674:
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40aa60
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
	jae	.label_686
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
	jb	.label_687
	mov	rbp, rbp
	xor	ebx, ebx
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_689
	mov	rsp, rsp
	mov	rdi, rax
	nop	word ptr [rax + rax]
.label_695:
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 8]
	inc	rbx
	nop	
	test	rdi, rdi
	lea	rdi, [rdi]
	jne	.label_695
.label_689:
	add	rax, 0x10
.label_687:
	test	rsi, rsi
	je	.label_686
	nop	dword ptr [rax]
.label_694:
	cmp	qword ptr [rax], 0
	mov	esi, 0
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	je	.label_696
	nop	word ptr cs:[rax + rax]
.label_697:
	mov	rdi, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	inc	rsi
	nop	
	test	rdi, rdi
	jne	.label_697
	mov	rbp, rbp
	cmp	rsi, rbx
	cmova	rbx, rsi
.label_696:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_688
	lea	rdi, [rax + 0x10]
	xor	esi, esi
	nop	word ptr [rax + rax]
.label_690:
	mov	rdi, qword ptr [rdi + 8]
	mov	rsp, rsp
	inc	rsi
	test	rdi, rdi
	jne	.label_690
	mov	rbp, rbp
	cmp	rsi, rbx
	mov	rbp, rbp
	cmova	rbx, rsi
.label_688:
	add	rax, 0x20
	nop	
	cmp	rax, rdx
	jb	.label_694
.label_686:
	lea	rsi, [rsi]
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_11
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.1_9
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	nop	
	call	__fprintf_chk
	nop	
	movq	xmm1, r14
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_691]]
	punpckldq	xmm1, xmm2
	lea	rsi, [rsi]
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_692]]
	nop	
	subpd	xmm1, xmm3
	lea	rdi, [rdi]
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	lea	rsi, [rsi]
	mulsd	xmm0,  qword ptr [word ptr [rip + label_693]]
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
	mov	edx, OFFSET FLAT:.str.2_3
	mov	al, 1
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	lea	rsi, [rsi]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_2
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
	#Procedure 0x40ac70

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
	jae	.label_702
	mov	rbx, qword ptr [r14]
	nop	
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	mov	rsp, rsp
	test	rsi, rsi
	je	.label_699
	lea	rsi, [rsi]
	add	rbx, rax
	je	.label_699
	cmp	rsi, r12
	je	.label_698
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_700:
	nop	
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_701
	nop	
	mov	rbx, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_699
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx]
	nop	
	cmp	rsi, r12
	lea	rdi, [rdi]
	jne	.label_700
.label_698:
	mov	r15, r12
	jmp	.label_699
.label_701:
	nop	
	mov	r15, qword ptr [rbx]
.label_699:
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
.label_702:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ad30
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	mov	rbp, rbp
	je	.label_703
	nop	
	mov	rcx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdi + 8]
	mov	rbp, rbp
	jmp	.label_706
	nop	dword ptr [rax]
.label_704:
	add	rcx, 0x10
.label_706:
	cmp	rcx, rdx
	jae	.label_705
	mov	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_704
.label_703:
	mov	rsp, rsp
	ret	
.label_705:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x40ad70
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
	jae	.label_710
	nop	
	mov	rcx, qword ptr [r14]
	lea	rdi, [rdi]
	shl	rax, 4
	nop	
	lea	rdx, [rcx + rax]
	nop	word ptr [rax + rax]
.label_712:
	nop	
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	je	.label_708
	test	rdx, rdx
	jne	.label_712
	lea	rdi, [rdi]
	jmp	.label_709
.label_708:
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_709
	mov	rax, qword ptr [rdx]
	jmp	.label_707
.label_709:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rax + rcx + 0x10]
	nop	dword ptr [rax]
.label_711:
	mov	rbp, rbp
	cmp	rcx, rdx
	mov	eax, 0
	mov	rbp, rbp
	jae	.label_707
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_711
.label_707:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_710:
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ae10
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	nop
	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_713
	nop	word ptr cs:[rax + rax]
.label_715:
	add	r9, 0x10
.label_713:
	nop	
	cmp	r9, r8
	lea	rdi, [rdi]
	jae	.label_714
	lea	rsi, [rsi]
	cmp	qword ptr [r9], 0
	je	.label_715
	test	r9, r9
	mov	rbp, rbp
	mov	r10, r9
	mov	rbp, rbp
	je	.label_715
	nop	word ptr cs:[rax + rax]
.label_716:
	mov	rsp, rsp
	cmp	rax, rdx
	jae	.label_714
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
	jne	.label_716
	mov	r8, qword ptr [rdi + 8]
	jmp	.label_715
.label_714:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ae90
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
	jmp	.label_719
	nop	dword ptr [rax]
.label_717:
	lea	rsi, [rsi]
	add	r13, 0x10
.label_719:
	nop	
	cmp	r13, rax
	lea	rsi, [rsi]
	jae	.label_718
	mov	rdi, qword ptr [r13]
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_717
	test	r13, r13
	lea	rdi, [rdi]
	je	.label_717
	mov	rsi, r14
	lea	rsi, [rsi]
	call	r15
	mov	rbp, rbp
	test	al, al
	mov	rbp, r13
	mov	rsp, rsp
	je	.label_718
	nop	word ptr [rax + rax]
.label_720:
	mov	rsp, rsp
	inc	rbx
	mov	rbp, rbp
	mov	rbp, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	test	rbp, rbp
	je	.label_721
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_720
	jmp	.label_718
	nop	word ptr cs:[rax + rax]
.label_721:
	mov	rax, qword ptr [r12 + 8]
	mov	rbp, rbp
	jmp	.label_717
.label_718:
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
	#Procedure 0x40af60
	.globl hash_string
	.type hash_string, @function
hash_string:

	nop
	mov	al, byte ptr [rdi]
	nop	
	xor	edx, edx
	test	al, al
	je	.label_723
	inc	rdi
	nop	
	xor	edx, edx
.label_722:
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
	jne	.label_722
.label_723:
	mov	rax, rdx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40afa0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	nop
	mov	eax,  dword ptr [dword ptr [rip + label_724]]
	mov	dword ptr [rdi + 0x10], eax
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40afc0

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
	je	.label_726
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	mov	rbp, rbp
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_735
	movss	xmm0, dword ptr [rbx + 8]
	mov	rsp, rsp
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_732]]
	jbe	.label_725
	lea	rsi, [rsi]
	movss	xmm1,  dword ptr [dword ptr [rip + label_730]]
	ucomiss	xmm1, xmm0
	jbe	.label_725
	mov	rbp, rbp
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_739]]
	lea	rsi, [rsi]
	jbe	.label_725
	movss	xmm1, dword ptr [rbx]
	lea	rsi, [rsi]
	xorps	xmm2, xmm2
	lea	rsi, [rsi]
	ucomiss	xmm1, xmm2
	jb	.label_725
	addss	xmm1,  dword ptr [dword ptr [rip + label_732]]
	ucomiss	xmm0, xmm1
	lea	rdi, [rdi]
	jbe	.label_725
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbx + 4]
	lea	rdi, [rdi]
	movss	xmm2,  dword ptr [dword ptr [rip + label_738]]
	ucomiss	xmm2, xmm0
	jb	.label_725
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	mov	rsp, rsp
	jbe	.label_725
.label_735:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_731
	lea	rsi, [rsi]
	mov	eax, r12d
	and	eax, 1
	nop	
	test	r12, r12
	js	.label_734
	mov	rbp, rbp
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_740
.label_734:
	shr	r12, 1
	mov	rsp, rsp
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	lea	rdi, [rdi]
	addss	xmm0, xmm0
.label_740:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_728]]
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
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_729]]
	nop	
	jae	.label_725
.label_731:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	mov	rsp, rsp
	jmp	.label_737
.label_736:
	mov	rbp, rbp
	add	rbx, 2
.label_737:
	cmp	rbx, -1
	mov	rbp, rbp
	je	.label_725
	cmp	rbx, 0xa
	mov	rbp, rbp
	mov	esi, 0xc
	mov	edi, 9
	mov	rbp, rbp
	mov	ecx, 3
	lea	rdi, [rdi]
	jb	.label_727
	nop	word ptr cs:[rax + rax]
.label_733:
	xor	edx, edx
	mov	rax, rbx
	lea	rsi, [rsi]
	div	rcx
	test	rdx, rdx
	nop	
	je	.label_727
	mov	rbp, rbp
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	mov	rsp, rsp
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_733
.label_727:
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_736
	mov	rbp, rbp
	mov	rax, rbx
	lea	rdi, [rdi]
	shr	rax, 0x3c
	jne	.label_725
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_725
	mov	esi, 0x10
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	rpl_calloc
	lea	rsi, [rsi]
	mov	qword ptr [r15], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_725
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
	jmp	.label_726
.label_725:
	nop	
	mov	rdi, r15
	call	free
	nop	
	xor	eax, eax
.label_726:
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
	#Procedure 0x40b2a0

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
	#Procedure 0x40b2c0

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
	#Procedure 0x40b2d0
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
	jmp	.label_744
.label_741:
	mov	rsp, rsp
	add	r14, 0x10
.label_744:
	cmp	r14, rax
	jae	.label_745
	lea	rdi, [rdi]
	cmp	qword ptr [r14], 0
	nop	
	je	.label_741
	mov	rsp, rsp
	mov	rbx, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	nop	
	setne	cl
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_743
	nop	word ptr [rax + rax]
.label_742:
	nop	
	test	cl, 1
	je	.label_747
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	call	rax
	nop	
	mov	rax, qword ptr [r15 + 0x40]
.label_747:
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
	jne	.label_742
.label_743:
	test	cl, cl
	je	.label_746
	mov	rdi, qword ptr [r14]
	call	rax
.label_746:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	nop	
	jmp	.label_741
.label_745:
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
	#Procedure 0x40b3b0

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
	je	.label_749
	lea	rdi, [rdi]
	cmp	qword ptr [r14 + 0x20], 0
	lea	rdi, [rdi]
	je	.label_749
	mov	r15, qword ptr [r14]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 8]
	mov	rbp, rbp
	jmp	.label_754
	nop	word ptr [rax + rax]
.label_757:
	mov	rsp, rsp
	add	r15, 0x10
.label_754:
	lea	rdi, [rdi]
	cmp	r15, rax
	jae	.label_749
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_757
	test	r15, r15
	je	.label_757
	mov	rbp, rbp
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_750
	nop	dword ptr [rax]
.label_756:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_750:
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_756
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_757
.label_749:
	mov	r15, qword ptr [r14]
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	jmp	.label_753
	nop	dword ptr [rax + rax]
.label_748:
	mov	rbp, rbp
	add	r15, 0x10
.label_753:
	cmp	r15, rax
	jae	.label_752
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_748
	nop	dword ptr [rax + rax]
.label_758:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_758
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_748
.label_752:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_751
	nop	word ptr cs:[rax + rax]
.label_755:
	nop	
	mov	rbx, qword ptr [rdi + 8]
	call	free
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	jne	.label_755
.label_751:
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
	#Procedure 0x40b4e0

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
	jne	.label_770
	lea	rsi, [rsi]
	mov	ecx, esi
	nop	
	and	ecx, 1
	lea	rsi, [rsi]
	test	rsi, rsi
	js	.label_762
	lea	rdi, [rdi]
	cvtsi2ss	xmm0, rsi
	lea	rdi, [rdi]
	jmp	.label_769
.label_762:
	shr	rsi, 1
	or	rcx, rsi
	mov	rsp, rsp
	cvtsi2ss	xmm0, rcx
	mov	rbp, rbp
	addss	xmm0, xmm0
.label_769:
	nop	
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_728]]
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
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_729]]
	mov	rbp, rbp
	jae	.label_759
.label_770:
	mov	rsp, rsp
	cmp	rsi, 0xa
	mov	rbp, rbp
	mov	ebx, 0xa
	mov	rbp, rbp
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_765
	nop	word ptr cs:[rax + rax]
.label_764:
	lea	rsi, [rsi]
	add	rbx, 2
.label_765:
	cmp	rbx, -1
	je	.label_759
	cmp	rbx, 0xa
	mov	rbp, rbp
	mov	esi, 0xc
	nop	
	mov	edi, 9
	lea	rsi, [rsi]
	mov	ecx, 3
	lea	rsi, [rsi]
	jb	.label_763
.label_776:
	nop	
	xor	edx, edx
	mov	rax, rbx
	nop	
	div	rcx
	test	rdx, rdx
	je	.label_763
	lea	rdi, [rdi + rsi + 4]
	nop	
	add	rcx, 2
	add	rsi, 8
	lea	rsi, [rsi]
	cmp	rdi, rbx
	jb	.label_776
.label_763:
	mov	rsp, rsp
	xor	edx, edx
	nop	
	mov	rax, rbx
	div	rcx
	mov	rsp, rsp
	test	rdx, rdx
	je	.label_764
	nop	
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rsi, [rsi]
	ja	.label_759
	mov	bpl, 1
	mov	rbp, rbp
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_772
	nop	
	mov	esi, 0x10
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_759
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
	je	.label_761
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
	jmp	.label_772
.label_761:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x48], rax
	nop	
	mov	r12, qword ptr [rsp]
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jmp	.label_777
.label_773:
	add	r12, 0x10
.label_777:
	nop	
	cmp	r12, r15
	lea	rsi, [rsi]
	jae	.label_766
	cmp	qword ptr [r12], 0
	je	.label_773
	mov	rbp, rbp
	mov	rbp, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_775
	mov	rbp, rbp
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_768:
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp]
	nop	
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	lea	rsi, [rsi]
	jae	.label_774
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	nop	
	shl	rax, 4
	lea	rdi, [rdi]
	cmp	qword ptr [rdx + rax], 0
	je	.label_771
	mov	rbp, rbp
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp + 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_760
	nop	
.label_771:
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
.label_760:
	mov	rbp, rbp
	test	rcx, rcx
	mov	rbp, rcx
	nop	
	jne	.label_768
.label_775:
	nop	
	mov	qword ptr [r12 + 8], 0
	nop	
	jmp	.label_773
.label_766:
	nop	
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rbp, rbp
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_767
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp]
	call	free
.label_759:
	mov	rbp, rbp
	xor	ebp, ebp
.label_772:
	mov	al, bpl
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
.label_774:
	mov	rbp, rbp
	call	abort
.label_767:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b850

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
	jae	.label_786
	nop	word ptr cs:[rax + rax]
.label_780:
	mov	r13, qword ptr [r14]
	nop	
	test	r13, r13
	mov	rbp, rbp
	je	.label_782
	lea	rdi, [rdi]
	mov	r15, qword ptr [r14 + 8]
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_785
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp + 0x10]
	nop	word ptr [rax + rax]
.label_787:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15]
	mov	rdi, rbx
	nop	
	call	qword ptr [rbp + 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp + 0x10]
	lea	rdi, [rdi]
	cmp	rax, rsi
	jae	.label_781
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp]
	mov	rcx, qword ptr [r15 + 8]
	nop	
	shl	rax, 4
	mov	rsp, rsp
	cmp	qword ptr [rdx + rax], 0
	lea	rsi, [rsi]
	je	.label_789
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [r15 + 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rdx + rax + 8], r15
	nop	
	jmp	.label_791
	nop	word ptr cs:[rax + rax]
.label_789:
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
.label_791:
	test	rcx, rcx
	mov	r15, rcx
	mov	rsp, rsp
	jne	.label_787
	mov	r13, qword ptr [r14]
.label_785:
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 8], 0
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 4]
	mov	rsp, rsp
	test	al, al
	mov	rsp, rsp
	jne	.label_782
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, r13
	mov	rbp, rbp
	call	qword ptr [rbp + 0x30]
	mov	rbp, rbp
	mov	rbx, rax
	mov	rsp, rsp
	cmp	rbx, qword ptr [rbp + 0x10]
	lea	rdi, [rdi]
	jae	.label_779
	mov	r15, qword ptr [rbp]
	shl	rbx, 4
	nop	
	cmp	qword ptr [r15 + rbx], 0
	je	.label_783
	mov	rax, qword ptr [rbp + 0x48]
	nop	
	test	rax, rax
	je	.label_788
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp + 0x48], rcx
	jmp	.label_790
.label_783:
	nop	
	add	r15, rbx
	nop	
	mov	qword ptr [r15], r13
	nop	
	inc	qword ptr [rbp + 0x18]
	mov	rsp, rsp
	jmp	.label_778
.label_788:
	mov	edi, 0x10
	nop	
	call	malloc
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_784
.label_790:
	mov	qword ptr [rax], r13
	nop	
	mov	rcx, qword ptr [r15 + rbx + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + rbx + 8], rax
.label_778:
	mov	rbp, rbp
	mov	qword ptr [r14], 0
	nop	
	dec	qword ptr [r12 + 0x18]
.label_782:
	mov	rbp, rbp
	add	r14, 0x10
	mov	rbp, rbp
	cmp	r14, qword ptr [r12 + 8]
	jb	.label_780
	mov	al, 1
.label_786:
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
.label_784:
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_786
.label_781:
	call	abort
.label_779:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ba60

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
	je	.label_801
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
	jae	.label_801
	mov	rbx, qword ptr [r13]
	mov	rbp, rbp
	shl	rbp, 4
	mov	rbp, rbp
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	nop	
	test	rsi, rsi
	je	.label_806
	mov	rsp, rsp
	cmp	rsi, r14
	je	.label_813
	mov	rdi, r14
	nop	
	call	qword ptr [r13 + 0x38]
	test	al, al
	lea	rdi, [rdi]
	je	.label_816
	mov	rax, qword ptr [r12]
	lea	rdi, [rdi]
	jmp	.label_808
.label_813:
	mov	rax, r14
	jmp	.label_818
.label_816:
	mov	rax, qword ptr [rbx + rbp + 8]
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_806
	lea	rbp, [rbx + rbp + 8]
	nop	
.label_804:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	mov	rsp, rsp
	je	.label_795
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	mov	rsp, rsp
	test	al, al
	jne	.label_802
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_804
	nop	
	jmp	.label_806
.label_795:
	mov	rbp, rbp
	mov	rax, r14
	jmp	.label_808
.label_802:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp]
.label_808:
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_806
.label_818:
	lea	rdi, [rdi]
	xor	ebp, ebp
	test	r15, r15
	je	.label_796
	lea	rsi, [rsi]
	mov	qword ptr [r15], rax
	mov	rsp, rsp
	jmp	.label_796
.label_806:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsp, rsp
	mov	edx, eax
	and	edx, 1
	nop	
	test	rax, rax
	mov	rbp, rbp
	js	.label_807
	cvtsi2ss	xmm1, rax
	jmp	.label_794
.label_807:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	lea	rdi, [rdi]
	addss	xmm1, xmm1
.label_794:
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	edx, ecx
	and	edx, 1
	mov	rbp, rbp
	test	rcx, rcx
	mov	rbp, rbp
	js	.label_803
	cvtsi2ss	xmm0, rcx
	jmp	.label_812
.label_803:
	shr	rcx, 1
	or	rdx, rcx
	lea	rsi, [rsi]
	cvtsi2ss	xmm0, rdx
	lea	rdi, [rdi]
	addss	xmm0, xmm0
.label_812:
	lea	rdi, [rdi]
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm1, xmm3
	nop	
	jbe	.label_793
	nop	
	mov	ecx, OFFSET FLAT:default_tuning
	mov	rsp, rsp
	cmp	rax, rcx
	mov	rbp, rbp
	je	.label_821
	ucomiss	xmm2,  dword ptr [dword ptr [rip + label_732]]
	jbe	.label_799
	nop	
	movss	xmm3,  dword ptr [dword ptr [rip + label_730]]
	ucomiss	xmm3, xmm2
	jbe	.label_799
	mov	rbp, rbp
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_739]]
	jbe	.label_799
	movss	xmm3, dword ptr [rax]
	lea	rsi, [rsi]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	lea	rdi, [rdi]
	jb	.label_799
	addss	xmm3,  dword ptr [dword ptr [rip + label_732]]
	ucomiss	xmm2, xmm3
	jbe	.label_799
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5,  dword ptr [dword ptr [rip + label_738]]
	ucomiss	xmm5, xmm4
	mov	rbp, rbp
	jb	.label_799
	lea	rsi, [rsi]
	ucomiss	xmm4, xmm3
	lea	rsi, [rsi]
	ja	.label_811
.label_799:
	mov	qword ptr [word ptr [r13 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	lea	rdi, [rdi]
	movss	xmm2,  dword ptr [dword ptr [rip + label_810]]
	jmp	.label_811
.label_821:
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:default_tuning
.label_811:
	movaps	xmm3, xmm2
	mov	rsp, rsp
	mulss	xmm3, xmm0
	lea	rsi, [rsi]
	ucomiss	xmm1, xmm3
	jbe	.label_793
	nop	
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rbp, rbp
	jne	.label_805
	mov	rbp, rbp
	mulss	xmm0, xmm2
.label_805:
	lea	rsi, [rsi]
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_729]]
	mov	rsp, rsp
	jae	.label_796
	nop	
	movss	xmm1,  dword ptr [dword ptr [rip + label_728]]
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
	je	.label_796
	mov	rsi, qword ptr [r13 + 0x10]
	nop	
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	lea	rsi, [rsi]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_801
	nop	
	mov	r15, qword ptr [r13]
	mov	rsp, rsp
	shl	rbp, 4
	mov	rbp, rbp
	lea	r12, [r15 + rbp]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + rbp]
	test	rsi, rsi
	je	.label_793
	cmp	rsi, r14
	mov	rbp, rbp
	mov	rax, r14
	lea	rdi, [rdi]
	je	.label_815
	mov	rdi, r14
	mov	rbp, rbp
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_820
	mov	rbp, rbp
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	jmp	.label_815
.label_820:
	mov	rax, qword ptr [r15 + rbp + 8]
	nop	
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_793
	lea	rbp, [r15 + rbp + 8]
.label_809:
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	lea	rdi, [rdi]
	je	.label_800
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsp, rsp
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	mov	rsp, rsp
	test	al, al
	mov	rsp, rsp
	jne	.label_814
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 8]
	mov	rsp, rsp
	add	rbp, 8
	test	rax, rax
	mov	rsp, rsp
	jne	.label_809
	lea	rsi, [rsi]
	jmp	.label_793
.label_800:
	mov	rax, r14
	lea	rdi, [rdi]
	jmp	.label_815
.label_814:
	mov	rax, qword ptr [rbp]
.label_815:
	mov	rsp, rsp
	test	rax, rax
	jne	.label_817
.label_793:
	cmp	qword ptr [r12], 0
	je	.label_819
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	mov	rbp, rbp
	je	.label_822
	mov	rcx, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [r13 + 0x48], rcx
	nop	
	jmp	.label_792
.label_819:
	lea	rsi, [rsi]
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0,  xmmword ptr [word ptr [rip + label_797]]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	mov	rsp, rsp
	jmp	.label_798
.label_822:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_796
.label_792:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_798:
	lea	rdi, [rdi]
	mov	ebp, 1
.label_796:
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
.label_801:
	mov	rsp, rsp
	call	abort
.label_817:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bea0

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
	je	.label_823
	nop	
	test	ecx, ecx
	mov	rbp, rbp
	cmove	rbx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rax, rbx
.label_823:
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbx
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bef0

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
	jae	.label_826
	mov	rbp, rbp
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	nop	
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_827
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_831
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rsp, rsp
	test	al, al
	nop	
	je	.label_836
	mov	r14, qword ptr [r13]
.label_831:
	nop	
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_839
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
	jmp	.label_842
.label_836:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_827
	lea	rsi, [rsi]
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_838:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_830
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	mov	rsp, rsp
	jne	.label_833
	mov	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	lea	rsi, [rsi]
	jne	.label_838
	lea	rsi, [rsi]
	jmp	.label_827
.label_839:
	mov	qword ptr [r13], 0
	lea	rsi, [rsi]
	jmp	.label_842
.label_830:
	mov	rcx, rax
	jmp	.label_844
.label_833:
	mov	r14, qword ptr [rcx]
.label_844:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x48], rcx
.label_842:
	lea	rdi, [rdi]
	xor	r12d, r12d
	test	r14, r14
	je	.label_827
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	mov	rbp, rbp
	jne	.label_829
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_834
	mov	rsp, rsp
	cvtsi2ss	xmm1, rax
	jmp	.label_840
.label_834:
	shr	rax, 1
	mov	rsp, rsp
	or	rcx, rax
	mov	rsp, rsp
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_840:
	mov	rcx, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	nop	
	test	rcx, rcx
	js	.label_825
	cvtsi2ss	xmm0, rcx
	mov	rsp, rsp
	jmp	.label_828
.label_825:
	mov	rbp, rbp
	shr	rcx, 1
	or	rdx, rcx
	nop	
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_828:
	movaps	xmm3, xmm2
	nop	
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_829
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	lea	rsi, [rsi]
	je	.label_835
	lea	rdi, [rdi]
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_732]]
	nop	
	jbe	.label_824
	mov	rsp, rsp
	movss	xmm4,  dword ptr [dword ptr [rip + label_730]]
	ucomiss	xmm4, xmm3
	mov	rsp, rsp
	jbe	.label_824
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_824
	mov	rbp, rbp
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4,  dword ptr [dword ptr [rip + label_739]]
	jbe	.label_824
	lea	rsi, [rsi]
	movss	xmm4,  dword ptr [dword ptr [rip + label_732]]
	addss	xmm4, xmm2
	mov	rbp, rbp
	ucomiss	xmm3, xmm4
	jbe	.label_824
	movss	xmm3, dword ptr [rax + 4]
	nop	
	movss	xmm5,  dword ptr [dword ptr [rip + label_738]]
	nop	
	ucomiss	xmm5, xmm3
	jb	.label_824
	ucomiss	xmm3, xmm4
	ja	.label_832
.label_824:
	mov	qword ptr [word ptr [r15 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_832
.label_835:
	mov	eax, OFFSET FLAT:default_tuning
.label_832:
	mulss	xmm2, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm2, xmm1
	jbe	.label_829
	mulss	xmm0, dword ptr [rax + 4]
	mov	rbp, rbp
	cmp	byte ptr [rax + 0x10], 0
	mov	rsp, rsp
	jne	.label_843
	mulss	xmm0, dword ptr [rax + 8]
.label_843:
	movss	xmm1,  dword ptr [dword ptr [rip + label_728]]
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
	jne	.label_829
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_837
.label_841:
	nop	
	mov	rbx, qword ptr [rdi + 8]
	mov	rsp, rsp
	call	free
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	jne	.label_841
.label_837:
	nop	
	mov	qword ptr [r15 + 0x48], 0
.label_829:
	nop	
	mov	r12, r14
.label_827:
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
.label_826:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c240

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
	#Procedure 0x40c280

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c290

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
	jne	.label_845
	lea	rsi, [rsi]
	mov	dl, byte ptr [rdi + 0x1c]
	mov	rbp, rbp
	xor	dl, 1
	movzx	edx, dl
	mov	rbp, rbp
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_845:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c2e0

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	nop	
	cmp	byte ptr [rdi + 0x1c], 0
	lea	rdi, [rdi]
	jne	.label_846
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
	jne	.label_847
	lea	rsi, [rsi]
	mov	byte ptr [rdi + 0x1c], 1
	lea	rdi, [rdi]
	ret	
.label_847:
	add	ecx, 3
	and	ecx, 3
	lea	rsi, [rsi]
	mov	dword ptr [rdi + 0x14], ecx
	ret	
.label_846:
	push	rax
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c340

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
	je	.label_848
	nop	
	mov	rax, rcx
.label_848:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c380

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	nop	
	sub	rsp, 0xd8
	nop	
	test	al, al
	lea	rdi, [rdi]
	je	.label_849
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
.label_849:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	dl, 0x40
	je	.label_851
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
	ja	.label_852
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	mov	rbp, rbp
	mov	dword ptr [rsp], ecx
	jmp	.label_850
.label_852:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rcx
.label_850:
	mov	ecx, dword ptr [rax]
.label_851:
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
	#Procedure 0x40c480

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
	js	.label_853
	mov	rsp, rsp
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_854
	mov	dword ptr [r14], ebp
	mov	rsp, rsp
	jmp	.label_853
.label_854:
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
.label_853:
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
	#Procedure 0x40c500

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
	ja	.label_855
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
	jmp	.label_856
.label_855:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_856:
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
	#Procedure 0x40c570

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
	js	.label_857
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_859
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
	je	.label_857
.label_859:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_857
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_858
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_858:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_857:
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
	#Procedure 0x40c620

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
	je	.label_868
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
.label_868:
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
	ja	.label_880
	lea	rsi, [rsi]
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_875
	mov	eax, 0x514
	mov	rsp, rsp
	bt	eax, esi
	lea	rdi, [rdi]
	jb	.label_874
	mov	rsp, rsp
	test	esi, esi
	jne	.label_880
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	lea	rsi, [rsi]
	ja	.label_860
	lea	rdi, [rdi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_866
.label_880:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_873
	mov	ecx, 0x85
	mov	rbp, rbp
	bt	ecx, eax
	lea	rsi, [rsi]
	jb	.label_874
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_867
.label_875:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_872
.label_874:
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rsp, rsp
	cmp	rcx, 0x28
	nop	
	ja	.label_879
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_861
.label_879:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_861:
	mov	edx, dword ptr [rax]
.label_876:
	nop	
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
.label_872:
	mov	ebp, eax
.label_870:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_867:
	lea	rsi, [rsi]
	cmp	eax, 6
	jne	.label_873
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_878
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_877
.label_873:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_864
	mov	rax, rcx
	lea	rsi, [rsi]
	add	rax, qword ptr [rsp + 0xc0]
	nop	
	lea	ecx, [rcx + 8]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_869
.label_860:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_866:
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax]
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_876
.label_878:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_877:
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_865
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
	jns	.label_871
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_871
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
	js	.label_870
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	rsp, rsp
	mov	al, 1
	jmp	.label_862
.label_871:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_870
.label_864:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_869:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	nop	
	mov	edi, ebx
	lea	rdi, [rdi]
	call	fcntl
	nop	
	jmp	.label_872
.label_865:
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
.label_862:
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	je	.label_870
	test	ebp, ebp
	lea	rsi, [rsi]
	js	.label_870
	mov	esi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_863
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
	jne	.label_870
.label_863:
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
	jmp	.label_870
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c9f0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_881
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_881
	test	byte ptr [rbx + 1], 1
	je	.label_881
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_881:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ca30

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
	jne	.label_882
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_882
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_883
.label_882:
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
.label_883:
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
	je	.label_884
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_884:
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
	#Procedure 0x40cae0

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
	#Procedure 0x40cb00

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