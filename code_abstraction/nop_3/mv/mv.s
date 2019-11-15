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
	jmp	.label_18
.label_1814:
	mov	byte ptr [rsp + 0x46], 1
	nop	word ptr cs:[rax + rax]
.label_18:
	mov	edx, OFFSET FLAT:.str.12
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r12
	call	getopt_long
	cmp	eax, 0x68
	jg	.label_37
	cmp	eax, 0x59
	jg	.label_38
	cmp	eax, 0x52
	jle	.label_39
	cmp	eax, 0x53
	je	.label_41
	mov	r14b, 1
	cmp	eax, 0x54
	je	.label_18
	jmp	.label_11
.label_37:
	lea	ecx, [rax - 0x6e]
	cmp	ecx, 8
	ja	.label_44
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_46]]
.label_1811:
	mov	dword ptr [rsp + 0x20], 2
	jmp	.label_18
	nop	dword ptr [rax]
.label_38:
	cmp	eax, 0x5a
	je	.label_18
	cmp	eax, 0x62
	je	.label_17
	cmp	eax, 0x66
	jne	.label_11
	mov	dword ptr [rsp + 0x20], 1
	jmp	.label_18
.label_44:
	cmp	eax, 0x69
	je	.label_9
	cmp	eax, 0x80
	jne	.label_11
	mov	byte ptr [byte ptr [rip + remove_trailing_slashes]],  1
	jmp	.label_18
.label_1812:
	cmp	qword ptr [rsp + 0x10], 0
	jne	.label_15
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	edi, 1
	lea	rdx, [rsp + 0x68]
	call	__xstat
	test	eax, eax
	jne	.label_20
	mov	eax, dword ptr [rsp + 0x80]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0x4000
	jne	.label_22
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_18
.label_1813:
	mov	byte ptr [rsp + 0x45], 1
	jmp	.label_18
.label_41:
	mov	r13,  qword ptr [word ptr [rip + optarg]]
	mov	bl, 1
	jmp	.label_18
.label_17:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	test	rax, rax
	cmovne	r15, rax
	mov	bl, 1
	jmp	.label_18
.label_9:
	mov	dword ptr [rsp + 0x20], 3
	jmp	.label_18
.label_39:
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
	jle	.label_29
	test	r14b, r14b
	je	.label_47
	cmp	qword ptr [rsp + 0x10], 0
	jne	.label_28
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	cmp	ebp, 3
	jl	.label_33
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
	jne	.label_33
	cmp	ebp, 1
	jle	.label_21
	cmp	ebp, 2
	jne	.label_24
	mov	rsi, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 8]
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	r8d, 1
	call	renameatu
	xor	ecx, ecx
	test	eax, eax
	je	.label_32
	call	__errno_location
	mov	ecx, dword ptr [rax]
.label_32:
	mov	dword ptr [rsp + 0x4c], ecx
	jmp	.label_35
.label_24:
	mov	ecx, dword ptr [rsp + 0x4c]
.label_35:
	test	ecx, ecx
	je	.label_36
	mov	r14, r13
	mov	r13, qword ptr [r12 + rbp*8 - 8]
	lea	rdx, [rsp + 0x68]
	mov	edi, 1
	mov	rsi, r13
	call	__xstat
	test	eax, eax
	je	.label_19
	call	__errno_location
	mov	eax, dword ptr [rax]
	test	eax, eax
	je	.label_19
	cmp	eax, 2
	jne	.label_26
	mov	r13, r14
	jmp	.label_36
.label_19:
	mov	eax, dword ptr [rsp + 0x80]
	and	eax, 0xf000
	cmp	eax, 0x4000
	mov	r13, r14
	jne	.label_36
	mov	dword ptr [rsp + 0x4c], 0xffffffff
	mov	rax, qword ptr [r12 + rbp*8 - 8]
	mov	qword ptr [rsp + 0x10], rax
	dec	rbp
	jmp	.label_33
.label_36:
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	cmp	ebp, 3
	jge	.label_48
.label_33:
	mov	eax, dword ptr [rsp + 0x20]
	cmp	eax, 2
	jne	.label_10
	mov	byte ptr [rsp + 0x45], 0
	test	bl, bl
	je	.label_10
	cmp	eax, 2
	je	.label_12
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
	je	.label_23
	cmp	ebp, 2
	jl	.label_25
	lea	rdi, [rsp + 0x18]
	call	dest_info_init
	jmp	.label_30
.label_23:
	mov	byte ptr [rsp + 0x49], 1
	mov	rbx, qword ptr [r12]
	mov	rbp, qword ptr [r12 + 8]
	movzx	eax,  byte ptr [byte ptr [rip + remove_trailing_slashes]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_31
	mov	rdi, rbx
	call	strip_trailing_slashes
.label_31:
	lea	rdx, [rsp + 0x18]
	mov	rdi, rbx
	mov	rsi, rbp
	call	do_move
	mov	r15b, al
	jmp	.label_40
.label_25:
	mov	r15b, 1
	test	ebp, ebp
	jle	.label_40
.label_30:
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
	jne	.label_34
	mov	rdi, rbp
	call	strip_trailing_slashes
.label_34:
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
.label_40:
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
.label_20:
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
.label_22:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
.label_27:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_29:
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
.label_28:
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
.label_12:
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
.label_21:
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
	jmp	.label_27
.label_26:
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
	cmp	byte ptr [r12 + 8], 0
	mov	esi, 0x218
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
.label_1672:
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
.label_1670:
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
.label_1671:
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
.label_1673:
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
	je	.label_147
	cmp	byte ptr [rbx + 0x26], 0
	je	.label_149
.label_147:
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
	jmp	.label_148
.label_150:
	cmp	byte ptr [rbx + 0x21], 0
	je	.label_148
	xor	cl, 1
	jne	.label_148
.label_149:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_148:
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
	je	.label_278
	mov	rbx, r9
	test	r15d, r15d
	jns	.label_237
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	r8d, 1
	mov	rsi, r12
	mov	rcx, qword ptr [rbp - 0x318]
	call	renameatu
	xor	r15d, r15d
	test	eax, eax
	je	.label_237
	call	__errno_location
	mov	r15d, dword ptr [rax]
.label_237:
	test	r15d, r15d
	sete	r14b
	test	r13, r13
	je	.label_287
	mov	byte ptr [r13], r14b
.label_287:
	mov	r9, rbx
.label_278:
	test	r15d, r15d
	je	.label_299
	cmp	r15d, 0x11
	jne	.label_293
	cmp	dword ptr [r9 + 8], 2
	je	.label_294
	jmp	.label_293
.label_299:
	cmp	byte ptr [r9 + 0x31], 0
	jne	.label_294
.label_293:
	test	r15d, r15d
	mov	rbx, r12
	cmove	rbx, qword ptr [rbp - 0x318]
	cmp	dword ptr [r9 + 4], 2
	mov	r13, r9
	lea	rdx, [rbp - 0x280]
	mov	edi, 1
	mov	rsi, rbx
	jne	.label_298
	call	__lxstat
	jmp	.label_381
.label_298:
	call	__xstat
.label_381:
	test	eax, eax
	mov	r9, r13
	je	.label_307
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_259:
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
.label_167:
	mov	al, r13b
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_307:
	mov	ecx, dword ptr [rbp - 0x268]
	mov	eax, ecx
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_474
	cmp	byte ptr [r9 + 0x2a], 0
	mov	r13, qword ptr [rbp + 0x28]
	jne	.label_294
	cmp	byte ptr [r9 + 0x19], 0
	je	.label_327
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_1
	jmp	.label_331
.label_474:
	mov	r13, qword ptr [rbp + 0x28]
.label_294:
	mov	dl, byte ptr [rbp + 0x10]
	test	dl, dl
	je	.label_333
	mov	rdi, qword ptr [r9 + 0x48]
	test	rdi, rdi
	je	.label_333
	mov	eax, ecx
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_339
	mov	dword ptr [rbp - 0x334], ecx
	jmp	.label_342
.label_339:
	mov	dword ptr [rbp - 0x334], ecx
	cmp	dword ptr [r9], 0
	je	.label_346
.label_342:
	mov	bl, dl
	mov	r13, r9
.label_165:
	lea	rdx, [rbp - 0x280]
	mov	rsi, r12
	call	record_file
	mov	r9, r13
	mov	r13, qword ptr [rbp + 0x28]
	mov	dl, bl
	mov	ecx, dword ptr [rbp - 0x334]
.label_333:
	mov	qword ptr [rbp - 0x320], r12
	mov	eax, dword ptr [r9 + 4]
	mov	r12b, 1
	cmp	eax, 4
	je	.label_354
	cmp	eax, 3
	sete	r12b
	and	r12b, dl
.label_354:
	xor	r8d, r8d
	test	r14b, r14b
	je	.label_358
	xor	eax, eax
	mov	qword ptr [rbp - 0x350], rax
.label_169:
	test	dl, dl
	je	.label_352
	cmp	qword ptr [r9 + 0x40], 0
	je	.label_352
	cmp	byte ptr [r9 + 0x18], 0
	jne	.label_352
	cmp	dword ptr [r9], 0
	jne	.label_352
	mov	qword ptr [rbp - 0x348], r14
	mov	r14, r9
	mov	r13d, ecx
	test	r8b, r8b
	jne	.label_362
	lea	rbx, [rbp - 0xd0]
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x318]
	mov	rdx, rbx
	call	__lxstat
	test	eax, eax
	jne	.label_181
	jmp	.label_371
.label_358:
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
	je	.label_380
	cmp	eax, 0x4000
	je	.label_380
	cmp	eax, 0xa000
	je	.label_380
.label_376:
	mov	bl, 1
	cmp	byte ptr [r9 + 0x18], 0
	jne	.label_380
	cmp	byte ptr [r9 + 0x2c], 0
	jne	.label_380
	cmp	byte ptr [r9 + 0x17], 0
	jne	.label_380
	cmp	dword ptr [r9], 0
	jne	.label_380
	cmp	byte ptr [r9 + 0x15], 0
	setne	bl
.label_380:
	mov	r12, r9
	movzx	r8d, bl
	shl	r8d, 8
	lea	rcx, [rbp - 0x310]
	mov	edi, 1
	mov	esi, 0xffffff9c
	call	__fxstatat
	test	eax, eax
	je	.label_398
	mov	r14, r12
	mov	r13d, dword ptr [rbp - 0x334]
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	al, 1
	cmp	ebx, 2
	je	.label_402
	mov	r12, qword ptr [rbp - 0x318]
	cmp	ebx, 0x28
	jne	.label_275
	cmp	byte ptr [r14 + 0x16], 0
	je	.label_275
	xor	eax, eax
.label_402:
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
	jne	.label_169
	jmp	.label_375
.label_398:
	xor	r14d, r14d
	mov	r9, r12
	mov	r13, qword ptr [rbp + 0x28]
	mov	r12b, byte ptr [rbp - 0x340]
	mov	r8, rbx
	mov	ecx, dword ptr [rbp - 0x334]
.label_375:
	cmp	dword ptr [r9 + 8], 2
	jne	.label_417
	xor	edi, edi
	jmp	.label_159
.label_417:
	mov	dword ptr [rbp - 0x334], ecx
	mov	rax, qword ptr [rbp - 0x278]
	cmp	rax, qword ptr [rbp - 0x308]
	jne	.label_419
	mov	qword ptr [rbp - 0x348], r14
	mov	rax, qword ptr [rbp - 0x280]
	cmp	rax, qword ptr [rbp - 0x310]
	jne	.label_422
	mov	dil, 1
	cmp	byte ptr [r9 + 0x17], 0
	jne	.label_163
	jmp	.label_428
.label_275:
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
	jmp	.label_167
.label_419:
	mov	qword ptr [rbp - 0x348], r14
	xor	edi, edi
	jmp	.label_428
.label_346:
	mov	bl, dl
	mov	r13, r9
	lea	rdx, [rbp - 0x280]
	mov	rsi, r12
	call	seen_file
	test	al, al
	je	.label_442
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
	jmp	.label_167
.label_422:
	xor	edi, edi
.label_428:
	cmp	dword ptr [r9 + 4], 2
	jne	.label_450
	mov	rbx, r8
	mov	eax, dword ptr [rbp - 0x268]
	mov	ecx, eax
	and	ecx, 0xf000
	lea	rsi, [rbp - 0x280]
	lea	r15, [rbp - 0x310]
	cmp	ecx, 0xa000
	jne	.label_408
	mov	ecx, 0xf000
	and	ecx, dword ptr [rbp - 0x2f8]
	cmp	ecx, 0xa000
	jne	.label_408
	mov	r15d, edi
	mov	r14, r9
	mov	rdi, qword ptr [rbp - 0x320]
	mov	rsi, qword ptr [rbp - 0x318]
	call	same_name
	test	al, al
	jne	.label_168
	mov	r9, r14
	cmp	dword ptr [r9], 0
	jne	.label_476
	test	r15b, r15b
	mov	r8, rbx
	je	.label_480
	cmp	byte ptr [r9 + 0x18], 0
	mov	dil, 1
	mov	ecx, dword ptr [rbp - 0x334]
	mov	r14, qword ptr [rbp - 0x348]
	jne	.label_168
	jmp	.label_159
.label_450:
	test	dil, dil
	je	.label_485
	mov	rbx, r8
	mov	r14, r9
	lea	r15, [rbp - 0xd0]
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x318]
	mov	rdx, r15
	call	__lxstat
	test	eax, eax
	jne	.label_490
	lea	rdx, [rbp - 0x160]
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x320]
	call	__lxstat
	test	eax, eax
	je	.label_160
.label_490:
	xor	edi, edi
	mov	r9, r14
	mov	r8, rbx
	jmp	.label_163
.label_442:
	mov	rdi, qword ptr [r13 + 0x48]
	jmp	.label_165
.label_327:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_1
.label_331:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	r13d, r13d
.label_184:
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_449:
	mov	rdx, rbx
	call	error
	jmp	.label_167
.label_485:
	xor	edi, edi
	jmp	.label_163
.label_362:
	lea	rbx, [rbp - 0x310]
.label_371:
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	jne	.label_181
	mov	rdi, qword ptr [r14 + 0x40]
	mov	rsi, qword ptr [rbp - 0x318]
	mov	rdx, rbx
	call	seen_file
	test	al, al
	je	.label_181
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26_0
	jmp	.label_191
.label_181:
	mov	ecx, r13d
	mov	r9, r14
	mov	r14, qword ptr [rbp - 0x348]
.label_352:
	mov	byte ptr [rbp - 0x340], r12b
	mov	qword ptr [rbp - 0x348], r14
	cmp	byte ptr [r9 + 0x2e], 0
	je	.label_198
	mov	eax, ecx
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_198
	mov	al, byte ptr [r9 + 0x18]
	test	al, al
	jne	.label_198
	mov	rdi, qword ptr [rbp - 0x320]
	mov	rsi, qword ptr [rbp - 0x318]
	mov	rdx, qword ptr [rbp - 0x350]
	mov	r14, r9
	mov	ebx, ecx
	call	emit_verbose
	mov	ecx, ebx
	mov	r9, r14
.label_198:
	mov	r14, r9
	mov	r13d, ecx
	xor	edx, edx
	test	r15d, r15d
	je	.label_212
	mov	ebx, r13d
	and	ebx, 0xf000
	cmp	ebx, 0x4000
	jne	.label_216
	mov	al, byte ptr [r14 + 0x2a]
	test	al, al
	je	.label_216
	mov	rax, qword ptr [rbp - 0x280]
	mov	rcx, qword ptr [rbp - 0x278]
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_221
	mov	rdi, qword ptr [rbp - 0x318]
	mov	rsi, rcx
	mov	rdx, rax
	jmp	.label_224
.label_216:
	cmp	byte ptr [r14 + 0x18], 0
	je	.label_228
	cmp	qword ptr [rbp - 0x270], 1
	jne	.label_228
	mov	rsi, qword ptr [rbp - 0x280]
	mov	rdi, qword ptr [rbp - 0x278]
	call	src_to_dest_lookup
	jmp	.label_234
.label_228:
	xor	edx, edx
	cmp	byte ptr [r14 + 0x22], 0
	je	.label_212
	xor	edx, edx
	cmp	byte ptr [r14 + 0x17], 0
	jne	.label_212
	cmp	qword ptr [rbp - 0x270], 1
	ja	.label_235
	mov	ecx, dword ptr [r14 + 4]
	cmp	ecx, 3
	sete	al
	xor	edx, edx
	cmp	ecx, 4
	je	.label_235
	and	al, byte ptr [rbp + 0x10]
	je	.label_212
.label_235:
	mov	rdx, qword ptr [rbp - 0x280]
	mov	rsi, qword ptr [rbp - 0x278]
	mov	rdi, qword ptr [rbp - 0x318]
.label_224:
	call	remember_copied
	jmp	.label_234
.label_221:
	mov	rdi, rcx
	mov	rsi, rax
	call	src_to_dest_lookup
.label_234:
	mov	r12, rax
	xor	edx, edx
	test	r12, r12
	je	.label_212
	cmp	ebx, 0x4000
	jne	.label_245
	mov	rdi, qword ptr [rbp - 0x320]
	mov	rsi, r12
	call	same_name
	test	al, al
	je	.label_249
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
	jmp	.label_264
.label_245:
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
	jne	.label_167
	jmp	.label_188
.label_249:
	mov	rdi, qword ptr [rbp - 0x318]
	mov	rsi, r12
	call	same_name
	test	al, al
	je	.label_280
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
	je	.label_167
	mov	al, byte ptr [r14 + 0x18]
	test	al, al
	je	.label_167
	mov	rax, qword ptr [rbp + 0x28]
	mov	byte ptr [rax], 1
	jmp	.label_167
.label_280:
	mov	ecx, dword ptr [r14 + 4]
	cmp	ecx, 3
	sete	al
	cmp	ecx, 4
	je	.label_202
	mov	cl, byte ptr [rbp + 0x10]
	and	al, cl
	jne	.label_202
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
.label_264:
	mov	rdx, r12
	mov	r10, r14
	jmp	.label_188
.label_202:
	mov	rdx, r12
.label_212:
	cmp	byte ptr [r14 + 0x18], 0
	mov	r12, qword ptr [rbp - 0x320]
	je	.label_305
	cmp	r15d, 0x11
	jne	.label_451
	mov	rbx, rdx
	mov	rdi, r12
	mov	rsi, qword ptr [rbp - 0x318]
	call	rename
	test	eax, eax
	je	.label_313
	call	__errno_location
	mov	r15d, dword ptr [rax]
	mov	rdx, rbx
.label_451:
	cmp	r15d, 0x16
	je	.label_316
	cmp	r15d, 0x12
	je	.label_320
	test	r15d, r15d
	jne	.label_412
.label_313:
	cmp	byte ptr [r14 + 0x2e], 0
	mov	r13, qword ptr [rbp - 0x318]
	je	.label_323
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
.label_323:
	cmp	byte ptr [r14 + 0x21], 0
	mov	rbx, qword ptr [rbp + 0x28]
	je	.label_335
	cmp	byte ptr [r14 + 0x23], 0
	je	.label_340
	cmp	byte ptr [r14 + 0x26], 0
	je	.label_341
.label_340:
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
	jmp	.label_335
.label_320:
	mov	qword ptr [rbp - 0x360], rdx
	mov	ebx, r13d
	and	ebx, 0xf000
	cmp	ebx, 0x4000
	jne	.label_356
	mov	r12, qword ptr [rbp - 0x318]
	mov	rdi, r12
	call	rmdir
	jmp	.label_361
.label_316:
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
	jmp	.label_167
.label_412:
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
	jmp	.label_385
.label_356:
	mov	r12, qword ptr [rbp - 0x318]
	mov	rdi, r12
	call	unlink
.label_361:
	test	eax, eax
	je	.label_392
	call	__errno_location
	mov	r15d, dword ptr [rax]
	cmp	r15d, 2
	jne	.label_395
.label_392:
	cmp	ebx, 0x4000
	mov	al, 1
	mov	qword ptr [rbp - 0x348], rax
	je	.label_396
	mov	al, byte ptr [r14 + 0x2e]
	test	al, al
	mov	rbx, r12
	je	.label_400
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
	jmp	.label_410
.label_395:
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
.label_385:
	call	error
	mov	rsi, qword ptr [rbp - 0x280]
	mov	rdi, qword ptr [rbp - 0x278]
	call	forget_created
	jmp	.label_167
.label_341:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_335:
	mov	rsi, r13
	test	rbx, rbx
	je	.label_429
	mov	byte ptr [rbx], 1
.label_429:
	mov	r13b, 1
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_167
	cmp	byte ptr [r14 + 0x31], 0
	jne	.label_167
	mov	rdi, qword ptr [r14 + 0x40]
	lea	rdx, [rbp - 0x280]
	call	record_file
	jmp	.label_167
.label_396:
	mov	qword ptr [rbp - 0x318], r12
	mov	r12, qword ptr [rbp - 0x320]
	jmp	.label_410
.label_400:
	mov	qword ptr [rbp - 0x318], rbx
	mov	r12, qword ptr [rbp - 0x320]
.label_410:
	mov	rdx, qword ptr [rbp - 0x360]
.label_305:
	cmp	byte ptr [r14 + 0x2b], 0
	mov	eax, r13d
	mov	r8, r14
	je	.label_177
	mov	eax, dword ptr [r8 + 0x10]
.label_177:
	mov	ebx, eax
	mov	qword ptr [rbp - 0x360], rdx
	mov	r15d, 0x3f
	cmp	byte ptr [r8 + 0x1d], 0
	mov	r14, qword ptr [rbp - 0x348]
	jne	.label_445
	mov	eax, r13d
	and	eax, 0xf000
	xor	ecx, ecx
	cmp	eax, 0x4000
	mov	r15d, 0x12
	cmovne	r15d, ecx
.label_445:
	movzx	ecx, r14b
	mov	dword ptr [rbp - 0x368], ecx
	mov	rdi, r12
	mov	rsi, qword ptr [rbp - 0x318]
	mov	qword ptr [rbp - 0x358], r8
	call	set_process_security_ctx
	test	al, al
	je	.label_456
	and	r15d, ebx
	mov	esi, r13d
	and	esi, 0xf000
	cmp	esi, 0x4000
	jne	.label_386
	mov	rdi, qword ptr [rbp - 0x328]
	test	rdi, rdi
	mov	rax, qword ptr [rbp - 0x280]
	mov	rcx, qword ptr [rbp - 0x278]
	je	.label_466
	mov	rdx, rdi
	nop	word ptr cs:[rax + rax]
.label_481:
	cmp	qword ptr [rdx + 8], rcx
	jne	.label_477
	cmp	qword ptr [rdx + 0x10], rax
	je	.label_479
.label_477:
	mov	rdx, qword ptr [rdx]
	test	rdx, rdx
	jne	.label_481
.label_466:
	mov	dword ptr [rbp - 0x36c], esi
	mov	rdx, rsp
	lea	rsi, [rdx - 0x20]
	mov	qword ptr [rbp - 0x340], rsi
	mov	rsp, rsi
	mov	qword ptr [rdx - 0x20], rdi
	mov	qword ptr [rdx - 0x18], rcx
	mov	qword ptr [rdx - 0x10], rax
	test	r14b, r14b
	jne	.label_483
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x2f8]
	cmp	eax, 0x4000
	jne	.label_483
	mov	r10, qword ptr [rbp - 0x358]
	cmp	byte ptr [r10 + 0x21], 0
	jne	.label_473
	cmp	byte ptr [r10 + 0x25], 0
	je	.label_491
.label_473:
	mov	dword ptr [rbp - 0x334], r13d
	cmp	byte ptr [r10 + 0x23], 0
	je	.label_156
	cmp	byte ptr [r10 + 0x26], 0
	je	.label_179
.label_156:
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
	je	.label_180
	mov	rdx, qword ptr [rbp - 0x360]
	jmp	.label_188
.label_456:
	xor	r13d, r13d
	jmp	.label_167
.label_386:
	mov	rdx, qword ptr [rbp - 0x358]
	cmp	byte ptr [rdx + 0x2c], 0
	je	.label_315
	mov	dword ptr [rbp - 0x36c], esi
	mov	dword ptr [rbp - 0x334], r13d
	movzx	eax, byte ptr [r12]
	cmp	eax, 0x2f
	je	.label_196
	mov	r13, rdx
	mov	rdi, qword ptr [rbp - 0x318]
	call	dir_name
	mov	r14, rax
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2e
	jne	.label_203
	cmp	byte ptr [r14 + 1], 0
	je	.label_206
.label_203:
	lea	rdx, [rbp - 0xd0]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str_3
	call	__xstat
	test	eax, eax
	jne	.label_206
	lea	rdx, [rbp - 0x160]
	mov	edi, 1
	mov	rsi, r14
	call	__xstat
	test	eax, eax
	je	.label_217
.label_206:
	mov	rdi, r14
	call	free
.label_397:
	mov	rdx, r13
.label_196:
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
	jle	.label_227
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
.label_270:
	mov	rdx, qword ptr [rbp - 0x360]
	mov	r10, r13
	jmp	.label_188
.label_483:
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
	jmp	.label_301
.label_315:
	cmp	byte ptr [rdx + 0x17], 0
	je	.label_246
	mov	dword ptr [rbp - 0x36c], esi
	mov	dword ptr [rbp - 0x370], r15d
	mov	qword ptr [rbp - 0x320], r12
	mov	r12b, 1
	cmp	byte ptr [rdx + 0x16], 0
	mov	al, 1
	jne	.label_247
	cmp	dword ptr [rdx + 8], 3
	sete	al
.label_247:
	mov	rbx, rdx
	movzx	edx, al
	movzx	r8d, byte ptr [rbp - 0x340]
	xor	r15d, r15d
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x320]
	mov	rsi, qword ptr [rbp - 0x318]
	call	create_hard_link
	test	al, al
	je	.label_260
	mov	dword ptr [rbp - 0x334], r13d
	xor	r14d, r14d
	xor	eax, eax
	mov	qword ptr [rbp - 0x380], rax
	mov	dword ptr [rbp - 0x374], eax
	mov	rcx, qword ptr [rbp - 0x360]
	mov	r10, rbx
	jmp	.label_262
.label_241:
	lea	rdx, [rbp - 0x310]
	mov	edi, 1
	mov	rsi, rbx
	call	__lxstat
	test	eax, eax
	je	.label_469
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_301:
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
.label_226:
	mov	rdx, r15
	call	error
	jmp	.label_282
.label_227:
	mov	qword ptr [rbp - 0x320], r15
	mov	r15b, 1
	xor	r14d, r14d
	mov	r12b, 1
	xor	eax, eax
	mov	qword ptr [rbp - 0x380], rax
	mov	dword ptr [rbp - 0x374], eax
	mov	rcx, qword ptr [rbp - 0x360]
	mov	r10, r13
	jmp	.label_262
.label_479:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
.label_189:
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
.label_251:
	mov	rdx, rbx
	call	error
.label_282:
	mov	rdx, qword ptr [rbp - 0x360]
	mov	r10, qword ptr [rbp - 0x358]
	jmp	.label_188
.label_246:
	cmp	esi, 0x8000
	je	.label_295
	cmp	esi, 0xa000
	je	.label_296
	mov	al, byte ptr [rdx + 0x14]
	test	al, al
	je	.label_296
.label_295:
	mov	dword ptr [rbp - 0x36c], esi
	mov	dword ptr [rbp - 0x334], r13d
	mov	eax, dword ptr [rbp - 0x268]
	mov	dword ptr [rbp - 0x330], eax
	mov	al, byte ptr [rdx + 0x23]
	mov	byte ptr [rbp - 0x328], al
	mov	esi, 0x20000
	cmp	dword ptr [rdx + 4], 2
	je	.label_351
	xor	esi, esi
.label_351:
	xor	eax, eax
	mov	rdi, r12
	call	open_safer
	mov	r13, r12
	mov	r12d, eax
	test	r12d, r12d
	js	.label_309
	mov	dword ptr [rbp - 0x370], r15d
	mov	qword ptr [rbp - 0x320], r13
	lea	rdx, [rbp - 0x160]
	mov	edi, 1
	mov	esi, r12d
	call	__fxstat
	test	eax, eax
	je	.label_321
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
.label_326:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_328
.label_260:
	mov	rdx, qword ptr [rbp - 0x360]
	mov	r10, rbx
	jmp	.label_188
.label_469:
	mov	ecx, dword ptr [rbp - 0x2f8]
	mov	eax, ecx
	and	eax, 0x1c0
	cmp	eax, 0x1c0
	jne	.label_336
	mov	dword ptr [rbp - 0x374], ecx
	xor	ecx, ecx
	jmp	.label_232
.label_160:
	lea	rcx, [rbp - 0x160]
	mov	rax, qword ptr [rbp - 0x158]
	cmp	rax, qword ptr [rbp - 0xc8]
	jne	.label_344
	mov	rax, qword ptr [rbp - 0x160]
	cmp	rax, qword ptr [rbp - 0xd0]
	sete	dil
	jmp	.label_349
.label_336:
	mov	esi, ecx
	mov	dword ptr [rbp - 0x374], ecx
	or	esi, 0x1c0
	mov	rdi, rbx
	call	chmod
	mov	cl, 1
	test	eax, eax
	je	.label_232
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_4
	jmp	.label_301
.label_232:
	mov	qword ptr [rbp - 0x380], rcx
	mov	dword ptr [rbp - 0x334], r13d
	mov	rax, qword ptr [rbp + 0x18]
	cmp	byte ptr [rax], 0
	mov	r10, qword ptr [rbp - 0x358]
	jne	.label_359
	mov	rdx, qword ptr [rbp - 0x310]
	mov	rsi, qword ptr [rbp - 0x308]
	mov	rdi, rbx
	mov	r14, r10
	call	remember_copied
	mov	r10, r14
	mov	rax, qword ptr [rbp + 0x18]
	mov	byte ptr [rax], 1
.label_359:
	cmp	byte ptr [r10 + 0x2e], 0
	je	.label_391
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
	jmp	.label_378
.label_309:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60_0
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, r13
	jmp	.label_384
.label_217:
	mov	ebx, r15d
	mov	rax, qword ptr [rbp - 0xc8]
	cmp	rax, qword ptr [rbp - 0x158]
	jne	.label_387
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x328], rax
	mov	r15, qword ptr [rbp - 0x160]
	mov	rdi, r14
	call	free
	cmp	qword ptr [rbp - 0x328], r15
	mov	r15d, ebx
	je	.label_397
	jmp	.label_399
.label_296:
	cmp	esi, 0x5fff
	jle	.label_401
	cmp	esi, 0x6000
	je	.label_403
	cmp	esi, 0xa000
	je	.label_405
	cmp	esi, 0xc000
	je	.label_403
	jmp	.label_284
.label_344:
	xor	edi, edi
.label_349:
	mov	rsi, rcx
	mov	eax, dword ptr [rbp - 0x148]
	mov	ecx, eax
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	mov	r9, r14
	jne	.label_408
	mov	ecx, 0xf000
	and	ecx, dword ptr [rbp - 0xb8]
	cmp	ecx, 0xa000
	jne	.label_408
	cmp	byte ptr [r9 + 0x15], 0
	je	.label_408
.label_476:
	xor	edi, edi
	mov	r8, rbx
	jmp	.label_163
.label_408:
	mov	rcx, qword ptr [r9]
	test	ecx, ecx
	je	.label_414
	mov	rdx, r15
	mov	r15, r9
	test	dil, dil
	je	.label_416
	mov	rdi, qword ptr [rbp - 0x320]
	mov	rsi, qword ptr [rbp - 0x318]
	call	same_name
	test	al, al
	mov	ecx, dword ptr [rbp - 0x334]
	mov	r14, qword ptr [rbp - 0x348]
	mov	r9, r15
	mov	r8, rbx
	jne	.label_168
	xor	edi, edi
	jmp	.label_159
.label_414:
	cmp	byte ptr [r9 + 0x18], 0
	jne	.label_433
	cmp	byte ptr [r9 + 0x15], 0
	je	.label_427
.label_433:
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x18]
	cmp	ecx, 0xa000
	mov	r8, rbx
	jne	.label_430
	xor	edi, edi
	jmp	.label_163
.label_416:
	and	eax, 0xf000
	xor	edi, edi
	cmp	eax, 0xa000
	mov	r9, r15
	mov	r8, rbx
	jne	.label_163
	movabs	rax, 0xffffffff00000000
	and	rcx, rax
	movabs	rax, 0x200000000
	cmp	rcx, rax
	je	.label_163
	mov	al, byte ptr [r9 + 0x18]
	test	al, al
	jne	.label_163
	mov	eax, 0xf000
	and	eax, dword ptr [rdx + 0x18]
	cmp	eax, 0xa000
	jne	.label_168
	xor	edi, edi
	jmp	.label_163
.label_430:
	test	dil, dil
	je	.label_448
	cmp	qword ptr [r15 + 0x10], 2
	jb	.label_448
	mov	qword ptr [rbp - 0x340], rsi
	mov	rbx, r8
	mov	r14, r9
	mov	rdi, qword ptr [rbp - 0x320]
	mov	rsi, qword ptr [rbp - 0x318]
	call	same_name
	test	al, al
	je	.label_453
	mov	rsi, qword ptr [rbp - 0x340]
	mov	eax, dword ptr [rsi + 0x18]
	mov	r9, r14
.label_427:
	mov	r8, rbx
.label_448:
	and	eax, 0xf000
	cmp	eax, 0xa000
	je	.label_455
	mov	eax, 0xf000
	and	eax, dword ptr [r15 + 0x18]
	cmp	eax, 0xa000
	je	.label_455
	mov	rax, qword ptr [rsi + 8]
	cmp	rax, qword ptr [r15 + 8]
	jne	.label_463
	mov	rax, qword ptr [rsi]
	cmp	rax, qword ptr [r15]
	jne	.label_467
	mov	dil, 1
	cmp	byte ptr [r9 + 0x17], 0
	jne	.label_163
.label_455:
	mov	rbx, r8
	cmp	byte ptr [r9 + 0x18], 0
	je	.label_475
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x268]
	cmp	eax, 0xa000
	jne	.label_475
	cmp	qword ptr [r15 + 0x10], 2
	jb	.label_475
	mov	rdi, qword ptr [rbp - 0x320]
	mov	qword ptr [rbp - 0x358], r9
	mov	r14, rsi
	call	canonicalize_file_name
	mov	rsi, r14
	mov	r9, qword ptr [rbp - 0x358]
	test	rax, rax
	je	.label_475
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
	jne	.label_168
	xor	edi, edi
	jmp	.label_159
.label_475:
	cmp	byte ptr [r9 + 0x2c], 0
	mov	r8, rbx
	je	.label_161
	mov	eax, 0xf000
	and	eax, dword ptr [r15 + 0x18]
	cmp	eax, 0xa000
	jne	.label_161
	xor	edi, edi
	jmp	.label_163
.label_161:
	cmp	dword ptr [r9 + 4], 2
	jne	.label_168
	mov	r14, r8
	mov	qword ptr [rbp - 0x358], r9
	mov	eax, 0xf000
	and	eax, dword ptr [rsi + 0x18]
	cmp	eax, 0xa000
	jne	.label_172
	lea	rdx, [rbp - 0x160]
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x320]
	call	__xstat
	test	eax, eax
	jne	.label_182
	jmp	.label_185
.label_179:
	mov	rbx, r10
	call	__errno_location
	mov	r10, rbx
	mov	dword ptr [rax], 0x5f
	jmp	.label_187
.label_321:
	mov	rax, qword ptr [rbp - 0x278]
	cmp	rax, qword ptr [rbp - 0x158]
	jne	.label_306
	mov	rax, qword ptr [rbp - 0x280]
	cmp	rax, qword ptr [rbp - 0x160]
	jne	.label_306
	mov	edx, ebx
	and	edx, 0x1ff
	mov	rax, qword ptr [rbp - 0x348]
	test	al, al
	mov	r13b, al
	mov	ecx, dword ptr [rbp - 0x370]
	jne	.label_199
	mov	dword ptr [rbp - 0x374], edx
	mov	esi, 0x201
	mov	rax, qword ptr [rbp - 0x358]
	cmp	byte ptr [rax + 0x23], 0
	jne	.label_229
	mov	esi, 1
.label_229:
	xor	eax, eax
	mov	rdi, qword ptr [rbp - 0x318]
	call	open_safer
	mov	ebx, eax
	call	__errno_location
	mov	r15, rax
	mov	r14d, dword ptr [r15]
	mov	rcx, qword ptr [rbp - 0x358]
	cmp	byte ptr [rcx + 0x21], 0
	je	.label_215
	test	ebx, ebx
	jns	.label_220
	jmp	.label_158
.label_391:
	mov	r13, rbx
	jmp	.label_180
.label_491:
	mov	dword ptr [rbp - 0x334], r13d
.label_187:
	xor	eax, eax
	mov	qword ptr [rbp - 0x380], rax
	xor	r15d, r15d
	mov	dword ptr [rbp - 0x374], eax
	mov	r13, qword ptr [rbp - 0x318]
	jmp	.label_180
.label_480:
	xor	edi, edi
	jmp	.label_163
.label_306:
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
.label_328:
	mov	rdx, rbx
	call	error
	xor	ebx, ebx
.label_175:
	mov	edi, r12d
	call	close
	test	eax, eax
	jns	.label_236
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
.label_236:
	mov	rdi, rbx
	call	free
	test	r15b, r15b
	je	.label_282
	xor	r15d, r15d
	mov	r14b, 1
	mov	r12b, 1
	jmp	.label_248
.label_453:
	mov	r9, r14
	cmp	byte ptr [r9 + 0x18], 0
	mov	ecx, dword ptr [rbp - 0x334]
	mov	r14, qword ptr [rbp - 0x348]
	mov	r8, rbx
	jne	.label_168
	xor	edi, edi
	jmp	.label_159
.label_387:
	mov	rdi, r14
	call	free
.label_399:
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
	jmp	.label_270
.label_463:
	xor	edi, edi
	jmp	.label_163
.label_172:
	lea	rdi, [rbp - 0x160]
	mov	edx, 0x90
	call	memcpy
.label_185:
	mov	eax, 0xf000
	and	eax, dword ptr [r15 + 0x18]
	cmp	eax, 0xa000
	jne	.label_274
	lea	rdx, [rbp - 0xd0]
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x318]
	call	__xstat
	test	eax, eax
	je	.label_281
.label_182:
	xor	edi, edi
	mov	r9, qword ptr [rbp - 0x358]
	mov	r8, r14
	jmp	.label_163
.label_401:
	mov	dword ptr [rbp - 0x334], r13d
	cmp	esi, 0x1000
	je	.label_283
	cmp	esi, 0x2000
	mov	r13d, dword ptr [rbp - 0x334]
	jne	.label_284
.label_403:
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
	je	.label_290
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43_0
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
.label_384:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_226
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
	jae	.label_312
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_378:
	mov	r10, r14
.label_180:
	mov	rcx, qword ptr [rbp - 0x330]
	test	rcx, rcx
	je	.label_322
	mov	al, byte ptr [r10 + 0x1c]
	test	al, al
	je	.label_322
	mov	rax, qword ptr [rcx]
	cmp	rax, qword ptr [rbp - 0x280]
	jne	.label_324
.label_322:
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
	je	.label_343
	mov	dword ptr [rbp - 0x370], r15d
	mov	qword ptr [rbp - 0x318], r13
	cmp	dword ptr [r14 + 4], 3
	mov	rbx, r14
	jne	.label_347
	mov	dword ptr [rbp - 0xcc], 2
.label_347:
	mov	qword ptr [rbp - 0x358], rbx
	mov	qword ptr [rbp - 0x320], r12
	mov	r15b, 1
	xor	ebx, ebx
	cmp	byte ptr [rax], 0
	je	.label_350
	mov	r12, rax
	mov	qword ptr [rbp - 0x330], rax
.label_389:
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
	jne	.label_383
	and	bl, 1
	or	bl, byte ptr [rbp - 0x1f0]
	mov	rdi, r12
	call	strlen
	cmp	byte ptr [rax + r12 + 1], 0
	lea	r12, [rax + r12 + 1]
	jne	.label_389
	jmp	.label_383
.label_343:
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
	jmp	.label_289
.label_324:
	mov	dword ptr [rbp - 0x370], r15d
	mov	qword ptr [rbp - 0x320], r12
	mov	qword ptr [rbp - 0x318], r13
	mov	r12b, 1
	xor	r15d, r15d
	xor	r14d, r14d
	mov	rcx, qword ptr [rbp - 0x360]
	jmp	.label_262
.label_350:
	mov	qword ptr [rbp - 0x330], rax
.label_383:
	mov	rdi, qword ptr [rbp - 0x330]
	call	free
	and	bl, 1
	mov	rax, qword ptr [rbp + 0x18]
	mov	byte ptr [rax], bl
	test	r15b, r15b
	setne	r12b
.label_289:
	xor	r15d, r15d
	xor	r14d, r14d
	jmp	.label_415
.label_274:
	lea	rdi, [rbp - 0xd0]
	mov	edx, 0x90
	mov	rsi, r15
	call	memcpy
.label_281:
	mov	rax, qword ptr [rbp - 0x158]
	cmp	rax, qword ptr [rbp - 0xc8]
	mov	r9, qword ptr [rbp - 0x358]
	mov	r8, r14
	jne	.label_421
	mov	rax, qword ptr [rbp - 0x160]
	cmp	rax, qword ptr [rbp - 0xd0]
	jne	.label_424
	cmp	byte ptr [r9 + 0x17], 0
	je	.label_168
	mov	eax, 0xf000
	and	eax, dword ptr [r15 + 0x18]
	cmp	eax, 0xa000
	setne	dil
	jmp	.label_163
.label_168:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_0
.label_191:
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
	jmp	.label_436
.label_467:
	xor	edi, edi
	jmp	.label_163
.label_421:
	xor	edi, edi
	jmp	.label_163
.label_290:
	mov	dword ptr [rbp - 0x370], r14d
	mov	dword ptr [rbp - 0x334], r13d
	mov	qword ptr [rbp - 0x320], r12
	mov	r12b, 1
	jmp	.label_171
.label_405:
	mov	dword ptr [rbp - 0x36c], esi
	mov	dword ptr [rbp - 0x370], r15d
	mov	rsi, qword ptr [rbp - 0x250]
	mov	rdi, r12
	call	areadlink_with_size
	mov	r15, rax
	test	r15, r15
	je	.label_452
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
	jle	.label_465
	mov	rax, qword ptr [rbp - 0x348]
	test	al, al
	jne	.label_470
	mov	rax, qword ptr [rbp - 0x358]
	mov	al, byte ptr [rax + 0x2d]
	test	al, al
	je	.label_470
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x2f8]
	cmp	eax, 0xa000
	jne	.label_470
	mov	rbx, qword ptr [rbp - 0x2e0]
	mov	rdi, r15
	call	strlen
	cmp	rbx, rax
	jne	.label_470
	mov	rdi, qword ptr [rbp - 0x318]
	mov	rsi, rbx
	call	areadlink_with_size
	mov	rbx, rax
	test	rbx, rbx
	je	.label_470
	mov	rdi, rbx
	mov	rsi, r15
	call	strcmp
	mov	r12d, eax
	mov	rdi, rbx
	call	free
	test	r12d, r12d
	je	.label_465
.label_470:
	mov	rdi, r15
	call	free
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.45_0
	jmp	.label_489
.label_283:
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
	je	.label_171
	and	r14d, 0xffffefff
	mov	rdi, rbx
	mov	esi, r14d
	call	mkfifo
	test	eax, eax
	je	.label_176
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42_0
.label_489:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x318]
	jmp	.label_285
.label_284:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.47
	jmp	.label_189
.label_424:
	xor	edi, edi
.label_163:
	mov	ecx, dword ptr [rbp - 0x334]
	mov	r14, qword ptr [rbp - 0x348]
.label_159:
	mov	byte ptr [rbp - 0x340], r12b
	mov	dword ptr [rbp - 0x334], ecx
	mov	ebx, ecx
	and	ebx, 0xf000
	cmp	ebx, 0x4000
	je	.label_195
	mov	al, byte ptr [r9 + 0x2d]
	test	al, al
	je	.label_195
	cmp	byte ptr [r9 + 0x1f], 0
	je	.label_204
	mov	dword ptr [rbp - 0x348], edi
	cmp	byte ptr [r9 + 0x18], 0
	je	.label_205
	mov	qword ptr [rbp - 0x358], r9
	mov	rax, qword ptr [rbp - 0x310]
	cmp	rax, qword ptr [rbp - 0x280]
	sete	al
	jmp	.label_208
.label_204:
	mov	dword ptr [rbp - 0x348], edi
	mov	r12, r8
	mov	qword ptr [rbp - 0x358], r9
	xor	eax, eax
	mov	rdi, qword ptr [rbp - 0x318]
	jmp	.label_213
.label_205:
	mov	qword ptr [rbp - 0x358], r9
	xor	eax, eax
.label_208:
	mov	rdi, qword ptr [rbp - 0x318]
	mov	r12, r8
	xor	al, 1
.label_213:
	mov	qword ptr [rbp - 0x318], rdi
	movzx	ecx, al
	lea	rsi, [rbp - 0x310]
	lea	rdx, [rbp - 0x280]
	call	utimecmp
	test	eax, eax
	mov	r9, qword ptr [rbp - 0x358]
	mov	r8, r12
	mov	edi, dword ptr [rbp - 0x348]
	js	.label_195
	mov	r14, r9
	test	r13, r13
	je	.label_231
	mov	byte ptr [r13], 1
.label_231:
	mov	rdx, qword ptr [rbp - 0x280]
	mov	rsi, qword ptr [rbp - 0x278]
	mov	rbx, qword ptr [rbp - 0x318]
	mov	rdi, rbx
	call	remember_copied
	mov	r13b, 1
	test	rax, rax
	mov	dl, byte ptr [rbp - 0x340]
	je	.label_167
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
	jne	.label_167
.label_188:
	cmp	byte ptr [r10 + 0x25], 0
	jne	.label_242
	test	rdx, rdx
	mov	rbx, qword ptr [rbp - 0x318]
	mov	rax, qword ptr [rbp - 0x350]
	jne	.label_244
	mov	rsi, qword ptr [rbp - 0x280]
	mov	rdi, qword ptr [rbp - 0x278]
	mov	r14, rax
	mov	r15, r10
	call	forget_created
	mov	r10, r15
	mov	rax, r14
.label_244:
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
	jmp	.label_259
.label_195:
	mov	r12, r13
	mov	qword ptr [rbp - 0x348], r14
	cmp	byte ptr [r9 + 0x18], 0
	je	.label_261
	mov	eax, dword ptr [r9 + 8]
	cmp	eax, 2
	je	.label_265
	cmp	eax, 3
	je	.label_269
	cmp	eax, 4
	jne	.label_272
	cmp	byte ptr [r9 + 0x2f], 0
	je	.label_272
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x2f8]
	cmp	eax, 0xa000
	je	.label_272
	mov	r15, r9
	mov	r13, r8
	mov	r14d, edi
	call	can_write_any_file
	mov	edi, r14d
	mov	r8, r13
	mov	r9, r15
	test	al, al
	jne	.label_272
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
	je	.label_272
.label_269:
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
	jne	.label_272
.label_265:
	mov	r13b, 1
	test	r12, r12
	je	.label_167
	mov	byte ptr [r12], 1
	jmp	.label_167
.label_254:
	xor	r13d, r13d
	jmp	.label_167
.label_261:
	cmp	ebx, 0x4000
	je	.label_272
	mov	eax, dword ptr [r9 + 8]
	mov	r13b, 1
	cmp	eax, 2
	je	.label_167
	cmp	eax, 3
	jne	.label_272
	mov	r12, r8
	lea	rdx, [rbp - 0x310]
	mov	r14d, edi
	mov	rdi, r9
	mov	r15, r9
	mov	rsi, qword ptr [rbp - 0x318]
	call	overwrite_ok
	test	r14b, r14b
	jne	.label_167
	test	al, al
	mov	r9, r15
	mov	r8, r12
	jne	.label_303
	jmp	.label_167
.label_272:
	mov	r13b, 1
	test	dil, dil
	jne	.label_167
.label_303:
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x2f8]
	cmp	eax, 0x4000
	mov	dl, byte ptr [rbp + 0x10]
	je	.label_308
	cmp	ebx, 0x4000
	jne	.label_311
	cmp	byte ptr [r9 + 0x18], 0
	je	.label_314
	cmp	dword ptr [r9], 0
	je	.label_314
.label_311:
	test	dl, dl
	je	.label_308
	cmp	dword ptr [r9], 3
	je	.label_308
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
	je	.label_308
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18_1
	jmp	.label_329
.label_256:
	cmp	byte ptr [r15 + 0x2e], 0
	je	.label_332
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
	jmp	.label_167
.label_308:
	cmp	ebx, 0x4000
	je	.label_353
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x2f8]
	cmp	eax, 0x4000
	jne	.label_353
	cmp	byte ptr [r9 + 0x18], 0
	je	.label_357
	cmp	dword ptr [r9], 0
	je	.label_357
.label_353:
	mov	r12b, byte ptr [r9 + 0x18]
	test	r12b, r12b
	je	.label_360
	mov	eax, 0xf000
	mov	ecx, dword ptr [rbp - 0x268]
	and	ecx, eax
	cmp	ecx, 0x4000
	jne	.label_360
	and	eax, dword ptr [rbp - 0x2f8]
	cmp	eax, 0x4000
	je	.label_360
	cmp	dword ptr [r9], 0
	je	.label_363
.label_360:
	mov	r13, r8
	mov	r14, qword ptr [r9]
	test	r14d, r14d
	je	.label_365
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
	je	.label_365
	movzx	eax, al
	cmp	eax, 0x2f
	je	.label_365
.label_368:
	test	r12b, r12b
	jne	.label_377
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x2f8]
	cmp	eax, 0x4000
	jne	.label_377
.label_365:
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x2f8]
	mov	r15d, 0x11
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x350], rcx
	cmp	eax, 0x4000
	jne	.label_379
	mov	ecx, dword ptr [rbp - 0x334]
	mov	r14, qword ptr [rbp - 0x348]
	mov	r12b, byte ptr [rbp - 0x340]
	mov	r8, r13
	jmp	.label_169
.label_332:
	xor	r13d, r13d
	jmp	.label_167
.label_377:
	cmp	r14d, 3
	je	.label_394
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
	jne	.label_394
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r14
	mov	rbx, r9
	call	memcmp
	mov	r9, rbx
	test	eax, eax
	jne	.label_394
	add	r15, r14
	mov	rdi, r15
	mov	rsi, qword ptr [rbp - 0x350]
	mov	rbx, r9
	call	strcmp
	mov	r9, rbx
	test	eax, eax
	jne	.label_394
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
	jne	.label_431
	mov	rax, qword ptr [rbp - 0x278]
	cmp	rax, qword ptr [rbp - 0xc8]
	jne	.label_431
	mov	rax, qword ptr [rbp - 0x280]
	cmp	rax, qword ptr [rbp - 0xd0]
	mov	r9, qword ptr [rbp - 0x358]
	jne	.label_394
	cmp	byte ptr [r9 + 0x18], 0
	je	.label_439
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21_1
	jmp	.label_441
.label_379:
	test	r12b, r12b
	mov	r8, r13
	jne	.label_443
	cmp	byte ptr [r9 + 0x15], 0
	jne	.label_446
	cmp	byte ptr [r9 + 0x22], 0
	je	.label_447
	cmp	qword ptr [rbp - 0x300], 1
	ja	.label_446
.label_447:
	movabs	rax, 0xffffffff00000000
	and	r14, rax
	movabs	rax, 0x200000000
	cmp	r14, rax
	jne	.label_443
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x268]
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x350], rcx
	cmp	eax, 0x8000
	je	.label_454
.label_446:
	mov	qword ptr [rbp - 0x348], r8
	mov	r12, r9
	mov	rbx, qword ptr [rbp - 0x318]
	mov	rdi, rbx
	call	unlink
	test	eax, eax
	je	.label_464
	call	__errno_location
	mov	r14d, dword ptr [rax]
	cmp	r14d, 2
	jne	.label_468
.label_464:
	mov	r14b, 1
	mov	r9, r12
	cmp	byte ptr [r9 + 0x2e], 0
	je	.label_471
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
	jmp	.label_486
.label_314:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17_2
.label_329:
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
.label_250:
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x318]
	call	quotearg_n_style
	mov	r12, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x320]
.label_436:
	call	quotearg_n_style
.label_200:
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	mov	rcx, r12
	mov	r8, rbx
	call	error
	jmp	.label_167
.label_443:
	xor	eax, eax
	mov	qword ptr [rbp - 0x350], rax
.label_454:
	mov	ecx, dword ptr [rbp - 0x334]
	mov	r14, qword ptr [rbp - 0x348]
	mov	r12b, byte ptr [rbp - 0x340]
	jmp	.label_169
.label_357:
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
	jmp	.label_184
.label_363:
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
	jmp	.label_200
.label_468:
	mov	r12, rbx
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24_0
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, r12
	jmp	.label_393
.label_471:
	xor	eax, eax
	mov	qword ptr [rbp - 0x350], rax
.label_486:
	mov	ecx, dword ptr [rbp - 0x334]
	mov	r12b, byte ptr [rbp - 0x340]
	mov	r8, qword ptr [rbp - 0x348]
	jmp	.label_210
.label_431:
	mov	r9, qword ptr [rbp - 0x358]
.label_394:
	mov	qword ptr [rbp - 0x358], r9
	mov	edx, dword ptr [r9]
	mov	edi, 0xffffff9c
	mov	rsi, qword ptr [rbp - 0x318]
	call	backup_file_rename
	mov	r14, rax
	test	r14, r14
	mov	r12b, byte ptr [rbp - 0x340]
	je	.label_222
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
	jmp	.label_233
.label_222:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	cmp	r14d, 2
	jne	.label_209
	xor	eax, eax
	mov	qword ptr [rbp - 0x350], rax
.label_233:
	mov	r15d, 0x11
	mov	r14b, 1
	mov	ecx, dword ptr [rbp - 0x334]
	mov	r9, qword ptr [rbp - 0x358]
	mov	r8, r13
.label_210:
	mov	dl, byte ptr [rbp + 0x10]
	jmp	.label_169
.label_209:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23_1
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x318]
.label_393:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_240
.label_452:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
.label_285:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_251
.label_465:
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
	je	.label_266
	cmp	r14d, 1
	jne	.label_268
.label_266:
	cmp	byte ptr [rbx + 0x1a], 0
	je	.label_257
.label_268:
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
	je	.label_173
	mov	r10, rbx
	mov	rdx, qword ptr [rbp - 0x360]
	jmp	.label_188
.label_176:
	xor	r15d, r15d
.label_171:
	xor	r14d, r14d
.label_248:
	xor	eax, eax
	mov	qword ptr [rbp - 0x380], rax
	mov	dword ptr [rbp - 0x374], eax
.label_415:
	mov	rcx, qword ptr [rbp - 0x360]
	mov	r10, qword ptr [rbp - 0x358]
.label_262:
	mov	rax, qword ptr [rbp - 0x348]
	test	al, al
	jne	.label_267
	cmp	dword ptr [rbp - 0x36c], 0x4000
	je	.label_267
	mov	al, byte ptr [r10 + 0x14]
	test	al, al
	jne	.label_267
	cmp	byte ptr [r10 + 0x21], 0
	jne	.label_286
	cmp	byte ptr [r10 + 0x25], 0
	je	.label_267
.label_286:
	mov	dword ptr [rbp - 0x328], r15d
	cmp	byte ptr [r10 + 0x23], 0
	je	.label_288
	cmp	byte ptr [r10 + 0x26], 0
	je	.label_291
.label_288:
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
	jne	.label_188
	jmp	.label_267
.label_291:
	mov	rbx, r10
	call	__errno_location
	mov	r10, rbx
	mov	dword ptr [rax], 0x5f
	mov	r15d, dword ptr [rbp - 0x328]
.label_267:
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_318
	cmp	qword ptr [r10 + 0x40], 0
	je	.label_318
	mov	rbx, r10
	lea	rdx, [rbp - 0xd0]
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x318]
	call	__lxstat
	test	eax, eax
	jne	.label_325
	mov	rdi, qword ptr [rbx + 0x40]
	lea	rdx, [rbp - 0xd0]
	mov	rsi, qword ptr [rbp - 0x318]
	call	record_file
.label_325:
	mov	r10, rbx
.label_318:
	cmp	dword ptr [rbp - 0x36c], 0x4000
	je	.label_330
	mov	al, byte ptr [r10 + 0x17]
	test	al, al
	jne	.label_207
.label_330:
	test	r14b, r14b
	jne	.label_207
	cmp	byte ptr [r10 + 0x1f], 0
	mov	rbx, qword ptr [rbp - 0x318]
	mov	r13, qword ptr [rbp - 0x348]
	je	.label_337
	mov	qword ptr [rbp - 0x328], r12
	mov	r12, r10
	movups	xmm0, xmmword ptr [rbp - 0x238]
	movaps	xmmword ptr [rbp - 0xd0], xmm0
	movups	xmm0, xmmword ptr [rbp - 0x228]
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	lea	rsi, [rbp - 0xd0]
	mov	rdi, rbx
	test	r15b, r15b
	je	.label_345
	call	lutimens
	test	eax, eax
	je	.label_300
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_355
	jmp	.label_300
.label_345:
	call	utimens
	test	eax, eax
	je	.label_300
	call	__errno_location
.label_355:
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
	je	.label_300
	xor	r13d, r13d
	jmp	.label_167
.label_300:
	mov	r10, r12
	mov	r12, qword ptr [rbp - 0x328]
.label_337:
	test	r15b, r15b
	jne	.label_207
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
	je	.label_492
	test	eax, eax
	jne	.label_164
	and	dword ptr [rbp - 0x334], 0xfffff1ff
.label_164:
	mov	r10, r14
.label_369:
	cmp	byte ptr [r10 + 0x1e], 0
	jne	.label_388
	cmp	byte ptr [r10 + 0x18], 0
	je	.label_390
.label_388:
	mov	esi, 0xffffffff
	mov	ecx, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x320]
	mov	rdx, rbx
	mov	r8d, dword ptr [rbp - 0x334]
	mov	rbx, r10
	call	copy_acl
	mov	rcx, rbx
	test	eax, eax
	je	.label_207
	cmp	byte ptr [rcx + 0x24], 0
	je	.label_207
	xor	r13d, r13d
	jmp	.label_167
.label_492:
	xor	r13d, r13d
	jmp	.label_167
.label_390:
	cmp	byte ptr [r10 + 0x2b], 0
	je	.label_273
	mov	edx, dword ptr [r10 + 0x10]
	mov	esi, 0xffffffff
	mov	rdi, rbx
	call	set_acl
	test	eax, eax
	je	.label_207
	xor	r13d, r13d
	jmp	.label_167
.label_273:
	mov	r15, rbx
	test	r13b, r13b
	je	.label_310
	mov	al, byte ptr [r10 + 0x20]
	test	al, al
	je	.label_310
	mov	eax, dword ptr [rbp - 0x334]
	and	eax, 0x7000
	or	eax, 0x8000
	cmp	eax, 0xc000
	mov	eax, 0x1ff
	mov	ebx, 0x1b6
	cmove	ebx, eax
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
	cmp	eax, -1
	jne	.label_409
	xor	edi, edi
	call	umask
	mov	dword ptr [dword ptr [rip + cached_umask.mask]],  eax
	mov	edi, eax
	call	umask
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
.label_409:
	not	eax
	and	ebx, eax
	mov	esi, 0xffffffff
	mov	rdi, r15
	mov	edx, ebx
	call	set_acl
	test	eax, eax
	je	.label_207
	xor	r13d, r13d
	jmp	.label_167
.label_310:
	mov	rbx, r10
	cmp	dword ptr [rbp - 0x370], 0
	je	.label_423
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
	cmp	eax, -1
	jne	.label_426
	xor	edi, edi
	call	umask
	mov	dword ptr [dword ptr [rip + cached_umask.mask]],  eax
	mov	edi, eax
	call	umask
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
.label_426:
	not	eax
	and	dword ptr [rbp - 0x370], eax
	mov	rax, qword ptr [rbp - 0x380]
	test	al, al
	jne	.label_225
	cmp	dword ptr [rbp - 0x370], 0
	je	.label_225
	test	r13b, r13b
	je	.label_435
	lea	rdx, [rbp - 0x310]
	mov	edi, 1
	mov	rsi, r15
	call	__lxstat
	test	eax, eax
	je	.label_435
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
	jmp	.label_449
.label_257:
	mov	r15b, 1
	xor	r14d, r14d
	mov	r12b, 1
	xor	eax, eax
	mov	qword ptr [rbp - 0x380], rax
.label_252:
	mov	dword ptr [rbp - 0x374], eax
	mov	r10, rbx
	mov	rcx, qword ptr [rbp - 0x360]
	jmp	.label_262
.label_215:
	test	ebx, ebx
	js	.label_366
	mov	al, byte ptr [rcx + 0x25]
	test	al, al
	je	.label_366
.label_220:
	mov	r13d, ebx
	cmp	byte ptr [rcx + 0x23], 0
	mov	rbx, rcx
	je	.label_462
	cmp	byte ptr [rbx + 0x26], 0
	je	.label_238
.label_462:
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
	jmp	.label_406
.label_312:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_378
.label_423:
	mov	dword ptr [rbp - 0x370], 0
	jmp	.label_225
.label_238:
	mov	dword ptr [r15], 0x5f
	mov	rcx, rbx
	mov	ebx, r13d
.label_366:
	xor	eax, eax
	mov	qword ptr [rbp - 0x348], rax
	test	ebx, ebx
	js	.label_158
	mov	qword ptr [rbp - 0x358], rcx
	mov	dword ptr [rbp - 0x380], 0
	jmp	.label_166
.label_158:
	xor	eax, eax
	mov	qword ptr [rbp - 0x348], rax
	cmp	byte ptr [rcx + 0x16], 0
	mov	qword ptr [rbp - 0x358], rcx
	mov	dword ptr [rbp - 0x380], 0
	je	.label_166
	mov	rdi, qword ptr [rbp - 0x318]
	call	unlink
	test	eax, eax
	je	.label_174
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
	jmp	.label_175
.label_174:
	mov	rax, qword ptr [rbp - 0x358]
	cmp	byte ptr [rax + 0x2e], 0
	je	.label_194
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
.label_194:
	mov	r13b, 1
	mov	rax, qword ptr [rbp - 0x358]
	cmp	byte ptr [rax + 0x21], 0
	mov	ecx, dword ptr [rbp - 0x370]
	mov	edx, dword ptr [rbp - 0x374]
	je	.label_199
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
	je	.label_175
	jmp	.label_199
.label_435:
	mov	eax, dword ptr [rbp - 0x2f8]
	mov	dword ptr [rbp - 0x374], eax
	not	eax
	test	dword ptr [rbp - 0x370], eax
	je	.label_225
	mov	al, 1
	mov	qword ptr [rbp - 0x380], rax
.label_225:
	mov	rax, qword ptr [rbp - 0x380]
	test	al, 1
	je	.label_207
	mov	esi, dword ptr [rbp - 0x374]
	or	esi, dword ptr [rbp - 0x370]
	mov	rdi, r15
	call	chmod
	test	eax, eax
	je	.label_207
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
	jne	.label_167
.label_207:
	test	r12b, r12b
	setne	r13b
	jmp	.label_167
.label_439:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22_1
.label_441:
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	r13d, r13d
	jmp	.label_250
.label_173:
	mov	r15b, 1
	xor	r14d, r14d
	mov	r12b, 1
	jmp	.label_252
.label_242:
	call	restore_default_fscreatecon_or_die
.label_255:
	call	restore_default_fscreatecon_or_die
.label_199:
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
	jns	.label_263
	cmp	r14d, 0x11
	jne	.label_263
	mov	r14d, 0x11
	mov	rax, qword ptr [rbp - 0x358]
	cmp	byte ptr [rax + 0x18], 0
	jne	.label_271
	lea	rdx, [rbp - 0x1f0]
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x318]
	call	__lxstat
	mov	r14d, 0x11
	test	eax, eax
	jne	.label_263
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x1d8]
	cmp	eax, 0xa000
	jne	.label_263
	mov	rax, qword ptr [rbp - 0x358]
	cmp	byte ptr [rax + 0x30], 0
	je	.label_190
	mov	esi, 0x41
	xor	eax, eax
	mov	rdi, qword ptr [rbp - 0x318]
	mov	edx, r15d
	call	open_safer
	mov	ebx, eax
	mov	rax, qword ptr [rbp - 0x340]
	mov	r14d, dword ptr [rax]
.label_263:
	cmp	r14d, 0x15
	jne	.label_271
	test	ebx, ebx
	jns	.label_271
	mov	r14d, 0x15
	mov	rax, qword ptr [rbp - 0x318]
	cmp	byte ptr [rax], 0
	je	.label_271
	mov	r14, qword ptr [rbp - 0x318]
	mov	rdi, r14
	call	strlen
	movzx	eax, byte ptr [rax + r14 - 1]
	cmp	eax, 0x2f
	mov	r14d, 0x14
	je	.label_271
	mov	r14d, 0x15
.label_271:
	mov	al, r13b
	mov	qword ptr [rbp - 0x348], rax
.label_166:
	test	ebx, ebx
	js	.label_292
	lea	rdx, [rbp - 0xd0]
	mov	edi, 1
	mov	esi, ebx
	call	__fxstat
	test	eax, eax
	je	.label_297
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
	jmp	.label_406
.label_292:
	mov	rax, qword ptr [rbp - 0x348]
	test	al, al
	mov	edx, dword ptr [rbp - 0x374]
	mov	ecx, dword ptr [rbp - 0x380]
	jne	.label_317
	cmp	r14d, 2
	jne	.label_317
	mov	r13b, 1
	mov	rax, qword ptr [rbp - 0x358]
	cmp	byte ptr [rax + 0x18], 0
	je	.label_199
.label_317:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.64
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x318]
	jmp	.label_326
.label_297:
	mov	dword ptr [rbp - 0x340], ebx
	xor	eax, eax
	mov	qword ptr [rbp - 0x368], rax
	cmp	byte ptr [rbp - 0x328], 0
	je	.label_218
	mov	rax, qword ptr [rbp - 0x358]
	cmp	dword ptr [rax + 0x38], 0
	je	.label_334
	xor	eax, eax
	mov	qword ptr [rbp - 0x368], rax
	mov	esi, 0x40049409
	xor	eax, eax
	mov	edi, dword ptr [rbp - 0x340]
	mov	edx, r12d
	call	ioctl
	test	eax, eax
	je	.label_218
	mov	rax, qword ptr [rbp - 0x358]
	cmp	dword ptr [rax + 0x38], 2
	jne	.label_334
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
	jmp	.label_253
.label_334:
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
	jne	.label_382
	mov	rcx, qword ptr [rbp - 0x130]
	mov	rdx, rcx
	sar	rdx, 0x3f
	shr	rdx, 0x37
	add	rdx, rcx
	sar	rdx, 9
	cmp	qword ptr [rbp - 0x120], rdx
	setl	r13b
.label_382:
	movsxd	r15, ebx
	and	eax, dword ptr [rbp - 0xb8]
	cmp	eax, 0x8000
	jne	.label_319
	mov	rax, qword ptr [rbp - 0x358]
	mov	ecx, dword ptr [rax + 0xc]
	cmp	ecx, 2
	sete	al
	cmp	ecx, 3
	mov	cl, 1
	mov	dword ptr [rbp - 0x3b4], ecx
	je	.label_162
	and	al, r13b
	jne	.label_162
.label_319:
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
.label_162:
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
	je	.label_432
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rbp - 0x390], rax
	mov	dword ptr [rbp - 0x3a4], 1
	mov	eax, dword ptr [rbp - 0x3b4]
	test	al, al
	je	.label_459
	mov	rax, qword ptr [rbp - 0x358]
	mov	eax, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0x3a4], eax
.label_459:
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
.label_243:
	lea	rdi, [rbp - 0x1f0]
	call	extent_scan_read
	test	al, al
	je	.label_457
	cmp	qword ptr [rbp - 0x1d8], 0
	mov	r14d, 0
	je	.label_460
.label_223:
	mov	rax, qword ptr [rbp - 0x1c8]
	lea	rcx, [r14 + r14*2]
	mov	r13, qword ptr [rax + rcx*8]
	mov	rax, qword ptr [rax + rcx*8 + 8]
	mov	qword ptr [rbp - 0x328], rax
	lea	rax, [rax + r13]
	cmp	rax, qword ptr [rbp - 0x390]
	jle	.label_348
	mov	rax, qword ptr [rbp - 0x390]
	cmp	r13, rax
	cmovg	r13, rax
	sub	rax, r13
	mov	qword ptr [rbp - 0x328], rax
.label_348:
	mov	r15, r13
	sub	r15, rbx
	sub	r15, qword ptr [rbp - 0x398]
	jne	.label_482
	mov	dword ptr [rbp - 0x3a8], 0
	jmp	.label_192
.label_482:
	xor	edx, edx
	mov	edi, r12d
	mov	rsi, r13
	call	lseek
	test	rax, rax
	js	.label_487
	cmp	dword ptr [rbp - 0x3a4], 1
	jne	.label_488
	cmp	qword ptr [word ptr [rip + write_zeros.zeros]],  0
	jne	.label_178
	mov	al,  byte ptr [byte ptr [rip + write_zeros.nz]]
	and	al, 1
	mov	edi, 0x20000
	mov	eax, 0x400
	cmovne	rdi, rax
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [word ptr [rip + write_zeros.zeros]],  rax
	test	rax, rax
	jne	.label_178
	mov	qword ptr [word ptr [rip + write_zeros.zeros]], OFFSET FLAT:write_zeros.fallback
	mov	byte ptr [byte ptr [rip + write_zeros.nz]],  1
.label_178:
	test	r15, r15
	je	.label_214
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
	je	.label_178
	jmp	.label_183
.label_488:
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
	jne	.label_192
	jmp	.label_193
.label_214:
	mov	dword ptr [rbp - 0x3a8], 0
.label_192:
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
	je	.label_193
	mov	rcx, qword ptr [rbp - 0x30]
	lea	r15, [rcx + r13]
	mov	al, byte ptr [rbp - 0x31]
	cmp	r15, qword ptr [rbp - 0x390]
	je	.label_157
	inc	r14d
	mov	r14d, r14d
	cmp	r14, qword ptr [rbp - 0x1d8]
	mov	rbx, r13
	mov	rdx, qword ptr [rbp - 0x328]
	mov	qword ptr [rbp - 0x398], rdx
	jb	.label_223
	test	rcx, rcx
	je	.label_230
	mov	dword ptr [rbp - 0x3a8], eax
.label_230:
	mov	rbx, r13
	jmp	.label_461
.label_157:
	test	rcx, rcx
	je	.label_258
	mov	dword ptr [rbp - 0x3a8], eax
.label_258:
	mov	byte ptr [rbp - 0x1cf], 1
	mov	rbx, r13
	mov	r15, qword ptr [rbp - 0x390]
.label_461:
	mov	rax, qword ptr [rbp - 0x328]
	mov	qword ptr [rbp - 0x398], rax
.label_460:
	mov	rdi, qword ptr [rbp - 0x1c8]
	call	free
	mov	qword ptr [rbp - 0x1c8], 0
	mov	qword ptr [rbp - 0x1d8], 0
	cmp	byte ptr [rbp - 0x1cf], 0
	je	.label_243
	jmp	.label_239
.label_183:
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
.label_277:
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
.label_193:
	mov	rdi, qword ptr [rbp - 0x1c8]
	call	free
	mov	qword ptr [rbp - 0x1c8], 0
	mov	qword ptr [rbp - 0x1d8], 0
	xor	r15d, r15d
	jmp	.label_253
.label_190:
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
	jmp	.label_175
.label_487:
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
	jmp	.label_277
.label_457:
	cmp	byte ptr [rbp - 0x1cf], 0
	je	.label_279
.label_239:
	mov	r14, qword ptr [rbp - 0x390]
	sub	r14, r15
	jg	.label_186
	mov	eax, dword ptr [rbp - 0x3a8]
	and	al, 1
	je	.label_201
.label_186:
	cmp	dword ptr [rbp - 0x3a4], 1
	jne	.label_219
	cmp	qword ptr [word ptr [rip + write_zeros.zeros]],  0
	jne	.label_155
	mov	al,  byte ptr [byte ptr [rip + write_zeros.nz]]
	and	al, 1
	mov	eax, 0x400
	mov	edi, 0x20000
	cmovne	rdi, rax
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [word ptr [rip + write_zeros.zeros]],  rax
	test	rax, rax
	jne	.label_155
	mov	qword ptr [word ptr [rip + write_zeros.zeros]], OFFSET FLAT:write_zeros.fallback
	mov	byte ptr [byte ptr [rip + write_zeros.nz]],  1
.label_155:
	test	r14, r14
	je	.label_201
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
	je	.label_155
	jmp	.label_302
.label_279:
	cmp	byte ptr [rbp - 0x1d0], 0
	je	.label_304
.label_432:
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
	je	.label_276
	cmp	byte ptr [rbp - 0x30], 0
	je	.label_218
	mov	rsi, qword ptr [rbp - 0x1f0]
	mov	edi, dword ptr [rbp - 0x340]
	call	ftruncate
	test	eax, eax
	jns	.label_218
	jmp	.label_302
.label_219:
	mov	edi, dword ptr [rbp - 0x340]
	mov	rsi, qword ptr [rbp - 0x390]
	call	ftruncate
	test	eax, eax
	je	.label_201
.label_302:
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
.label_484:
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
.label_338:
	call	error
	jmp	.label_276
.label_201:
	cmp	dword ptr [rbp - 0x3a4], 3
	jne	.label_218
	sub	qword ptr [rbp - 0x390], r15
	jle	.label_218
	mov	esi, 3
	mov	edi, dword ptr [rbp - 0x340]
	mov	rdx, r15
	mov	rcx, qword ptr [rbp - 0x390]
	call	fallocate
	test	eax, eax
	jns	.label_218
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x26
	je	.label_218
	cmp	ebx, 0x5f
	jne	.label_437
.label_218:
	mov	rax, qword ptr [rbp - 0x358]
	cmp	byte ptr [rax + 0x1f], 0
	je	.label_364
	movups	xmm0, xmmword ptr [rbp - 0x238]
	movaps	xmmword ptr [rbp - 0x1f0], xmm0
	movups	xmm0, xmmword ptr [rbp - 0x228]
	movaps	xmmword ptr [rbp - 0x1e0], xmm0
	lea	rdx, [rbp - 0x1f0]
	mov	edi, dword ptr [rbp - 0x340]
	mov	rsi, qword ptr [rbp - 0x318]
	call	fdutimens
	test	eax, eax
	je	.label_364
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
	jne	.label_276
.label_364:
	mov	rax, qword ptr [rbp - 0x358]
	cmp	byte ptr [rax + 0x1d], 0
	je	.label_197
	mov	eax, dword ptr [rbp - 0x264]
	cmp	eax, dword ptr [rbp - 0xb4]
	jne	.label_211
	mov	eax, dword ptr [rbp - 0x260]
	cmp	eax, dword ptr [rbp - 0xb0]
	je	.label_197
.label_211:
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
	je	.label_276
	test	eax, eax
	jne	.label_197
	and	dword ptr [rbp - 0x330], 0xfffff1ff
.label_197:
	mov	rax, qword ptr [rbp - 0x358]
	cmp	byte ptr [rax + 0x27], 0
	je	.label_407
	cmp	byte ptr [rbp - 0xb8], 0
	js	.label_407
	call	geteuid
	test	eax, eax
	je	.label_407
	cmp	dword ptr [rbp - 0x340], 0
	js	.label_411
	mov	esi, 0x180
	mov	edi, dword ptr [rbp - 0x340]
	call	fchmod
	jmp	.label_413
.label_276:
	xor	r15d, r15d
	jmp	.label_253
.label_411:
	mov	esi, 0x180
	mov	rdi, qword ptr [rbp - 0x318]
	call	chmod
.label_413:
	test	eax, eax
	jne	.label_407
	mov	esi, dword ptr [rbp - 0x380]
	not	esi
	and	esi, dword ptr [rbp - 0x374]
	cmp	dword ptr [rbp - 0x340], 0
	js	.label_418
	mov	edi, dword ptr [rbp - 0x340]
	call	fchmod
	jmp	.label_407
.label_418:
	mov	rdi, qword ptr [rbp - 0x318]
	call	chmod
.label_407:
	mov	rax, qword ptr [rbp - 0x358]
	cmp	byte ptr [rax + 0x1e], 0
	jne	.label_425
	mov	rax, qword ptr [rbp - 0x358]
	cmp	byte ptr [rax + 0x18], 0
	je	.label_420
.label_425:
	mov	rdi, qword ptr [rbp - 0x320]
	mov	esi, r12d
	mov	rdx, qword ptr [rbp - 0x318]
	mov	ecx, dword ptr [rbp - 0x340]
	mov	r8d, dword ptr [rbp - 0x330]
	call	copy_acl
	mov	r15b, 1
	test	eax, eax
	jne	.label_434
	jmp	.label_253
.label_420:
	mov	rax, qword ptr [rbp - 0x358]
	cmp	byte ptr [rax + 0x2b], 0
	je	.label_404
	mov	rax, qword ptr [rbp - 0x358]
	mov	edx, dword ptr [rax + 0x10]
	jmp	.label_438
.label_404:
	mov	rax, qword ptr [rbp - 0x348]
	test	al, al
	je	.label_440
	mov	rax, qword ptr [rbp - 0x358]
	mov	al, byte ptr [rax + 0x20]
	test	al, al
	je	.label_440
	mov	edx,  dword ptr [dword ptr [rip + cached_umask.mask]]
	cmp	edx, -1
	jne	.label_444
	xor	edi, edi
	call	umask
	mov	dword ptr [dword ptr [rip + cached_umask.mask]],  eax
	mov	edi, eax
	call	umask
	mov	edx,  dword ptr [dword ptr [rip + cached_umask.mask]]
.label_444:
	not	edx
	and	edx, 0x1b6
.label_438:
	mov	rdi, qword ptr [rbp - 0x318]
	mov	ebx, dword ptr [rbp - 0x340]
	mov	esi, ebx
	call	set_acl
	test	eax, eax
	sete	r15b
	jmp	.label_406
.label_440:
	mov	r15b, 1
	cmp	dword ptr [rbp - 0x380], 0
	je	.label_253
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
	cmp	eax, -1
	jne	.label_458
	xor	edi, edi
	call	umask
	mov	dword ptr [dword ptr [rip + cached_umask.mask]],  eax
	mov	edi, eax
	call	umask
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
.label_458:
	not	eax
	test	dword ptr [rbp - 0x380], eax
	je	.label_253
	cmp	dword ptr [rbp - 0x340], 0
	js	.label_472
	mov	edi, dword ptr [rbp - 0x340]
	mov	esi, dword ptr [rbp - 0x374]
	call	fchmod
	jmp	.label_478
.label_304:
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
	jmp	.label_484
.label_472:
	mov	rdi, qword ptr [rbp - 0x318]
	mov	esi, dword ptr [rbp - 0x374]
	call	chmod
.label_478:
	test	eax, eax
	je	.label_253
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
.label_434:
	mov	rax, qword ptr [rbp - 0x358]
	mov	r15b, byte ptr [rax + 0x24]
	xor	r15b, 1
.label_253:
	mov	ebx, dword ptr [rbp - 0x340]
.label_406:
	mov	edi, ebx
	call	close
	test	eax, eax
	jns	.label_170
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
.label_170:
	mov	rbx, qword ptr [rbp - 0x368]
	jmp	.label_175
.label_437:
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
	jmp	.label_338
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
	je	.label_493
	cmp	eax, 1
	jne	.label_494
.label_493:
	cmp	byte ptr [rbx + 0x1a], 0
	sete	al
	pop	rbx
	ret	
.label_494:
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
	jne	.label_495
	push	rax
	xor	edi, edi
	call	umask
	mov	dword ptr [dword ptr [rip + cached_umask.mask]],  eax
	mov	edi, eax
	call	umask
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
	add	rsp, 8
.label_495:
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
	jle	.label_497
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
	jmp	.label_496
.label_497:
	test	ebp, ebp
	mov	r14b, 1
	jns	.label_496
	xor	r12b, 1
	jne	.label_496
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
.label_496:
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
	je	.label_498
	call	can_write_any_file
	test	al, al
	jne	.label_498
	mov	esi, 2
	mov	rdi, r14
	call	euidaccess
	test	eax, eax
	je	.label_498
	mov	edi, dword ptr [rbx + 0x18]
	lea	rsi, [rsp + 0x14]
	call	strmode
	mov	byte ptr [rsp + 0x1e], 0
	mov	r15,  qword ptr [word ptr [rip + stderr]]
	cmp	byte ptr [r12 + 0x18], 0
	jne	.label_499
	cmp	byte ptr [r12 + 0x15], 0
	jne	.label_499
	cmp	byte ptr [r12 + 0x16], 0
	je	.label_501
.label_499:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.54
.label_500:
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
	jmp	.label_502
.label_498:
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
.label_502:
	call	yesno
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_501:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.55
	jmp	.label_500
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
	je	.label_504
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
.label_504:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_503
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_503:
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
	jne	.label_509
	cmp	byte ptr [r15 + 0x1e], 0
	je	.label_516
	mov	edx, dword ptr [r9 + 0x18]
	add	rcx, 0x18
	jmp	.label_506
.label_516:
	mov	rax, qword ptr [r15 + 0x18]
	test	al, al
	jne	.label_519
	cmp	byte ptr [r15 + 0x2b], 0
	je	.label_509
.label_519:
	mov	edx, dword ptr [r9 + 0x18]
	test	al, al
	setne	bl
	movabs	rsi, 0xff000000000000
	test	rax, rsi
	jne	.label_505
	test	bl, bl
	jne	.label_505
	lea	rcx, [r15 + 0x10]
	jmp	.label_506
.label_505:
	add	rcx, 0x18
.label_506:
	mov	eax, dword ptr [rcx]
	mov	ecx, eax
	or	ecx, 0xe00
	xor	ecx, 0x1ff
	and	ecx, edx
	test	cx, 0xfff
	je	.label_509
	and	edx, eax
	and	edx, 0x1c0
	mov	rdi, r14
	mov	esi, r13d
	call	qset_acl
	test	eax, eax
	je	.label_509
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x16
	je	.label_510
	cmp	ebx, 1
	jne	.label_517
.label_510:
	cmp	byte ptr [r15 + 0x1b], 0
	je	.label_518
.label_517:
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
.label_518:
	movzx	eax, byte ptr [r15 + 0x24]
	neg	eax
	jmp	.label_508
.label_509:
	cmp	r13d, -1
	je	.label_511
	mov	edi, r13d
	mov	esi, ebp
	mov	edx, r12d
	call	fchown
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	je	.label_508
	call	__errno_location
	mov	rbp, rax
	mov	ebx, dword ptr [rbp]
	cmp	ebx, 0x16
	je	.label_515
	cmp	ebx, 1
	jne	.label_507
.label_515:
	mov	esi, 0xffffffff
	mov	edi, r13d
	mov	edx, r12d
	call	fchown
	jmp	.label_520
.label_511:
	mov	rdi, r14
	mov	esi, ebp
	mov	edx, r12d
	call	lchown
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	je	.label_508
	call	__errno_location
	mov	rbp, rax
	mov	ebx, dword ptr [rbp]
	cmp	ebx, 0x16
	je	.label_521
	cmp	ebx, 1
	jne	.label_507
.label_521:
	mov	esi, 0xffffffff
	mov	rdi, r14
	mov	edx, r12d
	call	lchown
.label_520:
	mov	dword ptr [rbp], ebx
.label_507:
	mov	ebx, dword ptr [rbp]
	cmp	ebx, 0x16
	je	.label_514
	cmp	ebx, 1
	jne	.label_512
.label_514:
	cmp	byte ptr [r15 + 0x1a], 0
	je	.label_513
.label_512:
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
	jne	.label_508
.label_513:
	xor	eax, eax
.label_508:
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
	jmp	.label_522
.label_531:
	mov	qword ptr [rsp + 0x20], rdi
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], r10b
	mov	r15, qword ptr [rsp + 0x90]
	mov	r12, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x48]
	nop	
.label_522:
	mov	qword ptr [rsp + 0x48], rdx
	cmp	rdx, r12
	mov	rbp, r12
	cmovb	rbp, rdx
	nop	
.label_536:
	test	rdx, rdx
	je	.label_535
	mov	edi, dword ptr [rsp + 0x44]
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdx, rbp
	call	read
	mov	r13, rax
	test	r13, r13
	jns	.label_541
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 4
	mov	rdx, qword ptr [rsp + 0x48]
	je	.label_536
	jmp	.label_538
	nop	dword ptr [rax + rax]
.label_541:
	je	.label_535
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
.label_528:
	mov	r9b, r10b
	cmp	rbp, r13
	mov	r12, r13
	cmovb	r12, rbp
	cmp	qword ptr [rsp + 0x38], 0
	je	.label_529
	test	r12, r12
	je	.label_529
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
.label_544:
	mov	rdx, rax
	cmp	byte ptr [rsi], 0
	jne	.label_533
	mov	r14b, 1
	test	rdx, rdx
	je	.label_525
	inc	rsi
	lea	rax, [rdx - 1]
	test	dl, 0xf
	jne	.label_544
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
	jmp	.label_525
.label_533:
	xor	r14d, r14d
.label_525:
	mov	rsi, rbp
.label_529:
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
	jne	.label_530
	test	r15b, r15b
	jne	.label_530
	movabs	rax, 0x7fffffffffffffff
	sub	rax, r12
	cmp	rdi, rax
	ja	.label_540
	add	rdi, r12
	mov	rbp, r12
	jmp	.label_545
	nop	dword ptr [rax]
.label_530:
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
	je	.label_523
	mov	eax, dword ptr [rsp + 0x1c]
	movzx	edx, al
	mov	edi, dword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x98]
	call	create_hole
	test	al, al
	jne	.label_534
	jmp	.label_524
.label_523:
	mov	edi, dword ptr [rsp + 0x28]
	mov	rsi, r8
	mov	rdx, rcx
	mov	qword ptr [rsp + 0x20], rcx
	call	full_write
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_539
.label_534:
	test	r15b, r15b
	mov	r10b, bl
	je	.label_542
	test	r12, r12
	cmove	r13, r12
	test	byte ptr [rsp + 0x2f], 1
	mov	eax, 0
	cmove	r12, rax
	mov	rdi, r12
	jmp	.label_543
	nop	word ptr [rax + rax]
.label_542:
	mov	rdi, r12
	mov	rbp, r12
.label_543:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	r8, rsi
.label_545:
	add	rsi, rbp
	sub	r13, rbp
	jne	.label_528
	jmp	.label_531
.label_535:
	test	r14b, 1
	je	.label_532
	mov	eax, dword ptr [rsp + 0x1c]
	movzx	edx, al
	mov	edi, dword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rcx, qword ptr [rsp + 0x20]
	call	create_hole
	test	al, al
	je	.label_537
.label_532:
	mov	r14b, 1
	jmp	.label_526
.label_538:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.72
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
.label_527:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_526
.label_537:
	xor	r14d, r14d
	jmp	.label_526
.label_540:
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
	jmp	.label_526
.label_524:
	xor	r14d, r14d
.label_526:
	mov	al, r14b
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_539:
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
	jmp	.label_527
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
	js	.label_546
	mov	r15b, 1
	test	r12b, r12b
	je	.label_547
	sub	rax, rbp
	mov	esi, 3
	mov	edi, ebx
	mov	rdx, rax
	mov	rcx, rbp
	call	fallocate
	test	eax, eax
	jns	.label_547
	call	__errno_location
	mov	ebp, dword ptr [rax]
	cmp	ebp, 0x26
	je	.label_547
	cmp	ebp, 0x5f
	je	.label_547
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
	jmp	.label_548
.label_546:
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
.label_548:
	call	error
.label_547:
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
	je	.label_549
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, rbx
	call	free
.label_549:
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
	je	.label_550
	mov	rax, qword ptr [rcx + 0x10]
.label_550:
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
	je	.label_551
	xor	eax, eax
	cmp	r14, rbx
	je	.label_552
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, rbx
	call	free
	mov	rax, qword ptr [r14 + 0x10]
.label_552:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_551:
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
	je	.label_553
	pop	rax
	ret	
.label_553:
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
	jne	.label_554
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	sete	al
	ret	
.label_554:
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
.label_568:
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
	js	.label_570
	mov	ecx, dword ptr [rsp + 0x1c]
	test	rcx, rcx
	je	.label_572
	mov	rax, qword ptr [r13 + 0x18]
	mov	rdx, rcx
	not	rdx
	cmp	rax, rdx
	ja	.label_556
	add	rax, rcx
	mov	qword ptr [r13 + 0x18], rax
	movabs	rcx, 0x555555555555556
	cmp	rax, rcx
	mov	r15, rbp
	jae	.label_564
	mov	rdi, qword ptr [r13 + 0x28]
	sub	r12, rdi
	shl	rax, 3
	lea	rsi, [rax + rax*2]
	call	xrealloc
	mov	qword ptr [r13 + 0x28], rax
	add	r12, rax
	mov	r8d, dword ptr [rsp + 0x1c]
	test	r8d, r8d
	je	.label_559
	xor	r11d, r11d
	nop	
.label_565:
	mov	ecx, r11d
	imul	rcx, rcx, 0x38
	mov	rdi, qword ptr [rsp + rcx + 0x28]
	mov	rsi, qword ptr [rsp + rcx + 0x38]
	mov	rbp, r15
	sub	rbp, rsi
	cmp	rdi, rbp
	ja	.label_566
	test	r14d, r14d
	je	.label_555
	mov	r9d, dword ptr [rsp + rcx + 0x50]
	mov	ebx, r9d
	and	ebx, 0xfffffffe
	mov	r10, qword ptr [r12 + 8]
	mov	rdx, qword ptr [r12]
	add	rdx, r10
	cmp	dword ptr [r12 + 0x10], ebx
	jne	.label_558
	cmp	rdx, rdi
	jne	.label_558
	add	r10, rsi
	mov	qword ptr [r12 + 8], r10
	mov	dword ptr [r12 + 0x10], r9d
	jmp	.label_567
	nop	word ptr [rax + rax]
.label_555:
	mov	rdx, qword ptr [r13 + 8]
	cmp	rdx, rdi
	ja	.label_573
	mov	r9d, dword ptr [rsp + rcx + 0x50]
	jmp	.label_561
.label_558:
	cmp	rdx, rdi
	jbe	.label_561
.label_573:
	mov	rbp, rdx
	sub	rbp, rdi
	sub	rsi, rbp
	ja	.label_569
	lea	rdi, [rsp + rcx + 0x28]
	lea	rcx, [rsp + rcx + 0x38]
	mov	qword ptr [rdi], rdx
	mov	qword ptr [rcx], rsi
	dec	r11d
	jmp	.label_567
	nop	dword ptr [rax]
.label_561:
	mov	ecx, r14d
	lea	rcx, [rcx + rcx*2]
	lea	r12, [rax + rcx*8]
	mov	qword ptr [rax + rcx*8], rdi
	mov	qword ptr [rax + rcx*8 + 8], rsi
	mov	dword ptr [rax + rcx*8 + 0x10], r9d
	inc	r14d
.label_567:
	inc	r11d
	cmp	r11d, r8d
	jb	.label_565
.label_559:
	test	byte ptr [r12 + 0x10], 1
	je	.label_571
	mov	byte ptr [r13 + 0x21], 1
.label_571:
	mov	cl, byte ptr [r13 + 0x21]
	cmp	r14d, 0x49
	jb	.label_575
	test	cl, cl
	jne	.label_574
	dec	r14d
	lea	rcx, [r14 + r14*2]
	lea	r12, [rax + rcx*8 - 0x18]
	mov	qword ptr [r13 + 0x18], r14
	jmp	.label_557
	nop	word ptr cs:[rax + rax]
.label_575:
	mov	eax, r14d
	mov	qword ptr [r13 + 0x18], rax
	test	cl, cl
	jne	.label_563
.label_557:
	mov	rbp, r15
	mov	r15, qword ptr [r12 + 8]
	add	r15, qword ptr [r12]
	mov	qword ptr [r13 + 8], r15
	mov	al, 1
	cmp	r14d, 0x48
	jb	.label_568
	jmp	.label_560
.label_569:
	cmp	qword ptr [r13 + 8], 0
	je	.label_562
	xor	eax, eax
	jmp	.label_560
.label_570:
	cmp	qword ptr [r13 + 8], 0
	je	.label_562
	xor	eax, eax
	jmp	.label_560
.label_562:
	mov	byte ptr [r13 + 0x20], 1
	xor	eax, eax
	jmp	.label_560
.label_572:
	mov	byte ptr [r13 + 0x21], 1
	cmp	qword ptr [r13 + 8], 0
	setne	al
	jmp	.label_560
.label_574:
	mov	eax, r14d
	mov	qword ptr [r13 + 0x18], rax
	mov	al, 1
	jmp	.label_560
.label_563:
	mov	al, 1
.label_560:
	add	rsp, 0x1008
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_566:
	mov	edi, OFFSET FLAT:.str.2_2
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 0x8d
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.extent_scan_read
	call	__assert_fail
.label_556:
	mov	edi, OFFSET FLAT:.str_5
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 0x7e
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.extent_scan_read
	call	__assert_fail
.label_564:
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
	jns	.label_582
	mov	edi, r13d
	mov	qword ptr [rsp], rsi
	mov	edx, ebx
	mov	rcx, r12
	mov	r8d, r15d
	call	linkat
	xor	r14d, r14d
	test	eax, eax
	je	.label_576
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rsi, qword ptr [rsp]
.label_582:
	cmp	r14d, 0x11
	jne	.label_576
	mov	qword ptr [rsp], rsi
	xor	bpl, 1
	jne	.label_576
	mov	rdi, r12
	call	last_component
	mov	rbp, rax
	sub	rbp, r12
	lea	rdi, [rbp + 9]
	mov	r14d, r15d
	cmp	rdi, 0x101
	jae	.label_578
	lea	r15, [rsp + 0x20]
	jmp	.label_581
.label_578:
	call	malloc
	mov	r15, rax
	test	r15, r15
	je	.label_577
.label_581:
	mov	rcx, -1
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbp
	call	__mempcpy_chk
	movabs	rcx, 0x5858585858587543
	mov	qword ptr [rax], rcx
	mov	byte ptr [rax + 8], 0
	test	r15, r15
	je	.label_577
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
	je	.label_579
	call	__errno_location
	mov	r14d, dword ptr [rax]
	jmp	.label_580
.label_577:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	jmp	.label_576
.label_579:
	mov	edi, ebx
	mov	rsi, r15
	mov	edx, ebx
	mov	rcx, r12
	call	renameat
	mov	r14d, 0xffffffff
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
	lea	rax, [rsp + 0x20]
	cmp	r15, rax
	je	.label_576
	mov	rdi, r15
	call	free
.label_576:
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
	jns	.label_588
	mov	rdi, r15
	mov	esi, r14d
	mov	rdx, r13
	call	symlinkat
	xor	ebp, ebp
	test	eax, eax
	je	.label_584
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_588:
	cmp	ebp, 0x11
	jne	.label_584
	xor	bl, 1
	jne	.label_584
	mov	rdi, r13
	call	last_component
	mov	rbx, rax
	sub	rbx, r13
	lea	rdi, [rbx + 9]
	cmp	rdi, 0x101
	jae	.label_590
	lea	r12, [rsp + 0x10]
	jmp	.label_585
.label_590:
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_587
.label_585:
	mov	rcx, -1
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	movabs	rcx, 0x5858585858587543
	mov	qword ptr [rax], rcx
	mov	byte ptr [rax + 8], 0
	test	r12, r12
	je	.label_587
	mov	qword ptr [rsp], r15
	mov	dword ptr [rsp + 8], r14d
	lea	rdx, [rsp]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:try_symlink
	mov	r8d, 6
	mov	rdi, r12
	call	try_tempname_len
	test	eax, eax
	je	.label_589
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_586
.label_587:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_584
.label_589:
	mov	edi, r14d
	mov	rsi, r12
	mov	edx, r14d
	mov	rcx, r13
	call	renameat
	mov	ebp, 0xffffffff
	test	eax, eax
	je	.label_586
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edx, edx
	mov	edi, r14d
	mov	rsi, r12
	call	unlinkat
.label_586:
	lea	rax, [rsp + 0x10]
	cmp	r12, rax
	je	.label_584
	mov	rdi, r12
	call	free
.label_584:
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
	je	.label_592
	cmp	ebp, -2
	jne	.label_593
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_6
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_591
.label_592:
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
.label_591:
	call	error
.label_593:
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
	je	.label_594
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
.label_594:
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
	je	.label_599
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	movabs	r15, 0x7fffffffffffffff
	nop	word ptr cs:[rax + rax]
.label_596:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbx
	mov	rdx, r12
	call	readlink
	mov	r13, rax
	test	r13, r13
	jns	.label_595
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	jne	.label_602
.label_595:
	cmp	r13, r12
	jb	.label_603
	mov	rdi, rbx
	call	free
	mov	rax, r12
	shr	rax, 0x3e
	jne	.label_597
	add	r12, r12
	jmp	.label_600
	nop	word ptr cs:[rax + rax]
.label_597:
	cmp	r12, r15
	mov	r12, r15
	jae	.label_601
.label_600:
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_596
	jmp	.label_599
.label_603:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp + 8], rbx
	jmp	.label_599
.label_601:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_598
.label_602:
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
.label_598:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
.label_599:
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
	jne	.label_604
	mov	edi, OFFSET FLAT:.str_7
	call	getenv
	mov	rbx, rax
	mov	eax, OFFSET FLAT:.str.1_4
	test	rbx, rbx
	je	.label_605
.label_604:
	mov	eax, OFFSET FLAT:.str.1_4
	cmp	byte ptr [rbx], 0
	je	.label_605
	mov	rdi, rbx
	call	last_component
	cmp	rbx, rax
	mov	eax, OFFSET FLAT:.str.1_4
	cmove	rax, rbx
.label_605:
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
	jne	.label_636
	mov	edi, OFFSET FLAT:.str_7
	call	getenv
	mov	rbx, rax
	mov	edi, OFFSET FLAT:.str.1_4
	test	rbx, rbx
	je	.label_639
	mov	edi, OFFSET FLAT:.str.1_4
	cmp	byte ptr [rbx], 0
	je	.label_639
	mov	rdi, rbx
	call	last_component
	cmp	rbx, rax
	mov	edi, OFFSET FLAT:.str.1_4
	cmove	rdi, rbx
.label_639:
	mov	qword ptr [word ptr [rip + simple_backup_suffix]],  rdi
.label_636:
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
	je	.label_623
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
.label_617:
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rdx, qword ptr [rsp + 0x48]
	call	memcpy
	cmp	r15d, 1
	jne	.label_630
	mov	rax, qword ptr [rsp + 0x40]
	lea	rdi, [r13 + rax]
	mov	r14, r13
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdx, qword ptr [rsp + 0x38]
	call	memcpy
	mov	dword ptr [rsp + 0x6c], 1
	jmp	.label_633
	nop	word ptr cs:[rax + rax]
.label_630:
	mov	rax, qword ptr [rsp + 0x78]
	lea	rbx, [r13 + rax]
	mov	rdi, rbx
	call	base_len
	mov	rbp, rax
	test	r12, r12
	je	.label_638
	mov	dword ptr [rsp + 0x6c], r15d
	mov	rdi, r12
	call	rewinddir
	mov	r15, rbp
	jmp	.label_640
.label_638:
	mov	r14w, word ptr [rbx]
	mov	word ptr [rbx], 0x2e
	xor	edx, edx
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, r13
	lea	rcx, [rsp + 0x84]
	call	opendirat
	mov	r12, rax
	test	r12, r12
	je	.label_609
	mov	dword ptr [rsp + 0x6c], r15d
	mov	word ptr [rbx], r14w
	mov	r15, rbp
	mov	byte ptr [rbx + r15 + 4], 0
	mov	dword ptr [rbx + r15], 0x7e317e2e
.label_640:
	mov	rdi, r12
	call	readdir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_616
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
.label_621:
	lea	rbp, [rbx + 0x13]
	mov	rdi, rbp
	call	strlen
	cmp	rax, r13
	jb	.label_619
	mov	rax, qword ptr [rsp + 0x78]
	lea	rdi, [r14 + rax]
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp + 0x70]
	call	memcmp
	test	eax, eax
	jne	.label_619
	mov	al, byte ptr [rbx + r15 + 0x15]
	mov	cl, al
	add	cl, 0xcf
	movzx	ecx, cl
	cmp	ecx, 8
	ja	.label_619
	lea	rcx, [rbx + r15 + 0x13]
	movzx	eax, al
	cmp	eax, 0x39
	mov	rdx, r15
	sete	r15b
	movsx	eax, byte ptr [rcx + 3]
	mov	ecx, eax
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_612
	lea	rcx, [rbx + rdx + 0x17]
	mov	qword ptr [rsp + 0x58], rdx
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_607:
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
	jb	.label_607
	add	rbp, 2
	jmp	.label_626
.label_612:
	mov	qword ptr [rsp + 0x58], rdx
	mov	ebp, 1
.label_626:
	movzx	eax, al
	cmp	eax, 0x7e
	jne	.label_614
	mov	rax, qword ptr [rsp + 0x58]
	lea	rbx, [rbx + rax + 0x15]
	cmp	byte ptr [rbp + rbx + 1], 0
	je	.label_634
	mov	r15, qword ptr [rsp + 0x58]
	jmp	.label_619
.label_614:
	mov	r15, qword ptr [rsp + 0x58]
	jmp	.label_619
.label_634:
	cmp	qword ptr [rsp + 0x28], rbp
	jb	.label_622
	jne	.label_625
	mov	rax, qword ptr [rsp + 0x40]
	lea	rdi, [r14 + rax + 2]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x28]
	call	memcmp
	test	eax, eax
	jle	.label_622
	mov	r15, qword ptr [rsp + 0x58]
	jmp	.label_619
.label_622:
	movzx	edx, r15b
	lea	rcx, [rdx + rbp]
	mov	qword ptr [rsp + 0x28], rcx
	mov	rax, qword ptr [rsp]
	lea	r15, [rax + rcx]
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, r15
	jae	.label_631
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
	jne	.label_637
	jmp	.label_628
.label_631:
	mov	rax, r14
.label_637:
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
	jmp	.label_611
	nop	word ptr cs:[rax + rax]
.label_635:
	mov	byte ptr [rax], 0x30
	movzx	ecx, byte ptr [rax - 1]
	dec	rax
.label_611:
	cmp	ecx, 0x39
	je	.label_635
	inc	cl
	mov	byte ptr [rax], cl
	mov	r15, qword ptr [rsp + 0x58]
	jmp	.label_619
.label_625:
	mov	r15, qword ptr [rsp + 0x58]
	nop	
.label_619:
	mov	rdi, r12
	call	readdir
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_621
	mov	r13, r14
	mov	rax, qword ptr [rsp + 0x30]
	jmp	.label_624
.label_609:
	mov	dword ptr [rsp + 0x6c], r15d
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	mov	eax, 3
	je	.label_629
	mov	eax, 2
.label_629:
	mov	word ptr [rbx], r14w
	mov	byte ptr [rbx + rbp + 4], 0
	mov	dword ptr [rbx + rbp], 0x7e317e2e
	xor	r12d, r12d
.label_624:
	cmp	eax, 1
	je	.label_632
	cmp	eax, 2
	je	.label_616
	mov	r14, r13
	cmp	eax, 3
	jne	.label_633
	jmp	.label_628
	nop	word ptr cs:[rax + rax]
.label_616:
	mov	eax, dword ptr [rsp + 0x6c]
	cmp	eax, 2
	jne	.label_632
	mov	rax, qword ptr [rsp + 0x40]
	lea	rdi, [r13 + rax]
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdx, qword ptr [rsp + 0x38]
	call	memcpy
	mov	dword ptr [rsp + 0x6c], 1
.label_632:
	mov	r15d, dword ptr [rsp + 0x84]
	mov	rdi, r13
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	base_len
	mov	rbp, rax
	cmp	rbp, 0xf
	jb	.label_608
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	jne	.label_610
	mov	r14, r13
	test	r15d, r15d
	js	.label_613
	call	__errno_location
	mov	r13, rax
	mov	dword ptr [r13], 0
	mov	esi, 3
	mov	edi, r15d
	call	fpathconf
	cmp	dword ptr [r13], 1
	sbb	rax, 0
	jmp	.label_618
.label_608:
	mov	eax, 0xff
	jmp	.label_610
.label_613:
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
.label_618:
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
.label_610:
	cmp	rax, rbp
	jae	.label_627
	mov	rcx, qword ptr [rsp + 0x40]
	lea	rcx, [r13 + rcx]
	mov	r14, r13
	sub	rcx, rbx
	cmp	rax, rcx
	lea	rax, [rax - 1]
	cmova	rax, rcx
	mov	word ptr [rbx + rax], 0x7e
	jmp	.label_633
.label_627:
	mov	r14, r13
	nop	dword ptr [rax + rax]
.label_633:
	mov	eax, dword ptr [rsp + 0x54]
	test	al, al
	mov	r15d, dword ptr [rsp + 0x6c]
	mov	r13, r14
	je	.label_615
	mov	edx, dword ptr [rsp + 0x84]
	test	edx, edx
	jns	.label_606
	mov	dword ptr [rsp + 0x84], 0xffffff9c
	mov	edx, 0xffffff9c
	xor	eax, eax
	mov	qword ptr [rsp + 0x78], rax
.label_606:
	cmp	r15d, 1
	setne	al
	movzx	r8d, al
	mov	rax, qword ptr [rsp + 0x78]
	lea	rcx, [r13 + rax]
	mov	edi, 0xffffff9c
	mov	rsi, qword ptr [rsp + 0x60]
	call	renameatu
	test	eax, eax
	je	.label_615
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	cmp	ebp, 0x11
	je	.label_617
	test	r12, r12
	je	.label_620
	mov	rdi, r12
	call	closedir
.label_620:
	mov	rdi, r13
	call	free
	mov	dword ptr [rbx], ebp
	xor	r13d, r13d
	jmp	.label_623
.label_615:
	test	r12, r12
	je	.label_623
	mov	rdi, r12
	call	closedir
	jmp	.label_623
.label_628:
	mov	rdi, r14
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r13d, r13d
.label_623:
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
	je	.label_641
	pop	rcx
	ret	
.label_641:
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
	je	.label_642
	cmp	byte ptr [rsi], 0
	je	.label_642
	push	rax
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + backup_types]]
	add	rsp, 8
.label_642:
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
	je	.label_643
	cmp	byte ptr [rsi], 0
	je	.label_643
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	jmp	.label_645
.label_643:
	mov	edi, OFFSET FLAT:.str.1_5
	call	getenv
	mov	ecx, 2
	test	rax, rax
	je	.label_644
	cmp	byte ptr [rax], 0
	je	.label_644
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str_8
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	mov	rsi, rax
.label_645:
	call	__xargmatch_internal
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + backup_types]]
.label_644:
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
	je	.label_646
	test	rsi, rsi
	je	.label_648
	mov	rax, rdi
	mov	rdx, rsi
	nop	word ptr cs:[rax + rax]
.label_647:
	mov	rcx, rdx
	xor	edx, edx
	div	rcx
	test	rdx, rdx
	mov	rax, rcx
	jne	.label_647
	xor	edx, edx
	mov	rax, rdi
	div	rcx
	mov	r9, rax
	mov	rcx, r9
	imul	rcx, rsi
	cmp	rcx, r8
	ja	.label_648
	xor	edx, edx
	mov	rax, rcx
	div	rsi
	cmp	rax, r9
	je	.label_649
	jmp	.label_648
.label_646:
	test	rsi, rsi
	mov	edi, 0x2000
	cmovne	rdi, rsi
.label_648:
	cmp	rdi, r8
	cmovbe	r8, rdi
	mov	rcx, r8
.label_649:
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
	je	.label_651
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
	test	eax, eax
	jne	.label_651
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fflush
	test	eax, eax
	setne	bpl
.label_651:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	close_stream
	test	bpl, bpl
	jne	.label_652
	test	eax, eax
	jne	.label_652
	pop	rbx
	pop	r14
	pop	rbp
	jmp	close_stdout
.label_652:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_9
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_653
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_6
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	jmp	.label_650
.label_653:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_6
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
.label_650:
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
	je	.label_657
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_656
	cmp	dword ptr [rbp], 0x20
	jne	.label_656
.label_657:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_655
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_656:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_10
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name_0]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_654
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_6
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_655:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_654:
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
	je	.label_658
	pop	rcx
	ret	
.label_658:
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
.label_659:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_660
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_659
.label_660:
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
.label_663:
	mov	rbx, rax
	cmp	r15, rbx
	jae	.label_661
	lea	rax, [rbx - 1]
	movzx	ecx, byte ptr [r14 + rbx - 1]
	cmp	ecx, 0x2f
	je	.label_663
.label_661:
	test	rbx, rbx
	sete	al
	movzx	eax, al
	lea	rdi, [rbx + rax + 1]
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_664
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	test	rbx, rbx
	jne	.label_662
	mov	byte ptr [r15], 0x2e
	mov	ebx, 1
.label_662:
	mov	byte ptr [r15 + rbx], 0
	mov	rax, r15
.label_664:
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
.label_665:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	edx, 0x2f
	je	.label_665
	xor	r8d, r8d
	mov	rax, rdi
	jmp	.label_669
	nop	word ptr cs:[rax + rax]
.label_666:
	mov	dl, byte ptr [rax + 1]
	inc	rax
	mov	r8b, cl
.label_669:
	mov	cl, 1
	movzx	esi, dl
	cmp	esi, 0x2f
	je	.label_666
	test	dl, dl
	je	.label_667
	mov	cl, r8b
	and	cl, 1
	je	.label_668
	xor	r8d, r8d
.label_668:
	test	cl, cl
	cmovne	rdi, rax
	mov	cl, r8b
	jmp	.label_666
.label_667:
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
.label_670:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_671
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_670
.label_671:
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
	je	.label_672
	mov	rbx, rax
.label_672:
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
	je	.label_673
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_673:
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
	je	.label_674
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_674:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_677
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_676
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_675
.label_676:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_675:
	mov	edx, dword ptr [rax]
.label_677:
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
	je	.label_678
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
	je	.label_679
	cmp	rax, rbx
	je	.label_678
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	triple_free
.label_678:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_679:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a110

	.globl seen_file
	.type seen_file, @function
seen_file:
	test	rdi, rdi
	je	.label_680
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
.label_680:
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
	jle	.label_683
	cmp	eax, 0x9fff
	jg	.label_688
	cmp	eax, 0x6000
	je	.label_682
	cmp	eax, 0x8000
	jne	.label_681
	cmp	qword ptr [rdi + 0x30], 0
	je	.label_685
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_7
	mov	edx, 5
	jmp	dcgettext
.label_683:
	cmp	eax, 0x1000
	je	.label_684
	cmp	eax, 0x2000
	je	.label_687
	cmp	eax, 0x4000
	jne	.label_681
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_3
	mov	edx, 5
	jmp	dcgettext
.label_688:
	cmp	eax, 0xa000
	je	.label_686
	cmp	eax, 0xc000
	jne	.label_681
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_1
	mov	edx, 5
	jmp	dcgettext
.label_682:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	jmp	dcgettext
.label_684:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
	mov	edx, 5
	jmp	dcgettext
.label_687:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
	mov	edx, 5
	jmp	dcgettext
.label_686:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_2
	mov	edx, 5
	jmp	dcgettext
.label_681:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_1
	mov	edx, 5
	jmp	dcgettext
.label_685:
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
	jle	.label_689
	cmp	ecx, 0x9fff
	jg	.label_695
	cmp	ecx, 0x6000
	je	.label_697
	mov	dl, 0x2d
	cmp	ecx, 0x8000
	je	.label_692
	jmp	.label_702
.label_689:
	cmp	ecx, 0x1000
	je	.label_696
	cmp	ecx, 0x2000
	je	.label_705
	cmp	ecx, 0x4000
	jne	.label_702
	mov	dl, 0x64
	jmp	.label_692
.label_695:
	cmp	ecx, 0xa000
	je	.label_694
	cmp	ecx, 0xc000
	jne	.label_702
	mov	dl, 0x73
	jmp	.label_692
.label_697:
	mov	dl, 0x62
	jmp	.label_692
.label_696:
	mov	dl, 0x70
	jmp	.label_692
.label_694:
	mov	dl, 0x6c
	jmp	.label_692
.label_702:
	mov	dl, 0x3f
	jmp	.label_692
.label_705:
	mov	dl, 0x63
.label_692:
	push	rbx
	mov	byte ptr [rsi], dl
	mov	bl, ah
	test	bl, 1
	mov	r9b, 0x72
	mov	cl, 0x72
	jne	.label_704
	mov	cl, 0x2d
.label_704:
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
	jne	.label_690
	mov	cl, 0x2d
.label_690:
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
	jne	.label_707
	mov	cl, 0x2d
.label_707:
	mov	byte ptr [rsi + 5], cl
	mov	ecx, eax
	and	ecx, 8
	lea	edi, [rcx*4 + 0x53]
	mov	cl, 0x78
	jne	.label_693
	mov	cl, 0x2d
.label_693:
	test	bl, 4
	jne	.label_703
	mov	dil, cl
.label_703:
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
	jne	.label_706
	mov	r8b, 0x2d
.label_706:
	test	bl, 2
	pop	rbx
	je	.label_691
	shl	eax, 5
	or	eax, 0x54
	mov	r8b, al
.label_691:
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
	je	.label_708
	pop	rcx
	ret	
.label_708:
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
	je	.label_716
	movzx	ecx, byte ptr [rbx + r13 - 1]
	cmp	ecx, 0x2f
	jne	.label_709
	mov	qword ptr [rsp + 8], r14
	xor	r12d, r12d
	jmp	.label_712
.label_716:
	movzx	ecx, byte ptr [r14]
	cmp	ecx, 0x2f
	mov	r12b, 0x2e
	je	.label_713
	jmp	.label_710
.label_709:
	movzx	ecx, byte ptr [r14]
	cmp	ecx, 0x2f
	jne	.label_711
.label_710:
	xor	r12d, r12d
	jmp	.label_713
.label_711:
	mov	r12b, 0x2f
.label_713:
	mov	qword ptr [rsp + 8], r14
.label_712:
	test	r12b, r12b
	setne	cl
	movzx	ebp, cl
	lea	rcx, [r15 + rbx]
	lea	rdi, [rbp + rcx + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_715
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	add	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_714
	mov	qword ptr [rax], rbp
.label_714:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r15
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	mov	rax, r14
.label_715:
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
	je	.label_717
	nop	word ptr [rax + rax]
.label_719:
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r15
	call	safe_write
	cmp	rax, -1
	je	.label_717
	test	rax, rax
	je	.label_718
	add	r14, rax
	add	rbx, rax
	sub	r15, rax
	jne	.label_719
	jmp	.label_717
.label_718:
	call	__errno_location
	mov	dword ptr [rax], 0x1c
.label_717:
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
	jae	.label_720
	mov	rdi, rcx
	not	rdi
	add	rdi, rdx
	mov	rsi, rdi
	shr	rsi, 4
	xor	eax, eax
	bt	rdi, 4
	jb	.label_727
	xor	eax, eax
	cmp	qword ptr [rcx], 0
	je	.label_724
	mov	rdi, rcx
	nop	word ptr cs:[rax + rax]
.label_726:
	mov	rdi, qword ptr [rdi + 8]
	inc	rax
	test	rdi, rdi
	jne	.label_726
.label_724:
	add	rcx, 0x10
.label_727:
	test	rsi, rsi
	je	.label_720
	nop	word ptr cs:[rax + rax]
.label_728:
	cmp	qword ptr [rcx], 0
	mov	esi, 0
	mov	rdi, rcx
	je	.label_721
	nop	
.label_723:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_723
	cmp	rsi, rax
	cmova	rax, rsi
.label_721:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_722
	lea	rdi, [rcx + 0x10]
	xor	esi, esi
.label_725:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_725
	cmp	rsi, rax
	cmova	rax, rsi
.label_722:
	add	rcx, 0x20
	cmp	rcx, rdx
	jb	.label_728
.label_720:
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
	jae	.label_736
	mov	rax, rcx
	not	rax
	add	rax, r9
	mov	r8, rax
	shr	r8, 4
	xor	edx, edx
	bt	rax, 4
	jb	.label_737
	xor	edx, edx
	cmp	qword ptr [rcx], 0
	je	.label_729
	mov	esi, 1
	mov	rax, rcx
.label_732:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_732
	jmp	.label_733
.label_737:
	xor	esi, esi
	jmp	.label_734
.label_729:
	xor	esi, esi
.label_733:
	add	rcx, 0x10
.label_734:
	test	r8, r8
	je	.label_736
	nop	dword ptr [rax]
.label_738:
	cmp	qword ptr [rcx], 0
	mov	rax, rcx
	je	.label_739
	nop	dword ptr [rax]
.label_730:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_730
	inc	rsi
.label_739:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_731
	lea	rax, [rcx + 0x10]
	nop	word ptr [rax + rax]
.label_735:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_735
	inc	rsi
.label_731:
	add	rcx, 0x20
	cmp	rcx, r9
	jb	.label_738
.label_736:
	cmp	rsi, qword ptr [rdi + 0x18]
	jne	.label_740
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 0x20]
	je	.label_741
.label_740:
	xor	eax, eax
.label_741:
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
	jae	.label_742
	mov	rdi, rax
	not	rdi
	add	rdi, rdx
	mov	rsi, rdi
	shr	rsi, 4
	xor	ebx, ebx
	bt	rdi, 4
	jb	.label_750
	xor	ebx, ebx
	cmp	qword ptr [rax], 0
	je	.label_745
	mov	rdi, rax
	nop	dword ptr [rax]
.label_751:
	mov	rdi, qword ptr [rdi + 8]
	inc	rbx
	test	rdi, rdi
	jne	.label_751
.label_745:
	add	rax, 0x10
.label_750:
	test	rsi, rsi
	je	.label_742
	nop	word ptr cs:[rax + rax]
.label_746:
	cmp	qword ptr [rax], 0
	mov	esi, 0
	mov	rdi, rax
	je	.label_752
	nop	
.label_743:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_743
	cmp	rsi, rbx
	cmova	rbx, rsi
.label_752:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_744
	lea	rdi, [rax + 0x10]
	xor	esi, esi
.label_753:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_753
	cmp	rsi, rbx
	cmova	rbx, rsi
.label_744:
	add	rax, 0x20
	cmp	rax, rdx
	jb	.label_746
.label_742:
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
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_747]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_748]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_749]]
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
	jae	.label_758
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_755
	add	rbx, rax
	je	.label_755
	cmp	rsi, r12
	je	.label_757
	xor	r15d, r15d
	nop	
.label_756:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_754
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_755
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_756
.label_757:
	mov	r15, r12
	jmp	.label_755
.label_754:
	mov	r15, qword ptr [rbx]
.label_755:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_758:
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
	je	.label_759
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_762
	nop	word ptr cs:[rax + rax]
.label_761:
	add	rcx, 0x10
.label_762:
	cmp	rcx, rdx
	jae	.label_760
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_761
.label_759:
	ret	
.label_760:
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
	jae	.label_766
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_767:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_765
	test	rdx, rdx
	jne	.label_767
	jmp	.label_763
.label_765:
	test	rdx, rdx
	je	.label_763
	mov	rax, qword ptr [rdx]
	jmp	.label_764
.label_763:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rax + rcx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_768:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_764
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_768
.label_764:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_766:
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
	jmp	.label_769
	nop	dword ptr [rax + rax]
.label_772:
	add	r9, 0x10
.label_769:
	cmp	r9, r8
	jae	.label_770
	cmp	qword ptr [r9], 0
	je	.label_772
	test	r9, r9
	mov	r10, r9
	je	.label_772
	nop	word ptr [rax + rax]
.label_771:
	cmp	rax, rdx
	jae	.label_770
	mov	rcx, qword ptr [r10]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r10, qword ptr [r10 + 8]
	test	r10, r10
	jne	.label_771
	mov	r8, qword ptr [rdi + 8]
	jmp	.label_772
.label_770:
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
	jmp	.label_773
	nop	word ptr cs:[rax + rax]
.label_775:
	add	r13, 0x10
.label_773:
	cmp	r13, rax
	jae	.label_776
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_775
	test	r13, r13
	je	.label_775
	mov	rsi, r14
	call	r15
	test	al, al
	mov	rbp, r13
	je	.label_776
	nop	word ptr cs:[rax + rax]
.label_777:
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_774
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_777
	jmp	.label_776
	nop	dword ptr [rax]
.label_774:
	mov	rax, qword ptr [r12 + 8]
	jmp	.label_775
.label_776:
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
	je	.label_778
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_779:
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
	jne	.label_779
.label_778:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aa80
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_780]]
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
	je	.label_786
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_791
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_795]]
	jbe	.label_783
	movss	xmm1,  dword ptr [dword ptr [rip + label_784]]
	ucomiss	xmm1, xmm0
	jbe	.label_783
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_789]]
	jbe	.label_783
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_783
	addss	xmm1,  dword ptr [dword ptr [rip + label_795]]
	ucomiss	xmm0, xmm1
	jbe	.label_783
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_785]]
	ucomiss	xmm2, xmm0
	jb	.label_783
	ucomiss	xmm0, xmm1
	jbe	.label_783
.label_791:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_793
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_794
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_781
.label_794:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_781:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_787]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_788]]
	jae	.label_783
.label_793:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_790
	nop	
.label_796:
	add	rbx, 2
.label_790:
	cmp	rbx, -1
	je	.label_783
	cmp	rbx, 0xa
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	jb	.label_782
	nop	word ptr cs:[rax + rax]
.label_792:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_782
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_792
.label_782:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_796
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_783
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_783
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_783
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
	jmp	.label_786
.label_783:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_786:
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
	jmp	.label_797
	nop	word ptr cs:[rax + rax]
.label_800:
	add	r14, 0x10
.label_797:
	cmp	r14, rax
	jae	.label_799
	cmp	qword ptr [r14], 0
	je	.label_800
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_801
	nop	word ptr cs:[rax + rax]
.label_803:
	test	cl, 1
	je	.label_802
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_802:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_803
.label_801:
	test	cl, cl
	je	.label_798
	mov	rdi, qword ptr [r14]
	call	rax
.label_798:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_800
.label_799:
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
.label_804:
	add	r15, 0x10
.label_812:
	cmp	r15, rax
	jae	.label_807
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_804
	test	r15, r15
	je	.label_804
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_805
.label_810:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_805:
	test	rbx, rbx
	jne	.label_810
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_804
.label_807:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_811
	nop	
.label_808:
	add	r15, 0x10
.label_811:
	cmp	r15, rax
	jae	.label_806
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
.label_806:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_813
.label_814:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_814
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
	jne	.label_826
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_830
	cvtsi2ss	xmm0, rsi
	jmp	.label_817
.label_830:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_817:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_787]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_788]]
	jae	.label_819
.label_826:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_822
	nop	dword ptr [rax + rax]
.label_833:
	add	rbx, 2
.label_822:
	cmp	rbx, -1
	je	.label_819
	cmp	rbx, 0xa
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	jb	.label_815
	nop	word ptr cs:[rax + rax]
.label_829:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_815
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_829
.label_815:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_833
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_819
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_823
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_819
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
	je	.label_820
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_823
.label_820:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_831
	nop	
.label_824:
	add	r12, 0x10
.label_831:
	cmp	r12, r15
	jae	.label_821
	cmp	qword ptr [r12], 0
	je	.label_824
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_827
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_825:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_818
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_832
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_828
	nop	word ptr [rax + rax]
.label_832:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_828:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_825
.label_827:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_824
.label_821:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_816
	mov	rdi, qword ptr [rsp]
	call	free
.label_819:
	xor	ebp, ebp
.label_823:
	mov	al, bpl
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_818:
	call	abort
.label_816:
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
.label_839:
	mov	rbx, qword ptr [r15]
	mov	rdi, rbx
	call	qword ptr [rbp + 0x30]
	mov	rsi, qword ptr [rbp + 0x10]
	cmp	rax, rsi
	jae	.label_836
	mov	rdx, qword ptr [rbp]
	mov	rcx, qword ptr [r15 + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_838
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [r15 + 8], rdi
	mov	qword ptr [rdx + rax + 8], r15
	jmp	.label_847
	nop	dword ptr [rax]
.label_838:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [rbp + 0x18]
	mov	qword ptr [r15], 0
	mov	rax, qword ptr [rbp + 0x48]
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [rbp + 0x48], r15
.label_847:
	test	rcx, rcx
	mov	r15, rcx
	jne	.label_839
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
	jae	.label_834
	mov	r15, qword ptr [rbp]
	shl	rbx, 4
	cmp	qword ptr [r15 + rbx], 0
	je	.label_837
	mov	rax, qword ptr [rbp + 0x48]
	test	rax, rax
	je	.label_840
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp + 0x48], rcx
	jmp	.label_843
.label_837:
	add	r15, rbx
	mov	qword ptr [r15], r13
	inc	qword ptr [rbp + 0x18]
	jmp	.label_846
.label_840:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_835
.label_843:
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [r15 + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + rbx + 8], rax
.label_846:
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
.label_835:
	xor	eax, eax
	jmp	.label_842
.label_836:
	call	abort
.label_834:
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
	jmp	.label_849
.label_864:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_851
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr cs:[rax + rax]
.label_877:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_870
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_875
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_877
	jmp	.label_851
.label_870:
	mov	rax, r14
	jmp	.label_852
.label_875:
	mov	rax, qword ptr [rbp]
.label_852:
	test	rax, rax
	je	.label_851
.label_849:
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
	js	.label_866
	cvtsi2ss	xmm0, rcx
	jmp	.label_872
.label_866:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_872:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_850
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_863
	ucomiss	xmm2,  dword ptr [dword ptr [rip + label_795]]
	jbe	.label_856
	movss	xmm3,  dword ptr [dword ptr [rip + label_784]]
	ucomiss	xmm3, xmm2
	jbe	.label_856
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_789]]
	jbe	.label_856
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_856
	addss	xmm3,  dword ptr [dword ptr [rip + label_795]]
	ucomiss	xmm2, xmm3
	jbe	.label_856
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5,  dword ptr [dword ptr [rip + label_785]]
	ucomiss	xmm5, xmm4
	jb	.label_856
	ucomiss	xmm4, xmm3
	ja	.label_871
.label_856:
	mov	qword ptr [word ptr [r13 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2,  dword ptr [dword ptr [rip + label_873]]
	jmp	.label_871
.label_863:
	mov	eax, OFFSET FLAT:default_tuning
.label_871:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_850
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_874
	mulss	xmm0, xmm2
.label_874:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_788]]
	jae	.label_859
	movss	xmm1,  dword ptr [dword ptr [rip + label_787]]
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
.label_869:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_868
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_867
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_869
	jmp	.label_850
.label_868:
	mov	rax, r14
	jmp	.label_855
.label_867:
	mov	rax, qword ptr [rbp]
.label_855:
	test	rax, rax
	jne	.label_876
.label_850:
	cmp	qword ptr [r12], 0
	je	.label_878
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_848
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_854
.label_878:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0,  xmmword ptr [word ptr [rip + label_857]]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_858
.label_848:
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
.label_876:
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
	je	.label_879
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_879:
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
	jae	.label_892
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_888
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_898
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_880
	mov	r14, qword ptr [r13]
.label_898:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_886
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_887
.label_880:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_888
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_896:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_893
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_895
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_896
	jmp	.label_888
.label_886:
	mov	qword ptr [r13], 0
	jmp	.label_887
.label_893:
	mov	rcx, rax
	jmp	.label_883
.label_895:
	mov	r14, qword ptr [rcx]
.label_883:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_887:
	xor	r12d, r12d
	test	r14, r14
	je	.label_888
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_882
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_900
	cvtsi2ss	xmm1, rax
	jmp	.label_894
.label_900:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_894:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_897
	cvtsi2ss	xmm0, rcx
	jmp	.label_881
.label_897:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_881:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_882
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_889
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_795]]
	jbe	.label_891
	movss	xmm4,  dword ptr [dword ptr [rip + label_784]]
	ucomiss	xmm4, xmm3
	jbe	.label_891
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_891
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4,  dword ptr [dword ptr [rip + label_789]]
	jbe	.label_891
	movss	xmm4,  dword ptr [dword ptr [rip + label_795]]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_891
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5,  dword ptr [dword ptr [rip + label_785]]
	ucomiss	xmm5, xmm3
	jb	.label_891
	ucomiss	xmm3, xmm4
	ja	.label_884
.label_891:
	mov	qword ptr [word ptr [r15 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_884
.label_889:
	mov	eax, OFFSET FLAT:default_tuning
.label_884:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_882
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_890
	mulss	xmm0, dword ptr [rax + 8]
.label_890:
	movss	xmm1,  dword ptr [dword ptr [rip + label_787]]
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
	jne	.label_882
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_899
	nop	
.label_885:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_885
.label_899:
	mov	qword ptr [r15 + 0x48], 0
.label_882:
	mov	r12, r14
.label_888:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_892:
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
	jne	.label_901
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_902
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	same_name
	add	rsp, 8
	ret	
.label_901:
	xor	eax, eax
	ret	
.label_902:
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
	jne	.label_903
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_904
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	test	eax, eax
	sete	al
	add	rsp, 8
	ret	
.label_903:
	xor	eax, eax
	ret	
.label_904:
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
	js	.label_906
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_905
	mov	dword ptr [r14], ebp
	jmp	.label_906
.label_905:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_906:
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
	je	.label_908
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_909
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_9
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_909
	mov	esi, OFFSET FLAT:.str.2_5
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_907
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_907:
	mov	rbx, r14
.label_909:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_908:
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
	jne	.label_910
	lea	r15, [rsp]
	mov	rdi, r15
	mov	rsi, rbx
	mov	edx, r14d
	call	set_permissions
	mov	ebp, eax
	mov	rdi, r15
	call	free_permission_context
.label_910:
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
	je	.label_911
	test	rdx, rdx
	je	.label_911
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_911:
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
.label_1022:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_959
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_962]]
.label_1702:
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
.label_1703:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_985
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_985
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_1008:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_1000
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_1000:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_1008
.label_985:
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
	jmp	.label_942
.label_1695:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_942
.label_1698:
	mov	al, 1
.label_1696:
	mov	r12b, 1
.label_1699:
	test	r12b, 1
	mov	cl, 1
	je	.label_1035
	mov	cl, al
.label_1035:
	mov	al, cl
.label_1697:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_912
	test	r10, r10
	je	.label_916
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_917
.label_912:
	xor	ecx, ecx
	jmp	.label_917
.label_1700:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_981
	test	r10, r10
	je	.label_933
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_937
.label_1701:
	mov	dil, 1
	mov	r9d, 5
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_2
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_942
.label_916:
	mov	ecx, 1
.label_917:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_2
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_942
.label_981:
	xor	eax, eax
	jmp	.label_937
.label_933:
	mov	eax, 1
.label_937:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_2
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_942:
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
	jmp	.label_963
.label_1020:
	inc	rdi
.label_963:
	cmp	rbp, -1
	je	.label_1015
	cmp	rdi, rbp
	jne	.label_1017
	jmp	.label_1018
	nop	word ptr cs:[rax + rax]
.label_1015:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_921
.label_1017:
	test	r12b, r12b
	je	.label_1024
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_1026
	cmp	rbp, -1
	jne	.label_1026
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
.label_1026:
	cmp	rbx, rbp
	jbe	.label_922
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_935
	nop	word ptr [rax + rax]
.label_1024:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_935
.label_922:
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
	jne	.label_952
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_935
	jmp	.label_927
.label_952:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_935:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_973
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_979]]
.label_1758:
	test	rdi, rdi
	jne	.label_964
	jmp	.label_986
.label_1762:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_988
	test	rdi, rdi
	jne	.label_991
	cmp	rbp, 1
	je	.label_986
	xor	r13d, r13d
	jmp	.label_951
.label_1751:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_995
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_927
	cmp	r9d, 2
	jne	.label_1001
	mov	al, r14b
	and	al, 1
	jne	.label_1003
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_1007
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_1007:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_1013
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_1013:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_925
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_925:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_1027
.label_1752:
	mov	bl, 0x62
	jmp	.label_1009
.label_1753:
	mov	cl, 0x74
	jmp	.label_915
.label_1754:
	mov	bl, 0x76
	jmp	.label_1009
.label_1755:
	mov	bl, 0x66
	jmp	.label_1009
.label_1756:
	mov	cl, 0x72
	jmp	.label_915
.label_1759:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_914
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_918
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
	jae	.label_974
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_974:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_948
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_948:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_968
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_968:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_914:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_951
.label_1760:
	cmp	r9d, 5
	je	.label_955
	cmp	r9d, 2
	jne	.label_964
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_964
	jmp	.label_969
.label_1761:
	cmp	r9d, 2
	jne	.label_971
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_975
	jmp	.label_980
.label_973:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_982
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
.label_913:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_996
	test	cl, cl
	je	.label_996
	xor	eax, eax
	jmp	.label_951
.label_988:
	test	rdi, rdi
	jne	.label_1011
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_1011
.label_986:
	mov	dl, 1
.label_1757:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_1014
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_951
.label_995:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_1020
	jmp	.label_964
.label_971:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_915
.label_975:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_957
.label_915:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_1029
.label_1009:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_951
	jmp	.label_958
.label_982:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_1036
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_1036:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_999:
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
	je	.label_947
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_950
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_956
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_1033
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_970:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_966
	bt	rsi, rdx
	jb	.label_1034
.label_966:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_970
.label_1033:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_1032
	xor	r13d, r13d
.label_1032:
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
	je	.label_999
	jmp	.label_913
.label_1011:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_951
.label_955:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_964
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_964
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_964
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_1004
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_977
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_1006
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_984
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_984:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_1023
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_1023:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_1031
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_1031:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_1028
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_1028:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_951
.label_964:
	xor	eax, eax
	xor	r13d, r13d
.label_951:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_928
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_932
	jmp	.label_938
	nop	word ptr [rax + rax]
.label_928:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_938
.label_932:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_943
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_949
	nop	word ptr cs:[rax + rax]
.label_938:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_949:
	mov	bl, r15b
	je	.label_957
	jmp	.label_958
.label_943:
	mov	bl, r15b
.label_958:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_927
	cmp	r9d, 2
	jne	.label_961
	mov	al, r14b
	and	al, 1
	jne	.label_961
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_953
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_953:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_993
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_993:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_978
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_978:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_961:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_989
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_989:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_960
.label_991:
	xor	r13d, r13d
	jmp	.label_951
.label_996:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_997
	nop	word ptr [rax + rax]
.label_992:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_997:
	test	cl, cl
	je	.label_1010
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_987
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_1016
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_1016:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_987
	nop	word ptr [rax + rax]
.label_1010:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_927
	cmp	r9d, 2
	jne	.label_998
	mov	al, r14b
	and	al, 1
	jne	.label_998
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_1012
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_1012:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_931
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_931:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_924
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_924:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_998:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_940
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_940:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_946
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_946:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_990
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_990:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_987:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_957
	test	r14b, 1
	je	.label_929
	mov	bl, al
	and	bl, 1
	jne	.label_929
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_954
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_954:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_983
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_983:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_929:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_992
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_992
	nop	dword ptr [rax]
.label_957:
	test	r14b, 1
	je	.label_1005
	and	al, 1
	jne	.label_1005
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_967
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_967:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_923
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_923:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_1005:
	mov	bl, r15b
.label_960:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_1025
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_1025:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_1020
.label_1001:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_1027
.label_1003:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_1027:
	cmp	rcx, r10
	jae	.label_941
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_941:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_920
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_930
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_934
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_939
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_939:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_945
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_945:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_951
.label_920:
	xor	r13d, r13d
	jmp	.label_951
.label_930:
	xor	r13d, r13d
	jmp	.label_951
.label_934:
	xor	r13d, r13d
	jmp	.label_951
.label_950:
	xor	r13d, r13d
.label_947:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_913
.label_956:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_965
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_1021:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_972
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_1021
	xor	r13d, r13d
	jmp	.label_913
.label_965:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_913
.label_972:
	xor	r13d, r13d
	jmp	.label_913
.label_1004:
	xor	r13d, r13d
	jmp	.label_951
.label_977:
	xor	r13d, r13d
	jmp	.label_951
	nop	dword ptr [rax]
.label_1018:
	mov	r13, rdi
.label_921:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_994
	or	al, dl
	je	.label_936
.label_994:
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
	je	.label_1002
	or	al, dl
	jne	.label_1002
	test	r8b, 1
	jne	.label_1019
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_1002
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_1022
.label_1002:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_1030
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_1030
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_1030
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_919:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_944
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_944:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_919
.label_1030:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_926
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_926
.label_1014:
	mov	r9d, 2
	jmp	.label_927
.label_1034:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_927
.label_936:
	mov	rbp, r13
	jmp	.label_927
.label_1029:
	mov	r9d, 2
.label_927:
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
.label_976:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_926:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1019:
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
	jmp	.label_976
.label_918:
	mov	r9d, 2
	jmp	.label_927
.label_980:
	mov	r9d, 2
	jmp	.label_927
.label_969:
	mov	r9d, 2
	jmp	.label_927
.label_1006:
	mov	r9d, 5
	jmp	.label_927
.label_959:
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
	je	.label_1037
	mov	qword ptr [rax], rbx
.label_1037:
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
	jl	.label_1038
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
.label_1038:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_1042
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_1040]], OFFSET FLAT:slot0
.label_1042:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_1039
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_1039:
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
	js	.label_1043
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_1046
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_1049
.label_1046:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_1045
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
	jne	.label_1044
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_1044:
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
.label_1049:
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
	ja	.label_1047
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_1048
	mov	rdi, rbx
	call	free
.label_1048:
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
.label_1047:
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
.label_1043:
	call	abort
.label_1045:
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
	je	.label_1050
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
.label_1050:
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
	je	.label_1051
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
.label_1051:
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
	je	.label_1052
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
.label_1052:
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
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_1053:
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
	mov	rsi,  qword ptr [word ptr [rip + label_1054]]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1055]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1056]]
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
	mov	rdx,  qword ptr [word ptr [rip + label_1054]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1055]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1056]]
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
	mov	rcx,  qword ptr [word ptr [rip + label_1054]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1055]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1056]]
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
	mov	rcx,  qword ptr [word ptr [rip + label_1054]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1055]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1056]]
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
	je	.label_1057
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
.label_1057:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x40d630
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_1054]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1055]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1056]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_1058
	test	rdx, rdx
	je	.label_1058
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_1058:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x40d6a0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_1054]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1055]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1056]]
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
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_1059:
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
	mov	rcx,  qword ptr [word ptr [rip + label_1054]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1055]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1056]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_1060
	test	rsi, rsi
	je	.label_1060
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_1060:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40d780
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_1054]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1055]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1056]]
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
	lea	rax, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_1061:
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
	jne	.label_1062
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_1064
	cmp	ecx, 0x55
	jne	.label_1063
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_1063
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_1063
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_1063
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_1063
	cmp	byte ptr [rax + 5], 0
	jne	.label_1063
	mov	eax, OFFSET FLAT:.str.14_2
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_1062
	mov	eax, OFFSET FLAT:.str.15_3
	jmp	.label_1062
.label_1064:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_1063
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_1063
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_1063
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_1063
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_1063
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_1063
	cmp	byte ptr [rax + 7], 0
	je	.label_1065
.label_1063:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_2
	mov	eax, OFFSET FLAT:.str.12_2
	cmove	rax, rcx
.label_1062:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1065:
	mov	eax, OFFSET FLAT:.str.17_3
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_1062
	mov	eax, OFFSET FLAT:.str.18_2
	jmp	.label_1062
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
	jns	.label_1066
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x16
	je	.label_1073
	cmp	ecx, 0x5f
	je	.label_1073
	cmp	ecx, 0x26
	jne	.label_1066
.label_1073:
	test	r12d, r12d
	je	.label_1075
	mov	qword ptr [rsp], rax
	cmp	r12d, 2
	jb	.label_1076
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0x5f
	mov	ebx, 0xffffffff
	jmp	.label_1066
.label_1075:
	mov	qword ptr [rsp], rax
	xor	r12d, r12d
.label_1071:
	mov	rdi, rbp
	call	strlen
	mov	rbx, rax
	mov	rdi, r13
	call	strlen
	test	rbx, rbx
	je	.label_1069
	test	rax, rax
	je	.label_1069
	movzx	ecx, byte ptr [rbx + rbp - 1]
	cmp	ecx, 0x2f
	je	.label_1067
	movzx	eax, byte ptr [rax + r13 - 1]
	cmp	eax, 0x2f
	jne	.label_1069
.label_1067:
	lea	rcx, [rsp + 0x98]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, r15d
	mov	rdx, rbp
	call	__fxstatat
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1066
	test	r12b, r12b
	je	.label_1068
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0xb0]
	cmp	eax, 0x4000
	je	.label_1069
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 2
	jmp	.label_1066
.label_1076:
	lea	rcx, [rsp + 8]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, r14d
	mov	rdx, r13
	call	__fxstatat
	test	eax, eax
	je	.label_1070
	mov	rax, qword ptr [rsp]
	mov	eax, dword ptr [rax]
	mov	r12b, 1
	cmp	eax, 2
	je	.label_1071
	mov	ebx, 0xffffffff
	cmp	eax, 0x4b
	jne	.label_1066
.label_1070:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0x11
	mov	ebx, 0xffffffff
	jmp	.label_1066
.label_1068:
	lea	rcx, [rsp + 8]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, r14d
	mov	rdx, r13
	call	__fxstatat
	test	eax, eax
	je	.label_1074
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax], 2
	jne	.label_1066
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0xb0]
	cmp	eax, 0x4000
	jne	.label_1066
	jmp	.label_1069
.label_1074:
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsp + 0x20]
	and	ecx, eax
	cmp	ecx, 0x4000
	jne	.label_1077
	and	eax, dword ptr [rsp + 0xb0]
	cmp	eax, 0x4000
	jne	.label_1072
.label_1069:
	mov	edi, r15d
	mov	rsi, rbp
	mov	edx, r14d
	mov	rcx, r13
	call	renameat
	mov	ebx, eax
.label_1066:
	mov	eax, ebx
	add	rsp, 0x128
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1077:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0x14
	jmp	.label_1066
.label_1072:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0x15
	jmp	.label_1066
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
	jne	.label_1078
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, rbx
.label_1078:
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
.label_1080:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	write
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_1079
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_1080
	cmp	rbx, 0x7ff00001
	jb	.label_1079
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_1080
.label_1079:
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
	jne	.label_1081
	mov	qword ptr [rsp + 8], r15
	mov	dword ptr [rsp + 0x10], r12d
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_1084
	xor	ebp, ebp
	jmp	.label_1085
.label_1081:
	xor	ebp, ebp
	jmp	.label_1085
.label_1084:
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
	je	.label_1083
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_6
	xor	eax, eax
	mov	rcx, rbp
	call	error
.label_1083:
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
	je	.label_1086
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_6
	xor	eax, eax
	mov	rcx, rbx
	call	error
.label_1086:
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_1087
	mov	rax, qword ptr [rsp + 0xa8]
	cmp	rax, qword ptr [rsp + 0x18]
	sete	bpl
	jmp	.label_1082
.label_1087:
	xor	ebp, ebp
.label_1082:
	mov	rdi, rbx
	call	free
.label_1085:
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
	je	.label_1088
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
	jmp	.label_1097
	nop	dword ptr [rax + rax]
.label_1092:
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
.label_1097:
	mov	qword ptr [rsp + 0x40], rbx
	nop	word ptr cs:[rax + rax]
.label_1105:
	mov	dword ptr [rbp], 0
	mov	rdi, r13
	call	readdir
	mov	r14, rax
	test	r14, r14
	je	.label_1096
	movzx	eax, byte ptr [r14 + 0x13]
	cmp	eax, 0x2e
	jne	.label_1101
	movzx	eax, byte ptr [r14 + 0x14]
	cmp	eax, 0x2e
	mov	eax, 1
	jne	.label_1102
	mov	eax, 2
.label_1102:
	mov	al, byte ptr [r14 + rax + 0x13]
.label_1101:
	test	al, al
	je	.label_1105
	mov	rbx, r14
	add	rbx, 0x13
	mov	rdi, rbx
	call	strlen
	mov	rdx, rax
	inc	rdx
	cmp	qword ptr [rsp + 0x28], 1
	ja	.label_1094
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, r12
	jne	.label_1110
	mov	rdi, qword ptr [rsp + 0x30]
	test	rdi, rdi
	je	.label_1090
	movabs	rax, 0x555555555555555
	cmp	r12, rax
	jae	.label_1093
	mov	qword ptr [rsp + 0x20], rbx
	mov	qword ptr [rsp + 8], rdx
	mov	rax, r12
	shr	rax, 1
	lea	rcx, [r12 + rax + 1]
	jmp	.label_1095
	nop	dword ptr [rax + rax]
.label_1094:
	mov	qword ptr [rsp + 0x20], rbx
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rax, rbx
	sub	rax, r15
	cmp	rax, rdx
	mov	rax, qword ptr [rsp + 0x38]
	ja	.label_1104
	mov	rbx, rdx
	add	rbx, r15
	jb	.label_1093
	test	rax, rax
	je	.label_1109
	movabs	rcx, 0x5555555555555554
	cmp	rbx, rcx
	jae	.label_1093
	mov	r14, rdx
	mov	rcx, rbx
	shr	rcx, 1
	lea	rbx, [rbx + rcx + 1]
	jmp	.label_1091
.label_1110:
	mov	qword ptr [rsp + 0x20], rbx
	mov	qword ptr [rsp + 8], rdx
	mov	rbx, qword ptr [rsp + 0x30]
	jmp	.label_1092
.label_1090:
	mov	qword ptr [rsp + 0x20], rbx
	mov	qword ptr [rsp + 8], rdx
	test	r12, r12
	mov	rcx, r12
	mov	eax, 8
	cmove	rcx, rax
	mov	rax, rcx
	shr	rax, 0x3b
	jne	.label_1099
.label_1095:
	mov	qword ptr [rsp + 0x18], rcx
	mov	rsi, rcx
	shl	rsi, 4
	call	xrealloc
	mov	rbx, rax
	jmp	.label_1092
.label_1109:
	mov	r14, rdx
	test	rbx, rbx
	mov	ecx, 0x80
	cmove	rbx, rcx
	test	rbx, rbx
	js	.label_1108
.label_1091:
	mov	rdi, rax
	mov	rsi, rbx
	call	xrealloc
	mov	rdx, r14
.label_1104:
	mov	qword ptr [rsp + 0x38], rax
	lea	rdi, [rax + r15]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	r14, rdx
	call	memcpy
	add	r15, r14
	jmp	.label_1097
.label_1096:
	mov	ebx, dword ptr [rbp]
	test	ebx, ebx
	je	.label_1100
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	mov	rdi, qword ptr [rsp + 0x38]
	call	free
	mov	dword ptr [rbp], ebx
	xor	r14d, r14d
	jmp	.label_1088
.label_1100:
	cmp	qword ptr [rsp + 0x28], 1
	mov	r14, qword ptr [rsp + 0x38]
	ja	.label_1106
	test	r12, r12
	je	.label_1107
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
.label_1089:
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
	jne	.label_1089
	jmp	.label_1103
.label_1106:
	cmp	qword ptr [rsp + 0x40], r15
	jne	.label_1098
	lea	rsi, [r15 + 1]
	mov	rdi, r14
	call	xrealloc
	mov	r14, rax
	jmp	.label_1098
.label_1107:
	inc	r15
	mov	rdi, r15
	call	xmalloc
	mov	r14, rax
	xor	r15d, r15d
.label_1103:
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
.label_1098:
	mov	byte ptr [r14 + r15], 0
.label_1088:
	mov	rax, r14
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1093:
	call	xalloc_die
.label_1099:
	call	xalloc_die
.label_1108:
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
	je	.label_1111
	mov	rdi, rbx
	mov	esi, ebp
	call	streamsavedir
	mov	r14, rax
	mov	rdi, rbx
	call	closedir
	test	eax, eax
	je	.label_1111
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r14
	call	free
	mov	dword ptr [rbx], ebp
	xor	r14d, r14d
.label_1111:
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
	jb	.label_1120
	mov	rax, rbp
	sub	rax, r12
	sub	rax, r13
	add	rax, r14
	mov	rcx, -1
	nop	dword ptr [rax + rax]
.label_1114:
	movzx	edx, byte ptr [rax + rcx + 1]
	inc	rcx
	cmp	edx, 0x58
	je	.label_1114
	cmp	rcx, r12
	jae	.label_1117
.label_1120:
	mov	rax, qword ptr [rsp + 0x30]
	mov	dword ptr [rax], 0x16
	mov	r12d, 0xffffffff
.label_1116:
	mov	eax, r12d
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1117:
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
	je	.label_1116
	sub	rbp, r13
	add	rbp, qword ptr [rsp + 0x18]
	mov	rcx, rax
	neg	rcx
	mov	qword ptr [rsp + 0x10], rcx
	mov	r13, rax
	nop	word ptr cs:[rax + rax]
.label_1119:
	test	r13, r13
	mov	rbx, qword ptr [rsp + 0x10]
	je	.label_1118
	nop	word ptr [rax + rax]
.label_1113:
	mov	esi, 0x3d
	mov	rdi, r15
	call	randint_genmax
	mov	al,  byte ptr [byte ptr [rax + letters]]
	mov	byte ptr [rbp + rbx], al
	inc	rbx
	jne	.label_1113
.label_1118:
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x20]
	call	qword ptr [rsp + 0x28]
	mov	r12d, eax
	test	r12d, r12d
	jns	.label_1112
	mov	rax, qword ptr [rsp + 0x30]
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x11
	mov	r12d, 0xffffffff
	jne	.label_1115
	inc	r14d
	cmp	r14d, 0x3a2f7
	jbe	.label_1119
	mov	rdi, r15
	call	randint_all_free
	mov	rax, qword ptr [rsp + 0x30]
	mov	dword ptr [rax], 0x11
	mov	r12d, 0xffffffff
	jmp	.label_1116
.label_1112:
	mov	eax, dword ptr [rsp + 0xc]
	mov	rcx, qword ptr [rsp + 0x30]
	mov	dword ptr [rcx], eax
	mov	ebx, eax
.label_1115:
	mov	rdi, r15
	call	randint_all_free
	mov	rax, qword ptr [rsp + 0x30]
	mov	dword ptr [rax], ebx
	jmp	.label_1116
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
	jae	.label_1121
	movsxd	rax, ecx
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1122]]
	lea	rdx, [rsp + 4]
	call	try_tempname_len
	pop	rcx
	ret	
.label_1121:
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
	je	.label_1123
	cmp	dword ptr [rax], 0x4b
	jne	.label_1124
.label_1123:
	mov	dword ptr [rax], 0x11
.label_1124:
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
	jae	.label_1125
	movsxd	rax, ecx
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1122]]
	lea	rdx, [rsp + 4]
	mov	r8d, 6
	call	try_tempname_len
	pop	rcx
	ret	
.label_1125:
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
	ja	.label_1126
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
	jmp	.label_1127
.label_1126:
	mov	eax, ebx
.label_1127:
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
	je	.label_1141
	cmp	r14, r12
	jne	.label_1147
	xor	ecx, ecx
	cmp	r15d, r13d
	je	.label_1128
.label_1147:
	lea	rax, [r12 - 2]
	mov	ecx, 0xffffffff
	cmp	r14, rax
	jle	.label_1128
	lea	rax, [r14 - 2]
	mov	ecx, 1
	cmp	r12, rax
	jle	.label_1128
	mov	dword ptr [rsp + 0x2c], edi
	mov	qword ptr [rsp + 0x20], rsi
	mov	rbx,  qword ptr [word ptr [rip + utimecmpat.ht]]
	test	rbx, rbx
	jne	.label_1132
	mov	edi, 0x10
	xor	esi, esi
	mov	edx, OFFSET FLAT:dev_info_hash
	mov	ecx, OFFSET FLAT:dev_info_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	rbx, rax
	mov	qword ptr [word ptr [rip + utimecmpat.ht]],  rbx
	test	rbx, rbx
	je	.label_1136
.label_1132:
	mov	rsi,  qword ptr [word ptr [rip + utimecmpat.new_dst_res]]
	test	rsi, rsi
	jne	.label_1145
	mov	edi, 0x10
	call	malloc
	mov	rsi, rax
	mov	qword ptr [word ptr [rip + utimecmpat.new_dst_res]],  rsi
	test	rsi, rsi
	je	.label_1151
	mov	dword ptr [rsi + 8], 0x77359400
	mov	byte ptr [rsi + 0xc], 0
.label_1145:
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rsi], rax
	mov	rdi, rbx
	call	hash_insert
	mov	r11, rax
	test	r11, r11
	je	.label_1129
	cmp	r11,  qword ptr [word ptr [rip + utimecmpat.new_dst_res]]
	jne	.label_1138
	mov	qword ptr [word ptr [rip + utimecmpat.new_dst_res]],  0
	jmp	.label_1138
.label_1129:
	mov	rbx,  qword ptr [word ptr [rip + utimecmpat.ht]]
	test	rbx, rbx
	je	.label_1142
.label_1151:
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rsp + 0xe8], rax
	lea	rsi, [rsp + 0xe8]
	mov	rdi, rbx
	call	hash_lookup
	mov	r11, rax
.label_1142:
	test	r11, r11
	jne	.label_1138
.label_1136:
	mov	dword ptr [rsp + 0xf0], 0x77359400
	mov	byte ptr [rsp + 0xf4], 0
	lea	r11, [rsp + 0xe8]
.label_1138:
	mov	r10, qword ptr [r11 + 8]
	movabs	rax, 0xff00000000
	test	r10, rax
	jne	.label_1154
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
	je	.label_1135
	mov	dword ptr [r11 + 8], 1
	mov	r10d, 1
.label_1140:
	mov	dword ptr [r11 + 8], r10d
	mov	byte ptr [r11 + 0xc], 1
.label_1154:
	cmp	r10d, 0x77359400
	sete	al
	movzx	eax, al
	not	rax
	and	r12, rax
	mov	eax, r13d
	cdq	
	idiv	r10d
	sub	r13d, edx
.label_1141:
	mov	ecx, 0xffffffff
	cmp	r14, r12
	jl	.label_1128
	mov	ecx, 1
	jg	.label_1128
	cmp	r15d, r13d
	mov	ecx, 0xffffffff
	jl	.label_1128
	setg	al
	movzx	ecx, al
.label_1128:
	mov	eax, ecx
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1135:
	mov	ebp, 0xa
	cmp	r10d, 0xa
	jle	.label_1152
	mov	qword ptr [rsp + 8], rbx
	mov	qword ptr [rsp + 0x10], r11
	mov	edx, eax
	mov	qword ptr [rsp + 0x18], rax
	mov	edi, r15d
.label_1153:
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
	jne	.label_1137
	mov	rbp, r9
	cmp	ebp, 0x3b9aca00
	je	.label_1143
	add	ebp, ebp
	lea	ebp, [rbp + rbp*4]
	cmp	ebp, r10d
	jl	.label_1153
	jmp	.label_1148
.label_1152:
	mov	qword ptr [rsp + 0x18], rax
	mov	dword ptr [r11 + 8], ebp
	jmp	.label_1130
.label_1137:
	mov	rbp, r9
.label_1148:
	mov	r11, qword ptr [rsp + 0x10]
	mov	dword ptr [r11 + 8], ebp
	cmp	ebp, 2
	mov	r10d, ebp
	mov	rbx, qword ptr [rsp + 8]
	jl	.label_1140
	jmp	.label_1130
.label_1143:
	xor	ecx, 1
	mov	ebp, 0x3b9aca00
	shl	ebp, cl
	mov	r11, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rsp + 8]
	mov	dword ptr [r11 + 8], ebp
.label_1130:
	cmp	ebp, 0x77359400
	sete	al
	movzx	edi, al
	mov	ecx, 1
	cmp	r12, r14
	jl	.label_1128
	cmp	r14, r12
	setne	al
	cmp	r13d, r15d
	jg	.label_1131
	test	al, al
	je	.label_1128
.label_1131:
	mov	rax, rdi
	not	rax
	and	rax, r12
	mov	ecx, 0xffffffff
	cmp	r14, rax
	jl	.label_1128
	jne	.label_1150
	mov	eax, r13d
	cdq	
	idiv	ebp
	mov	eax, r13d
	sub	eax, edx
	cmp	r15d, eax
	jl	.label_1128
.label_1150:
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
	jne	.label_1128
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
	je	.label_1139
	mov	qword ptr [rsp + 0xd0], r14
	mov	qword ptr [rsp + 0xd8], rax
	lea	rdx, [rsp + 0xc0]
	mov	ecx, 0x100
	mov	edi, dword ptr [rsp + 0x2c]
	mov	rsi, rbp
	call	utimensat
.label_1139:
	test	ebx, ebx
	je	.label_1134
	mov	ecx, 0xfffffffe
	jmp	.label_1128
.label_1134:
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
	je	.label_1149
	mov	r10d, 1
	mov	r11, qword ptr [rsp + 0x10]
	jmp	.label_1140
.label_1149:
	mov	rbp, qword ptr [rsp + 0x18]
.label_1133:
	mov	r10d, 0x77359400
	cmp	ecx, 0x3b9aca00
	je	.label_1144
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	cmp	ecx, ebp
	je	.label_1146
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
	je	.label_1133
.label_1144:
	mov	r11, qword ptr [rsp + 0x10]
	jmp	.label_1140
.label_1146:
	mov	r10d, ebp
	mov	r11, qword ptr [rsp + 0x10]
	jmp	.label_1140
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
	je	.label_1193
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0xd0], xmm0
	movups	xmm0, xmmword ptr [rdx + 0x10]
	movaps	xmmword ptr [rsp + 0xe0], xmm0
	mov	rcx, qword ptr [rbx + 8]
	mov	rdx, rcx
	and	rdx, 0xfffffffffffffffe
	cmp	rcx, 0x3b9aca00
	jb	.label_1159
	cmp	rdx, 0x3ffffffe
	jne	.label_1167
.label_1159:
	mov	rax, qword ptr [rbx + 0x18]
	mov	rdi, rax
	and	rdi, 0xfffffffffffffffe
	cmp	rax, 0x3b9aca00
	jb	.label_1169
	cmp	rdi, 0x3ffffffe
	je	.label_1169
.label_1167:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	ebp, 0xffffffff
	jmp	.label_1165
.label_1169:
	xor	esi, esi
	cmp	rdx, 0x3ffffffe
	mov	edx, 0
	jne	.label_1181
	mov	qword ptr [rbx], 0
	cmp	rcx, 0x3ffffffe
	sete	cl
	movzx	edx, cl
	mov	esi, 1
.label_1181:
	cmp	rdi, 0x3ffffffe
	jne	.label_1187
	mov	qword ptr [rbx + 0x10], 0
	cmp	rax, 0x3ffffffe
	sete	al
	movzx	eax, al
	add	edx, eax
	mov	esi, 1
.label_1187:
	cmp	edx, 1
	sete	al
	movzx	r12d, al
	add	r12d, esi
	mov	ebp, 0xffffffff
	js	.label_1165
.label_1193:
	test	r15d, r15d
	jns	.label_1174
	test	r14, r14
	jne	.label_1174
	call	__errno_location
	mov	dword ptr [rax], 9
	mov	ebp, 0xffffffff
	jmp	.label_1165
.label_1174:
	cmp	dword ptr [dword ptr [rip + utimensat_works_really]],  0
	js	.label_1155
	cmp	r12d, 2
	jne	.label_1157
	lea	rdx, [rsp + 0x40]
	mov	edi, 1
	test	r15d, r15d
	js	.label_1158
	mov	esi, r15d
	call	__fxstat
	jmp	.label_1162
.label_1158:
	mov	rsi, r14
	call	__xstat
.label_1162:
	mov	ebp, 0xffffffff
	test	eax, eax
	jne	.label_1165
	cmp	qword ptr [rbx + 8], 0x3ffffffe
	jne	.label_1166
	movups	xmm0, xmmword ptr [rsp + 0x88]
	movaps	xmmword ptr [rbx], xmm0
	mov	r12d, 3
	jmp	.label_1157
.label_1166:
	mov	r12d, 3
	cmp	qword ptr [rbx + 0x18], 0x3ffffffe
	jne	.label_1157
	movups	xmm0, xmmword ptr [rsp + 0x98]
	movaps	xmmword ptr [rbx + 0x10], xmm0
.label_1157:
	test	r15d, r15d
	jns	.label_1180
	mov	edi, 0xffffff9c
	xor	ecx, ecx
	mov	rsi, r14
	mov	rdx, rbx
	call	utimensat
	mov	ebp, eax
	test	ebp, ebp
	jle	.label_1183
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_1184
.label_1183:
	je	.label_1186
	call	__errno_location
.label_1184:
	cmp	dword ptr [rax], 0x26
	jne	.label_1186
.label_1180:
	test	r15d, r15d
	js	.label_1155
	mov	edi, r15d
	mov	rsi, rbx
	call	futimens
	mov	ebp, eax
	test	ebp, ebp
	jle	.label_1188
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_1190
.label_1186:
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  1
	jmp	.label_1165
.label_1188:
	je	.label_1192
	call	__errno_location
.label_1190:
	cmp	dword ptr [rax], 0x26
	jne	.label_1192
.label_1155:
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  0xffffffff
	mov	dword ptr [dword ptr [rip + lutimensat_works_really]],  0xffffffff
	test	r12d, r12d
	je	.label_1194
	cmp	r12d, 3
	je	.label_1156
	lea	rdx, [rsp + 0x40]
	mov	edi, 1
	test	r15d, r15d
	js	.label_1177
	mov	esi, r15d
	call	__fxstat
	jmp	.label_1160
.label_1194:
	xor	r12d, r12d
	test	rbx, rbx
	jne	.label_1161
	jmp	.label_1164
.label_1192:
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  1
	jmp	.label_1165
.label_1177:
	mov	rsi, r14
	call	__xstat
.label_1160:
	mov	ebp, 0xffffffff
	test	eax, eax
	jne	.label_1165
.label_1156:
	test	rbx, rbx
	je	.label_1171
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, 0x3ffffffe
	je	.label_1173
	cmp	rax, 0x3fffffff
	jne	.label_1176
	cmp	qword ptr [rbx + 0x18], 0x3fffffff
	jne	.label_1191
	xor	r12d, r12d
	jmp	.label_1164
.label_1171:
	xor	r12d, r12d
	jmp	.label_1164
.label_1173:
	xor	ebp, ebp
	cmp	qword ptr [rbx + 0x18], 0x3ffffffe
	je	.label_1165
	lea	rbp, [rbx + 0x18]
	movups	xmm0, xmmword ptr [rsp + 0x88]
	movaps	xmmword ptr [rbx], xmm0
	jmp	.label_1185
.label_1176:
	lea	rbp, [rbx + 0x18]
	jmp	.label_1185
.label_1191:
	lea	rbp, [rbx + 0x18]
	mov	rdi, rbx
	call	gettime
.label_1185:
	mov	rax, qword ptr [rbp]
	cmp	rax, 0x3fffffff
	je	.label_1189
	cmp	rax, 0x3ffffffe
	jne	.label_1161
	mov	rax, qword ptr [rsp + 0x98]
	mov	rcx, qword ptr [rsp + 0xa0]
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx + 0x18], rcx
	jmp	.label_1161
.label_1189:
	add	rbx, 0x10
	mov	rdi, rbx
	call	gettime
.label_1161:
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
.label_1164:
	test	r15d, r15d
	js	.label_1172
	xor	ebp, ebp
	xor	esi, esi
	mov	edi, r15d
	mov	rdx, r12
	call	futimesat
	test	eax, eax
	je	.label_1179
	mov	ebp, 0xffffffff
	test	r14, r14
	je	.label_1165
	mov	rdi, r14
	mov	rsi, r12
	call	utimes
	jmp	.label_1182
.label_1172:
	mov	edi, 0xffffff9c
	mov	rsi, r14
	mov	rdx, r12
	call	futimesat
.label_1182:
	mov	ebp, eax
.label_1165:
	mov	eax, ebp
	add	rsp, 0xf0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1179:
	test	r12, r12
	je	.label_1165
	mov	rbx, qword ptr [r12 + 8]
	mov	r14, qword ptr [r12 + 0x18]
	cmp	rbx, 0x7a11f
	setg	al
	cmp	r14, 0x7a11f
	setg	cl
	or	cl, al
	movzx	eax, cl
	cmp	eax, 1
	jne	.label_1165
	lea	rdx, [rsp + 0x40]
	mov	edi, 1
	mov	esi, r15d
	call	__fxstat
	test	eax, eax
	jne	.label_1165
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
	jl	.label_1163
	cmp	rcx, 1
	jne	.label_1163
	xor	edx, edx
	cmp	qword ptr [rsp + 0x90], 0
	jne	.label_1163
	lea	rdx, [rsp]
	mov	qword ptr [rsp + 8], 0
.label_1163:
	cmp	r14, 0x7a120
	jl	.label_1170
	cmp	rax, 1
	jne	.label_1170
	cmp	qword ptr [rsp + 0xa0], 0
	je	.label_1168
.label_1170:
	test	rdx, rdx
	jne	.label_1175
	jmp	.label_1178
.label_1168:
	lea	rdx, [rsp]
	mov	qword ptr [rsp + 0x18], 0
.label_1175:
	xor	esi, esi
	mov	edi, r15d
	call	futimesat
.label_1178:
	xor	ebp, ebp
	jmp	.label_1165
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
	jne	.label_1199
.label_1215:
	mov	rax, qword ptr [r12 + 0x18]
	mov	rdi, rax
	and	rdi, 0xfffffffffffffffe
	cmp	rax, 0x3b9aca00
	jb	.label_1202
	cmp	rdi, 0x3ffffffe
	je	.label_1202
.label_1199:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_1216:
	mov	ebp, 0xffffffff
	jmp	.label_1195
.label_1202:
	xor	esi, esi
	cmp	rdx, 0x3ffffffe
	mov	edx, 0
	jne	.label_1207
	mov	qword ptr [r12], 0
	cmp	rcx, 0x3ffffffe
	sete	cl
	movzx	edx, cl
	mov	esi, 1
.label_1207:
	cmp	rdi, 0x3ffffffe
	jne	.label_1217
	mov	qword ptr [r12 + 0x10], 0
	cmp	rax, 0x3ffffffe
	sete	al
	movzx	eax, al
	add	edx, eax
	mov	esi, 1
.label_1217:
	cmp	edx, 1
	sete	al
	movzx	ebx, al
	add	ebx, esi
	mov	ebp, 0xffffffff
	js	.label_1195
.label_1209:
	cmp	dword ptr [dword ptr [rip + lutimensat_works_really]],  0
	js	.label_1206
	cmp	ebx, 2
	jne	.label_1196
	lea	rdx, [rsp]
	mov	edi, 1
	mov	rsi, r14
	call	__lxstat
	mov	ebp, 0xffffffff
	test	eax, eax
	jne	.label_1195
	cmp	qword ptr [r12 + 8], 0x3ffffffe
	jne	.label_1214
	movups	xmm0, xmmword ptr [rsp + 0x48]
	movaps	xmmword ptr [r12], xmm0
	mov	ebx, 3
	jmp	.label_1196
.label_1214:
	mov	ebx, 3
	cmp	qword ptr [r12 + 0x18], 0x3ffffffe
	jne	.label_1196
	movups	xmm0, xmmword ptr [rsp + 0x58]
	movaps	xmmword ptr [r12 + 0x10], xmm0
.label_1196:
	mov	edi, 0xffffff9c
	mov	ecx, 0x100
	mov	rsi, r14
	mov	rdx, r12
	call	utimensat
	mov	ebp, eax
	test	ebp, ebp
	jle	.label_1205
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_1208
.label_1205:
	je	.label_1210
	call	__errno_location
.label_1208:
	cmp	dword ptr [rax], 0x26
	jne	.label_1210
.label_1206:
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
	jne	.label_1195
.label_1212:
	xor	edx, edx
	test	r12, r12
	je	.label_1200
	mov	rax, qword ptr [r12 + 8]
	cmp	rax, 0x3ffffffe
	je	.label_1197
	cmp	rax, 0x3fffffff
	jne	.label_1201
	xor	edx, edx
	cmp	qword ptr [r12 + 0x18], 0x3fffffff
	je	.label_1200
	lea	rbx, [r12 + 0x18]
	mov	rdi, r12
	call	gettime
	jmp	.label_1198
.label_1210:
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  1
	mov	dword ptr [dword ptr [rip + lutimensat_works_really]],  1
	jmp	.label_1195
.label_1211:
	lea	rdx, [rsp]
	mov	edi, 1
	mov	rsi, r14
	call	__lxstat
	mov	ebp, 0xffffffff
	test	eax, eax
	mov	rdx, r12
	jne	.label_1195
	jmp	.label_1200
.label_1197:
	xor	ebp, ebp
	cmp	qword ptr [r12 + 0x18], 0x3ffffffe
	je	.label_1195
	lea	rbx, [r12 + 0x18]
	movups	xmm0, xmmword ptr [rsp + 0x48]
	movaps	xmmword ptr [r12], xmm0
	jmp	.label_1198
.label_1201:
	lea	rbx, [r12 + 0x18]
.label_1198:
	mov	rax, qword ptr [rbx]
	cmp	rax, 0x3fffffff
	je	.label_1203
	cmp	rax, 0x3ffffffe
	jne	.label_1204
	mov	rax, qword ptr [rsp + 0x58]
	mov	rcx, qword ptr [rsp + 0x60]
	mov	qword ptr [r12 + 0x10], rax
	mov	qword ptr [r12 + 0x18], rcx
	mov	rdx, r15
	jmp	.label_1200
.label_1203:
	add	r12, 0x10
	mov	rdi, r12
	call	gettime
	mov	rdx, r15
	jmp	.label_1200
.label_1204:
	mov	rdx, r15
.label_1200:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0xa000
	jne	.label_1213
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_1216
.label_1213:
	mov	edi, 0xffffffff
	mov	rsi, r14
	call	fdutimens
	mov	ebp, eax
.label_1195:
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
	je	.label_1224
	mov	edx, OFFSET FLAT:.str_15
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_1223
.label_1224:
	mov	edx, OFFSET FLAT:.str.1_11
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_1223:
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
	ja	.label_1219
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_1220]]
.label_1797:
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
.label_1219:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_2
	jmp	.label_1218
.label_1798:
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
.label_1799:
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
.label_1800:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_1225
.label_1801:
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
	jmp	.label_1227
.label_1802:
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
	jmp	.label_1222
.label_1803:
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
.label_1222:
	mov	qword ptr [rsp + 0x10], rdi
.label_1227:
	mov	qword ptr [rsp + 8], rsi
.label_1225:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_1226
.label_1805:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_3
.label_1218:
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
	jmp	.label_1221
.label_1804:
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
.label_1221:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_1226:
	call	__fprintf_chk
.label_1796:
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
.label_1228:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_1228
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
.label_1231:
	cmp	r10d, 0x28
	ja	.label_1229
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1230
	nop	word ptr cs:[rax + rax]
.label_1229:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1230:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_1232
	inc	r9
	cmp	r9, 0xa
	jb	.label_1231
.label_1232:
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
	je	.label_1233
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_1233:
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
.label_1237:
	cmp	r8d, 0x28
	ja	.label_1234
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_1236
	nop	
.label_1234:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_1236:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_1235
	inc	r9
	cmp	r9, 0xa
	jb	.label_1237
.label_1235:
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
	jne	.label_1238
	mov	al,  byte ptr [byte ptr [rip + can_write_any_file.can_write]]
	jmp	.label_1239
.label_1238:
	push	rax
	call	geteuid
	test	eax, eax
	sete	al
	sete	byte ptr [byte ptr [rip + can_write_any_file.can_write]]
	mov	byte ptr [byte ptr [rip + can_write_any_file.initialized]],  1
	add	rsp, 8
.label_1239:
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
	jb	.label_1240
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_1241
	test	rax, rax
	je	.label_1240
.label_1241:
	pop	rbx
	ret	
.label_1240:
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
	je	.label_1242
	test	rax, rax
	je	.label_1243
.label_1242:
	pop	rbx
	ret	
.label_1243:
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
	jb	.label_1244
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_1245
	test	rbx, rbx
	jne	.label_1245
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1245:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1246
	test	rax, rax
	je	.label_1244
.label_1246:
	pop	rbx
	ret	
.label_1244:
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
	je	.label_1247
	test	rbx, rbx
	jne	.label_1247
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1247:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1249
	test	rax, rax
	je	.label_1248
.label_1249:
	pop	rbx
	ret	
.label_1248:
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
	je	.label_1253
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_1254
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_1250
.label_1253:
	test	rcx, rcx
	jne	.label_1256
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_1256:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_1255
.label_1250:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_1251
	test	rbx, rbx
	jne	.label_1251
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1251:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1252
	test	rax, rax
	je	.label_1254
.label_1252:
	pop	rbx
	ret	
.label_1254:
	call	xalloc_die
.label_1255:
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
	je	.label_1257
	test	rax, rax
	je	.label_1258
.label_1257:
	pop	rbx
	ret	
.label_1258:
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
	je	.label_1261
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_1263
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_1260
	call	free
	xor	eax, eax
	jmp	.label_1262
.label_1261:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_1259
	mov	qword ptr [rsi], rbx
.label_1260:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1262
	test	rax, rax
	je	.label_1259
.label_1262:
	pop	rbx
	ret	
.label_1259:
	call	xalloc_die
.label_1263:
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
	je	.label_1265
	test	r14, r14
	je	.label_1264
.label_1265:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1264:
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
	jb	.label_1266
	call	rpl_calloc
	test	rax, rax
	je	.label_1266
	pop	rcx
	ret	
.label_1266:
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
	je	.label_1267
	test	r15, r15
	je	.label_1268
.label_1267:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1268:
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
	je	.label_1270
	test	r15, r15
	je	.label_1269
.label_1270:
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
	je	.label_1272
	pop	rcx
	ret	
.label_1272:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1271
	mov	edi, OFFSET FLAT:.str_16
	mov	esi, OFFSET FLAT:.str.1_13
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xfts_open
	call	__assert_fail
.label_1271:
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
	je	.label_1273
	cmp	ecx, 0x11
	jne	.label_1274
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_1273:
	ret	
.label_1274:
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
	jle	.label_1275
	mov	rdi, qword ptr [rsp + 8]
	movzx	ecx, byte ptr [rax + rdi - 1]
	cmp	ecx, 0xa
	jne	.label_1277
	mov	byte ptr [rdi + rax - 1], 0
	mov	rdi, qword ptr [rsp + 8]
.label_1277:
	call	rpmatch
	test	eax, eax
	setg	bl
	jmp	.label_1276
.label_1275:
	xor	ebx, ebx
.label_1276:
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
	je	.label_1278
	test	rsi, rsi
	mov	ecx, 1
	je	.label_1279
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_1279
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_1278:
	mov	ecx, 1
.label_1279:
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
	je	.label_1280
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1280
	test	byte ptr [rbx + 1], 1
	je	.label_1280
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_1280:
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
	ja	.label_1281
	mov	rax, qword ptr [rdi + 0x10]
	sub	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	test	byte ptr [rdi + 1], 1
	je	.label_1282
	mov	rcx, qword ptr [rdi + 0x58]
	sub	rcx, qword ptr [rdi + 0x48]
.label_1282:
	add	rax, rcx
.label_1281:
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
	jne	.label_1283
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1283
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1284
.label_1283:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_1284:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_1285
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1285:
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
	jae	.label_1295
	mov	eax, r15d
	and	eax, 0x204
	cmp	eax, 0x204
	je	.label_1295
	test	r15b, 0x12
	je	.label_1295
	mov	edi, 0x80
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_1301
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
	je	.label_1307
	mov	r14, rbx
	lea	rbx, [r12 + 8]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1317:
	call	strlen
	cmp	rax, rbp
	cmova	rbp, rax
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_1317
	inc	rbp
	mov	rbx, r14
.label_1307:
	cmp	rbp, 0x1000
	mov	esi, 0x1000
	cmova	rsi, rbp
	add	rsi, 0x100
	mov	qword ptr [rbx + 0x30], rsi
	xor	edi, edi
	call	realloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1291
	mov	r14d, r15d
	mov	qword ptr [rbx + 0x20], rbp
	mov	qword ptr [rsp + 0x18], rbx
	mov	r15, qword ptr [r12]
	mov	qword ptr [rsp + 0x30], r12
	xor	r12d, r12d
	test	r15, r15
	je	.label_1298
	mov	edi, 0x110
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_1770
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
.label_1298:
	mov	byte ptr [rsp + 0x17], 1
	test	r13, r13
	je	.label_1314
	mov	rax, qword ptr [rsp + 0x18]
	mov	al, byte ptr [rax + 0x49]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0x17], al
.label_1314:
	xor	ebp, ebp
	test	r15, r15
	je	.label_1309
	mov	qword ptr [rsp + 8], r12
	mov	ebx, r14d
	and	ebx, 0x800
	mov	dword ptr [rsp + 4], ebx
	xor	ebp, ebp
	xor	r12d, r12d
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_1306:
	mov	qword ptr [rsp + 0x28], rbp
	mov	rdi, r15
	call	strlen
	mov	rbp, rax
	test	ebx, ebx
	jne	.label_1290
	cmp	rbp, 3
	jb	.label_1293
	cmp	rbp, 2
	jb	.label_1296
	movzx	eax, byte ptr [rbp + r15 - 1]
	cmp	eax, 0x2f
	jne	.label_1297
	mov	qword ptr [rsp + 0x20], r12
.label_1299:
	movzx	eax, byte ptr [r15 + rbp - 2]
	cmp	eax, 0x2f
	jne	.label_1302
	dec	rbp
	cmp	rbp, 1
	ja	.label_1299
	jmp	.label_1302
.label_1290:
	mov	qword ptr [rsp + 0x20], r12
	jmp	.label_1302
.label_1293:
	mov	qword ptr [rsp + 0x20], r12
	jmp	.label_1302
.label_1296:
	mov	qword ptr [rsp + 0x20], r12
	jmp	.label_1302
.label_1297:
	mov	qword ptr [rsp + 0x20], r12
.label_1302:
	mov	rbx, r13
	lea	rdi, [rbp + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_1305
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
	jne	.label_1311
	mov	word ptr [r12 + 0x70], 0xb
	mov	qword ptr [r12 + 0xa8], 2
	jmp	.label_1318
	.section	.text
	.align	16
	#Procedure 0x40ff38
	.globl .label_40ff38
	.type .label_40ff38, @function
.label_40ff38:

	nop	dword ptr [rax + rax]
.label_1311:
	xor	edx, edx
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
.label_1318:
	mov	r13, rbx
	test	r13, r13
	je	.label_1300
	mov	rbp, r12
	mov	qword ptr [r12 + 0x10], r15
	mov	r12, qword ptr [rsp + 0x20]
	jmp	.label_1289
.label_1300:
	mov	qword ptr [r12 + 0x10], 0
	test	r15, r15
	mov	rbp, r12
	je	.label_1289
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + 0x10], r12
	mov	rbp, r15
.label_1289:
	inc	r14
	mov	rax, qword ptr [rsp + 0x30]
	mov	r15, qword ptr [rax + 8]
	add	rax, 8
	mov	qword ptr [rsp + 0x30], rax
	test	r15, r15
	mov	ebx, dword ptr [rsp + 4]
	jne	.label_1306
	test	r13, r13
	mov	rdi, qword ptr [rsp + 0x18]
	je	.label_1310
	cmp	r14, 2
	mov	r12, qword ptr [rsp + 8]
	jb	.label_1309
	mov	rsi, rbp
	mov	rdx, r14
	call	fts_sort
	mov	rbp, rax
	jmp	.label_1309
.label_1295:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
.label_1301:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1291:
	mov	rdi, qword ptr [rbx + 0x20]
	jmp	.label_1316
.label_1305:
	mov	rbp, qword ptr [rsp + 0x28]
	mov	r12, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rsp + 0x18]
	jmp	.label_1312
.label_1770:
	mov	rbx, qword ptr [rsp + 0x18]
	jmp	.label_1286
.label_1310:
	mov	r12, qword ptr [rsp + 8]
.label_1309:
	mov	edi, 0x110
	call	malloc
	test	rax, rax
	je	.label_1313
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
	je	.label_1294
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	jne	.label_1308
	jmp	.label_1312
.label_1313:
	mov	rbx, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx], 0
	jmp	.label_1312
.label_1294:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	je	.label_1312
	mov	rdi, rax
	call	cycle_check_init
.label_1308:
	mov	eax, dword ptr [rbx + 0x48]
	test	ax, 0x204
	jne	.label_1292
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_1315
	mov	edi, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_1287
.label_1312:
	mov	r14, rbx
	test	rbp, rbp
	je	.label_1288
	nop	
.label_1319:
	mov	rbx, qword ptr [rbp + 0x10]
	mov	rdi, qword ptr [rbp + 0x18]
	test	rdi, rdi
	je	.label_1303
	call	closedir
.label_1303:
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	mov	rbp, rbx
	jne	.label_1319
.label_1288:
	mov	rdi, r12
	call	free
	mov	rbx, r14
	mov	rbp, qword ptr [rbx + 0x20]
.label_1286:
	mov	rdi, rbp
.label_1316:
	call	free
	mov	rdi, rbx
	call	free
	xor	eax, eax
	jmp	.label_1301
.label_1315:
	mov	edi, dword ptr [rbx + 0x2c]
	mov	esi, OFFSET FLAT:.str_3
	xor	eax, eax
	call	openat_safer
.label_1287:
	mov	dword ptr [rbx + 0x28], eax
	test	eax, eax
	jns	.label_1292
	or	byte ptr [rbx + 0x48], 4
.label_1292:
	mov	rdi, rbx
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	mov	rax, rbx
	jmp	.label_1301
	.section	.text
	.align	16
	#Procedure 0x41018b
	.globl .label_41018b
	.type .label_41018b, @function
.label_41018b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410190

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
	jne	.label_1323
	test	al, 1
	je	.label_1323
	mov	dl, 1
.label_1323:
	lea	rbx, [r14 + 0x78]
	test	dl, dl
	jne	.label_1328
	and	eax, 2
	jne	.label_1328
	mov	esi, dword ptr [r15 + 0x2c]
	mov	rdx, qword ptr [r14 + 0x30]
	mov	edi, 1
	mov	r8d, 0x100
	mov	rcx, rbx
	call	__fxstatat
	test	eax, eax
	je	.label_1324
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_1326
.label_1328:
	mov	rsi, qword ptr [r14 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__xstat
	test	eax, eax
	je	.label_1324
	call	__errno_location
	mov	r15, rax
	mov	eax, dword ptr [r15]
	cmp	eax, 2
	jne	.label_1326
	mov	rsi, qword ptr [r14 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__lxstat
	test	eax, eax
	je	.label_1325
	mov	eax, dword ptr [r15]
.label_1326:
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
.label_1322:
	movzx	eax, ax
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1324:
	mov	ecx, 0xf000
	and	ecx, dword ptr [r14 + 0x90]
	mov	ax, 0xc
	cmp	ecx, 0xa000
	je	.label_1322
	cmp	ecx, 0x8000
	je	.label_1329
	cmp	ecx, 0x4000
	jne	.label_1320
	mov	rax, qword ptr [r14 + 0x88]
	mov	rcx, -1
	cmp	rax, 2
	jb	.label_1327
	cmp	qword ptr [r14 + 0x58], 0
	jle	.label_1327
	mov	ecx, dword ptr [r15 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_1327:
	mov	qword ptr [r14 + 0x68], rcx
	mov	ecx, dword ptr [r14 + 0x108]
	mov	ax, 1
	movzx	edx, cl
	cmp	edx, 0x2e
	jne	.label_1322
	mov	edx, ecx
	shr	edx, 8
	test	dl, dl
	je	.label_1321
	movzx	edx, dl
	cmp	edx, 0x2e
	jne	.label_1322
	test	ecx, 0xff0000
	jne	.label_1322
.label_1321:
	mov	ax, 1
	cmp	qword ptr [r14 + 0x58], 0
	je	.label_1322
	mov	ax, 5
	jmp	.label_1322
.label_1329:
	mov	ax, 8
	jmp	.label_1322
.label_1320:
	mov	ax, 3
	jmp	.label_1322
.label_1325:
	mov	dword ptr [r15], 0
	mov	ax, 0xd
	jmp	.label_1322
	.section	.text
	.align	16
	#Procedure 0x41032f
	.globl .label_41032f
	.type .label_41032f, @function
.label_41032f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x410330

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
	jae	.label_1337
	lea	rsi, [r14 + 0x28]
	mov	qword ptr [r12 + 0x38], rsi
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_1333
	lea	r13, [r12 + 0x10]
	mov	rdi, qword ptr [r13]
	shl	rsi, 3
	call	realloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_1333
	mov	qword ptr [r13], rdi
	jmp	.label_1332
.label_1337:
	mov	rdi, qword ptr [r12 + 0x10]
	add	r12, 0x10
	mov	r13, r12
.label_1332:
	test	rbx, rbx
	je	.label_1340
	nop	dword ptr [rax]
.label_1336:
	mov	qword ptr [rdi], rbx
	add	rdi, 8
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	jne	.label_1336
	mov	rdi, qword ptr [r13]
.label_1340:
	mov	edx, 8
	mov	rsi, r14
	mov	rcx, r15
	call	qsort
	mov	r9, qword ptr [r13]
	mov	rbx, qword ptr [r9]
	cmp	r14, 1
	mov	rcx, rbx
	je	.label_1330
	mov	rcx, qword ptr [r9 + 8]
	mov	qword ptr [rbx + 0x10], rcx
	mov	rcx, r14
	add	rcx, -2
	je	.label_1335
	lea	rdx, [r9 + 8]
	lea	edi, [r14 + 2]
	lea	r8, [r14 - 3]
	test	dil, 3
	je	.label_1338
	lea	edi, [r14 + 2]
	and	edi, 3
	neg	rdi
	nop	dword ptr [rax]
.label_1334:
	mov	rsi, qword ptr [rdx]
	mov	rax, qword ptr [rdx + 8]
	lea	rdx, [rdx + 8]
	mov	qword ptr [rsi + 0x10], rax
	dec	rcx
	inc	rdi
	jne	.label_1334
.label_1338:
	cmp	r8, 3
	jb	.label_1335
	nop	dword ptr [rax]
.label_1331:
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
	jne	.label_1331
.label_1335:
	mov	rcx, qword ptr [r9 + r14*8 - 8]
.label_1330:
	mov	qword ptr [rcx + 0x10], 0
	jmp	.label_1339
.label_1333:
	mov	rdi, qword ptr [r12 + 0x10]
	call	free
	mov	qword ptr [r12 + 0x10], 0
	mov	qword ptr [r12 + 0x38], 0
.label_1339:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4104a1
	.globl .label_4104a1
	.type .label_4104a1, @function
.label_4104a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4104b0

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_1347
	cmp	qword ptr [rdi + 0x58], 0
	js	.label_1359
	nop	word ptr cs:[rax + rax]
.label_1355:
	mov	rbx, qword ptr [rdi + 0x10]
	test	rbx, rbx
	jne	.label_1352
	mov	rbx, qword ptr [rdi + 8]
.label_1352:
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	mov	rdi, rbx
	jns	.label_1355
	jmp	.label_1356
.label_1359:
	mov	rbx, rdi
.label_1356:
	mov	rdi, rbx
	call	free
.label_1347:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_1358
	nop	word ptr cs:[rax + rax]
.label_1345:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_1342
	call	closedir
.label_1342:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_1345
.label_1358:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_1350
	xor	ebp, ebp
	test	al, 4
	jne	.label_1341
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebp, ebp
	test	eax, eax
	je	.label_1354
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_1354:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	test	ebp, ebp
	je	.label_1357
	jmp	.label_1341
.label_1350:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebp, ebp
	test	edi, edi
	js	.label_1341
	call	close
.label_1357:
	test	eax, eax
	je	.label_1341
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_1341:
	lea	rbx, [r14 + 0x60]
	jmp	.label_1343
	.section	.text
	.align	16
	#Procedure 0x410598
	.globl .label_410598
	.type .label_410598, @function
.label_410598:

	nop	dword ptr [rax + rax]
.label_1348:
	mov	edi, eax
	call	close
.label_1343:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_1346
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_1348
	jmp	.label_1343
.label_1346:
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_1349
	call	hash_free
.label_1349:
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_1351
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_1353
	call	hash_free
	jmp	.label_1353
.label_1351:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_1353:
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	ebp, ebp
	je	.label_1344
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_1344:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410612
	.globl .label_410612
	.type .label_410612, @function
.label_410612:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410620

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
	je	.label_1371
	mov	eax, dword ptr [r14 + 0x48]
	xor	r15d, r15d
	test	ah, 0x20
	jne	.label_1371
	movzx	ecx, word ptr [r12 + 0x74]
	mov	word ptr [r12 + 0x74], 3
	cmp	ecx, 1
	je	.label_1384
	movzx	edx, cx
	cmp	edx, 2
	jne	.label_1393
	mov	ecx, dword ptr [r12 + 0x70]
	mov	esi, ecx
	and	esi, 0xfffe
	cmp	esi, 0xc
	jne	.label_1394
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_1387
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_1404
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_1407
	mov	edi, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_1411
.label_1384:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	mov	r15, r12
	jmp	.label_1371
.label_1393:
	lea	r13, [r12 + 0x70]
	mov	ecx, dword ptr [r12 + 0x70]
	jmp	.label_1415
.label_1394:
	lea	r13, [r12 + 0x70]
.label_1415:
	movzx	esi, cx
	cmp	esi, 1
	jne	.label_1361
	cmp	edx, 4
	je	.label_1364
	test	al, 0x40
	je	.label_1369
	mov	rdx, qword ptr [r12 + 0x78]
	cmp	rdx, qword ptr [r14 + 0x18]
	jne	.label_1364
.label_1369:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_1374
	test	ah, 0x10
	jne	.label_1378
	mov	rcx, qword ptr [r12 + 0x30]
	mov	edx, 0xffffffff
	mov	rdi, r14
	mov	rsi, r12
	call	fts_safe_changedir
	test	eax, eax
	je	.label_1375
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	or	byte ptr [r12 + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_1391
	.section	.text
	.align	16
	#Procedure 0x410774
	.globl .label_410774
	.type .label_410774, @function
.label_410774:

	nop	word ptr cs:[rax + rax]
.label_1361:
	mov	r15, qword ptr [r12 + 0x10]
	test	r15, r15
	je	.label_1400
	mov	qword ptr [r14], r15
	mov	rdi, r12
	call	free
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_1403
	movzx	eax, word ptr [r15 + 0x74]
	cmp	eax, 4
	mov	r12, r15
	je	.label_1361
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_1360
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_1379
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_1379
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_1409
	mov	edi, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_1367
.label_1373:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_1391:
	test	rax, rax
	jne	.label_1373
	jmp	.label_1375
.label_1364:
	test	ecx, 0x20000
	je	.label_1377
	mov	edi, dword ptr [r12 + 0x44]
	call	close
.label_1377:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_1401
	nop	dword ptr [rax]
.label_1397:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_1385
	call	closedir
.label_1385:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_1397
	mov	qword ptr [r14 + 8], 0
.label_1401:
	mov	word ptr [r12 + 0x70], 6
.label_1406:
	mov	rdi, r14
	mov	rsi, r12
	call	leave_dir
	mov	r15, r12
	jmp	.label_1371
.label_1400:
	mov	r15, qword ptr [r12 + 8]
	cmp	qword ptr [r15 + 0x18], 0
	je	.label_1402
	mov	qword ptr [r14], r15
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	r15, rax
	test	r15, r15
	je	.label_1410
	mov	rdi, r12
	call	free
	jmp	.label_1360
.label_1387:
	mov	r15, r12
	jmp	.label_1362
.label_1403:
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	mov	eax, dword ptr [r14 + 0x48]
	je	.label_1414
	or	eax, 0x2000
	mov	dword ptr [r14 + 0x48], eax
	xor	r15d, r15d
	jmp	.label_1371
.label_1404:
	mov	r15, r12
	jmp	.label_1362
.label_1414:
	test	ax, 0x102
	je	.label_1365
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_1399
	call	hash_free
	jmp	.label_1399
.label_1378:
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	nop	word ptr cs:[rax + rax]
.label_1389:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_1381
	call	closedir
.label_1381:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_1389
	mov	qword ptr [r14 + 8], 0
.label_1374:
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_1395
.label_1375:
	mov	r15, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], 0
	jmp	.label_1360
.label_1395:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_1371
	cmp	dword ptr [r12 + 0x40], 0
	je	.label_1406
	movzx	eax, word ptr [r13]
	cmp	eax, 4
	je	.label_1406
	mov	word ptr [r13], 7
	jmp	.label_1406
.label_1407:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:.str_3
	xor	eax, eax
	call	openat_safer
.label_1411:
	mov	dword ptr [r12 + 0x44], eax
	test	eax, eax
	js	.label_1417
	or	byte ptr [r12 + 0x72], 2
	mov	r15, r12
	jmp	.label_1362
.label_1410:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_1371
	mov	r15, qword ptr [r12 + 8]
.label_1402:
	mov	qword ptr [r14], r15
	mov	rdi, r12
	call	free
	cmp	qword ptr [r15 + 0x58], -1
	je	.label_1366
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	je	.label_1370
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_1372
	movzx	eax, word ptr [r15 + 0x72]
	test	al, 2
	jne	.label_1380
	test	al, 1
	jne	.label_1382
	mov	rsi, qword ptr [r15 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_1
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_1392
.label_1366:
	mov	rdi, r15
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	xor	r15d, r15d
	jmp	.label_1371
.label_1417:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	mov	word ptr [r12 + 0x70], 7
	mov	r15, r12
	jmp	.label_1362
.label_1365:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_1399:
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
	je	.label_1412
	cmp	rbx, r12
	jne	.label_1413
	cmp	byte ptr [r15 + 0x109], 0
	je	.label_1412
.label_1413:
	inc	rbx
	mov	rdi, rbx
	call	strlen
	mov	r13, rax
	lea	rdx, [r13 + 1]
	mov	rdi, r12
	mov	rsi, rbx
	call	memmove
	mov	qword ptr [r15 + 0x60], r13
.label_1412:
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [r15 + 0x38], rax
	mov	qword ptr [r15 + 0x30], rax
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_1396
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [r14 + 0x58], rax
	jmp	.label_1362
.label_1396:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [r14 + 0x58], rax
	test	rax, rax
	je	.label_1362
	mov	rdi, rax
	call	cycle_check_init
	jmp	.label_1362
.label_1372:
	mov	rdi, r14
	call	restore_initial_cwd
.label_1392:
	test	eax, eax
	je	.label_1382
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_1382
.label_1380:
	mov	eax, dword ptr [r14 + 0x48]
	lea	rbx, [r15 + 0x44]
	test	al, 4
	jne	.label_1363
	test	ah, 2
	mov	ebp, dword ptr [r15 + 0x44]
	jne	.label_1405
	mov	edi, ebp
	call	fchdir
	test	eax, eax
	je	.label_1363
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_1363
.label_1409:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:.str_3
	xor	eax, eax
	call	openat_safer
.label_1367:
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_1388
	or	byte ptr [r15 + 0x72], 2
	jmp	.label_1379
.label_1388:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
.label_1379:
	mov	word ptr [r15 + 0x74], 3
.label_1360:
	mov	rax, qword ptr [r14 + 0x20]
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rcx + 0x48]
	movzx	edx, byte ptr [rdx + rcx - 1]
	cmp	edx, 0x2f
	jne	.label_1368
	dec	rcx
.label_1368:
	lea	rdi, [rax + rcx + 1]
	mov	byte ptr [rax + rcx], 0x2f
	lea	rsi, [r15 + 0x108]
	mov	rdx, qword ptr [r15 + 0x60]
	inc	rdx
	call	memmove
.label_1362:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	jne	.label_1383
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_1390
	cmp	rax, 2
	jne	.label_1370
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_1398
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_1398
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	filesystem_type
	cmp	rax, 0x52654973
	je	.label_1390
	cmp	rax, 0x58465342
	je	.label_1390
.label_1398:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	cmp	ecx, 0x4000
	jne	.label_1383
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_1390
	mov	rax, qword ptr [rbx + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_1390
	dec	rax
	mov	qword ptr [rbx + 0x68], rax
.label_1390:
	movzx	eax, word ptr [r15 + 0x70]
.label_1383:
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_1371
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_1416
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_1416:
	mov	rdi, r14
	mov	rsi, r15
	call	enter_dir
	test	al, al
	jne	.label_1371
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r15d, r15d
	jmp	.label_1371
.label_1405:
	mov	esi, dword ptr [r14 + 0x2c]
	cmp	esi, ebp
	jne	.label_1408
	cmp	esi, -0x64
	jne	.label_1370
.label_1408:
	lea	rdi, [r14 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_1376
	mov	edi, eax
	call	close
.label_1376:
	mov	dword ptr [r14 + 0x2c], ebp
.label_1363:
	mov	edi, dword ptr [rbx]
	call	close
.label_1382:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	je	.label_1386
	mov	eax, dword ptr [r15 + 0x40]
	cmp	eax, 0
	setne	cl
	movzx	ecx, cl
	or	ecx, 6
	cmp	eax, 0
	mov	word ptr [r15 + 0x70], cx
	jne	.label_1386
	mov	rdi, r14
	mov	rsi, r15
	call	leave_dir
.label_1386:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	r15, rax
.label_1371:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1370:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x410da4
	.globl .label_410da4
	.type .label_410da4, @function
.label_410da4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410db0

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_1419
	movups	xmm0, xmmword ptr [rsi + 0x78]
	movaps	xmmword ptr [rsp], xmm0
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_1420
	mov	rdi, rax
	call	free
	add	rsp, 0x18
	ret	
.label_1419:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_1418
	cmp	qword ptr [rax + 0x58], 0
	js	.label_1418
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_1420
	mov	rdx, qword ptr [rcx]
	cmp	rdx, qword ptr [rsi + 0x80]
	jne	.label_1418
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	jne	.label_1418
	mov	rdx, qword ptr [rax + 0x78]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	qword ptr [rcx], rax
.label_1418:
	add	rsp, 0x18
	ret	
.label_1420:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x410e32
	.globl .label_410e32
	.type .label_410e32, @function
.label_410e32:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410e40

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
	je	.label_1436
	movzx	edx, byte ptr [rbx]
	mov	ecx, 0x2e
	mov	eax, 0x2e
	sub	eax, edx
	jne	.label_1441
	movzx	eax, byte ptr [rbx + 1]
	sub	ecx, eax
	mov	eax, ecx
	jne	.label_1441
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_1441:
	test	eax, eax
	sete	r14b
	jmp	.label_1421
.label_1436:
	xor	r14d, r14d
.label_1421:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 4
	jne	.label_1427
	test	r13d, r13d
	jns	.label_1429
	mov	cl, r14b
	xor	cl, 1
	jne	.label_1430
	mov	qword ptr [rsp], rsi
	and	eax, 0x200
	je	.label_1431
	lea	rbp, [r15 + 0x60]
	mov	rdi, rbp
	call	i_ring_empty
	test	al, al
	jne	.label_1431
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r14b, 1
	jmp	.label_1431
.label_1427:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_1424
	and	eax, 0x200
	je	.label_1424
	mov	edi, r13d
	call	close
	jmp	.label_1424
.label_1429:
	mov	qword ptr [rsp], rsi
	jmp	.label_1431
.label_1430:
	mov	qword ptr [rsp], rsi
.label_1431:
	test	r13d, r13d
	mov	r12d, r13d
	jns	.label_1422
	mov	eax, dword ptr [r15 + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_1426
	xor	eax, eax
	mov	rdi, rbx
	mov	esi, edx
	call	open_safer
	jmp	.label_1433
.label_1426:
	mov	edi, dword ptr [r15 + 0x2c]
	xor	eax, eax
	mov	rsi, rbx
	call	openat_safer
.label_1433:
	mov	r12d, eax
	mov	ebp, 0xffffffff
	test	r12d, r12d
	js	.label_1424
.label_1422:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 2
	jne	.label_1439
	test	rbx, rbx
	je	.label_1440
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x2e
	jne	.label_1440
	movzx	ecx, byte ptr [rbx + 1]
	cmp	ecx, 0x2e
	jne	.label_1440
	cmp	byte ptr [rbx + 2], 0
	jne	.label_1440
.label_1439:
	lea	rdx, [rsp + 8]
	mov	edi, 1
	mov	esi, r12d
	call	__fxstat
	test	eax, eax
	jne	.label_1423
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_1425
	mov	rax, qword ptr [rcx + 0x80]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_1425
	mov	eax, dword ptr [r15 + 0x48]
.label_1440:
	test	ah, 2
	jne	.label_1432
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	jmp	.label_1434
.label_1432:
	mov	esi, dword ptr [r15 + 0x2c]
	cmp	esi, r12d
	jne	.label_1435
	cmp	esi, -0x64
	jne	.label_1437
.label_1435:
	test	r14b, r14b
	je	.label_1438
	test	al, 4
	jne	.label_1428
	test	esi, esi
	js	.label_1428
	mov	edi, esi
	jmp	.label_1442
.label_1425:
	call	__errno_location
	mov	dword ptr [rax], 2
.label_1423:
	mov	ebp, 0xffffffff
.label_1434:
	test	r13d, r13d
	jns	.label_1424
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_1424
.label_1438:
	lea	rdi, [r15 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_1428
	mov	edi, eax
.label_1442:
	call	close
.label_1428:
	mov	dword ptr [r15 + 0x2c], r12d
	xor	ebp, ebp
.label_1424:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1437:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x411038
	.globl .label_411038
	.type .label_411038, @function
.label_411038:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411040

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
	je	.label_1455
	mov	qword ptr [rsp + 0x48], rdi
	call	dirfd
	mov	dword ptr [rsp + 0xa4], eax
	test	eax, eax
	js	.label_1466
	mov	qword ptr [rsp + 0x40], -1
	cmp	qword ptr [r13 + 0x40], 0
	jne	.label_1470
	mov	eax, 0x186a0
	mov	qword ptr [rsp + 0x40], rax
.label_1470:
	lea	rax, [r13 + 0x40]
	mov	qword ptr [rsp + 0x58], rax
	lea	rax, [r13 + 0x48]
	mov	qword ptr [rsp + 0x90], rax
	mov	al, 1
	mov	dword ptr [rsp + 0x1c], eax
	jmp	.label_1477
.label_1455:
	mov	qword ptr [rsp + 0x48], rdi
	mov	eax, dword ptr [r13 + 0x48]
	mov	ecx, eax
	and	ecx, 0x204
	mov	edi, 0xffffff9c
	cmp	ecx, 0x200
	jne	.label_1483
	mov	edi, dword ptr [r13 + 0x2c]
.label_1483:
	mov	rsi, qword ptr [r12 + 0x30]
	xor	edx, edx
	test	al, 0x10
	je	.label_1488
	test	al, 1
	je	.label_1512
	cmp	qword ptr [r12 + 0x58], 0
	je	.label_1488
.label_1512:
	mov	edx, 0x20000
.label_1488:
	lea	rcx, [rsp + 0xa4]
	call	opendirat
	mov	qword ptr [r12 + 0x18], rax
	test	rax, rax
	je	.label_1496
	lea	rcx, [r13 + 0x48]
	movzx	eax, word ptr [r12 + 0x70]
	cmp	eax, 0xb
	jne	.label_1498
	mov	qword ptr [rsp + 0x90], rcx
	xor	edx, edx
	mov	rdi, r13
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	jmp	.label_1491
.label_1466:
	mov	rdi, qword ptr [r12 + 0x18]
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
.label_1496:
	xor	ebx, ebx
	cmp	r15d, 3
	jne	.label_1443
	mov	word ptr [r12 + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	xor	ebx, ebx
	jmp	.label_1443
.label_1498:
	test	byte ptr [rcx + 1], 1
	mov	qword ptr [rsp + 0x90], rcx
	je	.label_1491
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
	je	.label_1515
.label_1491:
	mov	qword ptr [rsp + 0x40], -1
	cmp	qword ptr [r13 + 0x40], 0
	jne	.label_1516
	mov	eax, 0x186a0
	mov	qword ptr [rsp + 0x40], rax
.label_1516:
	lea	rax, [r13 + 0x40]
	mov	qword ptr [rsp + 0x58], rax
	cmp	r15d, 2
	je	.label_1451
	mov	rax, qword ptr [rsp + 0x90]
	mov	eax, dword ptr [rax]
	and	eax, 0x38
	cmp	eax, 0x18
	jne	.label_1447
	cmp	qword ptr [r12 + 0x88], 2
	jne	.label_1447
	mov	esi, dword ptr [rsp + 0xa4]
	mov	rdi, r12
	call	filesystem_type
	cmp	rax, 0x9f9f
	jle	.label_1445
	cmp	rax, 0x9fa0
	je	.label_1447
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	je	.label_1447
	cmp	rax, 0x5346414f
	je	.label_1447
	jmp	.label_1451
.label_1515:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	ebx, ebx
	jmp	.label_1443
.label_1445:
	test	rax, rax
	je	.label_1447
	cmp	rax, 0x6969
	jne	.label_1451
.label_1447:
	cmp	r15d, 3
	sete	bl
	mov	r14b, 1
	jmp	.label_1458
.label_1451:
	cmp	r15d, 3
	sete	bl
	mov	r14d, 0
	jne	.label_1461
.label_1458:
	mov	dword ptr [rsp + 0x24], r15d
	mov	rax, qword ptr [rsp + 0x90]
	test	byte ptr [rax + 1], 2
	mov	ebp, dword ptr [rsp + 0xa4]
	je	.label_1464
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebp
	call	rpl_fcntl
	mov	ebp, eax
	mov	dword ptr [rsp + 0xa4], ebp
.label_1464:
	test	ebp, ebp
	js	.label_1475
	xor	ecx, ecx
	mov	rdi, r13
	mov	rsi, r12
	mov	edx, ebp
	call	fts_safe_changedir
	test	eax, eax
	je	.label_1479
.label_1475:
	and	bl, r14b
	movzx	eax, bl
	cmp	eax, 1
	jne	.label_1481
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
.label_1481:
	or	byte ptr [r12 + 0x72], 1
	mov	rdi, qword ptr [r12 + 0x18]
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
	mov	rax, qword ptr [rsp + 0x90]
	mov	eax, dword ptr [rax]
	test	ah, 2
	je	.label_1487
	mov	edi, dword ptr [rsp + 0xa4]
	test	edi, edi
	js	.label_1487
	call	close
.label_1487:
	mov	qword ptr [r12 + 0x18], 0
	mov	dword ptr [rsp + 0x1c], 0
	jmp	.label_1495
.label_1461:
	mov	dword ptr [rsp + 0x1c], 0
	jmp	.label_1477
.label_1479:
	mov	al, 1
	mov	dword ptr [rsp + 0x1c], eax
.label_1495:
	mov	r15d, dword ptr [rsp + 0x24]
.label_1477:
	mov	rax, qword ptr [r12 + 0x38]
	mov	rdx, qword ptr [r12 + 0x48]
	movzx	eax, byte ptr [rax + rdx - 1]
	cmp	eax, 0x2f
	jne	.label_1501
	dec	rdx
.label_1501:
	mov	dword ptr [rsp + 0x24], r15d
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	mov	rax, qword ptr [rsp + 0x90]
	test	byte ptr [rax], 4
	je	.label_1504
	mov	rax, qword ptr [r13 + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x68], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_1504:
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
.label_1474:
	mov	rbx, qword ptr [r12 + 0x18]
	test	rbx, rbx
	je	.label_1484
	mov	qword ptr [rsp + 0x50], rax
	mov	qword ptr [rsp + 0x88], rbp
	call	__errno_location
	mov	qword ptr [rsp + 0x98], rax
	mov	rbp, qword ptr [rsp + 0x90]
	nop	dword ptr [rax]
.label_1456:
	mov	rax, qword ptr [rsp + 0x98]
	mov	dword ptr [rax], 0
	mov	rdi, rbx
	call	readdir
	mov	r14, rax
	test	r14, r14
	je	.label_1444
	mov	r13, r14
	add	r13, 0x13
	test	byte ptr [rbp], 0x20
	jne	.label_1448
	movzx	eax, byte ptr [r13]
	cmp	eax, 0x2e
	jne	.label_1448
	movzx	eax, byte ptr [r14 + 0x14]
	cmp	eax, 0x2e
	je	.label_1506
	test	al, al
	je	.label_1453
	jmp	.label_1448
	.section	.text
	.align	16
	#Procedure 0x411439
	.globl .label_411439
	.type .label_411439, @function
.label_411439:

	nop	dword ptr [rax]
.label_1506:
	cmp	byte ptr [r14 + 0x15], 0
	jne	.label_1448
.label_1453:
	mov	rbx, qword ptr [r12 + 0x18]
	test	rbx, rbx
	jne	.label_1456
	jmp	.label_1460
	.section	.text
	.align	16
	#Procedure 0x411456
	.globl .label_411456
	.type .label_411456, @function
.label_411456:

	nop	word ptr cs:[rax + rax]
.label_1448:
	mov	rdi, r13
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_1467
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
	jae	.label_1476
	mov	rdx, qword ptr [rsp + 0x80]
	jmp	.label_1492
	.section	.text
	.align	16
	#Procedure 0x411501
	.globl .label_411501
	.type .label_411501, @function
.label_411501:

	nop	word ptr cs:[rax + rax]
.label_1476:
	mov	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rax + rbx]
	add	rsi, qword ptr [rbp + 0x30]
	jb	.label_1497
	mov	qword ptr [rbp + 0x30], rsi
	mov	rdi, r13
	call	realloc
	test	rax, rax
	je	.label_1502
	mov	qword ptr [rbp + 0x20], rax
	cmp	r13, rax
	je	.label_1503
	mov	rdx, qword ptr [rsp + 0x80]
	add	rax, rdx
	mov	rcx, qword ptr [rsp + 0x90]
	test	byte ptr [rcx], 4
	mov	rcx, qword ptr [rsp + 0x68]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x68], rcx
	mov	al, 1
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_1459
.label_1503:
	mov	rdx, qword ptr [rsp + 0x80]
.label_1459:
	mov	rax, qword ptr [rbp + 0x30]
	sub	rax, rdx
.label_1492:
	add	rbx, rdx
	jb	.label_1508
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
	jne	.label_1509
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_1517
	.section	.text
	.align	16
	#Procedure 0x4115d2
	.globl .label_4115d2
	.type .label_4115d2, @function
.label_4115d2:

	nop	word ptr cs:[rax + rax]
.label_1509:
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x68]
	mov	rsi, qword ptr [rsp + 0x38]
	call	memmove
.label_1517:
	mov	rax, qword ptr [rsp + 0x90]
	mov	edx, dword ptr [rax]
	mov	rax, qword ptr [rsp + 0x58]
	cmp	qword ptr [rax], 0
	je	.label_1469
	mov	eax, edx
	and	eax, 0x400
	jne	.label_1469
	xor	edx, edx
	mov	rdi, r13
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	mov	rbp, qword ptr [rsp + 0x88]
	jmp	.label_1452
	.section	.text
	.align	16
	#Procedure 0x41163c
	.globl .label_41163c
	.type .label_41163c, @function
.label_41163c:

	nop	dword ptr [rax]
.label_1469:
	and	edx, 0x18
	movzx	ecx, byte ptr [r14 + 0x12]
	xor	eax, eax
	cmp	edx, 0x18
	mov	edx, 0
	jne	.label_1454
	cmp	ecx, 4
	setne	bl
	test	cl, cl
	setne	dl
	and	dl, bl
.label_1454:
	mov	word ptr [r12 + 0x70], 0xb
	lea	esi, [rcx - 1]
	cmp	esi, 0xb
	mov	rbp, qword ptr [rsp + 0x88]
	ja	.label_1450
	mov	eax,  dword ptr [dword ptr [+ (rcx * 4) + label_1485]]
.label_1450:
	mov	dword ptr [r12 + 0x90], eax
	cmp	dl, 1
	mov	eax, 1
	adc	rax, 0
	mov	qword ptr [r12 + 0xa8], rax
.label_1452:
	mov	qword ptr [r12 + 0x10], 0
	test	r15, r15
	mov	rax, r12
	je	.label_1473
	mov	rax, qword ptr [rsp + 0x50]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, r15
.label_1473:
	mov	r15, rax
	cmp	rbp, 0x2710
	jne	.label_1462
	mov	rax, qword ptr [rsp + 0x58]
	cmp	qword ptr [rax], 0
	jne	.label_1462
	mov	esi, dword ptr [rsp + 0xa4]
	mov	rdi, qword ptr [rsp + 0x60]
	call	filesystem_type
	mov	dword ptr [rsp + 0x20], 0
	cmp	rax, 0x6969
	je	.label_1462
	cmp	rax, 0x1021994
	je	.label_1462
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	je	.label_1462
	mov	al, 1
	mov	dword ptr [rsp + 0x20], eax
	nop	dword ptr [rax]
.label_1462:
	inc	rbp
	cmp	qword ptr [rsp + 0x40], rbp
	mov	rax, r12
	mov	r12, qword ptr [rsp + 0x60]
	ja	.label_1474
	jmp	.label_1484
.label_1444:
	mov	rax, qword ptr [rsp + 0x98]
	mov	eax, dword ptr [rax]
	test	eax, eax
	mov	rbp, qword ptr [rsp + 0x88]
	je	.label_1499
	mov	dword ptr [r12 + 0x40], eax
	mov	rax, qword ptr [rsp + 0x48]
	or	rax, rbp
	mov	ax, 7
	mov	cx, 4
	cmovne	cx, ax
	mov	word ptr [r12 + 0x70], cx
.label_1499:
	mov	rdi, qword ptr [r12 + 0x18]
	test	rdi, rdi
	mov	r13, qword ptr [rsp + 0x78]
	je	.label_1484
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
	jmp	.label_1484
.label_1460:
	mov	r13, qword ptr [rsp + 0x78]
	mov	rbp, qword ptr [rsp + 0x88]
.label_1484:
	mov	rax, qword ptr [rsp + 0x30]
	test	al, 1
	je	.label_1510
	mov	rcx, qword ptr [r13 + 8]
	mov	rax, qword ptr [r13 + 0x20]
	jmp	.label_1511
.label_1514:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_1511:
	test	rcx, rcx
	je	.label_1513
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_1514
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_1514
.label_1513:
	cmp	qword ptr [r15 + 0x58], 0
	js	.label_1510
	mov	rcx, r15
	nop	word ptr cs:[rax + rax]
.label_1446:
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_1520
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
.label_1520:
	mov	qword ptr [rcx + 0x38], rax
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_1522
	mov	rdx, qword ptr [rcx + 8]
.label_1522:
	cmp	qword ptr [rdx + 0x58], 0
	mov	rcx, rdx
	jns	.label_1446
.label_1510:
	mov	rax, qword ptr [rsp + 0x90]
	test	byte ptr [rax], 4
	je	.label_1449
	mov	rax, qword ptr [rsp + 0x68]
	mov	rcx, rax
	lea	rax, [rcx - 1]
	mov	rdx, qword ptr [rsp + 0x80]
	cmp	rdx, qword ptr [r13 + 0x30]
	cmove	rcx, rax
	test	rbp, rbp
	cmove	rcx, rax
	mov	byte ptr [rcx], 0
.label_1449:
	cmp	qword ptr [rsp + 0x48], 0
	jne	.label_1457
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	je	.label_1457
	cmp	dword ptr [rsp + 0x24], 1
	je	.label_1463
	test	rbp, rbp
	jne	.label_1457
.label_1463:
	cmp	qword ptr [r12 + 0x58], 0
	je	.label_1465
	mov	rsi, qword ptr [r12 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_1
	mov	rdi, r13
	call	fts_safe_changedir
	jmp	.label_1471
.label_1465:
	mov	rdi, r13
	call	restore_initial_cwd
.label_1471:
	test	eax, eax
	je	.label_1457
	mov	word ptr [r12 + 0x70], 7
	mov	rax, qword ptr [rsp + 0x90]
	or	byte ptr [rax + 1], 0x20
	xor	ebx, ebx
	test	r15, r15
	je	.label_1443
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_1486:
	mov	rbp, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	je	.label_1482
	call	closedir
.label_1482:
	mov	rdi, r15
	call	free
	test	rbp, rbp
	mov	r15, rbp
	jne	.label_1486
	jmp	.label_1443
.label_1457:
	test	rbp, rbp
	je	.label_1489
	mov	eax, dword ptr [rsp + 0x20]
	test	al, 1
	jne	.label_1490
	cmp	rbp, 2
	jb	.label_1493
	mov	rax, qword ptr [rsp + 0x58]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_1494
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, rbp
	call	fts_sort
	mov	rbx, rax
	jmp	.label_1443
.label_1489:
	cmp	dword ptr [rsp + 0x24], 3
	jne	.label_1500
	movzx	eax, word ptr [r12 + 0x70]
	cmp	eax, 4
	je	.label_1500
	movzx	eax, ax
	cmp	eax, 7
	je	.label_1500
	mov	word ptr [r12 + 0x70], 6
.label_1500:
	xor	ebx, ebx
	test	r15, r15
	je	.label_1443
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_1507:
	mov	rbp, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	je	.label_1505
	call	closedir
.label_1505:
	mov	rdi, r15
	call	free
	test	rbp, rbp
	mov	r15, rbp
	jne	.label_1507
	jmp	.label_1443
.label_1490:
	mov	rdx, rbp
	mov	r14, qword ptr [rsp + 0x58]
	mov	qword ptr [word ptr [r14]], OFFSET FLAT:fts_compare_ino
	mov	rdi, r13
	mov	rsi, r15
	call	fts_sort
	mov	rbx, rax
	mov	qword ptr [r14], 0
	jmp	.label_1443
.label_1493:
	mov	rbx, r15
	jmp	.label_1443
.label_1494:
	mov	rbx, r15
	jmp	.label_1443
.label_1508:
	mov	rdi, r12
	call	free
	test	r15, r15
	je	.label_1518
	nop	dword ptr [rax]
.label_1521:
	mov	rbx, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	je	.label_1519
	call	closedir
.label_1519:
	mov	rdi, r15
	call	free
	test	rbx, rbx
	mov	r15, rbx
	jne	.label_1521
.label_1518:
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
	jmp	.label_1443
.label_1497:
	mov	rdi, r13
	call	free
	mov	qword ptr [rbp + 0x20], 0
	mov	rax, qword ptr [rsp + 0x98]
	mov	dword ptr [rax], 0x24
	jmp	.label_1480
.label_1502:
	mov	rdi, qword ptr [rbp + 0x20]
	call	free
	mov	qword ptr [rbp + 0x20], 0
.label_1480:
	mov	qword ptr [rsp + 8], r12
	mov	rbp, qword ptr [rsp + 0x90]
.label_1467:
	mov	rax, qword ptr [rsp + 0x98]
	mov	r14d, dword ptr [rax]
	mov	rdi, qword ptr [rsp + 8]
	call	free
	test	r15, r15
	mov	r12, qword ptr [rsp + 0x60]
	je	.label_1468
	nop	dword ptr [rax]
.label_1478:
	mov	rbx, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	je	.label_1472
	call	closedir
.label_1472:
	mov	rdi, r15
	call	free
	test	rbx, rbx
	mov	r15, rbx
	jne	.label_1478
.label_1468:
	mov	rdi, qword ptr [r12 + 0x18]
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x70], 7
	or	byte ptr [rbp + 1], 0x20
	mov	rax, qword ptr [rsp + 0x98]
	mov	dword ptr [rax], r14d
	xor	ebx, ebx
.label_1443:
	mov	rax, rbx
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411af3
	.globl .label_411af3
	.type .label_411af3, @function
.label_411af3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411b00

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_1523
	test	ah, 2
	jne	.label_1526
	mov	edi, dword ptr [rbx + 0x28]
	call	fchdir
	test	eax, eax
	setne	al
	jmp	.label_1524
.label_1523:
	xor	eax, eax
	jmp	.label_1524
.label_1526:
	mov	esi, dword ptr [rbx + 0x2c]
	lea	rdi, [rbx + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_1528
	mov	edi, eax
	call	close
.label_1528:
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
	xor	eax, eax
.label_1524:
	movzx	ebp, al
	add	rbx, 0x60
	jmp	.label_1527
	.section	.text
	.align	16
	#Procedure 0x411b4e
	.globl .label_411b4e
	.type .label_411b4e, @function
.label_411b4e:

	nop	
.label_1525:
	mov	edi, eax
	call	close
.label_1527:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_1529
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_1525
	jmp	.label_1527
.label_1529:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411b7a
	.globl .label_411b7a
	.type .label_411b7a, @function
.label_411b7a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411b80

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
	je	.label_1530
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1531
	movups	xmm0, xmmword ptr [r14 + 0x78]
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], r14
	mov	rdi, qword ptr [rbp + 0x58]
	mov	rsi, rbx
	call	hash_insert
	mov	r15, rax
	mov	bpl, 1
	cmp	r15, rbx
	je	.label_1532
	mov	rdi, rbx
	call	free
	test	r15, r15
	je	.label_1534
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [r14], rax
	jmp	.label_1533
.label_1530:
	mov	rdi, qword ptr [rbp + 0x58]
	lea	rsi, [r14 + 0x78]
	call	cycle_check
	mov	bpl, 1
	test	al, al
	je	.label_1532
	mov	qword ptr [r14], r14
.label_1533:
	mov	word ptr [r14 + 0x70], 2
	jmp	.label_1532
.label_1531:
	xor	ebp, ebp
	jmp	.label_1532
.label_1534:
	xor	ebp, ebp
.label_1532:
	mov	al, bpl
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411c16
	.globl .label_411c16
	.type .label_411c16, @function
.label_411c16:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411c20

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	cmp	edx, 5
	jb	.label_1535
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	add	rsp, 8
	ret	
.label_1535:
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x411c42
	.globl .label_411c42
	.type .label_411c42, @function
.label_411c42:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411c50
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
	jne	.label_1550
	mov	r15, qword ptr [r13]
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	eax, eax
	test	byte ptr [r13 + 0x49], 0x20
	jne	.label_1542
	movzx	ecx, word ptr [r15 + 0x70]
	xor	eax, eax
	cmp	ecx, 1
	je	.label_1544
	movzx	ecx, cx
	cmp	ecx, 9
	jne	.label_1542
	mov	rax, qword ptr [r15 + 0x10]
	jmp	.label_1542
.label_1550:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
	jmp	.label_1542
.label_1544:
	mov	rbx, qword ptr [r13 + 8]
	test	rbx, rbx
	je	.label_1536
	nop	dword ptr [rax]
.label_1547:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_1541
	call	closedir
.label_1541:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_1547
.label_1536:
	mov	ebx, 1
	cmp	r12d, 0x1000
	jne	.label_1549
	or	byte ptr [r13 + 0x49], 0x10
	mov	ebx, 2
.label_1549:
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_1540
	mov	rax, qword ptr [r15 + 0x30]
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x2f
	je	.label_1540
	mov	eax, dword ptr [r13 + 0x48]
	test	al, 4
	jne	.label_1540
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_1546
	mov	edi, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_1538
.label_1540:
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
.label_1542:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1546:
	mov	edi, dword ptr [r13 + 0x2c]
	mov	esi, OFFSET FLAT:.str_3
	xor	eax, eax
	call	openat_safer
.label_1538:
	mov	r15d, eax
	test	r15d, r15d
	js	.label_1551
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
	test	byte ptr [r13 + 0x49], 2
	jne	.label_1539
	mov	edi, r15d
	call	fchdir
	test	eax, eax
	je	.label_1543
	mov	ebx, dword ptr [r14]
	mov	edi, r15d
	call	close
	mov	dword ptr [r14], ebx
	xor	eax, eax
	jmp	.label_1542
.label_1551:
	mov	qword ptr [r13 + 8], 0
	xor	eax, eax
	jmp	.label_1542
.label_1539:
	mov	esi, dword ptr [r13 + 0x2c]
	cmp	esi, r15d
	jne	.label_1552
	cmp	esi, -0x64
	jne	.label_1537
.label_1552:
	lea	rdi, [r13 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_1548
	mov	edi, eax
	call	close
.label_1548:
	mov	dword ptr [r13 + 0x2c], r15d
	jmp	.label_1545
.label_1543:
	mov	edi, r15d
	call	close
.label_1545:
	mov	rax, qword ptr [r13 + 8]
	jmp	.label_1542
.label_1537:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x411dfa
	.globl .label_411dfa
	.type .label_411dfa, @function
.label_411dfa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411e00

	.globl AD_hash
	.type AD_hash, @function
AD_hash:
	mov	rax, qword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x411e0d
	.globl .label_411e0d
	.type .label_411e0d, @function
.label_411e0d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411e10

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_1553
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
.label_1553:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x411e27
	.globl .label_411e27
	.type .label_411e27, @function
.label_411e27:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411e30

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
	je	.label_1556
	mov	rbp, qword ptr [rbx + 0x50]
	test	rbp, rbp
	jne	.label_1558
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
	je	.label_1559
.label_1558:
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsp]
	mov	rdi, rbp
	call	hash_lookup
	test	rax, rax
	je	.label_1554
	mov	rax, qword ptr [rax + 8]
	jmp	.label_1556
.label_1554:
	mov	r12b, 1
	mov	r14, rbp
.label_1559:
	xor	eax, eax
	test	r15d, r15d
	js	.label_1556
	lea	rsi, [rsp + 0x10]
	mov	edi, r15d
	call	fstatfs
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1556
	test	r12b, r12b
	je	.label_1555
	mov	edi, 0x10
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1555
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rbp], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbp + 8], rax
	mov	rdi, r14
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_1557
	cmp	rax, rbp
	je	.label_1555
	call	abort
.label_1557:
	mov	rdi, rbp
	call	free
.label_1555:
	mov	rax, qword ptr [rsp + 0x10]
.label_1556:
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411f33
	.globl .label_411f33
	.type .label_411f33, @function
.label_411f33:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411f40

	.globl dev_type_hash
	.type dev_type_hash, @function
dev_type_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x411f4c
	.globl .label_411f4c
	.type .label_411f4c, @function
.label_411f4c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411f50

	.globl dev_type_compare
	.type dev_type_compare, @function
dev_type_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x411f5a
	.globl .label_411f5a
	.type .label_411f5a, @function
.label_411f5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411f60

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
	.section	.text
	.align	16
	#Procedure 0x411f88
	.globl .label_411f88
	.type .label_411f88, @function
.label_411f88:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411f90

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
	je	.label_1560
	cmp	r15, -2
	jb	.label_1560
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_1560
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_1560:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x411fe6
	.globl .label_411fe6
	.type .label_411fe6, @function
.label_411fe6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411ff0

	.globl free_permission_context
	.type free_permission_context, @function
free_permission_context:
	ret	
	.section	.text
	.align	16
	#Procedure 0x411ff1
	.globl .label_411ff1
	.type .label_411ff1, @function
.label_411ff1:

	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412000

	.globl get_permissions
	.type get_permissions, @function
get_permissions:
	mov	dword ptr [rcx], edx
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x412005
	.globl .label_412005
	.type .label_412005, @function
.label_412005:

	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x412010
	.globl chmod_or_fchmod
	.type chmod_or_fchmod, @function
chmod_or_fchmod:

	cmp	esi, -1
	je	.label_1561
	mov	edi, esi
	mov	esi, edx
	jmp	fchmod
.label_1561:
	mov	esi, edx
	jmp	chmod
	.section	.text
	.align	16
	#Procedure 0x412025
	.globl .label_412025
	.type .label_412025, @function
.label_412025:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412030

	.globl set_permissions
	.type set_permissions, @function
set_permissions:
	push	rax
	mov	rax, rsi
	mov	esi, dword ptr [rdi]
	cmp	edx, -1
	je	.label_1562
	mov	edi, edx
	call	fchmod
	jmp	.label_1563
.label_1562:
	mov	rdi, rax
	call	chmod
.label_1563:
	neg	eax
	sbb	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x412052
	.globl .label_412052
	.type .label_412052, @function
.label_412052:

	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x412060

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	.section	.text
	.align	16
	#Procedure 0x41206a
	.globl .label_41206a
	.type .label_41206a, @function
.label_41206a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412070

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
	je	.label_1567
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, r14
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	nop	
.label_1564:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_1565
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_1569
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_1570
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_1566
	mov	rdi, qword ptr [rsp + 0x18]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_1565
.label_1566:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_1565
.label_1570:
	mov	qword ptr [rsp + 0x18], rbp
	nop	word ptr [rax + rax]
.label_1565:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_1564
	jmp	.label_1568
.label_1567:
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_1568:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 0x18]
.label_1569:
	mov	rax, rbp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41216d
	.globl .label_41216d
	.type .label_41216d, @function
.label_41216d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x412170
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
	je	.label_1571
	mov	esi, OFFSET FLAT:.str.1_14
	jmp	.label_1572
.label_1571:
	mov	esi, OFFSET FLAT:.str_17
.label_1572:
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
	#Procedure 0x4121e0

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
	mov	esi, OFFSET FLAT:.str.2_7
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbx]
	test	rbx, rbx
	je	.label_1577
	xor	r13d, r13d
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_1574:
	test	r15, r15
	je	.label_1576
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_1573
.label_1576:
	mov	r13,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_5
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_1575
	.section	.text
	.align	16
	#Procedure 0x412272
	.globl .label_412272
	.type .label_412272, @function
.label_412272:

	nop	word ptr cs:[rax + rax]
.label_1573:
	mov	rbp,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.4_1
	xor	eax, eax
	mov	rdi, rbp
	call	__fprintf_chk
.label_1575:
	mov	rax, qword ptr [rsp]
	mov	rbx, qword ptr [rax + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_1574
.label_1577:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_1578
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
.label_1578:
	mov	esi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__overflow
	.section	.text
	.align	16
	#Procedure 0x412301
	.globl .label_412301
	.type .label_412301, @function
.label_412301:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412310

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
	jns	.label_1579
	mov	qword ptr [rsp + 0x10], rbp
	xor	edi, edi
	cmp	rax, -1
	je	.label_1580
	mov	esi, OFFSET FLAT:.str.1_14
	jmp	.label_1581
.label_1580:
	mov	esi, OFFSET FLAT:.str_17
.label_1581:
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
.label_1579:
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
	#Procedure 0x4123ce
	.globl .label_4123ce
	.type .label_4123ce, @function
.label_4123ce:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4123d0
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
	je	.label_1582
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_1583:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_1582
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_1583
.label_1582:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x412433
	.globl .label_412433
	.type .label_412433, @function
.label_412433:

	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x412440

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
	jne	.label_1585
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_1584
	test	cl, cl
	jne	.label_1584
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_1584
.label_1585:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1584
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1584:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4124a0

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	ret	
	.section	.text
	.align	16
	#Procedure 0x4124b0

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	cmp	dword ptr [rdi + 0x18], 0x95f616
	jne	.label_1586
	mov	rcx, qword ptr [rdi + 0x10]
	test	rcx, rcx
	je	.label_1587
	mov	rax, qword ptr [rsi + 8]
	cmp	rax, qword ptr [rdi]
	jne	.label_1587
	mov	rdx, qword ptr [rsi]
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 8]
	je	.label_1588
.label_1587:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x10], rdx
	test	rdx, rcx
	jne	.label_1589
	mov	al, 1
	test	rdx, rdx
	je	.label_1588
	mov	rax, qword ptr [rsi]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi], rax
.label_1589:
	xor	eax, eax
.label_1588:
	ret	
.label_1586:
	push	rax
	mov	edi, OFFSET FLAT:.str_18
	mov	esi, OFFSET FLAT:.str.1_15
	mov	edx, 0x3c
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.cycle_check
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x412515
	.globl .label_412515
	.type .label_412515, @function
.label_412515:

	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x412520

	.globl opendir_safer
	.type opendir_safer, @function
opendir_safer:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	call	opendir
	mov	r14, rax
	xor	ebx, ebx
	test	r14, r14
	je	.label_1591
	mov	rdi, r14
	call	dirfd
	mov	ecx, eax
	cmp	ecx, 2
	ja	.label_1593
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ecx
	call	rpl_fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1594
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	call	__errno_location
	mov	r15, rax
	mov	r12d, dword ptr [r15]
	test	rbx, rbx
	jne	.label_1592
	mov	edi, ebp
	call	close
	jmp	.label_1590
.label_1593:
	mov	rbx, r14
	jmp	.label_1591
.label_1594:
	call	__errno_location
	mov	r15, rax
	mov	r12d, dword ptr [r15]
.label_1590:
	xor	ebx, ebx
.label_1592:
	mov	rdi, r14
	call	closedir
	mov	dword ptr [r15], r12d
.label_1591:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4125ab
	.globl .label_4125ab
	.type .label_4125ab, @function
.label_4125ab:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4125b0

	.globl gettime
	.type gettime, @function
gettime:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	clock_gettime
	.section	.text
	.align	16
	#Procedure 0x4125bd
	.globl .label_4125bd
	.type .label_4125bd, @function
.label_4125bd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4125c0
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	sub	rsp, 0x18
	lea	rsi, [rsp + 8]
	xor	edi, edi
	call	clock_gettime
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x10]
	add	rsp, 0x18
	ret	
	.section	.text
	.align	16
	#Procedure 0x4125df
	.globl .label_4125df
	.type .label_4125df, @function
.label_4125df:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4125e0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_1596
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_1597
	cmp	byte ptr [rax + 1], 0
	je	.label_1595
.label_1597:
	mov	esi, OFFSET FLAT:.str.1_16
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_1596
.label_1595:
	xor	ebx, ebx
.label_1596:
	mov	al, bl
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x412614
	.globl .label_412614
	.type .label_412614, @function
.label_412614:

	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x412620

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	mov	cl, byte ptr [rdi]
	xor	eax, eax
	test	cl, cl
	je	.label_1598
	inc	rdi
	xor	eax, eax
	nop	dword ptr [rax]
.label_1599:
	movsx	rcx, cl
	rol	rax, 9
	add	rax, rcx
	mov	cl, byte ptr [rdi]
	inc	rdi
	test	cl, cl
	jne	.label_1599
.label_1598:
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x41264d
	.globl .label_41264d
	.type .label_41264d, @function
.label_41264d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x412650

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
	.section	.text
	.align	16
	#Procedure 0x412673
	.globl .label_412673
	.type .label_412673, @function
.label_412673:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412680

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	.section	.text
	.align	16
	#Procedure 0x412684
	.globl .label_412684
	.type .label_412684, @function
.label_412684:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412690

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
	jne	.label_1600
	mov	dl, byte ptr [rdi + 0x1c]
	xor	dl, 1
	movzx	edx, dl
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_1600:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	.section	.text
	.align	16
	#Procedure 0x4126c3
	.globl .label_4126c3
	.type .label_4126c3, @function
.label_4126c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4126d0

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	cmp	byte ptr [rdi + 0x1c], 0
	jne	.label_1601
	mov	ecx, dword ptr [rdi + 0x10]
	mov	edx, dword ptr [rdi + 0x14]
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], ecx
	mov	ecx, dword ptr [rdi + 0x14]
	cmp	ecx, dword ptr [rdi + 0x18]
	jne	.label_1602
	mov	byte ptr [rdi + 0x1c], 1
	ret	
.label_1602:
	add	ecx, 3
	and	ecx, 3
	mov	dword ptr [rdi + 0x14], ecx
	ret	
.label_1601:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4126ff
	.globl .label_4126ff
	.type .label_4126ff, @function
.label_4126ff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x412700

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_17
	cmp	byte ptr [rcx], 0
	je	.label_1603
	mov	rax, rcx
.label_1603:
	add	rsp, 8
	ret	
	.section	.text
	.align	16
	#Procedure 0x412729
	.globl .label_412729
	.type .label_412729, @function
.label_412729:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x412730

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xc8
	test	al, al
	je	.label_1604
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_1604:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_1606
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x18
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1605
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1607
.label_1605:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1607:
	mov	ecx, dword ptr [rax]
.label_1606:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xc8
	ret	
	.section	.text
	.align	16
	#Procedure 0x412805
	.globl .label_412805
	.type .label_412805, @function
.label_412805:

	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x412810
	.globl randint_new
	.type randint_new, @function
randint_new:

	push	rbx
	mov	rbx, rdi
	mov	edi, 0x18
	call	xmalloc
	mov	qword ptr [rax], rbx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 8], xmm0
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x41282a
	.globl .label_41282a
	.type .label_41282a, @function
.label_41282a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412830

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	push	rbx
	call	randread_new
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_1608
	mov	edi, 0x18
	call	xmalloc
	mov	qword ptr [rax], rbx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 8], xmm0
.label_1608:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x412856
	.globl .label_412856
	.type .label_412856, @function
.label_412856:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412860
	.globl randint_get_source
	.type randint_get_source, @function
randint_get_source:

	mov	rax, qword ptr [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x412864
	.globl .label_412864
	.type .label_412864, @function
.label_412864:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412870

	.globl randint_genmax
	.type randint_genmax, @function
randint_genmax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	r15, qword ptr [rdi]
	mov	rbx, qword ptr [rdi + 8]
	lea	rax, [rdi + 8]
	mov	qword ptr [rsp], rax
	mov	r14, qword ptr [rdi + 0x10]
	lea	rbp, [r13 + 1]
	lea	r12, [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1611:
	cmp	r14, r13
	jae	.label_1610
	mov	rax, r14
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_1609:
	shl	rax, 8
	or	rax, 0xff
	inc	rdx
	cmp	rax, r13
	jb	.label_1609
	mov	rdi, r15
	mov	rsi, r12
	call	randread
	mov	rax, r12
.label_1612:
	mov	rcx, rbx
	shl	rcx, 8
	movzx	ebx, byte ptr [rax]
	or	rbx, rcx
	shl	r14, 8
	or	r14, 0xff
	inc	rax
	cmp	r14, r13
	jb	.label_1612
.label_1610:
	mov	rcx, rbx
	mov	rsi, r14
	sub	rsi, r13
	je	.label_1613
	xor	edx, edx
	mov	rax, rsi
	div	rbp
	mov	rdi, rdx
	sub	r14, rdi
	xor	edx, edx
	mov	rax, rcx
	div	rbp
	mov	rbx, rdx
	dec	rdi
	cmp	rcx, r14
	mov	r14, rdi
	ja	.label_1611
	xor	edx, edx
	mov	rax, rcx
	div	rbp
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx + 8], rax
	xor	edx, edx
	mov	rax, rsi
	div	rbp
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, rbx
	jmp	.label_1614
.label_1613:
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rsp]
	movups	xmmword ptr [rax], xmm0
.label_1614:
	mov	rax, rcx
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
	#Procedure 0x41296d
	.globl .label_41296d
	.type .label_41296d, @function
.label_41296d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x412970
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
	.section	.text
	.align	16
	#Procedure 0x412987
	.globl .label_412987
	.type .label_412987, @function
.label_412987:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412990

	.globl randint_all_free
	.type randint_all_free, @function
randint_all_free:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	randread_free
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	esi, 0x18
	mov	rdi, rbx
	call	explicit_bzero
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4129d8
	.globl .label_4129d8
	.type .label_4129d8, @function
.label_4129d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4129e0

	.globl randread_new
	.type randread_new, @function
randread_new:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r12, rsi
	mov	r14, rdi
	test	r12, r12
	je	.label_1618
	xor	ebx, ebx
	test	r14, r14
	je	.label_1620
	mov	esi, OFFSET FLAT:.str_19
	mov	rdi, r14
	call	fopen_safer
	mov	rbx, rax
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_1616
.label_1620:
	mov	edi, 0x1038
	call	xmalloc
	mov	r15, rax
	mov	qword ptr [r15], rbx
	mov	qword ptr [word ptr [r15 + 8]], OFFSET FLAT:randread_error
	mov	qword ptr [r15 + 0x10], r14
	test	rbx, rbx
	je	.label_1619
	mov	rsi, r15
	add	rsi, 0x18
	cmp	r12, 0x1000
	mov	ecx, 0x1000
	cmovbe	rcx, r12
	xor	edx, edx
	mov	rdi, rbx
	call	setvbuf
	jmp	.label_1616
.label_1618:
	mov	edi, 0x1038
	call	xmalloc
	mov	r15, rax
	mov	qword ptr [r15], 0
	mov	qword ptr [word ptr [r15 + 8]], OFFSET FLAT:randread_error
	mov	qword ptr [r15 + 0x10], 0
	jmp	.label_1616
.label_1619:
	mov	qword ptr [r15 + 0x18], 0
	mov	r14, r15
	add	r14, 0x20
	xor	r13d, r13d
	mov	edi, OFFSET FLAT:.str.3_6
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	ebx, eax
	test	ebx, ebx
	js	.label_1617
	cmp	r12, 0x800
	mov	edx, 0x800
	cmovbe	rdx, r12
	mov	edi, ebx
	mov	rsi, r14
	call	read
	mov	r12, rax
	mov	edi, ebx
	call	close
	xor	r13d, r13d
	test	r12, r12
	js	.label_1617
	cmp	r12, 0x7ff
	mov	r13, r12
	ja	.label_1615
.label_1617:
	mov	eax, 0x800
	sub	rax, r13
	cmp	rax, 0x10
	mov	ebx, 0x10
	cmovbe	rbx, rax
	lea	r12, [rsp]
	xor	esi, esi
	mov	rdi, r12
	call	gettimeofday
	lea	rdi, [r14 + r13]
	mov	rsi, r12
	mov	rdx, rbx
	call	memcpy
	add	rbx, r13
	cmp	rbx, 0x7ff
	ja	.label_1615
	mov	eax, 0x800
	sub	rax, rbx
	cmp	rax, 4
	mov	r12d, 4
	cmovbe	r12, rax
	call	getpid
	mov	dword ptr [rsp], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp]
	mov	rdx, r12
	call	memcpy
	add	r12, rbx
	cmp	r12, 0x7ff
	ja	.label_1615
	mov	eax, 0x800
	sub	rax, r12
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getppid
	mov	dword ptr [rsp], eax
	lea	rdi, [r14 + r12]
	lea	rsi, [rsp]
	mov	rdx, rbx
	call	memcpy
	add	rbx, r12
	cmp	rbx, 0x7ff
	ja	.label_1615
	mov	eax, 0x800
	sub	rax, rbx
	cmp	rax, 4
	mov	r12d, 4
	cmovbe	r12, rax
	call	getuid
	mov	dword ptr [rsp], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp]
	mov	rdx, r12
	call	memcpy
	add	r12, rbx
	cmp	r12, 0x7ff
	ja	.label_1615
	mov	eax, 0x800
	sub	rax, r12
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getgid
	mov	dword ptr [rsp], eax
	add	r12, r14
	lea	rsi, [rsp]
	mov	rdi, r12
	mov	rdx, rbx
	call	memcpy
.label_1615:
	mov	rdi, r14
	call	isaac_seed
.label_1616:
	mov	rax, r15
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x412c28
	.globl .label_412c28
	.type .label_412c28, @function
.label_412c28:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412c30
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	qword ptr [rdi + 8], rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x412c35
	.globl .label_412c35
	.type .label_412c35, @function
.label_412c35:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412c40
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	mov	qword ptr [rdi + 0x10], rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x412c45
	.globl .label_412c45
	.type .label_412c45, @function
.label_412c45:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412c50

	.globl randread
	.type randread, @function
randread:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r15, rsi
	mov	r14, rdi
	mov	rcx, qword ptr [r14]
	test	rcx, rcx
	je	.label_1626
	mov	esi, 1
	mov	rdi, r15
	mov	rdx, rbx
	call	fread_unlocked
	mov	rbp, rax
	call	__errno_location
	mov	r12, rax
	cmp	rbp, rbx
	je	.label_1623
.label_1622:
	sub	rbx, rbp
	add	r15, rbp
	mov	rax, qword ptr [r14]
	mov	eax, dword ptr [rax]
	and	eax, 0x20
	cmovne	eax, dword ptr [r12]
	mov	dword ptr [r12], eax
	mov	rdi, qword ptr [r14 + 0x10]
	call	qword ptr [r14 + 8]
	mov	rcx, qword ptr [r14]
	mov	esi, 1
	mov	rdi, r15
	mov	rdx, rbx
	call	fread_unlocked
	mov	rbp, rax
	cmp	rbx, rbp
	jne	.label_1622
	jmp	.label_1623
.label_1626:
	mov	r12, qword ptr [r14 + 0x18]
	lea	r13, [r14 + 0x838]
	mov	rsi, r13
	sub	rsi, r12
	add	rsi, 0x800
	cmp	r12, rbx
	jae	.label_1625
	lea	rbp, [r14 + 0x20]
	mov	rdi, r15
	mov	rdx, r12
	call	memcpy
	add	r15, r12
	sub	rbx, r12
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1624:
	cmp	rbx, 0x800
	jb	.label_1621
	mov	rdi, rbp
	mov	rsi, r15
	call	isaac_refill
	add	r15, 0x800
	add	rbx, -0x800
	jne	.label_1624
	jmp	.label_1627
.label_1621:
	mov	rdi, rbp
	mov	rsi, r13
	call	isaac_refill
	mov	r12d, 0x800
	mov	rsi, r13
.label_1625:
	mov	rdi, r15
	mov	rdx, rbx
	call	memcpy
	sub	r12, rbx
.label_1627:
	mov	qword ptr [r14 + 0x18], r12
.label_1623:
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
	#Procedure 0x412d6b
	.globl .label_412d6b
	.type .label_412d6b, @function
.label_412d6b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412d70

	.globl randread_free
	.type randread_free, @function
randread_free:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	mov	esi, 0x1038
	call	explicit_bzero
	mov	rdi, rbx
	call	free
	test	r14, r14
	je	.label_1628
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	rpl_fclose
.label_1628:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x412daa
	.globl .label_412daa
	.type .label_412daa, @function
.label_412daa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412db0

	.globl randread_error
	.type randread_error, @function
randread_error:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1629
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	jne	.label_1631
	mov	esi, OFFSET FLAT:.str.1_18
	jmp	.label_1630
.label_1631:
	mov	esi, OFFSET FLAT:.str.2_8
.label_1630:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	mov	esi, r15d
	mov	rdx, rbp
	call	error
.label_1629:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x412e0e
	.globl .label_412e0e
	.type .label_412e0e, @function
.label_412e0e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x412e10

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	mov	rax, qword ptr [rdi + 0x800]
	mov	rdx, qword ptr [rdi + 0x810]
	inc	rdx
	mov	rcx, qword ptr [rdi + 0x808]
	add	rcx, rdx
	mov	qword ptr [rdi + 0x810], rdx
	lea	r9, [rdi + 0x400]
	mov	r8, rsi
	mov	r10, rdi
	nop	
.label_1632:
	mov	r11, rax
	shl	r11, 0x15
	xor	r11, rax
	not	r11
	add	r11, qword ptr [r10 + 0x400]
	mov	rdx, qword ptr [r10]
	mov	eax, edx
	and	eax, 0x7f8
	add	rcx, qword ptr [rdi + rax]
	add	rcx, r11
	mov	qword ptr [r10], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	qword ptr [r8], rdx
	mov	rax, r11
	shr	rax, 5
	xor	rax, r11
	add	rax, qword ptr [r10 + 0x408]
	mov	rcx, qword ptr [r10 + 8]
	mov	r11d, ecx
	and	r11d, 0x7f8
	add	rdx, rax
	add	rdx, qword ptr [rdi + r11]
	mov	qword ptr [r10 + 8], rdx
	shr	rdx, 8
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [r8 + 8], rcx
	mov	r11, rax
	shl	r11, 0xc
	xor	r11, rax
	add	r11, qword ptr [r10 + 0x410]
	mov	rdx, qword ptr [r10 + 0x10]
	mov	eax, edx
	and	eax, 0x7f8
	add	rcx, r11
	add	rcx, qword ptr [rdi + rax]
	mov	qword ptr [r10 + 0x10], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	qword ptr [r8 + 0x10], rdx
	mov	rax, r11
	shr	rax, 0x21
	xor	rax, r11
	add	rax, qword ptr [r10 + 0x418]
	mov	rcx, qword ptr [r10 + 0x18]
	mov	r11d, ecx
	and	r11d, 0x7f8
	add	rdx, rax
	add	rdx, qword ptr [rdi + r11]
	mov	qword ptr [r10 + 0x18], rdx
	shr	rdx, 8
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [r8 + 0x18], rcx
	add	r10, 0x20
	add	r8, 0x20
	cmp	r10, r9
	jb	.label_1632
	add	rsi, 0x400
	lea	r8, [rdi + 0x800]
	nop	dword ptr [rax]
.label_1633:
	mov	r10, rax
	shl	r10, 0x15
	xor	r10, rax
	not	r10
	add	r10, qword ptr [r9 - 0x400]
	mov	rdx, qword ptr [r9]
	mov	eax, edx
	and	eax, 0x7f8
	add	rcx, qword ptr [rdi + rax]
	add	rcx, r10
	mov	qword ptr [r9], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	qword ptr [rsi], rdx
	mov	rax, r10
	shr	rax, 5
	xor	rax, r10
	add	rax, qword ptr [r9 - 0x3f8]
	mov	rcx, qword ptr [r9 + 8]
	mov	r10d, ecx
	and	r10d, 0x7f8
	add	rdx, rax
	add	rdx, qword ptr [rdi + r10]
	mov	qword ptr [r9 + 8], rdx
	shr	rdx, 8
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [rsi + 8], rcx
	mov	r10, rax
	shl	r10, 0xc
	xor	r10, rax
	add	r10, qword ptr [r9 - 0x3f0]
	mov	rdx, qword ptr [r9 + 0x10]
	mov	eax, edx
	and	eax, 0x7f8
	add	rcx, r10
	add	rcx, qword ptr [rdi + rax]
	mov	qword ptr [r9 + 0x10], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	qword ptr [rsi + 0x10], rdx
	mov	rax, r10
	shr	rax, 0x21
	xor	rax, r10
	add	rax, qword ptr [r9 - 0x3e8]
	mov	rcx, qword ptr [r9 + 0x18]
	mov	r10d, ecx
	and	r10d, 0x7f8
	add	rdx, rax
	add	rdx, qword ptr [rdi + r10]
	mov	qword ptr [r9 + 0x18], rdx
	shr	rdx, 8
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [rsi + 0x18], rcx
	add	r9, 0x20
	add	rsi, 0x20
	cmp	r9, r8
	jb	.label_1633
	mov	qword ptr [rdi + 0x800], rax
	mov	qword ptr [rdi + 0x808], rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x41305a
	.globl .label_41305a
	.type .label_41305a, @function
.label_41305a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413060

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	movabs	rdx, 0x647c4677a2884b7c
	movabs	r8, 0xb9f8b322c73ac862
	movabs	rsi, 0x8c0ea5053d4712a0
	movabs	rcx, 0xb29b2e824a595524
	movabs	rax, 0x82f053db8355e0ce
	movabs	r11, 0x48fe4a0fa5a09315
	movabs	r10, 0xae985bf2cbfc89ed
	movabs	r9, 0x98f5704f6c44c0ab
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_1634:
	add	rdx, qword ptr [rdi + rbx*8]
	add	r8, qword ptr [rdi + rbx*8 + 8]
	add	rsi, qword ptr [rdi + rbx*8 + 0x10]
	add	rcx, qword ptr [rdi + rbx*8 + 0x18]
	add	rax, qword ptr [rdi + rbx*8 + 0x20]
	add	r11, qword ptr [rdi + rbx*8 + 0x28]
	add	r10, qword ptr [rdi + rbx*8 + 0x30]
	add	r9, qword ptr [rdi + rbx*8 + 0x38]
	sub	rdx, rax
	mov	r14, r9
	shr	r14, 9
	xor	r14, r11
	add	r9, rdx
	sub	r8, r14
	lea	r11, [r8 + rdx]
	shl	rdx, 9
	mov	r15, rdx
	xor	r15, r10
	sub	rsi, r15
	mov	r10, r8
	shr	r8, 0x17
	xor	r9, r8
	add	r10, rsi
	sub	rcx, r9
	lea	r12, [rcx + rsi]
	shl	rsi, 0xf
	mov	rdx, rsi
	xor	rdx, r11
	sub	rax, rdx
	mov	r8, rcx
	shr	r8, 0xe
	xor	r8, r10
	mov	r10, rcx
	add	r10, rax
	sub	r14, r8
	lea	r13, [r14 + rax]
	shl	rax, 0x14
	mov	rsi, rax
	xor	rsi, r12
	sub	r15, rsi
	mov	rcx, r14
	shr	rcx, 0x11
	xor	rcx, r10
	mov	r11, r14
	add	r11, r15
	sub	r9, rcx
	lea	r10, [r9 + r15]
	shl	r15, 0xe
	mov	rax, r15
	xor	rax, r13
	mov	qword ptr [rdi + rbx*8], rdx
	mov	qword ptr [rdi + rbx*8 + 8], r8
	mov	qword ptr [rdi + rbx*8 + 0x10], rsi
	mov	qword ptr [rdi + rbx*8 + 0x18], rcx
	mov	qword ptr [rdi + rbx*8 + 0x20], rax
	mov	qword ptr [rdi + rbx*8 + 0x28], r11
	mov	qword ptr [rdi + rbx*8 + 0x30], r10
	mov	qword ptr [rdi + rbx*8 + 0x38], r9
	add	rbx, 8
	cmp	rbx, 0x100
	jl	.label_1634
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_1635:
	add	rdx, qword ptr [rdi + rbx*8]
	add	r8, qword ptr [rdi + rbx*8 + 8]
	add	rsi, qword ptr [rdi + rbx*8 + 0x10]
	add	rcx, qword ptr [rdi + rbx*8 + 0x18]
	add	rax, qword ptr [rdi + rbx*8 + 0x20]
	add	r11, qword ptr [rdi + rbx*8 + 0x28]
	add	r10, qword ptr [rdi + rbx*8 + 0x30]
	add	r9, qword ptr [rdi + rbx*8 + 0x38]
	sub	rdx, rax
	mov	r14, r9
	shr	r14, 9
	xor	r14, r11
	add	r9, rdx
	sub	r8, r14
	lea	r12, [r8 + rdx]
	shl	rdx, 9
	xor	rdx, r10
	sub	rsi, rdx
	mov	r11, r8
	shr	r11, 0x17
	xor	r11, r9
	add	r8, rsi
	sub	rcx, r11
	lea	r9, [rcx + rsi]
	shl	rsi, 0xf
	mov	r15, rsi
	xor	r15, r12
	sub	rax, r15
	mov	rsi, rcx
	shr	rsi, 0xe
	xor	r8, rsi
	add	rcx, rax
	sub	r14, r8
	lea	r12, [r14 + rax]
	shl	rax, 0x14
	mov	rsi, rax
	xor	rsi, r9
	sub	rdx, rsi
	mov	rax, r14
	shr	rax, 0x11
	xor	rcx, rax
	add	r14, rdx
	sub	r11, rcx
	lea	r10, [r11 + rdx]
	shl	rdx, 0xe
	xor	rdx, r12
	mov	qword ptr [rdi + rbx*8], r15
	mov	qword ptr [rdi + rbx*8 + 8], r8
	mov	qword ptr [rdi + rbx*8 + 0x10], rsi
	mov	qword ptr [rdi + rbx*8 + 0x18], rcx
	mov	qword ptr [rdi + rbx*8 + 0x20], rdx
	mov	qword ptr [rdi + rbx*8 + 0x28], r14
	mov	qword ptr [rdi + rbx*8 + 0x30], r10
	mov	qword ptr [rdi + rbx*8 + 0x38], r11
	add	rbx, 8
	cmp	rbx, 0x100
	mov	r9, r11
	mov	r11, r14
	mov	rax, rdx
	mov	rdx, r15
	jl	.label_1635
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x800], xmm0
	mov	qword ptr [rdi + 0x810], 0
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4132b8
	.globl .label_4132b8
	.type .label_4132b8, @function
.label_4132b8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4132c0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	16
	#Procedure 0x4132ce
	.globl .label_4132ce
	.type .label_4132ce, @function
.label_4132ce:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4132d0

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	mov	rax, rsi
	xor	esi, esi
	mov	rdx, rax
	jmp	memset
	.section	.text
	.align	16
	#Procedure 0x4132dd
	.globl .label_4132dd
	.type .label_4132dd, @function
.label_4132dd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4132e0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_1636
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1638
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1636
.label_1638:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_1636
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_1637
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_1637:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1636:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x413354
	.globl .label_413354
	.type .label_413354, @function
.label_413354:

	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x413360

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_1655
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_1655:
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
	ja	.label_1639
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_1643
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_1649
	test	esi, esi
	jne	.label_1639
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1640
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1644
.label_1639:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_1646
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_1649
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_1651
.label_1643:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_1642
.label_1649:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1654
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1656
.label_1654:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1656:
	mov	edx, dword ptr [rax]
.label_1645:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
.label_1642:
	mov	ebp, eax
.label_1641:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1651:
	cmp	eax, 6
	jne	.label_1646
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1647
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1650
.label_1646:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1653
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1657
.label_1640:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1644:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	jmp	.label_1645
.label_1647:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1650:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_1648
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_1652
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1652
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1641
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	al, 1
	jmp	.label_1659
.label_1652:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_1641
.label_1653:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1657:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_1642
.label_1648:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	sete	al
.label_1659:
	test	al, al
	je	.label_1641
	test	ebp, ebp
	js	.label_1641
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1658
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_1641
.label_1658:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_1641
	.section	.text
	.align	16
	#Procedure 0x41363a
	.globl .label_41363a
	.type .label_41363a, @function
.label_41363a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413640

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	.section	.text
	.align	16
	#Procedure 0x413657
	.globl .label_413657
	.type .label_413657, @function
.label_413657:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413660

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	call	fopen
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_1660
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_1664
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1661
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_1662
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_1660
.label_1662:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_1663
.label_1664:
	mov	rax, rbx
	jmp	.label_1660
.label_1661:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_1663:
	xor	eax, eax
.label_1660:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4136e6
	.globl .label_4136e6
	.type .label_4136e6, @function
.label_4136e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413755
	.globl .label_413755
	.type .label_413755, @function
.label_413755:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413762
	.globl .label_413762
	.type .label_413762, @function
.label_413762:

	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x413786
	.globl .label_413786
	.type .label_413786, @function
.label_413786:

	nop	word ptr cs:[rax + rax]
