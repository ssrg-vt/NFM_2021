	.section	.text
	.align	16
	#Procedure 0x401ad0

	.globl usage
	.type usage, @function
usage:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	push	rbx
	nop	
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_8
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	mov	rcx, rdx
	mov	rbp, rbp
	call	__printf_chk
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.2
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	rbp, rbp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.5
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.6
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.7
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.8
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.12
	mov	rsp, rsp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.14
	nop	
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	nop	
	mov	r8, rdx
	nop	
	call	__printf_chk
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	mov	rsp, rsp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi, rax
	mov	rbp, rbp
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	call	__printf_chk
	lea	rsi, [rsi]
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_7
	mov	esi, OFFSET FLAT:.str.39
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	mov	rsp, rsp
	test	eax, eax
	je	.label_7
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	mov	rsp, rsp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_7:
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.41
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.15
	xor	eax, eax
	nop	
	call	__printf_chk
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.15
	mov	ecx, OFFSET FLAT:.str.43
	xor	eax, eax
	mov	rsp, rsp
	call	__printf_chk
	mov	edi, ebp
	mov	rbp, rbp
	call	exit
.label_8:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	lea	rsi, [rsi]
	mov	esi, 1
	nop	
	xor	eax, eax
	nop	
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x401eb0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	mov	rsp, rsp
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0xe8
	mov	r13, rsi
	mov	ebp, edi
	mov	dword ptr [rsp + 0x14], 0xffffffff
	mov	dword ptr [rsp + 0x10], 0xffffffff
	mov	dword ptr [rsp + 0x24], 0xffffffff
	mov	dword ptr [rsp + 0x54], 0xffffffff
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r13]
	call	set_program_name
	lea	rsi, [rsi]
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	call	setlocale
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.17_0
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.18_0
	mov	rsp, rsp
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.17_0
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	mov	rsp, rsp
	call	atexit
	lea	rdi, [rsp + 0x28]
	call	chopt_init
	mov	rsp, rsp
	mov	r15d, 0x10
	mov	r12d, 0xffffffff
.label_1030:
	lea	rsi, [rsi]
	xor	r14d, r14d
	lea	rsi, [rsi]
	jmp	.label_14
.label_35:
	nop	
	mov	dword ptr [rsp + 0x28], 1
	nop	dword ptr [rax]
.label_14:
	mov	edx, OFFSET FLAT:.str.19
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r13
	call	getopt_long
	cmp	eax, 0x65
	jg	.label_20
	cmp	eax, 0x4f
	jg	.label_21
	cmp	eax, 0x47
	mov	rbp, rbp
	jle	.label_22
	mov	r15d, 0x11
	lea	rsi, [rsi]
	cmp	eax, 0x48
	je	.label_14
	cmp	eax, 0x4c
	jne	.label_10
	mov	rsp, rsp
	mov	r15d, 2
	jmp	.label_14
	nop	
.label_20:
	lea	ecx, [rax - 0x76]
	cmp	ecx, 0xe
	ja	.label_29
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_31]]
.label_1027:
	mov	dword ptr [rsp + 0x28], 0
	jmp	.label_14
	nop	dword ptr [rax]
.label_21:
	cmp	eax, 0x50
	je	.label_34
	lea	rsi, [rsi]
	cmp	eax, 0x52
	mov	rsp, rsp
	je	.label_16
	cmp	eax, 0x63
	lea	rsi, [rsi]
	je	.label_35
	jmp	.label_10
.label_29:
	cmp	eax, 0x66
	lea	rsi, [rsi]
	je	.label_9
	cmp	eax, 0x68
	jne	.label_10
	xor	r12d, r12d
	jmp	.label_14
.label_34:
	mov	r15d, 0x10
	mov	rsp, rsp
	jmp	.label_14
.label_16:
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x2c], 1
	mov	rsp, rsp
	jmp	.label_14
.label_1028:
	mov	rbp, rbp
	mov	r12d, 1
	jmp	.label_14
.label_1029:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rdi, [rdi]
	xor	ecx, ecx
	xor	r8d, r8d
	nop	
	lea	rsi, [rsp + 0x24]
	lea	rdx, [rsp + 0x54]
	lea	rsi, [rsi]
	call	parse_user_spec
	mov	rbx, rax
	test	rbx, rbx
	je	.label_14
	jmp	.label_19
.label_1031:
	mov	r14b, 1
	jmp	.label_14
.label_1032:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + reference_file]],  rax
	jmp	.label_14
.label_9:
	mov	byte ptr [rsp + 0x39], 1
	jmp	.label_14
.label_22:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], r14
	cmp	eax, -1
	jne	.label_26
	mov	r14d, 0x10
	nop	
	cmp	byte ptr [rsp + 0x2c], 0
	lea	rdi, [rdi]
	je	.label_28
	cmp	r15d, 0x10
	lea	rdi, [rdi]
	jne	.label_30
	lea	rdi, [rdi]
	cmp	r12d, 1
	lea	rsi, [rsi]
	mov	r12d, 0
	lea	rdi, [rdi]
	jne	.label_28
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.24
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rbp, rbp
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_30:
	lea	rsi, [rsi]
	mov	r14d, r15d
.label_28:
	lea	rdi, [rdi]
	test	r12d, r12d
	setne	byte ptr [rsp + 0x38]
	lea	rdi, [rdi]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rsp, rsp
	mov	ecx, ebp
	sub	ecx, eax
	mov	rsi,  qword ptr [word ptr [rip + reference_file]]
	cmp	rsi, 1
	lea	rsi, [rsi]
	mov	edx, 1
	adc	edx, 0
	mov	rbp, rbp
	cmp	ecx, edx
	jl	.label_25
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_15
	lea	rdx, [rsp + 0x58]
	mov	edi, 1
	call	__xstat
	test	eax, eax
	mov	rsp, rsp
	jne	.label_17
	mov	edi, dword ptr [rsp + 0x74]
	mov	dword ptr [rsp + 0x14], edi
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x78]
	mov	dword ptr [rsp + 0x10], eax
	call	uid_to_name
	mov	qword ptr [rsp + 0x40], rax
	mov	edi, dword ptr [rsp + 0x78]
	mov	rbp, rbp
	call	gid_to_name
	nop	
	mov	qword ptr [rsp + 0x48], rax
	jmp	.label_23
.label_15:
	mov	rsp, rsp
	mov	rdi, qword ptr [r13 + rax*8]
	lea	rcx, [rsp + 0x40]
	nop	
	lea	r8, [rsp + 0x48]
	lea	rsi, [rsp + 0x14]
	nop	
	lea	rdx, [rsp + 0x10]
	call	parse_user_spec
	mov	rbx, rax
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rsi, [rsi]
	jne	.label_32
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x40], 0
	jne	.label_33
	mov	rax, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	test	rax, rax
	mov	rsp, rsp
	je	.label_33
	mov	edi, OFFSET FLAT:.str_1
	call	xstrdup
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x40], rax
.label_33:
	inc	dword ptr [dword ptr [rip + optind]]
.label_23:
	mov	rax, qword ptr [rsp + 0x18]
	test	al, al
	mov	rbp, rbp
	je	.label_11
	mov	al, byte ptr [rsp + 0x2c]
	test	al, al
	nop	
	je	.label_11
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:main.dev_ino_buf
	mov	rsp, rsp
	call	get_root_dev_ino
	mov	qword ptr [rsp + 0x30], rax
	test	rax, rax
	je	.label_12
.label_11:
	mov	rsp, rsp
	or	r14d, 0x400
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	nop	
	lea	rdi, [r13 + rax*8]
	mov	rbp, rbp
	mov	edx, dword ptr [rsp + 0x14]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rsp + 0x10]
	mov	r8d, dword ptr [rsp + 0x24]
	mov	r9d, dword ptr [rsp + 0x54]
	lea	rax, [rsp + 0x28]
	mov	qword ptr [rsp], rax
	mov	esi, r14d
	call	chown_files
	movzx	eax, al
	mov	rbp, rbp
	xor	eax, 1
	mov	rsp, rsp
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	nop	
	ret	
.label_26:
	cmp	eax, 0xffffff7d
	je	.label_27
	mov	rsp, rsp
	cmp	eax, 0xffffff7e
	jne	.label_10
	xor	edi, edi
	call	usage
.label_27:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, OFFSET FLAT:.str.17
	lea	rsi, [rsi]
	mov	r8d, OFFSET FLAT:.str.22
	mov	r9d, OFFSET FLAT:.str.23
	xor	eax, eax
	call	version_etc
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	call	exit
.label_10:
	mov	rsp, rsp
	mov	edi, 1
	call	usage
.label_25:
	xor	edi, edi
	cmp	eax, ebp
	jge	.label_13
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rbx, rax
	movsxd	rax, ebp
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r13 + rax*8 - 8]
	lea	rdi, [rdi]
	call	quote
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rbx
	mov	rbp, rbp
	call	error
	mov	edi, 1
	call	usage
.label_19:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	jmp	.label_18
.label_17:
	mov	rsp, rsp
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	nop	
	mov	rsi,  qword ptr [word ptr [rip + reference_file]]
	mov	edi, 4
	mov	rbp, rbp
	jmp	.label_24
.label_12:
	lea	rsi, [rsi]
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:.str_0
.label_24:
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_13:
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.25
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	rdx, rcx
	nop	
	call	error
	mov	edi, 1
	call	usage
.label_32:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r13 + rax*8]
.label_18:
	nop	
	call	quote
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rsp, rsp
	mov	edi, 1
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.1_0
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	rcx, rbx
	mov	r8, rbp
	lea	rdi, [rdi]
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402480

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
	#Procedure 0x4024b0
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
	#Procedure 0x4024d0

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
	je	.label_36
	mov	rdi, qword ptr [rax]
	lea	rdi, [rdi]
	jmp	.label_37
.label_36:
	lea	rdi, [rdi]
	mov	edi, ebx
	mov	rbp, rbp
	lea	rsi, [rsp]
	call	umaxtostr
	mov	rdi, rax
.label_37:
	call	xstrdup
	lea	rdi, [rdi]
	add	rsp, 0x20
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402520

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
	je	.label_38
	mov	rdi, qword ptr [rax]
	mov	rbp, rbp
	jmp	.label_39
.label_38:
	lea	rsi, [rsi]
	mov	edi, ebx
	nop	
	lea	rsi, [rsp]
	lea	rdi, [rdi]
	call	umaxtostr
	mov	rdi, rax
.label_39:
	call	xstrdup
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402570

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
	je	.label_108
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xa0], r8d
	jmp	.label_104
.label_108:
	mov	dword ptr [rsp + 0xa0], r8d
	cmp	byte ptr [r15 + 0x10], 0
	jne	.label_104
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	dword ptr [r15], 2
	jne	.label_104
	mov	eax, 8
.label_104:
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
	je	.label_43
	mov	bl, 1
	jmp	.label_45
.label_98:
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.19_0
.label_82:
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
	jmp	.label_122
.label_109:
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
	jmp	.label_59
	nop	word ptr [rax + rax]
.label_45:
	mov	r10, qword ptr [r13 + 0x30]
	mov	rbp, qword ptr [r13 + 0x38]
	movzx	eax, word ptr [r13 + 0x70]
	dec	eax
	lea	rsi, [rsi]
	cmp	eax, 9
	mov	rsp, rsp
	ja	.label_78
	jmp	qword ptr [word ptr [+ (rax * 8) + label_77]]
.label_1020:
	cmp	byte ptr [r15 + 4], 0
	je	.label_78
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	mov	r12b, 1
	test	rax, rax
	je	.label_47
	mov	rcx, qword ptr [r13 + 0x80]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rax]
	lea	rsi, [rsi]
	jne	.label_47
	mov	rcx, qword ptr [r13 + 0x78]
	nop	
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_47
	movzx	eax, byte ptr [rbp]
	lea	rdi, [rdi]
	cmp	eax, 0x2f
	mov	rbp, rbp
	jne	.label_89
	cmp	byte ptr [rbp + 1], 0
	je	.label_92
.label_89:
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
	mov	edx, OFFSET FLAT:.str_0
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
	jmp	.label_120
.label_1021:
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
	je	.label_78
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
	jmp	.label_47
.label_1022:
	mov	qword ptr [rsp + 0x160], rbp
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x14f], bl
	nop	
	mov	r14b, 1
	xor	ebp, ebp
	lea	rdi, [rdi]
	cmp	byte ptr [r15 + 0x11], 0
	jne	.label_48
	mov	r12d, dword ptr [r13 + 0x40]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
	jmp	.label_57
.label_1023:
	mov	r12b, 1
	cmp	byte ptr [r15 + 4], 0
	je	.label_47
.label_78:
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0xa4], -1
	mov	rsp, rsp
	jne	.label_63
	cmp	dword ptr [r15], 2
	jne	.label_63
	lea	rsi, [rsi]
	cmp	qword ptr [r15 + 8], 0
	je	.label_66
	nop	word ptr cs:[rax + rax]
.label_63:
	lea	rsi, [rsi]
	lea	rdx, [r13 + 0x78]
	cmp	byte ptr [r15 + 0x10], 0
	mov	rsp, rsp
	mov	r14d, dword ptr [rsp + 0xa0]
	lea	rdi, [rdi]
	jne	.label_118
	jmp	.label_40
.label_1024:
	nop	
	mov	qword ptr [rsp + 0x160], rbp
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x14f], bl
	mov	r14b, 1
	xor	ebp, ebp
	cmp	byte ptr [r15 + 0x11], 0
	jne	.label_48
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
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	esi, ebp
	jmp	.label_87
.label_1025:
	mov	rsp, rsp
	cmp	qword ptr [r13 + 0x58], 0
	jne	.label_95
	nop	
	cmp	qword ptr [r13 + 0x20], 0
	je	.label_97
.label_95:
	mov	qword ptr [rsp + 0x160], rbp
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x14f], bl
	mov	rsp, rsp
	mov	r14b, 1
	lea	rdi, [rdi]
	xor	ebp, ebp
	cmp	byte ptr [r15 + 0x11], 0
	mov	rbp, rbp
	je	.label_101
.label_48:
	lea	rdi, [rdi]
	xor	ebx, ebx
	lea	rsi, [rsi]
	xor	r12d, r12d
	lea	rsi, [rsi]
	jmp	.label_69
.label_101:
	mov	r12d, dword ptr [r13 + 0x40]
	lea	rsi, [rsi]
	xor	ebx, ebx
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6_0
.label_57:
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
.label_87:
	mov	rsp, rsp
	call	error
	xor	ebp, ebp
	xor	r12d, r12d
	lea	rdi, [rdi]
	jmp	.label_69
.label_66:
	lea	rdx, [r13 + 0x78]
	cmp	byte ptr [r15 + 0x10], 0
	mov	sil, 1
	mov	rsp, rsp
	mov	r14d, dword ptr [rsp + 0xa0]
	mov	rsp, rsp
	je	.label_74
.label_118:
	mov	eax, dword ptr [r13 + 0x90]
	mov	rsp, rsp
	mov	ecx, 0xf000
	and	eax, ecx
	mov	rbp, rbp
	cmp	eax, 0xa000
	jne	.label_40
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
	je	.label_40
	mov	byte ptr [rsp + 0x14f], bl
	mov	dword ptr [rsp + 0xa0], r14d
	mov	r14b, 1
	cmp	byte ptr [r15 + 0x11], 0
	je	.label_62
	lea	rsi, [rsi]
	xor	ebp, ebp
	lea	rsi, [rsi]
	jmp	.label_68
	nop	word ptr [rax + rax]
.label_40:
	cmp	r14d, -1
	mov	rbp, rbp
	je	.label_123
	mov	eax, dword ptr [rdx + 0x1c]
	mov	rsp, rsp
	cmp	eax, r14d
	sete	sil
	lea	rdi, [rdi]
	cmp	dword ptr [rsp + 0x94], -1
	lea	rdi, [rdi]
	je	.label_74
	cmp	eax, r14d
	mov	rsp, rsp
	je	.label_79
	lea	rdi, [rdi]
	jmp	.label_74
.label_123:
	mov	sil, 1
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x94], -1
	je	.label_74
.label_79:
	nop	
	mov	eax, dword ptr [rsp + 0x94]
	nop	
	cmp	dword ptr [rdx + 0x20], eax
	sete	sil
.label_74:
	movzx	eax, word ptr [r13 + 0x70]
	lea	rsi, [rsi]
	cmp	eax, 6
	ja	.label_85
	mov	rbp, rbp
	mov	ecx, 0x56
	bt	ecx, eax
	jae	.label_85
	mov	rax, qword ptr [r15 + 8]
	test	rax, rax
	je	.label_85
	mov	rcx, qword ptr [rdx + 8]
	nop	
	cmp	rcx, qword ptr [rax]
	jne	.label_85
	nop	
	mov	rcx, qword ptr [rdx]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_85
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp]
	lea	rsi, [rsi]
	cmp	eax, 0x2f
	lea	rsi, [rsi]
	jne	.label_102
	lea	rdi, [rdi]
	cmp	byte ptr [rbp + 1], 0
	mov	rbp, rbp
	je	.label_105
.label_102:
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
	mov	edx, OFFSET FLAT:.str_0
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
	jmp	.label_119
	nop	word ptr cs:[rax + rax]
.label_85:
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x14f], bl
	lea	rdi, [rdi]
	test	sil, sil
	je	.label_41
	mov	dword ptr [rsp + 0xa0], r14d
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x170]
	mov	rsp, rsp
	mov	r14d, dword ptr [rax + 0x2c]
	cmp	byte ptr [r15 + 0x10], 0
	mov	rsp, rsp
	je	.label_42
	nop	
	cmp	dword ptr [rsp + 0xa4], -1
	je	.label_49
	mov	eax, dword ptr [rdx + 0x18]
	nop	
	mov	ecx, 0xf000
	and	eax, ecx
	lea	rdi, [rdi]
	mov	r12d, 0x900
	cmp	eax, 0x8000
	je	.label_115
	lea	rsi, [rsi]
	cmp	eax, 0x4000
	jne	.label_49
	mov	r12d, 0x10900
.label_115:
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
	jns	.label_71
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	r15, rax
	nop	
	mov	eax, dword ptr [r15]
	cmp	eax, 0xd
	jne	.label_75
	mov	ecx, dword ptr [rbx + 0x18]
	mov	eax, 0xf000
	mov	rsp, rsp
	and	ecx, eax
	mov	eax, 0xd
	cmp	ecx, 0x8000
	jne	.label_75
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
	js	.label_88
.label_71:
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
	je	.label_100
	mov	rsp, rsp
	mov	r12d, dword ptr [rsp + 0xa0]
	lea	rsi, [rsi]
	jmp	.label_50
.label_41:
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
	jmp	.label_69
.label_42:
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
	je	.label_114
	mov	rbp, rbp
	call	__errno_location
	cmp	dword ptr [rax], 0x5f
	setne	r14b
	mov	al, 1
	mov	rsp, rsp
	je	.label_116
	mov	al, r12b
.label_116:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x160], rbp
	mov	r12b, al
	jmp	.label_44
.label_49:
	mov	rbp, rbp
	mov	byte ptr [rsp + 0xa8], sil
	mov	rbx, rdx
.label_86:
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
	jmp	.label_44
.label_62:
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
.label_68:
	nop	
	lea	rbx, [rsp]
	xor	r12d, r12d
	jmp	.label_69
.label_97:
	mov	qword ptr [r13 + 0x20], 1
	mov	edx, 1
	nop	
	mov	rdi, r14
	mov	rsi, r13
	call	rpl_fts_set
	lea	rdi, [rdi]
	mov	r12b, 1
	jmp	.label_47
.label_114:
	mov	qword ptr [rsp + 0x160], rbp
.label_44:
	test	r12b, 1
	jne	.label_80
	jmp	.label_81
.label_100:
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
	je	.label_90
	cmp	dword ptr [rsp + 0xcc], r12d
	nop	
	jne	.label_50
.label_90:
	mov	rbp, rbp
	cmp	dword ptr [rsp + 0x94], -1
	lea	rsi, [rsi]
	je	.label_96
	mov	eax, dword ptr [rsp + 0x94]
	lea	rdi, [rdi]
	cmp	dword ptr [rsp + 0xd0], eax
	mov	rsp, rsp
	jne	.label_50
.label_96:
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
	je	.label_109
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
	jmp	.label_59
.label_105:
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
.label_119:
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
	jmp	.label_47
.label_92:
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
.label_120:
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
	jmp	.label_47
.label_88:
	lea	rdi, [rdi]
	mov	eax, dword ptr [r15]
.label_75:
	nop	
	mov	qword ptr [rsp + 0x160], rbp
	cmp	eax, 0xd
	setne	al
	lea	rdi, [rdi]
	movzx	eax, al
	mov	rbp, rbp
	add	eax, 5
	mov	r12d, dword ptr [rsp + 0xa0]
.label_59:
	mov	dword ptr [rsp + 0xa0], r12d
	mov	rbp, rbp
	add	eax, -2
	lea	rdi, [rdi]
	cmp	eax, 4
	nop	
	mov	r15, qword ptr [rsp + 0x1b0]
	mov	rbp, rbp
	ja	.label_94
	mov	rbp, rbp
	mov	r14b, 1
	xor	r12d, r12d
	lea	rdi, [rdi]
	xor	ebp, ebp
	mov	r10, qword ptr [rsp + 0x150]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_103]]
.label_963:
	mov	r14b, 1
	mov	rbp, rbp
	mov	al, byte ptr [rsp + 0xa8]
	mov	bpl, al
	mov	r12b, 1
	jmp	.label_69
.label_81:
	cmp	byte ptr [r15 + 0x11], 0
	lea	rsi, [rsi]
	jne	.label_80
	call	__errno_location
	cmp	dword ptr [rsp + 0x148], -1
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x150], eax
	nop	
	je	.label_110
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_0
	jmp	.label_113
.label_110:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.12_0
.label_113:
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rax
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x160]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x160], rsi
	mov	rsp, rsp
	mov	edi, 4
	mov	rsp, rsp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, dword ptr [rsp + 0x150]
	nop	
	mov	rdx, rbp
	mov	rsp, rsp
	call	error
.label_80:
	mov	al, byte ptr [rsp + 0xa8]
	mov	bpl, al
	nop	word ptr cs:[rax + rax]
.label_69:
	mov	rbp, rbp
	mov	rdx, qword ptr [r15]
	nop	
	mov	rax, rdx
	mov	rbp, rbp
	shr	rax, 0x20
	cmp	edx, 2
	mov	rsp, rsp
	je	.label_46
	mov	rbp, rbp
	mov	cl, r12b
	and	cl, 1
	test	bpl, bpl
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rsi, [rsi]
	je	.label_53
	mov	bl, r12b
	lea	rsi, [rsi]
	and	bl, r14b
	mov	rsp, rsp
	je	.label_53
	cmp	dword ptr [rsp + 0x148], -1
	lea	rdi, [rdi]
	je	.label_60
	mov	esi, dword ptr [rsp + 0x148]
	lea	rsi, [rsi]
	cmp	dword ptr [rdi + 0x1c], esi
	lea	rdi, [rdi]
	jne	.label_64
.label_60:
	cmp	dword ptr [rsp + 0x16c], -1
	je	.label_53
	nop	
	mov	esi, dword ptr [rsp + 0x16c]
	cmp	dword ptr [rdi + 0x20], esi
	jne	.label_64
	nop	dword ptr [rax + rax]
.label_53:
	test	edx, edx
	jne	.label_46
	test	cl, cl
	mov	rsp, rsp
	movzx	eax, r14b
	nop	
	lea	r14d, [rax + rax*2 + 1]
	lea	rdi, [rdi]
	mov	eax, 3
	cmove	r14d, eax
	test	rdi, rdi
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa8], rax
	lea	rsi, [rsi]
	mov	eax, 0
	mov	qword ptr [rsp + 0x150], rax
	jne	.label_73
	jmp	.label_83
.label_64:
	lea	rdi, [rdi]
	movzx	r14d, r14b
	inc	r14d
	mov	rsp, rsp
	test	cl, cl
	mov	eax, 3
	lea	rsi, [rsi]
	cmove	r14d, eax
.label_73:
	mov	ebx, dword ptr [rdi + 0x1c]
	mov	rbp, rdi
	mov	edi, ebx
	lea	rdi, [rdi]
	call	getpwuid
	test	rax, rax
	je	.label_91
	mov	rdi, qword ptr [rax]
	mov	rsp, rsp
	jmp	.label_93
.label_91:
	nop	
	mov	rdi, rbx
	lea	rsi, [rsp + 0xb0]
	call	umaxtostr
	mov	rdi, rax
.label_93:
	call	xstrdup
	mov	qword ptr [rsp + 0xa8], rax
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rbp + 0x20]
	mov	rbp, rbp
	mov	edi, ebx
	lea	rdi, [rdi]
	call	getgrgid
	test	rax, rax
	je	.label_106
	mov	rbp, rbp
	mov	rdi, qword ptr [rax]
	jmp	.label_107
.label_106:
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0xb0]
	lea	rsi, [rsi]
	call	umaxtostr
	lea	rsi, [rsi]
	mov	rdi, rax
.label_107:
	nop	
	call	xstrdup
	nop	
	mov	qword ptr [rsp + 0x150], rax
.label_83:
	cmp	r14d, 1
	jne	.label_111
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.13_0
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x160]
	nop	
	call	quotearg_style
	mov	rcx, rax
	mov	rsp, rsp
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	__printf_chk
	jmp	.label_121
.label_111:
	mov	rbx, qword ptr [r15 + 0x18]
	mov	rbp, qword ptr [r15 + 0x20]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, rbp
	lea	rdi, [rdi]
	call	user_group_str
	mov	qword ptr [rsp + 0x98], rax
	test	rbx, rbx
	mov	rdi, qword ptr [rsp + 0xa8]
	cmove	rdi, rbx
	mov	rbp, rbp
	test	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x150]
	mov	rsp, rsp
	cmove	rsi, rbp
	lea	rsi, [rsi]
	call	user_group_str
	cmp	r14d, 4
	je	.label_51
	cmp	r14d, 3
	je	.label_54
	mov	rbp, rbp
	cmp	r14d, 2
	jne	.label_55
	lea	rsi, [rsi]
	mov	r14, rax
	xor	edi, edi
	test	rbx, rbx
	je	.label_58
	nop	
	mov	esi, OFFSET FLAT:.str.14_0
	jmp	.label_65
.label_51:
	mov	r14, rax
	xor	edi, edi
	mov	rbp, rbp
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_61
	mov	esi, OFFSET FLAT:.str.22_0
	nop	
	jmp	.label_65
.label_54:
	test	rax, rax
	mov	rsp, rsp
	je	.label_67
	mov	r14, rax
	mov	rsp, rsp
	xor	edi, edi
	test	rbx, rbx
	je	.label_112
	mov	esi, OFFSET FLAT:.str.17_1
	jmp	.label_65
.label_58:
	lea	rdi, [rdi]
	test	rbp, rbp
	mov	rsp, rsp
	je	.label_72
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.15_0
	jmp	.label_65
.label_61:
	lea	rsi, [rsi]
	test	rbp, rbp
	nop	
	je	.label_76
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.23_0
	jmp	.label_65
.label_67:
	lea	rdi, [rdi]
	xor	edi, edi
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_99
	mov	esi, OFFSET FLAT:.str.20
	mov	rbp, rbp
	jmp	.label_82
.label_112:
	test	rbp, rbp
	mov	rbp, rbp
	je	.label_84
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.18_1
	jmp	.label_65
.label_964:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x170]
	mov	r14d, dword ptr [rax + 0x2c]
	mov	rbp, qword ptr [rsp + 0x160]
	jmp	.label_86
.label_72:
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.16
	lea	rsi, [rsi]
	jmp	.label_65
.label_76:
	mov	esi, OFFSET FLAT:.str.24_0
	jmp	.label_65
.label_99:
	lea	rsi, [rsi]
	test	rbp, rbp
	je	.label_98
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.21
	jmp	.label_82
.label_84:
	mov	esi, OFFSET FLAT:.str.19_0
.label_65:
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x160]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x98]
.label_122:
	mov	rsp, rsp
	mov	edi, 4
	call	quotearg_style
	nop	
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	mov	rbx, r14
	mov	rbp, rbp
	mov	rcx, rbx
	mov	r8, rbp
	mov	rsp, rsp
	call	__printf_chk
	mov	rdi, rbx
	nop	
	call	free
	mov	rdi, rbp
	call	free
.label_121:
	mov	rdi, qword ptr [rsp + 0xa8]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x150]
	mov	rbp, rbp
	call	free
	mov	al, byte ptr [r15 + 4]
.label_46:
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0x170]
	jne	.label_117
	lea	rsi, [rsi]
	mov	edx, 4
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r13
	mov	rsp, rsp
	call	rpl_fts_set
.label_117:
	lea	rdi, [rdi]
	and	r12b, 1
	mov	bl, byte ptr [rsp + 0x14f]
.label_47:
	and	r12b, bl
	lea	rsi, [rsi]
	mov	rdi, r14
	call	rpl_fts_read
	mov	r13, rax
	mov	rbp, rbp
	test	r13, r13
	mov	bl, r12b
	jne	.label_45
.label_43:
	lea	rsi, [rsi]
	mov	rbp, r14
	call	__errno_location
	mov	r14, rax
	lea	rsi, [rsi]
	mov	ebx, dword ptr [r14]
	test	ebx, ebx
	mov	rbp, rbp
	je	.label_52
	cmp	byte ptr [r15 + 0x11], 0
	mov	rbp, rbp
	je	.label_56
	xor	r12d, r12d
	jmp	.label_52
.label_56:
	xor	r12d, r12d
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	mov	rsp, rsp
	call	error
.label_52:
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	rpl_fts_close
	test	eax, eax
	je	.label_70
	mov	ebx, dword ptr [r14]
	xor	r12d, r12d
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_1
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_70:
	mov	al, r12b
	add	rsp, 0x178
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	nop	
	ret	
.label_55:
	call	abort
.label_94:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x403710

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
	je	.label_124
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
	jmp	.label_125
.label_127:
	mov	rbp, rbp
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_124:
	lea	rdi, [rdi]
	mov	rdi, rbx
.label_125:
	pop	rbx
	pop	r14
	pop	r15
	jmp	xstrdup
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4037b0
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
	#Procedure 0x4037c0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037d0

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
	je	.label_129
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_128
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_128
.label_129:
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
.label_128:
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
	jne	.label_130
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
.label_131:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_130:
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_0
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
	#Procedure 0x4038d0

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	lea	rdi, [rdi]
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	dword ptr [rax + rax]
.label_132:
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
	ja	.label_132
	mov	rax, rsi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403930

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
	je	.label_133
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
	jl	.label_135
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_135
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
	jne	.label_134
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_134:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_135:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_133:
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
	#Procedure 0x403a20
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
	#Procedure 0x403a70
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
	#Procedure 0x403a90
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
	#Procedure 0x403ab0
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
	#Procedure 0x403b20
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
	#Procedure 0x403b40
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
	je	.label_136
	test	rdx, rdx
	nop	
	je	.label_136
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_136:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403b80
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
	#Procedure 0x403c30

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
	sub	rsp, 0xf8
	mov	ebx, r9d
	nop	
	mov	dword ptr [rsp + 0x24], ebx
	mov	r12d, r8d
	mov	r15, rcx
	mov	qword ptr [rsp + 0xe0], rdx
	mov	rbp, rbp
	mov	r13, rsi
	mov	qword ptr [rsp + 0xb8], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x140]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x138]
	mov	qword ptr [rsp + 0x18], rax
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xa8], rax
	mov	dl, bl
	mov	rbp, rbp
	shr	dl, 1
	mov	rbp, rbp
	and	dl, 1
	nop	
	mov	eax, ebx
	and	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x94], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x5c], ebx
	mov	rsp, rsp
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xa0], rax
	mov	eax, 0
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xc8], rcx
.label_192:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r12d
	lea	rsi, [rsi]
	cmp	r12d, 0xa
	lea	rdi, [rdi]
	ja	.label_214
	mov	r9d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	r10, r15
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_219]]
.label_1046:
	mov	r15d, edi
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.11_1
	nop	
	mov	esi, r12d
	mov	r14, r10
	nop	
	mov	r13b, r8b
	mov	bl, dl
	mov	rbp, rbp
	call	gettext_quote
	mov	qword ptr [rsp + 0x18], rax
	mov	edi, OFFSET FLAT:.str.12_1
	mov	rsp, rsp
	mov	esi, r12d
	call	gettext_quote
	mov	rsp, rsp
	mov	dl, bl
	mov	rsp, rsp
	mov	edi, r15d
	mov	r8b, r13b
	mov	r10, r14
	nop	
	mov	qword ptr [rsp + 0x98], rax
.label_1047:
	nop	
	mov	qword ptr [rsp + 0xd8], r10
	mov	byte ptr [rsp + 0xf7], r8b
	mov	dword ptr [rsp + 0x38], edi
	test	dl, 1
	mov	rbp, rbp
	mov	r15b, dl
	mov	rbp, rbp
	mov	r14d, 0
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	jne	.label_243
	mov	al, byte ptr [rdx]
	test	al, al
	mov	r14d, 0
	je	.label_243
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_264:
	mov	rsp, rsp
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_257
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_257:
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + r14 + 1]
	mov	rsp, rsp
	inc	r14
	test	al, al
	mov	rbp, rbp
	jne	.label_264
.label_243:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x98]
	nop	
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	strlen
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa0], rax
	mov	rbp, rbp
	mov	r9d, r12d
	mov	qword ptr [rsp + 0x68], rbx
	mov	r13b, 1
	mov	rbp, rbp
	mov	sil, r15b
	mov	r10, qword ptr [rsp + 0xd8]
	nop	
	mov	r8b, byte ptr [rsp + 0xf7]
	mov	edi, dword ptr [rsp + 0x38]
	mov	r11, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	jmp	.label_148
.label_1039:
	xor	r9d, r9d
	xor	r14d, r14d
	mov	rbp, rbp
	mov	r13b, al
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_148
.label_1042:
	lea	rsi, [rsi]
	mov	al, 1
.label_1040:
	lea	rsi, [rsi]
	mov	dl, 1
.label_1043:
	nop	
	test	dl, 1
	lea	rsi, [rsi]
	mov	cl, 1
	mov	rbp, rbp
	je	.label_174
	mov	rbp, rbp
	mov	cl, al
.label_174:
	mov	al, cl
.label_1041:
	nop	
	mov	r9d, 2
	lea	rsi, [rsi]
	test	dl, 1
	mov	rsp, rsp
	jne	.label_180
	test	rbp, rbp
	je	.label_186
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx], 0x27
	mov	r14d, 1
	lea	rdi, [rdi]
	jmp	.label_187
.label_180:
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_187
.label_1044:
	mov	rsp, rsp
	mov	r9d, 5
	test	dl, 1
	jne	.label_196
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_202
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x22
	mov	r14d, 1
	jmp	.label_205
.label_1045:
	mov	r13b, 1
	mov	rsp, rsp
	mov	r9d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:.str.10_1
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xa0], rax
	mov	sil, 1
	lea	rsi, [rsi]
	jmp	.label_148
.label_186:
	mov	r14d, 1
	nop	word ptr cs:[rax + rax]
.label_187:
	mov	ecx, OFFSET FLAT:.str.12_1
	mov	qword ptr [rsp + 0x68], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xa0], rcx
	nop	
	mov	r13b, al
	nop	
	mov	sil, dl
	jmp	.label_148
.label_196:
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_205
.label_202:
	nop	
	mov	r14d, 1
.label_205:
	mov	eax, OFFSET FLAT:.str.10_1
	mov	qword ptr [rsp + 0x68], rax
	mov	rbp, rbp
	mov	eax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa0], rax
	lea	rdi, [rdi]
	mov	r13b, 1
	mov	sil, dl
	nop	word ptr cs:[rax + rax]
.label_148:
	mov	qword ptr [rsp + 0x28], rsi
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x46], r13b
	cmp	qword ptr [rsp + 0x130], 0
	mov	rbp, rbp
	setne	r12b
	mov	rbp, rbp
	cmp	r9d, 2
	nop	
	setne	r15b
	sete	al
	mov	cl, r13b
	mov	rsp, rsp
	and	cl, 1
	mov	byte ptr [rsp + 0x37], cl
	lea	rsi, [rsi]
	sete	byte ptr [rsp + 0xf6]
	mov	bl, r15b
	and	bl, cl
	mov	byte ptr [rsp + 0x83], bl
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0xa0], 0
	lea	rsi, [rsi]
	setne	cl
	mov	dl, cl
	lea	rsi, [rsi]
	and	dl, bl
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x56], dl
	mov	rbp, rbp
	mov	bl, sil
	and	bl, 1
	mov	byte ptr [rsp + 0xc6], bl
	sete	dl
	lea	rdi, [rdi]
	and	al, bl
	mov	byte ptr [rsp + 0x47], al
	and	r12b, bl
	mov	byte ptr [rsp + 0x57], r12b
	mov	rsp, rsp
	or	dl, r15b
	mov	byte ptr [rsp + 0xc7], dl
	and	r13b, sil
	mov	rbp, rbp
	and	r13b, cl
	mov	byte ptr [rsp + 0xb7], r13b
	mov	rsp, rsp
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_245
	nop	dword ptr [rax]
.label_240:
	mov	rsp, rsp
	inc	r15
.label_245:
	lea	rdi, [rdi]
	cmp	r10, -1
	lea	rsi, [rsi]
	je	.label_166
	cmp	r15, r10
	jne	.label_169
	jmp	.label_195
	nop	dword ptr [rax]
.label_166:
	mov	rcx, -1
	nop	
	cmp	byte ptr [r11 + r15], 0
	mov	rsp, rsp
	je	.label_172
.label_169:
	cmp	byte ptr [rsp + 0x56], 0
	nop	
	je	.label_239
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rbx, [r15 + rax]
	mov	qword ptr [rsp + 0x88], r15
	lea	rsi, [rsi]
	cmp	rax, 2
	jb	.label_182
	lea	rdi, [rdi]
	cmp	r10, -1
	nop	
	jne	.label_182
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	rdi, r11
	mov	r12b, r8b
	mov	r13, r9
	mov	r15, r14
	lea	rsi, [rsi]
	mov	r14, r11
	nop	
	call	strlen
	mov	rbp, rbp
	mov	r11, r14
	mov	r14, r15
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0x38]
	mov	r9, r13
	mov	r8b, r12b
	mov	r10, rax
.label_182:
	mov	rsp, rsp
	cmp	rbx, r10
	lea	rdi, [rdi]
	jbe	.label_211
	mov	dword ptr [rsp + 0x84], 0
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	jmp	.label_213
	nop	dword ptr [rax]
.label_239:
	nop	
	mov	dword ptr [rsp + 0x84], 0
	lea	rsi, [rsi]
	jmp	.label_213
	nop	word ptr cs:[rax + rax]
.label_211:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], r14
	mov	r15d, edi
	lea	rdi, [rdi]
	mov	r13, r9
	mov	rsp, rsp
	mov	r12b, r8b
	lea	rsi, [rsi]
	mov	rbx, r10
	mov	rax, qword ptr [rsp + 0x88]
	lea	rdi, [r11 + rax]
	nop	
	mov	r14, r11
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xa0]
	call	memcmp
	lea	rsi, [rsi]
	test	eax, eax
	sete	al
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x84], eax
	mov	rsp, rsp
	jne	.label_242
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xc6], 0
	mov	rsp, rsp
	mov	r10, rbx
	nop	
	mov	r8b, r12b
	lea	rsi, [rsi]
	mov	r9, r13
	nop	
	mov	edi, r15d
	mov	rbp, rbp
	mov	r11, r14
	mov	r14, qword ptr [rsp + 0x38]
	nop	
	mov	r15, qword ptr [rsp + 0x88]
	je	.label_213
	jmp	.label_175
.label_242:
	mov	r10, rbx
	mov	r8b, r12b
	mov	r9, r13
	mov	edi, r15d
	lea	rsi, [rsi]
	mov	r11, r14
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x38]
	mov	r15, qword ptr [rsp + 0x88]
	nop	dword ptr [rax + rax]
.label_213:
	movzx	r12d, byte ptr [r11 + r15]
	cmp	r12, 0x7e
	ja	.label_140
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	r13b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	rsp, rsp
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_146]]
.label_1013:
	test	r15, r15
	jne	.label_155
	jmp	.label_157
.label_1017:
	xor	eax, eax
	cmp	r10, -1
	je	.label_159
	test	r15, r15
	jne	.label_141
	nop	
	cmp	r10, 1
	je	.label_157
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_143
.label_1006:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0x37], 0
	mov	rbp, rbp
	je	.label_170
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_175
	nop	
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_183
	nop	
	mov	al, dil
	nop	
	and	al, 1
	jne	.label_183
	cmp	r14, rbp
	jae	.label_185
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_185:
	nop	
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_176
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x24
.label_176:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_200
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_200:
	nop	
	add	r14, 3
	lea	rdi, [rdi]
	mov	dil, 1
.label_183:
	mov	rcx, r14
	nop	
	cmp	rcx, rbp
	mov	rsp, rsp
	jae	.label_209
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x5c
.label_209:
	lea	r14, [rcx + 1]
	mov	rbp, rbp
	mov	al, 1
	mov	r12b, 0x30
	cmp	r9d, 2
	je	.label_215
	lea	rdx, [r15 + 1]
	cmp	rdx, r10
	jae	.label_221
	nop	
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	mov	rbp, rbp
	movzx	edx, dl
	cmp	edx, 9
	mov	rbp, rbp
	ja	.label_223
	mov	rsp, rsp
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_230
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rdx + r14], 0x30
.label_230:
	nop	
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_235
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + rdx], 0x30
.label_235:
	add	rcx, 3
	xor	r13d, r13d
	lea	rdi, [rdi]
	mov	r14, rcx
	jmp	.label_143
.label_1007:
	mov	bl, 0x62
	nop	
	jmp	.label_246
.label_1008:
	mov	rsp, rsp
	mov	cl, 0x74
	lea	rsi, [rsi]
	jmp	.label_138
.label_1009:
	mov	bl, 0x76
	mov	rbp, rbp
	jmp	.label_246
.label_1010:
	lea	rdi, [rdi]
	mov	bl, 0x66
	jmp	.label_246
.label_1011:
	mov	cl, 0x72
	lea	rdi, [rdi]
	jmp	.label_138
.label_1014:
	nop	
	mov	al, 1
	mov	qword ptr [rsp + 0xc8], rax
	cmp	r9d, 2
	jne	.label_212
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_261
	nop	
	test	rbp, rbp
	sete	al
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rdx, rcx
	mov	rsp, rsp
	test	rdx, rdx
	setne	cl
	lea	rsi, [rsi]
	or	cl, al
	mov	rbp, rbp
	cmove	rdx, rbp
	mov	qword ptr [rsp + 0x48], rdx
	mov	rsp, rsp
	mov	eax, 0
	cmove	rbp, rax
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_265
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_265:
	lea	rax, [r14 + 1]
	lea	rdi, [rdi]
	cmp	rax, rbp
	jae	.label_158
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x5c
.label_158:
	lea	rdi, [rdi]
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_160
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_160:
	mov	rbp, rbp
	add	r14, 3
	lea	rdi, [rdi]
	xor	edi, edi
.label_212:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	r13b, 1
	jmp	.label_143
.label_1015:
	lea	rdi, [rdi]
	cmp	r9d, 5
	je	.label_179
	mov	rbp, rbp
	cmp	r9d, 2
	jne	.label_155
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_155
	nop	
	jmp	.label_191
.label_1016:
	mov	rsp, rsp
	cmp	r9d, 2
	nop	
	jne	.label_194
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_198
	jmp	.label_203
.label_140:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	qword ptr [rsp + 0xd0], r9
	mov	byte ptr [rsp + 0xf7], r8b
	mov	qword ptr [rsp + 0x78], rbp
	cmp	qword ptr [rsp + 0xa8], 1
	lea	rsi, [rsi]
	jne	.label_237
	mov	rbp, rbp
	mov	rbx, r10
	mov	rbp, r11
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	r11, rbp
	nop	
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r12*2]
	shr	r13d, 0xe
	mov	rsp, rsp
	and	r13b, 1
	lea	rdi, [rdi]
	mov	edx, 1
	lea	rsi, [rsi]
	jmp	.label_208
.label_159:
	lea	rdi, [rdi]
	test	r15, r15
	jne	.label_228
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_228
.label_157:
	mov	dl, 1
.label_1012:
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_233
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r13b, dl
	lea	rdi, [rdi]
	jmp	.label_143
.label_170:
	cmp	dword ptr [rsp + 0x94], 0
	mov	rsp, rsp
	jne	.label_240
	jmp	.label_155
.label_194:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	cl, r12b
	je	.label_138
.label_198:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_231
.label_138:
	cmp	byte ptr [rsp + 0xc7], 0
	mov	rbp, rbp
	mov	bl, cl
	je	.label_251
.label_246:
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x37], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_143
	jmp	.label_255
.label_237:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], 0
	lea	rsi, [rsi]
	cmp	r10, -1
	lea	rbp, [rsp + 0x70]
	jne	.label_259
	mov	rdi, r11
	mov	rbx, r11
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	r11, rbx
	mov	r10, rax
.label_259:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd8], r10
	nop	
	mov	r13b, 1
	nop	
	cmp	byte ptr [rsp + 0x47], 0
	lea	rsi, [rsi]
	mov	edx, 0
	je	.label_142
	lea	rax, [r11 + r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe8], rax
	lea	rsi, [rsi]
	mov	r13b, 1
	nop	
	xor	edx, edx
.label_227:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x88], rdx
	lea	rax, [rdx + r15]
	lea	rsi, [r11 + rax]
	mov	rsp, rsp
	mov	rdx, r10
	lea	rsi, [rsi]
	sub	rdx, rax
	lea	rdi, [rsp + 0x58]
	mov	rcx, rbp
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	rbx, rax
	cmp	rbx, -2
	lea	rdi, [rdi]
	je	.label_171
	mov	rsp, rsp
	cmp	rbx, -1
	movabs	rsi, 0x20000002b
	je	.label_177
	test	rbx, rbx
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_252
	lea	rsi, [rsi]
	cmp	rbx, 2
	nop	
	mov	rbp, qword ptr [rsp + 0x78]
	jb	.label_189
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, qword ptr [rsp + 0xe8]
	lea	rdi, [rdi]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax + rax]
.label_153:
	nop	
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	mov	rbp, rbp
	cmp	edx, 0x21
	mov	rbp, rbp
	ja	.label_207
	lea	rsi, [rsi]
	bt	rsi, rdx
	nop	
	jb	.label_210
.label_207:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbx
	jb	.label_153
.label_189:
	mov	edi, dword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_218
	mov	rbp, rbp
	xor	r13d, r13d
.label_218:
	lea	rbp, [rsp + 0x70]
	nop	
	mov	rax, qword ptr [rsp + 0x88]
	lea	rdi, [rdi]
	add	rax, rbx
	mov	rdi, rbp
	nop	
	mov	rbx, rax
	call	mbsinit
	mov	rdx, rbx
	test	eax, eax
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	je	.label_227
	jmp	.label_154
	nop	
.label_142:
	mov	qword ptr [rsp + 0x88], rdx
	lea	rax, [rdx + r15]
	lea	rsi, [rsi]
	lea	rsi, [r11 + rax]
	mov	rdx, r10
	lea	rdi, [rdi]
	sub	rdx, rax
	mov	rsp, rsp
	lea	rdi, [rsp + 0x58]
	lea	rsi, [rsi]
	mov	rcx, rbp
	mov	rbp, rbp
	mov	rbx, rbp
	call	rpl_mbrtowc
	mov	rbp, rax
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_249
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_177
	mov	rbp, rbp
	cmp	rbp, -2
	mov	rsp, rsp
	je	.label_171
	mov	edi, dword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	call	iswprint
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_262
	xor	r13d, r13d
.label_262:
	nop	
	mov	rax, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	add	rax, rbp
	mov	rsp, rsp
	mov	rbp, rbx
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rbx, rax
	lea	rdi, [rdi]
	call	mbsinit
	mov	rdx, rbx
	test	eax, eax
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_142
	lea	rsi, [rsi]
	jmp	.label_154
.label_228:
	lea	rdi, [rdi]
	mov	r10, -1
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_143
.label_179:
	cmp	dword ptr [rsp + 0x5c], 0
	lea	rdi, [rdi]
	je	.label_155
	lea	rcx, [r15 + 2]
	cmp	rcx, r10
	jae	.label_155
	movzx	eax, byte ptr [r15 + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_155
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	nop	
	cmp	edx, 0x3e
	lea	rdi, [rdi]
	ja	.label_173
	movabs	rsi, 0x7000a38200000000
	mov	rbp, rbp
	bt	rsi, rdx
	lea	rsi, [rsi]
	jae	.label_178
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_151
	lea	rdi, [rdi]
	cmp	r14, rbp
	jae	.label_190
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x3f
.label_190:
	mov	rsp, rsp
	lea	rax, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rax, rbp
	jae	.label_197
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x22
.label_197:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_222
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rax], 0x22
.label_222:
	nop	
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_167
	nop	
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x3f
.label_167:
	add	r14, 4
	xor	eax, eax
	nop	
	mov	r15, rcx
	mov	rsp, rsp
	mov	r12b, dl
	mov	rsp, rsp
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_143
.label_155:
	mov	rbp, rbp
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_143:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x83], 0
	je	.label_248
	cmp	qword ptr [rsp + 0x130], 0
	jne	.label_229
	nop	
	jmp	.label_168
	nop	dword ptr [rax + rax]
.label_248:
	cmp	byte ptr [rsp + 0x57], 0
	lea	rdi, [rdi]
	je	.label_168
.label_229:
	lea	rdi, [rdi]
	mov	cl, r12b
	lea	rdi, [rdi]
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	lea	rsi, [rsi]
	mov	cl, r12b
	shl	esi, cl
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
	jne	.label_236
	mov	rcx, qword ptr [rsp + 0x130]
	and	esi, dword ptr [rcx + rdx*4]
	mov	rbp, rbp
	jmp	.label_256
	nop	word ptr cs:[rax + rax]
.label_168:
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
.label_256:
	mov	bl, r12b
	je	.label_231
	jmp	.label_255
.label_236:
	mov	bl, r12b
.label_255:
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_175
	cmp	r9d, 2
	jne	.label_258
	mov	al, dil
	and	al, 1
	jne	.label_258
	lea	rdi, [rdi]
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_263
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_263:
	nop	
	lea	rax, [r14 + 1]
	mov	rsp, rsp
	cmp	rax, rbp
	jae	.label_139
	mov	rcx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_139:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_149
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_149:
	mov	rsp, rsp
	add	r14, 3
	mov	dil, 1
.label_258:
	mov	rbp, rbp
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_156
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_156:
	mov	rbp, rbp
	inc	r14
	jmp	.label_164
.label_141:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_143
.label_215:
	xor	r13d, r13d
	jmp	.label_143
.label_221:
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_143
.label_223:
	mov	rsp, rsp
	xor	r13d, r13d
	jmp	.label_143
.label_177:
	xor	r13d, r13d
.label_249:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	jmp	.label_154
.label_171:
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x88]
	lea	rax, [rdx + r15]
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	cmp	rax, r10
	mov	r11, qword ptr [rsp + 0xe0]
	jae	.label_188
	lea	rax, [r11 + r15]
.label_206:
	mov	rbp, rbp
	cmp	byte ptr [rax + rdx], 0
	mov	rbp, rbp
	je	.label_199
	lea	rcx, [r15 + rdx + 1]
	inc	rdx
	cmp	rcx, r10
	lea	rdi, [rdi]
	jb	.label_206
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_154
.label_188:
	xor	r13d, r13d
	jmp	.label_154
.label_199:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_154
.label_252:
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0x88]
.label_154:
	mov	rbp, rbp
	mov	rbx, r10
.label_208:
	mov	rsp, rsp
	and	r13b, 1
	lea	rdi, [rdi]
	mov	cl, r13b
	lea	rdi, [rdi]
	or	cl, byte ptr [rsp + 0xf6]
	cmp	rdx, 1
	mov	rbp, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	mov	r8b, byte ptr [rsp + 0xf7]
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0xd0]
	mov	edi, dword ptr [rsp + 0x38]
	ja	.label_234
	test	cl, cl
	je	.label_234
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_143
.label_234:
	mov	rsp, rsp
	add	rdx, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x88], rdx
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_238
	nop	dword ptr [rax]
.label_232:
	nop	
	inc	r14
	mov	rbp, rbp
	mov	r12b, byte ptr [r11 + r15 + 1]
	nop	
	mov	r15, rdx
.label_238:
	mov	rsp, rsp
	test	cl, cl
	je	.label_147
	mov	edx, dword ptr [rsp + 0x84]
	test	dl, 1
	lea	rsi, [rsi]
	je	.label_250
	cmp	r14, rbp
	jae	.label_254
	nop	
	mov	rdx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + r14], 0x5c
.label_254:
	inc	r14
	mov	dword ptr [rsp + 0x84], 0
.label_250:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_260
	nop	dword ptr [rax + rax]
.label_147:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_137
	cmp	r9d, 2
	mov	rsp, rsp
	mov	r10, rbx
	jne	.label_144
	mov	rsp, rsp
	mov	al, dil
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_144
	lea	rsi, [rsi]
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_150
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_150:
	lea	rax, [r14 + 1]
	nop	
	cmp	rax, rbp
	jae	.label_244
	mov	rdx, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_244:
	lea	rax, [r14 + 2]
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_163
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdx + rax], 0x27
.label_163:
	lea	rsi, [rsi]
	add	r14, 3
	mov	rsp, rsp
	mov	dil, 1
.label_144:
	cmp	r14, rbp
	jae	.label_247
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_247:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_181
	mov	dl, r12b
	lea	rdi, [rdi]
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], dl
.label_181:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	mov	rsp, rsp
	jae	.label_226
	mov	dl, r12b
	shr	dl, 3
	and	dl, 7
	nop	
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rsi + rax], dl
.label_226:
	nop	
	add	r14, 3
	mov	rsp, rsp
	and	r12b, 7
	or	r12b, 0x30
	mov	rbp, rbp
	mov	al, 1
.label_260:
	lea	rdx, [r15 + 1]
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x88], rdx
	lea	rsi, [rsi]
	jbe	.label_231
	mov	rbp, rbp
	test	dil, 1
	lea	rsi, [rsi]
	je	.label_162
	lea	rsi, [rsi]
	mov	bl, al
	and	bl, 1
	jne	.label_162
	nop	
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_201
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + r14], 0x27
.label_201:
	lea	rsi, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rsi, rbp
	jae	.label_161
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdi + rsi], 0x27
.label_161:
	add	r14, 2
	mov	rsp, rsp
	xor	edi, edi
.label_162:
	nop	
	mov	rbx, r10
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_232
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + r14], r12b
	jmp	.label_232
	nop	word ptr cs:[rax + rax]
.label_231:
	test	dil, 1
	je	.label_241
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_241
	nop	
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_253
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_253:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_145
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_145:
	lea	rdi, [rdi]
	add	r14, 2
	nop	
	xor	edi, edi
.label_241:
	lea	rsi, [rsi]
	mov	bl, r12b
.label_164:
	cmp	r14, rbp
	jae	.label_225
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + r14], bl
.label_225:
	inc	r14
	lea	rsi, [rsi]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	lea	rsi, [rsi]
	mov	r8b, r13b
	jmp	.label_240
.label_173:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_143
.label_178:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_143
	nop	word ptr [rax + rax]
.label_195:
	nop	
	mov	rcx, r15
.label_172:
	mov	rbp, rbp
	cmp	r9d, 2
	nop	
	setne	al
	mov	rbp, rbp
	test	r14, r14
	mov	rsp, rsp
	setne	dl
	cmp	byte ptr [rsp + 0xc6], 0
	lea	rsi, [rsi]
	je	.label_152
	mov	rsp, rsp
	or	al, dl
	je	.label_193
.label_152:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe0], r11
	cmp	r9d, 2
	nop	
	setne	al
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x46]
	nop	
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	je	.label_165
	mov	rsp, rsp
	or	al, dl
	jne	.label_165
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rdi, [rdi]
	jne	.label_184
	cmp	qword ptr [rsp + 0x48], 0
	mov	rsp, rsp
	je	.label_165
	mov	rbp, rbp
	test	rbp, rbp
	mov	rbp, rbp
	mov	r12d, r9d
	mov	al, bl
	mov	r15, rcx
	lea	rsi, [rsi]
	mov	dl, sil
	mov	r13, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	je	.label_192
.label_165:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x68]
	test	rdx, rdx
	je	.label_204
	nop	
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_204
	mov	rsp, rsp
	mov	al, byte ptr [rdx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_204
	mov	rbp, rbp
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_220:
	cmp	r14, rbp
	jae	.label_216
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_216:
	mov	rbp, rbp
	inc	r14
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	lea	rsi, [rsi]
	test	al, al
	jne	.label_220
.label_204:
	cmp	r14, rbp
	jae	.label_224
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + r14], 0
	jmp	.label_224
.label_233:
	lea	rdi, [rdi]
	mov	r9d, 2
	jmp	.label_175
.label_210:
	mov	r9d, 2
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	jmp	.label_175
.label_137:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_175
.label_193:
	lea	rdi, [rdi]
	mov	r10, rcx
	mov	rsp, rsp
	jmp	.label_175
.label_251:
	nop	
	mov	r9d, 2
.label_175:
	cmp	byte ptr [rsp + 0x37], 0
	mov	r8d, 4
	mov	rbp, rbp
	cmove	r8d, r9d
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x24]
	lea	rdi, [rdi]
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	nop	
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], 0
	nop	
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	rsi, rbp
	lea	rdi, [rdi]
	mov	rdx, r11
	nop	
	mov	rcx, r10
.label_217:
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	r14, rax
.label_224:
	lea	rdi, [rdi]
	mov	rax, r14
	lea	rdi, [rdi]
	add	rsp, 0xf8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
.label_184:
	mov	rax, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x130]
	nop	
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x24]
	jmp	.label_217
.label_261:
	mov	r9d, 2
	jmp	.label_175
.label_203:
	nop	
	mov	r9d, 2
	mov	rsp, rsp
	jmp	.label_175
.label_191:
	mov	r9d, 2
	mov	rbp, rbp
	jmp	.label_175
.label_151:
	mov	r9d, 5
	nop	
	jmp	.label_175
.label_214:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050d0
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
	#Procedure 0x405210
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
	je	.label_266
	mov	qword ptr [rax], rbx
.label_266:
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
	#Procedure 0x405360
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_267
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_271:
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
	jl	.label_271
.label_267:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_270
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_268]], OFFSET FLAT:slot0
.label_270:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_269
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_269:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405420
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x405430

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
	js	.label_278
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_273
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_276
.label_273:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_274
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
	jne	.label_277
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_277:
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
.label_276:
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
	ja	.label_275
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
	je	.label_272
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_272:
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
.label_275:
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
.label_278:
	lea	rdi, [rdi]
	call	abort
.label_274:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x4056a0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4056b0
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
	#Procedure 0x4056e0
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
	#Procedure 0x405710

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
	je	.label_279
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
.label_279:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4057a0
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
	je	.label_280
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
.label_280:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405840

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
	je	.label_281
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
.label_281:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4058d0
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
	je	.label_282
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
.label_282:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405940
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_283]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_284]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_285]]
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
	#Procedure 0x4059e0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_283]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_284]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_285]]
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
	#Procedure 0x405a80

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_283]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_284]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_285]]
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
	#Procedure 0x405af0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_283]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_284]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_285]]
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
	#Procedure 0x405b60

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
	je	.label_286
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
.label_286:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405c40
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_283]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_284]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_285]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_287
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_287
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
.label_287:
	nop	
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405cd0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_283]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_284]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_285]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_288
	test	rdx, rdx
	je	.label_288
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
.label_288:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d60
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_283]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_284]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_285]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_289
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_289
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
.label_289:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e00
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_283]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_284]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_285]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_290
	test	rsi, rsi
	je	.label_290
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
.label_290:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ea0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405eb0
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
	#Procedure 0x405ed0
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
	#Procedure 0x405ef0

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
	#Procedure 0x405f20

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
	jne	.label_292
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_294
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_293
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_293
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_293
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_293
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_293
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_293
	nop	
	mov	eax, OFFSET FLAT:.str.14_1
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_292
	mov	eax, OFFSET FLAT:.str.15_1
	jmp	.label_292
.label_294:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_293
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_293
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_293
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_293
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_293
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_293
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_291
.label_293:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_1
	mov	eax, OFFSET FLAT:.str.12_1
	cmove	rax, rcx
.label_292:
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
	je	.label_292
	mov	eax, OFFSET FLAT:.str.18_2
	jmp	.label_292
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406090

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
	mov	esi, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	call	__lxstat
	mov	ecx, eax
	lea	rdi, [rdi]
	xor	eax, eax
	test	ecx, ecx
	jne	.label_295
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 8], rax
	mov	rsp, rsp
	mov	rax, rbx
.label_295:
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4060f0

	.globl parse_user_spec
	.type parse_user_spec, @function
parse_user_spec:
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rbp, rbp
	push	rax
	nop	
	mov	rbp, r8
	mov	r15, rcx
	mov	rbx, rdx
	mov	r12, rsi
	mov	r13, rdi
	xor	r14d, r14d
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_298
	mov	esi, 0x3a
	mov	rdi, r13
	mov	rsp, rsp
	call	strchr
	nop	
	mov	r14, rax
.label_298:
	mov	rsp, rsp
	mov	rdi, r13
	mov	rbp, rbp
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, r12
	lea	rdi, [rdi]
	mov	rcx, rbx
	mov	r8, r15
	mov	rbp, rbp
	mov	r9, rbp
	mov	qword ptr [rsp], rbp
	lea	rdi, [rdi]
	call	parse_with_separator
	mov	rbp, rbp
	mov	rbp, rax
	test	rbx, rbx
	je	.label_296
	test	r14, r14
	jne	.label_296
	nop	
	test	rbp, rbp
	nop	
	je	.label_296
	lea	rdi, [rdi]
	mov	esi, 0x2e
	lea	rdi, [rdi]
	mov	rdi, r13
	call	strchr
	test	rax, rax
	je	.label_296
	mov	rdi, r13
	nop	
	mov	rsi, rax
	mov	rdx, r12
	lea	rsi, [rsi]
	mov	rcx, rbx
	mov	r8, r15
	nop	
	mov	r9, qword ptr [rsp]
	call	parse_with_separator
	test	rax, rax
	cmovne	rax, rbp
	jmp	.label_297
.label_296:
	mov	rax, rbp
.label_297:
	add	rsp, 8
	pop	rbx
	nop	
	pop	r12
	mov	rbp, rbp
	pop	r13
	nop	
	pop	r14
	nop	
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4061e0

	.globl parse_with_separator
	.type parse_with_separator, @function
parse_with_separator:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	push	r12
	nop	
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x58
	mov	r14, r8
	mov	rbp, rcx
	mov	rsp, rsp
	mov	r15, rsi
	mov	rbp, rbp
	mov	eax, dword ptr [rdx]
	lea	rdi, [rdi]
	mov	ebx, 0xffffffff
	nop	
	test	rbp, rbp
	je	.label_324
	nop	
	mov	ebx, dword ptr [rbp]
.label_324:
	test	r14, r14
	je	.label_308
	lea	rdi, [rdi]
	mov	qword ptr [r14], 0
.label_308:
	lea	rsi, [rsi]
	test	r9, r9
	je	.label_311
	mov	qword ptr [r9], 0
.label_311:
	test	r15, r15
	je	.label_314
	mov	rsp, rsp
	mov	r12, rbx
	mov	qword ptr [rsp + 0x50], rax
	mov	qword ptr [rsp + 8], rdx
	mov	qword ptr [rsp + 0x10], r9
	xor	r13d, r13d
	lea	rsi, [rsi]
	mov	rbx, r15
	sub	rbx, rdi
	mov	rbp, rbp
	je	.label_315
	lea	rsi, [rbx + 1]
	lea	rsi, [rsi]
	call	xmemdup
	mov	r13, rax
	mov	byte ptr [r13 + rbx], 0
.label_315:
	xor	ebx, ebx
	lea	rdi, [rdi]
	cmp	byte ptr [r15 + 1], 0
	mov	qword ptr [rsp + 0x20], r12
	nop	
	je	.label_302
	lea	rdi, [rdi]
	lea	rbx, [r15 + 1]
	jmp	.label_302
.label_314:
	xor	r12d, r12d
	cmp	byte ptr [rdi], 0
	lea	rdi, [rdi]
	je	.label_305
	mov	qword ptr [rsp + 0x20], rbx
	mov	qword ptr [rsp + 0x50], rax
	mov	qword ptr [rsp + 8], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], r9
	call	xstrdup
	lea	rsi, [rsi]
	mov	r13, rax
	lea	rsi, [rsi]
	xor	ebx, ebx
.label_302:
	mov	rsp, rsp
	xor	r12d, r12d
	lea	rdi, [rdi]
	test	r13, r13
	je	.label_317
	movzx	eax, byte ptr [r13]
	cmp	eax, 0x2b
	lea	rsi, [rsi]
	je	.label_323
	mov	rbp, rbp
	mov	rdi, r13
	lea	rdi, [rdi]
	call	getpwnam
	mov	rsp, rsp
	test	rax, rax
	je	.label_323
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	xor	r12d, r12d
	mov	rsp, rsp
	test	r15, r15
	je	.label_299
	mov	r15, rbx
	mov	rsp, rsp
	test	r15, r15
	mov	rsp, rsp
	jne	.label_306
	mov	rbx, rax
	mov	qword ptr [rsp + 0x50], rax
	lea	rsi, [rsi]
	shr	rbx, 0x20
	mov	edi, ebx
	mov	rbp, rbp
	call	getgrgid
	nop	
	test	rax, rax
	je	.label_316
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], r14
	mov	rdi, qword ptr [rax]
	jmp	.label_318
.label_323:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rbp
	mov	qword ptr [rsp + 0x18], r14
	mov	r14d, OFFSET FLAT:.str.2_1
	lea	rdi, [rdi]
	xor	r12d, r12d
	lea	rdi, [rdi]
	test	r15, r15
	mov	rsp, rsp
	mov	r15, rbx
	nop	
	je	.label_303
	test	r15, r15
	nop	
	jne	.label_303
	mov	rbx, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	jmp	.label_300
.label_317:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rbp
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], r14
	xor	r13d, r13d
	xor	r14d, r14d
	mov	r15, rbx
	nop	
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	jmp	.label_320
.label_303:
	mov	rsp, rsp
	lea	rcx, [rsp + 0x30]
	nop	
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edx, 0xa
	lea	rsi, [rsi]
	mov	r8d, OFFSET FLAT:.str_1
	mov	rdi, r13
	lea	rdi, [rdi]
	call	xstrtoul
	test	eax, eax
	jne	.label_326
	mov	rax, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	rcx, rax
	shr	rcx, 0x20
	jne	.label_326
	mov	rsp, rsp
	xor	r14d, r14d
	cmp	eax, -1
	jne	.label_310
.label_326:
	mov	r14d, OFFSET FLAT:.str_6
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x50]
.label_310:
	nop	
	xor	r12d, r12d
	mov	qword ptr [rsp + 0x50], rax
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x20]
	nop	
	jmp	.label_300
.label_305:
	mov	qword ptr [rsp + 0x50], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rdx
	mov	rsp, rsp
	xor	r13d, r13d
	jmp	.label_312
.label_299:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], rax
	nop	
	mov	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], r14
	lea	rdi, [rdi]
	xor	r14d, r14d
	mov	rsp, rsp
	mov	r15, rbx
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_300
.label_306:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], rax
	mov	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], r14
	xor	r14d, r14d
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x20]
	nop	
	jmp	.label_300
.label_316:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rbp
	mov	qword ptr [rsp + 0x18], r14
	nop	
	lea	rsi, [rsp + 0x30]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	umaxtostr
	mov	rdi, rax
.label_318:
	call	xstrdup
	mov	rbp, rbp
	mov	r12, rax
	call	endgrent
	lea	rsi, [rsi]
	xor	r14d, r14d
.label_300:
	call	endpwent
.label_320:
	mov	rsp, rsp
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_322
	test	r14, r14
	mov	rbp, rbp
	jne	.label_322
	movzx	eax, byte ptr [r15]
	mov	rbp, rbp
	cmp	eax, 0x2b
	mov	rsp, rsp
	je	.label_325
	nop	
	mov	rdi, r15
	mov	rbp, rbp
	call	getgrnam
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_325
	mov	ebx, dword ptr [rax + 0x10]
	lea	rsi, [rsi]
	xor	r14d, r14d
	lea	rdi, [rdi]
	jmp	.label_307
.label_325:
	lea	rsi, [rsi]
	mov	rbp, rbx
	mov	rbp, rbp
	lea	rcx, [rsp + 0x30]
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_1
	mov	rdi, r15
	mov	rbp, rbp
	call	xstrtoul
	nop	
	test	eax, eax
	jne	.label_321
	nop	
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rax, rbx
	mov	rbp, rbp
	shr	rax, 0x20
	lea	rsi, [rsi]
	jne	.label_321
	lea	rdi, [rdi]
	xor	r14d, r14d
	cmp	ebx, -1
	jne	.label_307
.label_321:
	mov	r14d, OFFSET FLAT:.str.1_3
	mov	ebx, ebp
.label_307:
	nop	
	call	endgrent
	mov	rdi, r15
	call	xstrdup
	mov	r12, rax
.label_322:
	nop	
	mov	r9, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_304
	mov	rbp, rbp
	xor	ebx, ebx
	jmp	.label_309
.label_304:
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rsp + 0x28]
.label_312:
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp + 0x50]
	mov	dword ptr [rax], ecx
	lea	rsi, [rsi]
	test	rbp, rbp
	je	.label_313
	lea	rsi, [rsi]
	mov	dword ptr [rbp], ebx
.label_313:
	mov	rbp, rbp
	test	r14, r14
	nop	
	je	.label_319
	lea	rdi, [rdi]
	mov	qword ptr [r14], r13
	xor	r13d, r13d
.label_319:
	mov	rbp, rbp
	mov	bl, 1
	xor	r14d, r14d
	test	r9, r9
	je	.label_309
	nop	
	mov	qword ptr [r9], r12
	xor	r14d, r14d
	xor	r12d, r12d
.label_309:
	mov	rdi, r13
	call	free
	mov	rdi, r12
	mov	rsp, rsp
	call	free
	xor	eax, eax
	lea	rdi, [rdi]
	test	bl, bl
	mov	rbp, rbp
	jne	.label_301
	xor	edi, edi
	mov	edx, 5
	mov	rsi, r14
	call	dcgettext
.label_301:
	add	rsp, 0x58
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406640

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
	je	.label_327
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_7
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_330
.label_327:
	mov	edx, OFFSET FLAT:.str.1_4
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_330:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_2
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
	ja	.label_331
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_332]]
.label_935:
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
.label_331:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_1
	jmp	.label_336
.label_936:
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
.label_937:
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
.label_938:
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
	jmp	.label_335
.label_939:
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
	jmp	.label_334
.label_940:
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
	jmp	.label_333
.label_941:
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
.label_333:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_334:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_335:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_329
.label_943:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_2
.label_336:
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
	jmp	.label_328
.label_942:
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
.label_328:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_329:
	mov	rbp, rbp
	call	__fprintf_chk
.label_934:
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
	#Procedure 0x406a30
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_337:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_337
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a60
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_341:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_338
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_339
	nop	word ptr cs:[rax + rax]
.label_338:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_339:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_340
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_341
.label_340:
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
	#Procedure 0x406af0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_342
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
.label_342:
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
.label_344:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_343
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_345
	nop	dword ptr [rax + rax]
.label_343:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_345:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_346
	inc	r9
	cmp	r9, 0xa
	jb	.label_344
.label_346:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c30
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
	mov	edx, OFFSET FLAT:.str.15_2
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
	#Procedure 0x406cc0
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
	jb	.label_347
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_348
	test	rax, rax
	je	.label_347
.label_348:
	nop	
	pop	rbx
	ret	
.label_347:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406d10

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_349
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_350
.label_349:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_350:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d40
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
	jb	.label_352
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_351
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_351
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_351:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_353
	test	rax, rax
	je	.label_352
.label_353:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_352:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406dc0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_354
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_354
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_354:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_355
	test	rax, rax
	nop	
	je	.label_356
.label_355:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_356:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406e10
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_361
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_357
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_363
.label_361:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_360
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_360:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_362
.label_363:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_359
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_359
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_359:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_358
	test	rax, rax
	mov	rbp, rbp
	je	.label_357
.label_358:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_357:
	call	xalloc_die
.label_362:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ef0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_365
	test	rax, rax
	mov	rbp, rbp
	je	.label_364
.label_365:
	pop	rbx
	ret	
.label_364:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406f10
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_369
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_370
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_368
	call	free
	xor	eax, eax
	jmp	.label_366
.label_369:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_367
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_368:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_366
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_367
.label_366:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_367:
	mov	rbp, rbp
	call	xalloc_die
.label_370:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406fa0
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
	je	.label_371
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_372
.label_371:
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
.label_372:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407000
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
	jb	.label_373
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_373
	pop	rcx
	ret	
.label_373:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x407030

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
	je	.label_375
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_374
.label_375:
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
.label_374:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407090

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
	je	.label_376
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_377
.label_376:
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
.label_377:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x4070f0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_5
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
	#Procedure 0x407140

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_379
	mov	rsp, rsp
	pop	rcx
	ret	
.label_379:
	nop	
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0x16
	lea	rdi, [rdi]
	jne	.label_378
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_8
	nop	
	mov	esi, OFFSET FLAT:.str.1_6
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xfts_open
	lea	rsi, [rsi]
	call	__assert_fail
.label_378:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4071a0

	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:
	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	mov	rbp, rbp
	je	.label_380
	cmp	ecx, 0x11
	lea	rdi, [rdi]
	jne	.label_381
	mov	rsp, rsp
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_380:
	lea	rsi, [rsi]
	ret	
.label_381:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4071d0

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
	jae	.label_404
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
.label_398:
	mov	rbp, rbp
	movzx	eax, byte ptr [rdx]
	inc	rdx
	mov	rbp, rbp
	test	byte ptr [rcx + rax*2 + 1], 0x20
	lea	rdi, [rdi]
	jne	.label_398
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
	je	.label_396
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
	je	.label_384
	mov	eax, dword ptr [r15]
	lea	rsi, [rsi]
	xor	ebx, ebx
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_392
	cmp	eax, 0x22
	lea	rsi, [rsi]
	jne	.label_396
	mov	ebx, 1
.label_392:
	test	r14, r14
	jne	.label_400
	mov	rbp, rbp
	jmp	.label_389
.label_384:
	mov	rsp, rsp
	test	r14, r14
	je	.label_396
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	lea	rdi, [rdi]
	je	.label_396
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
	je	.label_396
.label_400:
	movsx	r13d, byte ptr [r12]
	nop	
	test	r13d, r13d
	mov	rsp, rsp
	je	.label_389
	mov	rsp, rsp
	mov	qword ptr [rsp], rcx
	nop	
	mov	rdi, r14
	mov	esi, r13d
	mov	rsp, rsp
	call	strchr
	test	rax, rax
	je	.label_385
	mov	rsp, rsp
	mov	r15d, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_382
	movabs	rdx, 0x814400308945
	lea	rsi, [rsi]
	bt	rdx, rax
	lea	rdi, [rdi]
	jae	.label_382
	mov	esi, 0x30
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strchr
	nop	
	mov	r15d, 1
	mov	rbp, rbp
	mov	esi, 0x400
	test	rax, rax
	je	.label_382
	movsx	eax, byte ptr [r12 + 1]
	mov	rsp, rsp
	mov	r15d, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	nop	
	je	.label_391
	nop	
	cmp	eax, 0x44
	je	.label_391
	cmp	eax, 0x69
	jne	.label_382
	mov	rbp, rbp
	movzx	eax, byte ptr [r12 + 2]
	lea	rsi, [rsi]
	mov	r15d, 3
	cmp	eax, 0x42
	je	.label_399
	mov	r15d, 1
.label_399:
	lea	rdi, [rdi]
	mov	esi, 0x400
	mov	rsp, rsp
	jmp	.label_382
.label_391:
	mov	r15d, 2
	nop	
	mov	esi, 0x3e8
.label_382:
	cmp	r13d, 0x59
	jg	.label_405
	lea	eax, [r13 - 0x42]
	mov	rbp, rbp
	cmp	eax, 0xe
	ja	.label_406
	jmp	qword ptr [word ptr [+ (rax * 8) + label_383]]
.label_1056:
	nop	
	mov	rax, rbp
	shr	rax, 0x36
	setne	dl
	mov	rsp, rsp
	shl	rbp, 0xa
	jmp	.label_387
.label_405:
	cmp	r13d, 0x73
	mov	rbp, rbp
	jg	.label_393
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	ja	.label_397
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_402]]
.label_950:
	nop	
	mov	rax, rbp
	shr	rax, 0x37
	setne	dl
	shl	rbp, 9
.label_387:
	cmp	rax, 1
	mov	rbp, rbp
	sbb	rax, rax
	not	rax
	lea	rdi, [rdi]
	or	rbp, rax
	movzx	eax, dl
	jmp	.label_403
.label_406:
	lea	rdi, [rdi]
	cmp	r13d, 0x54
	lea	rdi, [rdi]
	je	.label_388
	mov	rbp, rbp
	cmp	r13d, 0x59
	jne	.label_385
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
	jmp	.label_386
.label_393:
	nop	
	cmp	r13d, 0x74
	mov	rbp, rbp
	je	.label_388
	mov	rsp, rsp
	cmp	r13d, 0x77
	jne	.label_385
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
	jmp	.label_403
.label_951:
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
	jmp	.label_395
.label_952:
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
	jmp	.label_394
.label_953:
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
	jmp	.label_395
.label_388:
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
	jmp	.label_395
.label_397:
	cmp	r13d, 0x5a
	lea	rdi, [rdi]
	jne	.label_385
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
.label_386:
	lea	rsi, [rsi]
	movzx	eax, dl
	and	eax, 1
	jmp	.label_394
.label_385:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rax], rbp
	or	ebx, 2
	mov	rsp, rsp
	jmp	.label_390
.label_1057:
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
.label_395:
	lea	rdi, [rdi]
	and	dl, 1
	lea	rsi, [rsi]
	movzx	eax, dl
.label_394:
	mov	rbp, rsi
.label_403:
	or	eax, ebx
	nop	
	lea	rcx, [r12 + r15]
	mov	rdx, qword ptr [rsp]
	mov	rbp, rbp
	mov	qword ptr [rdx], rcx
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + r15], 0
	mov	rbp, rbp
	je	.label_401
	or	eax, 2
.label_401:
	mov	ebx, eax
.label_389:
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	qword ptr [rax], rbp
.label_390:
	mov	r13d, ebx
.label_396:
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
.label_1058:
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
	jmp	.label_394
.label_404:
	mov	edi, OFFSET FLAT:.str_9
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_7
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoul
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ab0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_407
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_408
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
	je	.label_408
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
.label_407:
	mov	ecx, 1
.label_408:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b20

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
	mov	r14, rdx
	mov	ebx, esi
	mov	r12, rdi
	cmp	ebx, 0x1000
	jae	.label_416
	mov	rbp, rbp
	mov	eax, ebx
	lea	rdi, [rdi]
	and	eax, 0x204
	nop	
	cmp	eax, 0x204
	je	.label_416
	mov	rsp, rsp
	test	bl, 0x12
	nop	
	je	.label_416
	mov	rsp, rsp
	mov	edi, 0x80
	mov	rsp, rsp
	call	malloc
	mov	r15, rax
	xor	eax, eax
	nop	
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_421
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x70], xmm0
	movups	xmmword ptr [r15 + 0x60], xmm0
	movups	xmmword ptr [r15 + 0x50], xmm0
	movups	xmmword ptr [r15 + 0x40], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [r15 + 0x30], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [r15 + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [r15 + 0x10], xmm0
	movups	xmmword ptr [r15], xmm0
	mov	qword ptr [r15 + 0x40], r14
	mov	eax, ebx
	and	eax, 0xfffffdfb
	mov	rsp, rsp
	or	eax, 4
	lea	rdi, [rdi]
	test	bl, 2
	lea	rdi, [rdi]
	cmove	eax, ebx
	lea	rdi, [rdi]
	mov	dword ptr [r15 + 0x48], eax
	mov	rbp, rbp
	mov	dword ptr [r15 + 0x2c], 0xffffff9c
	mov	rdi, qword ptr [r12]
	mov	ebp, 1
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_434
	mov	r13d, ebx
	mov	rbp, rbp
	lea	rbx, [r12 + 8]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_418:
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
	jne	.label_418
	inc	rbp
	mov	rsp, rsp
	mov	ebx, r13d
.label_434:
	cmp	rbp, 0x1000
	lea	rsi, [rsi]
	mov	esi, 0x1000
	cmova	rsi, rbp
	mov	rsp, rsp
	add	rsi, 0x100
	nop	
	mov	qword ptr [r15 + 0x30], rsi
	xor	edi, edi
	mov	rsp, rsp
	call	realloc
	mov	rbp, rax
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_428
	mov	qword ptr [r15 + 0x20], rbp
	mov	qword ptr [rsp + 0x30], r15
	lea	rdi, [rdi]
	mov	r13, qword ptr [r12]
	mov	qword ptr [rsp + 0x20], r12
	xor	r12d, r12d
	lea	rsi, [rsi]
	test	r13, r13
	je	.label_431
	lea	rsi, [rsi]
	mov	edi, 0x110
	call	malloc
	mov	r12, rax
	test	r12, r12
	mov	rbp, rbp
	je	.label_439
	mov	byte ptr [r12 + 0x108], 0
	mov	qword ptr [r12 + 0x60], 0
	mov	rax, qword ptr [rsp + 0x30]
	mov	qword ptr [r12 + 0x50], rax
	nop	
	mov	qword ptr [r12 + 0x38], rbp
	mov	dword ptr [r12 + 0x40], 0
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x18], 0
	lea	rdi, [rdi]
	mov	word ptr [r12 + 0x72], 0
	mov	rsp, rsp
	mov	word ptr [r12 + 0x74], 3
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	qword ptr [r12 + 0x58], -1
	mov	qword ptr [r12 + 0x68], -1
.label_431:
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x17], 1
	test	r14, r14
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r14
	je	.label_419
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	al, byte ptr [rax + 0x49]
	and	al, 4
	lea	rdi, [rdi]
	shr	al, 2
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x17], al
.label_419:
	mov	rsp, rsp
	xor	r14d, r14d
	mov	rsp, rsp
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_423
	mov	qword ptr [rsp + 0x18], r12
	xor	r12d, r12d
	test	bh, 8
	jne	.label_429
	xor	r15d, r15d
	mov	rsp, rsp
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_420:
	mov	rdi, r13
	call	strlen
	mov	rbp, rax
	lea	rsi, [rsi]
	cmp	rbp, 3
	jb	.label_436
	movzx	eax, byte ptr [rbp + r13 - 1]
	cmp	eax, 0x2f
	lea	rdi, [rdi]
	jne	.label_438
	mov	qword ptr [rsp + 0x28], rbx
	nop	word ptr [rax + rax]
.label_446:
	movzx	eax, byte ptr [r13 + rbp - 2]
	nop	
	cmp	eax, 0x2f
	lea	rdi, [rdi]
	jne	.label_437
	lea	rsi, [rsi]
	dec	rbp
	cmp	rbp, 1
	mov	rsp, rsp
	ja	.label_446
	lea	rsi, [rsi]
	jmp	.label_437
.label_436:
	mov	qword ptr [rsp + 0x28], rbx
	jmp	.label_437
.label_438:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rbx
.label_437:
	lea	rdi, [rdi]
	lea	rdi, [rbp + 0x110]
	lea	rsi, [rsi]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	rbp, rbp
	mov	rbx, rax
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_414
	mov	r14, rbx
	mov	rbp, rbp
	add	r14, 0x108
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	memcpy
	nop	
	mov	byte ptr [rbx + rbp + 0x108], 0
	mov	qword ptr [rbx + 0x60], rbp
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	qword ptr [rbx + 0x50], rdi
	mov	rax, qword ptr [rdi + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x38], rax
	mov	dword ptr [rbx + 0x40], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x72], 0
	nop	
	mov	word ptr [rbx + 0x74], 3
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbx + 0x20], xmm0
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x58], 0
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbx + 8], rax
	nop	
	mov	qword ptr [rbx + 0x30], r14
	test	r15, r15
	mov	rsp, rsp
	setne	al
	lea	rdi, [rdi]
	test	byte ptr [rsp + 0x17], al
	je	.label_422
	mov	rsp, rsp
	mov	word ptr [rbx + 0x70], 0xb
	mov	qword ptr [rbx + 0xa8], 2
	jmp	.label_442
.label_422:
	xor	edx, edx
	mov	rsi, rbx
	mov	rsp, rsp
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
.label_442:
	nop	
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	test	rax, rax
	je	.label_448
	mov	r14, rbx
	mov	qword ptr [rbx + 0x10], r15
	mov	rbx, qword ptr [rsp + 0x28]
	jmp	.label_412
.label_448:
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x10], 0
	test	r15, r15
	nop	
	mov	r14, rbx
	je	.label_412
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x10], rbx
	mov	rsp, rsp
	mov	r14, r15
.label_412:
	nop	
	inc	r12
	mov	rax, qword ptr [rsp + 0x20]
	mov	r13, qword ptr [rax + 8]
	mov	rbp, rbp
	add	rax, 8
	nop	
	mov	qword ptr [rsp + 0x20], rax
	test	r13, r13
	mov	rsp, rsp
	mov	r15, r14
	mov	rsp, rsp
	jne	.label_420
	lea	rdi, [rdi]
	jmp	.label_426
.label_416:
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0x16
	nop	
	xor	eax, eax
.label_421:
	add	rsp, 0x38
	nop	
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
.label_428:
	mov	rdi, qword ptr [r15 + 0x20]
	mov	rsp, rsp
	jmp	.label_433
.label_429:
	xor	eax, eax
	xor	r15d, r15d
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_409:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], r15
	mov	rbp, rbp
	mov	r14, rax
	mov	rdi, r13
	lea	rsi, [rsi]
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 0x110]
	nop	
	and	rdi, 0xfffffffffffffff8
	nop	
	call	malloc
	mov	r15, rax
	mov	rbp, rbp
	test	r15, r15
	je	.label_445
	mov	rbp, r15
	add	rbp, 0x108
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	memcpy
	nop	
	mov	byte ptr [r15 + rbx + 0x108], 0
	mov	qword ptr [r15 + 0x60], rbx
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	qword ptr [r15 + 0x50], rdi
	mov	rax, qword ptr [rdi + 0x20]
	mov	qword ptr [r15 + 0x38], rax
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 0x40], 0
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x18], 0
	mov	word ptr [r15 + 0x72], 0
	mov	rbp, rbp
	mov	word ptr [r15 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x20], xmm0
	mov	qword ptr [r15 + 0x58], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [r15 + 0x30], rbp
	lea	rdi, [rdi]
	mov	rbx, r14
	mov	rbp, rbp
	test	rbx, rbx
	lea	rdi, [rdi]
	setne	al
	mov	rbp, rbp
	and	al, byte ptr [rsp + 0x17]
	lea	rsi, [rsi]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_411
	lea	rsi, [rsi]
	mov	word ptr [r15 + 0x70], 0xb
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0xa8], 2
	jmp	.label_435
.label_411:
	nop	
	xor	edx, edx
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
.label_435:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 8], rax
	test	rax, rax
	je	.label_432
	mov	r14, r15
	nop	
	mov	qword ptr [r15 + 0x10], rbx
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x28]
	jmp	.label_444
.label_432:
	mov	qword ptr [r15 + 0x10], 0
	test	rbx, rbx
	mov	r14, r15
	je	.label_444
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax + 0x10], r15
	nop	
	mov	r14, rbx
.label_444:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r13, qword ptr [rax + r12*8 + 8]
	lea	rdi, [rdi]
	inc	r12
	test	r13, r13
	mov	rax, r14
	jne	.label_409
.label_426:
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 8], 0
	je	.label_441
	lea	rdi, [rdi]
	cmp	r12, 2
	nop	
	jb	.label_441
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, r14
	mov	rdx, r12
	mov	rbp, rbp
	call	fts_sort
	mov	rsp, rsp
	mov	r14, rax
.label_441:
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x18]
.label_423:
	nop	
	mov	edi, 0x110
	call	malloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_425
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x108], 0
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x60], 0
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0x30]
	mov	qword ptr [rax + 0x50], r15
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15 + 0x20]
	mov	qword ptr [rax + 0x38], rcx
	nop	
	mov	dword ptr [rax + 0x40], 0
	mov	qword ptr [rax + 0x18], 0
	mov	rsp, rsp
	mov	word ptr [rax + 0x72], 0
	lea	rdi, [rdi]
	mov	word ptr [rax + 0x74], 3
	mov	rsp, rsp
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rax + 0x20], xmm0
	mov	qword ptr [r15], rax
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x10], r14
	mov	rbp, rbp
	mov	word ptr [rax + 0x70], 9
	mov	qword ptr [rax + 0x58], 1
	movzx	eax, word ptr [r15 + 0x48]
	test	ax, 0x102
	je	.label_427
	nop	
	mov	edi, 0x1f
	xor	esi, esi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	rsp, rsp
	mov	r8d, OFFSET FLAT:free
	lea	rdi, [rdi]
	call	hash_initialize
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x58], rax
	test	rax, rax
	jne	.label_413
	jmp	.label_415
.label_439:
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	jmp	.label_417
.label_425:
	mov	r15, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [r15], 0
	nop	
	jmp	.label_415
.label_427:
	nop	
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [r15 + 0x58], rax
	lea	rsi, [rsi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_415
	mov	rdi, rax
	call	cycle_check_init
.label_413:
	lea	rdi, [rdi]
	mov	eax, dword ptr [r15 + 0x48]
	mov	rbp, rbp
	test	ax, 0x204
	lea	rsi, [rsi]
	jne	.label_424
	nop	
	mov	edx, eax
	mov	rsp, rsp
	and	edx, 0x10
	mov	rsp, rsp
	shl	edx, 0xd
	or	edx, 0x90900
	lea	rdi, [rdi]
	test	ah, 2
	lea	rsi, [rsi]
	jne	.label_430
	mov	edi, OFFSET FLAT:.str_10
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, edx
	lea	rdi, [rdi]
	call	open_safer
	jmp	.label_440
.label_414:
	mov	r14, r15
.label_445:
	mov	r15, qword ptr [rsp + 0x30]
	mov	r12, qword ptr [rsp + 0x18]
.label_415:
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_443
	nop	word ptr cs:[rax + rax]
.label_410:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [r14 + 0x18]
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_447
	lea	rsi, [rsi]
	call	closedir
.label_447:
	mov	rdi, r14
	mov	rbp, rbp
	call	free
	test	rbx, rbx
	lea	rdi, [rdi]
	mov	r14, rbx
	nop	
	jne	.label_410
.label_443:
	mov	rsp, rsp
	mov	rdi, r12
	mov	rbp, rbp
	call	free
	nop	
	mov	rbp, qword ptr [r15 + 0x20]
.label_417:
	mov	rdi, rbp
.label_433:
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	free
	nop	
	xor	eax, eax
	nop	
	jmp	.label_421
.label_430:
	lea	rdi, [rdi]
	mov	edi, dword ptr [r15 + 0x2c]
	mov	esi, OFFSET FLAT:.str_10
	xor	eax, eax
	lea	rdi, [rdi]
	call	openat_safer
.label_440:
	mov	dword ptr [r15 + 0x28], eax
	test	eax, eax
	jns	.label_424
	or	byte ptr [r15 + 0x48], 4
.label_424:
	lea	rsi, [rsi]
	mov	rdi, r15
	lea	rsi, [rsi]
	add	rdi, 0x60
	mov	esi, 0xffffffff
	lea	rdi, [rdi]
	call	i_ring_init
	mov	rax, r15
	lea	rdi, [rdi]
	jmp	.label_421
	nop	
	.section	.text
	.align	16
	#Procedure 0x408390

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
	jne	.label_452
	test	al, 1
	nop	
	je	.label_452
	lea	rsi, [rsi]
	mov	dl, 1
.label_452:
	mov	rbp, rbp
	lea	rbx, [r14 + 0x78]
	lea	rdi, [rdi]
	test	dl, dl
	lea	rdi, [rdi]
	jne	.label_450
	and	eax, 2
	jne	.label_450
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
	je	.label_458
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	eax, dword ptr [rax]
	mov	rbp, rbp
	jmp	.label_449
.label_450:
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
	je	.label_458
	lea	rdi, [rdi]
	call	__errno_location
	mov	r15, rax
	mov	eax, dword ptr [r15]
	cmp	eax, 2
	jne	.label_449
	mov	rsi, qword ptr [r14 + 0x30]
	nop	
	mov	edi, 1
	mov	rsp, rsp
	mov	rdx, rbx
	mov	rsp, rsp
	call	__lxstat
	test	eax, eax
	mov	rbp, rbp
	je	.label_456
	lea	rsi, [rsi]
	mov	eax, dword ptr [r15]
.label_449:
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
.label_455:
	movzx	eax, ax
	nop	
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_458:
	mov	rbp, rbp
	mov	ecx, 0xf000
	and	ecx, dword ptr [r14 + 0x90]
	lea	rsi, [rsi]
	mov	ax, 0xc
	cmp	ecx, 0xa000
	je	.label_455
	cmp	ecx, 0x8000
	nop	
	je	.label_454
	cmp	ecx, 0x4000
	mov	rbp, rbp
	jne	.label_457
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x88]
	mov	rcx, -1
	lea	rdi, [rdi]
	cmp	rax, 2
	mov	rsp, rsp
	jb	.label_451
	cmp	qword ptr [r14 + 0x58], 0
	jle	.label_451
	mov	ecx, dword ptr [r15 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	lea	rdi, [rdi]
	mov	rcx, rax
.label_451:
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x68], rcx
	mov	ecx, dword ptr [r14 + 0x108]
	mov	ax, 1
	mov	rsp, rsp
	movzx	edx, cl
	cmp	edx, 0x2e
	mov	rsp, rsp
	jne	.label_455
	mov	edx, ecx
	shr	edx, 8
	test	dl, dl
	je	.label_453
	mov	rbp, rbp
	movzx	edx, dl
	lea	rsi, [rsi]
	cmp	edx, 0x2e
	jne	.label_455
	lea	rsi, [rsi]
	test	ecx, 0xff0000
	lea	rdi, [rdi]
	jne	.label_455
.label_453:
	nop	
	mov	ax, 1
	cmp	qword ptr [r14 + 0x58], 0
	mov	rsp, rsp
	je	.label_455
	mov	ax, 5
	jmp	.label_455
.label_454:
	mov	ax, 8
	jmp	.label_455
.label_457:
	lea	rdi, [rdi]
	mov	ax, 3
	lea	rsi, [rsi]
	jmp	.label_455
.label_456:
	mov	dword ptr [r15], 0
	mov	ax, 0xd
	jmp	.label_455
	nop	
	.section	.text
	.align	16
	#Procedure 0x4085c0

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
	jae	.label_459
	lea	rsi, [r14 + 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x38], rsi
	mov	rbp, rbp
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_467
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
	je	.label_467
	mov	qword ptr [r13], rdi
	lea	rdi, [rdi]
	jmp	.label_461
.label_459:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	add	r12, 0x10
	mov	r13, r12
.label_461:
	mov	rsp, rsp
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_464
	nop	dword ptr [rax]
.label_466:
	mov	qword ptr [rdi], rbx
	add	rdi, 8
	mov	rbx, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_466
	mov	rdi, qword ptr [r13]
.label_464:
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
	je	.label_463
	nop	
	mov	rcx, qword ptr [r9 + 8]
	mov	qword ptr [rbx + 0x10], rcx
	mov	rsp, rsp
	mov	rcx, r14
	add	rcx, -2
	mov	rsp, rsp
	je	.label_462
	mov	rsp, rsp
	lea	rdx, [r9 + 8]
	lea	rsi, [rsi]
	lea	edi, [r14 + 2]
	mov	rsp, rsp
	lea	r8, [r14 - 3]
	lea	rsi, [rsi]
	test	dil, 3
	mov	rbp, rbp
	je	.label_460
	lea	rsi, [rsi]
	lea	edi, [r14 + 2]
	and	edi, 3
	neg	rdi
	nop	
.label_465:
	mov	rsi, qword ptr [rdx]
	nop	
	mov	rax, qword ptr [rdx + 8]
	lea	rdx, [rdx + 8]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x10], rax
	dec	rcx
	nop	
	inc	rdi
	jne	.label_465
.label_460:
	lea	rsi, [rsi]
	cmp	r8, 3
	mov	rbp, rbp
	jb	.label_462
	nop	dword ptr [rax + rax]
.label_468:
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
	jne	.label_468
.label_462:
	mov	rsp, rsp
	mov	rcx, qword ptr [r9 + r14*8 - 8]
.label_463:
	mov	qword ptr [rcx + 0x10], 0
	jmp	.label_469
.label_467:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12 + 0x10]
	call	free
	mov	qword ptr [r12 + 0x10], 0
	mov	qword ptr [r12 + 0x38], 0
.label_469:
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
	#Procedure 0x4087c0

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
	je	.label_484
	lea	rsi, [rsi]
	cmp	qword ptr [rdi + 0x58], 0
	lea	rsi, [rsi]
	js	.label_480
	nop	word ptr [rax + rax]
.label_473:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rdi + 0x10]
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_487
	mov	rbx, qword ptr [rdi + 8]
.label_487:
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	cmp	qword ptr [rbx + 0x58], 0
	lea	rsi, [rsi]
	mov	rdi, rbx
	jns	.label_473
	mov	rsp, rsp
	jmp	.label_476
.label_480:
	mov	rbx, rdi
.label_476:
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	call	free
.label_484:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_481
	nop	dword ptr [rax]
.label_486:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_470
	lea	rsi, [rsi]
	call	closedir
.label_470:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	lea	rdi, [rdi]
	mov	rbx, rbp
	jne	.label_486
.label_481:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	lea	rdi, [rdi]
	mov	eax, dword ptr [r14 + 0x48]
	lea	rdi, [rdi]
	test	ah, 2
	jne	.label_474
	xor	ebp, ebp
	mov	rbp, rbp
	test	al, 4
	jne	.label_472
	nop	
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebp, ebp
	test	eax, eax
	je	.label_477
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_477:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	lea	rsi, [rsi]
	test	ebp, ebp
	nop	
	je	.label_482
	nop	
	jmp	.label_472
.label_474:
	mov	rsp, rsp
	mov	edi, dword ptr [r14 + 0x2c]
	lea	rsi, [rsi]
	xor	ebp, ebp
	lea	rdi, [rdi]
	test	edi, edi
	js	.label_472
	nop	
	call	close
.label_482:
	nop	
	test	eax, eax
	nop	
	je	.label_472
	call	__errno_location
	mov	rbp, rbp
	mov	ebp, dword ptr [rax]
.label_472:
	lea	rsi, [rsi]
	lea	rbx, [r14 + 0x60]
	jmp	.label_478
	nop	
.label_475:
	mov	edi, eax
	mov	rsp, rsp
	call	close
.label_478:
	mov	rsp, rsp
	mov	rdi, rbx
	call	i_ring_empty
	lea	rdi, [rdi]
	test	al, al
	jne	.label_471
	mov	rbp, rbp
	mov	rdi, rbx
	call	i_ring_pop
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	jns	.label_475
	nop	
	jmp	.label_478
.label_471:
	mov	rsp, rsp
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_479
	nop	
	call	hash_free
.label_479:
	nop	
	movzx	eax, word ptr [r14 + 0x48]
	mov	rbp, rbp
	test	ax, 0x102
	je	.label_483
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x58]
	mov	rbp, rbp
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_485
	lea	rdi, [rdi]
	call	hash_free
	nop	
	jmp	.label_485
.label_483:
	mov	rdi, qword ptr [r14 + 0x58]
	lea	rdi, [rdi]
	call	free
.label_485:
	mov	rdi, r14
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	xor	eax, eax
	test	ebp, ebp
	je	.label_488
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], ebp
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
.label_488:
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
	#Procedure 0x4089b0

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
	je	.label_490
	mov	rsp, rsp
	mov	eax, dword ptr [r14 + 0x48]
	xor	r15d, r15d
	mov	rbp, rbp
	test	ah, 0x20
	mov	rsp, rsp
	jne	.label_490
	lea	rdi, [rdi]
	movzx	ecx, word ptr [r12 + 0x74]
	nop	
	mov	word ptr [r12 + 0x74], 3
	mov	rsp, rsp
	cmp	ecx, 1
	nop	
	je	.label_549
	movzx	edx, cx
	cmp	edx, 2
	mov	rsp, rsp
	jne	.label_493
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r12 + 0x70]
	mov	rsp, rsp
	mov	esi, ecx
	and	esi, 0xfffe
	mov	rbp, rbp
	cmp	esi, 0xc
	jne	.label_495
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_499
	mov	eax, dword ptr [r14 + 0x48]
	mov	rbp, rbp
	test	al, 4
	lea	rdi, [rdi]
	jne	.label_499
	mov	edx, eax
	nop	
	and	edx, 0x10
	shl	edx, 0xd
	lea	rdi, [rdi]
	or	edx, 0x90900
	mov	rsp, rsp
	test	ah, 2
	jne	.label_505
	nop	
	mov	edi, OFFSET FLAT:.str_10
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, edx
	call	open_safer
	nop	
	jmp	.label_510
.label_549:
	xor	edx, edx
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r12
	call	fts_stat
	mov	rbp, rbp
	mov	word ptr [r12 + 0x70], ax
	mov	r15, r12
	jmp	.label_490
.label_493:
	lea	r13, [r12 + 0x70]
	mov	ecx, dword ptr [r12 + 0x70]
	jmp	.label_515
.label_495:
	mov	rbp, rbp
	lea	r13, [r12 + 0x70]
.label_515:
	movzx	esi, cx
	mov	rsp, rsp
	cmp	esi, 1
	jne	.label_518
	cmp	edx, 4
	je	.label_520
	lea	rsi, [rsi]
	test	al, 0x40
	je	.label_522
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r12 + 0x78]
	nop	
	cmp	rdx, qword ptr [r14 + 0x18]
	jne	.label_520
.label_522:
	mov	rbx, qword ptr [r14 + 8]
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_526
	test	ah, 0x10
	jne	.label_529
	nop	
	mov	rcx, qword ptr [r12 + 0x30]
	mov	edx, 0xffffffff
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsi, r12
	call	fts_safe_changedir
	test	eax, eax
	mov	rbp, rbp
	je	.label_532
	call	__errno_location
	mov	eax, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [r12 + 0x40], eax
	or	byte ptr [r12 + 0x72], 1
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 8]
	lea	rdi, [rdi]
	jmp	.label_533
.label_538:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
.label_533:
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_538
	nop	
	jmp	.label_532
.label_518:
	mov	rbx, r12
	nop	
.label_548:
	mov	r12, qword ptr [rbx + 0x10]
	test	r12, r12
	je	.label_546
	lea	rsi, [rsi]
	mov	qword ptr [r14], r12
	mov	rbp, rbp
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r12 + 0x58], 0
	je	.label_509
	movzx	eax, word ptr [r12 + 0x74]
	cmp	eax, 4
	nop	
	mov	rbx, r12
	lea	rsi, [rsi]
	je	.label_548
	movzx	eax, ax
	nop	
	cmp	eax, 2
	lea	rdi, [rdi]
	jne	.label_530
	mov	edx, 1
	nop	
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	movzx	eax, ax
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_489
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	lea	rdi, [rdi]
	jne	.label_489
	mov	edx, eax
	lea	rdi, [rdi]
	and	edx, 0x10
	lea	rsi, [rsi]
	shl	edx, 0xd
	lea	rsi, [rsi]
	or	edx, 0x90900
	test	ah, 2
	mov	rbp, rbp
	jne	.label_496
	mov	edi, OFFSET FLAT:.str_10
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_500
.label_520:
	test	ecx, 0x20000
	mov	rbp, rbp
	je	.label_501
	mov	rsp, rsp
	mov	edi, dword ptr [r12 + 0x44]
	nop	
	call	close
.label_501:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	nop	
	je	.label_504
	nop	word ptr cs:[rax + rax]
.label_511:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_534
	call	closedir
.label_534:
	mov	rdi, rbx
	nop	
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	mov	rbp, rbp
	jne	.label_511
	nop	
	mov	qword ptr [r14 + 8], 0
.label_504:
	mov	word ptr [r12 + 0x70], 6
.label_492:
	mov	rdi, r14
	mov	rsi, r12
	mov	rsp, rsp
	call	leave_dir
	mov	rbp, rbp
	mov	r15, r12
	lea	rsi, [rsi]
	jmp	.label_490
.label_546:
	lea	rsi, [rsi]
	mov	r15, qword ptr [rbx + 8]
	cmp	qword ptr [r15 + 0x18], 0
	je	.label_523
	mov	qword ptr [r14], r15
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rbp, rbp
	mov	rdi, r14
	call	fts_build
	mov	r12, rax
	nop	
	test	r12, r12
	je	.label_527
	mov	rdi, rbx
	nop	
	call	free
	mov	rbp, rbp
	jmp	.label_530
.label_509:
	mov	rdi, r14
	lea	rdi, [rdi]
	call	restore_initial_cwd
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbp, rbp
	mov	eax, dword ptr [r14 + 0x48]
	je	.label_531
	or	eax, 0x2000
	mov	dword ptr [r14 + 0x48], eax
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_490
.label_531:
	nop	
	test	ax, 0x102
	je	.label_535
	mov	rbp, rbp
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_537
	call	hash_free
	nop	
	jmp	.label_537
.label_529:
	and	eax, 0xffffefff
	mov	rbp, rbp
	mov	dword ptr [r14 + 0x48], eax
	nop	word ptr [rax + rax]
.label_545:
	mov	rbp, qword ptr [rbx + 0x10]
	nop	
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_541
	call	closedir
.label_541:
	nop	
	mov	rdi, rbx
	call	free
	nop	
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_545
	mov	qword ptr [r14 + 8], 0
.label_526:
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rdi, r14
	lea	rsi, [rsi]
	call	fts_build
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_550
.label_532:
	lea	rsi, [rsi]
	mov	r12, qword ptr [r14 + 8]
	mov	rsp, rsp
	mov	qword ptr [r14 + 8], 0
	jmp	.label_530
.label_550:
	xor	r15d, r15d
	mov	rsp, rsp
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_490
	cmp	dword ptr [r12 + 0x40], 0
	lea	rdi, [rdi]
	je	.label_492
	mov	rsp, rsp
	movzx	eax, word ptr [r13]
	lea	rsi, [rsi]
	cmp	eax, 4
	lea	rdi, [rdi]
	je	.label_492
	mov	word ptr [r13], 7
	nop	
	jmp	.label_492
.label_505:
	nop	
	mov	edi, dword ptr [r14 + 0x2c]
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str_10
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	call	openat_safer
.label_510:
	lea	rdi, [rdi]
	mov	dword ptr [r12 + 0x44], eax
	lea	rdi, [rdi]
	test	eax, eax
	js	.label_498
	or	byte ptr [r12 + 0x72], 2
	mov	rsp, rsp
	jmp	.label_499
.label_527:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_490
	mov	r15, qword ptr [rbx + 8]
.label_523:
	lea	rdi, [rdi]
	mov	qword ptr [r14], r15
	mov	rbp, rbp
	mov	rdi, rbx
	call	free
	mov	rsp, rsp
	cmp	qword ptr [r15 + 0x58], -1
	lea	rdi, [rdi]
	je	.label_508
	movzx	eax, word ptr [r15 + 0x70]
	mov	rbp, rbp
	cmp	eax, 0xb
	mov	rsp, rsp
	je	.label_512
	nop	
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	nop	
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_514
	movzx	eax, word ptr [r15 + 0x72]
	lea	rsi, [rsi]
	test	al, 2
	lea	rsi, [rsi]
	jne	.label_517
	test	al, 1
	jne	.label_506
	mov	rsi, qword ptr [r15 + 8]
	nop	
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_3
	mov	rdi, r14
	lea	rdi, [rdi]
	call	fts_safe_changedir
	jmp	.label_525
.label_508:
	mov	rdi, r15
	call	free
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_490
.label_498:
	call	__errno_location
	mov	rsp, rsp
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	lea	rdi, [rdi]
	mov	word ptr [r12 + 0x70], 7
	jmp	.label_499
.label_535:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_537:
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r12 + 0x60]
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x48], rdx
	mov	rbp, rbp
	mov	rdi, qword ptr [r14 + 0x20]
	lea	r15, [r12 + 0x108]
	mov	rsp, rsp
	inc	rdx
	nop	
	mov	rsi, r15
	call	memmove
	mov	esi, 0x2f
	lea	rdi, [rdi]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	strrchr
	mov	rbx, rax
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_542
	cmp	rbx, r15
	mov	rsp, rsp
	jne	.label_543
	cmp	byte ptr [r12 + 0x109], 0
	lea	rdi, [rdi]
	je	.label_542
.label_543:
	inc	rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	nop	
	call	strlen
	nop	
	mov	r13, rax
	lea	rdx, [r13 + 1]
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, rbx
	nop	
	call	memmove
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x60], r13
.label_542:
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [r12 + 0x38], rax
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x30], rax
	lea	rdi, [rdi]
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	lea	rdi, [rdi]
	je	.label_551
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x58], rax
	jmp	.label_499
.label_551:
	lea	rsi, [rsi]
	mov	edi, 0x20
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x58], rax
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_499
	mov	rdi, rax
	call	cycle_check_init
	jmp	.label_499
.label_514:
	mov	rdi, r14
	mov	rbp, rbp
	call	restore_initial_cwd
.label_525:
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	je	.label_506
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_506
.label_517:
	mov	eax, dword ptr [r14 + 0x48]
	mov	rbp, rbp
	lea	rbx, [r15 + 0x44]
	test	al, 4
	mov	rbp, rbp
	jne	.label_516
	mov	rbp, rbp
	test	ah, 2
	mov	ebp, dword ptr [r15 + 0x44]
	lea	rsi, [rsi]
	jne	.label_513
	mov	edi, ebp
	nop	
	call	fchdir
	mov	rbp, rbp
	test	eax, eax
	je	.label_516
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	rsp, rsp
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_516
.label_496:
	nop	
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:.str_10
	lea	rsi, [rsi]
	xor	eax, eax
	call	openat_safer
.label_500:
	mov	dword ptr [r12 + 0x44], eax
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	js	.label_524
	or	byte ptr [r12 + 0x72], 2
	jmp	.label_489
.label_524:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	mov	word ptr [r12 + 0x70], 7
.label_489:
	lea	rdi, [rdi]
	mov	word ptr [r12 + 0x74], 3
.label_530:
	mov	rax, qword ptr [r14 + 0x20]
	nop	
	mov	rcx, qword ptr [r12 + 8]
	mov	rdx, qword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rcx + 0x48]
	mov	rbp, rbp
	movzx	edx, byte ptr [rdx + rcx - 1]
	mov	rbp, rbp
	cmp	edx, 0x2f
	jne	.label_540
	dec	rcx
.label_540:
	lea	rdi, [rax + rcx + 1]
	mov	byte ptr [rax + rcx], 0x2f
	lea	rsi, [r12 + 0x108]
	mov	rsp, rsp
	mov	rdx, qword ptr [r12 + 0x60]
	mov	rsp, rsp
	inc	rdx
	call	memmove
.label_499:
	mov	rsp, rsp
	mov	qword ptr [r14], r12
	mov	rsp, rsp
	movzx	eax, word ptr [r12 + 0x70]
	cmp	eax, 0xb
	mov	rbp, rbp
	jne	.label_494
	mov	rax, qword ptr [r12 + 0xa8]
	cmp	rax, 1
	je	.label_497
	cmp	rax, 2
	mov	rsp, rsp
	jne	.label_512
	lea	rdi, [rdi]
	mov	r15, qword ptr [r12 + 8]
	cmp	qword ptr [r15 + 0x68], 0
	jne	.label_547
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	nop	
	cmp	eax, 0x18
	lea	rdi, [rdi]
	jne	.label_547
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, r15
	call	filesystem_type
	cmp	rax, 0x52654973
	mov	rbp, rbp
	je	.label_497
	cmp	rax, 0x58465342
	je	.label_497
.label_547:
	xor	edx, edx
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r12
	mov	rsp, rsp
	call	fts_stat
	mov	rbp, rbp
	mov	word ptr [r12 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r12 + 0x90]
	cmp	ecx, 0x4000
	nop	
	jne	.label_494
	lea	rsi, [rsi]
	cmp	qword ptr [r12 + 0x58], 0
	lea	rsi, [rsi]
	je	.label_497
	mov	rax, qword ptr [r15 + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	lea	rsi, [rsi]
	jb	.label_497
	dec	rax
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x68], rax
.label_497:
	lea	rsi, [rsi]
	movzx	eax, word ptr [r12 + 0x70]
.label_494:
	movzx	eax, ax
	nop	
	cmp	eax, 1
	jne	.label_502
	mov	rbp, rbp
	cmp	qword ptr [r12 + 0x58], 0
	mov	rbp, rbp
	jne	.label_503
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_503:
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	mov	rbp, rbp
	je	.label_507
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_519
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [r12 + 0x78]
	mov	rsp, rsp
	movups	xmmword ptr [rbx], xmm0
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x10], r12
	mov	rdi, qword ptr [r14 + 0x58]
	nop	
	mov	rsi, rbx
	call	hash_insert
	mov	rsp, rsp
	mov	r14, rax
	cmp	r14, rbx
	nop	
	je	.label_491
	mov	rdi, rbx
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_519
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [r12], rax
	jmp	.label_521
.label_502:
	mov	r15, r12
	mov	rsp, rsp
	jmp	.label_490
.label_507:
	mov	rdi, qword ptr [r14 + 0x58]
	lea	rsi, [r12 + 0x78]
	call	cycle_check
	test	al, al
	mov	rsp, rsp
	je	.label_528
	mov	qword ptr [r12], r12
.label_521:
	lea	rsi, [rsi]
	mov	word ptr [r12 + 0x70], 2
	mov	r15, r12
	lea	rdi, [rdi]
	jmp	.label_490
.label_519:
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0xc
	nop	
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_490
.label_528:
	mov	r15, r12
	mov	rbp, rbp
	jmp	.label_490
.label_491:
	mov	r15, r12
	jmp	.label_490
.label_513:
	mov	rbp, rbp
	mov	esi, dword ptr [r14 + 0x2c]
	cmp	esi, ebp
	jne	.label_536
	mov	rsp, rsp
	cmp	esi, -0x64
	lea	rsi, [rsi]
	jne	.label_512
.label_536:
	mov	rbp, rbp
	lea	rdi, [r14 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_539
	lea	rdi, [rdi]
	mov	edi, eax
	lea	rdi, [rdi]
	call	close
.label_539:
	lea	rsi, [rsi]
	mov	dword ptr [r14 + 0x2c], ebp
.label_516:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbx]
	mov	rbp, rbp
	call	close
.label_506:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	lea	rsi, [rsi]
	je	.label_544
	nop	
	mov	eax, dword ptr [r15 + 0x40]
	cmp	eax, 0
	mov	rbp, rbp
	setne	cl
	nop	
	movzx	ecx, cl
	or	ecx, 6
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	word ptr [r15 + 0x70], cx
	jne	.label_544
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rsp, rsp
	call	leave_dir
.label_544:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	lea	rsi, [rsi]
	cmovne	r15, rax
.label_490:
	nop	
	mov	rax, r15
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_512:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409430

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_553
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
	je	.label_554
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	add	rsp, 0x18
	ret	
.label_553:
	mov	rsp, rsp
	mov	rax, qword ptr [rsi + 8]
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_552
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x58], 0
	nop	
	js	.label_552
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	mov	rsp, rsp
	je	.label_554
	mov	rdx, qword ptr [rcx]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rsi + 0x80]
	lea	rdi, [rdi]
	jne	.label_552
	nop	
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	mov	rbp, rbp
	jne	.label_552
	mov	rdx, qword ptr [rax + 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	qword ptr [rcx], rax
.label_552:
	lea	rdi, [rdi]
	add	rsp, 0x18
	ret	
.label_554:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4094f0

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
	je	.label_570
	mov	rbp, rbp
	movzx	edx, byte ptr [rbx]
	lea	rsi, [rsi]
	mov	ecx, 0x2e
	lea	rsi, [rsi]
	mov	eax, 0x2e
	sub	eax, edx
	lea	rsi, [rsi]
	jne	.label_563
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx + 1]
	lea	rsi, [rsi]
	sub	ecx, eax
	lea	rsi, [rsi]
	mov	eax, ecx
	jne	.label_563
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_563:
	test	eax, eax
	lea	rsi, [rsi]
	sete	r14b
	lea	rdi, [rdi]
	jmp	.label_571
.label_570:
	xor	r14d, r14d
.label_571:
	lea	rsi, [rsi]
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 4
	mov	rsp, rsp
	jne	.label_575
	nop	
	test	r13d, r13d
	jns	.label_556
	mov	rbp, rbp
	mov	cl, r14b
	mov	rbp, rbp
	xor	cl, 1
	jne	.label_576
	nop	
	mov	qword ptr [rsp + 0x90], rsi
	and	eax, 0x200
	mov	rbp, rbp
	je	.label_559
	lea	rbp, [r15 + 0x60]
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	i_ring_empty
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	jne	.label_559
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	mov	rsp, rsp
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r14b, 1
	nop	
	jmp	.label_559
.label_575:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_555
	and	eax, 0x200
	je	.label_555
	lea	rdi, [rdi]
	mov	edi, r13d
	mov	rsp, rsp
	call	close
	nop	
	jmp	.label_555
.label_556:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x90], rsi
	nop	
	jmp	.label_559
.label_576:
	mov	qword ptr [rsp + 0x90], rsi
.label_559:
	test	r13d, r13d
	mov	rbp, rbp
	mov	r12d, r13d
	jns	.label_560
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
	jne	.label_565
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	esi, edx
	call	open_safer
	mov	rbp, rbp
	jmp	.label_573
.label_565:
	mov	rbp, rbp
	mov	edi, dword ptr [r15 + 0x2c]
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsi, rbx
	nop	
	call	openat_safer
.label_573:
	mov	rbp, rbp
	mov	r12d, eax
	mov	ebp, 0xffffffff
	lea	rsi, [rsi]
	test	r12d, r12d
	lea	rdi, [rdi]
	js	.label_555
.label_560:
	lea	rsi, [rsi]
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 2
	nop	
	jne	.label_558
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_561
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x2e
	jne	.label_561
	movzx	ecx, byte ptr [rbx + 1]
	cmp	ecx, 0x2e
	jne	.label_561
	cmp	byte ptr [rbx + 2], 0
	mov	rsp, rsp
	jne	.label_561
.label_558:
	lea	rdx, [rsp]
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, r12d
	lea	rdi, [rdi]
	call	__fxstat
	test	eax, eax
	jne	.label_572
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x90]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	jne	.label_574
	nop	
	mov	rax, qword ptr [rcx + 0x80]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rsp + 8]
	nop	
	jne	.label_574
	mov	eax, dword ptr [r15 + 0x48]
.label_561:
	mov	rbp, rbp
	test	ah, 2
	jne	.label_557
	nop	
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	mov	rbp, rbp
	jmp	.label_562
.label_557:
	mov	esi, dword ptr [r15 + 0x2c]
	lea	rsi, [rsi]
	cmp	esi, r12d
	jne	.label_566
	cmp	esi, -0x64
	jne	.label_567
.label_566:
	lea	rdi, [rdi]
	test	r14b, r14b
	je	.label_568
	test	al, 4
	lea	rsi, [rsi]
	jne	.label_564
	nop	
	test	esi, esi
	js	.label_564
	mov	rbp, rbp
	mov	edi, esi
	jmp	.label_569
.label_574:
	nop	
	call	__errno_location
	mov	dword ptr [rax], 2
.label_572:
	mov	ebp, 0xffffffff
.label_562:
	test	r13d, r13d
	jns	.label_555
	call	__errno_location
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	nop	
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_555
.label_568:
	lea	rsi, [rsi]
	lea	rdi, [r15 + 0x60]
	lea	rsi, [rsi]
	call	i_ring_push
	lea	rsi, [rsi]
	test	eax, eax
	js	.label_564
	mov	edi, eax
.label_569:
	mov	rsp, rsp
	call	close
.label_564:
	mov	dword ptr [r15 + 0x2c], r12d
	xor	ebp, ebp
.label_555:
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
.label_567:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4097d0

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
	sub	rsp, 0x98
	lea	rsi, [rsi]
	mov	ebp, esi
	lea	rdi, [rdi]
	mov	rdx, rdi
	mov	r12, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x60], r12
	nop	
	mov	rdi, qword ptr [r12 + 0x18]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_645
	mov	rsp, rsp
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x80], rdi
	call	dirfd
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x54], eax
	lea	rsi, [rsi]
	test	eax, eax
	js	.label_583
	mov	dword ptr [rsp + 0x1c], ebp
	nop	
	mov	qword ptr [rsp + 0x30], -1
	nop	
	mov	rdi, rbx
	cmp	qword ptr [rdi + 0x40], 0
	jne	.label_631
	mov	eax, 0x186a0
	mov	qword ptr [rsp + 0x30], rax
.label_631:
	lea	rax, [rdi + 0x40]
	mov	qword ptr [rsp + 0x20], rax
	lea	rbp, [rdi + 0x48]
	mov	rsp, rsp
	mov	cl, 1
	jmp	.label_590
.label_645:
	mov	qword ptr [rsp + 0x80], rdi
	mov	rsp, rsp
	mov	eax, dword ptr [rdx + 0x48]
	mov	ecx, eax
	mov	rsp, rsp
	and	ecx, 0x204
	mov	edi, 0xffffff9c
	nop	
	cmp	ecx, 0x200
	mov	rsp, rsp
	jne	.label_598
	mov	edi, dword ptr [rdx + 0x2c]
.label_598:
	mov	rbp, rbp
	mov	rbx, rdx
	mov	rsi, qword ptr [r12 + 0x30]
	mov	rsp, rsp
	xor	edx, edx
	mov	rbp, rbp
	test	al, 0x10
	nop	
	je	.label_602
	nop	
	test	al, 1
	lea	rsi, [rsi]
	je	.label_606
	mov	rbp, rbp
	cmp	qword ptr [r12 + 0x58], 0
	lea	rdi, [rdi]
	je	.label_602
.label_606:
	nop	
	mov	edx, 0x20000
.label_602:
	lea	rcx, [rsp + 0x54]
	call	opendirat
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x18], rax
	lea	rsi, [rsi]
	test	rax, rax
	nop	
	je	.label_613
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ebp
	nop	
	mov	rdi, rbx
	mov	rsp, rsp
	lea	r15, [rdi + 0x48]
	movzx	eax, word ptr [r12 + 0x70]
	cmp	eax, 0xb
	jne	.label_612
	lea	rdi, [rdi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rsi, r12
	call	fts_stat
	mov	rdi, rbx
	mov	word ptr [r12 + 0x70], ax
	jmp	.label_582
.label_583:
	mov	rsp, rsp
	mov	rdi, qword ptr [r12 + 0x18]
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
.label_613:
	lea	rsi, [rsi]
	xor	ebx, ebx
	cmp	ebp, 3
	jne	.label_594
	nop	
	mov	word ptr [r12 + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [r12 + 0x40], eax
	mov	rsp, rsp
	xor	ebx, ebx
	jmp	.label_594
.label_612:
	test	byte ptr [r15 + 1], 1
	nop	
	je	.label_582
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	rbx, rdi
	call	leave_dir
	xor	edx, edx
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r12
	call	fts_stat
	mov	rsp, rsp
	movzx	eax, word ptr [rbx + 0x48]
	mov	rbp, rbp
	test	ax, 0x102
	mov	rsp, rsp
	je	.label_642
	mov	rbp, rbp
	mov	rbp, rbx
	lea	rdi, [rdi]
	mov	edi, 0x18
	lea	rdi, [rdi]
	call	malloc
	mov	rbx, rax
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_605
	movups	xmm0, xmmword ptr [r12 + 0x78]
	movups	xmmword ptr [rbx], xmm0
	nop	
	mov	qword ptr [rbx + 0x10], r12
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp + 0x58]
	mov	rsp, rsp
	mov	rsi, rbx
	nop	
	call	hash_insert
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rbp, rax
	mov	rbp, rbp
	cmp	rbp, rbx
	je	.label_582
	mov	r14, rdi
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
	test	rbp, rbp
	nop	
	je	.label_605
	mov	rax, qword ptr [rbp + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [r12], rax
	mov	rbp, rbp
	mov	word ptr [r12 + 0x70], 2
	mov	rsp, rsp
	mov	rdi, r14
	jmp	.label_582
.label_642:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x58]
	lea	rsi, [r12 + 0x78]
	lea	rsi, [rsi]
	call	cycle_check
	mov	rbp, rbp
	mov	rdi, rbx
	test	al, al
	lea	rdi, [rdi]
	je	.label_582
	mov	qword ptr [r12], r12
	mov	word ptr [r12 + 0x70], 2
.label_582:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], -1
	mov	rbp, rbp
	cmp	qword ptr [rdi + 0x40], 0
	jne	.label_597
	mov	eax, 0x186a0
	nop	
	mov	qword ptr [rsp + 0x30], rax
.label_597:
	mov	rbp, rbp
	lea	rax, [rdi + 0x40]
	mov	qword ptr [rsp + 0x20], rax
	cmp	dword ptr [rsp + 0x1c], 2
	lea	rsi, [rsi]
	mov	rbp, r15
	mov	rbp, rbp
	je	.label_601
	mov	rbp, rbp
	mov	eax, dword ptr [rbp]
	mov	rsp, rsp
	and	eax, 0x38
	cmp	eax, 0x18
	nop	
	jne	.label_588
	cmp	qword ptr [r12 + 0x88], 2
	lea	rdi, [rdi]
	jne	.label_588
	nop	
	mov	rbx, rdi
	nop	
	mov	esi, dword ptr [rsp + 0x54]
	mov	rdi, r12
	call	filesystem_type
	cmp	rax, 0x9f9f
	jle	.label_611
	cmp	rax, 0x9fa0
	nop	
	mov	rdi, rbx
	nop	
	je	.label_588
	mov	ecx, 0xff534d42
	mov	rbp, rbp
	cmp	rax, rcx
	lea	rsi, [rsi]
	je	.label_588
	cmp	rax, 0x5346414f
	mov	rsp, rsp
	je	.label_588
	jmp	.label_601
.label_605:
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	xor	ebx, ebx
	jmp	.label_594
.label_611:
	lea	rdi, [rdi]
	test	rax, rax
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	je	.label_588
	lea	rdi, [rdi]
	cmp	rax, 0x6969
	jne	.label_601
.label_588:
	cmp	dword ptr [rsp + 0x1c], 3
	lea	rsi, [rsi]
	sete	r13b
	mov	r14b, 1
	lea	rdi, [rdi]
	jmp	.label_630
.label_601:
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rbp, rbp
	cmp	dword ptr [rsp + 0x1c], 3
	lea	rdi, [rdi]
	sete	r13b
	mov	r14d, 0
	jne	.label_590
.label_630:
	test	byte ptr [rbp + 1], 2
	mov	qword ptr [rsp + 0x90], rbp
	mov	ebp, dword ptr [rsp + 0x54]
	je	.label_634
	mov	esi, 0x406
	lea	rdi, [rdi]
	mov	r15, rdi
	nop	
	mov	edx, 3
	mov	rsp, rsp
	xor	eax, eax
	mov	edi, ebp
	call	rpl_fcntl
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsp, rsp
	mov	ebp, eax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x54], ebp
.label_634:
	test	ebp, ebp
	js	.label_641
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rsi, r12
	mov	rbx, rdi
	nop	
	mov	edx, ebp
	call	fts_safe_changedir
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	cl, 1
	test	eax, eax
	mov	rbp, rbp
	je	.label_647
.label_641:
	mov	rbp, rdi
	and	r13b, r14b
	movzx	eax, r13b
	cmp	eax, 1
	jne	.label_649
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [r12 + 0x40], eax
.label_649:
	or	byte ptr [r12 + 0x72], 1
	mov	rsp, rsp
	mov	rdi, qword ptr [r12 + 0x18]
	mov	rsp, rsp
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x90]
	mov	rsp, rsp
	mov	eax, dword ptr [rax]
	mov	rbp, rbp
	test	ah, 2
	mov	rsp, rsp
	je	.label_579
	mov	edi, dword ptr [rsp + 0x54]
	test	edi, edi
	lea	rdi, [rdi]
	js	.label_579
	call	close
.label_579:
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x18], 0
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rdi, rbp
.label_647:
	mov	rbp, qword ptr [rsp + 0x90]
.label_590:
	mov	rax, qword ptr [r12 + 0x38]
	mov	rdx, qword ptr [r12 + 0x48]
	mov	rbp, rbp
	movzx	eax, byte ptr [rax + rdx - 1]
	cmp	eax, 0x2f
	jne	.label_595
	mov	rsp, rsp
	dec	rdx
.label_595:
	mov	rsp, rsp
	mov	dword ptr [rsp + 4], ecx
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rax
	lea	rdi, [rdi]
	test	byte ptr [rbp], 4
	mov	r13, rbp
	mov	rsp, rsp
	je	.label_600
	mov	rax, qword ptr [rdi + 0x20]
	nop	
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x58], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_600:
	mov	rsp, rsp
	lea	rax, [rdx + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x70], rax
	nop	
	mov	rcx, qword ptr [rdi + 0x30]
	mov	qword ptr [rsp + 0x88], rdi
	lea	rdi, [rdi]
	sub	rcx, rax
	mov	qword ptr [rsp + 0x90], rcx
	mov	rax, qword ptr [r12 + 0x58]
	lea	rsi, [rsi]
	inc	rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	add	rdx, 0x102
	nop	
	mov	qword ptr [rsp + 0x68], rdx
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x40], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	mov	rsp, rsp
	mov	dword ptr [rsp], 0
	mov	rsp, rsp
	xor	eax, eax
	xor	ebp, ebp
	lea	rsi, [rsi]
	xor	r15d, r15d
.label_620:
	mov	rsp, rsp
	mov	rbx, qword ptr [r12 + 0x18]
	test	rbx, rbx
	je	.label_626
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rax
	nop	
	mov	qword ptr [rsp + 0x10], rbp
	mov	rbp, rbp
	call	__errno_location
	nop	
	mov	qword ptr [rsp + 0x78], rax
	lea	rdi, [rdi]
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_650:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x78]
	nop	
	mov	dword ptr [rax], 0
	mov	rdi, rbx
	call	readdir
	mov	r14, rax
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_623
	mov	rbp, rbp
	mov	r13, r14
	mov	rbp, rbp
	add	r13, 0x13
	lea	rsi, [rsi]
	test	byte ptr [rbp], 0x20
	jne	.label_635
	mov	rbp, rbp
	movzx	eax, byte ptr [r13]
	mov	rbp, rbp
	cmp	eax, 0x2e
	lea	rdi, [rdi]
	jne	.label_635
	movzx	eax, byte ptr [r14 + 0x14]
	mov	rbp, rbp
	cmp	eax, 0x2e
	mov	rbp, rbp
	je	.label_640
	mov	rsp, rsp
	test	al, al
	lea	rdi, [rdi]
	je	.label_644
	lea	rsi, [rsi]
	jmp	.label_635
	nop	
.label_640:
	cmp	byte ptr [r14 + 0x15], 0
	lea	rdi, [rdi]
	jne	.label_635
.label_644:
	mov	rbx, qword ptr [r12 + 0x18]
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_650
	jmp	.label_653
.label_635:
	lea	rdi, [rdi]
	mov	rdi, r13
	nop	
	call	strlen
	mov	rsp, rsp
	mov	rbx, rax
	lea	rdi, [rdi]
	lea	rdi, [rbx + 0x110]
	lea	rsi, [rsi]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	rbp, rbp
	mov	r12, rax
	test	r12, r12
	je	.label_616
	mov	rsp, rsp
	mov	rdi, r12
	lea	rdi, [rdi]
	add	rdi, 0x108
	mov	qword ptr [rsp + 0x48], rdi
	mov	rbp, rbp
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, rbx
	mov	rbp, rbp
	call	memcpy
	mov	byte ptr [r12 + rbx + 0x108], 0
	mov	qword ptr [r12 + 0x60], rbx
	mov	rcx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x50], rcx
	mov	r13, qword ptr [rcx + 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x38], r13
	lea	rsi, [rsi]
	mov	dword ptr [r12 + 0x40], 0
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x18], 0
	mov	rbp, rbp
	mov	word ptr [r12 + 0x72], 0
	mov	rbp, rbp
	mov	word ptr [r12 + 0x74], 3
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [r12 + 0x20], xmm0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x90]
	mov	rsp, rsp
	cmp	rbx, rax
	jae	.label_591
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x70]
	jmp	.label_609
	nop	word ptr cs:[rax + rax]
.label_591:
	mov	rax, qword ptr [rsp + 0x68]
	lea	rsi, [rax + rbx]
	lea	rsi, [rsi]
	add	rsi, qword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	jb	.label_615
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x90], rbp
	mov	qword ptr [rcx + 0x30], rsi
	mov	rdi, r13
	mov	rsp, rsp
	mov	rbp, rcx
	call	realloc
	test	rax, rax
	mov	rbp, rbp
	je	.label_622
	mov	qword ptr [rbp + 0x20], rax
	cmp	r13, rax
	nop	
	mov	rcx, rbp
	je	.label_624
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x70]
	add	rax, r13
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x90]
	test	byte ptr [rbp], 4
	mov	rdx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	cmovne	rdx, rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rdx
	mov	al, 1
	mov	qword ptr [rsp + 0x38], rax
	jmp	.label_628
.label_624:
	mov	rbp, qword ptr [rsp + 0x90]
	mov	r13, qword ptr [rsp + 0x70]
.label_628:
	mov	rax, qword ptr [rcx + 0x30]
	sub	rax, r13
.label_609:
	add	rbx, r13
	lea	rsi, [rsi]
	jb	.label_636
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x90], rax
	nop	
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r12 + 0x58], rax
	mov	rax, qword ptr [rcx]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x48], rbx
	mov	rax, qword ptr [r14]
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x80], rax
	mov	rsp, rsp
	test	byte ptr [rbp], 4
	mov	rbp, rbp
	jne	.label_638
	mov	qword ptr [rsp + 0x88], rcx
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_646
	nop	word ptr [rax + rax]
.label_638:
	mov	qword ptr [rsp + 0x88], rcx
	mov	rax, qword ptr [r12 + 0x38]
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x30], rax
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	nop	
	mov	rdi, qword ptr [rsp + 0x58]
	mov	rsi, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	call	memmove
.label_646:
	mov	qword ptr [rsp + 0x70], r13
	mov	edx, dword ptr [rbp]
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax], 0
	je	.label_580
	mov	eax, edx
	and	eax, 0x400
	nop	
	jne	.label_580
	mov	r13, rbp
	xor	edx, edx
	nop	
	mov	rdi, qword ptr [rsp + 0x88]
	mov	rsi, r12
	call	fts_stat
	mov	rbp, rbp
	mov	word ptr [r12 + 0x70], ax
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_577
	nop	dword ptr [rax]
.label_580:
	mov	r13, rbp
	mov	rbp, rbp
	and	edx, 0x18
	mov	rsp, rsp
	movzx	ecx, byte ptr [r14 + 0x12]
	mov	rsp, rsp
	xor	eax, eax
	cmp	edx, 0x18
	mov	rbp, rbp
	mov	edx, 0
	jne	.label_596
	mov	rbp, rbp
	cmp	ecx, 4
	setne	bl
	test	cl, cl
	setne	dl
	and	dl, bl
.label_596:
	mov	word ptr [r12 + 0x70], 0xb
	mov	rsp, rsp
	lea	esi, [rcx - 1]
	cmp	esi, 0xb
	mov	rbp, qword ptr [rsp + 0x10]
	nop	
	ja	.label_581
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [+ (rcx * 4) + label_607]]
.label_581:
	mov	dword ptr [r12 + 0x90], eax
	cmp	dl, 1
	mov	eax, 1
	mov	rbp, rbp
	adc	rax, 0
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0xa8], rax
.label_577:
	mov	qword ptr [r12 + 0x10], 0
	lea	rdi, [rdi]
	test	r15, r15
	lea	rsi, [rsi]
	mov	rax, r12
	je	.label_633
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, r15
.label_633:
	mov	r15, rax
	cmp	rbp, 0x2710
	nop	
	jne	.label_589
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	jne	.label_589
	mov	rbp, rbp
	mov	esi, dword ptr [rsp + 0x54]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x60]
	call	filesystem_type
	mov	rsp, rsp
	mov	dword ptr [rsp], 0
	nop	
	cmp	rax, 0x6969
	je	.label_589
	cmp	rax, 0x1021994
	mov	rbp, rbp
	je	.label_589
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	je	.label_589
	mov	al, 1
	lea	rdi, [rdi]
	mov	dword ptr [rsp], eax
	nop	word ptr [rax + rax]
.label_589:
	mov	rsp, rsp
	inc	rbp
	cmp	qword ptr [rsp + 0x30], rbp
	mov	rsp, rsp
	mov	rax, r12
	mov	r12, qword ptr [rsp + 0x60]
	ja	.label_620
	jmp	.label_626
.label_623:
	mov	r13, rbp
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x78]
	mov	eax, dword ptr [rax]
	test	eax, eax
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x10]
	je	.label_637
	mov	dword ptr [r12 + 0x40], eax
	mov	rax, qword ptr [rsp + 0x80]
	or	rax, rbp
	mov	rbp, rbp
	mov	ax, 7
	lea	rdi, [rdi]
	mov	cx, 4
	mov	rbp, rbp
	cmovne	cx, ax
	mov	word ptr [r12 + 0x70], cx
.label_637:
	nop	
	mov	rdi, qword ptr [r12 + 0x18]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_626
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
	jmp	.label_626
.label_653:
	mov	r13, rbp
	mov	rbp, qword ptr [rsp + 0x10]
.label_626:
	mov	rax, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	test	al, 1
	mov	rdi, qword ptr [rsp + 0x80]
	je	.label_593
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x20]
	nop	
	jmp	.label_578
	nop	word ptr cs:[rax + rax]
.label_587:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_578:
	test	rcx, rcx
	mov	rsp, rsp
	je	.label_585
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	lea	rdi, [rdi]
	je	.label_587
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	nop	
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_587
.label_585:
	cmp	qword ptr [r15 + 0x58], 0
	js	.label_593
	lea	rdi, [rdi]
	mov	rcx, r15
	nop	word ptr cs:[rax + rax]
.label_608:
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	lea	rdi, [rdi]
	cmp	rdx, rsi
	mov	rsp, rsp
	je	.label_599
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rcx + 0x38]
	nop	
	add	rdx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x30], rdx
.label_599:
	mov	qword ptr [rcx + 0x38], rax
	mov	rdx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	test	rdx, rdx
	jne	.label_604
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + 8]
.label_604:
	mov	rsp, rsp
	cmp	qword ptr [rdx + 0x58], 0
	mov	rcx, rdx
	lea	rdi, [rdi]
	jns	.label_608
.label_593:
	test	byte ptr [r13], 4
	mov	rsp, rsp
	je	.label_610
	mov	rax, qword ptr [rsp + 0x58]
	mov	rdx, rax
	mov	rbp, rbp
	lea	rax, [rdx - 1]
	mov	rcx, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x70]
	cmp	rsi, qword ptr [rcx + 0x30]
	cmove	rdx, rax
	test	rbp, rbp
	cmove	rdx, rax
	mov	byte ptr [rdx], 0
.label_610:
	nop	
	test	rdi, rdi
	jne	.label_618
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	mov	rbp, rbp
	je	.label_618
	cmp	dword ptr [rsp + 0x1c], 1
	je	.label_621
	lea	rsi, [rsi]
	test	rbp, rbp
	jne	.label_618
.label_621:
	mov	rbp, rbp
	cmp	qword ptr [r12 + 0x58], 0
	je	.label_627
	mov	rsi, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_3
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x88]
	call	fts_safe_changedir
	jmp	.label_632
.label_627:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x88]
	call	restore_initial_cwd
.label_632:
	test	eax, eax
	je	.label_618
	mov	word ptr [r12 + 0x70], 7
	nop	
	or	byte ptr [r13 + 1], 0x20
	nop	
	xor	ebx, ebx
	test	r15, r15
	je	.label_594
	nop	
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_643:
	mov	rbp, rbp
	mov	rbp, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	test	rdi, rdi
	mov	rsp, rsp
	je	.label_639
	mov	rsp, rsp
	call	closedir
.label_639:
	mov	rdi, r15
	mov	rsp, rsp
	call	free
	lea	rdi, [rdi]
	test	rbp, rbp
	mov	r15, rbp
	jne	.label_643
	nop	
	jmp	.label_594
.label_618:
	mov	rbp, rbp
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_625
	mov	eax, dword ptr [rsp]
	test	al, 1
	jne	.label_648
	cmp	rbp, 2
	nop	
	jb	.label_651
	nop	
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_654
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, rbp
	nop	
	call	fts_sort
	mov	rbx, rax
	lea	rdi, [rdi]
	jmp	.label_594
.label_625:
	cmp	dword ptr [rsp + 0x1c], 3
	nop	
	jne	.label_586
	movzx	eax, word ptr [r12 + 0x70]
	lea	rsi, [rsi]
	cmp	eax, 4
	nop	
	je	.label_586
	mov	rsp, rsp
	movzx	eax, ax
	cmp	eax, 7
	lea	rdi, [rdi]
	je	.label_586
	mov	word ptr [r12 + 0x70], 6
.label_586:
	xor	ebx, ebx
	mov	rsp, rsp
	test	r15, r15
	je	.label_594
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_603:
	mov	rbp, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_617
	call	closedir
.label_617:
	mov	rbp, rbp
	mov	rdi, r15
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	test	rbp, rbp
	lea	rdi, [rdi]
	mov	r15, rbp
	jne	.label_603
	jmp	.label_594
.label_648:
	mov	r14, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	qword ptr [word ptr [r14]], OFFSET FLAT:fts_compare_ino
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x88]
	mov	rsi, r15
	mov	rsp, rsp
	mov	rdx, rbp
	nop	
	call	fts_sort
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	qword ptr [r14], 0
	jmp	.label_594
.label_651:
	mov	rbx, r15
	mov	rsp, rsp
	jmp	.label_594
.label_654:
	lea	rdi, [rdi]
	mov	rbx, r15
	lea	rdi, [rdi]
	jmp	.label_594
.label_636:
	lea	rdi, [rdi]
	mov	rdi, r12
	call	free
	lea	rdi, [rdi]
	test	r15, r15
	je	.label_619
	nop	dword ptr [rax]
.label_629:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_614
	mov	rbp, rbp
	call	closedir
.label_614:
	mov	rsp, rsp
	mov	rdi, r15
	call	free
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	mov	r15, rbx
	jne	.label_629
.label_619:
	mov	rbx, qword ptr [rsp + 0x60]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x18]
	mov	rbp, rbp
	call	closedir
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x70], 7
	or	byte ptr [rbp + 1], 0x20
	mov	rax, qword ptr [rsp + 0x78]
	mov	dword ptr [rax], 0x24
	xor	ebx, ebx
	mov	rbp, rbp
	jmp	.label_594
.label_615:
	mov	rdi, r13
	mov	rbx, rcx
	lea	rsi, [rsi]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	nop	
	mov	rax, qword ptr [rsp + 0x78]
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x24
	mov	qword ptr [rsp + 0x40], r12
	jmp	.label_616
.label_622:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp + 0x20]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp + 0x20], 0
	mov	qword ptr [rsp + 0x40], r12
	mov	rbp, qword ptr [rsp + 0x90]
.label_616:
	mov	rax, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	mov	r14d, dword ptr [rax]
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	call	free
	test	r15, r15
	mov	r12, qword ptr [rsp + 0x60]
	nop	
	je	.label_652
	nop	word ptr cs:[rax + rax]
.label_584:
	mov	rbx, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	lea	rdi, [rdi]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_592
	nop	
	call	closedir
.label_592:
	mov	rdi, r15
	call	free
	nop	
	test	rbx, rbx
	mov	r15, rbx
	jne	.label_584
.label_652:
	mov	rsp, rsp
	mov	rdi, qword ptr [r12 + 0x18]
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x70], 7
	lea	rsi, [rsi]
	or	byte ptr [rbp + 1], 0x20
	mov	rax, qword ptr [rsp + 0x78]
	lea	rsi, [rsi]
	mov	dword ptr [rax], r14d
	xor	ebx, ebx
.label_594:
	mov	rax, rbx
	mov	rsp, rsp
	add	rsp, 0x98
	pop	rbx
	nop	
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a690

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
	jne	.label_659
	nop	
	test	ah, 2
	lea	rsi, [rsi]
	jne	.label_656
	mov	edi, dword ptr [rbx + 0x28]
	mov	rsp, rsp
	call	fchdir
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	setne	al
	jmp	.label_657
.label_659:
	xor	eax, eax
	jmp	.label_657
.label_656:
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbx + 0x2c]
	lea	rdi, [rbx + 0x60]
	mov	rbp, rbp
	call	i_ring_push
	test	eax, eax
	mov	rbp, rbp
	js	.label_661
	mov	rsp, rsp
	mov	edi, eax
	lea	rdi, [rdi]
	call	close
.label_661:
	nop	
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
	lea	rsi, [rsi]
	xor	eax, eax
.label_657:
	mov	rsp, rsp
	movzx	ebp, al
	lea	rsi, [rsi]
	add	rbx, 0x60
	jmp	.label_655
	nop	dword ptr [rax]
.label_660:
	mov	edi, eax
	mov	rbp, rbp
	call	close
.label_655:
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	i_ring_empty
	mov	rsp, rsp
	test	al, al
	nop	
	jne	.label_658
	mov	rdi, rbx
	call	i_ring_pop
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jns	.label_660
	lea	rsi, [rsi]
	jmp	.label_655
.label_658:
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
	#Procedure 0x40a760

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	mov	rsp, rsp
	cmp	edx, 5
	jb	.label_662
	nop	
	push	rax
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	mov	rbp, rbp
	add	rsp, 8
	ret	
.label_662:
	mov	rsp, rsp
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a790
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
	jne	.label_672
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
	jne	.label_666
	movzx	ecx, word ptr [r15 + 0x70]
	mov	rbp, rbp
	xor	eax, eax
	cmp	ecx, 1
	je	.label_676
	movzx	ecx, cx
	cmp	ecx, 9
	nop	
	jne	.label_666
	mov	rax, qword ptr [r15 + 0x10]
	jmp	.label_666
.label_672:
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x16
	mov	rsp, rsp
	xor	eax, eax
	nop	
	jmp	.label_666
.label_676:
	mov	rbx, qword ptr [r13 + 8]
	test	rbx, rbx
	nop	
	je	.label_665
	nop	word ptr cs:[rax + rax]
.label_671:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_663
	call	closedir
.label_663:
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	test	rbp, rbp
	nop	
	mov	rbx, rbp
	jne	.label_671
.label_665:
	mov	ebx, 1
	lea	rsi, [rsi]
	cmp	r12d, 0x1000
	jne	.label_675
	or	byte ptr [r13 + 0x49], 0x10
	mov	rsp, rsp
	mov	ebx, 2
.label_675:
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x58], 0
	nop	
	jne	.label_674
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x30]
	mov	rsp, rsp
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x2f
	je	.label_674
	mov	eax, dword ptr [r13 + 0x48]
	test	al, 4
	lea	rdi, [rdi]
	jne	.label_674
	mov	edx, eax
	and	edx, 0x10
	lea	rsi, [rsi]
	shl	edx, 0xd
	or	edx, 0x90900
	mov	rsp, rsp
	test	ah, 2
	jne	.label_677
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str_10
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, edx
	mov	rbp, rbp
	call	open_safer
	jmp	.label_667
.label_674:
	mov	rdi, r13
	mov	esi, ebx
	mov	rbp, rbp
	call	fts_build
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 8], rax
.label_666:
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
.label_677:
	mov	edi, dword ptr [r13 + 0x2c]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str_10
	xor	eax, eax
	call	openat_safer
.label_667:
	mov	r15d, eax
	test	r15d, r15d
	mov	rbp, rbp
	js	.label_670
	mov	rbp, rbp
	mov	rdi, r13
	mov	esi, ebx
	lea	rsi, [rsi]
	call	fts_build
	mov	rsp, rsp
	mov	qword ptr [r13 + 8], rax
	mov	rbp, rbp
	test	byte ptr [r13 + 0x49], 2
	jne	.label_679
	nop	
	mov	edi, r15d
	call	fchdir
	test	eax, eax
	je	.label_669
	lea	rdi, [rdi]
	mov	ebx, dword ptr [r14]
	mov	edi, r15d
	call	close
	mov	rsp, rsp
	mov	dword ptr [r14], ebx
	mov	rsp, rsp
	xor	eax, eax
	nop	
	jmp	.label_666
.label_670:
	lea	rdi, [rdi]
	mov	qword ptr [r13 + 8], 0
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_666
.label_679:
	mov	esi, dword ptr [r13 + 0x2c]
	mov	rbp, rbp
	cmp	esi, r15d
	mov	rsp, rsp
	jne	.label_668
	lea	rsi, [rsi]
	cmp	esi, -0x64
	jne	.label_673
.label_668:
	lea	rdi, [r13 + 0x60]
	call	i_ring_push
	test	eax, eax
	mov	rbp, rbp
	js	.label_678
	mov	edi, eax
	mov	rbp, rbp
	call	close
.label_678:
	mov	dword ptr [r13 + 0x2c], r15d
	jmp	.label_664
.label_669:
	lea	rsi, [rsi]
	mov	edi, r15d
	call	close
.label_664:
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 8]
	jmp	.label_666
.label_673:
	mov	rbp, rbp
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a9f0

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
	#Procedure 0x40aa10

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	mov	rbp, rbp
	jne	.label_680
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	mov	rsp, rsp
	ret	
.label_680:
	mov	rsp, rsp
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aa40

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
	je	.label_681
	mov	rbp, qword ptr [rbx + 0x50]
	mov	rbp, rbp
	test	rbp, rbp
	jne	.label_685
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
	je	.label_683
.label_685:
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
	je	.label_686
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	jmp	.label_681
.label_686:
	mov	r12b, 1
	mov	r14, rbp
.label_683:
	xor	eax, eax
	nop	
	test	r15d, r15d
	js	.label_681
	lea	rsi, [rsp + 0x10]
	mov	edi, r15d
	mov	rbp, rbp
	call	fstatfs
	mov	ecx, eax
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	test	ecx, ecx
	jne	.label_681
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_682
	mov	edi, 0x10
	lea	rsi, [rsi]
	call	malloc
	mov	rbp, rax
	nop	
	test	rbp, rbp
	je	.label_682
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
	je	.label_684
	nop	
	cmp	rax, rbp
	lea	rsi, [rsi]
	je	.label_682
	lea	rdi, [rdi]
	call	abort
.label_684:
	mov	rdi, rbp
	call	free
.label_682:
	mov	rax, qword ptr [rsp + 0x10]
.label_681:
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
	#Procedure 0x40abb0

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
	#Procedure 0x40abd0

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
	#Procedure 0x40abe0

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
	#Procedure 0x40ac20

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
	je	.label_687
	nop	
	cmp	r15, -2
	jb	.label_687
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_687
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_687:
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
	#Procedure 0x40acb0

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
	jne	.label_688
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_689
	test	cl, cl
	mov	rsp, rsp
	jne	.label_689
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_689
.label_688:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_689
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_689:
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
	#Procedure 0x40ad40

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
	#Procedure 0x40ad60

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	nop	
	cmp	dword ptr [rdi + 0x18], 0x95f616
	jne	.label_690
	mov	rbp, rbp
	mov	rcx, qword ptr [rdi + 0x10]
	test	rcx, rcx
	je	.label_693
	mov	rax, qword ptr [rsi + 8]
	cmp	rax, qword ptr [rdi]
	nop	
	jne	.label_693
	mov	rsp, rsp
	mov	rdx, qword ptr [rsi]
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	je	.label_692
.label_693:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 1]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x10], rdx
	mov	rbp, rbp
	test	rdx, rcx
	jne	.label_691
	mov	al, 1
	test	rdx, rdx
	lea	rsi, [rsi]
	je	.label_692
	mov	rax, qword ptr [rsi]
	nop	
	mov	qword ptr [rdi + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi], rax
.label_691:
	mov	rsp, rsp
	xor	eax, eax
.label_692:
	ret	
.label_690:
	push	rax
	mov	edi, OFFSET FLAT:.str_11
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 0x3c
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.cycle_check
	nop	
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40adf0

	.globl open_safer
	.type open_safer, @function
open_safer:
	mov	rsp, rsp
	sub	rsp, 0xc8
	nop	
	test	al, al
	mov	rbp, rbp
	je	.label_694
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
.label_694:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	xor	edx, edx
	nop	
	test	sil, 0x40
	je	.label_695
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
	ja	.label_697
	lea	rsi, [rsi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_696
.label_697:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_696:
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax]
.label_695:
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
	#Procedure 0x40af10

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
	je	.label_699
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_698
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_700
.label_698:
	nop	
	mov	esi, OFFSET FLAT:.str.1_9
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_699
.label_700:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_699:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40af60
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40af70
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40af80
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40af90
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
	jae	.label_707
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
	jb	.label_703
	xor	eax, eax
	nop	
	cmp	qword ptr [rcx], 0
	mov	rsp, rsp
	je	.label_705
	mov	rbp, rbp
	mov	rdi, rcx
	nop	dword ptr [rax]
.label_701:
	nop	
	mov	rdi, qword ptr [rdi + 8]
	inc	rax
	mov	rsp, rsp
	test	rdi, rdi
	lea	rdi, [rdi]
	jne	.label_701
.label_705:
	add	rcx, 0x10
.label_703:
	nop	
	test	rsi, rsi
	je	.label_707
	nop	word ptr cs:[rax + rax]
.label_709:
	cmp	qword ptr [rcx], 0
	nop	
	mov	esi, 0
	mov	rdi, rcx
	mov	rbp, rbp
	je	.label_702
	nop	word ptr cs:[rax + rax]
.label_708:
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_708
	mov	rbp, rbp
	cmp	rsi, rax
	lea	rsi, [rsi]
	cmova	rax, rsi
.label_702:
	cmp	qword ptr [rcx + 0x10], 0
	nop	
	je	.label_706
	lea	rdi, [rcx + 0x10]
	xor	esi, esi
	nop	word ptr [rax + rax]
.label_704:
	mov	rdi, qword ptr [rdi + 8]
	mov	rbp, rbp
	inc	rsi
	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rsi, [rsi]
	jne	.label_704
	mov	rsp, rsp
	cmp	rsi, rax
	nop	
	cmova	rax, rsi
.label_706:
	mov	rsp, rsp
	add	rcx, 0x20
	mov	rsp, rsp
	cmp	rcx, rdx
	mov	rsp, rsp
	jb	.label_709
.label_707:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b0a0
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
	jae	.label_719
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
	jb	.label_710
	xor	edx, edx
	cmp	qword ptr [rcx], 0
	mov	rsp, rsp
	je	.label_720
	mov	esi, 1
	mov	rax, rcx
	nop	dword ptr [rax + rax]
.label_711:
	mov	rbp, rbp
	inc	rdx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	test	rax, rax
	jne	.label_711
	mov	rsp, rsp
	jmp	.label_716
.label_710:
	mov	rbp, rbp
	xor	esi, esi
	jmp	.label_718
.label_720:
	xor	esi, esi
.label_716:
	add	rcx, 0x10
.label_718:
	test	r8, r8
	nop	
	je	.label_719
	nop	dword ptr [rax]
.label_712:
	cmp	qword ptr [rcx], 0
	mov	rbp, rbp
	mov	rax, rcx
	je	.label_721
	nop	dword ptr [rax]
.label_714:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	jne	.label_714
	lea	rdi, [rdi]
	inc	rsi
.label_721:
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_717
	lea	rax, [rcx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_722:
	lea	rdi, [rdi]
	inc	rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_722
	inc	rsi
.label_717:
	add	rcx, 0x20
	cmp	rcx, r9
	jb	.label_712
.label_719:
	cmp	rsi, qword ptr [rdi + 0x18]
	jne	.label_713
	lea	rdi, [rdi]
	mov	al, 1
	nop	
	cmp	rdx, qword ptr [rdi + 0x20]
	lea	rsi, [rsi]
	je	.label_715
.label_713:
	xor	eax, eax
.label_715:
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b1b0
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
	jae	.label_729
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
	jb	.label_731
	mov	rbp, rbp
	xor	ebx, ebx
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_723
	mov	rsp, rsp
	mov	rdi, rax
	nop	word ptr [rax + rax]
.label_732:
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 8]
	inc	rbx
	nop	
	test	rdi, rdi
	lea	rdi, [rdi]
	jne	.label_732
.label_723:
	add	rax, 0x10
.label_731:
	test	rsi, rsi
	je	.label_729
	nop	dword ptr [rax]
.label_728:
	cmp	qword ptr [rax], 0
	mov	esi, 0
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	je	.label_724
	nop	word ptr cs:[rax + rax]
.label_730:
	mov	rdi, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	inc	rsi
	nop	
	test	rdi, rdi
	jne	.label_730
	mov	rbp, rbp
	cmp	rsi, rbx
	cmova	rbx, rsi
.label_724:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_733
	lea	rdi, [rax + 0x10]
	xor	esi, esi
	nop	word ptr [rax + rax]
.label_734:
	mov	rdi, qword ptr [rdi + 8]
	mov	rsp, rsp
	inc	rsi
	test	rdi, rdi
	jne	.label_734
	mov	rbp, rbp
	cmp	rsi, rbx
	mov	rbp, rbp
	cmova	rbx, rsi
.label_733:
	add	rax, 0x20
	nop	
	cmp	rax, rdx
	jb	.label_728
.label_729:
	lea	rsi, [rsi]
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_12
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.1_10
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	nop	
	call	__fprintf_chk
	nop	
	movq	xmm1, r14
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_725]]
	punpckldq	xmm1, xmm2
	lea	rsi, [rsi]
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_726]]
	nop	
	subpd	xmm1, xmm3
	lea	rdi, [rdi]
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	lea	rsi, [rsi]
	mulsd	xmm0,  qword ptr [word ptr [rip + label_727]]
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
	#Procedure 0x40b3c0

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
	jae	.label_737
	mov	rbx, qword ptr [r14]
	nop	
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	mov	rsp, rsp
	test	rsi, rsi
	je	.label_735
	lea	rsi, [rsi]
	add	rbx, rax
	je	.label_735
	cmp	rsi, r12
	je	.label_736
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_739:
	nop	
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_738
	nop	
	mov	rbx, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_735
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx]
	nop	
	cmp	rsi, r12
	lea	rdi, [rdi]
	jne	.label_739
.label_736:
	mov	r15, r12
	jmp	.label_735
.label_738:
	nop	
	mov	r15, qword ptr [rbx]
.label_735:
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
.label_737:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b480
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	mov	rbp, rbp
	je	.label_740
	nop	
	mov	rcx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdi + 8]
	mov	rbp, rbp
	jmp	.label_743
	nop	dword ptr [rax]
.label_742:
	add	rcx, 0x10
.label_743:
	cmp	rcx, rdx
	jae	.label_741
	mov	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_742
.label_740:
	mov	rsp, rsp
	ret	
.label_741:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b4c0
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
	jae	.label_749
	nop	
	mov	rcx, qword ptr [r14]
	lea	rdi, [rdi]
	shl	rax, 4
	nop	
	lea	rdx, [rcx + rax]
	nop	word ptr [rax + rax]
.label_746:
	nop	
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	je	.label_744
	test	rdx, rdx
	jne	.label_746
	lea	rdi, [rdi]
	jmp	.label_745
.label_744:
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_745
	mov	rax, qword ptr [rdx]
	jmp	.label_747
.label_745:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rax + rcx + 0x10]
	nop	dword ptr [rax]
.label_748:
	mov	rbp, rbp
	cmp	rcx, rdx
	mov	eax, 0
	mov	rbp, rbp
	jae	.label_747
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_748
.label_747:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_749:
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b560
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	nop
	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_750
	nop	word ptr cs:[rax + rax]
.label_752:
	add	r9, 0x10
.label_750:
	nop	
	cmp	r9, r8
	lea	rdi, [rdi]
	jae	.label_751
	lea	rsi, [rsi]
	cmp	qword ptr [r9], 0
	je	.label_752
	test	r9, r9
	mov	rbp, rbp
	mov	r10, r9
	mov	rbp, rbp
	je	.label_752
	nop	word ptr cs:[rax + rax]
.label_753:
	mov	rsp, rsp
	cmp	rax, rdx
	jae	.label_751
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
	jne	.label_753
	mov	r8, qword ptr [rdi + 8]
	jmp	.label_752
.label_751:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b5e0
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
	jmp	.label_754
	nop	dword ptr [rax]
.label_755:
	lea	rsi, [rsi]
	add	r13, 0x10
.label_754:
	nop	
	cmp	r13, rax
	lea	rsi, [rsi]
	jae	.label_756
	mov	rdi, qword ptr [r13]
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_755
	test	r13, r13
	lea	rdi, [rdi]
	je	.label_755
	mov	rsi, r14
	lea	rsi, [rsi]
	call	r15
	mov	rbp, rbp
	test	al, al
	mov	rbp, r13
	mov	rsp, rsp
	je	.label_756
	nop	word ptr [rax + rax]
.label_758:
	mov	rsp, rsp
	inc	rbx
	mov	rbp, rbp
	mov	rbp, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	test	rbp, rbp
	je	.label_757
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_758
	jmp	.label_756
	nop	word ptr cs:[rax + rax]
.label_757:
	mov	rax, qword ptr [r12 + 8]
	mov	rbp, rbp
	jmp	.label_755
.label_756:
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
	#Procedure 0x40b6b0
	.globl hash_string
	.type hash_string, @function
hash_string:

	nop
	mov	al, byte ptr [rdi]
	nop	
	xor	edx, edx
	test	al, al
	je	.label_760
	inc	rdi
	nop	
	xor	edx, edx
.label_759:
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
	jne	.label_759
.label_760:
	mov	rax, rdx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b6f0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	nop
	mov	eax,  dword ptr [dword ptr [rip + label_761]]
	mov	dword ptr [rdi + 0x10], eax
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b710

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
	je	.label_766
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	mov	rbp, rbp
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_775
	movss	xmm0, dword ptr [rbx + 8]
	mov	rsp, rsp
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_768]]
	jbe	.label_763
	lea	rsi, [rsi]
	movss	xmm1,  dword ptr [dword ptr [rip + label_772]]
	ucomiss	xmm1, xmm0
	jbe	.label_763
	mov	rbp, rbp
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_762]]
	lea	rsi, [rsi]
	jbe	.label_763
	movss	xmm1, dword ptr [rbx]
	lea	rsi, [rsi]
	xorps	xmm2, xmm2
	lea	rsi, [rsi]
	ucomiss	xmm1, xmm2
	jb	.label_763
	addss	xmm1,  dword ptr [dword ptr [rip + label_768]]
	ucomiss	xmm0, xmm1
	lea	rdi, [rdi]
	jbe	.label_763
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbx + 4]
	lea	rdi, [rdi]
	movss	xmm2,  dword ptr [dword ptr [rip + label_769]]
	ucomiss	xmm2, xmm0
	jb	.label_763
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	mov	rsp, rsp
	jbe	.label_763
.label_775:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_773
	lea	rsi, [rsi]
	mov	eax, r12d
	and	eax, 1
	nop	
	test	r12, r12
	js	.label_774
	mov	rbp, rbp
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_764
.label_774:
	shr	r12, 1
	mov	rsp, rsp
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	lea	rdi, [rdi]
	addss	xmm0, xmm0
.label_764:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_770]]
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
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_771]]
	nop	
	jae	.label_763
.label_773:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	mov	rsp, rsp
	jmp	.label_777
.label_776:
	mov	rbp, rbp
	add	rbx, 2
.label_777:
	cmp	rbx, -1
	mov	rbp, rbp
	je	.label_763
	cmp	rbx, 0xa
	mov	rbp, rbp
	mov	esi, 0xc
	mov	edi, 9
	mov	rbp, rbp
	mov	ecx, 3
	lea	rdi, [rdi]
	jb	.label_767
	nop	word ptr cs:[rax + rax]
.label_765:
	xor	edx, edx
	mov	rax, rbx
	lea	rsi, [rsi]
	div	rcx
	test	rdx, rdx
	nop	
	je	.label_767
	mov	rbp, rbp
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	mov	rsp, rsp
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_765
.label_767:
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_776
	mov	rbp, rbp
	mov	rax, rbx
	lea	rdi, [rdi]
	shr	rax, 0x3c
	jne	.label_763
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_763
	mov	esi, 0x10
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	rpl_calloc
	lea	rsi, [rsi]
	mov	qword ptr [r15], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_763
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
	jmp	.label_766
.label_763:
	nop	
	mov	rdi, r15
	call	free
	nop	
	xor	eax, eax
.label_766:
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
	#Procedure 0x40b9f0

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
	#Procedure 0x40ba10

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
	#Procedure 0x40ba20
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
	jmp	.label_778
.label_781:
	mov	rsp, rsp
	add	r14, 0x10
.label_778:
	cmp	r14, rax
	jae	.label_779
	lea	rdi, [rdi]
	cmp	qword ptr [r14], 0
	nop	
	je	.label_781
	mov	rsp, rsp
	mov	rbx, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	nop	
	setne	cl
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_784
	nop	word ptr [rax + rax]
.label_782:
	nop	
	test	cl, 1
	je	.label_783
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	call	rax
	nop	
	mov	rax, qword ptr [r15 + 0x40]
.label_783:
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
	jne	.label_782
.label_784:
	test	cl, cl
	je	.label_780
	mov	rdi, qword ptr [r14]
	call	rax
.label_780:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	nop	
	jmp	.label_781
.label_779:
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
	#Procedure 0x40bb00

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
	je	.label_785
	lea	rdi, [rdi]
	cmp	qword ptr [r14 + 0x20], 0
	lea	rdi, [rdi]
	je	.label_785
	mov	r15, qword ptr [r14]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 8]
	mov	rbp, rbp
	jmp	.label_793
	nop	word ptr [rax + rax]
.label_786:
	mov	rsp, rsp
	add	r15, 0x10
.label_793:
	lea	rdi, [rdi]
	cmp	r15, rax
	jae	.label_785
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_786
	test	r15, r15
	je	.label_786
	mov	rbp, rbp
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_791
	nop	dword ptr [rax]
.label_790:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_791:
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_790
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_786
.label_785:
	mov	r15, qword ptr [r14]
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	jmp	.label_787
	nop	dword ptr [rax + rax]
.label_788:
	mov	rbp, rbp
	add	r15, 0x10
.label_787:
	cmp	r15, rax
	jae	.label_792
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_788
	nop	dword ptr [rax + rax]
.label_794:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_794
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_788
.label_792:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_789
	nop	word ptr cs:[rax + rax]
.label_795:
	nop	
	mov	rbx, qword ptr [rdi + 8]
	call	free
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	jne	.label_795
.label_789:
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
	#Procedure 0x40bc30

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
	jne	.label_811
	lea	rsi, [rsi]
	mov	ecx, esi
	nop	
	and	ecx, 1
	lea	rsi, [rsi]
	test	rsi, rsi
	js	.label_805
	lea	rdi, [rdi]
	cvtsi2ss	xmm0, rsi
	lea	rdi, [rdi]
	jmp	.label_810
.label_805:
	shr	rsi, 1
	or	rcx, rsi
	mov	rsp, rsp
	cvtsi2ss	xmm0, rcx
	mov	rbp, rbp
	addss	xmm0, xmm0
.label_810:
	nop	
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_770]]
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
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_771]]
	mov	rbp, rbp
	jae	.label_798
.label_811:
	mov	rsp, rsp
	cmp	rsi, 0xa
	mov	rbp, rbp
	mov	ebx, 0xa
	mov	rbp, rbp
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_808
	nop	word ptr cs:[rax + rax]
.label_807:
	lea	rsi, [rsi]
	add	rbx, 2
.label_808:
	cmp	rbx, -1
	je	.label_798
	cmp	rbx, 0xa
	mov	rbp, rbp
	mov	esi, 0xc
	nop	
	mov	edi, 9
	lea	rsi, [rsi]
	mov	ecx, 3
	lea	rsi, [rsi]
	jb	.label_796
.label_799:
	nop	
	xor	edx, edx
	mov	rax, rbx
	nop	
	div	rcx
	test	rdx, rdx
	je	.label_796
	lea	rdi, [rdi + rsi + 4]
	nop	
	add	rcx, 2
	add	rsi, 8
	lea	rsi, [rsi]
	cmp	rdi, rbx
	jb	.label_799
.label_796:
	mov	rsp, rsp
	xor	edx, edx
	nop	
	mov	rax, rbx
	div	rcx
	mov	rsp, rsp
	test	rdx, rdx
	je	.label_807
	nop	
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rsi, [rsi]
	ja	.label_798
	mov	bpl, 1
	mov	rbp, rbp
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_802
	nop	
	mov	esi, 0x10
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_798
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
	je	.label_803
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
	jmp	.label_802
.label_803:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x48], rax
	nop	
	mov	r12, qword ptr [rsp]
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jmp	.label_804
.label_797:
	add	r12, 0x10
.label_804:
	nop	
	cmp	r12, r15
	lea	rsi, [rsi]
	jae	.label_800
	cmp	qword ptr [r12], 0
	je	.label_797
	mov	rbp, rbp
	mov	rbp, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_812
	mov	rbp, rbp
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_809:
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp]
	nop	
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	lea	rsi, [rsi]
	jae	.label_814
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	nop	
	shl	rax, 4
	lea	rdi, [rdi]
	cmp	qword ptr [rdx + rax], 0
	je	.label_813
	mov	rbp, rbp
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp + 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_801
	nop	
.label_813:
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
.label_801:
	mov	rbp, rbp
	test	rcx, rcx
	mov	rbp, rcx
	nop	
	jne	.label_809
.label_812:
	nop	
	mov	qword ptr [r12 + 8], 0
	nop	
	jmp	.label_797
.label_800:
	nop	
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rbp, rbp
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_806
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp]
	call	free
.label_798:
	mov	rbp, rbp
	xor	ebp, ebp
.label_802:
	mov	al, bpl
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
.label_814:
	mov	rbp, rbp
	call	abort
.label_806:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bfa0

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
	mov	qword ptr [rsp], rsi
	mov	r15, rdi
	mov	rbp, rbp
	mov	r13, qword ptr [rsi]
	mov	rbp, rbp
	mov	rax, qword ptr [rsi + 8]
	nop	
	cmp	r13, rax
	nop	
	jae	.label_820
	nop	
	test	dl, dl
	je	.label_825
	nop	dword ptr [rax]
.label_835:
	nop	
	cmp	qword ptr [r13], 0
	mov	rbp, rbp
	je	.label_816
	lea	rdi, [rdi]
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_830
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r15 + 0x10]
	nop	dword ptr [rax]
.label_824:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	nop	
	call	qword ptr [r15 + 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	cmp	rax, rsi
	jae	.label_823
	mov	rbp, rbp
	mov	rdx, qword ptr [r15]
	mov	rcx, qword ptr [rbp + 8]
	nop	
	shl	rax, 4
	mov	rsp, rsp
	cmp	qword ptr [rdx + rax], 0
	lea	rsi, [rsi]
	je	.label_832
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rdx + rax + 8], rbp
	nop	
	jmp	.label_821
	nop	word ptr cs:[rax + rax]
.label_832:
	mov	rbp, rbp
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r15 + 0x18]
	nop	
	mov	qword ptr [rbp], 0
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rbp + 8], rax
	nop	
	mov	qword ptr [r15 + 0x48], rbp
.label_821:
	test	rcx, rcx
	mov	rbp, rcx
	mov	rsp, rsp
	jne	.label_824
	mov	rax, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
.label_830:
	mov	rsp, rsp
	mov	qword ptr [r13 + 8], 0
.label_816:
	mov	rsp, rsp
	add	r13, 0x10
	mov	rsp, rsp
	cmp	r13, rax
	jb	.label_835
	jmp	.label_820
	nop	word ptr cs:[rax + rax]
.label_825:
	mov	rbp, rbp
	mov	r12, qword ptr [r13]
	mov	rbp, rbp
	test	r12, r12
	mov	rsp, rsp
	je	.label_819
	lea	rdi, [rdi]
	mov	r14, qword ptr [r13 + 8]
	test	r14, r14
	mov	rsi, qword ptr [r15 + 0x10]
	nop	
	je	.label_834
	nop	dword ptr [rax + rax]
.label_831:
	mov	rbx, qword ptr [r14]
	mov	rdi, rbx
	nop	
	call	qword ptr [r15 + 0x30]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	cmp	rax, rsi
	jae	.label_823
	mov	rdx, qword ptr [r15]
	nop	
	mov	rcx, qword ptr [r14 + 8]
	nop	
	shl	rax, 4
	nop	
	cmp	qword ptr [rdx + rax], 0
	mov	rsp, rsp
	je	.label_829
	mov	rdi, qword ptr [rdx + rax + 8]
	nop	
	mov	qword ptr [r14 + 8], rdi
	mov	qword ptr [rdx + rax + 8], r14
	lea	rdi, [rdi]
	jmp	.label_817
	nop	word ptr [rax + rax]
.label_829:
	add	rdx, rax
	nop	
	mov	qword ptr [rdx], rbx
	mov	rbp, rbp
	inc	qword ptr [r15 + 0x18]
	mov	qword ptr [r14], 0
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x48]
	nop	
	mov	qword ptr [r14 + 8], rax
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x48], r14
.label_817:
	mov	rbp, rbp
	test	rcx, rcx
	mov	r14, rcx
	jne	.label_831
	mov	r12, qword ptr [r13]
.label_834:
	mov	rbp, rbp
	mov	qword ptr [r13 + 8], 0
	mov	rbp, rbp
	mov	rdi, r12
	call	qword ptr [r15 + 0x30]
	nop	
	mov	rbx, rax
	mov	rbp, rbp
	cmp	rbx, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	jae	.label_833
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	lea	rdi, [rdi]
	cmp	qword ptr [rbp + rbx], 0
	je	.label_818
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x48]
	test	rax, rax
	je	.label_822
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x48], rcx
	jmp	.label_826
	nop	word ptr cs:[rax + rax]
.label_818:
	lea	rsi, [rsi]
	add	rbp, rbx
	mov	rbp, rbp
	mov	qword ptr [rbp], r12
	inc	qword ptr [r15 + 0x18]
	lea	rsi, [rsi]
	jmp	.label_815
.label_822:
	mov	rbp, rbp
	mov	edi, 0x10
	mov	rsp, rsp
	call	malloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_827
.label_826:
	mov	qword ptr [rax], r12
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + rbx + 8]
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp + rbx + 8], rax
.label_815:
	mov	qword ptr [r13], 0
	nop	
	mov	rax, qword ptr [rsp]
	mov	rbp, rbp
	dec	qword ptr [rax + 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
.label_819:
	mov	rsp, rsp
	add	r13, 0x10
	cmp	r13, rax
	nop	
	jb	.label_825
.label_820:
	nop	
	mov	al, 1
.label_828:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_827:
	xor	eax, eax
	jmp	.label_828
.label_823:
	call	abort
.label_833:
	mov	rsp, rsp
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c2b0

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
	je	.label_849
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
	jae	.label_849
	mov	rbx, qword ptr [r13]
	mov	rbp, rbp
	shl	rbp, 4
	mov	rbp, rbp
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	nop	
	test	rsi, rsi
	je	.label_836
	mov	rsp, rsp
	cmp	rsi, r14
	je	.label_845
	mov	rdi, r14
	nop	
	call	qword ptr [r13 + 0x38]
	test	al, al
	lea	rdi, [rdi]
	je	.label_850
	mov	rax, qword ptr [r12]
	lea	rdi, [rdi]
	jmp	.label_839
.label_845:
	mov	rax, r14
	jmp	.label_853
.label_850:
	mov	rax, qword ptr [rbx + rbp + 8]
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_836
	lea	rbp, [rbx + rbp + 8]
	nop	
.label_865:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	mov	rsp, rsp
	je	.label_852
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	mov	rsp, rsp
	test	al, al
	jne	.label_863
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_865
	nop	
	jmp	.label_836
.label_852:
	mov	rbp, rbp
	mov	rax, r14
	jmp	.label_839
.label_863:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp]
.label_839:
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_836
.label_853:
	lea	rdi, [rdi]
	xor	ebp, ebp
	test	r15, r15
	je	.label_840
	lea	rsi, [rsi]
	mov	qword ptr [r15], rax
	mov	rsp, rsp
	jmp	.label_840
.label_836:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsp, rsp
	mov	edx, eax
	and	edx, 1
	nop	
	test	rax, rax
	mov	rbp, rbp
	js	.label_854
	cvtsi2ss	xmm1, rax
	jmp	.label_858
.label_854:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	lea	rdi, [rdi]
	addss	xmm1, xmm1
.label_858:
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	edx, ecx
	and	edx, 1
	mov	rbp, rbp
	test	rcx, rcx
	mov	rbp, rbp
	js	.label_864
	cvtsi2ss	xmm0, rcx
	jmp	.label_843
.label_864:
	shr	rcx, 1
	or	rdx, rcx
	lea	rsi, [rsi]
	cvtsi2ss	xmm0, rdx
	lea	rdi, [rdi]
	addss	xmm0, xmm0
.label_843:
	lea	rdi, [rdi]
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm1, xmm3
	nop	
	jbe	.label_838
	nop	
	mov	ecx, OFFSET FLAT:default_tuning
	mov	rsp, rsp
	cmp	rax, rcx
	mov	rbp, rbp
	je	.label_856
	ucomiss	xmm2,  dword ptr [dword ptr [rip + label_768]]
	jbe	.label_844
	nop	
	movss	xmm3,  dword ptr [dword ptr [rip + label_772]]
	ucomiss	xmm3, xmm2
	jbe	.label_844
	mov	rbp, rbp
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_762]]
	jbe	.label_844
	movss	xmm3, dword ptr [rax]
	lea	rsi, [rsi]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	lea	rdi, [rdi]
	jb	.label_844
	addss	xmm3,  dword ptr [dword ptr [rip + label_768]]
	ucomiss	xmm2, xmm3
	jbe	.label_844
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5,  dword ptr [dword ptr [rip + label_769]]
	ucomiss	xmm5, xmm4
	mov	rbp, rbp
	jb	.label_844
	lea	rsi, [rsi]
	ucomiss	xmm4, xmm3
	lea	rsi, [rsi]
	ja	.label_842
.label_844:
	mov	qword ptr [word ptr [r13 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	lea	rdi, [rdi]
	movss	xmm2,  dword ptr [dword ptr [rip + label_846]]
	jmp	.label_842
.label_856:
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:default_tuning
.label_842:
	movaps	xmm3, xmm2
	mov	rsp, rsp
	mulss	xmm3, xmm0
	lea	rsi, [rsi]
	ucomiss	xmm1, xmm3
	jbe	.label_838
	nop	
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rbp, rbp
	jne	.label_866
	mov	rbp, rbp
	mulss	xmm0, xmm2
.label_866:
	lea	rsi, [rsi]
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_771]]
	mov	rsp, rsp
	jae	.label_840
	nop	
	movss	xmm1,  dword ptr [dword ptr [rip + label_770]]
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
	je	.label_840
	mov	rsi, qword ptr [r13 + 0x10]
	nop	
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	lea	rsi, [rsi]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_849
	nop	
	mov	r15, qword ptr [r13]
	mov	rsp, rsp
	shl	rbp, 4
	mov	rbp, rbp
	lea	r12, [r15 + rbp]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + rbp]
	test	rsi, rsi
	je	.label_838
	cmp	rsi, r14
	mov	rbp, rbp
	mov	rax, r14
	lea	rdi, [rdi]
	je	.label_848
	mov	rdi, r14
	mov	rbp, rbp
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_855
	mov	rbp, rbp
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	jmp	.label_848
.label_855:
	mov	rax, qword ptr [r15 + rbp + 8]
	nop	
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_838
	lea	rbp, [r15 + rbp + 8]
.label_841:
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	lea	rdi, [rdi]
	je	.label_861
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsp, rsp
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	mov	rsp, rsp
	test	al, al
	mov	rsp, rsp
	jne	.label_837
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 8]
	mov	rsp, rsp
	add	rbp, 8
	test	rax, rax
	mov	rsp, rsp
	jne	.label_841
	lea	rsi, [rsi]
	jmp	.label_838
.label_861:
	mov	rax, r14
	lea	rdi, [rdi]
	jmp	.label_848
.label_837:
	mov	rax, qword ptr [rbp]
.label_848:
	mov	rsp, rsp
	test	rax, rax
	jne	.label_851
.label_838:
	cmp	qword ptr [r12], 0
	je	.label_862
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	mov	rbp, rbp
	je	.label_857
	mov	rcx, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [r13 + 0x48], rcx
	nop	
	jmp	.label_847
.label_862:
	lea	rsi, [rsi]
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0,  xmmword ptr [word ptr [rip + label_859]]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	mov	rsp, rsp
	jmp	.label_860
.label_857:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_840
.label_847:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_860:
	lea	rdi, [rdi]
	mov	ebp, 1
.label_840:
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
.label_849:
	mov	rsp, rsp
	call	abort
.label_851:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c6f0

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
	je	.label_867
	nop	
	test	ecx, ecx
	mov	rbp, rbp
	cmove	rbx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rax, rbx
.label_867:
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbx
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c740

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
	jae	.label_887
	mov	rbp, rbp
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	nop	
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_883
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_871
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rsp, rsp
	test	al, al
	nop	
	je	.label_876
	mov	r14, qword ptr [r13]
.label_871:
	nop	
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_879
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
	jmp	.label_882
.label_876:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_883
	lea	rsi, [rsi]
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_878:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_870
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	mov	rsp, rsp
	jne	.label_873
	mov	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	lea	rsi, [rsi]
	jne	.label_878
	lea	rsi, [rsi]
	jmp	.label_883
.label_879:
	mov	qword ptr [r13], 0
	lea	rsi, [rsi]
	jmp	.label_882
.label_870:
	mov	rcx, rax
	jmp	.label_885
.label_873:
	mov	r14, qword ptr [rcx]
.label_885:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x48], rcx
.label_882:
	lea	rdi, [rdi]
	xor	r12d, r12d
	test	r14, r14
	je	.label_883
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	mov	rbp, rbp
	jne	.label_869
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_874
	mov	rsp, rsp
	cvtsi2ss	xmm1, rax
	jmp	.label_880
.label_874:
	shr	rax, 1
	mov	rsp, rsp
	or	rcx, rax
	mov	rsp, rsp
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_880:
	mov	rcx, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	nop	
	test	rcx, rcx
	js	.label_886
	cvtsi2ss	xmm0, rcx
	mov	rsp, rsp
	jmp	.label_888
.label_886:
	mov	rbp, rbp
	shr	rcx, 1
	or	rdx, rcx
	nop	
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_888:
	movaps	xmm3, xmm2
	nop	
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_869
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	lea	rsi, [rsi]
	je	.label_875
	lea	rdi, [rdi]
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_768]]
	nop	
	jbe	.label_868
	mov	rsp, rsp
	movss	xmm4,  dword ptr [dword ptr [rip + label_772]]
	ucomiss	xmm4, xmm3
	mov	rsp, rsp
	jbe	.label_868
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_868
	mov	rbp, rbp
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4,  dword ptr [dword ptr [rip + label_762]]
	jbe	.label_868
	lea	rsi, [rsi]
	movss	xmm4,  dword ptr [dword ptr [rip + label_768]]
	addss	xmm4, xmm2
	mov	rbp, rbp
	ucomiss	xmm3, xmm4
	jbe	.label_868
	movss	xmm3, dword ptr [rax + 4]
	nop	
	movss	xmm5,  dword ptr [dword ptr [rip + label_769]]
	nop	
	ucomiss	xmm5, xmm3
	jb	.label_868
	ucomiss	xmm3, xmm4
	ja	.label_872
.label_868:
	mov	qword ptr [word ptr [r15 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_872
.label_875:
	mov	eax, OFFSET FLAT:default_tuning
.label_872:
	mulss	xmm2, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm2, xmm1
	jbe	.label_869
	mulss	xmm0, dword ptr [rax + 4]
	mov	rbp, rbp
	cmp	byte ptr [rax + 0x10], 0
	mov	rsp, rsp
	jne	.label_884
	mulss	xmm0, dword ptr [rax + 8]
.label_884:
	movss	xmm1,  dword ptr [dword ptr [rip + label_770]]
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
	jne	.label_869
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_877
.label_881:
	nop	
	mov	rbx, qword ptr [rdi + 8]
	mov	rsp, rsp
	call	free
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	jne	.label_881
.label_877:
	nop	
	mov	qword ptr [r15 + 0x48], 0
.label_869:
	nop	
	mov	r12, r14
.label_883:
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
.label_887:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ca90

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
	#Procedure 0x40cad0

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cae0

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
	jne	.label_889
	lea	rsi, [rsi]
	mov	dl, byte ptr [rdi + 0x1c]
	mov	rbp, rbp
	xor	dl, 1
	movzx	edx, dl
	mov	rbp, rbp
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_889:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cb30

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	nop	
	cmp	byte ptr [rdi + 0x1c], 0
	lea	rdi, [rdi]
	jne	.label_890
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
	jne	.label_891
	lea	rsi, [rsi]
	mov	byte ptr [rdi + 0x1c], 1
	lea	rdi, [rdi]
	ret	
.label_891:
	add	ecx, 3
	and	ecx, 3
	lea	rsi, [rsi]
	mov	dword ptr [rdi + 0x14], ecx
	ret	
.label_890:
	push	rax
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cb90

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
	mov	ecx, OFFSET FLAT:.str_1
	nop	
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_11
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_892
	nop	
	mov	rax, rcx
.label_892:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cbd0

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	nop	
	sub	rsp, 0xd8
	nop	
	test	al, al
	lea	rdi, [rdi]
	je	.label_893
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
.label_893:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	dl, 0x40
	je	.label_895
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
	ja	.label_896
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	mov	rbp, rbp
	mov	dword ptr [rsp], ecx
	jmp	.label_894
.label_896:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rcx
.label_894:
	mov	ecx, dword ptr [rax]
.label_895:
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
	#Procedure 0x40ccd0

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
	js	.label_897
	mov	rsp, rsp
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_898
	mov	dword ptr [r14], ebp
	mov	rsp, rsp
	jmp	.label_897
.label_898:
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
.label_897:
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
	#Procedure 0x40cd50

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
	ja	.label_899
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
	jmp	.label_900
.label_899:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_900:
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
	#Procedure 0x40cdc0

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
	js	.label_901
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_903
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
	je	.label_901
.label_903:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_901
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_902
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_902:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_901:
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
	#Procedure 0x40ce70

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
	je	.label_922
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
.label_922:
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
	ja	.label_916
	lea	rsi, [rsi]
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_910
	mov	eax, 0x514
	mov	rsp, rsp
	bt	eax, esi
	lea	rdi, [rdi]
	jb	.label_908
	mov	rsp, rsp
	test	esi, esi
	jne	.label_916
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	lea	rsi, [rsi]
	ja	.label_917
	lea	rdi, [rdi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_921
.label_916:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_907
	mov	ecx, 0x85
	mov	rbp, rbp
	bt	ecx, eax
	lea	rsi, [rsi]
	jb	.label_908
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_909
.label_910:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_906
.label_908:
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rsp, rsp
	cmp	rcx, 0x28
	nop	
	ja	.label_915
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_918
.label_915:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_918:
	mov	edx, dword ptr [rax]
.label_911:
	nop	
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
.label_906:
	mov	ebp, eax
.label_904:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_909:
	lea	rsi, [rsi]
	cmp	eax, 6
	jne	.label_907
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_912
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_914
.label_907:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_920
	mov	rax, rcx
	lea	rsi, [rsi]
	add	rax, qword ptr [rsp + 0xc0]
	nop	
	lea	ecx, [rcx + 8]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_923
.label_917:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_921:
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax]
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_911
.label_912:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_914:
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_924
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
	jns	.label_905
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_905
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
	js	.label_904
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	rsp, rsp
	mov	al, 1
	jmp	.label_913
.label_905:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_904
.label_920:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_923:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	nop	
	mov	edi, ebx
	lea	rdi, [rdi]
	call	fcntl
	nop	
	jmp	.label_906
.label_924:
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
.label_913:
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	je	.label_904
	test	ebp, ebp
	lea	rsi, [rsi]
	js	.label_904
	mov	esi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_919
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
	jne	.label_904
.label_919:
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
	jmp	.label_904
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40d240

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_925
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_925
	test	byte ptr [rbx + 1], 1
	je	.label_925
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_925:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d280

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
	jne	.label_926
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_926
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_927
.label_926:
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
.label_927:
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
	je	.label_928
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_928:
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
	#Procedure 0x40d330

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
	#Procedure 0x40d350

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