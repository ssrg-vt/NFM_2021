	.section	.text
	.align	16
	#Procedure 0x401ad0

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
	mov	rcx, rdx
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
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	mov	r8, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
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
	je	.label_7
	mov	esi, OFFSET FLAT:.str.39
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_7
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_7:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.15
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15
	mov	ecx, OFFSET FLAT:.str.43
	xor	eax, eax
	call	__printf_chk
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
	nop	
	.section	.text
	.align	16
	#Procedure 0x401dc0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xd8
	mov	r13, rsi
	mov	ebp, edi
	mov	dword ptr [rsp + 0xd4], 0xffffffff
	mov	dword ptr [rsp + 0xd0], 0xffffffff
	mov	dword ptr [rsp + 0xcc], 0xffffffff
	mov	dword ptr [rsp + 0xc8], 0xffffffff
	mov	rdi, qword ptr [r13]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.17_0
	mov	esi, OFFSET FLAT:.str.18_0
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.17_0
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	lea	rdi, [rsp + 0xa0]
	call	chopt_init
	mov	r15d, 0x10
	mov	r12d, 0xffffffff
.label_987:
	xor	r14d, r14d
	jmp	.label_10
.label_32:
	mov	dword ptr [rsp + 0xa0], 1
	nop	word ptr cs:[rax + rax]
.label_10:
	mov	edx, OFFSET FLAT:.str.19
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r13
	call	getopt_long
	cmp	eax, 0x65
	jg	.label_17
	cmp	eax, 0x4f
	jg	.label_18
	cmp	eax, 0x47
	jle	.label_20
	mov	r15d, 0x11
	cmp	eax, 0x48
	je	.label_10
	cmp	eax, 0x4c
	jne	.label_9
	mov	r15d, 2
	jmp	.label_10
	nop	word ptr cs:[rax + rax]
.label_17:
	lea	ecx, [rax - 0x76]
	cmp	ecx, 0xe
	ja	.label_26
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_27]]
.label_984:
	mov	dword ptr [rsp + 0xa0], 0
	jmp	.label_10
	nop	dword ptr [rax]
.label_18:
	cmp	eax, 0x50
	je	.label_29
	cmp	eax, 0x52
	je	.label_30
	cmp	eax, 0x63
	je	.label_32
	jmp	.label_9
.label_26:
	cmp	eax, 0x66
	je	.label_34
	cmp	eax, 0x68
	jne	.label_9
	xor	r12d, r12d
	jmp	.label_10
.label_29:
	mov	r15d, 0x10
	jmp	.label_10
.label_30:
	mov	byte ptr [rsp + 0xa4], 1
	jmp	.label_10
.label_985:
	mov	r12d, 1
	jmp	.label_10
.label_986:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	ecx, ecx
	xor	r8d, r8d
	lea	rsi, [rsp + 0xcc]
	lea	rdx, [rsp + 0xc8]
	call	parse_user_spec
	mov	rbx, rax
	test	rbx, rbx
	je	.label_10
	jmp	.label_15
.label_988:
	mov	r14b, 1
	jmp	.label_10
.label_989:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + reference_file]],  rax
	jmp	.label_10
.label_34:
	mov	byte ptr [rsp + 0xb1], 1
	jmp	.label_10
.label_20:
	mov	qword ptr [rsp + 8], r14
	cmp	eax, -1
	jne	.label_19
	mov	r14d, 0x10
	cmp	byte ptr [rsp + 0xa4], 0
	je	.label_22
	cmp	r15d, 0x10
	jne	.label_24
	cmp	r12d, 1
	mov	r12d, 0
	jne	.label_22
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_24:
	mov	r14d, r15d
.label_22:
	test	r12d, r12d
	setne	byte ptr [rsp + 0xb0]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	ecx, ebp
	sub	ecx, eax
	mov	rsi,  qword ptr [word ptr [rip + reference_file]]
	cmp	rsi, 1
	mov	edx, 1
	adc	edx, 0
	cmp	ecx, edx
	jl	.label_31
	test	rsi, rsi
	je	.label_11
	lea	rdx, [rsp + 0x10]
	mov	edi, 1
	call	__xstat
	test	eax, eax
	jne	.label_12
	mov	edi, dword ptr [rsp + 0x2c]
	mov	dword ptr [rsp + 0xd4], edi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0xd0], eax
	call	uid_to_name
	mov	qword ptr [rsp + 0xb8], rax
	mov	edi, dword ptr [rsp + 0x30]
	call	gid_to_name
	mov	qword ptr [rsp + 0xc0], rax
	jmp	.label_14
.label_11:
	mov	rdi, qword ptr [r13 + rax*8]
	lea	rcx, [rsp + 0xb8]
	lea	r8, [rsp + 0xc0]
	lea	rsi, [rsp + 0xd4]
	lea	rdx, [rsp + 0xd0]
	call	parse_user_spec
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_21
	cmp	qword ptr [rsp + 0xb8], 0
	jne	.label_23
	mov	rax, qword ptr [rsp + 0xc0]
	test	rax, rax
	je	.label_23
	mov	edi, OFFSET FLAT:.str_0
	call	xstrdup
	mov	qword ptr [rsp + 0xb8], rax
.label_23:
	inc	dword ptr [dword ptr [rip + optind]]
.label_14:
	mov	rax, qword ptr [rsp + 8]
	test	al, al
	je	.label_28
	mov	al, byte ptr [rsp + 0xa4]
	test	al, al
	je	.label_28
	mov	edi, OFFSET FLAT:main.dev_ino_buf
	call	get_root_dev_ino
	mov	qword ptr [rsp + 0xa8], rax
	test	rax, rax
	je	.label_33
.label_28:
	or	r14d, 0x400
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	rdi, [r13 + rax*8]
	mov	edx, dword ptr [rsp + 0xd4]
	mov	ecx, dword ptr [rsp + 0xd0]
	mov	r8d, dword ptr [rsp + 0xcc]
	mov	r9d, dword ptr [rsp + 0xc8]
	lea	rax, [rsp + 0xa0]
	mov	qword ptr [rsp], rax
	mov	esi, r14d
	call	chown_files
	movzx	eax, al
	xor	eax, 1
	add	rsp, 0xd8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_19:
	cmp	eax, 0xffffff7d
	je	.label_13
	cmp	eax, 0xffffff7e
	jne	.label_9
	xor	edi, edi
	call	usage
.label_13:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.22
	mov	r9d, OFFSET FLAT:.str.23
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_9:
	mov	edi, 1
	call	usage
.label_31:
	xor	edi, edi
	cmp	eax, ebp
	jge	.label_25
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, ebp
	mov	rdi, qword ptr [r13 + rax*8 - 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_15:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_35
.label_12:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + reference_file]]
	mov	edi, 4
	jmp	.label_16
.label_33:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:.str_1
.label_16:
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_25:
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
.label_21:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r13 + rax*8]
.label_35:
	call	quote
	mov	rbp, rax
	mov	edi, 1
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str.1_0
	xor	eax, eax
	mov	rcx, rbx
	mov	r8, rbp
	call	error
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4022d0

	.globl chopt_init
	.type chopt_init, @function
chopt_init:
	mov	dword ptr [rdi], 2
	mov	qword ptr [rdi + 8], 0
	mov	byte ptr [rdi + 0x10], 1
	mov	byte ptr [rdi + 4], 0
	mov	byte ptr [rdi + 0x11], 0
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x18], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402300
	.globl chopt_free
	.type chopt_free, @function
chopt_free:

	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, qword ptr [rbx + 0x20]
	pop	rbx
	jmp	free
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402320

	.globl gid_to_name
	.type gid_to_name, @function
gid_to_name:
	push	rbx
	sub	rsp, 0x20
	mov	ebx, edi
	call	getgrgid
	test	rax, rax
	je	.label_37
	mov	rdi, qword ptr [rax]
	jmp	.label_36
.label_37:
	mov	edi, ebx
	lea	rsi, [rsp]
	call	umaxtostr
	mov	rdi, rax
.label_36:
	call	xstrdup
	add	rsp, 0x20
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402350

	.globl uid_to_name
	.type uid_to_name, @function
uid_to_name:
	push	rbx
	sub	rsp, 0x20
	mov	ebx, edi
	call	getpwuid
	test	rax, rax
	je	.label_39
	mov	rdi, qword ptr [rax]
	jmp	.label_38
.label_39:
	mov	edi, ebx
	lea	rsi, [rsp]
	call	umaxtostr
	mov	rdi, rax
.label_38:
	call	xstrdup
	add	rsp, 0x20
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402380

	.globl chown_files
	.type chown_files, @function
chown_files:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x178
	mov	dword ptr [rsp + 0x18], r9d
	mov	dword ptr [rsp + 0x10], ecx
	mov	dword ptr [rsp + 0x14], edx
	mov	r15, qword ptr [rsp + 0x1b0]
	and	r9d, r8d
	mov	dword ptr [rsp + 0x1c], r9d
	xor	eax, eax
	cmp	r9d, -1
	je	.label_105
	mov	dword ptr [rsp + 0x34], r8d
	jmp	.label_82
.label_105:
	mov	dword ptr [rsp + 0x34], r8d
	cmp	byte ptr [r15 + 0x10], 0
	jne	.label_82
	xor	eax, eax
	cmp	dword ptr [r15], 2
	jne	.label_82
	mov	eax, 8
.label_82:
	or	eax, esi
	xor	edx, edx
	mov	esi, eax
	call	xfts_open
	mov	r14, rax
	mov	qword ptr [rsp + 0x38], r14
	mov	rdi, r14
	call	rpl_fts_read
	mov	r13, rax
	mov	r12b, 1
	test	r13, r13
	je	.label_121
	mov	bl, 1
	jmp	.label_40
.label_73:
	mov	esi, OFFSET FLAT:.str.19_0
.label_62:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	r14, qword ptr [rsp + 8]
	xor	ebp, ebp
	mov	rsi, qword ptr [rsp + 0x40]
	jmp	.label_46
.label_74:
	mov	qword ptr [rsp + 0x40], rbp
	mov	edi, dword ptr [rsp + 8]
	call	close
	test	eax, eax
	setne	al
	movzx	eax, al
	lea	eax, [rax*4 + 2]
	jmp	.label_56
	nop	dword ptr [rax]
.label_40:
	mov	r10, qword ptr [r13 + 0x30]
	mov	rbp, qword ptr [r13 + 0x38]
	movzx	eax, word ptr [r13 + 0x70]
	dec	eax
	cmp	eax, 9
	ja	.label_64
	jmp	qword ptr [word ptr [+ (rax * 8) + label_68]]
.label_1033:
	cmp	byte ptr [r15 + 4], 0
	je	.label_64
	mov	rax, qword ptr [r15 + 8]
	mov	r12b, 1
	test	rax, rax
	je	.label_42
	mov	rcx, qword ptr [r13 + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_42
	mov	rcx, qword ptr [r13 + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_42
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2f
	jne	.label_80
	cmp	byte ptr [rbp + 1], 0
	je	.label_81
.label_80:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rbp
	mov	rbp, r14
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	r12, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:.str_1
	call	quotearg_n_style
	mov	r8, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	r14, rbp
	mov	rcx, r12
	call	error
	jmp	.label_90
.label_1034:
	mov	rdi, r14
	mov	rsi, r13
	mov	r12, rbp
	mov	rbp, r10
	call	cycle_warning_required
	mov	r10, rbp
	mov	rbp, r12
	test	al, al
	je	.label_64
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
	mov	edx, 5
	mov	r13, rbp
	call	dcgettext
	mov	rbp, r14
	mov	r14, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r13
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	r14, rbp
	call	error
	jmp	.label_42
.label_1035:
	mov	qword ptr [rsp + 0x40], rbp
	mov	byte ptr [rsp + 0x4f], bl
	mov	r14b, 1
	xor	ebp, ebp
	cmp	byte ptr [r15 + 0x11], 0
	jne	.label_104
	mov	r12d, dword ptr [r13 + 0x40]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
	jmp	.label_98
.label_1036:
	mov	r12b, 1
	cmp	byte ptr [r15 + 4], 0
	je	.label_42
.label_64:
	cmp	dword ptr [rsp + 0x1c], -1
	jne	.label_59
	cmp	dword ptr [r15], 2
	jne	.label_59
	cmp	qword ptr [r15 + 8], 0
	je	.label_111
	nop	word ptr cs:[rax + rax]
.label_59:
	lea	rdx, [r13 + 0x78]
	cmp	byte ptr [r15 + 0x10], 0
	mov	r14d, dword ptr [rsp + 0x34]
	jne	.label_115
	jmp	.label_83
.label_1037:
	mov	qword ptr [rsp + 0x40], rbp
	mov	byte ptr [rsp + 0x4f], bl
	mov	r14b, 1
	xor	ebp, ebp
	cmp	byte ptr [r15 + 0x11], 0
	jne	.label_104
	mov	ebp, dword ptr [r13 + 0x40]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x40]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebp
	jmp	.label_48
.label_1038:
	cmp	qword ptr [r13 + 0x58], 0
	jne	.label_53
	cmp	qword ptr [r13 + 0x20], 0
	je	.label_55
.label_53:
	mov	qword ptr [rsp + 0x40], rbp
	mov	byte ptr [rsp + 0x4f], bl
	mov	r14b, 1
	xor	ebp, ebp
	cmp	byte ptr [r15 + 0x11], 0
	je	.label_58
.label_104:
	xor	ebx, ebx
	xor	r12d, r12d
	jmp	.label_63
.label_58:
	mov	r12d, dword ptr [r13 + 0x40]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6_0
.label_98:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x40]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, rbp
.label_48:
	call	error
	xor	ebp, ebp
	xor	r12d, r12d
	jmp	.label_63
.label_111:
	lea	rdx, [r13 + 0x78]
	cmp	byte ptr [r15 + 0x10], 0
	mov	sil, 1
	mov	r14d, dword ptr [rsp + 0x34]
	je	.label_79
	nop	word ptr cs:[rax + rax]
.label_115:
	mov	eax, dword ptr [r13 + 0x90]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0xa000
	jne	.label_83
	mov	rax, qword ptr [rsp + 0x38]
	mov	esi, dword ptr [rax + 0x2c]
	mov	edi, 1
	xor	r8d, r8d
	mov	rdx, r10
	mov	qword ptr [rsp + 0x40], rbp
	lea	rbp, [rsp + 0x50]
	mov	rcx, rbp
	mov	r12, r13
	mov	r13, r10
	call	__fxstatat
	mov	r10, r13
	mov	r13, r12
	test	eax, eax
	mov	rdx, rbp
	mov	rbp, qword ptr [rsp + 0x40]
	je	.label_83
	mov	byte ptr [rsp + 0x4f], bl
	mov	dword ptr [rsp + 0x34], r14d
	mov	r14b, 1
	cmp	byte ptr [r15 + 0x11], 0
	je	.label_91
	xor	ebp, ebp
	jmp	.label_92
.label_83:
	cmp	r14d, -1
	je	.label_93
	mov	eax, dword ptr [rdx + 0x1c]
	cmp	eax, r14d
	sete	sil
	cmp	dword ptr [rsp + 0x18], -1
	je	.label_79
	cmp	eax, r14d
	je	.label_97
	jmp	.label_79
.label_93:
	mov	sil, 1
	cmp	dword ptr [rsp + 0x18], -1
	je	.label_79
.label_97:
	mov	eax, dword ptr [rsp + 0x18]
	cmp	dword ptr [rdx + 0x20], eax
	sete	sil
.label_79:
	movzx	eax, word ptr [r13 + 0x70]
	cmp	eax, 6
	ja	.label_102
	mov	ecx, 0x56
	bt	ecx, eax
	jae	.label_102
	mov	rax, qword ptr [r15 + 8]
	test	rax, rax
	je	.label_102
	mov	rcx, qword ptr [rdx + 8]
	cmp	rcx, qword ptr [rax]
	jne	.label_102
	mov	rcx, qword ptr [rdx]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_102
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2f
	jne	.label_109
	cmp	byte ptr [rbp + 1], 0
	je	.label_119
.label_109:
	mov	dword ptr [rsp + 0x34], r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rbp
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	r12, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:.str_1
	call	quotearg_n_style
	mov	r8, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	r14, qword ptr [rsp + 0x38]
	mov	rcx, r12
	call	error
	jmp	.label_43
	nop	
.label_102:
	mov	byte ptr [rsp + 0x4f], bl
	test	sil, sil
	je	.label_45
	mov	dword ptr [rsp + 0x34], r14d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r14d, dword ptr [rax + 0x2c]
	cmp	byte ptr [r15 + 0x10], 0
	je	.label_50
	cmp	dword ptr [rsp + 0x1c], -1
	je	.label_57
	mov	eax, dword ptr [rdx + 0x18]
	mov	ecx, 0xf000
	and	eax, ecx
	mov	r12d, 0x900
	cmp	eax, 0x8000
	je	.label_60
	cmp	eax, 0x4000
	jne	.label_57
	mov	r12d, 0x10900
.label_60:
	mov	byte ptr [rsp + 0x28], sil
	mov	rbx, rdx
	xor	eax, eax
	mov	edi, r14d
	mov	rsi, r10
	mov	qword ptr [rsp + 0x20], r10
	mov	edx, r12d
	call	openat
	test	eax, eax
	jns	.label_75
	call	__errno_location
	mov	r15, rax
	mov	eax, dword ptr [r15]
	cmp	eax, 0xd
	jne	.label_77
	mov	ecx, dword ptr [rbx + 0x18]
	mov	eax, 0xf000
	and	ecx, eax
	mov	eax, 0xd
	cmp	ecx, 0x8000
	jne	.label_77
	or	r12d, 1
	xor	eax, eax
	mov	edi, r14d
	mov	rsi, qword ptr [rsp + 0x20]
	mov	edx, r12d
	call	openat
	test	eax, eax
	js	.label_84
.label_75:
	mov	dword ptr [rsp + 8], eax
	mov	edi, 1
	mov	esi, eax
	lea	rdx, [rsp + 0xe0]
	call	__fxstat
	mov	r15d, 6
	test	eax, eax
	je	.label_86
	mov	r12d, dword ptr [rsp + 0x34]
	jmp	.label_52
.label_45:
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x40], rbp
	mov	dword ptr [rsp + 0x34], r14d
	mov	r14b, 1
	xor	ebp, ebp
	mov	r12b, 1
	jmp	.label_63
.label_50:
	mov	byte ptr [rsp + 0x28], sil
	mov	rbx, rdx
	mov	r8d, 0x100
	mov	edi, r14d
	mov	rsi, r10
	mov	edx, dword ptr [rsp + 0x14]
	mov	ecx, dword ptr [rsp + 0x10]
	call	fchownat
	test	eax, eax
	sete	r12b
	mov	r14b, 1
	je	.label_96
	call	__errno_location
	cmp	dword ptr [rax], 0x5f
	setne	r14b
	mov	al, 1
	je	.label_100
	mov	al, r12b
.label_100:
	mov	qword ptr [rsp + 0x40], rbp
	mov	r12b, al
	jmp	.label_103
.label_57:
	mov	byte ptr [rsp + 0x28], sil
	mov	rbx, rdx
.label_66:
	mov	qword ptr [rsp + 0x40], rbp
	xor	r8d, r8d
	mov	edi, r14d
	mov	rsi, r10
	mov	edx, dword ptr [rsp + 0x14]
	mov	ecx, dword ptr [rsp + 0x10]
	call	fchownat
	test	eax, eax
	sete	r12b
	mov	r14b, 1
	jmp	.label_103
.label_91:
	mov	r12, r15
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_0
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x40]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r15
	call	error
	mov	r15, r12
.label_92:
	lea	rbx, [rsp + 0x50]
	xor	r12d, r12d
	jmp	.label_63
.label_55:
	mov	qword ptr [r13 + 0x20], 1
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r13
	call	rpl_fts_set
	mov	r12b, 1
	jmp	.label_42
.label_96:
	mov	qword ptr [rsp + 0x40], rbp
.label_103:
	test	r12b, 1
	jne	.label_47
	jmp	.label_51
.label_86:
	mov	rax, qword ptr [rbx + 8]
	mov	r15d, 4
	cmp	rax, qword ptr [rsp + 0xe8]
	mov	r12d, dword ptr [rsp + 0x34]
	jne	.label_52
	mov	rax, qword ptr [rbx]
	cmp	rax, qword ptr [rsp + 0xe0]
	jne	.label_52
	cmp	r12d, -1
	mov	r15d, 2
	je	.label_110
	cmp	dword ptr [rsp + 0xfc], r12d
	jne	.label_52
.label_110:
	cmp	dword ptr [rsp + 0x18], -1
	je	.label_108
	mov	eax, dword ptr [rsp + 0x18]
	cmp	dword ptr [rsp + 0x100], eax
	jne	.label_52
.label_108:
	mov	edi, dword ptr [rsp + 8]
	mov	esi, dword ptr [rsp + 0x14]
	mov	edx, dword ptr [rsp + 0x10]
	call	fchown
	test	eax, eax
	mov	r15d, 6
	je	.label_74
.label_52:
	mov	qword ptr [rsp + 0x40], rbp
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, dword ptr [rsp + 8]
	call	close
	mov	rax, r15
	mov	dword ptr [rbp], r14d
	jmp	.label_56
.label_119:
	mov	dword ptr [rsp + 0x34], r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_0
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	mov	r14, qword ptr [rsp + 0x38]
.label_43:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_42
.label_81:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_0
	mov	edx, 5
	mov	r12, rbp
	call	dcgettext
	mov	rbp, r14
	mov	r14, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	r14, rbp
	call	error
.label_90:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edx, 4
	mov	rdi, r14
	mov	rsi, r13
	call	rpl_fts_set
	mov	rdi, r14
	call	rpl_fts_read
	jmp	.label_42
.label_84:
	mov	eax, dword ptr [r15]
.label_77:
	mov	qword ptr [rsp + 0x40], rbp
	cmp	eax, 0xd
	setne	al
	movzx	eax, al
	add	eax, 5
	mov	r12d, dword ptr [rsp + 0x34]
.label_56:
	mov	dword ptr [rsp + 0x34], r12d
	add	eax, -2
	cmp	eax, 4
	mov	r15, qword ptr [rsp + 0x1b0]
	ja	.label_72
	mov	r14b, 1
	xor	r12d, r12d
	xor	ebp, ebp
	mov	r10, qword ptr [rsp + 0x20]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_114]]
.label_990:
	mov	r14b, 1
	mov	al, byte ptr [rsp + 0x28]
	mov	bpl, al
	mov	r12b, 1
	jmp	.label_63
.label_51:
	cmp	byte ptr [r15 + 0x11], 0
	jne	.label_47
	call	__errno_location
	cmp	dword ptr [rsp + 0x14], -1
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0x20], eax
	je	.label_123
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_0
	jmp	.label_70
.label_123:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_0
.label_70:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [rsp + 0x40]
	mov	qword ptr [rsp + 0x40], rsi
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rsp + 0x20]
	mov	rdx, rbp
	call	error
.label_47:
	mov	al, byte ptr [rsp + 0x28]
	mov	bpl, al
	nop	word ptr cs:[rax + rax]
.label_63:
	mov	rdx, qword ptr [r15]
	mov	rax, rdx
	shr	rax, 0x20
	cmp	edx, 2
	je	.label_67
	mov	cl, r12b
	and	cl, 1
	test	bpl, bpl
	mov	rdi, rbx
	je	.label_69
	mov	bl, r12b
	and	bl, r14b
	je	.label_69
	cmp	dword ptr [rsp + 0x14], -1
	je	.label_76
	mov	esi, dword ptr [rsp + 0x14]
	cmp	dword ptr [rdi + 0x1c], esi
	jne	.label_78
.label_76:
	cmp	dword ptr [rsp + 0x10], -1
	je	.label_69
	mov	esi, dword ptr [rsp + 0x10]
	cmp	dword ptr [rdi + 0x20], esi
	jne	.label_78
	nop	dword ptr [rax]
.label_69:
	test	edx, edx
	jne	.label_67
	test	cl, cl
	movzx	eax, r14b
	lea	r14d, [rax + rax*2 + 1]
	mov	eax, 3
	cmove	r14d, eax
	test	rdi, rdi
	mov	eax, 0
	mov	qword ptr [rsp + 0x28], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x20], rax
	jne	.label_65
	jmp	.label_85
.label_78:
	movzx	r14d, r14b
	inc	r14d
	test	cl, cl
	mov	eax, 3
	cmove	r14d, eax
.label_65:
	mov	ebx, dword ptr [rdi + 0x1c]
	mov	rbp, rdi
	mov	edi, ebx
	call	getpwuid
	test	rax, rax
	je	.label_88
	mov	rdi, qword ptr [rax]
	jmp	.label_89
.label_88:
	mov	rdi, rbx
	lea	rsi, [rsp + 0xe0]
	call	umaxtostr
	mov	rdi, rax
.label_89:
	call	xstrdup
	mov	qword ptr [rsp + 0x28], rax
	mov	ebx, dword ptr [rbp + 0x20]
	mov	edi, ebx
	call	getgrgid
	test	rax, rax
	je	.label_94
	mov	rdi, qword ptr [rax]
	jmp	.label_95
.label_94:
	mov	rdi, rbx
	lea	rsi, [rsp + 0xe0]
	call	umaxtostr
	mov	rdi, rax
.label_95:
	call	xstrdup
	mov	qword ptr [rsp + 0x20], rax
.label_85:
	cmp	r14d, 1
	jne	.label_101
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x40]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
	jmp	.label_107
.label_101:
	mov	rbx, qword ptr [r15 + 0x18]
	mov	rbp, qword ptr [r15 + 0x20]
	mov	rdi, rbx
	mov	rsi, rbp
	call	user_group_str
	mov	qword ptr [rsp + 8], rax
	test	rbx, rbx
	mov	rdi, qword ptr [rsp + 0x28]
	cmove	rdi, rbx
	test	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x20]
	cmove	rsi, rbp
	call	user_group_str
	cmp	r14d, 4
	je	.label_116
	cmp	r14d, 3
	je	.label_117
	cmp	r14d, 2
	jne	.label_118
	mov	r14, rax
	xor	edi, edi
	test	rbx, rbx
	je	.label_120
	mov	esi, OFFSET FLAT:.str.14_0
	jmp	.label_44
.label_116:
	mov	r14, rax
	xor	edi, edi
	test	rbx, rbx
	je	.label_41
	mov	esi, OFFSET FLAT:.str.22_0
	jmp	.label_44
.label_117:
	test	rax, rax
	je	.label_71
	mov	r14, rax
	xor	edi, edi
	test	rbx, rbx
	je	.label_49
	mov	esi, OFFSET FLAT:.str.17_1
	jmp	.label_44
.label_120:
	test	rbp, rbp
	je	.label_54
	mov	esi, OFFSET FLAT:.str.15_0
	jmp	.label_44
.label_41:
	test	rbp, rbp
	je	.label_113
	mov	esi, OFFSET FLAT:.str.23_0
	jmp	.label_44
.label_71:
	xor	edi, edi
	test	rbx, rbx
	je	.label_61
	mov	esi, OFFSET FLAT:.str.20
	jmp	.label_62
.label_49:
	test	rbp, rbp
	je	.label_122
	mov	esi, OFFSET FLAT:.str.18_1
	jmp	.label_44
.label_991:
	mov	rax, qword ptr [rsp + 0x38]
	mov	r14d, dword ptr [rax + 0x2c]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_66
.label_54:
	mov	esi, OFFSET FLAT:.str.16
	jmp	.label_44
.label_113:
	mov	esi, OFFSET FLAT:.str.24_0
	jmp	.label_44
.label_61:
	test	rbp, rbp
	je	.label_73
	mov	esi, OFFSET FLAT:.str.21
	jmp	.label_62
.label_122:
	mov	esi, OFFSET FLAT:.str.19_0
.label_44:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rbp, qword ptr [rsp + 8]
.label_46:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	mov	rbx, r14
	mov	rcx, rbx
	mov	r8, rbp
	call	__printf_chk
	mov	rdi, rbx
	call	free
	mov	rdi, rbp
	call	free
.label_107:
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	al, byte ptr [r15 + 4]
.label_67:
	test	al, al
	mov	r14, qword ptr [rsp + 0x38]
	jne	.label_87
	mov	edx, 4
	mov	rdi, r14
	mov	rsi, r13
	call	rpl_fts_set
.label_87:
	and	r12b, 1
	mov	bl, byte ptr [rsp + 0x4f]
.label_42:
	and	r12b, bl
	mov	rdi, r14
	call	rpl_fts_read
	mov	r13, rax
	test	r13, r13
	mov	bl, r12b
	jne	.label_40
.label_121:
	mov	rbp, r14
	call	__errno_location
	mov	r14, rax
	mov	ebx, dword ptr [r14]
	test	ebx, ebx
	je	.label_99
	cmp	byte ptr [r15 + 0x11], 0
	je	.label_112
	xor	r12d, r12d
	jmp	.label_99
.label_112:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_3
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_99:
	mov	rdi, rbp
	call	rpl_fts_close
	test	eax, eax
	je	.label_106
	mov	ebx, dword ptr [r14]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_106:
	mov	al, r12b
	add	rsp, 0x178
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_118:
	call	abort
.label_72:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402fd0

	.globl user_group_str
	.type user_group_str, @function
user_group_str:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_127
	test	r14, r14
	je	.label_124
	mov	rdi, rbx
	call	strlen
	mov	r15, rax
	mov	rdi, r14
	call	strlen
	lea	rdi, [r15 + rax + 2]
	call	xmalloc
	mov	r15, rax
	mov	rdi, r15
	mov	rsi, rbx
	call	stpcpy
	mov	word ptr [rax], 0x3a
	lea	rdi, [rax + 1]
	mov	rsi, r14
	call	stpcpy
	jmp	.label_125
.label_127:
	xor	r15d, r15d
	test	r14, r14
	je	.label_125
	mov	rdi, r14
	jmp	.label_126
.label_125:
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_124:
	mov	rdi, rbx
.label_126:
	pop	rbx
	pop	r14
	pop	r15
	jmp	xstrdup
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403050
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403060
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403070

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_131
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_130
	cmp	dword ptr [rbp], 0x20
	jne	.label_130
.label_131:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_129
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_130:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_4
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_128
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_129:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_128:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_0
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
	#Procedure 0x403130

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_132:
	mov	rax, rcx
	mul	r8
	shr	rdx, 3
	lea	eax, [rdx + rdx]
	lea	eax, [rax + rax*4]
	mov	edi, ecx
	sub	edi, eax
	or	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	cmp	rcx, 9
	mov	rcx, rdx
	ja	.label_132
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403180

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_133
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_134
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_134
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_135
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_135:
	mov	rbx, r14
.label_134:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_133:
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
	#Procedure 0x403230
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
	#Procedure 0x403270
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
	#Procedure 0x403280
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
	#Procedure 0x403290
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
	#Procedure 0x4032d0
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
	#Procedure 0x4032f0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_136
	test	rdx, rdx
	je	.label_136
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_136:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403320
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
	#Procedure 0x4033a0

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
.label_226:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_159
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_163]]
.label_1029:
	mov	edi, OFFSET FLAT:.str.11_1
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
.label_1030:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_188
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_188
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_213:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_204
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_204:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_213
.label_188:
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
	jmp	.label_141
.label_1022:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_141
.label_1025:
	mov	al, 1
.label_1023:
	mov	r12b, 1
.label_1026:
	test	r12b, 1
	mov	cl, 1
	je	.label_240
	mov	cl, al
.label_240:
	mov	al, cl
.label_1024:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_242
	test	r10, r10
	je	.label_245
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_203
.label_242:
	xor	ecx, ecx
	jmp	.label_203
.label_1027:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_210
	test	r10, r10
	je	.label_256
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_162
.label_1028:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_1
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_141
.label_245:
	mov	ecx, 1
	nop	dword ptr [rax]
.label_203:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_1
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_141
.label_210:
	xor	eax, eax
	jmp	.label_162
.label_256:
	mov	eax, 1
.label_162:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_1
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_141:
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
	jmp	.label_165
.label_224:
	inc	rdi
.label_165:
	cmp	rbp, -1
	je	.label_217
	cmp	rdi, rbp
	jne	.label_220
	jmp	.label_221
	nop	word ptr cs:[rax + rax]
.label_217:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_153
.label_220:
	test	r12b, r12b
	je	.label_229
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_231
	cmp	rbp, -1
	jne	.label_231
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
.label_231:
	cmp	rbx, rbp
	jbe	.label_248
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_236
	nop	word ptr [rax + rax]
.label_229:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_236
.label_248:
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
	jne	.label_152
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_236
	jmp	.label_140
.label_152:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_236:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_170
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_183]]
.label_1008:
	test	rdi, rdi
	jne	.label_166
	jmp	.label_190
.label_1012:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_191
	test	rdi, rdi
	jne	.label_193
	cmp	rbp, 1
	je	.label_190
	xor	r13d, r13d
	jmp	.label_151
.label_1001:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_196
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_140
	cmp	r9d, 2
	jne	.label_205
	mov	al, r14b
	and	al, 1
	jne	.label_207
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_211
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_211:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_139
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_139:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_156
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_156:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_233
.label_1002:
	mov	bl, 0x62
	jmp	.label_138
.label_1003:
	mov	cl, 0x74
	jmp	.label_228
.label_1004:
	mov	bl, 0x76
	jmp	.label_138
.label_1005:
	mov	bl, 0x66
	jmp	.label_138
.label_1006:
	mov	cl, 0x72
	jmp	.label_228
.label_1009:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_243
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_246
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
	jae	.label_249
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_249:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_148
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_148:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_189
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_189:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_243:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_151
.label_1010:
	cmp	r9d, 5
	je	.label_164
	cmp	r9d, 2
	jne	.label_166
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_166
	jmp	.label_173
.label_1011:
	cmp	r9d, 2
	jne	.label_175
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_178
	jmp	.label_185
.label_170:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_186
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
.label_157:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_198
	test	cl, cl
	je	.label_198
	xor	eax, eax
	jmp	.label_151
.label_191:
	test	rdi, rdi
	jne	.label_216
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_216
.label_190:
	mov	dl, 1
.label_1007:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_219
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_151
.label_196:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_224
	jmp	.label_166
.label_175:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_228
.label_178:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_155
.label_228:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_234
.label_138:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_151
	jmp	.label_158
.label_186:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_145
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_145:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_180:
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
	je	.label_147
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_150
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_154
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_143
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_174:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_200
	bt	rsi, rdx
	jb	.label_171
.label_200:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_174
.label_143:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_260
	xor	r13d, r13d
.label_260:
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
	je	.label_180
	jmp	.label_157
.label_216:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_151
.label_164:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_166
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_166
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_166
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_208
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_214
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_201
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_222
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_222:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_227
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_227:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_238
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_238:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_259
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_259:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_151
.label_166:
	xor	eax, eax
	xor	r13d, r13d
.label_151:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_252
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_255
	jmp	.label_137
	nop	word ptr [rax + rax]
.label_252:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_137
.label_255:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_142
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_149
	nop	word ptr cs:[rax + rax]
.label_137:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_149:
	mov	bl, r15b
	je	.label_155
	jmp	.label_158
.label_142:
	mov	bl, r15b
.label_158:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_140
	cmp	r9d, 2
	jne	.label_161
	mov	al, r14b
	and	al, 1
	jne	.label_161
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_182
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_182:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_225
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_225:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_181
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_181:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_161:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_192
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_192:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_241
.label_193:
	xor	r13d, r13d
	jmp	.label_151
.label_198:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_202
	nop	word ptr [rax + rax]
.label_194:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_202:
	test	cl, cl
	je	.label_215
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_184
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_218
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_218:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_184
	nop	word ptr [rax + rax]
.label_215:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_140
	cmp	r9d, 2
	jne	.label_232
	mov	al, r14b
	and	al, 1
	jne	.label_232
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_239
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_239:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_169
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_169:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_199
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_199:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_232:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_261
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_261:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_146
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_146:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_237
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_237:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_184:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_155
	test	r14b, 1
	je	.label_172
	mov	bl, al
	and	bl, 1
	jne	.label_172
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_144
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_144:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_187
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_187:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_172:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_194
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_194
	nop	dword ptr [rax]
.label_155:
	test	r14b, 1
	je	.label_209
	and	al, 1
	jne	.label_209
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_197
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_197:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_168
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_168:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_209:
	mov	bl, r15b
.label_241:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_230
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_230:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_224
.label_205:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_233
.label_207:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_233:
	cmp	rcx, r10
	jae	.label_244
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_244:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_212
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_254
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_257
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_258
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_258:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_177
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_177:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_151
.label_212:
	xor	r13d, r13d
	jmp	.label_151
.label_254:
	xor	r13d, r13d
	jmp	.label_151
.label_257:
	xor	r13d, r13d
	jmp	.label_151
.label_150:
	xor	r13d, r13d
.label_147:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_157
.label_154:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_167
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_250:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_176
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_250
	xor	r13d, r13d
	jmp	.label_157
.label_167:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_157
.label_176:
	xor	r13d, r13d
	jmp	.label_157
.label_208:
	xor	r13d, r13d
	jmp	.label_151
.label_214:
	xor	r13d, r13d
	jmp	.label_151
	nop	dword ptr [rax]
.label_221:
	mov	r13, rdi
.label_153:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_195
	or	al, dl
	je	.label_160
.label_195:
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
	je	.label_206
	or	al, dl
	jne	.label_206
	test	r8b, 1
	jne	.label_223
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_206
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_226
.label_206:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_235
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_235
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_235
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_247:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_253
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_253:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_247
.label_235:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_251
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_251
.label_219:
	mov	r9d, 2
	jmp	.label_140
.label_171:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_140
.label_160:
	mov	rbp, r13
	jmp	.label_140
.label_234:
	mov	r9d, 2
.label_140:
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
.label_179:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_251:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_223:
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
	jmp	.label_179
.label_246:
	mov	r9d, 2
	jmp	.label_140
.label_185:
	mov	r9d, 2
	jmp	.label_140
.label_173:
	mov	r9d, 2
	jmp	.label_140
.label_201:
	mov	r9d, 5
	jmp	.label_140
.label_159:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404530
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
	#Procedure 0x404600
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
	je	.label_262
	mov	qword ptr [rax], rbx
.label_262:
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
	#Procedure 0x404700
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_263
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_267:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_267
.label_263:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_265
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_266]], OFFSET FLAT:slot0
.label_265:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_264
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_264:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4047a0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x4047b0

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
	js	.label_268
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_273
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_269
.label_273:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_272
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
	jne	.label_271
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_271:
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
.label_269:
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
	ja	.label_274
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_270
	mov	rdi, rbx
	call	free
.label_270:
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
.label_274:
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
.label_268:
	call	abort
.label_272:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404980
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404990
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
	#Procedure 0x4049b0
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
	#Procedure 0x4049d0

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
	je	.label_275
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
.label_275:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x404a40
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
	je	.label_276
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
.label_276:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ab0

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
	je	.label_277
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
.label_277:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b20
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
	je	.label_278
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
.label_278:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b90
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_279]]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_280]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_281]]
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
	#Procedure 0x404c00
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx,  qword ptr [word ptr [rip + label_279]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_280]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_281]]
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
	#Procedure 0x404c70

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_279]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_280]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_281]]
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
	#Procedure 0x404cd0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_279]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_280]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_281]]
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
	#Procedure 0x404d30

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
	je	.label_282
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
.label_282:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x404de0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_279]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_280]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_281]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_283
	test	rdx, rdx
	je	.label_283
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_283:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x404e50
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_279]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_280]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_281]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_284
	test	rdx, rdx
	je	.label_284
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_284:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ec0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_279]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_280]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_281]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_285
	test	rsi, rsi
	je	.label_285
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_285:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404f30
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_279]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_280]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_281]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_286
	test	rsi, rsi
	je	.label_286
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
.label_286:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404fa0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fb0
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
	#Procedure 0x404fd0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ff0

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
	#Procedure 0x405010

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
	jne	.label_288
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_290
	cmp	ecx, 0x55
	jne	.label_287
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_287
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_287
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_287
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_287
	cmp	byte ptr [rax + 5], 0
	jne	.label_287
	mov	eax, OFFSET FLAT:.str.14_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_288
	mov	eax, OFFSET FLAT:.str.15_1
	jmp	.label_288
.label_290:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_287
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_287
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_287
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_287
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_287
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_287
	cmp	byte ptr [rax + 7], 0
	je	.label_289
.label_287:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_1
	mov	eax, OFFSET FLAT:.str.12_1
	cmove	rax, rcx
.label_288:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_289:
	mov	eax, OFFSET FLAT:.str.17_2
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_288
	mov	eax, OFFSET FLAT:.str.18_2
	jmp	.label_288
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405100

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
	jne	.label_291
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, rbx
.label_291:
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405150

	.globl parse_user_spec
	.type parse_user_spec, @function
parse_user_spec:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbp, r8
	mov	r15, rcx
	mov	rbx, rdx
	mov	r12, rsi
	mov	r13, rdi
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_293
	mov	esi, 0x3a
	mov	rdi, r13
	call	strchr
	mov	r14, rax
.label_293:
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, r12
	mov	rcx, rbx
	mov	r8, r15
	mov	r9, rbp
	mov	qword ptr [rsp], rbp
	call	parse_with_separator
	mov	rbp, rax
	test	rbx, rbx
	je	.label_292
	test	r14, r14
	jne	.label_292
	test	rbp, rbp
	je	.label_292
	mov	esi, 0x2e
	mov	rdi, r13
	call	strchr
	test	rax, rax
	je	.label_292
	mov	rdi, r13
	mov	rsi, rax
	mov	rdx, r12
	mov	rcx, rbx
	mov	r8, r15
	mov	r9, qword ptr [rsp]
	call	parse_with_separator
	test	rax, rax
	cmovne	rax, rbp
	jmp	.label_294
.label_292:
	mov	rax, rbp
.label_294:
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
	#Procedure 0x405200

	.globl parse_with_separator
	.type parse_with_separator, @function
parse_with_separator:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r14, r8
	mov	rbp, rcx
	mov	r15, rsi
	mov	eax, dword ptr [rdx]
	mov	ebx, 0xffffffff
	test	rbp, rbp
	je	.label_295
	mov	ebx, dword ptr [rbp]
.label_295:
	test	r14, r14
	je	.label_306
	mov	qword ptr [r14], 0
.label_306:
	test	r9, r9
	je	.label_311
	mov	qword ptr [r9], 0
.label_311:
	test	r15, r15
	je	.label_314
	mov	r12, rbx
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 0x20], r9
	xor	r13d, r13d
	mov	rbx, r15
	sub	rbx, rdi
	je	.label_316
	lea	rsi, [rbx + 1]
	call	xmemdup
	mov	r13, rax
	mov	byte ptr [r13 + rbx], 0
.label_316:
	xor	ebx, ebx
	cmp	byte ptr [r15 + 1], 0
	mov	qword ptr [rsp + 0x18], r12
	je	.label_296
	lea	rbx, [r15 + 1]
	jmp	.label_296
.label_314:
	xor	r12d, r12d
	cmp	byte ptr [rdi], 0
	je	.label_298
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 0x20], r9
	call	xstrdup
	mov	r13, rax
	xor	ebx, ebx
.label_296:
	xor	r12d, r12d
	test	r13, r13
	je	.label_310
	movzx	eax, byte ptr [r13]
	cmp	eax, 0x2b
	je	.label_313
	mov	rdi, r13
	call	getpwnam
	test	rax, rax
	je	.label_313
	mov	rax, qword ptr [rax + 0x10]
	xor	r12d, r12d
	test	r15, r15
	je	.label_321
	mov	r15, rbx
	test	r15, r15
	jne	.label_320
	mov	rbx, rax
	mov	qword ptr [rsp + 0x28], rax
	shr	rbx, 0x20
	mov	edi, ebx
	call	getgrgid
	test	rax, rax
	je	.label_297
	mov	qword ptr [rsp + 8], rbp
	mov	qword ptr [rsp], r14
	mov	rdi, qword ptr [rax]
	jmp	.label_300
.label_313:
	mov	qword ptr [rsp + 8], rbp
	mov	qword ptr [rsp], r14
	mov	r14d, OFFSET FLAT:.str.2_1
	xor	r12d, r12d
	test	r15, r15
	mov	r15, rbx
	je	.label_303
	test	r15, r15
	jne	.label_303
	mov	rbx, qword ptr [rsp + 0x18]
	jmp	.label_299
.label_310:
	mov	qword ptr [rsp + 8], rbp
	mov	qword ptr [rsp], r14
	xor	r13d, r13d
	xor	r14d, r14d
	mov	r15, rbx
	mov	rbx, qword ptr [rsp + 0x18]
	jmp	.label_318
.label_303:
	lea	rcx, [rsp + 0x30]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_0
	mov	rdi, r13
	call	xstrtoul
	test	eax, eax
	jne	.label_322
	mov	rax, qword ptr [rsp + 0x30]
	mov	rcx, rax
	shr	rcx, 0x20
	jne	.label_322
	xor	r14d, r14d
	cmp	eax, -1
	jne	.label_301
.label_322:
	mov	r14d, OFFSET FLAT:.str_6
	mov	rax, qword ptr [rsp + 0x28]
.label_301:
	xor	r12d, r12d
	mov	qword ptr [rsp + 0x28], rax
	mov	rbx, qword ptr [rsp + 0x18]
	jmp	.label_299
.label_298:
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x10], rdx
	xor	r13d, r13d
	jmp	.label_309
.label_321:
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 8], rbp
	mov	qword ptr [rsp], r14
	xor	r14d, r14d
	mov	r15, rbx
	mov	rbx, qword ptr [rsp + 0x18]
	jmp	.label_299
.label_320:
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 8], rbp
	mov	qword ptr [rsp], r14
	xor	r14d, r14d
	mov	rbx, qword ptr [rsp + 0x18]
	jmp	.label_299
.label_297:
	mov	qword ptr [rsp + 8], rbp
	mov	qword ptr [rsp], r14
	lea	rsi, [rsp + 0x30]
	mov	rdi, rbx
	call	umaxtostr
	mov	rdi, rax
.label_300:
	call	xstrdup
	mov	r12, rax
	call	endgrent
	xor	r14d, r14d
.label_299:
	call	endpwent
.label_318:
	test	r15, r15
	je	.label_305
	test	r14, r14
	jne	.label_305
	movzx	eax, byte ptr [r15]
	cmp	eax, 0x2b
	je	.label_307
	mov	rdi, r15
	call	getgrnam
	test	rax, rax
	je	.label_307
	mov	ebx, dword ptr [rax + 0x10]
	xor	r14d, r14d
	jmp	.label_315
.label_307:
	mov	rbp, rbx
	lea	rcx, [rsp + 0x30]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_0
	mov	rdi, r15
	call	xstrtoul
	test	eax, eax
	jne	.label_312
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rax, rbx
	shr	rax, 0x20
	jne	.label_312
	xor	r14d, r14d
	cmp	ebx, -1
	jne	.label_315
.label_312:
	mov	r14d, OFFSET FLAT:.str.1_3
	mov	ebx, ebp
.label_315:
	call	endgrent
	mov	rdi, r15
	call	xstrdup
	mov	r12, rax
.label_305:
	mov	r9, qword ptr [rsp + 0x20]
	test	r14, r14
	je	.label_302
	xor	ebx, ebx
	jmp	.label_319
.label_302:
	mov	r14, qword ptr [rsp]
	mov	rbp, qword ptr [rsp + 8]
.label_309:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rax], ecx
	test	rbp, rbp
	je	.label_304
	mov	dword ptr [rbp], ebx
.label_304:
	test	r14, r14
	je	.label_317
	mov	qword ptr [r14], r13
	xor	r13d, r13d
.label_317:
	mov	bl, 1
	xor	r14d, r14d
	test	r9, r9
	je	.label_319
	mov	qword ptr [r9], r12
	xor	r14d, r14d
	xor	r12d, r12d
.label_319:
	mov	rdi, r13
	call	free
	mov	rdi, r12
	call	free
	xor	eax, eax
	test	bl, bl
	jne	.label_308
	xor	edi, edi
	mov	edx, 5
	mov	rsi, r14
	call	dcgettext
.label_308:
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
	#Procedure 0x405520

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
	je	.label_327
	mov	edx, OFFSET FLAT:.str_7
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_326
.label_327:
	mov	edx, OFFSET FLAT:.str.1_4
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_326:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_2
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
	mov	esi, OFFSET FLAT:.str.3_1
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_332
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_323]]
.label_971:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_1
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
.label_332:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_1
	jmp	.label_331
.label_972:
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
.label_973:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6_1
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
.label_974:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_330
.label_975:
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
	jmp	.label_328
.label_976:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_325
.label_977:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_2
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
.label_325:
	mov	qword ptr [rsp + 0x10], rdi
.label_328:
	mov	qword ptr [rsp + 8], rsi
.label_330:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_329
.label_979:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_2
.label_331:
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
	jmp	.label_324
.label_978:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_2
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
.label_324:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_329:
	call	__fprintf_chk
.label_970:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405810
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_333:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_333
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405840
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_336:
	cmp	r10d, 0x28
	ja	.label_334
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_335
	nop	word ptr cs:[rax + rax]
.label_334:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_335:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_337
	inc	r9
	cmp	r9, 0xa
	jb	.label_336
.label_337:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4058a0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x128
	test	al, al
	je	.label_338
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_338:
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
.label_342:
	cmp	r8d, 0x28
	ja	.label_339
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_341
	nop	
.label_339:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_341:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_340
	inc	r9
	cmp	r9, 0xa
	jb	.label_342
.label_340:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4059a0
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
	mov	edx, OFFSET FLAT:.str.15_2
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
	#Procedure 0x405a20
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_343
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_344
	test	rax, rax
	je	.label_343
.label_344:
	pop	rbx
	ret	
.label_343:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a60

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_345
	test	rax, rax
	je	.label_346
.label_345:
	pop	rbx
	ret	
.label_346:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a80
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_347
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_348
	test	rbx, rbx
	jne	.label_348
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_348:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_349
	test	rax, rax
	je	.label_347
.label_349:
	pop	rbx
	ret	
.label_347:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ad0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_350
	test	rbx, rbx
	jne	.label_350
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_350:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_352
	test	rax, rax
	je	.label_351
.label_352:
	pop	rbx
	ret	
.label_351:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405b00
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_353
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_355
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_354
.label_353:
	test	rcx, rcx
	jne	.label_358
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_358:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_357
.label_354:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_356
	test	rbx, rbx
	jne	.label_356
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_356:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_359
	test	rax, rax
	je	.label_355
.label_359:
	pop	rbx
	ret	
.label_355:
	call	xalloc_die
.label_357:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ba0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_360
	test	rax, rax
	je	.label_361
.label_360:
	pop	rbx
	ret	
.label_361:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405bc0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_362
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_365
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_366
	call	free
	xor	eax, eax
	jmp	.label_363
.label_362:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_364
	mov	qword ptr [rsi], rbx
.label_366:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_363
	test	rax, rax
	je	.label_364
.label_363:
	pop	rbx
	ret	
.label_364:
	call	xalloc_die
.label_365:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c30
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
	je	.label_368
	test	r14, r14
	je	.label_367
.label_368:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_367:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c70
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_369
	call	rpl_calloc
	test	rax, rax
	je	.label_369
	pop	rcx
	ret	
.label_369:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ca0

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
	je	.label_370
	test	r15, r15
	je	.label_371
.label_370:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_371:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405ce0

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
	je	.label_373
	test	r15, r15
	je	.label_372
.label_373:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_372:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405d30

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
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405d60

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	test	rax, rax
	je	.label_375
	pop	rcx
	ret	
.label_375:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_374
	mov	edi, OFFSET FLAT:.str_8
	mov	esi, OFFSET FLAT:.str.1_6
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xfts_open
	call	__assert_fail
.label_374:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405da0

	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:
	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	je	.label_376
	cmp	ecx, 0x11
	jne	.label_377
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_376:
	ret	
.label_377:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405dc0

	.globl xstrtoul
	.type xstrtoul, @function
xstrtoul:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, r8
	mov	r12d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_392
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_382:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_382
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	movzx	eax, al
	mov	r13d, 4
	cmp	eax, 0x2d
	je	.label_379
	mov	rdi, rbx
	mov	edx, r12d
	mov	rbp, rsi
	call	strtoul
	mov	rcx, rbp
	mov	rbp, rax
	mov	r12, qword ptr [rcx]
	cmp	r12, rbx
	je	.label_394
	mov	eax, dword ptr [r15]
	xor	ebx, ebx
	test	eax, eax
	je	.label_396
	cmp	eax, 0x22
	jne	.label_379
	mov	ebx, 1
.label_396:
	test	r14, r14
	jne	.label_399
	jmp	.label_388
.label_394:
	test	r14, r14
	je	.label_379
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_379
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	ebx, ebx
	mov	ebp, 1
	test	rax, rax
	je	.label_379
.label_399:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_388
	mov	qword ptr [rsp], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_386
	mov	r15d, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_380
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_380
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	r15d, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_380
	movsx	eax, byte ptr [r12 + 1]
	mov	r15d, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_383
	cmp	eax, 0x44
	je	.label_383
	cmp	eax, 0x69
	jne	.label_380
	movzx	eax, byte ptr [r12 + 2]
	mov	r15d, 3
	cmp	eax, 0x42
	je	.label_389
	mov	r15d, 1
.label_389:
	mov	esi, 0x400
	jmp	.label_380
.label_383:
	mov	r15d, 2
	mov	esi, 0x3e8
.label_380:
	cmp	r13d, 0x59
	jg	.label_397
	lea	eax, [r13 - 0x42]
	cmp	eax, 0xe
	ja	.label_398
	jmp	qword ptr [word ptr [+ (rax * 8) + label_402]]
.label_918:
	mov	rax, rbp
	shr	rax, 0x36
	setne	dl
	shl	rbp, 0xa
	jmp	.label_400
.label_397:
	cmp	r13d, 0x73
	jg	.label_378
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	ja	.label_381
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_384]]
.label_925:
	mov	rax, rbp
	shr	rax, 0x37
	setne	dl
	shl	rbp, 9
.label_400:
	cmp	rax, 1
	sbb	rax, rax
	not	rax
	or	rbp, rax
	movzx	eax, dl
	jmp	.label_391
.label_398:
	cmp	r13d, 0x54
	je	.label_385
	cmp	r13d, 0x59
	jne	.label_386
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	dl, dl
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r10b, r10b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r14b, r14b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r13b, r13b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	bpl, bpl
	imul	rsi, rcx
	cmp	rax, rcx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	and	dl, 1
	or	dl, r14b
	or	dl, r13b
	or	dl, bpl
	jmp	.label_390
.label_378:
	cmp	r13d, 0x74
	je	.label_385
	cmp	r13d, 0x77
	jne	.label_386
	lea	rax, [rbp + rbp]
	test	rbp, rbp
	mov	rcx, -1
	cmovns	rcx, rax
	shr	rbp, 0x3f
	mov	eax, ebp
	mov	rbp, rcx
	jmp	.label_391
.label_920:
	mov	r8, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r8
	cmp	rax, rdi
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r8
	cmp	rax, rbp
	sbb	dil, dil
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, r8
	or	dl, r9b
	or	dl, dil
	jmp	.label_395
.label_921:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	and	eax, 1
	jmp	.label_387
.label_922:
	mov	r8, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r8
	cmp	rax, rdi
	sbb	dl, dl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r8
	or	dl, r9b
	jmp	.label_395
.label_385:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	cl, cl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	or	dl, r10b
	or	dl, cl
	jmp	.label_395
.label_381:
	cmp	r13d, 0x5a
	jne	.label_386
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	dl, dl
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r10b, r10b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r14b, r14b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	cl, cl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	or	dl, r14b
	or	dl, cl
.label_390:
	movzx	eax, dl
	and	eax, 1
	jmp	.label_387
.label_386:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	or	ebx, 2
	jmp	.label_393
.label_919:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	r11b, r11b
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r14b, r14b
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
	or	dl, r11b
	or	dl, r14b
	or	dl, bpl
.label_395:
	and	dl, 1
	movzx	eax, dl
.label_387:
	mov	rbp, rsi
.label_391:
	or	eax, ebx
	lea	rcx, [r12 + r15]
	mov	rdx, qword ptr [rsp]
	mov	qword ptr [rdx], rcx
	cmp	byte ptr [r12 + r15], 0
	je	.label_401
	or	eax, 2
.label_401:
	mov	ebx, eax
.label_388:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
.label_393:
	mov	r13d, ebx
.label_379:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_923:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rdx, rbp
	imul	rdx, rsi
	cmp	rax, rbp
	cmovb	rdx, rdi
	cmp	rax, rdx
	sbb	cl, cl
	mov	rbp, rdx
	imul	rbp, rsi
	cmp	rax, rdx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rdx, rbp
	imul	rdx, rsi
	cmp	rax, rbp
	cmovb	rdx, rdi
	cmp	rax, rdx
	sbb	r10b, r10b
	mov	rbp, rdx
	imul	rbp, rsi
	cmp	rax, rdx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	dl, dl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	cl, r8b
	or	cl, r9b
	or	cl, r10b
	or	cl, dl
	and	cl, 1
	movzx	eax, cl
	jmp	.label_387
.label_392:
	mov	edi, OFFSET FLAT:.str_9
	mov	esi, OFFSET FLAT:.str.1_7
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoul
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406450

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_403
	test	rsi, rsi
	mov	ecx, 1
	je	.label_404
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_404
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_403:
	mov	ecx, 1
.label_404:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4064a0

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
	jae	.label_406
	mov	eax, r15d
	and	eax, 0x204
	cmp	eax, 0x204
	je	.label_406
	test	r15b, 0x12
	je	.label_406
	mov	edi, 0x80
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_433
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
	je	.label_437
	mov	r14, rbx
	lea	rbx, [r12 + 8]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_417:
	call	strlen
	cmp	rax, rbp
	cmova	rbp, rax
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_417
	inc	rbp
	mov	rbx, r14
.label_437:
	cmp	rbp, 0x1000
	mov	esi, 0x1000
	cmova	rsi, rbp
	add	rsi, 0x100
	mov	qword ptr [rbx + 0x30], rsi
	xor	edi, edi
	call	realloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_435
	mov	r14d, r15d
	mov	qword ptr [rbx + 0x20], rbp
	mov	qword ptr [rsp + 0x18], rbx
	mov	r15, qword ptr [r12]
	mov	qword ptr [rsp + 0x30], r12
	xor	r12d, r12d
	test	r15, r15
	je	.label_429
	mov	edi, 0x110
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_434
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
.label_429:
	mov	byte ptr [rsp + 0x17], 1
	test	r13, r13
	je	.label_413
	mov	rax, qword ptr [rsp + 0x18]
	mov	al, byte ptr [rax + 0x49]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0x17], al
.label_413:
	xor	ebp, ebp
	test	r15, r15
	je	.label_411
	mov	qword ptr [rsp + 8], r12
	mov	ebx, r14d
	and	ebx, 0x800
	mov	dword ptr [rsp + 4], ebx
	xor	ebp, ebp
	xor	r12d, r12d
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_436:
	mov	qword ptr [rsp + 0x28], rbp
	mov	rdi, r15
	call	strlen
	mov	rbp, rax
	test	ebx, ebx
	jne	.label_432
	cmp	rbp, 3
	jb	.label_425
	cmp	rbp, 2
	jb	.label_427
	movzx	eax, byte ptr [rbp + r15 - 1]
	cmp	eax, 0x2f
	jne	.label_438
	mov	qword ptr [rsp + 0x20], r12
.label_431:
	movzx	eax, byte ptr [r15 + rbp - 2]
	cmp	eax, 0x2f
	jne	.label_412
	dec	rbp
	cmp	rbp, 1
	ja	.label_431
	jmp	.label_412
.label_432:
	mov	qword ptr [rsp + 0x20], r12
	jmp	.label_412
.label_425:
	mov	qword ptr [rsp + 0x20], r12
	jmp	.label_412
.label_427:
	mov	qword ptr [rsp + 0x20], r12
	jmp	.label_412
.label_438:
	mov	qword ptr [rsp + 0x20], r12
.label_412:
	mov	rbx, r13
	lea	rdi, [rbp + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_430
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
	jne	.label_409
	mov	word ptr [r12 + 0x70], 0xb
	mov	qword ptr [r12 + 0xa8], 2
	jmp	.label_418
	nop	dword ptr [rax + rax]
.label_409:
	xor	edx, edx
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
.label_418:
	mov	r13, rbx
	test	r13, r13
	je	.label_423
	mov	rbp, r12
	mov	qword ptr [r12 + 0x10], r15
	mov	r12, qword ptr [rsp + 0x20]
	jmp	.label_421
.label_423:
	mov	qword ptr [r12 + 0x10], 0
	test	r15, r15
	mov	rbp, r12
	je	.label_421
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + 0x10], r12
	mov	rbp, r15
.label_421:
	inc	r14
	mov	rax, qword ptr [rsp + 0x30]
	mov	r15, qword ptr [rax + 8]
	add	rax, 8
	mov	qword ptr [rsp + 0x30], rax
	test	r15, r15
	mov	ebx, dword ptr [rsp + 4]
	jne	.label_436
	test	r13, r13
	mov	rdi, qword ptr [rsp + 0x18]
	je	.label_408
	cmp	r14, 2
	mov	r12, qword ptr [rsp + 8]
	jb	.label_411
	mov	rsi, rbp
	mov	rdx, r14
	call	fts_sort
	mov	rbp, rax
	jmp	.label_411
.label_406:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
.label_433:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_435:
	mov	rdi, qword ptr [rbx + 0x20]
	jmp	.label_416
.label_430:
	mov	rbp, qword ptr [rsp + 0x28]
	mov	r12, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rsp + 0x18]
	jmp	.label_410
.label_434:
	mov	rbx, qword ptr [rsp + 0x18]
	jmp	.label_419
.label_408:
	mov	r12, qword ptr [rsp + 8]
.label_411:
	mov	edi, 0x110
	call	malloc
	test	rax, rax
	je	.label_424
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
	je	.label_426
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	jne	.label_407
	jmp	.label_410
.label_424:
	mov	rbx, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx], 0
	jmp	.label_410
.label_426:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	je	.label_410
	mov	rdi, rax
	call	cycle_check_init
.label_407:
	mov	eax, dword ptr [rbx + 0x48]
	test	ax, 0x204
	jne	.label_414
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_415
	mov	edi, OFFSET FLAT:.str_10
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_420
.label_410:
	mov	r14, rbx
	test	rbp, rbp
	je	.label_422
	nop	
.label_428:
	mov	rbx, qword ptr [rbp + 0x10]
	mov	rdi, qword ptr [rbp + 0x18]
	test	rdi, rdi
	je	.label_405
	call	closedir
.label_405:
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	mov	rbp, rbx
	jne	.label_428
.label_422:
	mov	rdi, r12
	call	free
	mov	rbx, r14
	mov	rbp, qword ptr [rbx + 0x20]
.label_419:
	mov	rdi, rbp
.label_416:
	call	free
	mov	rdi, rbx
	call	free
	xor	eax, eax
	jmp	.label_433
.label_415:
	mov	edi, dword ptr [rbx + 0x2c]
	mov	esi, OFFSET FLAT:.str_10
	xor	eax, eax
	call	openat_safer
.label_420:
	mov	dword ptr [rbx + 0x28], eax
	test	eax, eax
	jns	.label_414
	or	byte ptr [rbx + 0x48], 4
.label_414:
	mov	rdi, rbx
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	mov	rax, rbx
	jmp	.label_433
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a00

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
	jne	.label_439
	test	al, 1
	je	.label_439
	mov	dl, 1
.label_439:
	lea	rbx, [r14 + 0x78]
	test	dl, dl
	jne	.label_446
	and	eax, 2
	jne	.label_446
	mov	esi, dword ptr [r15 + 0x2c]
	mov	rdx, qword ptr [r14 + 0x30]
	mov	edi, 1
	mov	r8d, 0x100
	mov	rcx, rbx
	call	__fxstatat
	test	eax, eax
	je	.label_441
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_444
.label_446:
	mov	rsi, qword ptr [r14 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__xstat
	test	eax, eax
	je	.label_441
	call	__errno_location
	mov	r15, rax
	mov	eax, dword ptr [r15]
	cmp	eax, 2
	jne	.label_444
	mov	rsi, qword ptr [r14 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__lxstat
	test	eax, eax
	je	.label_443
	mov	eax, dword ptr [r15]
.label_444:
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
.label_442:
	movzx	eax, ax
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_441:
	mov	ecx, 0xf000
	and	ecx, dword ptr [r14 + 0x90]
	mov	ax, 0xc
	cmp	ecx, 0xa000
	je	.label_442
	cmp	ecx, 0x8000
	je	.label_447
	cmp	ecx, 0x4000
	jne	.label_448
	mov	rax, qword ptr [r14 + 0x88]
	mov	rcx, -1
	cmp	rax, 2
	jb	.label_440
	cmp	qword ptr [r14 + 0x58], 0
	jle	.label_440
	mov	ecx, dword ptr [r15 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_440:
	mov	qword ptr [r14 + 0x68], rcx
	mov	ecx, dword ptr [r14 + 0x108]
	mov	ax, 1
	movzx	edx, cl
	cmp	edx, 0x2e
	jne	.label_442
	mov	edx, ecx
	shr	edx, 8
	test	dl, dl
	je	.label_445
	movzx	edx, dl
	cmp	edx, 0x2e
	jne	.label_442
	test	ecx, 0xff0000
	jne	.label_442
.label_445:
	mov	ax, 1
	cmp	qword ptr [r14 + 0x58], 0
	je	.label_442
	mov	ax, 5
	jmp	.label_442
.label_447:
	mov	ax, 8
	jmp	.label_442
.label_448:
	mov	ax, 3
	jmp	.label_442
.label_443:
	mov	dword ptr [r15], 0
	mov	ax, 0xd
	jmp	.label_442
	nop	
	.section	.text
	.align	16
	#Procedure 0x406ba0

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
	jae	.label_455
	lea	rsi, [r14 + 0x28]
	mov	qword ptr [r12 + 0x38], rsi
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_456
	lea	r13, [r12 + 0x10]
	mov	rdi, qword ptr [r13]
	shl	rsi, 3
	call	realloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_456
	mov	qword ptr [r13], rdi
	jmp	.label_458
.label_455:
	mov	rdi, qword ptr [r12 + 0x10]
	add	r12, 0x10
	mov	r13, r12
.label_458:
	test	rbx, rbx
	je	.label_450
	nop	dword ptr [rax]
.label_452:
	mov	qword ptr [rdi], rbx
	add	rdi, 8
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	jne	.label_452
	mov	rdi, qword ptr [r13]
.label_450:
	mov	edx, 8
	mov	rsi, r14
	mov	rcx, r15
	call	qsort
	mov	r9, qword ptr [r13]
	mov	rbx, qword ptr [r9]
	cmp	r14, 1
	mov	rcx, rbx
	je	.label_459
	mov	rcx, qword ptr [r9 + 8]
	mov	qword ptr [rbx + 0x10], rcx
	mov	rcx, r14
	add	rcx, -2
	je	.label_451
	lea	rdx, [r9 + 8]
	lea	edi, [r14 + 2]
	lea	r8, [r14 - 3]
	test	dil, 3
	je	.label_453
	lea	edi, [r14 + 2]
	and	edi, 3
	neg	rdi
	nop	dword ptr [rax]
.label_449:
	mov	rsi, qword ptr [rdx]
	mov	rax, qword ptr [rdx + 8]
	lea	rdx, [rdx + 8]
	mov	qword ptr [rsi + 0x10], rax
	dec	rcx
	inc	rdi
	jne	.label_449
.label_453:
	cmp	r8, 3
	jb	.label_451
	nop	dword ptr [rax]
.label_457:
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
	jne	.label_457
.label_451:
	mov	rcx, qword ptr [r9 + r14*8 - 8]
.label_459:
	mov	qword ptr [rcx + 0x10], 0
	jmp	.label_454
.label_456:
	mov	rdi, qword ptr [r12 + 0x10]
	call	free
	mov	qword ptr [r12 + 0x10], 0
	mov	qword ptr [r12 + 0x38], 0
.label_454:
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
	#Procedure 0x406d20

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_465
	cmp	qword ptr [rdi + 0x58], 0
	js	.label_463
	nop	word ptr cs:[rax + rax]
.label_478:
	mov	rbx, qword ptr [rdi + 0x10]
	test	rbx, rbx
	jne	.label_471
	mov	rbx, qword ptr [rdi + 8]
.label_471:
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	mov	rdi, rbx
	jns	.label_478
	jmp	.label_474
.label_463:
	mov	rbx, rdi
.label_474:
	mov	rdi, rbx
	call	free
.label_465:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_476
	nop	word ptr cs:[rax + rax]
.label_462:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_460
	call	closedir
.label_460:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_462
.label_476:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_468
	xor	ebp, ebp
	test	al, 4
	jne	.label_469
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebp, ebp
	test	eax, eax
	je	.label_473
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_473:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	test	ebp, ebp
	je	.label_475
	jmp	.label_469
.label_468:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebp, ebp
	test	edi, edi
	js	.label_469
	call	close
.label_475:
	test	eax, eax
	je	.label_469
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_469:
	lea	rbx, [r14 + 0x60]
	jmp	.label_461
	nop	dword ptr [rax + rax]
.label_466:
	mov	edi, eax
	call	close
.label_461:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_464
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_466
	jmp	.label_461
.label_464:
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_467
	call	hash_free
.label_467:
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_470
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_472
	call	hash_free
	jmp	.label_472
.label_470:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_472:
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	ebp, ebp
	je	.label_477
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_477:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406e90

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
	je	.label_479
	mov	eax, dword ptr [r14 + 0x48]
	xor	r15d, r15d
	test	ah, 0x20
	jne	.label_479
	movzx	ecx, word ptr [r12 + 0x74]
	mov	word ptr [r12 + 0x74], 3
	cmp	ecx, 1
	je	.label_505
	movzx	edx, cx
	cmp	edx, 2
	jne	.label_530
	mov	ecx, dword ptr [r12 + 0x70]
	mov	esi, ecx
	and	esi, 0xfffe
	cmp	esi, 0xc
	jne	.label_533
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_535
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_485
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_489
	mov	edi, OFFSET FLAT:.str_10
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_498
.label_505:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	mov	r15, r12
	jmp	.label_479
.label_530:
	lea	r13, [r12 + 0x70]
	mov	ecx, dword ptr [r12 + 0x70]
	jmp	.label_503
.label_533:
	lea	r13, [r12 + 0x70]
.label_503:
	movzx	esi, cx
	cmp	esi, 1
	jne	.label_486
	cmp	edx, 4
	je	.label_507
	test	al, 0x40
	je	.label_513
	mov	rdx, qword ptr [r12 + 0x78]
	cmp	rdx, qword ptr [r14 + 0x18]
	jne	.label_507
.label_513:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_518
	test	ah, 0x10
	jne	.label_522
	mov	rcx, qword ptr [r12 + 0x30]
	mov	edx, 0xffffffff
	mov	rdi, r14
	mov	rsi, r12
	call	fts_safe_changedir
	test	eax, eax
	je	.label_519
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	or	byte ptr [r12 + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_529
	nop	word ptr cs:[rax + rax]
.label_486:
	mov	r15, qword ptr [r12 + 0x10]
	test	r15, r15
	je	.label_521
	mov	qword ptr [r14], r15
	mov	rdi, r12
	call	free
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_483
	movzx	eax, word ptr [r15 + 0x74]
	cmp	eax, 4
	mov	r12, r15
	je	.label_486
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_491
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_493
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_493
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_511
	mov	edi, OFFSET FLAT:.str_10
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_510
.label_516:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_529:
	test	rax, rax
	jne	.label_516
	jmp	.label_519
.label_507:
	test	ecx, 0x20000
	je	.label_520
	mov	edi, dword ptr [r12 + 0x44]
	call	close
.label_520:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_494
	nop	dword ptr [rax]
.label_532:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_526
	call	closedir
.label_526:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_532
	mov	qword ptr [r14 + 8], 0
.label_494:
	mov	word ptr [r12 + 0x70], 6
.label_484:
	mov	rdi, r14
	mov	rsi, r12
	call	leave_dir
	mov	r15, r12
	jmp	.label_479
.label_521:
	mov	r15, qword ptr [r12 + 8]
	cmp	qword ptr [r15 + 0x18], 0
	je	.label_480
	mov	qword ptr [r14], r15
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	r15, rax
	test	r15, r15
	je	.label_495
	mov	rdi, r12
	call	free
	jmp	.label_491
.label_535:
	mov	r15, r12
	jmp	.label_482
.label_483:
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	mov	eax, dword ptr [r14 + 0x48]
	je	.label_502
	or	eax, 0x2000
	mov	dword ptr [r14 + 0x48], eax
	xor	r15d, r15d
	jmp	.label_479
.label_485:
	mov	r15, r12
	jmp	.label_482
.label_502:
	test	ax, 0x102
	je	.label_508
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_490
	call	hash_free
	jmp	.label_490
.label_522:
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	nop	word ptr cs:[rax + rax]
.label_528:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_524
	call	closedir
.label_524:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_528
	mov	qword ptr [r14 + 8], 0
.label_518:
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_534
.label_519:
	mov	r15, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], 0
	jmp	.label_491
.label_534:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_479
	cmp	dword ptr [r12 + 0x40], 0
	je	.label_484
	movzx	eax, word ptr [r13]
	cmp	eax, 4
	je	.label_484
	mov	word ptr [r13], 7
	jmp	.label_484
.label_489:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:.str_10
	xor	eax, eax
	call	openat_safer
.label_498:
	mov	dword ptr [r12 + 0x44], eax
	test	eax, eax
	js	.label_499
	or	byte ptr [r12 + 0x72], 2
	mov	r15, r12
	jmp	.label_482
.label_495:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_479
	mov	r15, qword ptr [r12 + 8]
.label_480:
	mov	qword ptr [r14], r15
	mov	rdi, r12
	call	free
	cmp	qword ptr [r15 + 0x58], -1
	je	.label_509
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	je	.label_500
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_515
	movzx	eax, word ptr [r15 + 0x72]
	test	al, 2
	jne	.label_523
	test	al, 1
	jne	.label_525
	mov	rsi, qword ptr [r15 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_3
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_531
.label_509:
	mov	rdi, r15
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	xor	r15d, r15d
	jmp	.label_479
.label_499:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	mov	word ptr [r12 + 0x70], 7
	mov	r15, r12
	jmp	.label_482
.label_508:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_490:
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
	je	.label_501
	cmp	rbx, r12
	jne	.label_506
	cmp	byte ptr [r15 + 0x109], 0
	je	.label_501
.label_506:
	inc	rbx
	mov	rdi, rbx
	call	strlen
	mov	r13, rax
	lea	rdx, [r13 + 1]
	mov	rdi, r12
	mov	rsi, rbx
	call	memmove
	mov	qword ptr [r15 + 0x60], r13
.label_501:
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [r15 + 0x38], rax
	mov	qword ptr [r15 + 0x30], rax
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_488
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [r14 + 0x58], rax
	jmp	.label_482
.label_488:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [r14 + 0x58], rax
	test	rax, rax
	je	.label_482
	mov	rdi, rax
	call	cycle_check_init
	jmp	.label_482
.label_515:
	mov	rdi, r14
	call	restore_initial_cwd
.label_531:
	test	eax, eax
	je	.label_525
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_525
.label_523:
	mov	eax, dword ptr [r14 + 0x48]
	lea	rbx, [r15 + 0x44]
	test	al, 4
	jne	.label_497
	test	ah, 2
	mov	ebp, dword ptr [r15 + 0x44]
	jne	.label_487
	mov	edi, ebp
	call	fchdir
	test	eax, eax
	je	.label_497
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_497
.label_511:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:.str_10
	xor	eax, eax
	call	openat_safer
.label_510:
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_496
	or	byte ptr [r15 + 0x72], 2
	jmp	.label_493
.label_496:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
.label_493:
	mov	word ptr [r15 + 0x74], 3
.label_491:
	mov	rax, qword ptr [r14 + 0x20]
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rcx + 0x48]
	movzx	edx, byte ptr [rdx + rcx - 1]
	cmp	edx, 0x2f
	jne	.label_512
	dec	rcx
.label_512:
	lea	rdi, [rax + rcx + 1]
	mov	byte ptr [rax + rcx], 0x2f
	lea	rsi, [r15 + 0x108]
	mov	rdx, qword ptr [r15 + 0x60]
	inc	rdx
	call	memmove
.label_482:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	jne	.label_492
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_481
	cmp	rax, 2
	jne	.label_500
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_517
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_517
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	filesystem_type
	cmp	rax, 0x52654973
	je	.label_481
	cmp	rax, 0x58465342
	je	.label_481
.label_517:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	cmp	ecx, 0x4000
	jne	.label_492
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_481
	mov	rax, qword ptr [rbx + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_481
	dec	rax
	mov	qword ptr [rbx + 0x68], rax
.label_481:
	movzx	eax, word ptr [r15 + 0x70]
.label_492:
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_479
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_504
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_504:
	mov	rdi, r14
	mov	rsi, r15
	call	enter_dir
	test	al, al
	jne	.label_479
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r15d, r15d
	jmp	.label_479
.label_487:
	mov	esi, dword ptr [r14 + 0x2c]
	cmp	esi, ebp
	jne	.label_514
	cmp	esi, -0x64
	jne	.label_500
.label_514:
	lea	rdi, [r14 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_536
	mov	edi, eax
	call	close
.label_536:
	mov	dword ptr [r14 + 0x2c], ebp
.label_497:
	mov	edi, dword ptr [rbx]
	call	close
.label_525:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	je	.label_527
	mov	eax, dword ptr [r15 + 0x40]
	cmp	eax, 0
	setne	cl
	movzx	ecx, cl
	or	ecx, 6
	cmp	eax, 0
	mov	word ptr [r15 + 0x70], cx
	jne	.label_527
	mov	rdi, r14
	mov	rsi, r15
	call	leave_dir
.label_527:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	r15, rax
.label_479:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_500:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407620

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_537
	movups	xmm0, xmmword ptr [rsi + 0x78]
	movaps	xmmword ptr [rsp], xmm0
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_539
	mov	rdi, rax
	call	free
	add	rsp, 0x18
	ret	
.label_537:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_538
	cmp	qword ptr [rax + 0x58], 0
	js	.label_538
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_539
	mov	rdx, qword ptr [rcx]
	cmp	rdx, qword ptr [rsi + 0x80]
	jne	.label_538
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	jne	.label_538
	mov	rdx, qword ptr [rax + 0x78]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	qword ptr [rcx], rax
.label_538:
	add	rsp, 0x18
	ret	
.label_539:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4076b0

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
	je	.label_551
	movzx	edx, byte ptr [rbx]
	mov	ecx, 0x2e
	mov	eax, 0x2e
	sub	eax, edx
	jne	.label_556
	movzx	eax, byte ptr [rbx + 1]
	sub	ecx, eax
	mov	eax, ecx
	jne	.label_556
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_556:
	test	eax, eax
	sete	r14b
	jmp	.label_557
.label_551:
	xor	r14d, r14d
.label_557:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 4
	jne	.label_561
	test	r13d, r13d
	jns	.label_540
	mov	cl, r14b
	xor	cl, 1
	jne	.label_542
	mov	qword ptr [rsp], rsi
	and	eax, 0x200
	je	.label_544
	lea	rbp, [r15 + 0x60]
	mov	rdi, rbp
	call	i_ring_empty
	test	al, al
	jne	.label_544
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r14b, 1
	jmp	.label_544
.label_561:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_548
	and	eax, 0x200
	je	.label_548
	mov	edi, r13d
	call	close
	jmp	.label_548
.label_540:
	mov	qword ptr [rsp], rsi
	jmp	.label_544
.label_542:
	mov	qword ptr [rsp], rsi
.label_544:
	test	r13d, r13d
	mov	r12d, r13d
	jns	.label_558
	mov	eax, dword ptr [r15 + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_560
	xor	eax, eax
	mov	rdi, rbx
	mov	esi, edx
	call	open_safer
	jmp	.label_547
.label_560:
	mov	edi, dword ptr [r15 + 0x2c]
	xor	eax, eax
	mov	rsi, rbx
	call	openat_safer
.label_547:
	mov	r12d, eax
	mov	ebp, 0xffffffff
	test	r12d, r12d
	js	.label_548
.label_558:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 2
	jne	.label_554
	test	rbx, rbx
	je	.label_555
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x2e
	jne	.label_555
	movzx	ecx, byte ptr [rbx + 1]
	cmp	ecx, 0x2e
	jne	.label_555
	cmp	byte ptr [rbx + 2], 0
	jne	.label_555
.label_554:
	lea	rdx, [rsp + 8]
	mov	edi, 1
	mov	esi, r12d
	call	__fxstat
	test	eax, eax
	jne	.label_559
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_541
	mov	rax, qword ptr [rcx + 0x80]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_541
	mov	eax, dword ptr [r15 + 0x48]
.label_555:
	test	ah, 2
	jne	.label_545
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	jmp	.label_549
.label_545:
	mov	esi, dword ptr [r15 + 0x2c]
	cmp	esi, r12d
	jne	.label_550
	cmp	esi, -0x64
	jne	.label_552
.label_550:
	test	r14b, r14b
	je	.label_553
	test	al, 4
	jne	.label_543
	test	esi, esi
	js	.label_543
	mov	edi, esi
	jmp	.label_546
.label_541:
	call	__errno_location
	mov	dword ptr [rax], 2
.label_559:
	mov	ebp, 0xffffffff
.label_549:
	test	r13d, r13d
	jns	.label_548
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_548
.label_553:
	lea	rdi, [r15 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_543
	mov	edi, eax
.label_546:
	call	close
.label_543:
	mov	dword ptr [r15 + 0x2c], r12d
	xor	ebp, ebp
.label_548:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_552:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4078b0

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
	je	.label_567
	mov	qword ptr [rsp + 0x48], rdi
	call	dirfd
	mov	dword ptr [rsp + 0xa4], eax
	test	eax, eax
	js	.label_600
	mov	qword ptr [rsp + 0x40], -1
	cmp	qword ptr [r13 + 0x40], 0
	jne	.label_603
	mov	eax, 0x186a0
	mov	qword ptr [rsp + 0x40], rax
.label_603:
	lea	rax, [r13 + 0x40]
	mov	qword ptr [rsp + 0x58], rax
	lea	rax, [r13 + 0x48]
	mov	qword ptr [rsp + 0x90], rax
	mov	al, 1
	mov	dword ptr [rsp + 0x1c], eax
	jmp	.label_608
.label_567:
	mov	qword ptr [rsp + 0x48], rdi
	mov	eax, dword ptr [r13 + 0x48]
	mov	ecx, eax
	and	ecx, 0x204
	mov	edi, 0xffffff9c
	cmp	ecx, 0x200
	jne	.label_614
	mov	edi, dword ptr [r13 + 0x2c]
.label_614:
	mov	rsi, qword ptr [r12 + 0x30]
	xor	edx, edx
	test	al, 0x10
	je	.label_617
	test	al, 1
	je	.label_620
	cmp	qword ptr [r12 + 0x58], 0
	je	.label_617
.label_620:
	mov	edx, 0x20000
.label_617:
	lea	rcx, [rsp + 0xa4]
	call	opendirat
	mov	qword ptr [r12 + 0x18], rax
	test	rax, rax
	je	.label_627
	lea	rcx, [r13 + 0x48]
	movzx	eax, word ptr [r12 + 0x70]
	cmp	eax, 0xb
	jne	.label_629
	mov	qword ptr [rsp + 0x90], rcx
	xor	edx, edx
	mov	rdi, r13
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	jmp	.label_562
.label_600:
	mov	rdi, qword ptr [r12 + 0x18]
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
.label_627:
	xor	ebx, ebx
	cmp	r15d, 3
	jne	.label_563
	mov	word ptr [r12 + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	xor	ebx, ebx
	jmp	.label_563
.label_629:
	test	byte ptr [rcx + 1], 1
	mov	qword ptr [rsp + 0x90], rcx
	je	.label_562
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
	je	.label_566
.label_562:
	mov	qword ptr [rsp + 0x40], -1
	cmp	qword ptr [r13 + 0x40], 0
	jne	.label_568
	mov	eax, 0x186a0
	mov	qword ptr [rsp + 0x40], rax
.label_568:
	lea	rax, [r13 + 0x40]
	mov	qword ptr [rsp + 0x58], rax
	cmp	r15d, 2
	je	.label_574
	mov	rax, qword ptr [rsp + 0x90]
	mov	eax, dword ptr [rax]
	and	eax, 0x38
	cmp	eax, 0x18
	jne	.label_576
	cmp	qword ptr [r12 + 0x88], 2
	jne	.label_576
	mov	esi, dword ptr [rsp + 0xa4]
	mov	rdi, r12
	call	filesystem_type
	cmp	rax, 0x9f9f
	jle	.label_583
	cmp	rax, 0x9fa0
	je	.label_576
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	je	.label_576
	cmp	rax, 0x5346414f
	je	.label_576
	jmp	.label_574
.label_566:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	ebx, ebx
	jmp	.label_563
.label_583:
	test	rax, rax
	je	.label_576
	cmp	rax, 0x6969
	jne	.label_574
.label_576:
	cmp	r15d, 3
	sete	bl
	mov	r14b, 1
	jmp	.label_593
.label_574:
	cmp	r15d, 3
	sete	bl
	mov	r14d, 0
	jne	.label_595
.label_593:
	mov	dword ptr [rsp + 0x24], r15d
	mov	rax, qword ptr [rsp + 0x90]
	test	byte ptr [rax + 1], 2
	mov	ebp, dword ptr [rsp + 0xa4]
	je	.label_598
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebp
	call	rpl_fcntl
	mov	ebp, eax
	mov	dword ptr [rsp + 0xa4], ebp
.label_598:
	test	ebp, ebp
	js	.label_607
	xor	ecx, ecx
	mov	rdi, r13
	mov	rsi, r12
	mov	edx, ebp
	call	fts_safe_changedir
	test	eax, eax
	je	.label_596
.label_607:
	and	bl, r14b
	movzx	eax, bl
	cmp	eax, 1
	jne	.label_610
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
.label_610:
	or	byte ptr [r12 + 0x72], 1
	mov	rdi, qword ptr [r12 + 0x18]
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
	mov	rax, qword ptr [rsp + 0x90]
	mov	eax, dword ptr [rax]
	test	ah, 2
	je	.label_621
	mov	edi, dword ptr [rsp + 0xa4]
	test	edi, edi
	js	.label_621
	call	close
.label_621:
	mov	qword ptr [r12 + 0x18], 0
	mov	dword ptr [rsp + 0x1c], 0
	jmp	.label_625
.label_595:
	mov	dword ptr [rsp + 0x1c], 0
	jmp	.label_608
.label_596:
	mov	al, 1
	mov	dword ptr [rsp + 0x1c], eax
.label_625:
	mov	r15d, dword ptr [rsp + 0x24]
.label_608:
	mov	rax, qword ptr [r12 + 0x38]
	mov	rdx, qword ptr [r12 + 0x48]
	movzx	eax, byte ptr [rax + rdx - 1]
	cmp	eax, 0x2f
	jne	.label_633
	dec	rdx
.label_633:
	mov	dword ptr [rsp + 0x24], r15d
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	mov	rax, qword ptr [rsp + 0x90]
	test	byte ptr [rax], 4
	je	.label_637
	mov	rax, qword ptr [r13 + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x68], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_637:
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
.label_605:
	mov	rbx, qword ptr [r12 + 0x18]
	test	rbx, rbx
	je	.label_570
	mov	qword ptr [rsp + 0x50], rax
	mov	qword ptr [rsp + 0x88], rbp
	call	__errno_location
	mov	qword ptr [rsp + 0x98], rax
	mov	rbp, qword ptr [rsp + 0x90]
	nop	dword ptr [rax]
.label_591:
	mov	rax, qword ptr [rsp + 0x98]
	mov	dword ptr [rax], 0
	mov	rdi, rbx
	call	readdir
	mov	r14, rax
	test	r14, r14
	je	.label_582
	mov	r13, r14
	add	r13, 0x13
	test	byte ptr [rbp], 0x20
	jne	.label_585
	movzx	eax, byte ptr [r13]
	cmp	eax, 0x2e
	jne	.label_585
	movzx	eax, byte ptr [r14 + 0x14]
	cmp	eax, 0x2e
	je	.label_587
	test	al, al
	je	.label_589
	jmp	.label_585
	nop	dword ptr [rax]
.label_587:
	cmp	byte ptr [r14 + 0x15], 0
	jne	.label_585
.label_589:
	mov	rbx, qword ptr [r12 + 0x18]
	test	rbx, rbx
	jne	.label_591
	jmp	.label_594
	nop	word ptr cs:[rax + rax]
.label_585:
	mov	rdi, r13
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_601
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
	jae	.label_579
	mov	rdx, qword ptr [rsp + 0x80]
	jmp	.label_622
	nop	word ptr cs:[rax + rax]
.label_579:
	mov	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rax + rbx]
	add	rsi, qword ptr [rbp + 0x30]
	jb	.label_628
	mov	qword ptr [rbp + 0x30], rsi
	mov	rdi, r13
	call	realloc
	test	rax, rax
	je	.label_634
	mov	qword ptr [rbp + 0x20], rax
	cmp	r13, rax
	je	.label_635
	mov	rdx, qword ptr [rsp + 0x80]
	add	rax, rdx
	mov	rcx, qword ptr [rsp + 0x90]
	test	byte ptr [rcx], 4
	mov	rcx, qword ptr [rsp + 0x68]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x68], rcx
	mov	al, 1
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_636
.label_635:
	mov	rdx, qword ptr [rsp + 0x80]
.label_636:
	mov	rax, qword ptr [rbp + 0x30]
	sub	rax, rdx
.label_622:
	add	rbx, rdx
	jb	.label_630
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
	jne	.label_641
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_571
	nop	word ptr cs:[rax + rax]
.label_641:
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x68]
	mov	rsi, qword ptr [rsp + 0x38]
	call	memmove
.label_571:
	mov	rax, qword ptr [rsp + 0x90]
	mov	edx, dword ptr [rax]
	mov	rax, qword ptr [rsp + 0x58]
	cmp	qword ptr [rax], 0
	je	.label_581
	mov	eax, edx
	and	eax, 0x400
	jne	.label_581
	xor	edx, edx
	mov	rdi, r13
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	mov	rbp, qword ptr [rsp + 0x88]
	jmp	.label_588
	nop	dword ptr [rax]
.label_581:
	and	edx, 0x18
	movzx	ecx, byte ptr [r14 + 0x12]
	xor	eax, eax
	cmp	edx, 0x18
	mov	edx, 0
	jne	.label_611
	cmp	ecx, 4
	setne	bl
	test	cl, cl
	setne	dl
	and	dl, bl
.label_611:
	mov	word ptr [r12 + 0x70], 0xb
	lea	esi, [rcx - 1]
	cmp	esi, 0xb
	mov	rbp, qword ptr [rsp + 0x88]
	ja	.label_599
	mov	eax,  dword ptr [dword ptr [+ (rcx * 4) + label_626]]
.label_599:
	mov	dword ptr [r12 + 0x90], eax
	cmp	dl, 1
	mov	eax, 1
	adc	rax, 0
	mov	qword ptr [r12 + 0xa8], rax
.label_588:
	mov	qword ptr [r12 + 0x10], 0
	test	r15, r15
	mov	rax, r12
	je	.label_606
	mov	rax, qword ptr [rsp + 0x50]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, r15
.label_606:
	mov	r15, rax
	cmp	rbp, 0x2710
	jne	.label_615
	mov	rax, qword ptr [rsp + 0x58]
	cmp	qword ptr [rax], 0
	jne	.label_615
	mov	esi, dword ptr [rsp + 0xa4]
	mov	rdi, qword ptr [rsp + 0x60]
	call	filesystem_type
	mov	dword ptr [rsp + 0x20], 0
	cmp	rax, 0x6969
	je	.label_615
	cmp	rax, 0x1021994
	je	.label_615
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	je	.label_615
	mov	al, 1
	mov	dword ptr [rsp + 0x20], eax
	nop	dword ptr [rax]
.label_615:
	inc	rbp
	cmp	qword ptr [rsp + 0x40], rbp
	mov	rax, r12
	mov	r12, qword ptr [rsp + 0x60]
	ja	.label_605
	jmp	.label_570
.label_582:
	mov	rax, qword ptr [rsp + 0x98]
	mov	eax, dword ptr [rax]
	test	eax, eax
	mov	rbp, qword ptr [rsp + 0x88]
	je	.label_631
	mov	dword ptr [r12 + 0x40], eax
	mov	rax, qword ptr [rsp + 0x48]
	or	rax, rbp
	mov	ax, 7
	mov	cx, 4
	cmovne	cx, ax
	mov	word ptr [r12 + 0x70], cx
.label_631:
	mov	rdi, qword ptr [r12 + 0x18]
	test	rdi, rdi
	mov	r13, qword ptr [rsp + 0x78]
	je	.label_570
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
	jmp	.label_570
.label_594:
	mov	r13, qword ptr [rsp + 0x78]
	mov	rbp, qword ptr [rsp + 0x88]
.label_570:
	mov	rax, qword ptr [rsp + 0x30]
	test	al, 1
	je	.label_573
	mov	rcx, qword ptr [r13 + 8]
	mov	rax, qword ptr [r13 + 0x20]
	jmp	.label_569
.label_565:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_569:
	test	rcx, rcx
	je	.label_564
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_565
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_565
.label_564:
	cmp	qword ptr [r15 + 0x58], 0
	js	.label_573
	mov	rcx, r15
	nop	word ptr cs:[rax + rax]
.label_584:
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_577
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
.label_577:
	mov	qword ptr [rcx + 0x38], rax
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_580
	mov	rdx, qword ptr [rcx + 8]
.label_580:
	cmp	qword ptr [rdx + 0x58], 0
	mov	rcx, rdx
	jns	.label_584
.label_573:
	mov	rax, qword ptr [rsp + 0x90]
	test	byte ptr [rax], 4
	je	.label_586
	mov	rax, qword ptr [rsp + 0x68]
	mov	rcx, rax
	lea	rax, [rcx - 1]
	mov	rdx, qword ptr [rsp + 0x80]
	cmp	rdx, qword ptr [r13 + 0x30]
	cmove	rcx, rax
	test	rbp, rbp
	cmove	rcx, rax
	mov	byte ptr [rcx], 0
.label_586:
	cmp	qword ptr [rsp + 0x48], 0
	jne	.label_592
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	je	.label_592
	cmp	dword ptr [rsp + 0x24], 1
	je	.label_597
	test	rbp, rbp
	jne	.label_592
.label_597:
	cmp	qword ptr [r12 + 0x58], 0
	je	.label_612
	mov	rsi, qword ptr [r12 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_3
	mov	rdi, r13
	call	fts_safe_changedir
	jmp	.label_639
.label_612:
	mov	rdi, r13
	call	restore_initial_cwd
.label_639:
	test	eax, eax
	je	.label_592
	mov	word ptr [r12 + 0x70], 7
	mov	rax, qword ptr [rsp + 0x90]
	or	byte ptr [rax + 1], 0x20
	xor	ebx, ebx
	test	r15, r15
	je	.label_563
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_616:
	mov	rbp, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	je	.label_613
	call	closedir
.label_613:
	mov	rdi, r15
	call	free
	test	rbp, rbp
	mov	r15, rbp
	jne	.label_616
	jmp	.label_563
.label_592:
	test	rbp, rbp
	je	.label_618
	mov	eax, dword ptr [rsp + 0x20]
	test	al, 1
	jne	.label_619
	cmp	rbp, 2
	jb	.label_623
	mov	rax, qword ptr [rsp + 0x58]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_624
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, rbp
	call	fts_sort
	mov	rbx, rax
	jmp	.label_563
.label_618:
	cmp	dword ptr [rsp + 0x24], 3
	jne	.label_632
	movzx	eax, word ptr [r12 + 0x70]
	cmp	eax, 4
	je	.label_632
	movzx	eax, ax
	cmp	eax, 7
	je	.label_632
	mov	word ptr [r12 + 0x70], 6
.label_632:
	xor	ebx, ebx
	test	r15, r15
	je	.label_563
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_640:
	mov	rbp, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	je	.label_638
	call	closedir
.label_638:
	mov	rdi, r15
	call	free
	test	rbp, rbp
	mov	r15, rbp
	jne	.label_640
	jmp	.label_563
.label_619:
	mov	rdx, rbp
	mov	r14, qword ptr [rsp + 0x58]
	mov	qword ptr [word ptr [r14]], OFFSET FLAT:fts_compare_ino
	mov	rdi, r13
	mov	rsi, r15
	call	fts_sort
	mov	rbx, rax
	mov	qword ptr [r14], 0
	jmp	.label_563
.label_623:
	mov	rbx, r15
	jmp	.label_563
.label_624:
	mov	rbx, r15
	jmp	.label_563
.label_630:
	mov	rdi, r12
	call	free
	test	r15, r15
	je	.label_572
	nop	dword ptr [rax]
.label_578:
	mov	rbx, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	je	.label_575
	call	closedir
.label_575:
	mov	rdi, r15
	call	free
	test	rbx, rbx
	mov	r15, rbx
	jne	.label_578
.label_572:
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
	jmp	.label_563
.label_628:
	mov	rdi, r13
	call	free
	mov	qword ptr [rbp + 0x20], 0
	mov	rax, qword ptr [rsp + 0x98]
	mov	dword ptr [rax], 0x24
	jmp	.label_590
.label_634:
	mov	rdi, qword ptr [rbp + 0x20]
	call	free
	mov	qword ptr [rbp + 0x20], 0
.label_590:
	mov	qword ptr [rsp + 8], r12
	mov	rbp, qword ptr [rsp + 0x90]
.label_601:
	mov	rax, qword ptr [rsp + 0x98]
	mov	r14d, dword ptr [rax]
	mov	rdi, qword ptr [rsp + 8]
	call	free
	test	r15, r15
	mov	r12, qword ptr [rsp + 0x60]
	je	.label_602
	nop	dword ptr [rax]
.label_609:
	mov	rbx, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	je	.label_604
	call	closedir
.label_604:
	mov	rdi, r15
	call	free
	test	rbx, rbx
	mov	r15, rbx
	jne	.label_609
.label_602:
	mov	rdi, qword ptr [r12 + 0x18]
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x70], 7
	or	byte ptr [rbp + 1], 0x20
	mov	rax, qword ptr [rsp + 0x98]
	mov	dword ptr [rax], r14d
	xor	ebx, ebx
.label_563:
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
	.align	16
	#Procedure 0x408370

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_646
	test	ah, 2
	jne	.label_648
	mov	edi, dword ptr [rbx + 0x28]
	call	fchdir
	test	eax, eax
	setne	al
	jmp	.label_644
.label_646:
	xor	eax, eax
	jmp	.label_644
.label_648:
	mov	esi, dword ptr [rbx + 0x2c]
	lea	rdi, [rbx + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_642
	mov	edi, eax
	call	close
.label_642:
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
	xor	eax, eax
.label_644:
	movzx	ebp, al
	add	rbx, 0x60
	jmp	.label_643
	nop	
.label_647:
	mov	edi, eax
	call	close
.label_643:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_645
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_647
	jmp	.label_643
.label_645:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4083f0

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
	je	.label_651
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_652
	movups	xmm0, xmmword ptr [r14 + 0x78]
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], r14
	mov	rdi, qword ptr [rbp + 0x58]
	mov	rsi, rbx
	call	hash_insert
	mov	r15, rax
	mov	bpl, 1
	cmp	r15, rbx
	je	.label_650
	mov	rdi, rbx
	call	free
	test	r15, r15
	je	.label_649
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [r14], rax
	jmp	.label_653
.label_651:
	mov	rdi, qword ptr [rbp + 0x58]
	lea	rsi, [r14 + 0x78]
	call	cycle_check
	mov	bpl, 1
	test	al, al
	je	.label_650
	mov	qword ptr [r14], r14
.label_653:
	mov	word ptr [r14 + 0x70], 2
	jmp	.label_650
.label_652:
	xor	ebp, ebp
	jmp	.label_650
.label_649:
	xor	ebp, ebp
.label_650:
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
	#Procedure 0x408490

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	cmp	edx, 5
	jb	.label_654
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	add	rsp, 8
	ret	
.label_654:
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4084c0
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
	jne	.label_655
	mov	r15, qword ptr [r13]
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	eax, eax
	test	byte ptr [r13 + 0x49], 0x20
	jne	.label_660
	movzx	ecx, word ptr [r15 + 0x70]
	xor	eax, eax
	cmp	ecx, 1
	je	.label_667
	movzx	ecx, cx
	cmp	ecx, 9
	jne	.label_660
	mov	rax, qword ptr [r15 + 0x10]
	jmp	.label_660
.label_655:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
	jmp	.label_660
.label_667:
	mov	rbx, qword ptr [r13 + 8]
	test	rbx, rbx
	je	.label_668
	nop	dword ptr [rax]
.label_663:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_661
	call	closedir
.label_661:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_663
.label_668:
	mov	ebx, 1
	cmp	r12d, 0x1000
	jne	.label_664
	or	byte ptr [r13 + 0x49], 0x10
	mov	ebx, 2
.label_664:
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_656
	mov	rax, qword ptr [r15 + 0x30]
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x2f
	je	.label_656
	mov	eax, dword ptr [r13 + 0x48]
	test	al, 4
	jne	.label_656
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_662
	mov	edi, OFFSET FLAT:.str_10
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_670
.label_656:
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
.label_660:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_662:
	mov	edi, dword ptr [r13 + 0x2c]
	mov	esi, OFFSET FLAT:.str_10
	xor	eax, eax
	call	openat_safer
.label_670:
	mov	r15d, eax
	test	r15d, r15d
	js	.label_665
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
	test	byte ptr [r13 + 0x49], 2
	jne	.label_659
	mov	edi, r15d
	call	fchdir
	test	eax, eax
	je	.label_658
	mov	ebx, dword ptr [r14]
	mov	edi, r15d
	call	close
	mov	dword ptr [r14], ebx
	xor	eax, eax
	jmp	.label_660
.label_665:
	mov	qword ptr [r13 + 8], 0
	xor	eax, eax
	jmp	.label_660
.label_659:
	mov	esi, dword ptr [r13 + 0x2c]
	cmp	esi, r15d
	jne	.label_666
	cmp	esi, -0x64
	jne	.label_669
.label_666:
	lea	rdi, [r13 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_657
	mov	edi, eax
	call	close
.label_657:
	mov	dword ptr [r13 + 0x2c], r15d
	jmp	.label_671
.label_658:
	mov	edi, r15d
	call	close
.label_671:
	mov	rax, qword ptr [r13 + 8]
	jmp	.label_660
.label_669:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408670

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
	.align	16
	#Procedure 0x408680

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_672
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
.label_672:
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4086a0

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
	je	.label_673
	mov	rbp, qword ptr [rbx + 0x50]
	test	rbp, rbp
	jne	.label_675
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
	je	.label_676
.label_675:
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsp]
	mov	rdi, rbp
	call	hash_lookup
	test	rax, rax
	je	.label_677
	mov	rax, qword ptr [rax + 8]
	jmp	.label_673
.label_677:
	mov	r12b, 1
	mov	r14, rbp
.label_676:
	xor	eax, eax
	test	r15d, r15d
	js	.label_673
	lea	rsi, [rsp + 0x10]
	mov	edi, r15d
	call	fstatfs
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_673
	test	r12b, r12b
	je	.label_674
	mov	edi, 0x10
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_674
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rbp], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbp + 8], rax
	mov	rdi, r14
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_678
	cmp	rax, rbp
	je	.label_674
	call	abort
.label_678:
	mov	rdi, rbp
	call	free
.label_674:
	mov	rax, qword ptr [rsp + 0x10]
.label_673:
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
	.align	16
	#Procedure 0x4087b0

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
	.align	16
	#Procedure 0x4087c0

	.globl dev_type_compare
	.type dev_type_compare, @function
dev_type_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4087d0

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
	.align	16
	#Procedure 0x408800

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
	je	.label_679
	cmp	r15, -2
	jb	.label_679
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_679
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_679:
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
	#Procedure 0x408860

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
	jne	.label_681
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_680
	test	cl, cl
	jne	.label_680
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_680
.label_681:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_680
	call	__errno_location
	mov	dword ptr [rax], 0
.label_680:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4088c0

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	ret	
	.section	.text
	.align	16
	#Procedure 0x4088d0

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	cmp	dword ptr [rdi + 0x18], 0x95f616
	jne	.label_682
	mov	rcx, qword ptr [rdi + 0x10]
	test	rcx, rcx
	je	.label_683
	mov	rax, qword ptr [rsi + 8]
	cmp	rax, qword ptr [rdi]
	jne	.label_683
	mov	rdx, qword ptr [rsi]
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 8]
	je	.label_684
.label_683:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x10], rdx
	test	rdx, rcx
	jne	.label_685
	mov	al, 1
	test	rdx, rdx
	je	.label_684
	mov	rax, qword ptr [rsi]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi], rax
.label_685:
	xor	eax, eax
.label_684:
	ret	
.label_682:
	push	rax
	mov	edi, OFFSET FLAT:.str_11
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 0x3c
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.cycle_check
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x408940

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xc8
	test	al, al
	je	.label_686
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_686:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_689
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_688
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_687
.label_688:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_687:
	mov	edx, dword ptr [rax]
.label_689:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408a20

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_691
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_692
	cmp	byte ptr [rax + 1], 0
	je	.label_690
.label_692:
	mov	esi, OFFSET FLAT:.str.1_9
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_691
.label_690:
	xor	ebx, ebx
.label_691:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x408a60
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408a70
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408a80
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408a90
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdx
	jae	.label_693
	mov	rdi, rcx
	not	rdi
	add	rdi, rdx
	mov	rsi, rdi
	shr	rsi, 4
	xor	eax, eax
	bt	rdi, 4
	jb	.label_695
	xor	eax, eax
	cmp	qword ptr [rcx], 0
	je	.label_700
	mov	rdi, rcx
	nop	word ptr cs:[rax + rax]
.label_696:
	mov	rdi, qword ptr [rdi + 8]
	inc	rax
	test	rdi, rdi
	jne	.label_696
.label_700:
	add	rcx, 0x10
.label_695:
	test	rsi, rsi
	je	.label_693
	nop	word ptr cs:[rax + rax]
.label_699:
	cmp	qword ptr [rcx], 0
	mov	esi, 0
	mov	rdi, rcx
	je	.label_694
	nop	
.label_701:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_701
	cmp	rsi, rax
	cmova	rax, rsi
.label_694:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_697
	lea	rdi, [rcx + 0x10]
	xor	esi, esi
.label_698:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_698
	cmp	rsi, rax
	cmova	rax, rsi
.label_697:
	add	rcx, 0x20
	cmp	rcx, rdx
	jb	.label_699
.label_693:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408b40
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rcx, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	edx, edx
	cmp	rcx, r9
	mov	esi, 0
	jae	.label_702
	mov	rax, rcx
	not	rax
	add	rax, r9
	mov	r8, rax
	shr	r8, 4
	xor	edx, edx
	bt	rax, 4
	jb	.label_707
	xor	edx, edx
	cmp	qword ptr [rcx], 0
	je	.label_713
	mov	esi, 1
	mov	rax, rcx
.label_703:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_703
	jmp	.label_704
.label_707:
	xor	esi, esi
	jmp	.label_705
.label_713:
	xor	esi, esi
.label_704:
	add	rcx, 0x10
.label_705:
	test	r8, r8
	je	.label_702
	nop	dword ptr [rax]
.label_708:
	cmp	qword ptr [rcx], 0
	mov	rax, rcx
	je	.label_709
	nop	dword ptr [rax]
.label_710:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_710
	inc	rsi
.label_709:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_714
	lea	rax, [rcx + 0x10]
	nop	word ptr [rax + rax]
.label_706:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_706
	inc	rsi
.label_714:
	add	rcx, 0x20
	cmp	rcx, r9
	jb	.label_708
.label_702:
	cmp	rsi, qword ptr [rdi + 0x18]
	jne	.label_711
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 0x20]
	je	.label_712
.label_711:
	xor	eax, eax
.label_712:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408c00
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
	jae	.label_715
	mov	rdi, rax
	not	rdi
	add	rdi, rdx
	mov	rsi, rdi
	shr	rsi, 4
	xor	ebx, ebx
	bt	rdi, 4
	jb	.label_721
	xor	ebx, ebx
	cmp	qword ptr [rax], 0
	je	.label_716
	mov	rdi, rax
	nop	dword ptr [rax]
.label_723:
	mov	rdi, qword ptr [rdi + 8]
	inc	rbx
	test	rdi, rdi
	jne	.label_723
.label_716:
	add	rax, 0x10
.label_721:
	test	rsi, rsi
	je	.label_715
	nop	word ptr cs:[rax + rax]
.label_726:
	cmp	qword ptr [rax], 0
	mov	esi, 0
	mov	rdi, rax
	je	.label_724
	nop	
.label_725:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_725
	cmp	rsi, rbx
	cmova	rbx, rsi
.label_724:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_717
	lea	rdi, [rax + 0x10]
	xor	esi, esi
.label_722:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_722
	cmp	rsi, rbx
	cmova	rbx, rsi
.label_717:
	add	rax, 0x20
	cmp	rax, rdx
	jb	.label_726
.label_715:
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str_12
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
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_718]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_719]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_720]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.2_4
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_2
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
	#Procedure 0x408d70

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
	jae	.label_730
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_727
	add	rbx, rax
	je	.label_727
	cmp	rsi, r12
	je	.label_729
	xor	r15d, r15d
	nop	
.label_728:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_731
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_727
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_728
.label_729:
	mov	r15, r12
	jmp	.label_727
.label_731:
	mov	r15, qword ptr [rbx]
.label_727:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_730:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408df0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_732
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_735
	nop	word ptr cs:[rax + rax]
.label_734:
	add	rcx, 0x10
.label_735:
	cmp	rcx, rdx
	jae	.label_733
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_734
.label_732:
	ret	
.label_733:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408e30
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
	jae	.label_738
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_739:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_736
	test	rdx, rdx
	jne	.label_739
	jmp	.label_740
.label_736:
	test	rdx, rdx
	je	.label_740
	mov	rax, qword ptr [rdx]
	jmp	.label_737
.label_740:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rax + rcx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_741:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_737
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_741
.label_737:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_738:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ec0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	jmp	.label_742
	nop	dword ptr [rax + rax]
.label_745:
	add	r9, 0x10
.label_742:
	cmp	r9, r8
	jae	.label_743
	cmp	qword ptr [r9], 0
	je	.label_745
	test	r9, r9
	mov	r10, r9
	je	.label_745
	nop	word ptr [rax + rax]
.label_744:
	cmp	rax, rdx
	jae	.label_743
	mov	rcx, qword ptr [r10]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r10, qword ptr [r10 + 8]
	test	r10, r10
	jne	.label_744
	mov	r8, qword ptr [rdi + 8]
	jmp	.label_745
.label_743:
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x408f10
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
	jmp	.label_750
	nop	word ptr cs:[rax + rax]
.label_746:
	add	r13, 0x10
.label_750:
	cmp	r13, rax
	jae	.label_747
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_746
	test	r13, r13
	je	.label_746
	mov	rsi, r14
	call	r15
	test	al, al
	mov	rbp, r13
	je	.label_747
	nop	word ptr cs:[rax + rax]
.label_748:
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_749
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_748
	jmp	.label_747
	nop	dword ptr [rax]
.label_749:
	mov	rax, qword ptr [r12 + 8]
	jmp	.label_746
.label_747:
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
	#Procedure 0x408fb0
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_751
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_752:
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
	jne	.label_752
.label_751:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ff0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_753]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409010

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
	je	.label_756
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_761
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_766]]
	jbe	.label_755
	movss	xmm1,  dword ptr [dword ptr [rip + label_769]]
	ucomiss	xmm1, xmm0
	jbe	.label_755
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_760]]
	jbe	.label_755
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_755
	addss	xmm1,  dword ptr [dword ptr [rip + label_766]]
	ucomiss	xmm0, xmm1
	jbe	.label_755
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_754]]
	ucomiss	xmm2, xmm0
	jb	.label_755
	ucomiss	xmm0, xmm1
	jbe	.label_755
.label_761:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_768
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_765
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_767
.label_765:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_767:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_758]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_759]]
	jae	.label_755
.label_768:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_757
	nop	
.label_762:
	add	rbx, 2
.label_757:
	cmp	rbx, -1
	je	.label_755
	cmp	rbx, 0xa
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	jb	.label_764
	nop	word ptr cs:[rax + rax]
.label_763:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_764
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_763
.label_764:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_762
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_755
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_755
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_755
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
	jmp	.label_756
.label_755:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_756:
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
	#Procedure 0x409230

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
	#Procedure 0x409240

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409250
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_772
	nop	word ptr cs:[rax + rax]
.label_775:
	add	r14, 0x10
.label_772:
	cmp	r14, rax
	jae	.label_774
	cmp	qword ptr [r14], 0
	je	.label_775
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_776
	nop	word ptr cs:[rax + rax]
.label_771:
	test	cl, 1
	je	.label_770
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_770:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_771
.label_776:
	test	cl, cl
	je	.label_773
	mov	rdi, qword ptr [r14]
	call	rax
.label_773:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_775
.label_774:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409300

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_777
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_777
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_783
	nop	
.label_781:
	add	r15, 0x10
.label_783:
	cmp	r15, rax
	jae	.label_777
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_781
	test	r15, r15
	je	.label_781
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_787
.label_780:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_787:
	test	rbx, rbx
	jne	.label_780
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_781
.label_777:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_778
	nop	
.label_782:
	add	r15, 0x10
.label_778:
	cmp	r15, rax
	jae	.label_786
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_782
	nop	word ptr cs:[rax + rax]
.label_779:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_779
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_782
.label_786:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_784
.label_785:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_785
.label_784:
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
	#Procedure 0x4093d0

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
	jne	.label_797
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_798
	cvtsi2ss	xmm0, rsi
	jmp	.label_803
.label_798:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_803:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_758]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_759]]
	jae	.label_790
.label_797:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_789
	nop	dword ptr [rax + rax]
.label_800:
	add	rbx, 2
.label_789:
	cmp	rbx, -1
	je	.label_790
	cmp	rbx, 0xa
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	jb	.label_794
	nop	word ptr cs:[rax + rax]
.label_804:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_794
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_804
.label_794:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_800
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_790
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_791
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_790
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
	je	.label_806
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_791
.label_806:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_799
	nop	
.label_792:
	add	r12, 0x10
.label_799:
	cmp	r12, r15
	jae	.label_788
	cmp	qword ptr [r12], 0
	je	.label_792
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_795
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_793:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_805
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_801
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_796
	nop	word ptr [rax + rax]
.label_801:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_796:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_793
.label_795:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_792
.label_788:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_802
	mov	rdi, qword ptr [rsp]
	call	free
.label_790:
	xor	ebp, ebp
.label_791:
	mov	al, bpl
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_805:
	call	abort
.label_802:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409660

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
	jae	.label_814
	nop	word ptr cs:[rax + rax]
.label_813:
	mov	r13, qword ptr [r14]
	test	r13, r13
	je	.label_810
	mov	r15, qword ptr [r14 + 8]
	test	r15, r15
	je	.label_815
	mov	rsi, qword ptr [rbp + 0x10]
	nop	dword ptr [rax]
.label_809:
	mov	rbx, qword ptr [r15]
	mov	rdi, rbx
	call	qword ptr [rbp + 0x30]
	mov	rsi, qword ptr [rbp + 0x10]
	cmp	rax, rsi
	jae	.label_819
	mov	rdx, qword ptr [rbp]
	mov	rcx, qword ptr [r15 + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_811
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [r15 + 8], rdi
	mov	qword ptr [rdx + rax + 8], r15
	jmp	.label_812
	nop	dword ptr [rax]
.label_811:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [rbp + 0x18]
	mov	qword ptr [r15], 0
	mov	rax, qword ptr [rbp + 0x48]
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [rbp + 0x48], r15
.label_812:
	test	rcx, rcx
	mov	r15, rcx
	jne	.label_809
	mov	r13, qword ptr [r14]
.label_815:
	mov	qword ptr [r14 + 8], 0
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	jne	.label_810
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, r13
	call	qword ptr [rbp + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [rbp + 0x10]
	jae	.label_817
	mov	r15, qword ptr [rbp]
	shl	rbx, 4
	cmp	qword ptr [r15 + rbx], 0
	je	.label_820
	mov	rax, qword ptr [rbp + 0x48]
	test	rax, rax
	je	.label_808
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp + 0x48], rcx
	jmp	.label_807
.label_820:
	add	r15, rbx
	mov	qword ptr [r15], r13
	inc	qword ptr [rbp + 0x18]
	jmp	.label_816
.label_808:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_818
.label_807:
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [r15 + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + rbx + 8], rax
.label_816:
	mov	qword ptr [r14], 0
	dec	qword ptr [r12 + 0x18]
.label_810:
	add	r14, 0x10
	cmp	r14, qword ptr [r12 + 8]
	jb	.label_813
	mov	al, 1
.label_814:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_818:
	xor	eax, eax
	jmp	.label_814
.label_819:
	call	abort
.label_817:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4097d0

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
	je	.label_841
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_841
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_825
	cmp	rsi, r14
	je	.label_829
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_833
	mov	rax, qword ptr [r12]
	jmp	.label_835
.label_829:
	mov	rax, r14
	jmp	.label_832
.label_833:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_825
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr cs:[rax + rax]
.label_847:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_845
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_844
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_847
	jmp	.label_825
.label_845:
	mov	rax, r14
	jmp	.label_835
.label_844:
	mov	rax, qword ptr [rbp]
.label_835:
	test	rax, rax
	je	.label_825
.label_832:
	xor	ebp, ebp
	test	r15, r15
	je	.label_824
	mov	qword ptr [r15], rax
	jmp	.label_824
.label_825:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_828
	cvtsi2ss	xmm1, rax
	jmp	.label_834
.label_828:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_834:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_836
	cvtsi2ss	xmm0, rcx
	jmp	.label_842
.label_836:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_842:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_830
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_850
	ucomiss	xmm2,  dword ptr [dword ptr [rip + label_766]]
	jbe	.label_821
	movss	xmm3,  dword ptr [dword ptr [rip + label_769]]
	ucomiss	xmm3, xmm2
	jbe	.label_821
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_760]]
	jbe	.label_821
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_821
	addss	xmm3,  dword ptr [dword ptr [rip + label_766]]
	ucomiss	xmm2, xmm3
	jbe	.label_821
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5,  dword ptr [dword ptr [rip + label_754]]
	ucomiss	xmm5, xmm4
	jb	.label_821
	ucomiss	xmm4, xmm3
	ja	.label_840
.label_821:
	mov	qword ptr [word ptr [r13 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2,  dword ptr [dword ptr [rip + label_843]]
	jmp	.label_840
.label_850:
	mov	eax, OFFSET FLAT:default_tuning
.label_840:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_830
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_827
	mulss	xmm0, xmm2
.label_827:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_759]]
	jae	.label_824
	movss	xmm1,  dword ptr [dword ptr [rip + label_758]]
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
	je	.label_824
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_841
	mov	r15, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [r15 + rbp]
	mov	rsi, qword ptr [r15 + rbp]
	test	rsi, rsi
	je	.label_830
	cmp	rsi, r14
	mov	rax, r14
	je	.label_837
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_831
	mov	rax, qword ptr [r12]
	jmp	.label_837
.label_831:
	mov	rax, qword ptr [r15 + rbp + 8]
	test	rax, rax
	je	.label_830
	lea	rbp, [r15 + rbp + 8]
.label_839:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_826
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_838
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_839
	jmp	.label_830
.label_826:
	mov	rax, r14
	jmp	.label_837
.label_838:
	mov	rax, qword ptr [rbp]
.label_837:
	test	rax, rax
	jne	.label_846
.label_830:
	cmp	qword ptr [r12], 0
	je	.label_848
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_849
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_851
.label_848:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0,  xmmword ptr [word ptr [rip + label_822]]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_823
.label_849:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_824
.label_851:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_823:
	mov	ebp, 1
.label_824:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_841:
	call	abort
.label_846:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409af0

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
	je	.label_852
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_852:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409b20

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
	jae	.label_861
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_856
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_868
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_869
	mov	r14, qword ptr [r13]
.label_868:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_854
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_853
.label_869:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_856
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_865:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_862
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_864
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_865
	jmp	.label_856
.label_854:
	mov	qword ptr [r13], 0
	jmp	.label_853
.label_862:
	mov	rcx, rax
	jmp	.label_871
.label_864:
	mov	r14, qword ptr [rcx]
.label_871:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_853:
	xor	r12d, r12d
	test	r14, r14
	je	.label_856
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_855
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_860
	cvtsi2ss	xmm1, rax
	jmp	.label_863
.label_860:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_863:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_866
	cvtsi2ss	xmm0, rcx
	jmp	.label_870
.label_866:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_870:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_855
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_857
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_766]]
	jbe	.label_859
	movss	xmm4,  dword ptr [dword ptr [rip + label_769]]
	ucomiss	xmm4, xmm3
	jbe	.label_859
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_859
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4,  dword ptr [dword ptr [rip + label_760]]
	jbe	.label_859
	movss	xmm4,  dword ptr [dword ptr [rip + label_766]]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_859
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5,  dword ptr [dword ptr [rip + label_754]]
	ucomiss	xmm5, xmm3
	jb	.label_859
	ucomiss	xmm3, xmm4
	ja	.label_872
.label_859:
	mov	qword ptr [word ptr [r15 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_872
.label_857:
	mov	eax, OFFSET FLAT:default_tuning
.label_872:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_855
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_858
	mulss	xmm0, dword ptr [rax + 8]
.label_858:
	movss	xmm1,  dword ptr [dword ptr [rip + label_758]]
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
	jne	.label_855
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_867
	nop	
.label_873:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_873
.label_867:
	mov	qword ptr [r15 + 0x48], 0
.label_855:
	mov	r12, r14
.label_856:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_861:
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409db0

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
	.align	16
	#Procedure 0x409de0

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409df0

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
	jne	.label_874
	mov	dl, byte ptr [rdi + 0x1c]
	xor	dl, 1
	movzx	edx, dl
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_874:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409e30

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	cmp	byte ptr [rdi + 0x1c], 0
	jne	.label_875
	mov	ecx, dword ptr [rdi + 0x10]
	mov	edx, dword ptr [rdi + 0x14]
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], ecx
	mov	ecx, dword ptr [rdi + 0x14]
	cmp	ecx, dword ptr [rdi + 0x18]
	jne	.label_876
	mov	byte ptr [rdi + 0x1c], 1
	ret	
.label_876:
	add	ecx, 3
	and	ecx, 3
	mov	dword ptr [rdi + 0x14], ecx
	ret	
.label_875:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x409e60

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
	je	.label_877
	mov	rax, rcx
.label_877:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409e90

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xc8
	test	al, al
	je	.label_878
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_878:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_880
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x18
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_879
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_881
.label_879:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_881:
	mov	ecx, dword ptr [rax]
.label_880:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xc8
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x409f70

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
	js	.label_883
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_882
	mov	dword ptr [r14], ebp
	jmp	.label_883
.label_882:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_883:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409fc0

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
	ja	.label_884
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
	jmp	.label_885
.label_884:
	mov	eax, ebx
.label_885:
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
	#Procedure 0x40a010

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_886
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_888
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_886
.label_888:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_886
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_887
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_887:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_886:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a090

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_892
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_892:
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
	ja	.label_899
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_898
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_896
	test	esi, esi
	jne	.label_899
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_900
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_903
.label_899:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_906
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_896
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_909
.label_898:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_893
.label_896:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_891
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_894
.label_891:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_894:
	mov	edx, dword ptr [rax]
.label_904:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
.label_893:
	mov	ebp, eax
.label_890:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_909:
	cmp	eax, 6
	jne	.label_906
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_907
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_902
.label_906:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_905
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_895
.label_900:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_903:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	jmp	.label_904
.label_907:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_902:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_908
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_889
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_889
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_890
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	al, 1
	jmp	.label_901
.label_889:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_890
.label_905:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_895:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_893
.label_908:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	sete	al
.label_901:
	test	al, al
	je	.label_890
	test	ebp, ebp
	js	.label_890
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_897
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_890
.label_897:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_890
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a370

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_910
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_910
	test	byte ptr [rbx + 1], 1
	je	.label_910
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_910:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a3b0

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
	jne	.label_911
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_911
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_912
.label_911:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_912:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_913
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_913:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a420

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
	.align	16
	#Procedure 0x40a440

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