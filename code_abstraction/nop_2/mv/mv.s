	.section	.text
	.align	16
	#Procedure 0x4027d0

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
	mov	rcx, rdx
	mov	r8, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
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
	mov	esi, OFFSET FLAT:.str.29
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
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
	mov	esi, OFFSET FLAT:.str.41
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.8
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.8
	mov	ecx, OFFSET FLAT:.str.45
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a40

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xf8
	mov	r12, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.10
	mov	esi, OFFSET FLAT:.str.11
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.10
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdin
	call	atexit
	lea	rdi, [rsp + 0x18]
	call	cp_options_default
	mov	byte ptr [rsp + 0x2c], 0
	mov	dword ptr [rsp + 0x50], 1
	mov	dword ptr [rsp + 0x1c], 2
	mov	byte ptr [rsp + 0x2d], 0
	mov	byte ptr [rsp + 0x2e], 0
	mov	byte ptr [rsp + 0x2f], 0
	mov	dword ptr [rsp + 0x20], 4
	mov	byte ptr [rsp + 0x30], 1
	mov	byte ptr [rsp + 0x31], 0
	mov	byte ptr [rsp + 0x34], 0
	mov	byte ptr [rsp + 0x35], 1
	mov	byte ptr [rsp + 0x3a], 1
	mov	byte ptr [rsp + 0x36], 1
	mov	byte ptr [rsp + 0x37], 1
	mov	byte ptr [rsp + 0x38], 0
	mov	byte ptr [rsp + 0x3d], 0
	mov	byte ptr [rsp + 0x39], 0
	mov	byte ptr [rsp + 0x41], 0
	mov	byte ptr [rsp + 0x3b], 1
	mov	byte ptr [rsp + 0x3c], 0
	mov	byte ptr [rsp + 0x3e], 0
	mov	byte ptr [rsp + 0x3f], 1
	mov	byte ptr [rsp + 0x40], 0
	mov	byte ptr [rsp + 0x42], 1
	mov	dword ptr [rsp + 0x24], 2
	mov	byte ptr [rsp + 0x44], 0
	mov	byte ptr [rsp + 0x43], 0
	mov	dword ptr [rsp + 0x28], 0
	xor	ebx, ebx
	xor	edi, edi
	call	isatty
	test	eax, eax
	setne	byte ptr [rsp + 0x47]
	mov	byte ptr [rsp + 0x48], 0
	mov	byte ptr [rsp + 0x45], 0
	mov	byte ptr [rsp + 0x46], 0
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x58], xmm0
	xor	r13d, r13d
	xor	r15d, r15d
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	r14d, r14d
	jmp	.label_12
.label_1815:
	mov	byte ptr [rsp + 0x46], 1
	nop	word ptr cs:[rax + rax]
.label_12:
	mov	edx, OFFSET FLAT:.str.12
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r12
	call	getopt_long
	cmp	eax, 0x68
	jg	.label_36
	cmp	eax, 0x59
	jg	.label_37
	cmp	eax, 0x52
	jle	.label_38
	cmp	eax, 0x53
	je	.label_40
	mov	r14b, 1
	cmp	eax, 0x54
	je	.label_12
	jmp	.label_11
.label_36:
	lea	ecx, [rax - 0x6e]
	cmp	ecx, 8
	ja	.label_44
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_46]]
.label_1812:
	mov	dword ptr [rsp + 0x20], 2
	jmp	.label_12
	nop	dword ptr [rax]
.label_37:
	cmp	eax, 0x5a
	je	.label_12
	cmp	eax, 0x62
	je	.label_17
	cmp	eax, 0x66
	jne	.label_11
	mov	dword ptr [rsp + 0x20], 1
	jmp	.label_12
.label_44:
	cmp	eax, 0x69
	je	.label_9
	cmp	eax, 0x80
	jne	.label_11
	mov	byte ptr [byte ptr [rip + remove_trailing_slashes]],  1
	jmp	.label_12
.label_1813:
	cmp	qword ptr [rsp + 0x10], 0
	jne	.label_15
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	edi, 1
	lea	rdx, [rsp + 0x68]
	call	__xstat
	test	eax, eax
	jne	.label_18
	mov	eax, dword ptr [rsp + 0x80]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0x4000
	jne	.label_20
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_12
.label_1814:
	mov	byte ptr [rsp + 0x45], 1
	jmp	.label_12
.label_40:
	mov	bl, 1
	mov	r13,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_12
.label_17:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	test	rax, rax
	cmovne	r15, rax
	mov	bl, 1
	jmp	.label_12
.label_9:
	mov	dword ptr [rsp + 0x20], 3
	jmp	.label_12
.label_38:
	cmp	eax, -1
	jne	.label_43
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	movsxd	rbp, ebp
	sub	rbp, rax
	lea	r12, [r12 + rax*8]
	cmp	qword ptr [rsp + 0x10], 0
	sete	al
	movzx	eax, al
	cmp	ebp, eax
	jle	.label_27
	test	r14b, r14b
	je	.label_47
	cmp	qword ptr [rsp + 0x10], 0
	jne	.label_26
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	cmp	ebp, 3
	jl	.label_31
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r12 + 0x10]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_47:
	cmp	qword ptr [rsp + 0x10], 0
	jne	.label_31
	cmp	ebp, 1
	jle	.label_19
	cmp	ebp, 2
	jne	.label_22
	mov	rsi, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 8]
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	r8d, 1
	call	renameatu
	xor	ecx, ecx
	test	eax, eax
	je	.label_30
	call	__errno_location
	mov	ecx, dword ptr [rax]
.label_30:
	mov	dword ptr [rsp + 0x4c], ecx
	jmp	.label_33
.label_22:
	mov	ecx, dword ptr [rsp + 0x4c]
.label_33:
	test	ecx, ecx
	je	.label_34
	mov	r14, r13
	mov	r13, qword ptr [r12 + rbp*8 - 8]
	lea	rdx, [rsp + 0x68]
	mov	edi, 1
	mov	rsi, r13
	call	__xstat
	test	eax, eax
	je	.label_41
	call	__errno_location
	mov	eax, dword ptr [rax]
	test	eax, eax
	je	.label_41
	cmp	eax, 2
	jne	.label_24
	mov	r13, r14
	jmp	.label_34
.label_41:
	mov	eax, dword ptr [rsp + 0x80]
	and	eax, 0xf000
	cmp	eax, 0x4000
	mov	r13, r14
	jne	.label_34
	mov	dword ptr [rsp + 0x4c], 0xffffffff
	mov	rax, qword ptr [r12 + rbp*8 - 8]
	mov	qword ptr [rsp + 0x10], rax
	dec	rbp
	jmp	.label_31
.label_34:
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	cmp	ebp, 3
	jge	.label_48
.label_31:
	mov	eax, dword ptr [rsp + 0x20]
	cmp	eax, 2
	jne	.label_10
	mov	byte ptr [rsp + 0x45], 0
	test	bl, bl
	je	.label_10
	cmp	eax, 2
	je	.label_35
.label_10:
	xor	eax, eax
	test	bl, bl
	je	.label_14
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r15
	call	xget_version
.label_14:
	mov	dword ptr [rsp + 0x18], eax
	mov	rdi, r13
	call	set_simple_backup_suffix
	call	hash_init
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_21
	cmp	ebp, 2
	jl	.label_23
	lea	rdi, [rsp + 0x18]
	call	dest_info_init
	jmp	.label_28
.label_21:
	mov	byte ptr [rsp + 0x49], 1
	mov	rbx, qword ptr [r12]
	mov	rbp, qword ptr [r12 + 8]
	movzx	eax,  byte ptr [byte ptr [rip + remove_trailing_slashes]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_29
	mov	rdi, rbx
	call	strip_trailing_slashes
.label_29:
	lea	rdx, [rsp + 0x18]
	mov	rdi, rbx
	mov	rsi, rbp
	call	do_move
	mov	r15b, al
	jmp	.label_39
.label_23:
	mov	r15b, 1
	test	ebp, ebp
	jle	.label_39
.label_28:
	mov	r13d, ebp
	mov	r15b, 1
	lea	r14, [rsp + 0x18]
.label_13:
	cmp	r13, 1
	sete	byte ptr [rsp + 0x49]
	mov	rbp, qword ptr [r12]
	movzx	eax,  byte ptr [byte ptr [rip + remove_trailing_slashes]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_32
	mov	rdi, rbp
	call	strip_trailing_slashes
.label_32:
	mov	rdi, rbp
	call	last_component
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rax
	call	file_name_concat
	mov	rbx, rax
	mov	rdi, rbx
	call	strip_trailing_slashes
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r14
	call	do_move
	mov	bpl, al
	mov	rdi, rbx
	call	free
	and	r15b, bpl
	add	r12, 8
	dec	r13
	test	r13d, r13d
	jne	.label_13
.label_39:
	not	r15b
	and	r15b, 1
	movzx	eax, r15b
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_43:
	cmp	eax, 0xffffff7d
	je	.label_45
	cmp	eax, 0xffffff7e
	jne	.label_11
	xor	edi, edi
	call	usage
.label_11:
	mov	edi, 1
	call	usage
.label_45:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str.19
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.17_0
	mov	r9d, OFFSET FLAT:.str.18_0
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_15:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	jmp	.label_42
.label_18:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_20:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
.label_25:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_27:
	xor	edi, edi
	test	ebp, ebp
	jg	.label_16
	mov	esi, OFFSET FLAT:.str.20
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
.label_26:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
.label_42:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_35:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26
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
.label_16:
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r12]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_19:
	mov	edi, OFFSET FLAT:.str.24
	mov	esi, OFFSET FLAT:.str.25
	mov	edx, 0x1c9
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	call	__assert_fail
.label_48:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, ebp
	mov	rsi, qword ptr [r12 + rax*8 - 8]
	jmp	.label_25
.label_24:
	xor	edi, edi
	mov	ebx, eax
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r14
	call	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x403160

	.globl do_move
	.type do_move, @function
do_move:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x38
	mov	r15, rdx
	mov	r14, rdi
	lea	r8, [rsp + 0x37]
	lea	r9, [rsp + 0x36]
	xor	edx, edx
	mov	rcx, r15
	call	copy
	mov	bl, al
	test	bl, bl
	je	.label_49
	cmp	byte ptr [rsp + 0x37], 0
	jne	.label_50
	test	r14, r14
	je	.label_49
	mov	al, byte ptr [rsp + 0x36]
	test	al, al
	jne	.label_49
	mov	byte ptr [rsp + 0x10], 0
	mov	byte ptr [rsp + 0x1a], 1
	mov	byte ptr [rsp + 0x19], 1
	mov	byte ptr [rsp + 0x18], 0
	mov	dword ptr [rsp + 0x14], 5
	mov	word ptr [rsp + 0x29], 0
	mov	byte ptr [rsp + 0x2b], 1
	mov	edi, OFFSET FLAT:rm_option_init.dev_ino_buf
	call	get_root_dev_ino
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_53
	mov	byte ptr [rsp + 0x28], 0
	mov	al, byte ptr [r15 + 0x2e]
	mov	byte ptr [rsp + 0x2a], al
	mov	qword ptr [rsp], r14
	mov	qword ptr [rsp + 8], 0
	lea	rdi, [rsp]
	lea	rsi, [rsp + 0x10]
	call	rm
	cmp	eax, 4
	je	.label_52
	mov	ecx, eax
	or	ecx, 1
	cmp	ecx, 3
	jne	.label_51
.label_52:
	cmp	eax, 4
	jne	.label_49
.label_50:
	xor	ebx, ebx
.label_49:
	and	bl, 1
	mov	al, bl
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_53:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
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
	mov	esi, OFFSET FLAT:.str.25
	mov	edx, 0xef
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.do_move
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403290

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
	je	.label_78
	mov	esi, 0x218
	cmp	byte ptr [r12 + 8], 0
	je	.label_85
	mov	esi, 0x258
.label_85:
	xor	edx, edx
	call	xfts_open
	mov	qword ptr [rsp + 0x20], rax
	mov	rdi, rax
	call	rpl_fts_read
	mov	r13, rax
	mov	ebx, 2
	test	r13, r13
	je	.label_92
	mov	r15d, 2
	jmp	.label_60
.label_71:
	mov	rax, qword ptr [r12 + 0x10]
	test	rax, rax
	je	.label_54
	mov	rcx, qword ptr [r13 + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_54
	mov	rcx, qword ptr [r13 + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_54
	mov	rax, qword ptr [r13 + 0x38]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_57
	cmp	byte ptr [rax + 1], 0
	je	.label_59
.label_57:
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
	jmp	.label_91
.label_54:
	cmp	byte ptr [r12 + 0x18], 0
	je	.label_66
	mov	esi, OFFSET FLAT:.str.2_1
	xor	edx, edx
	mov	rdi, rbx
	call	file_name_concat
	mov	rbx, rax
	test	rbx, rbx
	je	.label_83
	mov	edi, 1
	mov	rsi, rbx
	lea	rdx, [rsp + 0x28]
	call	__lxstat
	test	eax, eax
	je	.label_86
.label_83:
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
	jmp	.label_68
.label_63:
	mov	ebx, 0x27
	cmp	byte ptr [r12 + 0xa], 0
	jne	.label_58
	mov	ebx, 0x15
.label_58:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24_0
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
	jmp	.label_76
	nop	dword ptr [rax]
.label_81:
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rax + 8]
.label_76:
	cmp	qword ptr [rax + 0x58], 0
	js	.label_68
	cmp	qword ptr [rax + 0x20], 0
	je	.label_81
.label_68:
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
	jmp	.label_84
.label_86:
	mov	rdi, rbx
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax + 0x18]
	cmp	rax, qword ptr [rsp + 0x28]
	jne	.label_88
.label_66:
	mov	edx, 1
	mov	r8d, 2
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r13
	mov	rcx, r12
	lea	r9, [rsp + 0x28]
	call	prompt
	mov	ebp, eax
	cmp	ebp, 2
	jne	.label_93
	cmp	dword ptr [rsp + 0x28], 4
	jne	.label_93
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
.label_93:
	cmp	ebp, 2
	je	.label_62
	mov	rax, qword ptr [r13 + 8]
	jmp	.label_64
	nop	word ptr cs:[rax + rax]
.label_70:
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rax + 8]
.label_64:
	cmp	qword ptr [rax + 0x58], 0
	js	.label_72
	cmp	qword ptr [rax + 0x20], 0
	je	.label_70
.label_72:
	mov	edx, 4
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rdi, rbx
	mov	rsi, r13
	call	rpl_fts_set
	mov	rdi, rbx
	call	rpl_fts_read
	jmp	.label_62
.label_88:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
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
	jmp	.label_68
.label_59:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
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
.label_91:
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
	jmp	.label_65
	nop	word ptr cs:[rax + rax]
.label_60:
	movzx	eax, word ptr [r13 + 0x70]
	lea	ecx, [rax - 1]
	cmp	ecx, 0xc
	ja	.label_69
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_73]]
.label_1673:
	movzx	ecx, ax
	cmp	ecx, 6
	jne	.label_77
	cmp	byte ptr [r12 + 8], 0
	je	.label_77
	cmp	qword ptr [r13 + 0x58], 0
	jle	.label_77
	mov	rcx, qword ptr [r13 + 0x78]
	mov	rdx, qword ptr [rsp + 0x20]
	cmp	rcx, qword ptr [rdx + 0x18]
	jne	.label_80
	nop	word ptr cs:[rax + rax]
.label_77:
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
	jne	.label_62
	cmp	ebx, 6
	sete	al
	movzx	ecx, al
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r13
	mov	rdx, r12
	call	excise
	mov	ebp, eax
.label_62:
	cmp	ebp, 3
	sete	r14b
	cmp	ebp, 4
	sete	al
	je	.label_84
	mov	ecx, ebp
	or	ecx, 1
	cmp	ecx, 3
	je	.label_84
	jmp	.label_67
.label_1671:
	cmp	byte ptr [r12 + 9], 0
	jne	.label_56
	mov	ebx, 0x15
	cmp	byte ptr [r12 + 0xa], 0
	je	.label_58
	mov	rax, qword ptr [rsp + 0x20]
	mov	edi, dword ptr [rax + 0x2c]
	mov	rsi, qword ptr [r13 + 0x30]
	call	is_empty_dir
	test	al, al
	je	.label_63
.label_56:
	cmp	qword ptr [r13 + 0x58], 0
	jne	.label_66
	mov	rbx, qword ptr [r13 + 0x30]
	mov	rdi, rbx
	call	last_component
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_71
	movzx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x2e
	mov	ecx, 2
	je	.label_75
	mov	ecx, 1
.label_75:
	movzx	eax, byte ptr [rax + rcx]
	cmp	eax, 0x2f
	je	.label_79
	test	al, al
	jne	.label_71
.label_79:
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
	jmp	.label_55
.label_1672:
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
	jmp	.label_61
.label_1674:
	mov	ebx, dword ptr [r13 + 0x40]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
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
.label_61:
	call	error
.label_65:
	mov	ebp, 4
.label_55:
	mov	edx, 4
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rdi, rbx
	mov	rsi, r13
	call	rpl_fts_set
	mov	rdi, rbx
	call	rpl_fts_read
	jmp	.label_82
.label_80:
	mov	rax, qword ptr [r13 + 8]
	jmp	.label_89
	nop	word ptr cs:[rax + rax]
.label_90:
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rax + 8]
.label_89:
	cmp	qword ptr [rax + 0x58], 0
	js	.label_87
	cmp	qword ptr [rax + 0x20], 0
	je	.label_90
.label_87:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
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
.label_82:
	mov	al, 1
.label_84:
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
	jne	.label_60
.label_92:
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	test	ebp, ebp
	je	.label_74
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
.label_74:
	mov	rdi, qword ptr [rsp + 0x20]
	call	rpl_fts_close
	test	eax, eax
	je	.label_78
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
.label_78:
	mov	eax, ebx
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_69:
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
.label_67:
	mov	edi, OFFSET FLAT:.str.1_0
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 0x261
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.rm
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a20

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
	js	.label_96
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_94
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	nop	word ptr [rax + rax]
.label_95:
	mov	rdi, rbx
	call	readdir
	test	rax, rax
	je	.label_97
	movzx	ecx, byte ptr [rax + 0x13]
	cmp	ecx, 0x2e
	jne	.label_98
	movzx	ecx, byte ptr [rax + 0x14]
	cmp	ecx, 0x2e
	mov	ecx, 2
	je	.label_100
	mov	ecx, 1
.label_100:
	movzx	ecx, byte ptr [rax + rcx + 0x13]
	cmp	ecx, 0x2f
	cmove	rax, rbp
	test	cl, cl
	cmovne	rbp, rax
	cmp	ecx, 0x2f
	je	.label_95
	test	cl, cl
	je	.label_95
	mov	r14d, dword ptr [r14]
	mov	rdi, rbx
	call	closedir
	test	rbp, rbp
	je	.label_99
	xor	ebx, ebx
	jmp	.label_96
.label_94:
	mov	edi, ebp
	call	close
	xor	ebx, ebx
	jmp	.label_96
.label_97:
	mov	r14d, dword ptr [r14]
	mov	rdi, rbx
	call	closedir
.label_99:
	test	r14d, r14d
	sete	bl
	jmp	.label_96
.label_98:
	mov	rdi, rbx
	call	closedir
	xor	ebx, ebx
.label_96:
	mov	al, bl
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403af0

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
	je	.label_131
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
	jmp	.label_109
.label_131:
	mov	qword ptr [rsp + 0x10], rsi
	mov	dword ptr [rsp + 0x1c], edi
	mov	qword ptr [rsp + 0x58], -1
	movzx	r13d, r12b
	shl	r13d, 2
	xor	r14d, r14d
.label_109:
	mov	ebx, 3
	cmp	qword ptr [r15 + 0x20], 0
	jne	.label_102
	mov	ecx, dword ptr [rbp + 4]
	cmp	ecx, 5
	je	.label_108
	mov	rdx, qword ptr [rbp]
	mov	rax, rdx
	shr	rax, 0x20
	xor	esi, esi
	test	dl, dl
	je	.label_121
	xor	r15d, r15d
	jmp	.label_124
.label_121:
	cmp	ecx, 3
	je	.label_125
	cmp	byte ptr [rbp + 0x19], 0
	mov	r15d, 0
	je	.label_124
.label_125:
	call	can_write_any_file
	test	al, al
	jne	.label_103
	mov	rax, qword ptr [rsp + 0x58]
	cmp	rax, -1
	jne	.label_129
	lea	rcx, [rsp + 0x28]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0x1c]
	mov	rdx, qword ptr [rsp + 0x10]
	call	__fxstatat
	test	eax, eax
	je	.label_127
	mov	qword ptr [rsp + 0x58], -2
	call	__errno_location
	movsxd	r15, dword ptr [rax]
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_107
.label_127:
	mov	rax, qword ptr [rsp + 0x58]
.label_129:
	test	rax, rax
	js	.label_119
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x40]
	cmp	eax, 0xa000
	je	.label_103
	mov	edx, 2
	mov	ecx, 0x200
	mov	edi, dword ptr [rsp + 0x1c]
	mov	rsi, qword ptr [rsp + 0x10]
	call	faccessat
	test	eax, eax
	je	.label_103
	call	__errno_location
	mov	esi, 1
	cmp	dword ptr [rax], 0xd
	je	.label_111
	mov	esi, 0xffffffff
.label_111:
	mov	r15d, dword ptr [rax]
	jmp	.label_113
.label_103:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	mov	eax, dword ptr [rbp + 4]
	xor	esi, esi
.label_124:
	cmp	eax, 3
	jne	.label_108
	jmp	.label_113
.label_119:
	mov	r15, qword ptr [rsp + 0x30]
	call	__errno_location
.label_107:
	mov	dword ptr [rax], r15d
	mov	esi, 0xffffffff
	mov	r15d, dword ptr [rax]
.label_113:
	test	esi, esi
	js	.label_118
	xor	r12b, 1
	je	.label_118
	mov	rax, qword ptr [rsp + 0x58]
	cmp	rax, -1
	jne	.label_123
	mov	r12d, esi
	lea	rcx, [rsp + 0x28]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0x1c]
	mov	rdx, qword ptr [rsp + 0x10]
	call	__fxstatat
	test	eax, eax
	je	.label_128
	mov	qword ptr [rsp + 0x58], -2
	call	__errno_location
	movsxd	r15, dword ptr [rax]
	mov	qword ptr [rsp + 0x30], r15
	mov	dword ptr [rax], r15d
	jmp	.label_104
.label_128:
	mov	rax, qword ptr [rsp + 0x58]
	mov	esi, r12d
.label_123:
	test	rax, rax
	js	.label_132
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x40]
	mov	r12d, 0xa
	cmp	eax, 0xa000
	je	.label_101
	cmp	eax, 0x4000
	mov	eax, 4
	cmove	r13d, eax
.label_118:
	mov	r12d, r13d
.label_101:
	test	esi, esi
	js	.label_104
	cmp	r12d, 4
	je	.label_105
	cmp	r12d, 0xa
	jne	.label_106
	cmp	dword ptr [rbp + 4], 3
	jne	.label_108
	jmp	.label_106
.label_105:
	cmp	byte ptr [rbp + 9], 0
	jne	.label_106
	cmp	byte ptr [rbp + 0xa], 0
	je	.label_110
	mov	r15d, 0x15
	mov	al, r14b
	xor	al, 1
	jne	.label_104
.label_106:
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
	je	.label_115
	mov	rax, qword ptr [rsp + 0x58]
	cmp	rax, -1
	jne	.label_120
	lea	rcx, [rsp + 0x28]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0x1c]
	mov	rdx, qword ptr [rsp + 0x10]
	call	__fxstatat
	test	eax, eax
	je	.label_126
	mov	qword ptr [rsp + 0x58], -2
	call	__errno_location
	movsxd	rbx, dword ptr [rax]
	mov	qword ptr [rsp + 0x30], rbx
	jmp	.label_133
.label_115:
	mov	r14,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	test	ebp, ebp
	je	.label_130
	mov	esi, OFFSET FLAT:.str.19_0
	jmp	.label_122
.label_132:
	mov	r15, qword ptr [rsp + 0x30]
	call	__errno_location
	mov	dword ptr [rax], r15d
.label_104:
	mov	ebx, 4
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x20]
	call	quotearg_style
	mov	rbp, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rcx
	mov	rcx, rbp
	call	error
	jmp	.label_102
.label_130:
	mov	esi, OFFSET FLAT:.str.20_0
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
	jmp	.label_114
.label_126:
	mov	rax, qword ptr [rsp + 0x58]
.label_120:
	test	rax, rax
	js	.label_116
	mov	r14,  qword ptr [word ptr [rip + stderr]]
	mov	r12, r13
	xor	edi, edi
	test	ebp, ebp
	je	.label_117
	mov	esi, OFFSET FLAT:.str.21_0
	jmp	.label_112
.label_116:
	mov	rbx, qword ptr [rsp + 0x30]
	call	__errno_location
.label_133:
	mov	dword ptr [rax], ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24_0
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
	jmp	.label_102
.label_117:
	mov	esi, OFFSET FLAT:.str.22_0
.label_112:
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
.label_114:
	call	yesno
	test	al, al
	je	.label_102
.label_108:
	mov	ebx, 2
.label_102:
	mov	eax, ebx
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_110:
	mov	r15d, 0x15
	jmp	.label_104
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403f40

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
	jne	.label_144
	mov	esi, dword ptr [rbx + 0x2c]
	mov	rdx, qword ptr [r15 + 0x30]
	lea	rcx, [rsp + 8]
	mov	edi, 1
	mov	r8d, 0x100
	call	__fxstatat
	test	eax, eax
	je	.label_146
	cmp	dword ptr [r12], 2
	je	.label_143
.label_146:
	mov	dword ptr [r12], 0x1e
.label_143:
	mov	ebp, dword ptr [r12]
.label_144:
	cmp	byte ptr [r13], 0
	je	.label_142
	mov	r14d, 2
	cmp	ebp, 0x16
	ja	.label_134
	mov	eax, 0x500004
	bt	eax, ebp
	jb	.label_138
.label_134:
	cmp	ebp, 0x54
	je	.label_138
.label_142:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 4
	jne	.label_139
	mov	eax, ebp
	cmp	ebp, 0x27
	ja	.label_139
	movabs	rcx, 0x8000320000
	bt	rcx, rax
	jae	.label_139
	mov	eax, dword ptr [r15 + 0x40]
	cmp	eax, 0xd
	je	.label_136
	cmp	eax, 1
	jne	.label_139
.label_136:
	mov	dword ptr [r12], eax
	mov	ebp, eax
.label_139:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24_0
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
	jmp	.label_141
	nop	dword ptr [rax + rax]
.label_145:
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rax + 8]
.label_141:
	cmp	qword ptr [rax + 0x58], 0
	js	.label_138
	cmp	qword ptr [rax + 0x20], 0
	je	.label_145
	jmp	.label_138
.label_135:
	mov	r14d, 2
	cmp	byte ptr [r13 + 0x1a], 0
	je	.label_138
	xor	edi, edi
	test	bpl, bpl
	je	.label_137
	mov	esi, OFFSET FLAT:.str.23_0
	jmp	.label_140
.label_137:
	mov	esi, OFFSET FLAT:.str.25_0
.label_140:
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
.label_138:
	mov	eax, r14d
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040f0

	.globl set_process_security_ctx
	.type set_process_security_ctx, @function
set_process_security_ctx:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rbx, r8
	mov	r15, rdi
	cmp	byte ptr [rbx + 0x25], 0
	je	.label_150
	cmp	byte ptr [rbx + 0x23], 0
	je	.label_148
	cmp	byte ptr [rbx + 0x26], 0
	je	.label_149
.label_148:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, r12
	call	error
	cmp	byte ptr [rbx + 0x26], 0
	jne	.label_151
	jmp	.label_147
.label_150:
	cmp	byte ptr [rbx + 0x21], 0
	je	.label_147
	xor	cl, 1
	jne	.label_147
.label_149:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_147:
	mov	r14b, 1
.label_151:
	mov	al, r14b
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404190
	.globl set_file_security_ctx
	.type set_file_security_ctx, @function
set_file_security_ctx:

	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	cmp	byte ptr [rcx + 0x23], 0
	je	.label_152
	cmp	byte ptr [rcx + 0x26], 0
	je	.label_154
.label_152:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_1
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r14
	call	quotearg_n_style
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_153
.label_154:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_153:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404200

	.globl dest_info_init
	.type dest_info_init, @function
dest_info_init:
	push	rbx
	mov	rbx, rdi
	mov	edi, 0x3d
	xor	esi, esi
	mov	edx, OFFSET FLAT:triple_hash
	mov	ecx, OFFSET FLAT:triple_compare
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	mov	qword ptr [rbx + 0x40], rax
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404230
	.globl src_info_init
	.type src_info_init, @function
src_info_init:

	push	rbx
	mov	rbx, rdi
	mov	edi, 0x3d
	xor	esi, esi
	mov	edx, OFFSET FLAT:triple_hash_no_name
	mov	ecx, OFFSET FLAT:triple_compare
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	mov	qword ptr [rbx + 0x48], rax
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404260

	.globl copy
	.type copy, @function
copy:
	sub	rsp, 0x28
	mov	rax, rcx
	mov	qword ptr [word ptr [rip + top_level_src_name]],  rdi
	mov	qword ptr [word ptr [rip + top_level_dst_name]],  rsi
	mov	byte ptr [rsp + 0x27], 0
	mov	qword ptr [rsp + 0x18], r9
	mov	qword ptr [rsp + 0x10], r8
	lea	rcx, [rsp + 0x27]
	mov	qword ptr [rsp + 8], rcx
	mov	dword ptr [rsp], 1
	movzx	edx, dl
	xor	ecx, ecx
	xor	r8d, r8d
	mov	r9, rax
	call	copy_internal
	add	rsp, 0x28
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042b0

	.globl copy_internal
	.type copy_internal, @function
copy_internal:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x3a8
	mov	qword ptr [rbp - 0x328], r8
	mov	qword ptr [rbp - 0x330], rcx
	mov	r14d, edx
	mov	qword ptr [rbp - 0x318], rsi
	mov	r12, rdi
	mov	r13, qword ptr [rbp + 0x28]
	mov	rax, qword ptr [rbp + 0x20]
	mov	byte ptr [rax], 0
	mov	r15d, dword ptr [r9 + 0x34]
	cmp	byte ptr [r9 + 0x18], 0
	je	.label_275
	mov	rbx, r9
	test	r15d, r15d
	jns	.label_236
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	r8d, 1
	mov	rsi, r12
	mov	rcx, qword ptr [rbp - 0x318]
	call	renameatu
	xor	r15d, r15d
	test	eax, eax
	je	.label_236
	call	__errno_location
	mov	r15d, dword ptr [rax]
.label_236:
	test	r15d, r15d
	sete	r14b
	test	r13, r13
	je	.label_285
	mov	byte ptr [r13], r14b
.label_285:
	mov	r9, rbx
.label_275:
	test	r15d, r15d
	je	.label_297
	cmp	r15d, 0x11
	jne	.label_291
	cmp	dword ptr [r9 + 8], 2
	je	.label_292
	jmp	.label_291
.label_297:
	cmp	byte ptr [r9 + 0x31], 0
	jne	.label_292
.label_291:
	test	r15d, r15d
	mov	rbx, r12
	cmove	rbx, qword ptr [rbp - 0x318]
	cmp	dword ptr [r9 + 4], 2
	mov	r13, r9
	lea	rdx, [rbp - 0x280]
	mov	edi, 1
	mov	rsi, rbx
	jne	.label_296
	call	__lxstat
	jmp	.label_382
.label_296:
	call	__xstat
.label_382:
	test	eax, eax
	mov	r9, r13
	je	.label_305
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_258:
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, r12
	call	error
.label_166:
	mov	al, r13b
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_305:
	mov	ecx, dword ptr [rbp - 0x268]
	mov	eax, ecx
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_476
	cmp	byte ptr [r9 + 0x2a], 0
	mov	r13, qword ptr [rbp + 0x28]
	jne	.label_292
	cmp	byte ptr [r9 + 0x19], 0
	je	.label_324
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_1
	jmp	.label_328
.label_476:
	mov	r13, qword ptr [rbp + 0x28]
.label_292:
	mov	dl, byte ptr [rbp + 0x10]
	test	dl, dl
	je	.label_330
	mov	rdi, qword ptr [r9 + 0x48]
	test	rdi, rdi
	je	.label_330
	mov	eax, ecx
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_335
	mov	dword ptr [rbp - 0x334], ecx
	jmp	.label_339
.label_335:
	mov	dword ptr [rbp - 0x334], ecx
	cmp	dword ptr [r9], 0
	je	.label_343
.label_339:
	mov	bl, dl
	mov	r13, r9
.label_163:
	lea	rdx, [rbp - 0x280]
	mov	rsi, r12
	call	record_file
	mov	r9, r13
	mov	r13, qword ptr [rbp + 0x28]
	mov	dl, bl
	mov	ecx, dword ptr [rbp - 0x334]
.label_330:
	mov	qword ptr [rbp - 0x320], r12
	mov	eax, dword ptr [r9 + 4]
	mov	r12b, 1
	cmp	eax, 4
	je	.label_350
	cmp	eax, 3
	sete	r12b
	and	r12b, dl
.label_350:
	xor	r8d, r8d
	test	r14b, r14b
	je	.label_355
	xor	eax, eax
	mov	qword ptr [rbp - 0x350], rax
.label_168:
	test	dl, dl
	je	.label_348
	cmp	qword ptr [r9 + 0x40], 0
	je	.label_348
	cmp	byte ptr [r9 + 0x18], 0
	jne	.label_348
	cmp	dword ptr [r9], 0
	jne	.label_348
	mov	qword ptr [rbp - 0x348], r14
	mov	r14, r9
	mov	r13d, ecx
	test	r8b, r8b
	jne	.label_361
	lea	rbx, [rbp - 0xd0]
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x318]
	mov	rdx, rbx
	call	__lxstat
	test	eax, eax
	jne	.label_179
	jmp	.label_371
.label_355:
	cmp	r15d, 0x11
	jne	.label_374
	cmp	dword ptr [r9 + 8], 2
	jne	.label_374
	xor	r8d, r8d
	xor	r14d, r14d
	jmp	.label_375
.label_374:
	mov	byte ptr [rbp - 0x340], r12b
	mov	eax, ecx
	mov	dword ptr [rbp - 0x334], ecx
	and	eax, 0xf000
	cmp	eax, 0x8000
	mov	rdx, qword ptr [rbp - 0x318]
	je	.label_376
	mov	bl, 1
	cmp	byte ptr [r9 + 0x14], 0
	je	.label_381
	cmp	eax, 0x4000
	je	.label_381
	cmp	eax, 0xa000
	je	.label_381
.label_376:
	mov	bl, 1
	cmp	byte ptr [r9 + 0x18], 0
	jne	.label_381
	cmp	byte ptr [r9 + 0x2c], 0
	jne	.label_381
	cmp	byte ptr [r9 + 0x17], 0
	jne	.label_381
	cmp	dword ptr [r9], 0
	jne	.label_381
	cmp	byte ptr [r9 + 0x15], 0
	setne	bl
.label_381:
	mov	r12, r9
	movzx	r8d, bl
	shl	r8d, 8
	lea	rcx, [rbp - 0x310]
	mov	edi, 1
	mov	esi, 0xffffff9c
	call	__fxstatat
	test	eax, eax
	je	.label_405
	mov	r14, r12
	mov	r13d, dword ptr [rbp - 0x334]
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	al, 1
	cmp	ebx, 2
	je	.label_409
	mov	r12, qword ptr [rbp - 0x318]
	cmp	ebx, 0x28
	jne	.label_274
	cmp	byte ptr [r14 + 0x16], 0
	je	.label_274
	xor	eax, eax
.label_409:
	xor	r8d, r8d
	cmp	r15d, 0x11
	mov	ecx, 0
	mov	qword ptr [rbp - 0x350], rcx
	mov	ecx, r13d
	mov	r9, r14
	mov	r13b, byte ptr [rbp + 0x10]
	mov	dl, r13b
	mov	r14, rax
	mov	r13, qword ptr [rbp + 0x28]
	mov	r12b, byte ptr [rbp - 0x340]
	jne	.label_168
	jmp	.label_375
.label_405:
	xor	r14d, r14d
	mov	r9, r12
	mov	r13, qword ptr [rbp + 0x28]
	mov	r12b, byte ptr [rbp - 0x340]
	mov	r8, rbx
	mov	ecx, dword ptr [rbp - 0x334]
.label_375:
	cmp	dword ptr [r9 + 8], 2
	jne	.label_423
	xor	edi, edi
	jmp	.label_157
.label_423:
	mov	dword ptr [rbp - 0x334], ecx
	mov	rax, qword ptr [rbp - 0x278]
	cmp	rax, qword ptr [rbp - 0x308]
	jne	.label_424
	mov	qword ptr [rbp - 0x348], r14
	mov	rax, qword ptr [rbp - 0x280]
	cmp	rax, qword ptr [rbp - 0x310]
	jne	.label_426
	mov	dil, 1
	cmp	byte ptr [r9 + 0x17], 0
	jne	.label_161
	jmp	.label_432
.label_274:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
.label_240:
	mov	rdx, r15
	call	error
	jmp	.label_166
.label_424:
	mov	qword ptr [rbp - 0x348], r14
	xor	edi, edi
	jmp	.label_432
.label_343:
	mov	bl, dl
	mov	r13, r9
	lea	rdx, [rbp - 0x280]
	mov	rsi, r12
	call	seen_file
	test	al, al
	je	.label_445
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15_2
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	r13b, 1
	jmp	.label_166
.label_426:
	xor	edi, edi
.label_432:
	cmp	dword ptr [r9 + 4], 2
	jne	.label_454
	mov	rbx, r8
	mov	eax, dword ptr [rbp - 0x268]
	mov	ecx, eax
	and	ecx, 0xf000
	lea	rsi, [rbp - 0x280]
	lea	r15, [rbp - 0x310]
	cmp	ecx, 0xa000
	jne	.label_413
	mov	ecx, 0xf000
	and	ecx, dword ptr [rbp - 0x2f8]
	cmp	ecx, 0xa000
	jne	.label_413
	mov	r15d, edi
	mov	r14, r9
	mov	rdi, qword ptr [rbp - 0x320]
	mov	rsi, qword ptr [rbp - 0x318]
	call	same_name
	test	al, al
	jne	.label_167
	mov	r9, r14
	cmp	dword ptr [r9], 0
	jne	.label_479
	test	r15b, r15b
	mov	r8, rbx
	je	.label_483
	cmp	byte ptr [r9 + 0x18], 0
	mov	dil, 1
	mov	ecx, dword ptr [rbp - 0x334]
	mov	r14, qword ptr [rbp - 0x348]
	jne	.label_167
	jmp	.label_157
.label_454:
	test	dil, dil
	je	.label_487
	mov	rbx, r8
	mov	r14, r9
	lea	r15, [rbp - 0xd0]
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x318]
	mov	rdx, r15
	call	__lxstat
	test	eax, eax
	jne	.label_491
	lea	rdx, [rbp - 0x160]
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x320]
	call	__lxstat
	test	eax, eax
	je	.label_158
.label_491:
	xor	edi, edi
	mov	r9, r14
	mov	r8, rbx
	jmp	.label_161
.label_445:
	mov	rdi, qword ptr [r13 + 0x48]
	jmp	.label_163
.label_324:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_1
.label_328:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	r13d, r13d
.label_181:
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_453:
	mov	rdx, rbx
	call	error
	jmp	.label_166
.label_487:
	xor	edi, edi
	jmp	.label_161
.label_361:
	lea	rbx, [rbp - 0x310]
.label_371:
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	jne	.label_179
	mov	rdi, qword ptr [r14 + 0x40]
	mov	rsi, qword ptr [rbp - 0x318]
	mov	rdx, rbx
	call	seen_file
	test	al, al
	je	.label_179
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26_0
	jmp	.label_188
.label_179:
	mov	ecx, r13d
	mov	r9, r14
	mov	r14, qword ptr [rbp - 0x348]
.label_348:
	mov	byte ptr [rbp - 0x340], r12b
	mov	qword ptr [rbp - 0x348], r14
	cmp	byte ptr [r9 + 0x2e], 0
	je	.label_195
	mov	eax, ecx
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_195
	mov	al, byte ptr [r9 + 0x18]
	test	al, al
	jne	.label_195
	mov	rdi, qword ptr [rbp - 0x320]
	mov	rsi, qword ptr [rbp - 0x318]
	mov	rdx, qword ptr [rbp - 0x350]
	mov	r14, r9
	mov	ebx, ecx
	call	emit_verbose
	mov	ecx, ebx
	mov	r9, r14
.label_195:
	mov	r14, r9
	mov	r13d, ecx
	xor	edx, edx
	test	r15d, r15d
	je	.label_208
	mov	ebx, r13d
	and	ebx, 0xf000
	cmp	ebx, 0x4000
	jne	.label_212
	mov	al, byte ptr [r14 + 0x2a]
	test	al, al
	je	.label_212
	mov	rax, qword ptr [rbp - 0x280]
	mov	rcx, qword ptr [rbp - 0x278]
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_216
	mov	rdi, qword ptr [rbp - 0x318]
	mov	rsi, rcx
	mov	rdx, rax
	jmp	.label_219
.label_212:
	cmp	byte ptr [r14 + 0x18], 0
	je	.label_223
	cmp	qword ptr [rbp - 0x270], 1
	jne	.label_223
	mov	rsi, qword ptr [rbp - 0x280]
	mov	rdi, qword ptr [rbp - 0x278]
	call	src_to_dest_lookup
	jmp	.label_229
.label_223:
	xor	edx, edx
	cmp	byte ptr [r14 + 0x22], 0
	je	.label_208
	xor	edx, edx
	cmp	byte ptr [r14 + 0x17], 0
	jne	.label_208
	cmp	qword ptr [rbp - 0x270], 1
	ja	.label_231
	mov	ecx, dword ptr [r14 + 4]
	cmp	ecx, 3
	sete	al
	xor	edx, edx
	cmp	ecx, 4
	je	.label_231
	and	al, byte ptr [rbp + 0x10]
	je	.label_208
.label_231:
	mov	rdx, qword ptr [rbp - 0x280]
	mov	rsi, qword ptr [rbp - 0x278]
	mov	rdi, qword ptr [rbp - 0x318]
.label_219:
	call	remember_copied
	jmp	.label_229
.label_216:
	mov	rdi, rcx
	mov	rsi, rax
	call	src_to_dest_lookup
.label_229:
	mov	r12, rax
	xor	edx, edx
	test	r12, r12
	je	.label_208
	cmp	ebx, 0x4000
	jne	.label_244
	mov	rdi, qword ptr [rbp - 0x320]
	mov	rsi, r12
	call	same_name
	test	al, al
	je	.label_250
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27_0
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	mov	rdx,  qword ptr [word ptr [rip + top_level_src_name]]
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	r15, rax
	mov	rdx,  qword ptr [word ptr [rip + top_level_dst_name]]
	mov	edi, 1
	mov	esi, 4
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r13
	mov	rcx, r15
	mov	r8, rbx
	call	error
	mov	rax, qword ptr [rbp + 0x20]
	mov	byte ptr [rax], 1
	jmp	.label_263
.label_244:
	movzx	ecx, byte ptr [r14 + 0x2e]
	movzx	r8d, byte ptr [rbp - 0x340]
	mov	edx, 1
	mov	rdi, r12
	mov	rsi, qword ptr [rbp - 0x318]
	call	create_hard_link
	mov	r10, r14
	mov	r13b, 1
	test	al, al
	mov	rdx, r12
	jne	.label_166
	jmp	.label_185
.label_250:
	mov	rdi, qword ptr [rbp - 0x318]
	mov	rsi, r12
	call	same_name
	test	al, al
	je	.label_277
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + top_level_src_name]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	r13b, 1
	cmp	qword ptr [rbp + 0x28], 0
	je	.label_166
	mov	al, byte ptr [r14 + 0x18]
	test	al, al
	je	.label_166
	mov	rax, qword ptr [rbp + 0x28]
	mov	byte ptr [rax], 1
	jmp	.label_166
.label_277:
	mov	ecx, dword ptr [r14 + 4]
	cmp	ecx, 3
	sete	al
	cmp	ecx, 4
	je	.label_199
	mov	cl, byte ptr [rbp + 0x10]
	and	al, cl
	jne	.label_199
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.29_0
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x318]
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, r12
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r13
	mov	rcx, r15
	mov	r8, rbx
	call	error
.label_263:
	mov	rdx, r12
	mov	r10, r14
	jmp	.label_185
.label_199:
	mov	rdx, r12
.label_208:
	cmp	byte ptr [r14 + 0x18], 0
	mov	r12, qword ptr [rbp - 0x320]
	je	.label_303
	cmp	r15d, 0x11
	jne	.label_455
	mov	rbx, rdx
	mov	rdi, r12
	mov	rsi, qword ptr [rbp - 0x318]
	call	rename
	test	eax, eax
	je	.label_311
	call	__errno_location
	mov	r15d, dword ptr [rax]
	mov	rdx, rbx
.label_455:
	cmp	r15d, 0x16
	je	.label_314
	cmp	r15d, 0x12
	je	.label_317
	test	r15d, r15d
	jne	.label_417
.label_311:
	cmp	byte ptr [r14 + 0x2e], 0
	mov	r13, qword ptr [rbp - 0x318]
	je	.label_320
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, qword ptr [rbp - 0x350]
	call	emit_verbose
.label_320:
	cmp	byte ptr [r14 + 0x21], 0
	mov	rbx, qword ptr [rbp + 0x28]
	je	.label_332
	cmp	byte ptr [r14 + 0x23], 0
	je	.label_336
	cmp	byte ptr [r14 + 0x26], 0
	je	.label_338
.label_336:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_1
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r13
	call	quotearg_n_style
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, r15
	call	error
	jmp	.label_332
.label_317:
	mov	qword ptr [rbp - 0x360], rdx
	mov	ebx, r13d
	and	ebx, 0xf000
	cmp	ebx, 0x4000
	jne	.label_352
	mov	r12, qword ptr [rbp - 0x318]
	mov	rdi, r12
	call	rmdir
	jmp	.label_359
.label_314:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.31
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdx,  qword ptr [word ptr [rip + top_level_src_name]]
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	r15, rax
	mov	rdx,  qword ptr [word ptr [rip + top_level_dst_name]]
	mov	edi, 1
	mov	esi, 4
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, r15
	mov	r8, rbx
	call	error
	mov	rax, qword ptr [rbp + 0x20]
	mov	byte ptr [rax], 1
	mov	r13b, 1
	jmp	.label_166
.label_417:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, 5
	call	dcgettext
	mov	rdx, r12
	mov	r12, rax
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	r14, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x318]
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, r12
	mov	rcx, r14
	mov	r8, rbx
	jmp	.label_386
.label_352:
	mov	r12, qword ptr [rbp - 0x318]
	mov	rdi, r12
	call	unlink
.label_359:
	test	eax, eax
	je	.label_398
	call	__errno_location
	mov	r15d, dword ptr [rax]
	cmp	r15d, 2
	jne	.label_402
.label_398:
	cmp	ebx, 0x4000
	mov	al, 1
	mov	qword ptr [rbp - 0x348], rax
	je	.label_403
	mov	al, byte ptr [r14 + 0x2e]
	test	al, al
	mov	rbx, r12
	je	.label_407
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.34
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	r12, qword ptr [rbp - 0x320]
	mov	rdi, r12
	mov	rsi, rbx
	mov	qword ptr [rbp - 0x318], rbx
	mov	rdx, qword ptr [rbp - 0x350]
	call	emit_verbose
	jmp	.label_415
.label_402:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x320]
	call	quotearg_n_style
	mov	rbx, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, r12
	call	quotearg_n_style
	mov	r8, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, r14
	mov	rcx, rbx
.label_386:
	call	error
	mov	rsi, qword ptr [rbp - 0x280]
	mov	rdi, qword ptr [rbp - 0x278]
	call	forget_created
	jmp	.label_166
.label_338:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_332:
	mov	rsi, r13
	test	rbx, rbx
	je	.label_433
	mov	byte ptr [rbx], 1
.label_433:
	mov	r13b, 1
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_166
	cmp	byte ptr [r14 + 0x31], 0
	jne	.label_166
	mov	rdi, qword ptr [r14 + 0x40]
	lea	rdx, [rbp - 0x280]
	call	record_file
	jmp	.label_166
.label_403:
	mov	qword ptr [rbp - 0x318], r12
	mov	r12, qword ptr [rbp - 0x320]
	jmp	.label_415
.label_407:
	mov	qword ptr [rbp - 0x318], rbx
	mov	r12, qword ptr [rbp - 0x320]
.label_415:
	mov	rdx, qword ptr [rbp - 0x360]
.label_303:
	cmp	byte ptr [r14 + 0x2b], 0
	mov	eax, r13d
	mov	r8, r14
	je	.label_175
	mov	eax, dword ptr [r8 + 0x10]
.label_175:
	mov	ebx, eax
	mov	qword ptr [rbp - 0x360], rdx
	mov	r15d, 0x3f
	cmp	byte ptr [r8 + 0x1d], 0
	mov	r14, qword ptr [rbp - 0x348]
	jne	.label_448
	mov	eax, r13d
	and	eax, 0xf000
	xor	ecx, ecx
	cmp	eax, 0x4000
	mov	r15d, 0x12
	cmovne	r15d, ecx
.label_448:
	movzx	ecx, r14b
	mov	dword ptr [rbp - 0x368], ecx
	mov	rdi, r12
	mov	rsi, qword ptr [rbp - 0x318]
	mov	qword ptr [rbp - 0x358], r8
	call	set_process_security_ctx
	test	al, al
	je	.label_461
	and	r15d, ebx
	mov	esi, r13d
	and	esi, 0xf000
	cmp	esi, 0x4000
	jne	.label_387
	mov	rdi, qword ptr [rbp - 0x328]
	test	rdi, rdi
	mov	rax, qword ptr [rbp - 0x280]
	mov	rcx, qword ptr [rbp - 0x278]
	je	.label_468
	mov	rdx, rdi
	nop	word ptr cs:[rax + rax]
.label_484:
	cmp	qword ptr [rdx + 8], rcx
	jne	.label_480
	cmp	qword ptr [rdx + 0x10], rax
	je	.label_481
.label_480:
	mov	rdx, qword ptr [rdx]
	test	rdx, rdx
	jne	.label_484
.label_468:
	mov	dword ptr [rbp - 0x36c], esi
	mov	rdx, rsp
	lea	rsi, [rdx - 0x20]
	mov	qword ptr [rbp - 0x340], rsi
	mov	rsp, rsi
	mov	qword ptr [rdx - 0x20], rdi
	mov	qword ptr [rdx - 0x18], rcx
	mov	qword ptr [rdx - 0x10], rax
	test	r14b, r14b
	jne	.label_486
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x2f8]
	cmp	eax, 0x4000
	jne	.label_486
	mov	r10, qword ptr [rbp - 0x358]
	cmp	byte ptr [r10 + 0x21], 0
	jne	.label_475
	cmp	byte ptr [r10 + 0x25], 0
	je	.label_492
.label_475:
	mov	dword ptr [rbp - 0x334], r13d
	cmp	byte ptr [r10 + 0x23], 0
	je	.label_155
	cmp	byte ptr [r10 + 0x26], 0
	je	.label_177
.label_155:
	mov	r14, r10
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	eax, eax
	mov	qword ptr [rbp - 0x380], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_1
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 4
	mov	r13, qword ptr [rbp - 0x318]
	mov	rdx, r13
	call	quotearg_n_style
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	r10, r14
	cmp	byte ptr [r10 + 0x26], 0
	mov	r15d, 0
	mov	dword ptr [rbp - 0x374], eax
	je	.label_178
	mov	rdx, qword ptr [rbp - 0x360]
	jmp	.label_185
.label_461:
	xor	r13d, r13d
	jmp	.label_166
.label_387:
	mov	rdx, qword ptr [rbp - 0x358]
	cmp	byte ptr [rdx + 0x2c], 0
	je	.label_313
	mov	dword ptr [rbp - 0x36c], esi
	mov	dword ptr [rbp - 0x334], r13d
	movzx	eax, byte ptr [r12]
	cmp	eax, 0x2f
	je	.label_193
	mov	r13, rdx
	mov	rdi, qword ptr [rbp - 0x318]
	call	dir_name
	mov	r14, rax
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2e
	jne	.label_200
	cmp	byte ptr [r14 + 1], 0
	je	.label_203
.label_200:
	lea	rdx, [rbp - 0xd0]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str_3
	call	__xstat
	test	eax, eax
	jne	.label_203
	lea	rdx, [rbp - 0x160]
	mov	edi, 1
	mov	rsi, r14
	call	__xstat
	test	eax, eax
	je	.label_213
.label_203:
	mov	rdi, r14
	call	free
.label_404:
	mov	rdx, r13
.label_193:
	mov	dword ptr [rbp - 0x370], r15d
	movzx	ecx, byte ptr [rdx + 0x16]
	mov	r13, rdx
	mov	esi, 0xffffff9c
	mov	r8d, 0xffffffff
	mov	rdi, r12
	mov	rbx, qword ptr [rbp - 0x318]
	mov	rdx, rbx
	call	force_symlinkat
	mov	r15, r12
	mov	r12d, eax
	test	r12d, r12d
	jle	.label_222
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41_0
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	rbx, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, r15
	call	quotearg_n_style
	mov	r8, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, r14
	mov	rcx, rbx
	call	error
.label_269:
	mov	rdx, qword ptr [rbp - 0x360]
	mov	r10, r13
	jmp	.label_185
.label_486:
	and	ebx, 0xfff
	mov	esi, r15d
	not	esi
	and	esi, ebx
	mov	rbx, qword ptr [rbp - 0x318]
	mov	rdi, rbx
	call	mkdir
	test	eax, eax
	je	.label_241
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
	jmp	.label_300
.label_313:
	cmp	byte ptr [rdx + 0x17], 0
	je	.label_246
	mov	dword ptr [rbp - 0x36c], esi
	mov	dword ptr [rbp - 0x370], r15d
	mov	qword ptr [rbp - 0x320], r12
	mov	r12b, 1
	cmp	byte ptr [rdx + 0x16], 0
	mov	al, 1
	jne	.label_248
	cmp	dword ptr [rdx + 8], 3
	sete	al
.label_248:
	mov	rbx, rdx
	movzx	edx, al
	movzx	r8d, byte ptr [rbp - 0x340]
	xor	r15d, r15d
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x320]
	mov	rsi, qword ptr [rbp - 0x318]
	call	create_hard_link
	test	al, al
	je	.label_259
	mov	dword ptr [rbp - 0x334], r13d
	xor	r14d, r14d
	xor	eax, eax
	mov	qword ptr [rbp - 0x380], rax
	mov	dword ptr [rbp - 0x374], eax
	mov	rcx, qword ptr [rbp - 0x360]
	mov	r10, rbx
	jmp	.label_261
.label_241:
	lea	rdx, [rbp - 0x310]
	mov	edi, 1
	mov	rsi, rbx
	call	__lxstat
	test	eax, eax
	je	.label_472
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_300:
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
.label_221:
	mov	rdx, r15
	call	error
	jmp	.label_279
.label_222:
	mov	qword ptr [rbp - 0x320], r15
	mov	r15b, 1
	xor	r14d, r14d
	mov	r12b, 1
	xor	eax, eax
	mov	qword ptr [rbp - 0x380], rax
	mov	dword ptr [rbp - 0x374], eax
	mov	rcx, qword ptr [rbp - 0x360]
	mov	r10, r13
	jmp	.label_261
.label_481:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
.label_186:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_252:
	mov	rdx, rbx
	call	error
.label_279:
	mov	rdx, qword ptr [rbp - 0x360]
	mov	r10, qword ptr [rbp - 0x358]
	jmp	.label_185
.label_246:
	cmp	esi, 0x8000
	je	.label_293
	cmp	esi, 0xa000
	je	.label_294
	mov	al, byte ptr [rdx + 0x14]
	test	al, al
	je	.label_294
.label_293:
	mov	dword ptr [rbp - 0x36c], esi
	mov	dword ptr [rbp - 0x334], r13d
	mov	eax, dword ptr [rbp - 0x268]
	mov	dword ptr [rbp - 0x330], eax
	mov	al, byte ptr [rdx + 0x23]
	mov	byte ptr [rbp - 0x328], al
	mov	esi, 0x20000
	cmp	dword ptr [rdx + 4], 2
	je	.label_347
	xor	esi, esi
.label_347:
	xor	eax, eax
	mov	rdi, r12
	call	open_safer
	mov	r13, r12
	mov	r12d, eax
	test	r12d, r12d
	js	.label_307
	mov	dword ptr [rbp - 0x370], r15d
	mov	qword ptr [rbp - 0x320], r13
	lea	rdx, [rbp - 0x160]
	mov	edi, 1
	mov	esi, r12d
	call	__fxstat
	test	eax, eax
	je	.label_318
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.61
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x320]
.label_323:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_325
.label_259:
	mov	rdx, qword ptr [rbp - 0x360]
	mov	r10, rbx
	jmp	.label_185
.label_472:
	mov	ecx, dword ptr [rbp - 0x2f8]
	mov	eax, ecx
	and	eax, 0x1c0
	cmp	eax, 0x1c0
	jne	.label_333
	mov	dword ptr [rbp - 0x374], ecx
	xor	ecx, ecx
	jmp	.label_226
.label_158:
	lea	rcx, [rbp - 0x160]
	mov	rax, qword ptr [rbp - 0x158]
	cmp	rax, qword ptr [rbp - 0xc8]
	jne	.label_341
	mov	rax, qword ptr [rbp - 0x160]
	cmp	rax, qword ptr [rbp - 0xd0]
	sete	dil
	jmp	.label_345
.label_333:
	mov	esi, ecx
	mov	dword ptr [rbp - 0x374], ecx
	or	esi, 0x1c0
	mov	rdi, rbx
	call	chmod
	mov	cl, 1
	test	eax, eax
	je	.label_226
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_4
	jmp	.label_300
.label_226:
	mov	qword ptr [rbp - 0x380], rcx
	mov	dword ptr [rbp - 0x334], r13d
	mov	rax, qword ptr [rbp + 0x18]
	cmp	byte ptr [rax], 0
	mov	r10, qword ptr [rbp - 0x358]
	jne	.label_357
	mov	rdx, qword ptr [rbp - 0x310]
	mov	rsi, qword ptr [rbp - 0x308]
	mov	rdi, rbx
	mov	r14, r10
	call	remember_copied
	mov	r10, r14
	mov	rax, qword ptr [rbp + 0x18]
	mov	byte ptr [rax], 1
.label_357:
	cmp	byte ptr [r10 + 0x2e], 0
	je	.label_396
	cmp	byte ptr [r10 + 0x18], 0
	mov	r14, r10
	mov	r13, rbx
	je	.label_367
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
	jmp	.label_379
.label_307:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60_0
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, r13
	jmp	.label_385
.label_213:
	mov	ebx, r15d
	mov	rax, qword ptr [rbp - 0xc8]
	cmp	rax, qword ptr [rbp - 0x158]
	jne	.label_388
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x328], rax
	mov	r15, qword ptr [rbp - 0x160]
	mov	rdi, r14
	call	free
	cmp	qword ptr [rbp - 0x328], r15
	mov	r15d, ebx
	je	.label_404
	jmp	.label_406
.label_294:
	cmp	esi, 0x5fff
	jle	.label_408
	cmp	esi, 0x6000
	je	.label_410
	cmp	esi, 0xa000
	je	.label_411
	cmp	esi, 0xc000
	je	.label_410
	jmp	.label_282
.label_341:
	xor	edi, edi
.label_345:
	mov	rsi, rcx
	mov	eax, dword ptr [rbp - 0x148]
	mov	ecx, eax
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	mov	r9, r14
	jne	.label_413
	mov	ecx, 0xf000
	and	ecx, dword ptr [rbp - 0xb8]
	cmp	ecx, 0xa000
	jne	.label_413
	cmp	byte ptr [r9 + 0x15], 0
	je	.label_413
.label_479:
	xor	edi, edi
	mov	r8, rbx
	jmp	.label_161
.label_413:
	mov	rcx, qword ptr [r9]
	test	ecx, ecx
	je	.label_419
	mov	rdx, r15
	mov	r15, r9
	test	dil, dil
	je	.label_422
	mov	rdi, qword ptr [rbp - 0x320]
	mov	rsi, qword ptr [rbp - 0x318]
	call	same_name
	test	al, al
	mov	ecx, dword ptr [rbp - 0x334]
	mov	r14, qword ptr [rbp - 0x348]
	mov	r9, r15
	mov	r8, rbx
	jne	.label_167
	xor	edi, edi
	jmp	.label_157
.label_419:
	cmp	byte ptr [r9 + 0x18], 0
	jne	.label_437
	cmp	byte ptr [r9 + 0x15], 0
	je	.label_431
.label_437:
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x18]
	cmp	ecx, 0xa000
	mov	r8, rbx
	jne	.label_434
	xor	edi, edi
	jmp	.label_161
.label_422:
	and	eax, 0xf000
	xor	edi, edi
	cmp	eax, 0xa000
	mov	r9, r15
	mov	r8, rbx
	jne	.label_161
	movabs	rax, 0xffffffff00000000
	and	rcx, rax
	movabs	rax, 0x200000000
	cmp	rcx, rax
	je	.label_161
	mov	al, byte ptr [r9 + 0x18]
	test	al, al
	jne	.label_161
	mov	eax, 0xf000
	and	eax, dword ptr [rdx + 0x18]
	cmp	eax, 0xa000
	jne	.label_167
	xor	edi, edi
	jmp	.label_161
.label_434:
	test	dil, dil
	je	.label_452
	cmp	qword ptr [r15 + 0x10], 2
	jb	.label_452
	mov	qword ptr [rbp - 0x340], rsi
	mov	rbx, r8
	mov	r14, r9
	mov	rdi, qword ptr [rbp - 0x320]
	mov	rsi, qword ptr [rbp - 0x318]
	call	same_name
	test	al, al
	je	.label_457
	mov	rsi, qword ptr [rbp - 0x340]
	mov	eax, dword ptr [rsi + 0x18]
	mov	r9, r14
.label_431:
	mov	r8, rbx
.label_452:
	and	eax, 0xf000
	cmp	eax, 0xa000
	je	.label_459
	mov	eax, 0xf000
	and	eax, dword ptr [r15 + 0x18]
	cmp	eax, 0xa000
	je	.label_459
	mov	rax, qword ptr [rsi + 8]
	cmp	rax, qword ptr [r15 + 8]
	jne	.label_465
	mov	rax, qword ptr [rsi]
	cmp	rax, qword ptr [r15]
	jne	.label_470
	mov	dil, 1
	cmp	byte ptr [r9 + 0x17], 0
	jne	.label_161
.label_459:
	mov	rbx, r8
	cmp	byte ptr [r9 + 0x18], 0
	je	.label_477
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x268]
	cmp	eax, 0xa000
	jne	.label_477
	cmp	qword ptr [r15 + 0x10], 2
	jb	.label_477
	mov	rdi, qword ptr [rbp - 0x320]
	mov	qword ptr [rbp - 0x358], r9
	mov	r14, rsi
	call	canonicalize_file_name
	mov	rsi, r14
	mov	r9, qword ptr [rbp - 0x358]
	test	rax, rax
	je	.label_477
	mov	r15, rax
	mov	rdi, r15
	mov	rsi, qword ptr [rbp - 0x318]
	call	same_name
	mov	r14b, al
	mov	rdi, r15
	call	free
	mov	r9, qword ptr [rbp - 0x358]
	test	r14b, r14b
	mov	ecx, dword ptr [rbp - 0x334]
	mov	r14, qword ptr [rbp - 0x348]
	mov	r8, rbx
	jne	.label_167
	xor	edi, edi
	jmp	.label_157
.label_477:
	cmp	byte ptr [r9 + 0x2c], 0
	mov	r8, rbx
	je	.label_159
	mov	eax, 0xf000
	and	eax, dword ptr [r15 + 0x18]
	cmp	eax, 0xa000
	jne	.label_159
	xor	edi, edi
	jmp	.label_161
.label_159:
	cmp	dword ptr [r9 + 4], 2
	jne	.label_167
	mov	r14, r8
	mov	qword ptr [rbp - 0x358], r9
	mov	eax, 0xf000
	and	eax, dword ptr [rsi + 0x18]
	cmp	eax, 0xa000
	jne	.label_171
	lea	rdx, [rbp - 0x160]
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x320]
	call	__xstat
	test	eax, eax
	jne	.label_180
	jmp	.label_460
.label_177:
	mov	rbx, r10
	call	__errno_location
	mov	r10, rbx
	mov	dword ptr [rax], 0x5f
	jmp	.label_184
.label_318:
	mov	rax, qword ptr [rbp - 0x278]
	cmp	rax, qword ptr [rbp - 0x158]
	jne	.label_304
	mov	rax, qword ptr [rbp - 0x280]
	cmp	rax, qword ptr [rbp - 0x160]
	jne	.label_304
	mov	edx, ebx
	and	edx, 0x1ff
	mov	rax, qword ptr [rbp - 0x348]
	test	al, al
	mov	r13b, al
	mov	ecx, dword ptr [rbp - 0x370]
	jne	.label_196
	mov	dword ptr [rbp - 0x374], edx
	mov	esi, 0x201
	mov	rax, qword ptr [rbp - 0x358]
	cmp	byte ptr [rax + 0x23], 0
	jne	.label_224
	mov	esi, 1
.label_224:
	xor	eax, eax
	mov	rdi, qword ptr [rbp - 0x318]
	call	open_safer
	mov	ebx, eax
	call	__errno_location
	mov	r15, rax
	mov	r14d, dword ptr [r15]
	mov	rcx, qword ptr [rbp - 0x358]
	cmp	byte ptr [rcx + 0x21], 0
	je	.label_210
	test	ebx, ebx
	jns	.label_215
	jmp	.label_156
.label_396:
	mov	r13, rbx
	jmp	.label_178
.label_492:
	mov	dword ptr [rbp - 0x334], r13d
.label_184:
	xor	eax, eax
	mov	qword ptr [rbp - 0x380], rax
	xor	r15d, r15d
	mov	dword ptr [rbp - 0x374], eax
	mov	r13, qword ptr [rbp - 0x318]
	jmp	.label_178
.label_483:
	xor	edi, edi
	jmp	.label_161
.label_304:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.62
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x320]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_325:
	mov	rdx, rbx
	call	error
	xor	ebx, ebx
.label_190:
	mov	edi, r12d
	call	close
	test	eax, eax
	jns	.label_235
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.67
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x320]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r12
	call	error
.label_235:
	mov	rdi, rbx
	call	free
	test	r15b, r15b
	je	.label_279
	xor	r15d, r15d
	mov	r14b, 1
	mov	r12b, 1
	jmp	.label_249
.label_457:
	mov	r9, r14
	cmp	byte ptr [r9 + 0x18], 0
	mov	ecx, dword ptr [rbp - 0x334]
	mov	r14, qword ptr [rbp - 0x348]
	mov	r8, rbx
	jne	.label_167
	xor	edi, edi
	jmp	.label_157
.label_388:
	mov	rdi, r14
	call	free
.label_406:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x318]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_269
.label_465:
	xor	edi, edi
	jmp	.label_161
.label_171:
	lea	rdi, [rbp - 0x160]
	mov	edx, 0x90
	call	memcpy
.label_460:
	mov	eax, 0xf000
	and	eax, dword ptr [r15 + 0x18]
	cmp	eax, 0xa000
	jne	.label_273
	lea	rdx, [rbp - 0xd0]
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x318]
	call	__xstat
	test	eax, eax
	je	.label_278
.label_180:
	xor	edi, edi
	mov	r9, qword ptr [rbp - 0x358]
	mov	r8, r14
	jmp	.label_161
.label_408:
	mov	dword ptr [rbp - 0x334], r13d
	cmp	esi, 0x1000
	je	.label_280
	cmp	esi, 0x2000
	mov	r13d, dword ptr [rbp - 0x334]
	jne	.label_282
.label_410:
	mov	dword ptr [rbp - 0x36c], esi
	mov	edx, r15d
	not	edx
	and	edx, r13d
	mov	rax, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0xd0], rax
	mov	r14d, r15d
	xor	r15d, r15d
	lea	rcx, [rbp - 0xd0]
	xor	edi, edi
	mov	rbx, qword ptr [rbp - 0x318]
	mov	rsi, rbx
	call	__xmknod
	test	eax, eax
	je	.label_288
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43_0
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
.label_385:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_221
.label_367:
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r12
	call	quotearg_n_style
	mov	rbx, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, r13
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.57
	xor	eax, eax
	mov	rdx, rbx
	call	__printf_chk
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_310
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_379:
	mov	r10, r14
.label_178:
	mov	rcx, qword ptr [rbp - 0x330]
	test	rcx, rcx
	je	.label_319
	mov	al, byte ptr [r10 + 0x1c]
	test	al, al
	je	.label_319
	mov	rax, qword ptr [rcx]
	cmp	rax, qword ptr [rbp - 0x280]
	jne	.label_321
.label_319:
	movups	xmm0, xmmword ptr [r10 + 0x40]
	movaps	xmmword ptr [rbp - 0x90], xmm0
	movups	xmm0, xmmword ptr [r10]
	movups	xmm1, xmmword ptr [r10 + 0x10]
	movups	xmm2, xmmword ptr [r10 + 0x20]
	movups	xmm3, xmmword ptr [r10 + 0x30]
	movaps	xmmword ptr [rbp - 0xa0], xmm3
	movaps	xmmword ptr [rbp - 0xb0], xmm2
	movaps	xmmword ptr [rbp - 0xc0], xmm1
	movaps	xmmword ptr [rbp - 0xd0], xmm0
	mov	esi, 2
	mov	rdi, r12
	mov	r14, r10
	call	savedir
	test	rax, rax
	je	.label_340
	mov	dword ptr [rbp - 0x370], r15d
	mov	qword ptr [rbp - 0x318], r13
	cmp	dword ptr [r14 + 4], 3
	mov	rbx, r14
	jne	.label_344
	mov	dword ptr [rbp - 0xcc], 2
.label_344:
	mov	qword ptr [rbp - 0x358], rbx
	mov	qword ptr [rbp - 0x320], r12
	mov	r15b, 1
	xor	ebx, ebx
	cmp	byte ptr [rax], 0
	je	.label_346
	mov	r12, rax
	mov	qword ptr [rbp - 0x330], rax
.label_390:
	mov	r14b, r15b
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x320]
	mov	rsi, r12
	call	file_name_concat
	mov	r15, rax
	mov	qword ptr [rbp - 0x328], r15
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x318]
	mov	rsi, r12
	call	file_name_concat
	mov	r13, rax
	mov	rax, qword ptr [rbp + 0x18]
	mov	al, byte ptr [rax]
	mov	byte ptr [rbp - 0x1f0], al
	sub	rsp, 0x20
	lea	rax, [rbp - 0x160]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rbp - 0x1f0]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x18], 0
	mov	dword ptr [rsp], 0
	mov	rdi, r15
	mov	rsi, r13
	mov	edx, dword ptr [rbp - 0x368]
	lea	rcx, [rbp - 0x280]
	mov	r8, qword ptr [rbp - 0x340]
	lea	r9, [rbp - 0xd0]
	call	copy_internal
	add	rsp, 0x20
	mov	r15b, al
	and	r15b, r14b
	mov	r14b, byte ptr [rbp - 0x160]
	mov	rax, qword ptr [rbp + 0x20]
	or	byte ptr [rax], r14b
	mov	rdi, r13
	call	free
	mov	rdi, qword ptr [rbp - 0x328]
	call	free
	test	r14b, r14b
	jne	.label_384
	and	bl, 1
	or	bl, byte ptr [rbp - 0x1f0]
	mov	rdi, r12
	call	strlen
	cmp	byte ptr [rax + r12 + 1], 0
	lea	r12, [rax + r12 + 1]
	jne	.label_390
	jmp	.label_384
.label_340:
	mov	dword ptr [rbp - 0x370], r15d
	mov	qword ptr [rbp - 0x358], r14
	mov	qword ptr [rbp - 0x318], r13
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rbx, r12
	mov	qword ptr [rbp - 0x320], rbx
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.59_0
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
	jmp	.label_287
.label_321:
	mov	dword ptr [rbp - 0x370], r15d
	mov	qword ptr [rbp - 0x320], r12
	mov	qword ptr [rbp - 0x318], r13
	mov	r12b, 1
	xor	r15d, r15d
	xor	r14d, r14d
	mov	rcx, qword ptr [rbp - 0x360]
	jmp	.label_261
.label_346:
	mov	qword ptr [rbp - 0x330], rax
.label_384:
	mov	rdi, qword ptr [rbp - 0x330]
	call	free
	and	bl, 1
	mov	rax, qword ptr [rbp + 0x18]
	mov	byte ptr [rax], bl
	test	r15b, r15b
	setne	r12b
.label_287:
	xor	r15d, r15d
	xor	r14d, r14d
	jmp	.label_421
.label_273:
	lea	rdi, [rbp - 0xd0]
	mov	edx, 0x90
	mov	rsi, r15
	call	memcpy
.label_278:
	mov	rax, qword ptr [rbp - 0x158]
	cmp	rax, qword ptr [rbp - 0xc8]
	mov	r9, qword ptr [rbp - 0x358]
	mov	r8, r14
	jne	.label_425
	mov	rax, qword ptr [rbp - 0x160]
	cmp	rax, qword ptr [rbp - 0xd0]
	jne	.label_428
	cmp	byte ptr [r9 + 0x17], 0
	je	.label_167
	mov	eax, 0xf000
	and	eax, dword ptr [r15 + 0x18]
	cmp	eax, 0xa000
	setne	dil
	jmp	.label_161
.label_167:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_0
.label_188:
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x320]
	call	quotearg_n_style
	mov	r12, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x318]
	jmp	.label_441
.label_470:
	xor	edi, edi
	jmp	.label_161
.label_425:
	xor	edi, edi
	jmp	.label_161
.label_288:
	mov	dword ptr [rbp - 0x370], r14d
	mov	dword ptr [rbp - 0x334], r13d
	mov	qword ptr [rbp - 0x320], r12
	mov	r12b, 1
	jmp	.label_170
.label_411:
	mov	dword ptr [rbp - 0x36c], esi
	mov	dword ptr [rbp - 0x370], r15d
	mov	rsi, qword ptr [rbp - 0x250]
	mov	rdi, r12
	call	areadlink_with_size
	mov	r15, rax
	test	r15, r15
	je	.label_456
	mov	dword ptr [rbp - 0x334], r13d
	mov	qword ptr [rbp - 0x320], r12
	mov	rax, qword ptr [rbp - 0x358]
	movzx	ecx, byte ptr [rax + 0x16]
	mov	esi, 0xffffff9c
	mov	r8d, 0xffffffff
	mov	rdi, r15
	mov	rdx, qword ptr [rbp - 0x318]
	call	force_symlinkat
	mov	r14d, eax
	test	r14d, r14d
	jle	.label_467
	mov	rax, qword ptr [rbp - 0x348]
	test	al, al
	jne	.label_473
	mov	rax, qword ptr [rbp - 0x358]
	mov	al, byte ptr [rax + 0x2d]
	test	al, al
	je	.label_473
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x2f8]
	cmp	eax, 0xa000
	jne	.label_473
	mov	rbx, qword ptr [rbp - 0x2e0]
	mov	rdi, r15
	call	strlen
	cmp	rbx, rax
	jne	.label_473
	mov	rdi, qword ptr [rbp - 0x318]
	mov	rsi, rbx
	call	areadlink_with_size
	mov	rbx, rax
	test	rbx, rbx
	je	.label_473
	mov	rdi, rbx
	mov	rsi, r15
	call	strcmp
	mov	r12d, eax
	mov	rdi, rbx
	call	free
	test	r12d, r12d
	je	.label_467
.label_473:
	mov	rdi, r15
	call	free
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.45_0
	jmp	.label_490
.label_280:
	mov	dword ptr [rbp - 0x36c], esi
	mov	qword ptr [rbp - 0x320], r12
	mov	r14d, r15d
	mov	dword ptr [rbp - 0x370], r15d
	not	r14d
	and	r14d, dword ptr [rbp - 0x334]
	mov	qword ptr [rbp - 0xd0], 0
	xor	r15d, r15d
	lea	rcx, [rbp - 0xd0]
	xor	edi, edi
	mov	rbx, qword ptr [rbp - 0x318]
	mov	rsi, rbx
	mov	edx, r14d
	call	__xmknod
	mov	r12b, 1
	test	eax, eax
	je	.label_170
	and	r14d, 0xffffefff
	mov	rdi, rbx
	mov	esi, r14d
	call	mkfifo
	test	eax, eax
	je	.label_174
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42_0
.label_490:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x318]
	jmp	.label_182
.label_282:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.47
	jmp	.label_186
.label_428:
	xor	edi, edi
.label_161:
	mov	ecx, dword ptr [rbp - 0x334]
	mov	r14, qword ptr [rbp - 0x348]
.label_157:
	mov	byte ptr [rbp - 0x340], r12b
	mov	dword ptr [rbp - 0x334], ecx
	mov	ebx, ecx
	and	ebx, 0xf000
	cmp	ebx, 0x4000
	je	.label_192
	mov	al, byte ptr [r9 + 0x2d]
	test	al, al
	je	.label_192
	cmp	byte ptr [r9 + 0x1f], 0
	je	.label_201
	mov	dword ptr [rbp - 0x348], edi
	cmp	byte ptr [r9 + 0x18], 0
	je	.label_202
	mov	qword ptr [rbp - 0x358], r9
	mov	rax, qword ptr [rbp - 0x310]
	cmp	rax, qword ptr [rbp - 0x280]
	sete	al
	jmp	.label_205
.label_201:
	mov	dword ptr [rbp - 0x348], edi
	mov	r12, r8
	mov	qword ptr [rbp - 0x358], r9
	xor	eax, eax
	mov	rdi, qword ptr [rbp - 0x318]
	jmp	.label_209
.label_202:
	mov	qword ptr [rbp - 0x358], r9
	xor	eax, eax
.label_205:
	mov	rdi, qword ptr [rbp - 0x318]
	mov	r12, r8
	xor	al, 1
.label_209:
	mov	qword ptr [rbp - 0x318], rdi
	movzx	ecx, al
	lea	rsi, [rbp - 0x310]
	lea	rdx, [rbp - 0x280]
	call	utimecmp
	test	eax, eax
	mov	r9, qword ptr [rbp - 0x358]
	mov	r8, r12
	mov	edi, dword ptr [rbp - 0x348]
	js	.label_192
	mov	r14, r9
	test	r13, r13
	je	.label_225
	mov	byte ptr [r13], 1
.label_225:
	mov	rdx, qword ptr [rbp - 0x280]
	mov	rsi, qword ptr [rbp - 0x278]
	mov	rbx, qword ptr [rbp - 0x318]
	mov	rdi, rbx
	call	remember_copied
	mov	r13b, 1
	test	rax, rax
	mov	dl, byte ptr [rbp - 0x340]
	je	.label_166
	mov	r15, r14
	movzx	ecx, byte ptr [r15 + 0x2e]
	movzx	r8d, dl
	mov	edx, 1
	mov	rdi, rax
	mov	r14, rax
	mov	rsi, rbx
	call	create_hard_link
	mov	r10, r15
	mov	rdx, r14
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x350], rcx
	test	al, al
	jne	.label_166
.label_185:
	cmp	byte ptr [r10 + 0x25], 0
	jne	.label_242
	test	rdx, rdx
	mov	rbx, qword ptr [rbp - 0x318]
	mov	rax, qword ptr [rbp - 0x350]
	jne	.label_243
	mov	rsi, qword ptr [rbp - 0x280]
	mov	rdi, qword ptr [rbp - 0x278]
	mov	r14, rax
	mov	r15, r10
	call	forget_created
	mov	r10, r15
	mov	rax, r14
.label_243:
	mov	r15, r10
	test	rax, rax
	je	.label_254
	mov	rdi, rax
	mov	rsi, rbx
	mov	r14, rax
	call	rename
	test	eax, eax
	je	.label_256
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.50
	jmp	.label_258
.label_192:
	mov	r12, r13
	mov	qword ptr [rbp - 0x348], r14
	cmp	byte ptr [r9 + 0x18], 0
	je	.label_260
	mov	eax, dword ptr [r9 + 8]
	cmp	eax, 2
	je	.label_264
	cmp	eax, 3
	je	.label_268
	cmp	eax, 4
	jne	.label_271
	cmp	byte ptr [r9 + 0x2f], 0
	je	.label_271
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x2f8]
	cmp	eax, 0xa000
	je	.label_271
	mov	r15, r9
	mov	r13, r8
	mov	r14d, edi
	call	can_write_any_file
	mov	edi, r14d
	mov	r8, r13
	mov	r9, r15
	test	al, al
	jne	.label_271
	mov	r13, r8
	mov	esi, 2
	mov	r14d, edi
	mov	rdi, qword ptr [rbp - 0x318]
	mov	r15, r9
	call	euidaccess
	mov	edi, r14d
	mov	r8, r13
	mov	r9, r15
	test	eax, eax
	je	.label_271
.label_268:
	lea	rdx, [rbp - 0x310]
	mov	r14d, edi
	mov	rdi, r9
	mov	r13, r8
	mov	rsi, qword ptr [rbp - 0x318]
	mov	r15, r9
	call	overwrite_ok
	mov	edi, r14d
	mov	r8, r13
	mov	r9, r15
	test	al, al
	jne	.label_271
.label_264:
	mov	r13b, 1
	test	r12, r12
	je	.label_166
	mov	byte ptr [r12], 1
	jmp	.label_166
.label_254:
	xor	r13d, r13d
	jmp	.label_166
.label_260:
	cmp	ebx, 0x4000
	je	.label_271
	mov	eax, dword ptr [r9 + 8]
	mov	r13b, 1
	cmp	eax, 2
	je	.label_166
	cmp	eax, 3
	jne	.label_271
	mov	r12, r8
	lea	rdx, [rbp - 0x310]
	mov	r14d, edi
	mov	rdi, r9
	mov	r15, r9
	mov	rsi, qword ptr [rbp - 0x318]
	call	overwrite_ok
	test	r14b, r14b
	jne	.label_166
	test	al, al
	mov	r9, r15
	mov	r8, r12
	jne	.label_301
	jmp	.label_166
.label_271:
	mov	r13b, 1
	test	dil, dil
	jne	.label_166
.label_301:
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x2f8]
	cmp	eax, 0x4000
	mov	dl, byte ptr [rbp + 0x10]
	je	.label_306
	cmp	ebx, 0x4000
	jne	.label_309
	cmp	byte ptr [r9 + 0x18], 0
	je	.label_312
	cmp	dword ptr [r9], 0
	je	.label_312
.label_309:
	test	dl, dl
	je	.label_306
	cmp	dword ptr [r9], 3
	je	.label_306
	mov	rdi, qword ptr [r9 + 0x40]
	mov	r12b, dl
	lea	rdx, [rbp - 0x310]
	mov	r15, r8
	mov	rsi, qword ptr [rbp - 0x318]
	mov	r14, r9
	call	seen_file
	mov	dl, r12b
	mov	r8, r15
	mov	r9, r14
	test	al, al
	je	.label_306
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18_1
	jmp	.label_326
.label_256:
	cmp	byte ptr [r15 + 0x2e], 0
	je	.label_329
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r14
	call	quotearg_n_style
	mov	r12, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r15
	mov	rdx, r12
	call	__printf_chk
	jmp	.label_166
.label_306:
	cmp	ebx, 0x4000
	je	.label_349
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x2f8]
	cmp	eax, 0x4000
	jne	.label_349
	cmp	byte ptr [r9 + 0x18], 0
	je	.label_354
	cmp	dword ptr [r9], 0
	je	.label_354
.label_349:
	mov	r12b, byte ptr [r9 + 0x18]
	test	r12b, r12b
	je	.label_358
	mov	eax, 0xf000
	mov	ecx, dword ptr [rbp - 0x268]
	and	ecx, eax
	cmp	ecx, 0x4000
	jne	.label_358
	and	eax, dword ptr [rbp - 0x2f8]
	cmp	eax, 0x4000
	je	.label_358
	cmp	dword ptr [r9], 0
	je	.label_362
.label_358:
	mov	r13, r8
	mov	r14, qword ptr [r9]
	test	r14d, r14d
	je	.label_364
	mov	rdi, qword ptr [rbp - 0x320]
	mov	r15, r9
	mov	bl, dl
	call	last_component
	mov	dl, bl
	mov	r9, r15
	mov	r15, rax
	movzx	eax, byte ptr [r15]
	cmp	eax, 0x2e
	jne	.label_368
	movzx	ecx, byte ptr [r15 + 1]
	mov	eax, 2
	cmp	ecx, 0x2e
	je	.label_372
	mov	eax, 1
.label_372:
	mov	al, byte ptr [r15 + rax]
	test	al, al
	je	.label_364
	movzx	eax, al
	cmp	eax, 0x2f
	je	.label_364
.label_368:
	test	r12b, r12b
	jne	.label_378
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x2f8]
	cmp	eax, 0x4000
	jne	.label_378
.label_364:
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x2f8]
	mov	r15d, 0x11
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x350], rcx
	cmp	eax, 0x4000
	jne	.label_380
	mov	ecx, dword ptr [rbp - 0x334]
	mov	r14, qword ptr [rbp - 0x348]
	mov	r12b, byte ptr [rbp - 0x340]
	mov	r8, r13
	jmp	.label_168
.label_329:
	xor	r13d, r13d
	jmp	.label_166
.label_378:
	cmp	r14d, 3
	je	.label_401
	mov	rdi, r15
	mov	r12, r9
	call	strlen
	mov	qword ptr [rbp - 0x348], rax
	mov	rdi, qword ptr [rbp - 0x318]
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	strlen
	mov	r14, rax
	mov	rdi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	qword ptr [rbp - 0x350], rdi
	call	strlen
	mov	r9, r12
	mov	r12, rax
	lea	rax, [r12 + r14]
	cmp	qword ptr [rbp - 0x348], rax
	jne	.label_401
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r14
	mov	rbx, r9
	call	memcmp
	mov	r9, rbx
	test	eax, eax
	jne	.label_401
	add	r15, r14
	mov	rdi, r15
	mov	rsi, qword ptr [rbp - 0x350]
	mov	rbx, r9
	call	strcmp
	mov	r9, rbx
	test	eax, eax
	jne	.label_401
	mov	qword ptr [rbp - 0x358], r9
	mov	rbx, qword ptr [rbp - 0x318]
	mov	rdi, rbx
	call	strlen
	mov	r14, rax
	lea	rdi, [r12 + r14 + 1]
	call	xmalloc
	mov	r15, rax
	mov	rcx, -1
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r14
	call	__mempcpy_chk
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdi, rax
	call	strcpy
	lea	rdx, [rbp - 0xd0]
	mov	edi, 1
	mov	rsi, r15
	call	__xstat
	mov	r14d, eax
	mov	rdi, r15
	call	free
	test	r14d, r14d
	jne	.label_435
	mov	rax, qword ptr [rbp - 0x278]
	cmp	rax, qword ptr [rbp - 0xc8]
	jne	.label_435
	mov	rax, qword ptr [rbp - 0x280]
	cmp	rax, qword ptr [rbp - 0xd0]
	mov	r9, qword ptr [rbp - 0x358]
	jne	.label_401
	cmp	byte ptr [r9 + 0x18], 0
	je	.label_442
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21_1
	jmp	.label_444
.label_380:
	test	r12b, r12b
	mov	r8, r13
	jne	.label_446
	cmp	byte ptr [r9 + 0x15], 0
	jne	.label_449
	cmp	byte ptr [r9 + 0x22], 0
	je	.label_451
	cmp	qword ptr [rbp - 0x300], 1
	ja	.label_449
.label_451:
	movabs	rax, 0xffffffff00000000
	and	r14, rax
	movabs	rax, 0x200000000
	cmp	r14, rax
	jne	.label_446
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x268]
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x350], rcx
	cmp	eax, 0x8000
	je	.label_458
.label_449:
	mov	qword ptr [rbp - 0x348], r8
	mov	r12, r9
	mov	rbx, qword ptr [rbp - 0x318]
	mov	rdi, rbx
	call	unlink
	test	eax, eax
	je	.label_466
	call	__errno_location
	mov	r14d, dword ptr [rax]
	cmp	r14d, 2
	jne	.label_471
.label_466:
	mov	r14b, 1
	mov	r9, r12
	cmp	byte ptr [r9 + 0x2e], 0
	je	.label_474
	xor	eax, eax
	mov	qword ptr [rbp - 0x350], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25_0
	mov	edx, 5
	mov	r12, r9
	call	dcgettext
	mov	r13, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r13
	mov	rdx, rcx
	call	__printf_chk
	mov	r9, r12
	jmp	.label_488
.label_312:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17_2
.label_326:
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
.label_251:
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x318]
	call	quotearg_n_style
	mov	r12, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x320]
.label_441:
	call	quotearg_n_style
.label_197:
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	mov	rcx, r12
	mov	r8, rbx
	call	error
	jmp	.label_166
.label_446:
	xor	eax, eax
	mov	qword ptr [rbp - 0x350], rax
.label_458:
	mov	ecx, dword ptr [rbp - 0x334]
	mov	r14, qword ptr [rbp - 0x348]
	mov	r12b, byte ptr [rbp - 0x340]
	jmp	.label_168
.label_354:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19_1
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x318]
	call	quotearg_style
	mov	rcx, rax
	jmp	.label_181
.label_362:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20_1
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x320]
	call	quotearg_n_style_colon
	mov	r12, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x318]
	call	quotearg_n_style_colon
	jmp	.label_197
.label_471:
	mov	r12, rbx
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24_0
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, r12
	jmp	.label_399
.label_474:
	xor	eax, eax
	mov	qword ptr [rbp - 0x350], rax
.label_488:
	mov	ecx, dword ptr [rbp - 0x334]
	mov	r12b, byte ptr [rbp - 0x340]
	mov	r8, qword ptr [rbp - 0x348]
	jmp	.label_207
.label_435:
	mov	r9, qword ptr [rbp - 0x358]
.label_401:
	mov	qword ptr [rbp - 0x358], r9
	mov	edx, dword ptr [r9]
	mov	edi, 0xffffff9c
	mov	rsi, qword ptr [rbp - 0x318]
	call	backup_file_rename
	mov	r14, rax
	test	r14, r14
	mov	r12b, byte ptr [rbp - 0x340]
	je	.label_217
	mov	rdi, r14
	call	strlen
	mov	rdi, rsp
	lea	rdx, [rax + 1]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	sub	rdi, rax
	mov	qword ptr [rbp - 0x350], rdi
	mov	rsp, rdi
	mov	rsi, r14
	call	memcpy
	mov	rdi, r14
	call	free
	jmp	.label_228
.label_217:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	cmp	r14d, 2
	jne	.label_206
	xor	eax, eax
	mov	qword ptr [rbp - 0x350], rax
.label_228:
	mov	r15d, 0x11
	mov	r14b, 1
	mov	ecx, dword ptr [rbp - 0x334]
	mov	r9, qword ptr [rbp - 0x358]
	mov	r8, r13
.label_207:
	mov	dl, byte ptr [rbp + 0x10]
	jmp	.label_168
.label_206:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23_1
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x318]
.label_399:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_240
.label_456:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
.label_182:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_252
.label_467:
	mov	rdi, r15
	call	free
	mov	rax, qword ptr [rbp - 0x358]
	cmp	byte ptr [rax + 0x25], 0
	mov	rbx, rax
	jne	.label_255
	cmp	byte ptr [rbx + 0x1d], 0
	je	.label_257
	mov	esi, dword ptr [rbp - 0x264]
	mov	edx, dword ptr [rbp - 0x260]
	mov	rdi, qword ptr [rbp - 0x318]
	call	lchown
	test	eax, eax
	je	.label_257
	call	__errno_location
	mov	r14d, dword ptr [rax]
	cmp	r14d, 0x16
	je	.label_265
	cmp	r14d, 1
	jne	.label_267
.label_265:
	cmp	byte ptr [rbx + 0x1a], 0
	je	.label_257
.label_267:
	xor	eax, eax
	mov	qword ptr [rbp - 0x380], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.46
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x318]
	call	error
	cmp	byte ptr [rbx + 0x24], 0
	je	.label_172
	mov	r10, rbx
	mov	rdx, qword ptr [rbp - 0x360]
	jmp	.label_185
.label_174:
	xor	r15d, r15d
.label_170:
	xor	r14d, r14d
.label_249:
	xor	eax, eax
	mov	qword ptr [rbp - 0x380], rax
	mov	dword ptr [rbp - 0x374], eax
.label_421:
	mov	rcx, qword ptr [rbp - 0x360]
	mov	r10, qword ptr [rbp - 0x358]
.label_261:
	mov	rax, qword ptr [rbp - 0x348]
	test	al, al
	jne	.label_266
	cmp	dword ptr [rbp - 0x36c], 0x4000
	je	.label_266
	mov	al, byte ptr [r10 + 0x14]
	test	al, al
	jne	.label_266
	cmp	byte ptr [r10 + 0x21], 0
	jne	.label_284
	cmp	byte ptr [r10 + 0x25], 0
	je	.label_266
.label_284:
	mov	dword ptr [rbp - 0x328], r15d
	cmp	byte ptr [r10 + 0x23], 0
	je	.label_286
	cmp	byte ptr [r10 + 0x26], 0
	je	.label_289
.label_286:
	mov	r13, rcx
	mov	r15, r12
	mov	r12, r10
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_1
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x318]
	call	quotearg_n_style
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	r10, r12
	mov	r12, r15
	mov	rdx, r13
	cmp	byte ptr [r10 + 0x26], 0
	mov	r15d, dword ptr [rbp - 0x328]
	jne	.label_185
	jmp	.label_266
.label_289:
	mov	rbx, r10
	call	__errno_location
	mov	r10, rbx
	mov	dword ptr [rax], 0x5f
	mov	r15d, dword ptr [rbp - 0x328]
.label_266:
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_316
	cmp	qword ptr [r10 + 0x40], 0
	je	.label_316
	mov	rbx, r10
	lea	rdx, [rbp - 0xd0]
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x318]
	call	__lxstat
	test	eax, eax
	jne	.label_322
	mov	rdi, qword ptr [rbx + 0x40]
	lea	rdx, [rbp - 0xd0]
	mov	rsi, qword ptr [rbp - 0x318]
	call	record_file
.label_322:
	mov	r10, rbx
.label_316:
	cmp	dword ptr [rbp - 0x36c], 0x4000
	je	.label_327
	mov	al, byte ptr [r10 + 0x17]
	test	al, al
	jne	.label_204
.label_327:
	test	r14b, r14b
	jne	.label_204
	cmp	byte ptr [r10 + 0x1f], 0
	mov	rbx, qword ptr [rbp - 0x318]
	mov	r13, qword ptr [rbp - 0x348]
	je	.label_334
	mov	qword ptr [rbp - 0x328], r12
	mov	r12, r10
	movups	xmm0, xmmword ptr [rbp - 0x238]
	movaps	xmmword ptr [rbp - 0xd0], xmm0
	movups	xmm0, xmmword ptr [rbp - 0x228]
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	lea	rsi, [rbp - 0xd0]
	mov	rdi, rbx
	test	r15b, r15b
	je	.label_342
	call	lutimens
	test	eax, eax
	je	.label_298
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_351
	jmp	.label_298
.label_342:
	call	utimens
	test	eax, eax
	je	.label_298
	call	__errno_location
.label_351:
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbp - 0x330], eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.48
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rbp - 0x330]
	mov	rdx, r14
	call	error
	cmp	byte ptr [r12 + 0x24], 0
	je	.label_298
	xor	r13d, r13d
	jmp	.label_166
.label_298:
	mov	r10, r12
	mov	r12, qword ptr [rbp - 0x328]
.label_334:
	test	r15b, r15b
	jne	.label_204
	cmp	byte ptr [r10 + 0x1d], 0
	je	.label_369
	test	r13b, r13b
	jne	.label_370
	mov	eax, dword ptr [rbp - 0x264]
	cmp	eax, dword ptr [rbp - 0x2f4]
	jne	.label_370
	mov	eax, dword ptr [rbp - 0x260]
	cmp	eax, dword ptr [rbp - 0x2f0]
	je	.label_369
.label_370:
	test	r13b, r13b
	setne	al
	movzx	r8d, al
	lea	rcx, [rbp - 0x280]
	lea	r9, [rbp - 0x310]
	mov	edx, 0xffffffff
	mov	rdi, r10
	mov	r14, r10
	mov	rsi, rbx
	call	set_owner
	cmp	eax, -1
	je	.label_493
	test	eax, eax
	jne	.label_162
	and	dword ptr [rbp - 0x334], 0xfffff1ff
.label_162:
	mov	r10, r14
.label_369:
	cmp	byte ptr [r10 + 0x1e], 0
	jne	.label_389
	cmp	byte ptr [r10 + 0x18], 0
	je	.label_392
.label_389:
	mov	esi, 0xffffffff
	mov	ecx, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x320]
	mov	rdx, rbx
	mov	r8d, dword ptr [rbp - 0x334]
	mov	rbx, r10
	call	copy_acl
	mov	rcx, rbx
	test	eax, eax
	je	.label_204
	cmp	byte ptr [rcx + 0x24], 0
	je	.label_204
	xor	r13d, r13d
	jmp	.label_166
.label_493:
	xor	r13d, r13d
	jmp	.label_166
.label_392:
	cmp	byte ptr [r10 + 0x2b], 0
	je	.label_272
	mov	edx, dword ptr [r10 + 0x10]
	mov	esi, 0xffffffff
	mov	rdi, rbx
	call	set_acl
	test	eax, eax
	je	.label_204
	xor	r13d, r13d
	jmp	.label_166
.label_272:
	mov	r15, rbx
	test	r13b, r13b
	je	.label_308
	mov	al, byte ptr [r10 + 0x20]
	test	al, al
	je	.label_308
	mov	eax, dword ptr [rbp - 0x334]
	and	eax, 0x7000
	or	eax, 0x8000
	cmp	eax, 0xc000
	mov	eax, 0x1ff
	mov	ebx, 0x1b6
	cmove	ebx, eax
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
	cmp	eax, -1
	jne	.label_414
	xor	edi, edi
	call	umask
	mov	dword ptr [dword ptr [rip + cached_umask.mask]],  eax
	mov	edi, eax
	call	umask
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
.label_414:
	not	eax
	and	ebx, eax
	mov	esi, 0xffffffff
	mov	rdi, r15
	mov	edx, ebx
	call	set_acl
	test	eax, eax
	je	.label_204
	xor	r13d, r13d
	jmp	.label_166
.label_308:
	mov	rbx, r10
	cmp	dword ptr [rbp - 0x370], 0
	je	.label_427
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
	cmp	eax, -1
	jne	.label_430
	xor	edi, edi
	call	umask
	mov	dword ptr [dword ptr [rip + cached_umask.mask]],  eax
	mov	edi, eax
	call	umask
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
.label_430:
	not	eax
	and	dword ptr [rbp - 0x370], eax
	mov	rax, qword ptr [rbp - 0x380]
	test	al, al
	jne	.label_220
	cmp	dword ptr [rbp - 0x370], 0
	je	.label_220
	test	r13b, r13b
	je	.label_440
	lea	rdx, [rbp - 0x310]
	mov	edi, 1
	mov	rsi, r15
	call	__lxstat
	test	eax, eax
	je	.label_440
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	jmp	.label_453
.label_257:
	mov	r15b, 1
	xor	r14d, r14d
	mov	r12b, 1
	xor	eax, eax
	mov	qword ptr [rbp - 0x380], rax
.label_253:
	mov	dword ptr [rbp - 0x374], eax
	mov	r10, rbx
	mov	rcx, qword ptr [rbp - 0x360]
	jmp	.label_261
.label_210:
	test	ebx, ebx
	js	.label_366
	mov	al, byte ptr [rcx + 0x25]
	test	al, al
	je	.label_366
.label_215:
	mov	r13d, ebx
	cmp	byte ptr [rcx + 0x23], 0
	mov	rbx, rcx
	je	.label_464
	cmp	byte ptr [rbx + 0x26], 0
	je	.label_237
.label_464:
	mov	dword ptr [r15], 0x5f
	xor	eax, eax
	mov	qword ptr [rbp - 0x368], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_1
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rbp - 0x340], rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x318]
	call	quotearg_n_style
	mov	rcx, rax
	xor	eax, eax
	mov	qword ptr [rbp - 0x348], rax
	xor	edi, edi
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x340]
	call	error
	mov	rcx, rbx
	cmp	byte ptr [rcx + 0x26], 0
	mov	ebx, r13d
	je	.label_366
	xor	r15d, r15d
	jmp	.label_412
.label_310:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_379
.label_427:
	mov	dword ptr [rbp - 0x370], 0
	jmp	.label_220
.label_237:
	mov	dword ptr [r15], 0x5f
	mov	rcx, rbx
	mov	ebx, r13d
.label_366:
	xor	eax, eax
	mov	qword ptr [rbp - 0x348], rax
	test	ebx, ebx
	js	.label_156
	mov	qword ptr [rbp - 0x358], rcx
	mov	dword ptr [rbp - 0x380], 0
	jmp	.label_165
.label_156:
	xor	eax, eax
	mov	qword ptr [rbp - 0x348], rax
	cmp	byte ptr [rcx + 0x16], 0
	mov	qword ptr [rbp - 0x358], rcx
	mov	dword ptr [rbp - 0x380], 0
	je	.label_165
	mov	rdi, qword ptr [rbp - 0x318]
	call	unlink
	test	eax, eax
	je	.label_173
	mov	r14d, dword ptr [r15]
	xor	eax, eax
	mov	qword ptr [rbp - 0x348], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x318]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
	xor	r15d, r15d
	xor	ebx, ebx
	jmp	.label_190
.label_173:
	mov	rax, qword ptr [rbp - 0x358]
	cmp	byte ptr [rax + 0x2e], 0
	je	.label_191
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25_0
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x318]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r14
	mov	rdx, rcx
	call	__printf_chk
.label_191:
	mov	r13b, 1
	mov	rax, qword ptr [rbp - 0x358]
	cmp	byte ptr [rax + 0x21], 0
	mov	ecx, dword ptr [rbp - 0x370]
	mov	edx, dword ptr [rbp - 0x374]
	je	.label_196
	mov	ecx, 1
	mov	rdi, qword ptr [rbp - 0x320]
	mov	rsi, qword ptr [rbp - 0x318]
	mov	r8, qword ptr [rbp - 0x358]
	mov	ebx, edx
	call	set_process_security_ctx
	mov	edx, ebx
	mov	r13b, 1
	xor	r15d, r15d
	test	al, al
	mov	ecx, dword ptr [rbp - 0x370]
	mov	al, 1
	mov	qword ptr [rbp - 0x348], rax
	mov	ebx, 0
	je	.label_190
	jmp	.label_196
.label_440:
	mov	eax, dword ptr [rbp - 0x2f8]
	mov	dword ptr [rbp - 0x374], eax
	not	eax
	test	dword ptr [rbp - 0x370], eax
	je	.label_220
	mov	al, 1
	mov	qword ptr [rbp - 0x380], rax
.label_220:
	mov	rax, qword ptr [rbp - 0x380]
	test	al, 1
	je	.label_204
	mov	esi, dword ptr [rbp - 0x374]
	or	esi, dword ptr [rbp - 0x370]
	mov	rdi, r15
	call	chmod
	test	eax, eax
	je	.label_204
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbp - 0x320], eax
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rbp - 0x320]
	mov	rdx, r14
	call	error
	cmp	byte ptr [rbx + 0x24], 0
	jne	.label_166
.label_204:
	test	r12b, r12b
	setne	r13b
	jmp	.label_166
.label_442:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22_1
.label_444:
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	r13d, r13d
	jmp	.label_251
.label_172:
	mov	r15b, 1
	xor	r14d, r14d
	mov	r12b, 1
	jmp	.label_253
.label_242:
	call	restore_default_fscreatecon_or_die
.label_255:
	call	restore_default_fscreatecon_or_die
.label_196:
	mov	dword ptr [rbp - 0x380], ecx
	mov	dword ptr [rbp - 0x374], edx
	mov	r15d, ecx
	not	r15d
	and	r15d, edx
	mov	esi, 0xc1
	xor	eax, eax
	mov	rdi, qword ptr [rbp - 0x318]
	mov	edx, r15d
	call	open_safer
	mov	ebx, eax
	call	__errno_location
	mov	qword ptr [rbp - 0x340], rax
	mov	r14d, dword ptr [rax]
	test	ebx, ebx
	jns	.label_262
	cmp	r14d, 0x11
	jne	.label_262
	mov	r14d, 0x11
	mov	rax, qword ptr [rbp - 0x358]
	cmp	byte ptr [rax + 0x18], 0
	jne	.label_270
	lea	rdx, [rbp - 0x1f0]
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x318]
	call	__lxstat
	mov	r14d, 0x11
	test	eax, eax
	jne	.label_262
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x1d8]
	cmp	eax, 0xa000
	jne	.label_262
	mov	rax, qword ptr [rbp - 0x358]
	cmp	byte ptr [rax + 0x30], 0
	je	.label_187
	mov	esi, 0x41
	xor	eax, eax
	mov	rdi, qword ptr [rbp - 0x318]
	mov	edx, r15d
	call	open_safer
	mov	ebx, eax
	mov	rax, qword ptr [rbp - 0x340]
	mov	r14d, dword ptr [rax]
.label_262:
	cmp	r14d, 0x15
	jne	.label_270
	test	ebx, ebx
	jns	.label_270
	mov	r14d, 0x15
	mov	rax, qword ptr [rbp - 0x318]
	cmp	byte ptr [rax], 0
	je	.label_270
	mov	r14, qword ptr [rbp - 0x318]
	mov	rdi, r14
	call	strlen
	movzx	eax, byte ptr [rax + r14 - 1]
	mov	r14d, 0x14
	cmp	eax, 0x2f
	je	.label_270
	mov	r14d, 0x15
.label_270:
	mov	al, r13b
	mov	qword ptr [rbp - 0x348], rax
.label_165:
	test	ebx, ebx
	js	.label_290
	lea	rdx, [rbp - 0xd0]
	mov	edi, 1
	mov	esi, ebx
	call	__fxstat
	test	eax, eax
	je	.label_295
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.61
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x318]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r13
	call	error
	xor	eax, eax
	mov	qword ptr [rbp - 0x368], rax
	jmp	.label_412
.label_290:
	mov	rax, qword ptr [rbp - 0x348]
	test	al, al
	mov	edx, dword ptr [rbp - 0x374]
	mov	ecx, dword ptr [rbp - 0x380]
	jne	.label_315
	cmp	r14d, 2
	jne	.label_315
	mov	r13b, 1
	mov	rax, qword ptr [rbp - 0x358]
	cmp	byte ptr [rax + 0x18], 0
	je	.label_196
.label_315:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.64
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x318]
	jmp	.label_323
.label_295:
	mov	dword ptr [rbp - 0x340], ebx
	xor	eax, eax
	mov	qword ptr [rbp - 0x368], rax
	cmp	byte ptr [rbp - 0x328], 0
	je	.label_247
	mov	rax, qword ptr [rbp - 0x358]
	cmp	dword ptr [rax + 0x38], 0
	je	.label_331
	xor	eax, eax
	mov	qword ptr [rbp - 0x368], rax
	mov	esi, 0x40049409
	xor	eax, eax
	mov	edi, dword ptr [rbp - 0x340]
	mov	edx, r12d
	call	ioctl
	test	eax, eax
	je	.label_247
	mov	rax, qword ptr [rbp - 0x358]
	cmp	dword ptr [rax + 0x38], 2
	jne	.label_331
	call	__errno_location
	mov	r13d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rbp - 0x328], rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x318]
	call	quotearg_n_style
	mov	r14, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x320]
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, qword ptr [rbp - 0x328]
	mov	rcx, r14
	mov	r8, rbx
	call	error
	xor	eax, eax
	mov	qword ptr [rbp - 0x368], rax
	jmp	.label_198
.label_331:
	call	getpagesize
	mov	ebx, eax
	mov	rax, qword ptr [rbp - 0x98]
	movabs	rsi, 0x2000000000000001
	cmp	rax, rsi
	mov	ecx, 0x200
	mov	edx, 0x200
	cmovb	rdx, rax
	test	rax, rax
	cmovle	rdx, rcx
	mov	qword ptr [rbp - 0x3c0], rdx
	cmp	rax, rsi
	mov	ecx, 0x20000
	cmovae	rdx, rcx
	test	rax, rax
	cmovle	rdx, rcx
	cmp	rax, 0x20000
	cmovl	rdx, rcx
	mov	qword ptr [rbp - 0x388], rdx
	xor	r13d, r13d
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 2
	mov	edi, r12d
	call	fdadvise
	mov	eax, 0xf000
	mov	r14d, dword ptr [rbp - 0x148]
	and	r14d, eax
	cmp	r14d, 0x8000
	jne	.label_383
	mov	rcx, qword ptr [rbp - 0x130]
	mov	rdx, rcx
	sar	rdx, 0x3f
	shr	rdx, 0x37
	add	rdx, rcx
	sar	rdx, 9
	cmp	qword ptr [rbp - 0x120], rdx
	setl	r13b
.label_383:
	movsxd	r15, ebx
	and	eax, dword ptr [rbp - 0xb8]
	cmp	eax, 0x8000
	jne	.label_400
	mov	rax, qword ptr [rbp - 0x358]
	mov	ecx, dword ptr [rax + 0xc]
	cmp	ecx, 2
	sete	al
	cmp	ecx, 3
	mov	cl, 1
	mov	dword ptr [rbp - 0x3b4], ecx
	je	.label_160
	and	al, r13b
	jne	.label_160
.label_400:
	mov	rax, qword ptr [rbp - 0x128]
	movabs	rcx, 0x2000000000000001
	mov	rdx, rcx
	cmp	rax, rdx
	mov	ecx, 0x200
	mov	edi, 0x200
	cmovb	rdi, rax
	test	rax, rax
	cmovle	rdi, rcx
	cmp	rax, rdx
	mov	ecx, 0x20000
	cmovae	rdi, rcx
	test	rax, rax
	cmovle	rdi, rcx
	movabs	rbx, 0x7fffffffffffffff
	sub	rbx, r15
	cmp	rax, 0x20000
	cmovl	rdi, rcx
	mov	rsi, qword ptr [rbp - 0x388]
	mov	rdx, rbx
	call	buffer_lcm
	mov	rcx, rax
	cmp	r14d, 0x8000
	jne	.label_373
	mov	rax, qword ptr [rbp - 0x130]
	mov	rdx, qword ptr [rbp - 0x388]
	cmp	rax, rdx
	lea	rax, [rax + 1]
	cmovb	rdx, rax
	mov	qword ptr [rbp - 0x388], rdx
.label_373:
	mov	rax, qword ptr [rbp - 0x388]
	lea	rsi, [rcx + rax - 1]
	xor	edx, edx
	mov	rax, rsi
	div	rcx
	mov	rax, rsi
	sub	rax, rdx
	cmp	rbx, rax
	cmovb	rax, rcx
	cmp	rsi, rdx
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x388], rax
	mov	dword ptr [rbp - 0x3b4], 0
.label_160:
	mov	rax, qword ptr [rbp - 0x388]
	lea	rdi, [rax + r15]
	call	xmalloc
	mov	qword ptr [rbp - 0x368], rax
	lea	rcx, [rax + r15 - 1]
	xor	edx, edx
	mov	rax, rcx
	div	r15
	sub	rcx, rdx
	mov	qword ptr [rbp - 0x3a0], rcx
	test	r13b, r13b
	je	.label_436
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rbp - 0x390], rax
	mov	eax, dword ptr [rbp - 0x3b4]
	test	al, al
	je	.label_353
	mov	rax, qword ptr [rbp - 0x358]
	mov	eax, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0x3a4], eax
	jmp	.label_356
.label_353:
	mov	dword ptr [rbp - 0x3a4], 1
.label_356:
	lea	rsi, [rbp - 0x1f0]
	mov	edi, r12d
	call	extent_scan_init
	xor	eax, eax
	mov	qword ptr [rbp - 0x398], rax
	cmp	dword ptr [rbp - 0x3a4], 3
	mov	eax, 0
	cmove	rax, qword ptr [rbp - 0x3c0]
	mov	qword ptr [rbp - 0x3b0], rax
	mov	al, 1
	mov	dword ptr [rbp - 0x3a8], eax
	xor	r15d, r15d
	xor	ebx, ebx
.label_234:
	lea	rdi, [rbp - 0x1f0]
	call	extent_scan_read
	test	al, al
	je	.label_439
	cmp	qword ptr [rbp - 0x1d8], 0
	mov	r14d, 0
	je	.label_463
.label_218:
	mov	rax, qword ptr [rbp - 0x1c8]
	lea	rcx, [r14 + r14*2]
	mov	r13, qword ptr [rax + rcx*8]
	mov	rax, qword ptr [rax + rcx*8 + 8]
	mov	qword ptr [rbp - 0x328], rax
	lea	rax, [rax + r13]
	cmp	rax, qword ptr [rbp - 0x390]
	jle	.label_469
	mov	rax, qword ptr [rbp - 0x390]
	cmp	r13, rax
	cmovg	r13, rax
	sub	rax, r13
	mov	qword ptr [rbp - 0x328], rax
.label_469:
	mov	r15, r13
	sub	r15, rbx
	sub	r15, qword ptr [rbp - 0x398]
	jne	.label_485
	mov	dword ptr [rbp - 0x3a8], 0
	jmp	.label_189
.label_485:
	xor	edx, edx
	mov	edi, r12d
	mov	rsi, r13
	call	lseek
	test	rax, rax
	js	.label_418
	cmp	dword ptr [rbp - 0x3a4], 1
	jne	.label_489
	cmp	qword ptr [word ptr [rip + write_zeros.zeros]],  0
	jne	.label_176
	mov	al,  byte ptr [byte ptr [rip + write_zeros.nz]]
	and	al, 1
	mov	edi, 0x20000
	mov	eax, 0x400
	cmovne	rdi, rax
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [word ptr [rip + write_zeros.zeros]],  rax
	test	rax, rax
	jne	.label_176
	mov	qword ptr [word ptr [rip + write_zeros.zeros]], OFFSET FLAT:write_zeros.fallback
	mov	byte ptr [byte ptr [rip + write_zeros.nz]],  1
.label_176:
	test	r15, r15
	je	.label_211
	mov	al,  byte ptr [byte ptr [rip + write_zeros.nz]]
	and	al, 1
	mov	ebx, 0x20000
	mov	eax, 0x400
	cmovne	rbx, rax
	cmp	rbx, r15
	cmovae	rbx, r15
	mov	rsi,  qword ptr [word ptr [rip + write_zeros.zeros]]
	mov	edi, dword ptr [rbp - 0x340]
	mov	rdx, rbx
	call	full_write
	cmp	rax, rbx
	mov	ecx, 0
	cmove	rcx, rbx
	sub	r15, rcx
	cmp	rax, rbx
	je	.label_176
	jmp	.label_245
.label_489:
	cmp	dword ptr [rbp - 0x3a4], 3
	sete	al
	movzx	edx, al
	mov	edi, dword ptr [rbp - 0x340]
	mov	rsi, qword ptr [rbp - 0x318]
	mov	rcx, r15
	call	create_hole
	mov	cl, 1
	mov	dword ptr [rbp - 0x3a8], ecx
	test	al, al
	jne	.label_189
	jmp	.label_214
.label_211:
	mov	dword ptr [rbp - 0x3a8], 0
.label_189:
	sub	rsp, 0x30
	lea	rax, [rbp - 0x31]
	mov	qword ptr [rsp + 0x20], rax
	lea	rax, [rbp - 0x30]
	mov	qword ptr [rsp + 0x18], rax
	mov	rax, qword ptr [rbp - 0x328]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rbp - 0x318]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rbp - 0x320]
	mov	qword ptr [rsp], rax
	mov	r9d, 1
	mov	edi, r12d
	mov	esi, dword ptr [rbp - 0x340]
	mov	rdx, qword ptr [rbp - 0x3a0]
	mov	rcx, qword ptr [rbp - 0x388]
	mov	r8, qword ptr [rbp - 0x3b0]
	call	sparse_copy
	add	rsp, 0x30
	test	al, al
	je	.label_214
	mov	rcx, qword ptr [rbp - 0x30]
	lea	r15, [rcx + r13]
	mov	al, byte ptr [rbp - 0x31]
	cmp	r15, qword ptr [rbp - 0x390]
	je	.label_450
	inc	r14d
	mov	r14d, r14d
	cmp	r14, qword ptr [rbp - 0x1d8]
	mov	rbx, r13
	mov	rdx, qword ptr [rbp - 0x328]
	mov	qword ptr [rbp - 0x398], rdx
	jb	.label_218
	test	rcx, rcx
	je	.label_377
	mov	dword ptr [rbp - 0x3a8], eax
.label_377:
	mov	rbx, r13
	jmp	.label_183
.label_450:
	test	rcx, rcx
	je	.label_227
	mov	dword ptr [rbp - 0x3a8], eax
.label_227:
	mov	byte ptr [rbp - 0x1cf], 1
	mov	rbx, r13
	mov	r15, qword ptr [rbp - 0x390]
.label_183:
	mov	rax, qword ptr [rbp - 0x328]
	mov	qword ptr [rbp - 0x398], rax
.label_463:
	mov	rdi, qword ptr [rbp - 0x1c8]
	call	free
	mov	qword ptr [rbp - 0x1c8], 0
	mov	qword ptr [rbp - 0x1d8], 0
	cmp	byte ptr [rbp - 0x1cf], 0
	je	.label_234
	jmp	.label_238
.label_245:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.70
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x318]
	call	quotearg_n_style_colon
.label_164:
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
.label_214:
	mov	rdi, qword ptr [rbp - 0x1c8]
	call	free
	mov	qword ptr [rbp - 0x1c8], 0
	mov	qword ptr [rbp - 0x1d8], 0
	xor	r15d, r15d
	jmp	.label_198
.label_187:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.63
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x318]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	al, r13b
	mov	qword ptr [rbp - 0x348], rax
	xor	ebx, ebx
	jmp	.label_190
.label_418:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.69
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x320]
	call	quotearg_style
	jmp	.label_164
.label_439:
	cmp	byte ptr [rbp - 0x1cf], 0
	je	.label_276
.label_238:
	mov	r14, qword ptr [rbp - 0x390]
	sub	r14, r15
	jg	.label_420
	mov	eax, dword ptr [rbp - 0x3a8]
	and	al, 1
	je	.label_239
.label_420:
	cmp	dword ptr [rbp - 0x3a4], 1
	jne	.label_281
	cmp	qword ptr [word ptr [rip + write_zeros.zeros]],  0
	jne	.label_230
	mov	al,  byte ptr [byte ptr [rip + write_zeros.nz]]
	and	al, 1
	mov	eax, 0x400
	mov	edi, 0x20000
	cmovne	rdi, rax
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [word ptr [rip + write_zeros.zeros]],  rax
	test	rax, rax
	jne	.label_230
	mov	qword ptr [word ptr [rip + write_zeros.zeros]], OFFSET FLAT:write_zeros.fallback
	mov	byte ptr [byte ptr [rip + write_zeros.nz]],  1
.label_230:
	test	r14, r14
	je	.label_239
	mov	al,  byte ptr [byte ptr [rip + write_zeros.nz]]
	and	al, 1
	mov	eax, 0x400
	mov	ebx, 0x20000
	cmovne	rbx, rax
	cmp	rbx, r14
	cmovae	rbx, r14
	mov	rsi,  qword ptr [word ptr [rip + write_zeros.zeros]]
	mov	edi, dword ptr [rbp - 0x340]
	mov	rdx, rbx
	call	full_write
	xor	ecx, ecx
	cmp	rax, rbx
	cmove	rcx, rbx
	sub	r14, rcx
	cmp	rax, rbx
	je	.label_230
	jmp	.label_337
.label_276:
	cmp	byte ptr [rbp - 0x1d0], 0
	je	.label_302
.label_436:
	xor	r8d, r8d
	mov	eax, dword ptr [rbp - 0x3b4]
	test	al, al
	cmovne	r8, qword ptr [rbp - 0x3c0]
	mov	rax, qword ptr [rbp - 0x358]
	cmp	dword ptr [rax + 0xc], 3
	sete	al
	sub	rsp, 0x30
	lea	rcx, [rbp - 0x30]
	mov	qword ptr [rsp + 0x20], rcx
	lea	rcx, [rbp - 0x1f0]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x318]
	mov	qword ptr [rsp + 8], rcx
	mov	rcx, qword ptr [rbp - 0x320]
	mov	qword ptr [rsp], rcx
	mov	qword ptr [rsp + 0x10], -1
	movzx	r9d, al
	mov	edi, r12d
	mov	esi, dword ptr [rbp - 0x340]
	mov	rdx, qword ptr [rbp - 0x3a0]
	mov	rcx, qword ptr [rbp - 0x388]
	call	sparse_copy
	add	rsp, 0x30
	test	al, al
	je	.label_283
	cmp	byte ptr [rbp - 0x30], 0
	je	.label_247
	mov	rsi, qword ptr [rbp - 0x1f0]
	mov	edi, dword ptr [rbp - 0x340]
	call	ftruncate
	test	eax, eax
	jns	.label_247
	jmp	.label_337
.label_281:
	mov	edi, dword ptr [rbp - 0x340]
	mov	rsi, qword ptr [rbp - 0x390]
	call	ftruncate
	test	eax, eax
	je	.label_239
.label_337:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.66
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x318]
	call	quotearg_style
.label_393:
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
.label_194:
	call	error
	jmp	.label_283
.label_239:
	cmp	dword ptr [rbp - 0x3a4], 3
	jne	.label_247
	sub	qword ptr [rbp - 0x390], r15
	jle	.label_247
	mov	esi, 3
	mov	edi, dword ptr [rbp - 0x340]
	mov	rdx, r15
	mov	rcx, qword ptr [rbp - 0x390]
	call	fallocate
	test	eax, eax
	jns	.label_247
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x26
	je	.label_247
	cmp	ebx, 0x5f
	jne	.label_365
.label_247:
	mov	rax, qword ptr [rbp - 0x358]
	cmp	byte ptr [rax + 0x1f], 0
	je	.label_363
	movups	xmm0, xmmword ptr [rbp - 0x238]
	movaps	xmmword ptr [rbp - 0x1f0], xmm0
	movups	xmm0, xmmword ptr [rbp - 0x228]
	movaps	xmmword ptr [rbp - 0x1e0], xmm0
	lea	rdx, [rbp - 0x1f0]
	mov	edi, dword ptr [rbp - 0x340]
	mov	rsi, qword ptr [rbp - 0x318]
	call	fdutimens
	test	eax, eax
	je	.label_363
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.48
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x318]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
	mov	rax, qword ptr [rbp - 0x358]
	cmp	byte ptr [rax + 0x24], 0
	jne	.label_283
.label_363:
	mov	rax, qword ptr [rbp - 0x358]
	cmp	byte ptr [rax + 0x1d], 0
	je	.label_394
	mov	eax, dword ptr [rbp - 0x264]
	cmp	eax, dword ptr [rbp - 0xb4]
	jne	.label_397
	mov	eax, dword ptr [rbp - 0x260]
	cmp	eax, dword ptr [rbp - 0xb0]
	je	.label_394
.label_397:
	mov	rax, qword ptr [rbp - 0x348]
	test	al, al
	setne	al
	movzx	r8d, al
	lea	rcx, [rbp - 0x280]
	lea	r9, [rbp - 0xd0]
	mov	rdi, qword ptr [rbp - 0x358]
	mov	rsi, qword ptr [rbp - 0x318]
	mov	edx, dword ptr [rbp - 0x340]
	call	set_owner
	cmp	eax, -1
	je	.label_283
	test	eax, eax
	jne	.label_394
	and	dword ptr [rbp - 0x330], 0xfffff1ff
.label_394:
	mov	rax, qword ptr [rbp - 0x358]
	cmp	byte ptr [rax + 0x27], 0
	je	.label_299
	cmp	byte ptr [rbp - 0xb8], 0
	js	.label_299
	call	geteuid
	test	eax, eax
	je	.label_299
	cmp	dword ptr [rbp - 0x340], 0
	js	.label_416
	mov	esi, 0x180
	mov	edi, dword ptr [rbp - 0x340]
	call	fchmod
	jmp	.label_360
.label_283:
	xor	r15d, r15d
	jmp	.label_198
.label_416:
	mov	esi, 0x180
	mov	rdi, qword ptr [rbp - 0x318]
	call	chmod
.label_360:
	test	eax, eax
	jne	.label_299
	mov	esi, dword ptr [rbp - 0x380]
	not	esi
	and	esi, dword ptr [rbp - 0x374]
	cmp	dword ptr [rbp - 0x340], 0
	js	.label_395
	mov	edi, dword ptr [rbp - 0x340]
	call	fchmod
	jmp	.label_299
.label_395:
	mov	rdi, qword ptr [rbp - 0x318]
	call	chmod
.label_299:
	mov	rax, qword ptr [rbp - 0x358]
	cmp	byte ptr [rax + 0x1e], 0
	jne	.label_429
	mov	rax, qword ptr [rbp - 0x358]
	cmp	byte ptr [rax + 0x18], 0
	je	.label_447
.label_429:
	mov	rdi, qword ptr [rbp - 0x320]
	mov	esi, r12d
	mov	rdx, qword ptr [rbp - 0x318]
	mov	ecx, dword ptr [rbp - 0x340]
	mov	r8d, dword ptr [rbp - 0x330]
	call	copy_acl
	mov	r15b, 1
	test	eax, eax
	jne	.label_438
	jmp	.label_198
.label_447:
	mov	rax, qword ptr [rbp - 0x358]
	cmp	byte ptr [rax + 0x2b], 0
	je	.label_233
	mov	rax, qword ptr [rbp - 0x358]
	mov	edx, dword ptr [rax + 0x10]
	jmp	.label_478
.label_233:
	mov	rax, qword ptr [rbp - 0x348]
	test	al, al
	je	.label_443
	mov	rax, qword ptr [rbp - 0x358]
	mov	al, byte ptr [rax + 0x20]
	test	al, al
	je	.label_443
	mov	edx,  dword ptr [dword ptr [rip + cached_umask.mask]]
	cmp	edx, -1
	jne	.label_232
	xor	edi, edi
	call	umask
	mov	dword ptr [dword ptr [rip + cached_umask.mask]],  eax
	mov	edi, eax
	call	umask
	mov	edx,  dword ptr [dword ptr [rip + cached_umask.mask]]
.label_232:
	not	edx
	and	edx, 0x1b6
.label_478:
	mov	rdi, qword ptr [rbp - 0x318]
	mov	ebx, dword ptr [rbp - 0x340]
	mov	esi, ebx
	call	set_acl
	test	eax, eax
	sete	r15b
	jmp	.label_412
.label_443:
	mov	r15b, 1
	cmp	dword ptr [rbp - 0x380], 0
	je	.label_198
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
	cmp	eax, -1
	jne	.label_462
	xor	edi, edi
	call	umask
	mov	dword ptr [dword ptr [rip + cached_umask.mask]],  eax
	mov	edi, eax
	call	umask
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
.label_462:
	not	eax
	test	dword ptr [rbp - 0x380], eax
	je	.label_198
	cmp	dword ptr [rbp - 0x340], 0
	js	.label_391
	mov	edi, dword ptr [rbp - 0x340]
	mov	esi, dword ptr [rbp - 0x374]
	call	fchmod
	jmp	.label_482
.label_302:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.68
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x320]
	call	quotearg_n_style_colon
	jmp	.label_393
.label_391:
	mov	rdi, qword ptr [rbp - 0x318]
	mov	esi, dword ptr [rbp - 0x374]
	call	chmod
.label_482:
	test	eax, eax
	je	.label_198
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x318]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
.label_438:
	mov	rax, qword ptr [rbp - 0x358]
	mov	r15b, byte ptr [rax + 0x24]
	xor	r15b, 1
.label_198:
	mov	ebx, dword ptr [rbp - 0x340]
.label_412:
	mov	edi, ebx
	call	close
	test	eax, eax
	jns	.label_169
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.67
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x318]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
.label_169:
	mov	rbx, qword ptr [rbp - 0x368]
	jmp	.label_190
.label_365:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.71
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x318]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r14
	jmp	.label_194
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4080d0

	.globl cp_options_default
	.type cp_options_default, @function
cp_options_default:
	push	rbx
	mov	rbx, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	call	geteuid
	test	eax, eax
	sete	byte ptr [rbx + 0x1b]
	sete	byte ptr [rbx + 0x1a]
	mov	dword ptr [rbx + 0x34], 0xffffffff
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408110
	.globl chown_failure_ok
	.type chown_failure_ok, @function
chown_failure_ok:

	push	rbx
	mov	rbx, rdi
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 0x16
	je	.label_494
	cmp	eax, 1
	jne	.label_495
.label_494:
	cmp	byte ptr [rbx + 0x1a], 0
	sete	al
	pop	rbx
	ret	
.label_495:
	xor	eax, eax
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408140
	.globl cached_umask
	.type cached_umask, @function
cached_umask:

	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
	cmp	eax, -1
	jne	.label_496
	push	rax
	xor	edi, edi
	call	umask
	mov	dword ptr [dword ptr [rip + cached_umask.mask]],  eax
	mov	edi, eax
	call	umask
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
	add	rsp, 8
.label_496:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408170

	.globl create_hard_link
	.type create_hard_link, @function
create_hard_link:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r12d, ecx
	mov	r15, rsi
	mov	rbx, rdi
	movzx	r8d, r8b
	shl	r8d, 0xa
	mov	dword ptr [rsp], 0xffffffff
	movzx	r9d, dl
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	rsi, rbx
	mov	rcx, r15
	call	force_linkat
	mov	ebp, eax
	test	ebp, ebp
	jle	.label_498
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r15
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, rbx
	call	error
	jmp	.label_497
.label_498:
	test	ebp, ebp
	mov	r14b, 1
	jns	.label_497
	xor	r12b, 1
	jne	.label_497
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
.label_497:
	mov	al, r14b
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408260

	.globl overwrite_ok
	.type overwrite_ok, @function
overwrite_ok:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	rbx, rdx
	mov	r14, rsi
	mov	r12, rdi
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	je	.label_499
	call	can_write_any_file
	test	al, al
	jne	.label_499
	mov	esi, 2
	mov	rdi, r14
	call	euidaccess
	test	eax, eax
	je	.label_499
	mov	edi, dword ptr [rbx + 0x18]
	lea	rsi, [rsp + 0x14]
	call	strmode
	mov	byte ptr [rsp + 0x1e], 0
	mov	r15,  qword ptr [word ptr [rip + stderr]]
	cmp	byte ptr [r12 + 0x18], 0
	jne	.label_500
	cmp	byte ptr [r12 + 0x15], 0
	jne	.label_500
	cmp	byte ptr [r12 + 0x16], 0
	je	.label_502
.label_500:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.54
.label_501:
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	r13,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	r8, rax
	mov	r9d, dword ptr [rbx + 0x18]
	and	r9d, 0xfff
	lea	rax, [rsp + 0x15]
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r15
	mov	rdx, r12
	mov	rcx, r13
	call	__fprintf_chk
	jmp	.label_503
.label_499:
	mov	r15,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.56
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	r13,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rbx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r15
	mov	rdx, r12
	mov	rcx, r13
	mov	r8, rbx
	call	__fprintf_chk
.label_503:
	call	yesno
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_502:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.55
	jmp	.label_501
	nop	
	.section	.text
	.align	16
	#Procedure 0x4083a0

	.globl emit_verbose
	.type emit_verbose, @function
emit_verbose:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdx
	mov	rbx, rsi
	mov	rax, rdi
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rax
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.57
	xor	eax, eax
	mov	rdx, r15
	call	__printf_chk
	test	r14, r14
	je	.label_505
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.58
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
.label_505:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_504
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_504:
	mov	esi, 0xa
	pop	rbx
	pop	r14
	pop	r15
	jmp	__overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408460

	.globl restore_default_fscreatecon_or_die
	.type restore_default_fscreatecon_or_die, @function
restore_default_fscreatecon_or_die:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.75
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4084a0

	.globl set_owner
	.type set_owner, @function
set_owner:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13d, edx
	mov	r14, rsi
	mov	r15, rdi
	mov	ebp, dword ptr [rcx + 0x1c]
	mov	r12d, dword ptr [rcx + 0x20]
	test	r8b, r8b
	jne	.label_510
	cmp	byte ptr [r15 + 0x1e], 0
	je	.label_517
	mov	edx, dword ptr [r9 + 0x18]
	add	rcx, 0x18
	jmp	.label_507
.label_517:
	mov	rax, qword ptr [r15 + 0x18]
	test	al, al
	jne	.label_520
	cmp	byte ptr [r15 + 0x2b], 0
	je	.label_510
.label_520:
	mov	edx, dword ptr [r9 + 0x18]
	test	al, al
	setne	bl
	movabs	rsi, 0xff000000000000
	test	rax, rsi
	jne	.label_506
	test	bl, bl
	jne	.label_506
	lea	rcx, [r15 + 0x10]
	jmp	.label_507
.label_506:
	add	rcx, 0x18
.label_507:
	mov	eax, dword ptr [rcx]
	mov	ecx, eax
	or	ecx, 0xe00
	xor	ecx, 0x1ff
	and	ecx, edx
	test	cx, 0xfff
	je	.label_510
	and	edx, eax
	and	edx, 0x1c0
	mov	rdi, r14
	mov	esi, r13d
	call	qset_acl
	test	eax, eax
	je	.label_510
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x16
	je	.label_511
	cmp	ebx, 1
	jne	.label_518
.label_511:
	cmp	byte ptr [r15 + 0x1b], 0
	je	.label_519
.label_518:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.76
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_519:
	movzx	eax, byte ptr [r15 + 0x24]
	neg	eax
	jmp	.label_509
.label_510:
	cmp	r13d, -1
	je	.label_512
	mov	edi, r13d
	mov	esi, ebp
	mov	edx, r12d
	call	fchown
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	je	.label_509
	call	__errno_location
	mov	rbp, rax
	mov	ebx, dword ptr [rbp]
	cmp	ebx, 0x16
	je	.label_516
	cmp	ebx, 1
	jne	.label_508
.label_516:
	mov	esi, 0xffffffff
	mov	edi, r13d
	mov	edx, r12d
	call	fchown
	jmp	.label_521
.label_512:
	mov	rdi, r14
	mov	esi, ebp
	mov	edx, r12d
	call	lchown
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	je	.label_509
	call	__errno_location
	mov	rbp, rax
	mov	ebx, dword ptr [rbp]
	cmp	ebx, 0x16
	je	.label_522
	cmp	ebx, 1
	jne	.label_508
.label_522:
	mov	esi, 0xffffffff
	mov	rdi, r14
	mov	edx, r12d
	call	lchown
.label_521:
	mov	dword ptr [rbp], ebx
.label_508:
	mov	ebx, dword ptr [rbp]
	cmp	ebx, 0x16
	je	.label_515
	cmp	ebx, 1
	jne	.label_513
.label_515:
	cmp	byte ptr [r15 + 0x1a], 0
	je	.label_514
.label_513:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.46
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	eax, 0xffffffff
	cmp	byte ptr [r15 + 0x24], 0
	jne	.label_509
.label_514:
	xor	eax, eax
.label_509:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408680

	.globl sparse_copy
	.type sparse_copy, @function
sparse_copy:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	dword ptr [rsp + 0x1c], r9d
	mov	qword ptr [rsp + 0x38], r8
	mov	r12, rcx
	mov	qword ptr [rsp + 0x50], rdx
	mov	dword ptr [rsp + 0x28], esi
	mov	dword ptr [rsp + 0x44], edi
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0xa8]
	mov	rdx, qword ptr [rsp + 0xa0]
	mov	r15, qword ptr [rsp + 0x90]
	mov	byte ptr [rax], 0
	mov	qword ptr [rcx], 0
	test	r8, r8
	mov	rax, r12
	cmovne	rax, r8
	mov	qword ptr [rsp + 0x10], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	r14d, r14d
	jmp	.label_523
.label_533:
	mov	qword ptr [rsp + 0x20], rdi
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], r10b
	mov	r15, qword ptr [rsp + 0x90]
	mov	r12, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x48]
	nop	
.label_523:
	mov	qword ptr [rsp + 0x48], rdx
	cmp	rdx, r12
	mov	rbp, r12
	cmovb	rbp, rdx
	nop	
.label_538:
	test	rdx, rdx
	je	.label_537
	mov	edi, dword ptr [rsp + 0x44]
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdx, rbp
	call	read
	mov	r13, rax
	test	r13, r13
	jns	.label_543
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 4
	mov	rdx, qword ptr [rsp + 0x48]
	je	.label_538
	jmp	.label_540
	nop	dword ptr [rax + rax]
.label_543:
	je	.label_537
	mov	qword ptr [rsp + 8], r12
	sub	qword ptr [rsp + 0x48], r13
	mov	rax, qword ptr [rsp + 0xa8]
	add	qword ptr [rax], r13
	mov	r10b, r14b
	and	r10b, 1
	mov	rax, qword ptr [rsp + 0x50]
	mov	r8, rax
	mov	rsi, rax
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 0x20]
	nop	word ptr [rax + rax]
.label_530:
	mov	r9b, r10b
	cmp	rbp, r13
	mov	r12, r13
	cmovb	r12, rbp
	cmp	qword ptr [rsp + 0x38], 0
	je	.label_531
	test	r12, r12
	je	.label_531
	not	rbp
	mov	rcx, r13
	not	rcx
	cmp	rbp, rcx
	cmova	rcx, rbp
	mov	rax, -2
	sub	rax, rcx
	mov	rcx, rsi
	mov	rbp, rcx
	nop	word ptr [rax + rax]
.label_545:
	mov	rdx, rax
	cmp	byte ptr [rsi], 0
	jne	.label_535
	mov	r14b, 1
	test	rdx, rdx
	je	.label_527
	inc	rsi
	lea	rax, [rdx - 1]
	test	dl, 0xf
	jne	.label_545
	mov	r14, rdi
	mov	rdi, rbp
	mov	rbx, r8
	mov	r15b, r9b
	call	memcmp
	mov	r9b, r15b
	mov	r8, rbx
	mov	rdi, r14
	test	eax, eax
	sete	r14b
	jmp	.label_527
.label_535:
	xor	r14d, r14d
.label_527:
	mov	rsi, rbp
.label_531:
	mov	r10b, r14b
	and	r10b, 1
	movzx	eax, r9b
	movzx	ecx, r10b
	sete	dl
	cmp	ecx, eax
	setne	bl
	test	rdi, rdi
	setne	al
	cmp	r13, r12
	sete	cl
	and	cl, dl
	test	r12, r12
	sete	r15b
	or	r15b, cl
	and	al, bl
	jne	.label_532
	test	r15b, r15b
	jne	.label_532
	movabs	rax, 0x7fffffffffffffff
	sub	rax, r12
	cmp	rdi, rax
	ja	.label_542
	add	rdi, r12
	mov	rbp, r12
	jmp	.label_546
	nop	dword ptr [rax]
.label_532:
	mov	bl, r10b
	mov	qword ptr [rsp + 0x30], rsi
	test	al, 1
	mov	byte ptr [rsp + 0x2f], al
	mov	rbp, r12
	mov	eax, 0
	cmovne	rbp, rax
	add	rdi, rbp
	test	r9b, r9b
	mov	rcx, rdi
	je	.label_524
	mov	eax, dword ptr [rsp + 0x1c]
	movzx	edx, al
	mov	edi, dword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x98]
	call	create_hole
	test	al, al
	jne	.label_536
	jmp	.label_526
.label_524:
	mov	edi, dword ptr [rsp + 0x28]
	mov	rsi, r8
	mov	rdx, rcx
	mov	qword ptr [rsp + 0x20], rcx
	call	full_write
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_541
.label_536:
	test	r15b, r15b
	mov	r10b, bl
	je	.label_544
	test	r12, r12
	cmove	r13, r12
	test	byte ptr [rsp + 0x2f], 1
	mov	eax, 0
	cmove	r12, rax
	mov	rdi, r12
	jmp	.label_528
	nop	word ptr [rax + rax]
.label_544:
	mov	rdi, r12
	mov	rbp, r12
.label_528:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	r8, rsi
.label_546:
	add	rsi, rbp
	sub	r13, rbp
	jne	.label_530
	jmp	.label_533
.label_537:
	test	r14b, 1
	je	.label_534
	mov	eax, dword ptr [rsp + 0x1c]
	movzx	edx, al
	mov	edi, dword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rcx, qword ptr [rsp + 0x20]
	call	create_hole
	test	al, al
	je	.label_539
.label_534:
	mov	r14b, 1
	jmp	.label_529
.label_540:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.72
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
.label_525:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_529
.label_539:
	xor	r14d, r14d
	jmp	.label_529
.label_542:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.74
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x90]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_529
.label_526:
	xor	r14d, r14d
.label_529:
	mov	al, r14b
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_541:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.73
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x98]
	jmp	.label_525
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408a20

	.globl create_hole
	.type create_hole, @function
create_hole:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbp, rcx
	mov	r12d, edx
	mov	r14, rsi
	mov	ebx, edi
	mov	edx, 1
	mov	rsi, rbp
	call	lseek
	test	rax, rax
	js	.label_547
	mov	r15b, 1
	test	r12b, r12b
	je	.label_548
	sub	rax, rbp
	mov	esi, 3
	mov	edi, ebx
	mov	rdx, rax
	mov	rcx, rbp
	call	fallocate
	test	eax, eax
	jns	.label_548
	call	__errno_location
	mov	ebp, dword ptr [rax]
	cmp	ebp, 0x26
	je	.label_548
	cmp	ebp, 0x5f
	je	.label_548
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.71
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	jmp	.label_549
.label_547:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.69
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
.label_549:
	call	error
.label_548:
	mov	al, r15b
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x408b00

	.globl forget_created
	.type forget_created, @function
forget_created:
	push	rbx
	sub	rsp, 0x20
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 0x18], 0
	mov	rdi,  qword ptr [word ptr [rip + src_to_dest]]
	lea	rsi, [rsp + 8]
	call	hash_delete
	mov	rbx, rax
	test	rbx, rbx
	je	.label_550
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, rbx
	call	free
.label_550:
	add	rsp, 0x20
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408b50

	.globl src_to_dest_free
	.type src_to_dest_free, @function
src_to_dest_free:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408b70

	.globl src_to_dest_lookup
	.type src_to_dest_lookup, @function
src_to_dest_lookup:
	sub	rsp, 0x18
	mov	qword ptr [rsp], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	rdi,  qword ptr [word ptr [rip + src_to_dest]]
	lea	rsi, [rsp]
	call	hash_lookup
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_551
	mov	rax, qword ptr [rcx + 0x10]
.label_551:
	add	rsp, 0x18
	ret	
	.section	.text
	.align	16
	#Procedure 0x408ba0

	.globl remember_copied
	.type remember_copied, @function
remember_copied:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	edi, 0x18
	call	xmalloc
	mov	rbx, rax
	mov	rdi, r12
	call	xstrdup
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx], r15
	mov	qword ptr [rbx + 8], r14
	mov	rdi,  qword ptr [word ptr [rip + src_to_dest]]
	mov	rsi, rbx
	call	hash_insert
	mov	r14, rax
	test	r14, r14
	je	.label_552
	xor	eax, eax
	cmp	r14, rbx
	je	.label_553
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, rbx
	call	free
	mov	rax, qword ptr [r14 + 0x10]
.label_553:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_552:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408c20

	.globl hash_init
	.type hash_init, @function
hash_init:
	push	rax
	mov	edi, 0x67
	xor	esi, esi
	mov	edx, OFFSET FLAT:src_to_dest_hash
	mov	ecx, OFFSET FLAT:src_to_dest_compare
	mov	r8d, OFFSET FLAT:src_to_dest_free
	call	hash_initialize
	mov	qword ptr [word ptr [rip + src_to_dest]],  rax
	test	rax, rax
	je	.label_554
	pop	rax
	ret	
.label_554:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x408c50

	.globl src_to_dest_hash
	.type src_to_dest_hash, @function
src_to_dest_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408c60

	.globl src_to_dest_compare
	.type src_to_dest_compare, @function
src_to_dest_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	jne	.label_555
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	sete	al
	ret	
.label_555:
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408c80
	.globl forget_all
	.type forget_all, @function
forget_all:

	mov	rdi,  qword ptr [word ptr [rip + src_to_dest]]
	jmp	hash_free
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408c90

	.globl extent_scan_init
	.type extent_scan_init, @function
extent_scan_init:
	mov	dword ptr [rsi], edi
	mov	qword ptr [rsi + 0x18], 0
	mov	qword ptr [rsi + 0x28], 0
	mov	qword ptr [rsi + 8], 0
	mov	byte ptr [rsi + 0x20], 0
	mov	byte ptr [rsi + 0x21], 0
	mov	dword ptr [rsi + 0x10], 1
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408cc0

	.globl extent_scan_read
	.type extent_scan_read, @function
extent_scan_read:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1008
	mov	r13, rdi
	mov	r15, qword ptr [r13 + 8]
	mov	r12, qword ptr [r13 + 0x28]
	movabs	rbp, 0x7fffffffffffffff
	xor	r14d, r14d
.label_558:
	xor	esi, esi
	mov	edx, 0x1000
	lea	rbx, [rsp + 8]
	mov	rdi, rbx
	call	memset
	mov	qword ptr [rsp + 8], r15
	mov	eax, dword ptr [r13 + 0x10]
	mov	dword ptr [rsp + 0x18], eax
	mov	dword ptr [rsp + 0x20], 0x48
	not	r15
	mov	qword ptr [rsp + 0x10], r15
	mov	edi, dword ptr [r13]
	mov	esi, 0xc020660b
	xor	eax, eax
	mov	rdx, rbx
	call	ioctl
	test	eax, eax
	js	.label_571
	mov	ecx, dword ptr [rsp + 0x1c]
	test	rcx, rcx
	je	.label_573
	mov	rax, qword ptr [r13 + 0x18]
	mov	rdx, rcx
	not	rdx
	cmp	rax, rdx
	ja	.label_557
	add	rax, rcx
	mov	qword ptr [r13 + 0x18], rax
	movabs	rcx, 0x555555555555556
	cmp	rax, rcx
	mov	r15, rbp
	jae	.label_565
	mov	rdi, qword ptr [r13 + 0x28]
	sub	r12, rdi
	shl	rax, 3
	lea	rsi, [rax + rax*2]
	call	xrealloc
	mov	qword ptr [r13 + 0x28], rax
	add	r12, rax
	mov	r8d, dword ptr [rsp + 0x1c]
	test	r8d, r8d
	je	.label_560
	xor	r11d, r11d
	nop	
.label_566:
	mov	ecx, r11d
	imul	rcx, rcx, 0x38
	mov	rdi, qword ptr [rsp + rcx + 0x28]
	mov	rsi, qword ptr [rsp + rcx + 0x38]
	mov	rbp, r15
	sub	rbp, rsi
	cmp	rdi, rbp
	ja	.label_567
	test	r14d, r14d
	je	.label_556
	mov	r9d, dword ptr [rsp + rcx + 0x50]
	mov	ebx, r9d
	and	ebx, 0xfffffffe
	mov	r10, qword ptr [r12 + 8]
	mov	rdx, qword ptr [r12]
	add	rdx, r10
	cmp	dword ptr [r12 + 0x10], ebx
	jne	.label_559
	cmp	rdx, rdi
	jne	.label_559
	add	r10, rsi
	mov	qword ptr [r12 + 8], r10
	mov	dword ptr [r12 + 0x10], r9d
	jmp	.label_568
	nop	word ptr [rax + rax]
.label_556:
	mov	rdx, qword ptr [r13 + 8]
	cmp	rdx, rdi
	ja	.label_574
	mov	r9d, dword ptr [rsp + rcx + 0x50]
	jmp	.label_562
.label_559:
	cmp	rdx, rdi
	jbe	.label_562
.label_574:
	mov	rbp, rdx
	sub	rbp, rdi
	sub	rsi, rbp
	ja	.label_570
	lea	rdi, [rsp + rcx + 0x28]
	lea	rcx, [rsp + rcx + 0x38]
	mov	qword ptr [rdi], rdx
	mov	qword ptr [rcx], rsi
	dec	r11d
	jmp	.label_568
	nop	dword ptr [rax]
.label_562:
	mov	ecx, r14d
	lea	rcx, [rcx + rcx*2]
	lea	r12, [rax + rcx*8]
	mov	qword ptr [rax + rcx*8], rdi
	mov	qword ptr [rax + rcx*8 + 8], rsi
	mov	dword ptr [rax + rcx*8 + 0x10], r9d
	inc	r14d
.label_568:
	inc	r11d
	cmp	r11d, r8d
	jb	.label_566
.label_560:
	test	byte ptr [r12 + 0x10], 1
	je	.label_572
	mov	byte ptr [r13 + 0x21], 1
.label_572:
	mov	cl, byte ptr [r13 + 0x21]
	cmp	r14d, 0x49
	jb	.label_576
	test	cl, cl
	jne	.label_569
	dec	r14d
	lea	rcx, [r14 + r14*2]
	lea	r12, [rax + rcx*8 - 0x18]
	mov	qword ptr [r13 + 0x18], r14
	jmp	.label_564
	nop	word ptr cs:[rax + rax]
.label_576:
	mov	eax, r14d
	mov	qword ptr [r13 + 0x18], rax
	test	cl, cl
	jne	.label_575
.label_564:
	mov	rbp, r15
	mov	r15, qword ptr [r12 + 8]
	add	r15, qword ptr [r12]
	mov	qword ptr [r13 + 8], r15
	mov	al, 1
	cmp	r14d, 0x48
	jb	.label_558
	jmp	.label_561
.label_570:
	cmp	qword ptr [r13 + 8], 0
	je	.label_563
	xor	eax, eax
	jmp	.label_561
.label_571:
	cmp	qword ptr [r13 + 8], 0
	je	.label_563
	xor	eax, eax
	jmp	.label_561
.label_563:
	mov	byte ptr [r13 + 0x20], 1
	xor	eax, eax
	jmp	.label_561
.label_573:
	mov	byte ptr [r13 + 0x21], 1
	cmp	qword ptr [r13 + 8], 0
	setne	al
	jmp	.label_561
.label_569:
	mov	eax, r14d
	mov	qword ptr [r13 + 0x18], rax
	mov	al, 1
	jmp	.label_561
.label_575:
	mov	al, 1
.label_561:
	add	rsp, 0x1008
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_567:
	mov	edi, OFFSET FLAT:.str.2_2
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 0x8d
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.extent_scan_read
	call	__assert_fail
.label_557:
	mov	edi, OFFSET FLAT:.str_5
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 0x7e
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.extent_scan_read
	call	__assert_fail
.label_565:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408f50

	.globl force_linkat
	.type force_linkat, @function
force_linkat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x128
	mov	ebp, r9d
	mov	r15d, r8d
	mov	r12, rcx
	mov	ebx, edx
	mov	r13d, edi
	mov	r14d, dword ptr [rsp + 0x160]
	test	r14d, r14d
	jns	.label_583
	mov	edi, r13d
	mov	qword ptr [rsp], rsi
	mov	edx, ebx
	mov	rcx, r12
	mov	r8d, r15d
	call	linkat
	xor	r14d, r14d
	test	eax, eax
	je	.label_577
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rsi, qword ptr [rsp]
.label_583:
	cmp	r14d, 0x11
	jne	.label_577
	mov	qword ptr [rsp], rsi
	xor	bpl, 1
	jne	.label_577
	mov	rdi, r12
	call	last_component
	mov	rbp, rax
	sub	rbp, r12
	lea	rdi, [rbp + 9]
	mov	r14d, r15d
	cmp	rdi, 0x101
	jae	.label_579
	lea	r15, [rsp + 0x20]
	jmp	.label_582
.label_579:
	call	malloc
	mov	r15, rax
	test	r15, r15
	je	.label_578
.label_582:
	mov	rcx, -1
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbp
	call	__mempcpy_chk
	movabs	rcx, 0x5858585858587543
	mov	qword ptr [rax], rcx
	mov	byte ptr [rax + 8], 0
	test	r15, r15
	je	.label_578
	mov	dword ptr [rsp + 8], r13d
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rsp + 0x18], ebx
	mov	dword ptr [rsp + 0x1c], r14d
	lea	rdx, [rsp + 8]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:try_link
	mov	r8d, 6
	mov	rdi, r15
	call	try_tempname_len
	test	eax, eax
	je	.label_580
	call	__errno_location
	mov	r14d, dword ptr [rax]
	jmp	.label_581
.label_578:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	jmp	.label_577
.label_580:
	mov	edi, ebx
	mov	rsi, r15
	mov	edx, ebx
	mov	rcx, r12
	call	renameat
	mov	r14d, 0xffffffff
	test	eax, eax
	je	.label_584
	call	__errno_location
	mov	r14d, dword ptr [rax]
.label_584:
	xor	edx, edx
	mov	edi, ebx
	mov	rsi, r15
	call	unlinkat
.label_581:
	lea	rax, [rsp + 0x20]
	cmp	r15, rax
	je	.label_577
	mov	rdi, r15
	call	free
.label_577:
	mov	eax, r14d
	add	rsp, 0x128
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
	#Procedure 0x4090c0

	.globl try_link
	.type try_link, @function
try_link:
	mov	rax, rdi
	mov	edi, dword ptr [rsi]
	mov	rcx, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	mov	r8, rdx
	shr	r8, 0x20
	mov	rsi, rcx
	mov	rcx, rax
	jmp	linkat
	nop	
	.section	.text
	.align	16
	#Procedure 0x4090e0

	.globl force_symlinkat
	.type force_symlinkat, @function
force_symlinkat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x118
	mov	ebp, r8d
	mov	ebx, ecx
	mov	r13, rdx
	mov	r14d, esi
	mov	r15, rdi
	test	ebp, ebp
	jns	.label_589
	mov	rdi, r15
	mov	esi, r14d
	mov	rdx, r13
	call	symlinkat
	xor	ebp, ebp
	test	eax, eax
	je	.label_585
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_589:
	cmp	ebp, 0x11
	jne	.label_585
	xor	bl, 1
	jne	.label_585
	mov	rdi, r13
	call	last_component
	mov	rbx, rax
	sub	rbx, r13
	lea	rdi, [rbx + 9]
	cmp	rdi, 0x101
	jae	.label_591
	lea	r12, [rsp + 0x10]
	jmp	.label_586
.label_591:
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_588
.label_586:
	mov	rcx, -1
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	movabs	rcx, 0x5858585858587543
	mov	qword ptr [rax], rcx
	mov	byte ptr [rax + 8], 0
	test	r12, r12
	je	.label_588
	mov	qword ptr [rsp], r15
	mov	dword ptr [rsp + 8], r14d
	lea	rdx, [rsp]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:try_symlink
	mov	r8d, 6
	mov	rdi, r12
	call	try_tempname_len
	test	eax, eax
	je	.label_590
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_587
.label_588:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_585
.label_590:
	mov	edi, r14d
	mov	rsi, r12
	mov	edx, r14d
	mov	rcx, r13
	call	renameat
	mov	ebp, 0xffffffff
	test	eax, eax
	je	.label_587
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edx, edx
	mov	edi, r14d
	mov	rsi, r12
	call	unlinkat
.label_587:
	lea	rax, [rsp + 0x10]
	cmp	r12, rax
	je	.label_585
	mov	rdi, r12
	call	free
.label_585:
	mov	eax, ebp
	add	rsp, 0x118
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
	#Procedure 0x409220

	.globl try_symlink
	.type try_symlink, @function
try_symlink:
	mov	rax, rdi
	mov	rdi, qword ptr [rsi]
	mov	esi, dword ptr [rsi + 8]
	mov	rdx, rax
	jmp	symlinkat
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x409240

	.globl copy_acl
	.type copy_acl, @function
copy_acl:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	call	qcopy_acl
	mov	ebp, eax
	cmp	ebp, -1
	je	.label_593
	cmp	ebp, -2
	jne	.label_594
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_6
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_592
.label_593:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbx
.label_592:
	call	error
.label_594:
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
	#Procedure 0x4092d0

	.globl set_acl
	.type set_acl, @function
set_acl:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	call	qset_acl
	mov	ebx, eax
	test	ebx, ebx
	je	.label_595
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_4
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	call	error
.label_595:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409330

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
	je	.label_600
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	movabs	r15, 0x7fffffffffffffff
	nop	word ptr cs:[rax + rax]
.label_597:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbx
	mov	rdx, r12
	call	readlink
	mov	r13, rax
	test	r13, r13
	jns	.label_596
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	jne	.label_603
.label_596:
	cmp	r13, r12
	jb	.label_604
	mov	rdi, rbx
	call	free
	mov	rax, r12
	shr	rax, 0x3e
	jne	.label_598
	add	r12, r12
	jmp	.label_601
	nop	word ptr cs:[rax + rax]
.label_598:
	cmp	r12, r15
	mov	r12, r15
	jae	.label_602
.label_601:
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_597
	jmp	.label_600
.label_604:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp + 8], rbx
	jmp	.label_600
.label_602:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_599
.label_603:
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
.label_599:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
.label_600:
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
	#Procedure 0x409440

	.globl set_simple_backup_suffix
	.type set_simple_backup_suffix, @function
set_simple_backup_suffix:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	jne	.label_605
	mov	edi, OFFSET FLAT:.str_7
	call	getenv
	mov	rbx, rax
	mov	eax, OFFSET FLAT:.str.1_4
	test	rbx, rbx
	je	.label_606
.label_605:
	mov	eax, OFFSET FLAT:.str.1_4
	cmp	byte ptr [rbx], 0
	je	.label_606
	mov	rdi, rbx
	call	last_component
	cmp	rbx, rax
	mov	eax, OFFSET FLAT:.str.1_4
	cmove	rax, rbx
.label_606:
	mov	qword ptr [word ptr [rip + simple_backup_suffix]],  rax
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409490

	.globl backupfile_internal
	.type backupfile_internal, @function
backupfile_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	dword ptr [rsp + 0x54], ecx
	mov	r15d, edx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0x60], rbp
	mov	dword ptr [rsp + 0xc], edi
	mov	rdi, rbp
	call	last_component
	mov	rbx, rax
	sub	rbx, rbp
	mov	qword ptr [rsp + 0x78], rbx
	mov	rdi, rax
	call	strlen
	mov	rbp, rax
	add	rbp, rbx
	mov	rdi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	test	rdi, rdi
	jne	.label_637
	mov	edi, OFFSET FLAT:.str_7
	call	getenv
	mov	rbx, rax
	mov	edi, OFFSET FLAT:.str.1_4
	test	rbx, rbx
	je	.label_640
	mov	edi, OFFSET FLAT:.str.1_4
	cmp	byte ptr [rbx], 0
	je	.label_640
	mov	rdi, rbx
	call	last_component
	cmp	rbx, rax
	mov	edi, OFFSET FLAT:.str.1_4
	cmove	rdi, rbx
.label_640:
	mov	qword ptr [word ptr [rip + simple_backup_suffix]],  rdi
.label_637:
	call	strlen
	inc	rax
	mov	qword ptr [rsp + 0x38], rax
	cmp	rax, 9
	mov	ecx, 9
	cmovae	rcx, rax
	lea	rdi, [rbp + rcx + 1]
	mov	qword ptr [rsp + 0x20], rdi
	call	malloc
	xor	r13d, r13d
	test	rax, rax
	je	.label_624
	lea	rcx, [rbp + 1]
	mov	qword ptr [rsp + 0x48], rcx
	mov	dword ptr [rsp + 0x84], 0xffffffff
	lea	rcx, [rbp + 4]
	mov	qword ptr [rsp], rcx
	mov	qword ptr [rsp + 0x40], rbp
	xor	r12d, r12d
	mov	r13, rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_618:
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rdx, qword ptr [rsp + 0x48]
	call	memcpy
	cmp	r15d, 1
	jne	.label_631
	mov	rax, qword ptr [rsp + 0x40]
	lea	rdi, [r13 + rax]
	mov	r14, r13
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdx, qword ptr [rsp + 0x38]
	call	memcpy
	mov	dword ptr [rsp + 0x6c], 1
	jmp	.label_634
	nop	word ptr cs:[rax + rax]
.label_631:
	mov	rax, qword ptr [rsp + 0x78]
	lea	rbx, [r13 + rax]
	mov	rdi, rbx
	call	base_len
	mov	rbp, rax
	test	r12, r12
	je	.label_639
	mov	dword ptr [rsp + 0x6c], r15d
	mov	rdi, r12
	call	rewinddir
	mov	r15, rbp
	jmp	.label_641
.label_639:
	mov	r14w, word ptr [rbx]
	mov	word ptr [rbx], 0x2e
	xor	edx, edx
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, r13
	lea	rcx, [rsp + 0x84]
	call	opendirat
	mov	r12, rax
	test	r12, r12
	je	.label_610
	mov	dword ptr [rsp + 0x6c], r15d
	mov	word ptr [rbx], r14w
	mov	r15, rbp
	mov	byte ptr [rbx + r15 + 4], 0
	mov	dword ptr [rbx + r15], 0x7e317e2e
.label_641:
	mov	rdi, r12
	call	readdir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_617
	mov	r14, r13
	lea	r13, [r15 + 4]
	lea	rax, [r15 + 2]
	mov	qword ptr [rsp + 0x70], rax
	mov	eax, 2
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x18], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x28], rax
	nop	word ptr cs:[rax + rax]
.label_622:
	lea	rbp, [rbx + 0x13]
	mov	rdi, rbp
	call	strlen
	cmp	rax, r13
	jb	.label_620
	mov	rax, qword ptr [rsp + 0x78]
	lea	rdi, [r14 + rax]
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp + 0x70]
	call	memcmp
	test	eax, eax
	jne	.label_620
	mov	al, byte ptr [rbx + r15 + 0x15]
	mov	cl, al
	add	cl, 0xcf
	movzx	ecx, cl
	cmp	ecx, 8
	ja	.label_620
	lea	rcx, [rbx + r15 + 0x13]
	movzx	eax, al
	cmp	eax, 0x39
	mov	rdx, r15
	sete	r15b
	movsx	eax, byte ptr [rcx + 3]
	mov	ecx, eax
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_613
	lea	rcx, [rbx + rdx + 0x17]
	mov	qword ptr [rsp + 0x58], rdx
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_608:
	mov	rbp, rdx
	movzx	eax, al
	cmp	eax, 0x39
	sete	al
	and	r15b, al
	movsx	eax, byte ptr [rcx + rbp]
	mov	esi, eax
	add	esi, -0x30
	lea	rdx, [rbp + 1]
	cmp	esi, 0xa
	jb	.label_608
	add	rbp, 2
	jmp	.label_627
.label_613:
	mov	qword ptr [rsp + 0x58], rdx
	mov	ebp, 1
.label_627:
	movzx	eax, al
	cmp	eax, 0x7e
	jne	.label_615
	mov	rax, qword ptr [rsp + 0x58]
	lea	rbx, [rbx + rax + 0x15]
	cmp	byte ptr [rbp + rbx + 1], 0
	je	.label_635
	mov	r15, qword ptr [rsp + 0x58]
	jmp	.label_620
.label_615:
	mov	r15, qword ptr [rsp + 0x58]
	jmp	.label_620
.label_635:
	cmp	qword ptr [rsp + 0x28], rbp
	jb	.label_623
	jne	.label_626
	mov	rax, qword ptr [rsp + 0x40]
	lea	rdi, [r14 + rax + 2]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x28]
	call	memcmp
	test	eax, eax
	jle	.label_623
	mov	r15, qword ptr [rsp + 0x58]
	jmp	.label_620
.label_623:
	movzx	edx, r15b
	lea	rcx, [rdx + rbp]
	mov	qword ptr [rsp + 0x28], rcx
	mov	rax, qword ptr [rsp]
	lea	r15, [rax + rcx]
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, r15
	jae	.label_632
	mov	rax, r15
	shr	rax, 0x3e
	sete	cl
	shl	r15, cl
	mov	rdi, r14
	mov	rsi, r15
	mov	qword ptr [rsp + 0x30], rdx
	call	realloc
	mov	rdx, qword ptr [rsp + 0x30]
	test	rax, rax
	mov	qword ptr [rsp + 0x18], r15
	jne	.label_638
	jmp	.label_629
.label_632:
	mov	rax, r14
.label_638:
	mov	qword ptr [rsp + 0x30], rdx
	mov	rcx, qword ptr [rsp + 0x40]
	lea	rsi, [rax + rcx]
	mov	byte ptr [rax + rcx], 0x2e
	lea	r15, [rsi + rdx]
	mov	word ptr [rax + rcx + 1], 0x307e
	mov	r14, rax
	lea	rdi, [rdx + rsi + 2]
	lea	rdx, [rbp + 2]
	mov	rsi, rbx
	call	memcpy
	lea	rax, [rbp + r15 + 1]
	movzx	ecx, byte ptr [rbp + r15 + 1]
	jmp	.label_612
	nop	word ptr cs:[rax + rax]
.label_636:
	mov	byte ptr [rax], 0x30
	movzx	ecx, byte ptr [rax - 1]
	dec	rax
.label_612:
	cmp	ecx, 0x39
	je	.label_636
	inc	cl
	mov	byte ptr [rax], cl
	mov	r15, qword ptr [rsp + 0x58]
	jmp	.label_620
.label_626:
	mov	r15, qword ptr [rsp + 0x58]
	nop	
.label_620:
	mov	rdi, r12
	call	readdir
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_622
	mov	r13, r14
	mov	rcx, qword ptr [rsp + 0x30]
	jmp	.label_625
.label_610:
	mov	dword ptr [rsp + 0x6c], r15d
	call	__errno_location
	mov	ecx, 3
	cmp	dword ptr [rax], 0xc
	je	.label_630
	mov	ecx, 2
.label_630:
	mov	word ptr [rbx], r14w
	mov	byte ptr [rbx + rbp + 4], 0
	mov	dword ptr [rbx + rbp], 0x7e317e2e
	xor	r12d, r12d
.label_625:
	cmp	ecx, 1
	je	.label_633
	cmp	ecx, 2
	je	.label_617
	mov	r14, r13
	cmp	ecx, 3
	jne	.label_634
	jmp	.label_629
	nop	word ptr cs:[rax + rax]
.label_617:
	mov	eax, dword ptr [rsp + 0x6c]
	cmp	eax, 2
	jne	.label_633
	mov	rax, qword ptr [rsp + 0x40]
	lea	rdi, [r13 + rax]
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdx, qword ptr [rsp + 0x38]
	call	memcpy
	mov	dword ptr [rsp + 0x6c], 1
.label_633:
	mov	r15d, dword ptr [rsp + 0x84]
	mov	rdi, r13
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	base_len
	mov	rbp, rax
	cmp	rbp, 0xf
	jb	.label_609
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	jne	.label_611
	mov	r14, r13
	test	r15d, r15d
	js	.label_614
	call	__errno_location
	mov	r13, rax
	mov	dword ptr [r13], 0
	mov	esi, 3
	mov	edi, r15d
	call	fpathconf
	cmp	dword ptr [r13], 1
	sbb	rax, 0
	jmp	.label_619
.label_609:
	mov	eax, 0xff
	jmp	.label_611
.label_614:
	mov	r15w, word ptr [rbx]
	mov	word ptr [rbx], 0x2e
	call	__errno_location
	mov	r13, rax
	mov	dword ptr [r13], 0
	mov	esi, 3
	mov	rdi, r14
	call	pathconf
	cmp	dword ptr [r13], 1
	sbb	rax, 0
	mov	word ptr [rbx], r15w
.label_619:
	cmp	rax, -1
	mov	rdx, -1
	mov	ecx, 0xe
	cmovl	rdx, rcx
	test	rax, rax
	cmovns	rdx, rax
	mov	qword ptr [rsp + 0x10], rdx
	mov	rax, rdx
	mov	r13, r14
	nop	
.label_611:
	cmp	rax, rbp
	jae	.label_628
	mov	rcx, qword ptr [rsp + 0x40]
	lea	rcx, [r13 + rcx]
	mov	r14, r13
	sub	rcx, rbx
	cmp	rax, rcx
	lea	rax, [rax - 1]
	cmova	rax, rcx
	mov	word ptr [rbx + rax], 0x7e
	jmp	.label_634
.label_628:
	mov	r14, r13
	nop	dword ptr [rax + rax]
.label_634:
	mov	eax, dword ptr [rsp + 0x54]
	test	al, al
	mov	r15d, dword ptr [rsp + 0x6c]
	mov	r13, r14
	je	.label_616
	mov	edx, dword ptr [rsp + 0x84]
	test	edx, edx
	jns	.label_607
	mov	dword ptr [rsp + 0x84], 0xffffff9c
	mov	edx, 0xffffff9c
	xor	eax, eax
	mov	qword ptr [rsp + 0x78], rax
.label_607:
	cmp	r15d, 1
	setne	al
	movzx	r8d, al
	mov	rax, qword ptr [rsp + 0x78]
	lea	rcx, [r13 + rax]
	mov	edi, 0xffffff9c
	mov	rsi, qword ptr [rsp + 0x60]
	call	renameatu
	test	eax, eax
	je	.label_616
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	cmp	ebp, 0x11
	je	.label_618
	test	r12, r12
	je	.label_621
	mov	rdi, r12
	call	closedir
.label_621:
	mov	rdi, r13
	call	free
	mov	dword ptr [rbx], ebp
	xor	r13d, r13d
	jmp	.label_624
.label_616:
	test	r12, r12
	je	.label_624
	mov	rdi, r12
	call	closedir
	jmp	.label_624
.label_629:
	mov	rdi, r14
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r13d, r13d
.label_624:
	mov	rax, r13
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409ac0

	.globl backup_file_rename
	.type backup_file_rename, @function
backup_file_rename:
	mov	ecx, 1
	jmp	backupfile_internal
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409ad0
	.globl find_backup_file_name
	.type find_backup_file_name, @function
find_backup_file_name:

	push	rax
	xor	ecx, ecx
	call	backupfile_internal
	test	rax, rax
	je	.label_642
	pop	rcx
	ret	
.label_642:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409af0
	.globl get_version
	.type get_version, @function
get_version:

	mov	eax, 2
	test	rsi, rsi
	je	.label_643
	cmp	byte ptr [rsi], 0
	je	.label_643
	push	rax
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + backup_types]]
	add	rsp, 8
.label_643:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409b30

	.globl xget_version
	.type xget_version, @function
xget_version:
	push	rax
	test	rsi, rsi
	je	.label_644
	cmp	byte ptr [rsi], 0
	je	.label_644
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	jmp	.label_646
.label_644:
	mov	edi, OFFSET FLAT:.str.1_5
	call	getenv
	mov	ecx, 2
	test	rax, rax
	je	.label_645
	cmp	byte ptr [rax], 0
	je	.label_645
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str_8
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	mov	rsi, rax
.label_646:
	call	__xargmatch_internal
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + backup_types]]
.label_645:
	mov	eax, ecx
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409ba0

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
	#Procedure 0x409c10
	.globl close_stdin_set_file_name
	.type close_stdin_set_file_name, @function
close_stdin_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409c20

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
	je	.label_652
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
	test	eax, eax
	jne	.label_652
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fflush
	test	eax, eax
	setne	bpl
.label_652:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	close_stream
	test	bpl, bpl
	jne	.label_653
	test	eax, eax
	jne	.label_653
	pop	rbx
	pop	r14
	pop	rbp
	jmp	close_stdout
.label_653:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_9
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_654
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_6
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	jmp	.label_651
.label_654:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_6
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
.label_651:
	call	close_stdout
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409cf0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name_0]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d00
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d10

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_658
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_657
	cmp	dword ptr [rbp], 0x20
	jne	.label_657
.label_658:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_656
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_657:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_10
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name_0]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_655
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_6
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_656:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_655:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_6
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
	#Procedure 0x409dd0

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rax
	call	mdir_name
	test	rax, rax
	je	.label_659
	pop	rcx
	ret	
.label_659:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409df0
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
.label_660:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_661
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_660
.label_661:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409e30

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
.label_664:
	mov	rbx, rax
	cmp	r15, rbx
	jae	.label_662
	lea	rax, [rbx - 1]
	movzx	ecx, byte ptr [r14 + rbx - 1]
	cmp	ecx, 0x2f
	je	.label_664
.label_662:
	test	rbx, rbx
	sete	al
	movzx	eax, al
	lea	rdi, [rbx + rax + 1]
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_665
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	test	rbx, rbx
	jne	.label_663
	mov	byte ptr [r15], 0x2e
	mov	ebx, 1
.label_663:
	mov	byte ptr [r15 + rbx], 0
	mov	rax, r15
.label_665:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409eb0

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_666:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	edx, 0x2f
	je	.label_666
	xor	r8d, r8d
	mov	rax, rdi
	jmp	.label_670
	nop	word ptr cs:[rax + rax]
.label_667:
	mov	dl, byte ptr [rax + 1]
	inc	rax
	mov	r8b, cl
.label_670:
	mov	cl, 1
	movzx	esi, dl
	cmp	esi, 0x2f
	je	.label_667
	test	dl, dl
	je	.label_668
	mov	cl, r8b
	and	cl, 1
	je	.label_669
	xor	r8d, r8d
.label_669:
	test	cl, cl
	cmovne	rdi, rax
	mov	cl, r8b
	jmp	.label_667
.label_668:
	mov	rax, rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409f20

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_671:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_672
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_671
.label_672:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409f50

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
	#Procedure 0x409f80

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409f90
	.globl fadvise
	.type fadvise, @function
fadvise:

	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_674
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_674:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409fb0

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xc8
	test	al, al
	je	.label_675
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_675:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_678
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_677
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_676
.label_677:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_676:
	mov	edx, dword ptr [rax]
.label_678:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a090

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
	je	.label_679
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
	je	.label_680
	cmp	rax, rbx
	je	.label_679
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	triple_free
.label_679:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_680:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a110

	.globl seen_file
	.type seen_file, @function
seen_file:
	test	rdi, rdi
	je	.label_681
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
.label_681:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a150

	.globl file_type
	.type file_type, @function
file_type:
	mov	eax, 0xf000
	and	eax, dword ptr [rdi + 0x18]
	cmp	eax, 0x5fff
	jle	.label_684
	cmp	eax, 0x9fff
	jg	.label_689
	cmp	eax, 0x6000
	je	.label_683
	cmp	eax, 0x8000
	jne	.label_682
	cmp	qword ptr [rdi + 0x30], 0
	je	.label_686
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_7
	mov	edx, 5
	jmp	dcgettext
.label_684:
	cmp	eax, 0x1000
	je	.label_685
	cmp	eax, 0x2000
	je	.label_688
	cmp	eax, 0x4000
	jne	.label_682
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_3
	mov	edx, 5
	jmp	dcgettext
.label_689:
	cmp	eax, 0xa000
	je	.label_687
	cmp	eax, 0xc000
	jne	.label_682
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_1
	mov	edx, 5
	jmp	dcgettext
.label_683:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	jmp	dcgettext
.label_685:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
	mov	edx, 5
	jmp	dcgettext
.label_688:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
	mov	edx, 5
	jmp	dcgettext
.label_687:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_2
	mov	edx, 5
	jmp	dcgettext
.label_682:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_1
	mov	edx, 5
	jmp	dcgettext
.label_686:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_11
	mov	edx, 5
	jmp	dcgettext
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a240

	.globl strmode
	.type strmode, @function
strmode:
	mov	eax, edi
	mov	ecx, eax
	and	ecx, 0xf000
	cmp	ecx, 0x5fff
	jle	.label_690
	cmp	ecx, 0x9fff
	jg	.label_702
	cmp	ecx, 0x6000
	je	.label_697
	mov	dl, 0x2d
	cmp	ecx, 0x8000
	je	.label_693
	jmp	.label_696
.label_690:
	cmp	ecx, 0x1000
	je	.label_703
	cmp	ecx, 0x2000
	je	.label_706
	cmp	ecx, 0x4000
	jne	.label_696
	mov	dl, 0x64
	jmp	.label_693
.label_702:
	cmp	ecx, 0xa000
	je	.label_695
	cmp	ecx, 0xc000
	jne	.label_696
	mov	dl, 0x73
	jmp	.label_693
.label_697:
	mov	dl, 0x62
	jmp	.label_693
.label_703:
	mov	dl, 0x70
	jmp	.label_693
.label_695:
	mov	dl, 0x6c
	jmp	.label_693
.label_696:
	mov	dl, 0x3f
	jmp	.label_693
.label_706:
	mov	dl, 0x63
.label_693:
	push	rbx
	mov	byte ptr [rsi], dl
	mov	bl, ah
	test	bl, 1
	mov	r9b, 0x72
	mov	cl, 0x72
	jne	.label_705
	mov	cl, 0x2d
.label_705:
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
	jne	.label_691
	mov	cl, 0x2d
.label_691:
	test	bl, 8
	jne	.label_701
	mov	dl, cl
.label_701:
	mov	byte ptr [rsi + 3], dl
	test	al, 0x20
	mov	cl, 0x72
	jne	.label_699
	mov	cl, 0x2d
.label_699:
	mov	byte ptr [rsi + 4], cl
	test	al, 0x10
	mov	dl, 0x77
	mov	cl, 0x77
	jne	.label_708
	mov	cl, 0x2d
.label_708:
	mov	byte ptr [rsi + 5], cl
	mov	ecx, eax
	and	ecx, 8
	lea	edi, [rcx*4 + 0x53]
	mov	cl, 0x78
	jne	.label_694
	mov	cl, 0x2d
.label_694:
	test	bl, 4
	jne	.label_704
	mov	dil, cl
.label_704:
	mov	byte ptr [rsi + 6], dil
	test	al, 4
	jne	.label_698
	mov	r9b, 0x2d
.label_698:
	mov	byte ptr [rsi + 7], r9b
	test	al, 2
	jne	.label_700
	mov	dl, 0x2d
.label_700:
	mov	byte ptr [rsi + 8], dl
	and	eax, 1
	jne	.label_707
	mov	r8b, 0x2d
.label_707:
	test	bl, 2
	pop	rbx
	je	.label_692
	shl	eax, 5
	or	eax, 0x54
	mov	r8b, al
.label_692:
	mov	byte ptr [rsi + 9], r8b
	mov	byte ptr [rsi + 0xa], 0x20
	mov	byte ptr [rsi + 0xb], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a370
	.globl filemodestring
	.type filemodestring, @function
filemodestring:

	mov	edi, dword ptr [rdi + 0x18]
	jmp	strmode
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a380

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rax
	call	mfile_name_concat
	test	rax, rax
	je	.label_709
	pop	rcx
	ret	
.label_709:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a3a0

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
	je	.label_717
	movzx	ecx, byte ptr [rbx + r13 - 1]
	cmp	ecx, 0x2f
	jne	.label_710
	mov	qword ptr [rsp + 8], r14
	xor	r12d, r12d
	jmp	.label_713
.label_717:
	movzx	ecx, byte ptr [r14]
	mov	r12b, 0x2e
	cmp	ecx, 0x2f
	je	.label_714
	jmp	.label_711
.label_710:
	movzx	ecx, byte ptr [r14]
	cmp	ecx, 0x2f
	jne	.label_712
.label_711:
	xor	r12d, r12d
	jmp	.label_714
.label_712:
	mov	r12b, 0x2f
.label_714:
	mov	qword ptr [rsp + 8], r14
.label_713:
	test	r12b, r12b
	setne	cl
	movzx	ebp, cl
	lea	rcx, [r15 + rbx]
	lea	rdi, [rbp + rcx + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_716
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	add	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_715
	mov	qword ptr [rax], rbp
.label_715:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r15
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	mov	rax, r14
.label_716:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a490

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
	#Procedure 0x40a4f0
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a500
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a510
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a520
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdx
	jae	.label_721
	mov	rdi, rcx
	not	rdi
	add	rdi, rdx
	mov	rsi, rdi
	shr	rsi, 4
	xor	eax, eax
	bt	rdi, 4
	jb	.label_728
	xor	eax, eax
	cmp	qword ptr [rcx], 0
	je	.label_725
	mov	rdi, rcx
	nop	word ptr cs:[rax + rax]
.label_727:
	mov	rdi, qword ptr [rdi + 8]
	inc	rax
	test	rdi, rdi
	jne	.label_727
.label_725:
	add	rcx, 0x10
.label_728:
	test	rsi, rsi
	je	.label_721
	nop	word ptr cs:[rax + rax]
.label_729:
	cmp	qword ptr [rcx], 0
	mov	esi, 0
	mov	rdi, rcx
	je	.label_722
	nop	
.label_724:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_724
	cmp	rsi, rax
	cmova	rax, rsi
.label_722:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_723
	lea	rdi, [rcx + 0x10]
	xor	esi, esi
.label_726:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_726
	cmp	rsi, rax
	cmova	rax, rsi
.label_723:
	add	rcx, 0x20
	cmp	rcx, rdx
	jb	.label_729
.label_721:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a5d0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rcx, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	edx, edx
	cmp	rcx, r9
	mov	esi, 0
	jae	.label_737
	mov	rax, rcx
	not	rax
	add	rax, r9
	mov	r8, rax
	shr	r8, 4
	xor	edx, edx
	bt	rax, 4
	jb	.label_738
	xor	edx, edx
	cmp	qword ptr [rcx], 0
	je	.label_730
	mov	esi, 1
	mov	rax, rcx
.label_733:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_733
	jmp	.label_734
.label_738:
	xor	esi, esi
	jmp	.label_735
.label_730:
	xor	esi, esi
.label_734:
	add	rcx, 0x10
.label_735:
	test	r8, r8
	je	.label_737
	nop	dword ptr [rax]
.label_739:
	cmp	qword ptr [rcx], 0
	mov	rax, rcx
	je	.label_740
	nop	dword ptr [rax]
.label_731:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_731
	inc	rsi
.label_740:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_732
	lea	rax, [rcx + 0x10]
	nop	word ptr [rax + rax]
.label_736:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_736
	inc	rsi
.label_732:
	add	rcx, 0x20
	cmp	rcx, r9
	jb	.label_739
.label_737:
	cmp	rsi, qword ptr [rdi + 0x18]
	jne	.label_741
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 0x20]
	je	.label_742
.label_741:
	xor	eax, eax
.label_742:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a690
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
	jae	.label_744
	mov	rdi, rax
	not	rdi
	add	rdi, rdx
	mov	rsi, rdi
	shr	rsi, 4
	xor	ebx, ebx
	bt	rdi, 4
	jb	.label_752
	xor	ebx, ebx
	cmp	qword ptr [rax], 0
	je	.label_747
	mov	rdi, rax
	nop	dword ptr [rax]
.label_743:
	mov	rdi, qword ptr [rdi + 8]
	inc	rbx
	test	rdi, rdi
	jne	.label_743
.label_747:
	add	rax, 0x10
.label_752:
	test	rsi, rsi
	je	.label_744
	nop	word ptr cs:[rax + rax]
.label_748:
	cmp	qword ptr [rax], 0
	mov	esi, 0
	mov	rdi, rax
	je	.label_753
	nop	
.label_745:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_745
	cmp	rsi, rbx
	cmova	rbx, rsi
.label_753:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_746
	lea	rdi, [rax + 0x10]
	xor	esi, esi
.label_754:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_754
	cmp	rsi, rbx
	cmova	rbx, rsi
.label_746:
	add	rax, 0x20
	cmp	rax, rdx
	jb	.label_748
.label_744:
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str_12
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.1_8
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_749]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_750]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_751]]
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
	mov	edx, OFFSET FLAT:.str.3_3
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
	#Procedure 0x40a800

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
	jae	.label_759
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_756
	add	rbx, rax
	je	.label_756
	cmp	rsi, r12
	je	.label_758
	xor	r15d, r15d
	nop	
.label_757:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_755
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_756
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_757
.label_758:
	mov	r15, r12
	jmp	.label_756
.label_755:
	mov	r15, qword ptr [rbx]
.label_756:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_759:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a880
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_760
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_763
	nop	word ptr cs:[rax + rax]
.label_762:
	add	rcx, 0x10
.label_763:
	cmp	rcx, rdx
	jae	.label_761
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_762
.label_760:
	ret	
.label_761:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a8c0
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
	jae	.label_767
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_768:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_766
	test	rdx, rdx
	jne	.label_768
	jmp	.label_765
.label_766:
	test	rdx, rdx
	je	.label_765
	mov	rax, qword ptr [rdx]
	jmp	.label_764
.label_765:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rax + rcx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_769:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_764
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_769
.label_764:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_767:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a950
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	jmp	.label_770
	nop	dword ptr [rax + rax]
.label_773:
	add	r9, 0x10
.label_770:
	cmp	r9, r8
	jae	.label_771
	cmp	qword ptr [r9], 0
	je	.label_773
	test	r9, r9
	mov	r10, r9
	je	.label_773
	nop	word ptr [rax + rax]
.label_772:
	cmp	rax, rdx
	jae	.label_771
	mov	rcx, qword ptr [r10]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r10, qword ptr [r10 + 8]
	test	r10, r10
	jne	.label_772
	mov	r8, qword ptr [rdi + 8]
	jmp	.label_773
.label_771:
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a9a0
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
	jmp	.label_774
	nop	word ptr cs:[rax + rax]
.label_776:
	add	r13, 0x10
.label_774:
	cmp	r13, rax
	jae	.label_777
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_776
	test	r13, r13
	je	.label_776
	mov	rsi, r14
	call	r15
	test	al, al
	mov	rbp, r13
	je	.label_777
	nop	word ptr cs:[rax + rax]
.label_778:
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_775
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_778
	jmp	.label_777
	nop	dword ptr [rax]
.label_775:
	mov	rax, qword ptr [r12 + 8]
	jmp	.label_776
.label_777:
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
	#Procedure 0x40aa40
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_779
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_780:
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
	jne	.label_780
.label_779:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aa80
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_781]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aaa0

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
	je	.label_787
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_792
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_796]]
	jbe	.label_784
	movss	xmm1,  dword ptr [dword ptr [rip + label_785]]
	ucomiss	xmm1, xmm0
	jbe	.label_784
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_790]]
	jbe	.label_784
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_784
	addss	xmm1,  dword ptr [dword ptr [rip + label_796]]
	ucomiss	xmm0, xmm1
	jbe	.label_784
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_786]]
	ucomiss	xmm2, xmm0
	jb	.label_784
	ucomiss	xmm0, xmm1
	jbe	.label_784
.label_792:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_794
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_795
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_782
.label_795:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_782:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_788]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_789]]
	jae	.label_784
.label_794:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_791
	nop	
.label_797:
	add	rbx, 2
.label_791:
	cmp	rbx, -1
	je	.label_784
	cmp	rbx, 0xa
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	jb	.label_783
	nop	word ptr cs:[rax + rax]
.label_793:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_783
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_793
.label_783:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_797
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_784
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_784
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_784
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
	jmp	.label_787
.label_784:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_787:
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
	#Procedure 0x40acc0

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
	#Procedure 0x40acd0

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ace0
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_798
	nop	word ptr cs:[rax + rax]
.label_801:
	add	r14, 0x10
.label_798:
	cmp	r14, rax
	jae	.label_800
	cmp	qword ptr [r14], 0
	je	.label_801
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_802
	nop	word ptr cs:[rax + rax]
.label_804:
	test	cl, 1
	je	.label_803
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_803:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_804
.label_802:
	test	cl, cl
	je	.label_799
	mov	rdi, qword ptr [r14]
	call	rax
.label_799:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_801
.label_800:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ad90

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_807
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_807
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_812
	nop	
.label_805:
	add	r15, 0x10
.label_812:
	cmp	r15, rax
	jae	.label_807
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_805
	test	r15, r15
	je	.label_805
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_806
.label_810:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_806:
	test	rbx, rbx
	jne	.label_810
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_805
.label_807:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_811
	nop	
.label_808:
	add	r15, 0x10
.label_811:
	cmp	r15, rax
	jae	.label_814
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_808
	nop	word ptr cs:[rax + rax]
.label_809:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_809
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_808
.label_814:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_813
.label_815:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_815
.label_813:
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
	#Procedure 0x40ae60

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
	jne	.label_827
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_831
	cvtsi2ss	xmm0, rsi
	jmp	.label_818
.label_831:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_818:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_788]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_789]]
	jae	.label_820
.label_827:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_823
	nop	dword ptr [rax + rax]
.label_834:
	add	rbx, 2
.label_823:
	cmp	rbx, -1
	je	.label_820
	cmp	rbx, 0xa
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	jb	.label_816
	nop	word ptr cs:[rax + rax]
.label_830:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_816
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_830
.label_816:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_834
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_820
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_824
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_820
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
	je	.label_821
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_824
.label_821:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_832
	nop	
.label_825:
	add	r12, 0x10
.label_832:
	cmp	r12, r15
	jae	.label_822
	cmp	qword ptr [r12], 0
	je	.label_825
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_828
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_826:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_819
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_833
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_829
	nop	word ptr [rax + rax]
.label_833:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_829:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_826
.label_828:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_825
.label_822:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_817
	mov	rdi, qword ptr [rsp]
	call	free
.label_820:
	xor	ebp, ebp
.label_824:
	mov	al, bpl
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_819:
	call	abort
.label_817:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b0f0

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
	jae	.label_842
	nop	word ptr cs:[rax + rax]
.label_844:
	mov	r13, qword ptr [r14]
	test	r13, r13
	je	.label_841
	mov	r15, qword ptr [r14 + 8]
	test	r15, r15
	je	.label_845
	mov	rsi, qword ptr [rbp + 0x10]
	nop	dword ptr [rax]
.label_846:
	mov	rbx, qword ptr [r15]
	mov	rdi, rbx
	call	qword ptr [rbp + 0x30]
	mov	rsi, qword ptr [rbp + 0x10]
	cmp	rax, rsi
	jae	.label_837
	mov	rdx, qword ptr [rbp]
	mov	rcx, qword ptr [r15 + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_839
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [r15 + 8], rdi
	mov	qword ptr [rdx + rax + 8], r15
	jmp	.label_848
	nop	dword ptr [rax]
.label_839:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [rbp + 0x18]
	mov	qword ptr [r15], 0
	mov	rax, qword ptr [rbp + 0x48]
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [rbp + 0x48], r15
.label_848:
	test	rcx, rcx
	mov	r15, rcx
	jne	.label_846
	mov	r13, qword ptr [r14]
.label_845:
	mov	qword ptr [r14 + 8], 0
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	jne	.label_841
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, r13
	call	qword ptr [rbp + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [rbp + 0x10]
	jae	.label_835
	mov	r15, qword ptr [rbp]
	shl	rbx, 4
	cmp	qword ptr [r15 + rbx], 0
	je	.label_838
	mov	rax, qword ptr [rbp + 0x48]
	test	rax, rax
	je	.label_840
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp + 0x48], rcx
	jmp	.label_843
.label_838:
	add	r15, rbx
	mov	qword ptr [r15], r13
	inc	qword ptr [rbp + 0x18]
	jmp	.label_847
.label_840:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_836
.label_843:
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [r15 + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + rbx + 8], rax
.label_847:
	mov	qword ptr [r14], 0
	dec	qword ptr [r12 + 0x18]
.label_841:
	add	r14, 0x10
	cmp	r14, qword ptr [r12 + 8]
	jb	.label_844
	mov	al, 1
.label_842:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_836:
	xor	eax, eax
	jmp	.label_842
.label_837:
	call	abort
.label_835:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b260

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
	je	.label_853
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_853
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_851
	cmp	rsi, r14
	je	.label_861
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_864
	mov	rax, qword ptr [r12]
	jmp	.label_852
.label_861:
	mov	rax, r14
	jmp	.label_866
.label_864:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_851
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr cs:[rax + rax]
.label_878:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_871
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_876
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_878
	jmp	.label_851
.label_871:
	mov	rax, r14
	jmp	.label_852
.label_876:
	mov	rax, qword ptr [rbp]
.label_852:
	test	rax, rax
	je	.label_851
.label_866:
	xor	ebp, ebp
	test	r15, r15
	je	.label_859
	mov	qword ptr [r15], rax
	jmp	.label_859
.label_851:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_860
	cvtsi2ss	xmm1, rax
	jmp	.label_865
.label_860:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_865:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_867
	cvtsi2ss	xmm0, rcx
	jmp	.label_873
.label_867:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_873:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_850
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_863
	ucomiss	xmm2,  dword ptr [dword ptr [rip + label_796]]
	jbe	.label_856
	movss	xmm3,  dword ptr [dword ptr [rip + label_785]]
	ucomiss	xmm3, xmm2
	jbe	.label_856
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_790]]
	jbe	.label_856
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_856
	addss	xmm3,  dword ptr [dword ptr [rip + label_796]]
	ucomiss	xmm2, xmm3
	jbe	.label_856
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5,  dword ptr [dword ptr [rip + label_786]]
	ucomiss	xmm5, xmm4
	jb	.label_856
	ucomiss	xmm4, xmm3
	ja	.label_872
.label_856:
	mov	qword ptr [word ptr [r13 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2,  dword ptr [dword ptr [rip + label_874]]
	jmp	.label_872
.label_863:
	mov	eax, OFFSET FLAT:default_tuning
.label_872:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_850
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_875
	mulss	xmm0, xmm2
.label_875:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_789]]
	jae	.label_859
	movss	xmm1,  dword ptr [dword ptr [rip + label_788]]
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
	je	.label_859
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_853
	mov	r15, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [r15 + rbp]
	mov	rsi, qword ptr [r15 + rbp]
	test	rsi, rsi
	je	.label_850
	cmp	rsi, r14
	mov	rax, r14
	je	.label_855
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_862
	mov	rax, qword ptr [r12]
	jmp	.label_855
.label_862:
	mov	rax, qword ptr [r15 + rbp + 8]
	test	rax, rax
	je	.label_850
	lea	rbp, [r15 + rbp + 8]
.label_870:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_869
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_868
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_870
	jmp	.label_850
.label_869:
	mov	rax, r14
	jmp	.label_855
.label_868:
	mov	rax, qword ptr [rbp]
.label_855:
	test	rax, rax
	jne	.label_877
.label_850:
	cmp	qword ptr [r12], 0
	je	.label_879
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_849
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_854
.label_879:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0,  xmmword ptr [word ptr [rip + label_857]]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_858
.label_849:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_859
.label_854:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_858:
	mov	ebp, 1
.label_859:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_853:
	call	abort
.label_877:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b580

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
	je	.label_880
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_880:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b5b0

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
	jae	.label_894
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_889
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_900
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_881
	mov	r14, qword ptr [r13]
.label_900:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_887
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_888
.label_881:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_889
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_898:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_895
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_897
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_898
	jmp	.label_889
.label_887:
	mov	qword ptr [r13], 0
	jmp	.label_888
.label_895:
	mov	rcx, rax
	jmp	.label_884
.label_897:
	mov	r14, qword ptr [rcx]
.label_884:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_888:
	xor	r12d, r12d
	test	r14, r14
	je	.label_889
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_883
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_901
	cvtsi2ss	xmm1, rax
	jmp	.label_896
.label_901:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_896:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_899
	cvtsi2ss	xmm0, rcx
	jmp	.label_882
.label_899:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_882:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_883
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_890
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_796]]
	jbe	.label_892
	movss	xmm4,  dword ptr [dword ptr [rip + label_785]]
	ucomiss	xmm4, xmm3
	jbe	.label_892
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_892
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4,  dword ptr [dword ptr [rip + label_790]]
	jbe	.label_892
	movss	xmm4,  dword ptr [dword ptr [rip + label_796]]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_892
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5,  dword ptr [dword ptr [rip + label_786]]
	ucomiss	xmm5, xmm3
	jb	.label_892
	ucomiss	xmm3, xmm4
	ja	.label_885
.label_892:
	mov	qword ptr [word ptr [r15 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_885
.label_890:
	mov	eax, OFFSET FLAT:default_tuning
.label_885:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_883
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_891
	mulss	xmm0, dword ptr [rax + 8]
.label_891:
	movss	xmm1,  dword ptr [dword ptr [rip + label_788]]
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
	jne	.label_883
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_893
	nop	
.label_886:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_886
.label_893:
	mov	qword ptr [r15 + 0x48], 0
.label_883:
	mov	r12, r14
.label_889:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_894:
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b840

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
	#Procedure 0x40b870

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
	#Procedure 0x40b880

	.globl triple_compare
	.type triple_compare, @function
triple_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_902
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_903
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	same_name
	add	rsp, 8
	ret	
.label_902:
	xor	eax, eax
	ret	
.label_903:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b8b0
	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:

	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_904
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_905
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	test	eax, eax
	sete	al
	add	rsp, 8
	ret	
.label_904:
	xor	eax, eax
	ret	
.label_905:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b8e0

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
	#Procedure 0x40b900

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
	js	.label_907
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_906
	mov	dword ptr [r14], ebp
	jmp	.label_907
.label_906:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_907:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b950

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_909
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_910
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_9
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_910
	mov	esi, OFFSET FLAT:.str.2_5
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_908
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_908:
	mov	rbx, r14
.label_910:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_909:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_13
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ba00

	.globl qcopy_acl
	.type qcopy_acl, @function
qcopy_acl:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, ecx
	mov	rbx, rdx
	lea	rcx, [rsp]
	mov	edx, r8d
	call	get_permissions
	mov	ebp, 0xfffffffe
	test	eax, eax
	jne	.label_911
	lea	r15, [rsp]
	mov	rdi, r15
	mov	rsi, rbx
	mov	edx, r14d
	call	set_permissions
	mov	ebp, eax
	mov	rdi, r15
	call	free_permission_context
.label_911:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ba50

	.globl qset_acl
	.type qset_acl, @function
qset_acl:
	push	rbp
	push	rbx
	push	rax
	mov	eax, esi
	mov	rcx, rdi
	mov	dword ptr [rsp], edx
	lea	rbx, [rsp]
	mov	rdi, rbx
	mov	rsi, rcx
	mov	edx, eax
	call	set_permissions
	mov	ebp, eax
	mov	rdi, rbx
	call	free_permission_context
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40ba80
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
	#Procedure 0x40bac0
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
	#Procedure 0x40bad0
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
	#Procedure 0x40bae0
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
	#Procedure 0x40bb20
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
	#Procedure 0x40bb40
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_912
	test	rdx, rdx
	je	.label_912
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_912:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bb70
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
	#Procedure 0x40bbf0

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
.label_1024:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_961
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_964]]
.label_1703:
	mov	edi, OFFSET FLAT:.str.11_2
	mov	esi, r15d
	mov	r14, r10
	mov	bl, r8b
	call	gettext_quote
	mov	qword ptr [rsp + 0xa0], rax
	mov	edi, OFFSET FLAT:.str.12_2
	mov	esi, r15d
	call	gettext_quote
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x98], rax
.label_1704:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_987
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_987
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_1009:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_1001
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_1001:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_1009
.label_987:
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
	jmp	.label_944
.label_1696:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_944
.label_1699:
	mov	al, 1
.label_1697:
	mov	r12b, 1
.label_1700:
	test	r12b, 1
	mov	cl, 1
	je	.label_1036
	mov	cl, al
.label_1036:
	mov	al, cl
.label_1698:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_913
	test	r10, r10
	je	.label_917
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_918
.label_913:
	xor	ecx, ecx
	jmp	.label_918
.label_1701:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_983
	test	r10, r10
	je	.label_934
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_938
.label_1702:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_2
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_944
.label_917:
	mov	ecx, 1
	nop	dword ptr [rax]
.label_918:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_2
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_944
.label_983:
	xor	eax, eax
	jmp	.label_938
.label_934:
	mov	eax, 1
.label_938:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_2
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_944:
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
	jmp	.label_965
.label_1022:
	inc	rdi
.label_965:
	cmp	rbp, -1
	je	.label_1017
	cmp	rdi, rbp
	jne	.label_1019
	jmp	.label_1020
	nop	word ptr cs:[rax + rax]
.label_1017:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_922
.label_1019:
	test	r12b, r12b
	je	.label_1026
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_1028
	cmp	rbp, -1
	jne	.label_1028
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
.label_1028:
	cmp	rbx, rbp
	jbe	.label_923
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_936
	nop	word ptr [rax + rax]
.label_1026:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_936
.label_923:
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
	jne	.label_953
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_936
	jmp	.label_928
.label_953:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_936:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_974
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_981]]
.label_1759:
	test	rdi, rdi
	jne	.label_966
	jmp	.label_988
.label_1763:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_990
	test	rdi, rdi
	jne	.label_993
	cmp	rbp, 1
	je	.label_988
	xor	r13d, r13d
	jmp	.label_940
.label_1752:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_997
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_928
	cmp	r9d, 2
	jne	.label_1002
	mov	al, r14b
	and	al, 1
	jne	.label_1004
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_1008
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_1008:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_1014
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_1014:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_926
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_926:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_1029
.label_1753:
	mov	bl, 0x62
	jmp	.label_1010
.label_1754:
	mov	cl, 0x74
	jmp	.label_916
.label_1755:
	mov	bl, 0x76
	jmp	.label_1010
.label_1756:
	mov	bl, 0x66
	jmp	.label_1010
.label_1757:
	mov	cl, 0x72
	jmp	.label_916
.label_1760:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_915
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_919
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
	jae	.label_975
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_975:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_950
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_950:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_969
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_969:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_915:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_940
.label_1761:
	cmp	r9d, 5
	je	.label_956
	cmp	r9d, 2
	jne	.label_966
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_966
	jmp	.label_970
.label_1762:
	cmp	r9d, 2
	jne	.label_972
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_976
	jmp	.label_982
.label_974:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_984
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
.label_914:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_998
	test	cl, cl
	je	.label_998
	xor	eax, eax
	jmp	.label_940
.label_990:
	test	rdi, rdi
	jne	.label_1012
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_1012
.label_988:
	mov	dl, 1
.label_1758:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_1016
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_940
.label_997:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_1022
	jmp	.label_966
.label_972:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_916
.label_976:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_958
.label_916:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_1031
.label_1010:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_940
	jmp	.label_960
.label_984:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_1037
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_1037:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_954:
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
	je	.label_949
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_952
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_957
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_1034
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_971:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_968
	bt	rsi, rdx
	jb	.label_1035
.label_968:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_971
.label_1034:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_1033
	xor	r13d, r13d
.label_1033:
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
	je	.label_954
	jmp	.label_914
.label_1012:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_940
.label_956:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_966
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_966
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_966
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_1005
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_979
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_1007
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_986
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_986:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_1025
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_1025:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_1032
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_1032:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_1030
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_1030:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_940
.label_966:
	xor	eax, eax
	xor	r13d, r13d
.label_940:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_929
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_933
	jmp	.label_939
	nop	word ptr [rax + rax]
.label_929:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_939
.label_933:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_945
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_951
	nop	word ptr cs:[rax + rax]
.label_939:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_951:
	mov	bl, r15b
	je	.label_958
	jmp	.label_960
.label_945:
	mov	bl, r15b
.label_960:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_928
	cmp	r9d, 2
	jne	.label_963
	mov	al, r14b
	and	al, 1
	jne	.label_963
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_955
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_955:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_995
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_995:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_980
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_980:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_963:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_991
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_991:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_962
.label_993:
	xor	r13d, r13d
	jmp	.label_940
.label_998:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_999
	nop	word ptr [rax + rax]
.label_994:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_999:
	test	cl, cl
	je	.label_1011
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_989
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_1018
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_1018:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_989
	nop	word ptr [rax + rax]
.label_1011:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_928
	cmp	r9d, 2
	jne	.label_1000
	mov	al, r14b
	and	al, 1
	jne	.label_1000
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_1013
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_1013:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_932
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_932:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_925
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_925:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_1000:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_942
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_942:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_948
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_948:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_992
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_992:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_989:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_958
	test	r14b, 1
	je	.label_930
	mov	bl, al
	and	bl, 1
	jne	.label_930
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_1023
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_1023:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_985
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_985:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_930:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_994
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_994
	nop	dword ptr [rax]
.label_958:
	test	r14b, 1
	je	.label_1006
	and	al, 1
	jne	.label_1006
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_959
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_959:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_924
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_924:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_1006:
	mov	bl, r15b
.label_962:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_1027
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_1027:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_1022
.label_1002:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_1029
.label_1004:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_1029:
	cmp	rcx, r10
	jae	.label_943
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_943:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_921
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_931
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_935
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_941
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_941:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_947
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_947:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_940
.label_921:
	xor	r13d, r13d
	jmp	.label_940
.label_931:
	xor	r13d, r13d
	jmp	.label_940
.label_935:
	xor	r13d, r13d
	jmp	.label_940
.label_952:
	xor	r13d, r13d
.label_949:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_914
.label_957:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_967
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_977:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_973
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_977
	xor	r13d, r13d
	jmp	.label_914
.label_967:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_914
.label_973:
	xor	r13d, r13d
	jmp	.label_914
.label_1005:
	xor	r13d, r13d
	jmp	.label_940
.label_979:
	xor	r13d, r13d
	jmp	.label_940
	nop	dword ptr [rax]
.label_1020:
	mov	r13, rdi
.label_922:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_996
	or	al, dl
	je	.label_937
.label_996:
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
	je	.label_1003
	or	al, dl
	jne	.label_1003
	test	r8b, 1
	jne	.label_1021
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_1003
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_1024
.label_1003:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_1015
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_1015
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_1015
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_920:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_946
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_946:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_920
.label_1015:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_927
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_927
.label_1016:
	mov	r9d, 2
	jmp	.label_928
.label_1035:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_928
.label_937:
	mov	rbp, r13
	jmp	.label_928
.label_1031:
	mov	r9d, 2
.label_928:
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
.label_978:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_927:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1021:
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
	jmp	.label_978
.label_919:
	mov	r9d, 2
	jmp	.label_928
.label_982:
	mov	r9d, 2
	jmp	.label_928
.label_970:
	mov	r9d, 2
	jmp	.label_928
.label_1007:
	mov	r9d, 5
	jmp	.label_928
.label_961:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40cd80
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
	#Procedure 0x40ce50
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
	je	.label_1038
	mov	qword ptr [rax], rbx
.label_1038:
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
	#Procedure 0x40cf50
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_1039
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_1041:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_1041
.label_1039:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_1042
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_1043]], OFFSET FLAT:slot0
.label_1042:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_1040
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_1040:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cff0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x40d000

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
	js	.label_1044
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_1047
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_1050
.label_1047:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_1046
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
	jne	.label_1045
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_1045:
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
.label_1050:
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
	ja	.label_1048
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_1049
	mov	rdi, rbx
	call	free
.label_1049:
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
.label_1048:
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
.label_1044:
	call	abort
.label_1046:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d1d0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d1e0
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
	#Procedure 0x40d200
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
	#Procedure 0x40d220

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
	je	.label_1051
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
.label_1051:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x40d290
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
	je	.label_1052
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
.label_1052:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d300

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
	je	.label_1053
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
.label_1053:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d370
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
	je	.label_1054
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
.label_1054:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d3e0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_1055]]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1056]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1057]]
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
	#Procedure 0x40d450
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx,  qword ptr [word ptr [rip + label_1055]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1056]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1057]]
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
	#Procedure 0x40d4c0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_1055]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1056]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1057]]
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
	#Procedure 0x40d520
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_1055]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1056]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1057]]
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
	#Procedure 0x40d580

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
	je	.label_1058
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
.label_1058:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x40d630
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_1055]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1056]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1057]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_1059
	test	rdx, rdx
	je	.label_1059
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_1059:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x40d6a0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_1055]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1056]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1057]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_1060
	test	rdx, rdx
	je	.label_1060
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_1060:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d710
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_1055]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1056]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1057]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_1061
	test	rsi, rsi
	je	.label_1061
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_1061:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40d780
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_1055]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1056]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1057]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_1062
	test	rsi, rsi
	je	.label_1062
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
.label_1062:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d7f0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d800
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
	#Procedure 0x40d820

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d840

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
	#Procedure 0x40d860

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
	jne	.label_1063
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_1065
	cmp	ecx, 0x55
	jne	.label_1064
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_1064
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_1064
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_1064
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_1064
	cmp	byte ptr [rax + 5], 0
	jne	.label_1064
	mov	eax, OFFSET FLAT:.str.14_2
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_1063
	mov	eax, OFFSET FLAT:.str.15_3
	jmp	.label_1063
.label_1065:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_1064
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_1064
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_1064
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_1064
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_1064
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_1064
	cmp	byte ptr [rax + 7], 0
	je	.label_1066
.label_1064:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_2
	mov	eax, OFFSET FLAT:.str.12_2
	cmove	rax, rcx
.label_1063:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1066:
	mov	eax, OFFSET FLAT:.str.17_3
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_1063
	mov	eax, OFFSET FLAT:.str.18_2
	jmp	.label_1063
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d950

	.globl renameatu
	.type renameatu, @function
renameatu:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x128
	mov	r12d, r8d
	mov	r13, rcx
	mov	r14d, edx
	mov	rbp, rsi
	mov	r15d, edi
	mov	edi, 0x13c
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	mov	ecx, r14d
	mov	r8, r13
	mov	r9d, r12d
	call	syscall
	mov	rbx, rax
	call	__errno_location
	test	ebx, ebx
	jns	.label_1067
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x16
	je	.label_1074
	cmp	ecx, 0x5f
	je	.label_1074
	cmp	ecx, 0x26
	jne	.label_1067
.label_1074:
	test	r12d, r12d
	je	.label_1076
	mov	qword ptr [rsp], rax
	cmp	r12d, 2
	jb	.label_1077
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0x5f
	mov	ebx, 0xffffffff
	jmp	.label_1067
.label_1076:
	mov	qword ptr [rsp], rax
	xor	r12d, r12d
.label_1072:
	mov	rdi, rbp
	call	strlen
	mov	rbx, rax
	mov	rdi, r13
	call	strlen
	test	rbx, rbx
	je	.label_1070
	test	rax, rax
	je	.label_1070
	movzx	ecx, byte ptr [rbx + rbp - 1]
	cmp	ecx, 0x2f
	je	.label_1068
	movzx	eax, byte ptr [rax + r13 - 1]
	cmp	eax, 0x2f
	jne	.label_1070
.label_1068:
	lea	rcx, [rsp + 0x98]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, r15d
	mov	rdx, rbp
	call	__fxstatat
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1067
	test	r12b, r12b
	je	.label_1069
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0xb0]
	cmp	eax, 0x4000
	je	.label_1070
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 2
	jmp	.label_1067
.label_1077:
	lea	rcx, [rsp + 8]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, r14d
	mov	rdx, r13
	call	__fxstatat
	test	eax, eax
	je	.label_1071
	mov	rax, qword ptr [rsp]
	mov	eax, dword ptr [rax]
	mov	r12b, 1
	cmp	eax, 2
	je	.label_1072
	mov	ebx, 0xffffffff
	cmp	eax, 0x4b
	jne	.label_1067
.label_1071:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0x11
	mov	ebx, 0xffffffff
	jmp	.label_1067
.label_1069:
	lea	rcx, [rsp + 8]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, r14d
	mov	rdx, r13
	call	__fxstatat
	test	eax, eax
	je	.label_1075
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax], 2
	jne	.label_1067
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0xb0]
	cmp	eax, 0x4000
	jne	.label_1067
	jmp	.label_1070
.label_1075:
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsp + 0x20]
	and	ecx, eax
	cmp	ecx, 0x4000
	jne	.label_1078
	and	eax, dword ptr [rsp + 0xb0]
	cmp	eax, 0x4000
	jne	.label_1073
.label_1070:
	mov	edi, r15d
	mov	rsi, rbp
	mov	edx, r14d
	mov	rcx, r13
	call	renameat
	mov	ebx, eax
.label_1067:
	mov	eax, ebx
	add	rsp, 0x128
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1078:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0x14
	jmp	.label_1067
.label_1073:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0x15
	jmp	.label_1067
	nop	
	.section	.text
	.align	16
	#Procedure 0x40db60

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
	jne	.label_1079
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, rbx
.label_1079:
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40dbb0

	.globl safe_write
	.type safe_write, @function
safe_write:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
.label_1081:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	write
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_1080
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_1081
	cmp	rbx, 0x7ff00001
	jb	.label_1080
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_1081
.label_1080:
	mov	rax, rbp
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
	#Procedure 0x40dc10

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
	#Procedure 0x40dc30

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
	jne	.label_1082
	mov	qword ptr [rsp + 8], r15
	mov	dword ptr [rsp + 0x10], r12d
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_1085
	xor	ebp, ebp
	jmp	.label_1086
.label_1082:
	xor	ebp, ebp
	jmp	.label_1086
.label_1085:
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
	je	.label_1084
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_6
	xor	eax, eax
	mov	rcx, rbp
	call	error
.label_1084:
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
	je	.label_1087
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_6
	xor	eax, eax
	mov	rcx, rbx
	call	error
.label_1087:
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_1088
	mov	rax, qword ptr [rsp + 0xa8]
	cmp	rax, qword ptr [rsp + 0x18]
	sete	bpl
	jmp	.label_1083
.label_1088:
	xor	ebp, ebp
.label_1083:
	mov	rdi, rbx
	call	free
.label_1086:
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
	#Procedure 0x40dd80

	.globl streamsavedir
	.type streamsavedir, @function
streamsavedir:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r13, rdi
	mov	ebx, esi
	xor	r14d, r14d
	test	r13, r13
	je	.label_1089
	mov	rax,  qword ptr [word ptr [+ (rbx * 8) + comparison_function_table]]
	mov	qword ptr [rsp + 0x10], rax
	call	__errno_location
	mov	rbp, rax
	dec	rbx
	mov	qword ptr [rsp + 0x28], rbx
	xor	r15d, r15d
	xor	r12d, r12d
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	ebx, ebx
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	jmp	.label_1098
	nop	dword ptr [rax + rax]
.label_1093:
	mov	qword ptr [rsp + 0x30], rbx
	mov	rdi, qword ptr [rsp + 0x20]
	call	xstrdup
	mov	rcx, r12
	shl	rcx, 4
	mov	qword ptr [rbx + rcx], rax
	mov	rax, qword ptr [r14]
	mov	qword ptr [rbx + rcx + 8], rax
	inc	r12
	add	r15, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rsp + 0x40]
.label_1098:
	mov	qword ptr [rsp + 0x40], rbx
	nop	word ptr cs:[rax + rax]
.label_1106:
	mov	dword ptr [rbp], 0
	mov	rdi, r13
	call	readdir
	mov	r14, rax
	test	r14, r14
	je	.label_1097
	movzx	eax, byte ptr [r14 + 0x13]
	cmp	eax, 0x2e
	jne	.label_1102
	movzx	eax, byte ptr [r14 + 0x14]
	cmp	eax, 0x2e
	mov	eax, 1
	jne	.label_1103
	mov	eax, 2
.label_1103:
	mov	al, byte ptr [r14 + rax + 0x13]
.label_1102:
	test	al, al
	je	.label_1106
	mov	rbx, r14
	add	rbx, 0x13
	mov	rdi, rbx
	call	strlen
	mov	rdx, rax
	inc	rdx
	cmp	qword ptr [rsp + 0x28], 1
	ja	.label_1095
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, r12
	jne	.label_1111
	mov	rdi, qword ptr [rsp + 0x30]
	test	rdi, rdi
	je	.label_1091
	movabs	rax, 0x555555555555555
	cmp	r12, rax
	jae	.label_1094
	mov	qword ptr [rsp + 0x20], rbx
	mov	qword ptr [rsp + 8], rdx
	mov	rax, r12
	shr	rax, 1
	lea	rcx, [r12 + rax + 1]
	jmp	.label_1096
	nop	dword ptr [rax + rax]
.label_1095:
	mov	qword ptr [rsp + 0x20], rbx
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rax, rbx
	sub	rax, r15
	cmp	rax, rdx
	mov	rax, qword ptr [rsp + 0x38]
	ja	.label_1105
	mov	rbx, rdx
	add	rbx, r15
	jb	.label_1094
	test	rax, rax
	je	.label_1110
	movabs	rcx, 0x5555555555555554
	cmp	rbx, rcx
	jae	.label_1094
	mov	r14, rdx
	mov	rcx, rbx
	shr	rcx, 1
	lea	rbx, [rbx + rcx + 1]
	jmp	.label_1092
.label_1111:
	mov	qword ptr [rsp + 0x20], rbx
	mov	qword ptr [rsp + 8], rdx
	mov	rbx, qword ptr [rsp + 0x30]
	jmp	.label_1093
.label_1091:
	mov	qword ptr [rsp + 0x20], rbx
	mov	qword ptr [rsp + 8], rdx
	test	r12, r12
	mov	rcx, r12
	mov	eax, 8
	cmove	rcx, rax
	mov	rax, rcx
	shr	rax, 0x3b
	jne	.label_1100
.label_1096:
	mov	qword ptr [rsp + 0x18], rcx
	mov	rsi, rcx
	shl	rsi, 4
	call	xrealloc
	mov	rbx, rax
	jmp	.label_1093
.label_1110:
	mov	r14, rdx
	test	rbx, rbx
	mov	ecx, 0x80
	cmove	rbx, rcx
	test	rbx, rbx
	js	.label_1109
.label_1092:
	mov	rdi, rax
	mov	rsi, rbx
	call	xrealloc
	mov	rdx, r14
.label_1105:
	mov	qword ptr [rsp + 0x38], rax
	lea	rdi, [rax + r15]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	r14, rdx
	call	memcpy
	add	r15, r14
	jmp	.label_1098
.label_1097:
	mov	ebx, dword ptr [rbp]
	test	ebx, ebx
	je	.label_1101
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	mov	rdi, qword ptr [rsp + 0x38]
	call	free
	mov	dword ptr [rbp], ebx
	xor	r14d, r14d
	jmp	.label_1089
.label_1101:
	cmp	qword ptr [rsp + 0x28], 1
	mov	r14, qword ptr [rsp + 0x38]
	ja	.label_1107
	test	r12, r12
	je	.label_1108
	mov	edx, 0x10
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rdi, rbx
	mov	rsi, r12
	mov	rcx, qword ptr [rsp + 0x10]
	call	qsort
	inc	r15
	mov	rdi, r15
	call	xmalloc
	mov	r14, rax
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1090:
	lea	rbp, [r14 + r15]
	mov	rsi, qword ptr [rbx]
	mov	rdi, rbp
	call	stpcpy
	inc	r15
	sub	r15, rbp
	add	r15, rax
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x10
	dec	r12
	jne	.label_1090
	jmp	.label_1104
.label_1107:
	cmp	qword ptr [rsp + 0x40], r15
	jne	.label_1099
	lea	rsi, [r15 + 1]
	mov	rdi, r14
	call	xrealloc
	mov	r14, rax
	jmp	.label_1099
.label_1108:
	inc	r15
	mov	rdi, r15
	call	xmalloc
	mov	r14, rax
	xor	r15d, r15d
.label_1104:
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
.label_1099:
	mov	byte ptr [r14 + r15], 0
.label_1089:
	mov	rax, r14
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1094:
	call	xalloc_die
.label_1100:
	call	xalloc_die
.label_1109:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e0b0

	.globl savedir
	.type savedir, @function
savedir:
	push	rbp
	push	r14
	push	rbx
	mov	ebp, esi
	call	opendir_safer
	mov	rbx, rax
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_1112
	mov	rdi, rbx
	mov	esi, ebp
	call	streamsavedir
	mov	r14, rax
	mov	rdi, rbx
	call	closedir
	test	eax, eax
	je	.label_1112
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r14
	call	free
	mov	dword ptr [rbx], ebp
	xor	r14d, r14d
.label_1112:
	mov	rax, r14
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40e100

	.globl direntry_cmp_name
	.type direntry_cmp_name, @function
direntry_cmp_name:
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	jmp	strcmp
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e110

	.globl direntry_cmp_inode
	.type direntry_cmp_inode, @function
direntry_cmp_inode:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	seta	al
	movzx	ecx, al
	mov	eax, 0xffffffff
	cmovae	eax, ecx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e130

	.globl try_tempname_len
	.type try_tempname_len, @function
try_tempname_len:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, r8
	mov	qword ptr [rsp + 0x28], rcx
	mov	qword ptr [rsp + 0x20], rdx
	mov	ebx, esi
	mov	r14, rdi
	call	__errno_location
	mov	qword ptr [rsp + 0x30], rax
	mov	r15d, dword ptr [rax]
	mov	rdi, r14
	call	strlen
	mov	rbp, rax
	movsxd	r13, ebx
	lea	rax, [r13 + r12]
	cmp	rbp, rax
	jb	.label_1121
	mov	rax, rbp
	sub	rax, r12
	sub	rax, r13
	add	rax, r14
	mov	rcx, -1
	nop	dword ptr [rax + rax]
.label_1115:
	movzx	edx, byte ptr [rax + rcx + 1]
	inc	rcx
	cmp	edx, 0x58
	je	.label_1115
	cmp	rcx, r12
	jae	.label_1118
.label_1121:
	mov	rax, qword ptr [rsp + 0x30]
	mov	dword ptr [rax], 0x16
	mov	r12d, 0xffffffff
.label_1117:
	mov	eax, r12d
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1118:
	mov	dword ptr [rsp + 0xc], r15d
	mov	qword ptr [rsp + 0x18], r14
	xor	r14d, r14d
	xor	edi, edi
	mov	rsi, r12
	call	randint_all_new
	mov	r15, rax
	mov	rax, r12
	mov	r12d, 0xffffffff
	test	r15, r15
	je	.label_1117
	sub	rbp, r13
	add	rbp, qword ptr [rsp + 0x18]
	mov	rcx, rax
	neg	rcx
	mov	qword ptr [rsp + 0x10], rcx
	mov	r13, rax
	nop	word ptr cs:[rax + rax]
.label_1120:
	test	r13, r13
	mov	rbx, qword ptr [rsp + 0x10]
	je	.label_1119
	nop	word ptr [rax + rax]
.label_1114:
	mov	esi, 0x3d
	mov	rdi, r15
	call	randint_genmax
	mov	al,  byte ptr [byte ptr [rax + letters]]
	mov	byte ptr [rbp + rbx], al
	inc	rbx
	jne	.label_1114
.label_1119:
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x20]
	call	qword ptr [rsp + 0x28]
	mov	r12d, eax
	test	r12d, r12d
	jns	.label_1113
	mov	rax, qword ptr [rsp + 0x30]
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x11
	mov	r12d, 0xffffffff
	jne	.label_1116
	inc	r14d
	cmp	r14d, 0x3a2f7
	jbe	.label_1120
	mov	rdi, r15
	call	randint_all_free
	mov	rax, qword ptr [rsp + 0x30]
	mov	dword ptr [rax], 0x11
	mov	r12d, 0xffffffff
	jmp	.label_1117
.label_1113:
	mov	eax, dword ptr [rsp + 0xc]
	mov	rcx, qword ptr [rsp + 0x30]
	mov	dword ptr [rcx], eax
	mov	ebx, eax
.label_1116:
	mov	rdi, r15
	call	randint_all_free
	mov	rax, qword ptr [rsp + 0x30]
	mov	dword ptr [rax], ebx
	jmp	.label_1117
	nop	
	.section	.text
	.align	16
	#Procedure 0x40e2b0
	.globl gen_tempname_len
	.type gen_tempname_len, @function
gen_tempname_len:

	push	rax
	mov	dword ptr [rsp + 4], edx
	cmp	ecx, 3
	jae	.label_1122
	movsxd	rax, ecx
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1123]]
	lea	rdx, [rsp + 4]
	call	try_tempname_len
	pop	rcx
	ret	
.label_1122:
	mov	edi, OFFSET FLAT:.str_14
	mov	esi, OFFSET FLAT:.str.1_10
	mov	edx, 0x147
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.gen_tempname_len
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e2f0

	.globl try_file
	.type try_file, @function
try_file:
	mov	esi, dword ptr [rsi]
	and	esi, 0xffffff3c
	or	esi, 0xc2
	mov	edx, 0x180
	xor	eax, eax
	jmp	open
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e310

	.globl try_dir
	.type try_dir, @function
try_dir:
	mov	esi, 0x1c0
	jmp	mkdir
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e320

	.globl try_nocreate
	.type try_nocreate, @function
try_nocreate:
	push	rbx
	sub	rsp, 0x90
	mov	rax, rdi
	lea	rdx, [rsp]
	mov	edi, 1
	mov	rsi, rax
	call	__lxstat
	mov	ebx, eax
	call	__errno_location
	test	ebx, ebx
	je	.label_1124
	cmp	dword ptr [rax], 0x4b
	jne	.label_1125
.label_1124:
	mov	dword ptr [rax], 0x11
.label_1125:
	xor	ecx, ecx
	cmp	dword ptr [rax], 2
	mov	eax, 0xffffffff
	cmove	eax, ecx
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e370
	.globl gen_tempname
	.type gen_tempname, @function
gen_tempname:

	push	rax
	mov	dword ptr [rsp + 4], edx
	cmp	ecx, 3
	jae	.label_1126
	movsxd	rax, ecx
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1123]]
	lea	rdx, [rsp + 4]
	mov	r8d, 6
	call	try_tempname_len
	pop	rcx
	ret	
.label_1126:
	mov	edi, OFFSET FLAT:.str_14
	mov	esi, OFFSET FLAT:.str.1_10
	mov	edx, 0x147
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.gen_tempname_len
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x40e3b0
	.globl try_tempname
	.type try_tempname, @function
try_tempname:

	mov	r8d, 6
	jmp	try_tempname_len
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e3c0

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
	ja	.label_1127
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
	jmp	.label_1128
.label_1127:
	mov	eax, ebx
.label_1128:
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
	#Procedure 0x40e410

	.globl utimecmp
	.type utimecmp, @function
utimecmp:
	mov	eax, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 0xffffff9c
	mov	r8d, eax
	jmp	utimecmpat
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e430

	.globl utimecmpat
	.type utimecmpat, @function
utimecmpat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xf8
	mov	rbp, rdx
	mov	r14, qword ptr [rbp + 0x58]
	mov	r15, qword ptr [rbp + 0x60]
	mov	r12, qword ptr [rcx + 0x58]
	mov	r13d, dword ptr [rcx + 0x60]
	test	r8b, 1
	je	.label_1142
	cmp	r14, r12
	jne	.label_1149
	xor	ecx, ecx
	cmp	r15d, r13d
	je	.label_1129
.label_1149:
	lea	rax, [r12 - 2]
	mov	ecx, 0xffffffff
	cmp	r14, rax
	jle	.label_1129
	lea	rax, [r14 - 2]
	mov	ecx, 1
	cmp	r12, rax
	jle	.label_1129
	mov	dword ptr [rsp + 0x2c], edi
	mov	qword ptr [rsp + 0x20], rsi
	mov	rbx,  qword ptr [word ptr [rip + utimecmpat.ht]]
	test	rbx, rbx
	jne	.label_1133
	mov	edi, 0x10
	xor	esi, esi
	mov	edx, OFFSET FLAT:dev_info_hash
	mov	ecx, OFFSET FLAT:dev_info_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	rbx, rax
	mov	qword ptr [word ptr [rip + utimecmpat.ht]],  rbx
	test	rbx, rbx
	je	.label_1137
.label_1133:
	mov	rsi,  qword ptr [word ptr [rip + utimecmpat.new_dst_res]]
	test	rsi, rsi
	jne	.label_1147
	mov	edi, 0x10
	call	malloc
	mov	rsi, rax
	mov	qword ptr [word ptr [rip + utimecmpat.new_dst_res]],  rsi
	test	rsi, rsi
	je	.label_1153
	mov	dword ptr [rsi + 8], 0x77359400
	mov	byte ptr [rsi + 0xc], 0
.label_1147:
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rsi], rax
	mov	rdi, rbx
	call	hash_insert
	mov	r11, rax
	test	r11, r11
	je	.label_1130
	cmp	r11,  qword ptr [word ptr [rip + utimecmpat.new_dst_res]]
	jne	.label_1139
	mov	qword ptr [word ptr [rip + utimecmpat.new_dst_res]],  0
	jmp	.label_1139
.label_1130:
	mov	rbx,  qword ptr [word ptr [rip + utimecmpat.ht]]
	test	rbx, rbx
	je	.label_1143
.label_1153:
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rsp + 0xe8], rax
	lea	rsi, [rsp + 0xe8]
	mov	rdi, rbx
	call	hash_lookup
	mov	r11, rax
.label_1143:
	test	r11, r11
	jne	.label_1139
.label_1137:
	mov	dword ptr [rsp + 0xf0], 0x77359400
	mov	byte ptr [rsp + 0xf4], 0
	lea	r11, [rsp + 0xe8]
.label_1139:
	mov	r10, qword ptr [r11 + 8]
	movabs	rax, 0xff00000000
	test	r10, rax
	jne	.label_1155
	mov	rbx, qword ptr [rbp + 0x48]
	mov	rax, qword ptr [rbp + 0x50]
	movsxd	r8, dword ptr [rbp + 0x70]
	mov	ecx, ebx
	or	ecx, r14d
	or	ecx, dword ptr [rbp + 0x68]
	and	ecx, 1
	movsxd	rdx, eax
	imul	rsi, rdx, 0x66666667
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x22
	add	esi, edi
	add	esi, esi
	lea	esi, [rsi + rsi*4]
	sub	edx, esi
	imul	rsi, r8, 0x66666667
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x22
	add	esi, edi
	add	esi, esi
	lea	esi, [rsi + rsi*4]
	mov	edi, r8d
	sub	edi, esi
	movsxd	rsi, r15d
	imul	rsi, rsi, 0x66666667
	mov	rbp, rsi
	shr	rbp, 0x3f
	sar	rsi, 0x22
	add	esi, ebp
	add	esi, esi
	lea	esi, [rsi + rsi*4]
	mov	ebp, r15d
	sub	ebp, esi
	or	ebp, edx
	or	ebp, edi
	je	.label_1136
	mov	dword ptr [r11 + 8], 1
	mov	r10d, 1
.label_1141:
	mov	dword ptr [r11 + 8], r10d
	mov	byte ptr [r11 + 0xc], 1
.label_1155:
	cmp	r10d, 0x77359400
	sete	al
	movzx	eax, al
	not	rax
	and	r12, rax
	mov	eax, r13d
	cdq	
	idiv	r10d
	sub	r13d, edx
.label_1142:
	mov	ecx, 0xffffffff
	cmp	r14, r12
	jl	.label_1129
	mov	ecx, 1
	jg	.label_1129
	cmp	r15d, r13d
	mov	ecx, 0xffffffff
	jl	.label_1129
	setg	al
	movzx	ecx, al
.label_1129:
	mov	eax, ecx
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1136:
	mov	ebp, 0xa
	cmp	r10d, 0xa
	jle	.label_1154
	mov	qword ptr [rsp + 8], rbx
	mov	qword ptr [rsp + 0x10], r11
	mov	edx, eax
	mov	qword ptr [rsp + 0x18], rax
	mov	edi, r15d
.label_1146:
	mov	r9, rbp
	movsxd	rsi, edi
	imul	rdi, rsi, 0x66666667
	mov	rsi, rdi
	shr	rsi, 0x3f
	sar	rdi, 0x22
	add	edi, esi
	movsxd	rax, r8d
	imul	r8, rax, 0x66666667
	mov	rsi, r8
	shr	rsi, 0x3f
	sar	r8, 0x22
	add	r8d, esi
	movsxd	rdx, edx
	imul	rdx, rdx, 0x66666667
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x22
	add	edx, esi
	movsxd	r11, edx
	imul	rsi, r11, 0x66666667
	mov	rbp, rsi
	shr	rbp, 0x3f
	sar	rsi, 0x22
	add	esi, ebp
	add	esi, esi
	lea	esi, [rsi + rsi*4]
	sub	r11d, esi
	movsxd	rsi, r8d
	imul	rbp, rsi, 0x66666667
	mov	rbx, rbp
	shr	rbx, 0x3f
	sar	rbp, 0x22
	add	ebp, ebx
	add	ebp, ebp
	lea	ebx, [rbp + rbp*4]
	sub	esi, ebx
	or	esi, r11d
	movsxd	rbp, edi
	imul	rbx, rbp, 0x66666667
	mov	rax, rbx
	shr	rax, 0x3f
	sar	rbx, 0x22
	add	ebx, eax
	add	ebx, ebx
	lea	eax, [rbx + rbx*4]
	sub	ebp, eax
	or	ebp, esi
	jne	.label_1138
	mov	rbp, r9
	cmp	ebp, 0x3b9aca00
	je	.label_1144
	add	ebp, ebp
	lea	ebp, [rbp + rbp*4]
	cmp	ebp, r10d
	jl	.label_1146
	jmp	.label_1150
.label_1154:
	mov	qword ptr [rsp + 0x18], rax
	mov	dword ptr [r11 + 8], ebp
	jmp	.label_1131
.label_1138:
	mov	rbp, r9
.label_1150:
	mov	r11, qword ptr [rsp + 0x10]
	mov	dword ptr [r11 + 8], ebp
	cmp	ebp, 2
	mov	r10d, ebp
	mov	rbx, qword ptr [rsp + 8]
	jl	.label_1141
	jmp	.label_1131
.label_1144:
	xor	ecx, 1
	mov	ebp, 0x3b9aca00
	shl	ebp, cl
	mov	r11, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rsp + 8]
	mov	dword ptr [r11 + 8], ebp
.label_1131:
	cmp	ebp, 0x77359400
	sete	al
	movzx	edi, al
	mov	ecx, 1
	cmp	r12, r14
	jl	.label_1129
	cmp	r14, r12
	setne	al
	cmp	r13d, r15d
	jg	.label_1132
	test	al, al
	je	.label_1129
.label_1132:
	mov	rax, rdi
	not	rax
	and	rax, r12
	mov	ecx, 0xffffffff
	cmp	r14, rax
	jl	.label_1129
	jne	.label_1152
	mov	eax, r13d
	cdq	
	idiv	ebp
	mov	eax, r13d
	sub	eax, edx
	cmp	r15d, eax
	jl	.label_1129
.label_1152:
	mov	qword ptr [rsp + 0xc0], rbx
	mov	rax, qword ptr [rsp + 0x18]
	cdqe	
	mov	qword ptr [rsp + 0xc8], rax
	or	rdi, r14
	mov	qword ptr [rsp + 0xd0], rdi
	movsxd	rax, ebp
	imul	rax, rax, 0x38e38e39
	mov	rcx, rax
	shr	rcx, 0x3f
	sar	rax, 0x21
	add	eax, ecx
	add	eax, r15d
	cdqe	
	mov	qword ptr [rsp + 0xd8], rax
	lea	rdx, [rsp + 0xc0]
	mov	ecx, 0x100
	mov	edi, dword ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rbx, r11
	call	utimensat
	mov	rdx, rbx
	mov	ecx, 0xfffffffe
	test	eax, eax
	jne	.label_1129
	mov	qword ptr [rsp + 0x18], rbp
	mov	qword ptr [rsp + 0x10], rdx
	lea	rcx, [rsp + 0x30]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0x2c]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rdx, rbp
	call	__fxstatat
	mov	ebx, eax
	movsxd	rax, ebx
	mov	rcx, qword ptr [rsp + 0x88]
	xor	rcx, r14
	or	rcx, rax
	movsxd	rax, r15d
	mov	rdx, qword ptr [rsp + 0x90]
	xor	rdx, rax
	or	rdx, rcx
	je	.label_1140
	mov	qword ptr [rsp + 0xd0], r14
	mov	qword ptr [rsp + 0xd8], rax
	lea	rdx, [rsp + 0xc0]
	mov	ecx, 0x100
	mov	edi, dword ptr [rsp + 0x2c]
	mov	rsi, rbp
	call	utimensat
.label_1140:
	test	ebx, ebx
	je	.label_1135
	mov	ecx, 0xfffffffe
	jmp	.label_1129
.label_1135:
	mov	eax, dword ptr [rsp + 0x88]
	and	eax, 1
	neg	eax
	and	eax, 0x3b9aca00
	add	rax, qword ptr [rsp + 0x90]
	movsxd	rdx, eax
	imul	rcx, rdx, 0x66666667
	mov	rsi, rcx
	shr	rsi, 0x3f
	sar	rcx, 0x22
	add	ecx, esi
	add	ecx, ecx
	lea	esi, [rcx + rcx*4]
	mov	ecx, 1
	cmp	edx, esi
	je	.label_1151
	mov	r10d, 1
	mov	r11, qword ptr [rsp + 0x10]
	jmp	.label_1141
.label_1151:
	mov	rbp, qword ptr [rsp + 0x18]
.label_1134:
	mov	r10d, 0x77359400
	cmp	ecx, 0x3b9aca00
	je	.label_1145
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	cmp	ecx, ebp
	je	.label_1148
	cdqe	
	imul	rax, rax, 0x66666667
	mov	rdx, rax
	shr	rdx, 0x3f
	sar	rax, 0x22
	add	eax, edx
	movsxd	rdx, eax
	imul	rsi, rdx, 0x66666667
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x22
	add	esi, edi
	add	esi, esi
	lea	esi, [rsi + rsi*4]
	cmp	edx, esi
	mov	r10d, ecx
	je	.label_1134
.label_1145:
	mov	r11, qword ptr [rsp + 0x10]
	jmp	.label_1141
.label_1148:
	mov	r10d, ebp
	mov	r11, qword ptr [rsp + 0x10]
	jmp	.label_1141
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e9c0

	.globl dev_info_hash
	.type dev_info_hash, @function
dev_info_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40e9d0

	.globl dev_info_compare
	.type dev_info_compare, @function
dev_info_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e9e0
	.globl lutimensat
	.type lutimensat, @function
lutimensat:

	mov	ecx, 0x100
	jmp	utimensat
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e9f0

	.globl fdutimens
	.type fdutimens, @function
fdutimens:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0xf0
	mov	r14, rsi
	mov	r15d, edi
	xor	r12d, r12d
	test	rdx, rdx
	lea	rbx, [rsp + 0xd0]
	cmove	rbx, rdx
	je	.label_1194
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0xd0], xmm0
	movups	xmm0, xmmword ptr [rdx + 0x10]
	movaps	xmmword ptr [rsp + 0xe0], xmm0
	mov	rcx, qword ptr [rbx + 8]
	mov	rdx, rcx
	and	rdx, 0xfffffffffffffffe
	cmp	rcx, 0x3b9aca00
	jb	.label_1160
	cmp	rdx, 0x3ffffffe
	jne	.label_1168
.label_1160:
	mov	rax, qword ptr [rbx + 0x18]
	mov	rdi, rax
	and	rdi, 0xfffffffffffffffe
	cmp	rax, 0x3b9aca00
	jb	.label_1170
	cmp	rdi, 0x3ffffffe
	je	.label_1170
.label_1168:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	ebp, 0xffffffff
	jmp	.label_1166
.label_1170:
	xor	esi, esi
	cmp	rdx, 0x3ffffffe
	mov	edx, 0
	jne	.label_1182
	mov	qword ptr [rbx], 0
	cmp	rcx, 0x3ffffffe
	sete	cl
	movzx	edx, cl
	mov	esi, 1
.label_1182:
	cmp	rdi, 0x3ffffffe
	jne	.label_1188
	mov	qword ptr [rbx + 0x10], 0
	cmp	rax, 0x3ffffffe
	sete	al
	movzx	eax, al
	add	edx, eax
	mov	esi, 1
.label_1188:
	cmp	edx, 1
	sete	al
	movzx	r12d, al
	add	r12d, esi
	mov	ebp, 0xffffffff
	js	.label_1166
.label_1194:
	test	r15d, r15d
	jns	.label_1175
	test	r14, r14
	jne	.label_1175
	call	__errno_location
	mov	dword ptr [rax], 9
	mov	ebp, 0xffffffff
	jmp	.label_1166
.label_1175:
	cmp	dword ptr [dword ptr [rip + utimensat_works_really]],  0
	js	.label_1156
	cmp	r12d, 2
	jne	.label_1158
	lea	rdx, [rsp + 0x40]
	mov	edi, 1
	test	r15d, r15d
	js	.label_1159
	mov	esi, r15d
	call	__fxstat
	jmp	.label_1163
.label_1159:
	mov	rsi, r14
	call	__xstat
.label_1163:
	mov	ebp, 0xffffffff
	test	eax, eax
	jne	.label_1166
	cmp	qword ptr [rbx + 8], 0x3ffffffe
	jne	.label_1167
	movups	xmm0, xmmword ptr [rsp + 0x88]
	movaps	xmmword ptr [rbx], xmm0
	mov	r12d, 3
	jmp	.label_1158
.label_1167:
	mov	r12d, 3
	cmp	qword ptr [rbx + 0x18], 0x3ffffffe
	jne	.label_1158
	movups	xmm0, xmmword ptr [rsp + 0x98]
	movaps	xmmword ptr [rbx + 0x10], xmm0
.label_1158:
	test	r15d, r15d
	jns	.label_1181
	mov	edi, 0xffffff9c
	xor	ecx, ecx
	mov	rsi, r14
	mov	rdx, rbx
	call	utimensat
	mov	ebp, eax
	test	ebp, ebp
	jle	.label_1184
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_1185
.label_1184:
	je	.label_1187
	call	__errno_location
.label_1185:
	cmp	dword ptr [rax], 0x26
	jne	.label_1187
.label_1181:
	test	r15d, r15d
	js	.label_1156
	mov	edi, r15d
	mov	rsi, rbx
	call	futimens
	mov	ebp, eax
	test	ebp, ebp
	jle	.label_1189
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_1191
.label_1187:
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  1
	jmp	.label_1166
.label_1189:
	je	.label_1193
	call	__errno_location
.label_1191:
	cmp	dword ptr [rax], 0x26
	jne	.label_1193
.label_1156:
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  0xffffffff
	mov	dword ptr [dword ptr [rip + lutimensat_works_really]],  0xffffffff
	test	r12d, r12d
	je	.label_1195
	cmp	r12d, 3
	je	.label_1157
	lea	rdx, [rsp + 0x40]
	mov	edi, 1
	test	r15d, r15d
	js	.label_1178
	mov	esi, r15d
	call	__fxstat
	jmp	.label_1161
.label_1195:
	xor	r12d, r12d
	test	rbx, rbx
	jne	.label_1162
	jmp	.label_1165
.label_1193:
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  1
	jmp	.label_1166
.label_1178:
	mov	rsi, r14
	call	__xstat
.label_1161:
	mov	ebp, 0xffffffff
	test	eax, eax
	jne	.label_1166
.label_1157:
	test	rbx, rbx
	je	.label_1172
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, 0x3ffffffe
	je	.label_1174
	cmp	rax, 0x3fffffff
	jne	.label_1177
	cmp	qword ptr [rbx + 0x18], 0x3fffffff
	jne	.label_1192
	xor	r12d, r12d
	jmp	.label_1165
.label_1172:
	xor	r12d, r12d
	jmp	.label_1165
.label_1174:
	xor	ebp, ebp
	cmp	qword ptr [rbx + 0x18], 0x3ffffffe
	je	.label_1166
	lea	rbp, [rbx + 0x18]
	movups	xmm0, xmmword ptr [rsp + 0x88]
	movaps	xmmword ptr [rbx], xmm0
	jmp	.label_1186
.label_1177:
	lea	rbp, [rbx + 0x18]
	jmp	.label_1186
.label_1192:
	lea	rbp, [rbx + 0x18]
	mov	rdi, rbx
	call	gettime
.label_1186:
	mov	rax, qword ptr [rbp]
	cmp	rax, 0x3fffffff
	je	.label_1190
	cmp	rax, 0x3ffffffe
	jne	.label_1162
	mov	rax, qword ptr [rsp + 0x98]
	mov	rcx, qword ptr [rsp + 0xa0]
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx + 0x18], rcx
	jmp	.label_1162
.label_1190:
	add	rbx, 0x10
	mov	rdi, rbx
	call	gettime
.label_1162:
	mov	rax, qword ptr [rsp + 0xd0]
	mov	qword ptr [rsp + 0x20], rax
	movabs	rcx, 0x20c49ba5e353f7cf
	mov	rax, rcx
	imul	qword ptr [rsp + 0xd8]
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 7
	add	rdx, rax
	mov	qword ptr [rsp + 0x28], rdx
	mov	rax, qword ptr [rsp + 0xe0]
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, rcx
	imul	qword ptr [rsp + 0xe8]
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 7
	add	rdx, rax
	mov	qword ptr [rsp + 0x38], rdx
	lea	r12, [rsp + 0x20]
.label_1165:
	test	r15d, r15d
	js	.label_1173
	xor	ebp, ebp
	xor	esi, esi
	mov	edi, r15d
	mov	rdx, r12
	call	futimesat
	test	eax, eax
	je	.label_1180
	mov	ebp, 0xffffffff
	test	r14, r14
	je	.label_1166
	mov	rdi, r14
	mov	rsi, r12
	call	utimes
	jmp	.label_1183
.label_1173:
	mov	edi, 0xffffff9c
	mov	rsi, r14
	mov	rdx, r12
	call	futimesat
.label_1183:
	mov	ebp, eax
.label_1166:
	mov	eax, ebp
	add	rsp, 0xf0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1180:
	test	r12, r12
	je	.label_1166
	mov	rbx, qword ptr [r12 + 8]
	mov	r14, qword ptr [r12 + 0x18]
	cmp	rbx, 0x7a11f
	setg	al
	cmp	r14, 0x7a11f
	setg	cl
	or	cl, al
	movzx	eax, cl
	cmp	eax, 1
	jne	.label_1166
	lea	rdx, [rsp + 0x40]
	mov	edi, 1
	mov	esi, r15d
	call	__fxstat
	test	eax, eax
	jne	.label_1166
	lea	rdx, [r12 + 0x10]
	mov	rcx, qword ptr [rsp + 0x88]
	mov	rax, qword ptr [rsp + 0x98]
	sub	rcx, qword ptr [r12]
	sub	rax, qword ptr [r12 + 0x10]
	movups	xmm0, xmmword ptr [r12]
	movaps	xmmword ptr [rsp], xmm0
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	xor	edx, edx
	cmp	rbx, 0x7a120
	jl	.label_1164
	cmp	rcx, 1
	jne	.label_1164
	xor	edx, edx
	cmp	qword ptr [rsp + 0x90], 0
	jne	.label_1164
	lea	rdx, [rsp]
	mov	qword ptr [rsp + 8], 0
.label_1164:
	cmp	r14, 0x7a120
	jl	.label_1171
	cmp	rax, 1
	jne	.label_1171
	cmp	qword ptr [rsp + 0xa0], 0
	je	.label_1169
.label_1171:
	test	rdx, rdx
	jne	.label_1176
	jmp	.label_1179
.label_1169:
	lea	rdx, [rsp]
	mov	qword ptr [rsp + 0x18], 0
.label_1176:
	xor	esi, esi
	mov	edi, r15d
	call	futimesat
.label_1179:
	xor	ebp, ebp
	jmp	.label_1166
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40eea0

	.globl utimens
	.type utimens, @function
utimens:
	mov	rax, rsi
	mov	rcx, rdi
	mov	edi, 0xffffffff
	mov	rsi, rcx
	mov	rdx, rax
	jmp	fdutimens
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40eec0

	.globl lutimens
	.type lutimens, @function
lutimens:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0xb0
	mov	r14, rdi
	xor	ebx, ebx
	test	rsi, rsi
	lea	r15, [rsp + 0x90]
	mov	r12, r15
	cmove	r12, rsi
	je	.label_1209
	movups	xmm0, xmmword ptr [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm0
	movups	xmm0, xmmword ptr [rsi + 0x10]
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	mov	rcx, qword ptr [r12 + 8]
	mov	rdx, rcx
	and	rdx, 0xfffffffffffffffe
	cmp	rcx, 0x3b9aca00
	jb	.label_1215
	cmp	rdx, 0x3ffffffe
	jne	.label_1200
.label_1215:
	mov	rax, qword ptr [r12 + 0x18]
	mov	rdi, rax
	and	rdi, 0xfffffffffffffffe
	cmp	rax, 0x3b9aca00
	jb	.label_1203
	cmp	rdi, 0x3ffffffe
	je	.label_1203
.label_1200:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_1217:
	mov	ebp, 0xffffffff
	jmp	.label_1196
.label_1203:
	xor	esi, esi
	cmp	rdx, 0x3ffffffe
	mov	edx, 0
	jne	.label_1216
	mov	qword ptr [r12], 0
	cmp	rcx, 0x3ffffffe
	sete	cl
	movzx	edx, cl
	mov	esi, 1
.label_1216:
	cmp	rdi, 0x3ffffffe
	jne	.label_1218
	mov	qword ptr [r12 + 0x10], 0
	cmp	rax, 0x3ffffffe
	sete	al
	movzx	eax, al
	add	edx, eax
	mov	esi, 1
.label_1218:
	cmp	edx, 1
	sete	al
	movzx	ebx, al
	add	ebx, esi
	mov	ebp, 0xffffffff
	js	.label_1196
.label_1209:
	cmp	dword ptr [dword ptr [rip + lutimensat_works_really]],  0
	js	.label_1207
	cmp	ebx, 2
	jne	.label_1201
	lea	rdx, [rsp]
	mov	edi, 1
	mov	rsi, r14
	call	__lxstat
	mov	ebp, 0xffffffff
	test	eax, eax
	jne	.label_1196
	cmp	qword ptr [r12 + 8], 0x3ffffffe
	jne	.label_1214
	movups	xmm0, xmmword ptr [rsp + 0x48]
	movaps	xmmword ptr [r12], xmm0
	mov	ebx, 3
	jmp	.label_1201
.label_1214:
	mov	ebx, 3
	cmp	qword ptr [r12 + 0x18], 0x3ffffffe
	jne	.label_1201
	movups	xmm0, xmmword ptr [rsp + 0x58]
	movaps	xmmword ptr [r12 + 0x10], xmm0
.label_1201:
	mov	edi, 0xffffff9c
	mov	ecx, 0x100
	mov	rsi, r14
	mov	rdx, r12
	call	utimensat
	mov	ebp, eax
	test	ebp, ebp
	jle	.label_1206
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_1208
.label_1206:
	je	.label_1210
	call	__errno_location
.label_1208:
	cmp	dword ptr [rax], 0x26
	jne	.label_1210
.label_1207:
	mov	dword ptr [dword ptr [rip + lutimensat_works_really]],  0xffffffff
	test	ebx, ebx
	je	.label_1211
	cmp	ebx, 3
	je	.label_1212
	lea	rdx, [rsp]
	mov	edi, 1
	mov	rsi, r14
	call	__lxstat
	mov	ebp, 0xffffffff
	test	eax, eax
	jne	.label_1196
.label_1212:
	xor	edx, edx
	test	r12, r12
	je	.label_1197
	mov	rax, qword ptr [r12 + 8]
	cmp	rax, 0x3ffffffe
	je	.label_1198
	cmp	rax, 0x3fffffff
	jne	.label_1202
	xor	edx, edx
	cmp	qword ptr [r12 + 0x18], 0x3fffffff
	je	.label_1197
	lea	rbx, [r12 + 0x18]
	mov	rdi, r12
	call	gettime
	jmp	.label_1199
.label_1210:
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  1
	mov	dword ptr [dword ptr [rip + lutimensat_works_really]],  1
	jmp	.label_1196
.label_1211:
	lea	rdx, [rsp]
	mov	edi, 1
	mov	rsi, r14
	call	__lxstat
	mov	ebp, 0xffffffff
	test	eax, eax
	mov	rdx, r12
	jne	.label_1196
	jmp	.label_1197
.label_1198:
	xor	ebp, ebp
	cmp	qword ptr [r12 + 0x18], 0x3ffffffe
	je	.label_1196
	lea	rbx, [r12 + 0x18]
	movups	xmm0, xmmword ptr [rsp + 0x48]
	movaps	xmmword ptr [r12], xmm0
	jmp	.label_1199
.label_1202:
	lea	rbx, [r12 + 0x18]
.label_1199:
	mov	rax, qword ptr [rbx]
	cmp	rax, 0x3fffffff
	je	.label_1204
	cmp	rax, 0x3ffffffe
	jne	.label_1205
	mov	rax, qword ptr [rsp + 0x58]
	mov	rcx, qword ptr [rsp + 0x60]
	mov	qword ptr [r12 + 0x10], rax
	mov	qword ptr [r12 + 0x18], rcx
	mov	rdx, r15
	jmp	.label_1197
.label_1204:
	add	r12, 0x10
	mov	rdi, r12
	call	gettime
	mov	rdx, r15
	jmp	.label_1197
.label_1205:
	mov	rdx, r15
.label_1197:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0xa000
	jne	.label_1213
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_1217
.label_1213:
	mov	edi, 0xffffffff
	mov	rsi, r14
	call	fdutimens
	mov	ebp, eax
.label_1196:
	mov	eax, ebp
	add	rsp, 0xb0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f1b0

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
	je	.label_1225
	mov	edx, OFFSET FLAT:.str_15
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_1224
.label_1225:
	mov	edx, OFFSET FLAT:.str.1_11
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_1224:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_6
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
	ja	.label_1220
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_1221]]
.label_1798:
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
.label_1220:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_2
	jmp	.label_1219
.label_1799:
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
.label_1800:
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
.label_1801:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_1226
.label_1802:
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
	jmp	.label_1228
.label_1803:
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
	jmp	.label_1223
.label_1804:
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
.label_1223:
	mov	qword ptr [rsp + 0x10], rdi
.label_1228:
	mov	qword ptr [rsp + 8], rsi
.label_1226:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_1227
.label_1806:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_3
.label_1219:
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
	jmp	.label_1222
.label_1805:
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
.label_1222:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_1227:
	call	__fprintf_chk
.label_1797:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f4a0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_1229:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_1229
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f4d0
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_1232:
	cmp	r10d, 0x28
	ja	.label_1230
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1231
	nop	word ptr cs:[rax + rax]
.label_1230:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1231:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_1233
	inc	r9
	cmp	r9, 0xa
	jb	.label_1232
.label_1233:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40f530

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x128
	test	al, al
	je	.label_1234
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_1234:
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
.label_1238:
	cmp	r8d, 0x28
	ja	.label_1235
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_1237
	nop	
.label_1235:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_1237:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_1236
	inc	r9
	cmp	r9, 0xa
	jb	.label_1238
.label_1236:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f630
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_3
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
	mov	esi, OFFSET FLAT:.str.19_2
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
	#Procedure 0x40f6b0

	.globl can_write_any_file
	.type can_write_any_file, @function
can_write_any_file:
	movzx	eax,  byte ptr [byte ptr [rip + can_write_any_file.initialized]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_1239
	mov	al,  byte ptr [byte ptr [rip + can_write_any_file.can_write]]
	jmp	.label_1240
.label_1239:
	push	rax
	call	geteuid
	test	eax, eax
	sete	al
	sete	byte ptr [byte ptr [rip + can_write_any_file.can_write]]
	mov	byte ptr [byte ptr [rip + can_write_any_file.initialized]],  1
	add	rsp, 8
.label_1240:
	test	al, al
	setne	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f6f0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_1241
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_1242
	test	rax, rax
	je	.label_1241
.label_1242:
	pop	rbx
	ret	
.label_1241:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f730

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1243
	test	rax, rax
	je	.label_1244
.label_1243:
	pop	rbx
	ret	
.label_1244:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f750
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_1245
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_1246
	test	rbx, rbx
	jne	.label_1246
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1246:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1247
	test	rax, rax
	je	.label_1245
.label_1247:
	pop	rbx
	ret	
.label_1245:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f7a0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_1248
	test	rbx, rbx
	jne	.label_1248
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1248:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1250
	test	rax, rax
	je	.label_1249
.label_1250:
	pop	rbx
	ret	
.label_1249:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40f7d0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1254
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_1255
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_1251
.label_1254:
	test	rcx, rcx
	jne	.label_1257
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_1257:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_1256
.label_1251:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_1252
	test	rbx, rbx
	jne	.label_1252
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1252:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1253
	test	rax, rax
	je	.label_1255
.label_1253:
	pop	rbx
	ret	
.label_1255:
	call	xalloc_die
.label_1256:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f870
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1258
	test	rax, rax
	je	.label_1259
.label_1258:
	pop	rbx
	ret	
.label_1259:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f890
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1262
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_1264
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_1261
	call	free
	xor	eax, eax
	jmp	.label_1263
.label_1262:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_1260
	mov	qword ptr [rsi], rbx
.label_1261:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1263
	test	rax, rax
	je	.label_1260
.label_1263:
	pop	rbx
	ret	
.label_1260:
	call	xalloc_die
.label_1264:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f900
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
	je	.label_1266
	test	r14, r14
	je	.label_1265
.label_1266:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1265:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f940
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_1267
	call	rpl_calloc
	test	rax, rax
	je	.label_1267
	pop	rcx
	ret	
.label_1267:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f970

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
	je	.label_1268
	test	r15, r15
	je	.label_1269
.label_1268:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1269:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40f9b0

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
	je	.label_1271
	test	r15, r15
	je	.label_1270
.label_1271:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1270:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40fa00

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_12
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
	.align	16
	#Procedure 0x40fa30

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	test	rax, rax
	je	.label_1273
	pop	rcx
	ret	
.label_1273:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1272
	mov	edi, OFFSET FLAT:.str_16
	mov	esi, OFFSET FLAT:.str.1_13
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xfts_open
	call	__assert_fail
.label_1272:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fa70
	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:

	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	je	.label_1274
	cmp	ecx, 0x11
	jne	.label_1275
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_1274:
	ret	
.label_1275:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40fa90

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
	jle	.label_1276
	mov	rdi, qword ptr [rsp + 8]
	movzx	ecx, byte ptr [rax + rdi - 1]
	cmp	ecx, 0xa
	jne	.label_1278
	mov	byte ptr [rdi + rax - 1], 0
	mov	rdi, qword ptr [rsp + 8]
.label_1278:
	call	rpmatch
	test	eax, eax
	setg	bl
	jmp	.label_1277
.label_1276:
	xor	ebx, ebx
.label_1277:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	al, bl
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40fb00

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_1279
	test	rsi, rsi
	mov	ecx, 1
	je	.label_1280
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_1280
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_1279:
	mov	ecx, 1
.label_1280:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fb50

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1281
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1281
	test	byte ptr [rbx + 1], 1
	je	.label_1281
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_1281:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40fb90

	.globl freadahead
	.type freadahead, @function
freadahead:
	mov	rcx, qword ptr [rdi + 0x28]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	ja	.label_1282
	mov	rax, qword ptr [rdi + 0x10]
	sub	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	test	byte ptr [rdi + 1], 1
	je	.label_1283
	mov	rcx, qword ptr [rdi + 0x58]
	sub	rcx, qword ptr [rdi + 0x48]
.label_1283:
	add	rax, rcx
.label_1282:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fbc0

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
	jne	.label_1284
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1284
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1285
.label_1284:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_1285:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_1286
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1286:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40fc30

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
	jae	.label_1296
	mov	eax, r15d
	and	eax, 0x204
	cmp	eax, 0x204
	je	.label_1296
	test	r15b, 0x12
	je	.label_1296
	mov	edi, 0x80
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_1302
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
	je	.label_1308
	mov	r14, rbx
	lea	rbx, [r12 + 8]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1318:
	call	strlen
	cmp	rax, rbp
	cmova	rbp, rax
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_1318
	inc	rbp
	mov	rbx, r14
.label_1308:
	cmp	rbp, 0x1000
	mov	esi, 0x1000
	cmova	rsi, rbp
	add	rsi, 0x100
	mov	qword ptr [rbx + 0x30], rsi
	xor	edi, edi
	call	realloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1292
	mov	r14d, r15d
	mov	qword ptr [rbx + 0x20], rbp
	mov	qword ptr [rsp + 0x18], rbx
	mov	r15, qword ptr [r12]
	mov	qword ptr [rsp + 0x30], r12
	xor	r12d, r12d
	test	r15, r15
	je	.label_1299
	mov	edi, 0x110
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_1771
