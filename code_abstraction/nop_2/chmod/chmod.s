	.section	.text
	.align	16
	#Procedure 0x401830

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
	mov	esi, OFFSET FLAT:.str.32
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
	mov	esi, OFFSET FLAT:.str.34
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_7
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_7:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.10
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.10
	mov	ecx, OFFSET FLAT:.str.38
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a80

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
	mov	r14, rsi
	mov	qword ptr [rsp + 0x18], r14
	mov	ebp, edi
	mov	dword ptr [rsp + 0x20], ebp
	mov	qword ptr [rsp + 0x30], 0
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.12
	mov	esi, OFFSET FLAT:.str.13
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.12
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [byte ptr [rip + diagnose_surprises]],  0
	mov	byte ptr [byte ptr [rip + force_silent]],  0
	mov	byte ptr [byte ptr [rip + recurse]],  0
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	ebx, ebx
	xor	r13d, r13d
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	jmp	.label_14
	nop	dword ptr [rax]
.label_11:
	mov	qword ptr [rsp + 0x28], rax
	mov	byte ptr [rax + rbp], 0x2c
	add	r12, rax
	inc	r14
	mov	rdi, r12
	mov	rsi, rbx
	mov	rdx, r14
	call	memcpy
	mov	byte ptr [byte ptr [rip + diagnose_surprises]],  1
	mov	bl, r15b
	mov	r14, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp + 0x20]
.label_14:
	mov	r15b, bl
	xor	ebx, ebx
	mov	edx, OFFSET FLAT:.str.14
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x60
	jle	.label_47
	add	eax, -0x61
	cmp	eax, 0x21
	ja	.label_12
	jmp	qword ptr [word ptr [+ (rax * 8) + label_51]]
.label_946:
	mov	dword ptr [dword ptr [rip + verbosity]],  1
	mov	bl, r15b
	jmp	.label_14
	nop	word ptr cs:[rax + rax]
.label_47:
	cmp	eax, 0x2a
	jle	.label_55
	add	eax, -0x2b
	cmp	eax, 0x2d
	ja	.label_12
	movabs	rcx, 0x200000041fe3
	bt	rcx, rax
	jae	.label_58
.label_945:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rbx, qword ptr [r14 + rax*8 - 8]
	mov	rdi, rbx
	call	strlen
	mov	r14, rax
	cmp	r13, 1
	mov	r12, r13
	mov	rbp, r13
	sbb	r12, -1
	lea	r13, [r14 + r12]
	cmp	qword ptr [rsp + 0x30], r13
	jbe	.label_60
	mov	rax, qword ptr [rsp + 0x28]
	jmp	.label_11
	nop	
.label_60:
	lea	rax, [r13 + 1]
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, qword ptr [rsp + 0x28]
	lea	rsi, [rsp + 0x30]
	call	x2realloc
	jmp	.label_11
.label_58:
	cmp	rax, 0x27
	jne	.label_12
	mov	byte ptr [byte ptr [rip + recurse]],  1
	mov	bl, r15b
	jmp	.label_14
.label_947:
	mov	byte ptr [byte ptr [rip + force_silent]],  1
	mov	bl, r15b
	jmp	.label_14
.label_948:
	mov	dword ptr [dword ptr [rip + verbosity]],  0
	mov	bl, r15b
	jmp	.label_14
.label_949:
	mov	bl, 1
	jmp	.label_14
.label_950:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0x10], rax
	mov	bl, r15b
	jmp	.label_14
.label_55:
	cmp	eax, -1
	jne	.label_21
	mov	rbx, qword ptr [rsp + 0x10]
	test	rbx, rbx
	mov	rcx, qword ptr [rsp + 0x28]
	je	.label_22
	test	rcx, rcx
	mov	ecx, 0
	je	.label_16
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18_0
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
.label_22:
	test	rcx, rcx
	jne	.label_16
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	rcx, qword ptr [r14 + rax*8]
.label_16:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, ebp
	jge	.label_32
	test	rbx, rbx
	je	.label_20
	mov	rdi, rbx
	call	mode_create_from_ref
	mov	qword ptr [word ptr [rip + change]],  rax
	test	rax, rax
	jne	.label_59
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
.label_20:
	mov	rbp, rcx
	mov	rdi, rbp
	call	mode_compile
	mov	qword ptr [word ptr [rip + change]],  rax
	test	rax, rax
	je	.label_43
	xor	edi, edi
	call	umask
	mov	dword ptr [dword ptr [rip + umask_value]],  eax
.label_59:
	test	r15b, r15b
	je	.label_18
	mov	al,  byte ptr [byte ptr [rip + recurse]]
	xor	al, 1
	test	al, 1
	jne	.label_18
	mov	edi, OFFSET FLAT:main.dev_ino_buf
	call	get_root_dev_ino
	mov	qword ptr [word ptr [rip + root_dev_ino]],  rax
	test	rax, rax
	jne	.label_52
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:.str_2
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_18:
	mov	qword ptr [word ptr [rip + root_dev_ino]],  0
.label_52:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	rdi, [r14 + rax*8]
	mov	esi, 0x411
	xor	edx, edx
	call	xfts_open
	mov	qword ptr [rsp + 0x28], rax
	mov	rdi, rax
	call	rpl_fts_read
	mov	r12, rax
	mov	bpl, 1
	test	r12, r12
	je	.label_61
	mov	r14b, 1
	jmp	.label_38
.label_35:
	mov	qword ptr [r12 + 0x20], 1
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, r12
	call	rpl_fts_set
	mov	bpl, 1
	jmp	.label_15
.label_45:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.56
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_57:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.58
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edx, 4
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rdi, rbx
	mov	rsi, r12
	call	rpl_fts_set
	mov	rdi, rbx
	call	rpl_fts_read
	jmp	.label_15
	nop	dword ptr [rax]
.label_38:
	mov	rbx, qword ptr [r12 + 0x30]
	mov	r13, qword ptr [r12 + 0x38]
	movzx	eax, word ptr [r12 + 0x70]
	add	eax, -2
	cmp	eax, 0xb
	ja	.label_26
	mov	bpl, 1
	jmp	qword ptr [word ptr [+ (rax * 8) + label_30]]
.label_872:
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, r12
	call	cycle_warning_required
	test	al, al
	je	.label_26
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.55
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r13
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_15
	nop	
.label_26:
	mov	qword ptr [rsp + 0x18], rbx
	mov	rax,  qword ptr [word ptr [rip + root_dev_ino]]
	test	rax, rax
	je	.label_40
	mov	rcx, qword ptr [r12 + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_40
	mov	rcx, qword ptr [r12 + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_40
	movzx	eax, byte ptr [r13]
	cmp	eax, 0x2f
	jne	.label_44
	cmp	byte ptr [r13 + 1], 0
	je	.label_45
.label_44:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 5
	call	dcgettext
	mov	rdx, r13
	mov	r13, rax
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:.str_2
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r13
	mov	rcx, rbp
	mov	r8, rbx
	call	error
	jmp	.label_57
.label_40:
	mov	byte ptr [rsp + 0x10], r14b
	mov	r14d, dword ptr [r12 + 0x90]
	mov	ebx, r14d
	and	ebx, 0xf000
	cmp	ebx, 0x4000
	sete	al
	mov	edx,  dword ptr [dword ptr [rip + umask_value]]
	mov	rcx,  qword ptr [word ptr [rip + change]]
	movzx	esi, al
	xor	r15d, r15d
	xor	r8d, r8d
	mov	edi, r14d
	call	mode_adjust
	mov	ebp, eax
	cmp	ebx, 0xa000
	jne	.label_48
	mov	qword ptr [rsp + 0x20], r13
	mov	r13b, 1
	mov	ebx, ebp
	mov	ebp, r14d
	jmp	.label_54
.label_873:
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x20], r13
	mov	al,  byte ptr [byte ptr [rip + force_silent]]
	xor	r15d, r15d
	and	al, 1
	mov	r13d, 0
	jne	.label_10
	mov	ebx, dword ptr [r12 + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	jmp	.label_36
.label_876:
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x20], r13
	mov	al,  byte ptr [byte ptr [rip + force_silent]]
	xor	r15d, r15d
	and	al, 1
	mov	r13d, 0
	jne	.label_10
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.54
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x20]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	jmp	.label_23
.label_874:
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x20], r13
	mov	al,  byte ptr [byte ptr [rip + force_silent]]
	xor	r15d, r15d
	and	al, 1
	mov	r13d, 0
	jne	.label_10
	mov	ebx, dword ptr [r12 + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x20]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebx
	jmp	.label_23
.label_875:
	cmp	qword ptr [r12 + 0x58], 0
	jne	.label_34
	cmp	qword ptr [r12 + 0x20], 0
	je	.label_35
.label_34:
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x20], r13
	mov	al,  byte ptr [byte ptr [rip + force_silent]]
	xor	r15d, r15d
	and	al, 1
	mov	r13d, 0
	jne	.label_10
	mov	ebx, dword ptr [r12 + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.51
.label_36:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x20]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
.label_23:
	call	error
	xor	r13d, r13d
	jmp	.label_10
.label_48:
	mov	rax, qword ptr [rsp + 0x28]
	mov	edi, dword ptr [rax + 0x2c]
	xor	ecx, ecx
	mov	rsi, qword ptr [rsp + 0x18]
	mov	edx, ebp
	call	fchmodat
	mov	r15b, 1
	test	eax, eax
	mov	ebx, ebp
	je	.label_50
	mov	al,  byte ptr [byte ptr [rip + force_silent]]
	xor	r15d, r15d
	and	al, 1
	mov	ebp, r14d
	je	.label_31
	mov	qword ptr [rsp + 0x20], r13
	jmp	.label_53
.label_50:
	mov	qword ptr [rsp + 0x20], r13
	mov	r13b, 1
	mov	ebp, r14d
	jmp	.label_54
.label_31:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.59
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 8], rax
	mov	edi, 4
	mov	rsi, r13
	mov	qword ptr [rsp + 0x20], r13
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, qword ptr [rsp + 8]
	call	error
.label_53:
	xor	r13d, r13d
.label_54:
	mov	r14b, byte ptr [rsp + 0x10]
.label_10:
	cmp	dword ptr [dword ptr [rip + verbosity]],  2
	je	.label_28
	test	r15b, r15b
	je	.label_62
	test	bh, 0xe
	mov	eax, ebx
	je	.label_63
	mov	rax, qword ptr [rsp + 0x28]
	mov	esi, dword ptr [rax + 0x2c]
	mov	edi, 1
	xor	r8d, r8d
	mov	rdx, qword ptr [rsp + 0x18]
	lea	rcx, [rsp + 0x38]
	call	__fxstatat
	test	eax, eax
	je	.label_17
	mov	al,  byte ptr [byte ptr [rip + force_silent]]
	and	al, 1
	jne	.label_19
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0x18], eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.61
	mov	edx, 5
	call	dcgettext
	mov	byte ptr [rsp + 0x10], r14b
	mov	r14d, ebp
	mov	ebp, ebx
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x20]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rsp + 0x18]
	mov	rdx, rbx
	mov	ebx, ebp
	mov	ebp, r14d
	mov	r14b, byte ptr [rsp + 0x10]
	call	error
.label_19:
	xor	eax, eax
	jmp	.label_24
.label_62:
	xor	eax, eax
	jmp	.label_24
.label_17:
	mov	eax, dword ptr [rsp + 0x50]
.label_63:
	xor	eax, ebp
	test	ax, 0xfff
	setne	al
.label_24:
	test	al, al
	jne	.label_25
	mov	ecx,  dword ptr [dword ptr [rip + verbosity]]
	test	ecx, ecx
	jne	.label_28
.label_25:
	mov	dword ptr [rsp + 0x18], ebp
	mov	ebp, ebx
	test	al, al
	sete	al
	movzx	eax, al
	lea	ebx, [rax + rax + 1]
	test	r15b, r15b
	mov	eax, 0
	cmove	ebx, eax
	test	r13b, r13b
	mov	eax, 2
	cmove	ebx, eax
	test	ebx, ebx
	je	.label_29
	mov	edi, ebp
	lea	rsi, [rsp + 0x38]
	call	strmode
	mov	byte ptr [rsp + 0x42], 0
	mov	edi, dword ptr [rsp + 0x18]
	lea	rsi, [rsp + 0xcc]
	call	strmode
	mov	byte ptr [rsp + 0xd6], 0
	cmp	ebx, 3
	je	.label_37
	cmp	ebx, 2
	je	.label_39
	cmp	ebx, 1
	jne	.label_42
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.63
	jmp	.label_27
.label_29:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.62
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x20]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
	jmp	.label_49
.label_37:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x20]
	call	quotearg_style
	mov	rdx, rax
	mov	ecx, ebp
	and	ecx, 0xfff
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	lea	r8, [rsp + 0x39]
	call	__printf_chk
	jmp	.label_49
.label_39:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.64
.label_27:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x20]
	call	quotearg_style
	mov	rdx, rax
	mov	eax, dword ptr [rsp + 0x18]
	mov	ecx, eax
	and	ecx, 0xfff
	mov	r9d, ebp
	and	r9d, 0xfff
	lea	rax, [rsp + 0x39]
	mov	qword ptr [rsp], rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	lea	r8, [rsp + 0xcd]
	call	__printf_chk
.label_49:
	mov	ebx, ebp
	mov	ebp, dword ptr [rsp + 0x18]
.label_28:
	test	r15b, r15b
	je	.label_13
	movzx	eax,  byte ptr [byte ptr [rip + diagnose_surprises]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_13
	mov	eax, ebp
	and	eax, 0xf000
	cmp	eax, 0x4000
	sete	al
	mov	rcx,  qword ptr [word ptr [rip + change]]
	movzx	esi, al
	xor	edx, edx
	xor	r8d, r8d
	mov	edi, ebp
	call	mode_adjust
	mov	ebp, eax
	not	eax
	test	ebx, eax
	je	.label_13
	mov	edi, ebx
	lea	rsi, [rsp + 0x38]
	call	strmode
	mov	edi, ebp
	lea	rsi, [rsp + 0xcc]
	call	strmode
	mov	byte ptr [rsp + 0xd6], 0
	mov	byte ptr [rsp + 0x42], 0
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x20]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	lea	r8, [rsp + 0x39]
	lea	r9, [rsp + 0xcd]
	call	error
	nop	word ptr cs:[rax + rax]
.label_13:
	mov	al,  byte ptr [byte ptr [rip + recurse]]
	and	al, 1
	jne	.label_33
	mov	edx, 4
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, r12
	call	rpl_fts_set
.label_33:
	test	r13b, r13b
	setne	bpl
.label_15:
	and	bpl, r14b
	mov	rdi, qword ptr [rsp + 0x28]
	call	rpl_fts_read
	mov	r12, rax
	test	r12, r12
	mov	r14b, bpl
	jne	.label_38
.label_61:
	call	__errno_location
	mov	r14, rax
	mov	ebx, dword ptr [r14]
	test	ebx, ebx
	je	.label_41
	mov	al,  byte ptr [byte ptr [rip + force_silent]]
	xor	ebp, ebp
	and	al, 1
	jne	.label_41
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.49
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_41:
	mov	rdi, qword ptr [rsp + 0x28]
	call	rpl_fts_close
	test	eax, eax
	je	.label_46
	mov	ebx, dword ptr [r14]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.50
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_46:
	movzx	eax, bpl
	xor	eax, 1
	add	rsp, 0xd8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_21:
	cmp	eax, 0xffffff7d
	je	.label_56
	cmp	eax, 0xffffff7e
	jne	.label_12
	xor	edi, edi
	call	usage
.label_56:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.16
	mov	r9d, OFFSET FLAT:.str.17_0
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_12:
	mov	edi, 1
	call	usage
.label_42:
	call	abort
.label_32:
	mov	ebx, ebp
	mov	rbp, r14
	test	rcx, rcx
	je	.label_9
	cmp	rcx, qword ptr [rbp + rax*8 - 8]
	jne	.label_9
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	movsxd	rax, ebx
	mov	rdi, qword ptr [rbp + rax*8 - 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	mov	edi, 1
	call	usage
.label_9:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
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
.label_43:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, rbp
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026b0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026c0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026d0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_67
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_66
	cmp	dword ptr [rbp], 0x20
	jne	.label_66
.label_67:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_65
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_66:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_3
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_64
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_65:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_64:
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
	#Procedure 0x402790

	.globl strmode
	.type strmode, @function
strmode:
	mov	eax, edi
	mov	ecx, eax
	and	ecx, 0xf000
	cmp	ecx, 0x5fff
	jle	.label_74
	cmp	ecx, 0x9fff
	jg	.label_81
	cmp	ecx, 0x6000
	je	.label_82
	mov	dl, 0x2d
	cmp	ecx, 0x8000
	je	.label_77
	jmp	.label_73
.label_74:
	cmp	ecx, 0x1000
	je	.label_84
	cmp	ecx, 0x2000
	je	.label_71
	cmp	ecx, 0x4000
	jne	.label_73
	mov	dl, 0x64
	jmp	.label_77
.label_81:
	cmp	ecx, 0xa000
	je	.label_80
	cmp	ecx, 0xc000
	jne	.label_73
	mov	dl, 0x73
	jmp	.label_77
.label_82:
	mov	dl, 0x62
	jmp	.label_77
.label_84:
	mov	dl, 0x70
	jmp	.label_77
.label_80:
	mov	dl, 0x6c
	jmp	.label_77
.label_73:
	mov	dl, 0x3f
	jmp	.label_77
.label_71:
	mov	dl, 0x63
.label_77:
	push	rbx
	mov	byte ptr [rsi], dl
	mov	bl, ah
	test	bl, 1
	mov	r9b, 0x72
	mov	cl, 0x72
	jne	.label_68
	mov	cl, 0x2d
.label_68:
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
	jne	.label_75
	mov	cl, 0x2d
.label_75:
	test	bl, 8
	jne	.label_85
	mov	dl, cl
.label_85:
	mov	byte ptr [rsi + 3], dl
	test	al, 0x20
	mov	cl, 0x72
	jne	.label_69
	mov	cl, 0x2d
.label_69:
	mov	byte ptr [rsi + 4], cl
	test	al, 0x10
	mov	dl, 0x77
	mov	cl, 0x77
	jne	.label_70
	mov	cl, 0x2d
.label_70:
	mov	byte ptr [rsi + 5], cl
	mov	ecx, eax
	and	ecx, 8
	lea	edi, [rcx*4 + 0x53]
	mov	cl, 0x78
	jne	.label_78
	mov	cl, 0x2d
.label_78:
	test	bl, 4
	jne	.label_83
	mov	dil, cl
.label_83:
	mov	byte ptr [rsi + 6], dil
	test	al, 4
	jne	.label_86
	mov	r9b, 0x2d
.label_86:
	mov	byte ptr [rsi + 7], r9b
	test	al, 2
	jne	.label_72
	mov	dl, 0x2d
.label_72:
	mov	byte ptr [rsi + 8], dl
	and	eax, 1
	jne	.label_79
	mov	r8b, 0x2d
.label_79:
	test	bl, 2
	pop	rbx
	je	.label_76
	shl	eax, 5
	or	eax, 0x54
	mov	r8b, al
.label_76:
	mov	byte ptr [rsi + 9], r8b
	mov	byte ptr [rsi + 0xa], 0x20
	mov	byte ptr [rsi + 0xb], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028c0
	.globl filemodestring
	.type filemodestring, @function
filemodestring:

	mov	edi, dword ptr [rdi + 0x18]
	jmp	strmode
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028d0

	.globl mode_compile
	.type mode_compile, @function
mode_compile:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	mov	bl, byte ptr [r14]
	mov	al, bl
	and	al, 0xf8
	movzx	eax, al
	cmp	eax, 0x30
	jne	.label_112
	xor	ebp, ebp
	xor	eax, eax
	mov	rdx, r14
	nop	dword ptr [rax]
.label_88:
	movsx	ecx, bl
	lea	ebp, [rcx + rbp*8 - 0x30]
	cmp	ebp, 0xfff
	ja	.label_96
	mov	bl, byte ptr [rdx + 1]
	inc	rdx
	mov	cl, bl
	and	cl, 0xf8
	movzx	ecx, cl
	cmp	ecx, 0x30
	je	.label_88
	xor	eax, eax
	test	bl, bl
	jne	.label_96
	sub	rdx, r14
	mov	eax, ebp
	and	eax, 0xc00
	or	eax, 0x3ff
	cmp	rdx, 5
	mov	ebx, 0xfff
	cmovl	ebx, eax
	mov	edi, 0x20
	call	xmalloc
	mov	byte ptr [rax], 0x3d
	mov	byte ptr [rax + 1], 1
	mov	dword ptr [rax + 4], 0xfff
	mov	dword ptr [rax + 8], ebp
	mov	dword ptr [rax + 0xc], ebx
	mov	byte ptr [rax + 0x11], 0
	jmp	.label_96
.label_112:
	lea	rax, [r14 + 1]
	mov	edi, 1
	jmp	.label_111
	nop	dword ptr [rax]
.label_90:
	add	rdi, rdx
	mov	bl, byte ptr [rax]
	inc	rax
.label_111:
	movsx	ecx, bl
	cmp	ecx, 0x2c
	jle	.label_120
	movzx	ecx, bl
	cmp	ecx, 0x2d
	je	.label_87
	cmp	ecx, 0x3d
	mov	edx, 1
	je	.label_90
	jmp	.label_95
	nop	word ptr cs:[rax + rax]
.label_120:
	movzx	ecx, bl
	cmp	ecx, 0x2b
	mov	edx, 1
	je	.label_90
	test	bl, bl
	je	.label_105
.label_95:
	xor	edx, edx
	jmp	.label_90
	nop	word ptr cs:[rax + rax]
.label_87:
	mov	edx, 1
	jmp	.label_90
.label_105:
	mov	rax, rdi
	shr	rax, 0x3b
	jne	.label_109
	shl	rdi, 4
	call	xmalloc
	xor	r8d, r8d
	jmp	.label_116
.label_113:
	inc	rdi
	mov	r14, rdi
	nop	dword ptr [rax + rax]
.label_116:
	xor	r11d, r11d
	jmp	.label_99
	nop	word ptr cs:[rax + rax]
.label_97:
	or	r11d, 0xfff
	inc	r14
.label_99:
	mov	bpl, byte ptr [r14]
	movsx	ecx, bpl
	cmp	ecx, 0x66
	jg	.label_91
	cmp	ecx, 0x60
	jle	.label_89
	cmp	ecx, 0x61
	je	.label_97
	jmp	.label_100
	nop	word ptr cs:[rax + rax]
.label_91:
	cmp	ecx, 0x67
	je	.label_106
	cmp	ecx, 0x6f
	je	.label_107
	cmp	ecx, 0x75
	jne	.label_100
	or	r11d, 0x9c0
	inc	r14
	jmp	.label_99
.label_106:
	or	r11d, 0x438
	inc	r14
	jmp	.label_99
.label_107:
	or	r11d, 0x207
	inc	r14
	jmp	.label_99
	nop	word ptr [rax + rax]
.label_89:
	cmp	ecx, 0x2b
	je	.label_108
	cmp	ecx, 0x2d
	je	.label_108
	cmp	ecx, 0x3d
	jne	.label_100
	nop	word ptr cs:[rax + rax]
.label_108:
	lea	rdi, [r14 + 1]
	mov	bl, byte ptr [r14 + 1]
	movsx	edx, bl
	mov	r9b, 1
	xor	ecx, ecx
	cmp	edx, 0x66
	jg	.label_94
	add	edx, -0x30
	cmp	edx, 8
	jae	.label_103
	nop	word ptr cs:[rax + rax]
.label_114:
	movsx	edx, bl
	lea	ecx, [rdx + rcx*8 - 0x30]
	cmp	ecx, 0xfff
	ja	.label_100
	mov	bl, byte ptr [rdi + 1]
	inc	rdi
	mov	dl, bl
	and	dl, 0xf8
	movzx	edx, dl
	cmp	edx, 0x30
	je	.label_114
	test	r11d, r11d
	jne	.label_100
	mov	r9b, 1
	mov	r11d, 0xfff
	test	bl, bl
	je	.label_119
	movzx	edx, bl
	cmp	edx, 0x2c
	mov	r10d, 0xfff
	je	.label_93
	jmp	.label_100
	nop	word ptr [rax + rax]
.label_94:
	cmp	edx, 0x67
	je	.label_98
	cmp	edx, 0x6f
	je	.label_104
	cmp	edx, 0x75
	jne	.label_103
	add	r14, 2
	mov	r9b, 3
	xor	r10d, r10d
	mov	ecx, 0x1c0
	mov	rdi, r14
	jmp	.label_93
	nop	
.label_101:
	mov	bl, byte ptr [rdi + 1]
	inc	rdi
	mov	r9b, dl
.label_103:
	movsx	esi, bl
	xor	r10d, r10d
	lea	edx, [rsi - 0x72]
	cmp	edx, 6
	ja	.label_115
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_118]]
.label_878:
	or	ecx, 0x124
	jmp	.label_102
.label_115:
	mov	dl, 2
	cmp	esi, 0x58
	je	.label_101
	jmp	.label_93
.label_879:
	or	ecx, 0xc00
	jmp	.label_102
.label_880:
	or	ecx, 0x200
	jmp	.label_102
.label_881:
	or	ecx, 0x92
	jmp	.label_102
.label_882:
	or	ecx, 0x49
	nop	word ptr [rax + rax]
.label_102:
	mov	dl, r9b
	jmp	.label_101
.label_119:
	mov	r10d, 0xfff
	jmp	.label_93
.label_98:
	add	r14, 2
	mov	r9b, 3
	xor	r10d, r10d
	mov	ecx, 0x38
	mov	rdi, r14
	jmp	.label_93
.label_104:
	add	r14, 2
	mov	r9b, 3
	xor	r10d, r10d
	mov	ecx, 7
	mov	rdi, r14
	nop	word ptr cs:[rax + rax]
.label_93:
	mov	rdx, r8
	shl	rdx, 4
	mov	byte ptr [rax + rdx], bpl
	mov	byte ptr [rax + rdx + 1], r9b
	mov	dword ptr [rax + rdx + 4], r11d
	mov	dword ptr [rax + rdx + 8], ecx
	test	r10d, r10d
	jne	.label_117
	cmp	r11d, 1
	sbb	r10d, r10d
	or	r10d, r11d
	and	r10d, ecx
.label_117:
	inc	r8
	mov	dword ptr [rax + rdx + 0xc], r10d
	movsx	ebp, byte ptr [rdi]
	movzx	ecx, bpl
	cmp	ebp, 0x2c
	jle	.label_92
	cmp	ecx, 0x2d
	mov	r14, rdi
	je	.label_108
	cmp	ecx, 0x3d
	mov	r14, rdi
	je	.label_108
	jmp	.label_100
	nop	dword ptr [rax]
.label_92:
	cmp	ecx, 0x2b
	mov	r14, rdi
	je	.label_108
	test	bpl, bpl
	je	.label_110
	cmp	ecx, 0x2c
	je	.label_113
.label_100:
	mov	rdi, rax
	call	free
	xor	eax, eax
.label_96:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_110:
	shl	r8, 4
	mov	byte ptr [rax + r8 + 1], 0
	jmp	.label_96
.label_109:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c80

	.globl mode_create_from_ref
	.type mode_create_from_ref, @function
mode_create_from_ref:
	push	rbx
	sub	rsp, 0x90
	mov	rax, rdi
	lea	rdx, [rsp]
	mov	edi, 1
	mov	rsi, rax
	call	__xstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_121
	mov	ebx, dword ptr [rsp + 0x18]
	mov	edi, 0x20
	call	xmalloc
	mov	byte ptr [rax], 0x3d
	mov	byte ptr [rax + 1], 1
	mov	dword ptr [rax + 4], 0xfff
	mov	dword ptr [rax + 8], ebx
	mov	dword ptr [rax + 0xc], 0xfff
	mov	byte ptr [rax + 0x11], 0
.label_121:
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ce0

	.globl mode_adjust
	.type mode_adjust, @function
mode_adjust:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	qword ptr [rsp - 8], r8
	and	edi, 0xfff
	mov	al, byte ptr [rcx + 1]
	xor	r13d, r13d
	test	al, al
	je	.label_122
	xor	r13d, r13d
	test	sil, sil
	mov	r9d, 0xc00
	cmove	r9d, r13d
	not	edx
	mov	r10d, r9d
	not	r10d
	movzx	r12d, sil
	mov	r14d, 0x92
	mov	r15d, 0x49
	nop	dword ptr [rax + rax]
.label_129:
	movsx	ebp, al
	mov	ebx, dword ptr [rcx + 4]
	mov	esi, dword ptr [rcx + 8]
	mov	r8d, dword ptr [rcx + 0xc]
	cmp	ebp, 2
	je	.label_127
	cmp	ebp, 3
	jne	.label_123
	and	esi, edi
	mov	ebp, esi
	and	ebp, 0x124
	mov	eax, 0x124
	cmovne	ebp, eax
	mov	r11d, esi
	and	r11d, 0x92
	cmovne	r11d, r14d
	or	r11d, esi
	and	esi, 0x49
	cmovne	esi, r15d
	or	esi, ebp
	or	esi, r11d
	jmp	.label_123
	nop	dword ptr [rax + rax]
.label_127:
	mov	ebp, edi
	and	ebp, 0x49
	mov	eax, esi
	or	eax, 0x49
	or	ebp, r12d
	cmovne	esi, eax
.label_123:
	test	ebx, ebx
	mov	eax, edx
	cmovne	eax, ebx
	mov	ebp, r8d
	or	ebp, r10d
	and	ebp, esi
	and	ebp, eax
	movsx	esi, byte ptr [rcx]
	cmp	esi, 0x2b
	je	.label_128
	cmp	esi, 0x2d
	je	.label_125
	cmp	esi, 0x3d
	jne	.label_126
	not	r8d
	and	r8d, r9d
	test	ebx, ebx
	mov	eax, ebx
	not	eax
	cmove	eax, ebx
	or	eax, r8d
	mov	esi, eax
	not	esi
	and	esi, 0xfff
	or	r13d, esi
	and	eax, edi
	or	ebp, eax
	mov	edi, ebp
	jmp	.label_126
	nop	word ptr [rax + rax]
.label_125:
	or	r13d, ebp
	not	ebp
	and	edi, ebp
	jmp	.label_126
	nop	dword ptr [rax]
.label_128:
	or	r13d, ebp
	or	edi, ebp
.label_126:
	mov	al, byte ptr [rcx + 0x11]
	add	rcx, 0x10
	test	al, al
	jne	.label_129
.label_122:
	mov	rax, qword ptr [rsp - 8]
	test	rax, rax
	je	.label_124
	mov	dword ptr [rax], r13d
.label_124:
	mov	eax, edi
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
	#Procedure 0x402e20

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_130
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_131
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_131
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_132
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_132:
	mov	rbx, r14
.label_131:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_130:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_4
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ed0
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
	#Procedure 0x402f10
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
	#Procedure 0x402f20
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
	#Procedure 0x402f30
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
	#Procedure 0x402f70
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
	#Procedure 0x402f90
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_133
	test	rdx, rdx
	je	.label_133
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_133:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fc0
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
	#Procedure 0x403040

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
.label_139:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_201
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_204]]
.label_905:
	mov	edi, OFFSET FLAT:.str.11
	mov	esi, r15d
	mov	r14, r10
	mov	bl, r8b
	call	gettext_quote
	mov	qword ptr [rsp + 0xa0], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r15d
	call	gettext_quote
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x98], rax
.label_906:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_222
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_222
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_243:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_235
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_235:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_243
.label_222:
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
	jmp	.label_152
.label_898:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_152
.label_901:
	mov	al, 1
.label_899:
	mov	r12b, 1
.label_902:
	test	r12b, 1
	mov	cl, 1
	je	.label_159
	mov	cl, al
.label_159:
	mov	al, cl
.label_900:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_162
	test	r10, r10
	je	.label_166
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_168
.label_162:
	xor	ecx, ecx
	jmp	.label_168
.label_903:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_199
	test	r10, r10
	je	.label_181
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_183
.label_904:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_152
.label_166:
	mov	ecx, 1
	nop	dword ptr [rax]
.label_168:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_152
.label_199:
	xor	eax, eax
	jmp	.label_183
.label_181:
	mov	eax, 1
.label_183:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_152:
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
	jmp	.label_214
.label_135:
	inc	rdi
.label_214:
	cmp	rbp, -1
	je	.label_248
	cmp	rdi, rbp
	jne	.label_251
	jmp	.label_252
	nop	word ptr cs:[rax + rax]
.label_248:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_134
.label_251:
	test	r12b, r12b
	je	.label_142
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_144
	cmp	rbp, -1
	jne	.label_144
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
.label_144:
	cmp	rbx, rbp
	jbe	.label_172
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_175
	nop	word ptr [rax + rax]
.label_142:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_175
.label_172:
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
	jne	.label_198
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_175
	jmp	.label_147
.label_198:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_175:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_258
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_218]]
.label_960:
	test	rdi, rdi
	jne	.label_138
	jmp	.label_225
.label_964:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_226
	test	rdi, rdi
	jne	.label_229
	cmp	rbp, 1
	je	.label_225
	xor	r13d, r13d
	jmp	.label_155
.label_953:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_232
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_147
	cmp	r9d, 2
	jne	.label_237
	mov	al, r14b
	and	al, 1
	jne	.label_238
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_241
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_241:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_223
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_223:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_254
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_254:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_146
.label_954:
	mov	bl, 0x62
	jmp	.label_157
.label_955:
	mov	cl, 0x74
	jmp	.label_141
.label_956:
	mov	bl, 0x76
	jmp	.label_157
.label_957:
	mov	bl, 0x66
	jmp	.label_157
.label_958:
	mov	cl, 0x72
	jmp	.label_141
.label_961:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_164
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_169
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
	jae	.label_197
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_197:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_194
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_194:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_257
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_257:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_164:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_155
.label_962:
	cmp	r9d, 5
	je	.label_173
	cmp	r9d, 2
	jne	.label_138
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_138
	jmp	.label_210
.label_963:
	cmp	r9d, 2
	jne	.label_212
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_215
	jmp	.label_219
.label_258:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_221
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
.label_188:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_233
	test	cl, cl
	je	.label_233
	xor	eax, eax
	jmp	.label_155
.label_226:
	test	rdi, rdi
	jne	.label_246
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_246
.label_225:
	mov	dl, 1
.label_959:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_250
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_155
.label_232:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_135
	jmp	.label_138
.label_212:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_141
.label_215:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_145
.label_141:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_149
.label_157:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_155
	jmp	.label_160
.label_221:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_161
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_161:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_224:
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
	je	.label_193
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_196
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_200
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_242
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_211:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_206
	bt	rsi, rdx
	jb	.label_209
.label_206:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_211
.label_242:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_176
	xor	r13d, r13d
.label_176:
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
	je	.label_224
	jmp	.label_188
.label_246:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_155
.label_173:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_138
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_138
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_138
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_239
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_244
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_220
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_253
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_253:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_140
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_140:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_151
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_151:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_236
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_236:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_155
.label_138:
	xor	eax, eax
	xor	r13d, r13d
.label_155:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_178
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_180
	jmp	.label_184
	nop	word ptr [rax + rax]
.label_178:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_184
.label_180:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_189
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_195
	nop	word ptr cs:[rax + rax]
.label_184:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_195:
	mov	bl, r15b
	je	.label_145
	jmp	.label_160
.label_189:
	mov	bl, r15b
.label_160:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_147
	cmp	r9d, 2
	jne	.label_202
	mov	al, r14b
	and	al, 1
	jne	.label_202
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_256
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_256:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_207
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_207:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_217
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_217:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_202:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_228
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_228:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_227
.label_229:
	xor	r13d, r13d
	jmp	.label_155
.label_233:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_234
	nop	word ptr [rax + rax]
.label_230:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_234:
	test	cl, cl
	je	.label_245
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_148
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_249
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_249:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_148
	nop	word ptr [rax + rax]
.label_245:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_147
	cmp	r9d, 2
	jne	.label_154
	mov	al, r14b
	and	al, 1
	jne	.label_154
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_158
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_158:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_163
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_163:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_174
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_174:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_154:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_186
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_186:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_191
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_191:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_153
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_153:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_148:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_145
	test	r14b, 1
	je	.label_203
	mov	bl, al
	and	bl, 1
	jne	.label_203
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_190
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_190:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_156
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_156:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_203:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_230
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_230
	nop	dword ptr [rax]
.label_145:
	test	r14b, 1
	je	.label_240
	and	al, 1
	jne	.label_240
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_192
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_192:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_208
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_208:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_240:
	mov	bl, r15b
.label_227:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_143
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_143:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_135
.label_237:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_146
.label_238:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_146:
	cmp	rcx, r10
	jae	.label_165
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_165:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_171
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_179
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_182
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_185
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_185:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_167
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_167:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_155
.label_171:
	xor	r13d, r13d
	jmp	.label_155
.label_179:
	xor	r13d, r13d
	jmp	.label_155
.label_182:
	xor	r13d, r13d
	jmp	.label_155
.label_196:
	xor	r13d, r13d
.label_193:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_188
.label_200:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_205
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_137:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_213
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_137
	xor	r13d, r13d
	jmp	.label_188
.label_205:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_188
.label_213:
	xor	r13d, r13d
	jmp	.label_188
.label_239:
	xor	r13d, r13d
	jmp	.label_155
.label_244:
	xor	r13d, r13d
	jmp	.label_155
	nop	dword ptr [rax]
.label_252:
	mov	r13, rdi
.label_134:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_231
	or	al, dl
	je	.label_187
.label_231:
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
	je	.label_136
	or	al, dl
	jne	.label_136
	test	r8b, 1
	jne	.label_255
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_136
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_139
.label_136:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_150
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_150
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_150
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_170:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_247
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_247:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_170
.label_150:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_177
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_177
.label_250:
	mov	r9d, 2
	jmp	.label_147
.label_209:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_147
.label_187:
	mov	rbp, r13
	jmp	.label_147
.label_149:
	mov	r9d, 2
.label_147:
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
.label_216:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_177:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_255:
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
	jmp	.label_216
.label_169:
	mov	r9d, 2
	jmp	.label_147
.label_219:
	mov	r9d, 2
	jmp	.label_147
.label_210:
	mov	r9d, 2
	jmp	.label_147
.label_220:
	mov	r9d, 5
	jmp	.label_147
.label_201:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4041d0
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
	#Procedure 0x4042a0
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
	je	.label_259
	mov	qword ptr [rax], rbx
.label_259:
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
	#Procedure 0x4043a0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_260
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_262:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_262
.label_260:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_263
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_264]], OFFSET FLAT:slot0
.label_263:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_261
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_261:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404440
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x404450

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
	js	.label_265
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_270
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_266
.label_270:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_269
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
	jne	.label_268
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_268:
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
.label_266:
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
	ja	.label_271
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_267
	mov	rdi, rbx
	call	free
.label_267:
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
.label_271:
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
.label_265:
	call	abort
.label_269:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404620
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404630
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
	#Procedure 0x404650
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
	#Procedure 0x404670

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
	je	.label_272
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
.label_272:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x4046e0
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
	je	.label_273
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
.label_273:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404750

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
	je	.label_274
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
.label_274:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4047c0
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
	je	.label_275
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
.label_275:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404830
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_276]]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_277]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_278]]
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
	#Procedure 0x4048a0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx,  qword ptr [word ptr [rip + label_276]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_277]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_278]]
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
	#Procedure 0x404910

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_276]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_277]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_278]]
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
	#Procedure 0x404970
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_276]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_277]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_278]]
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
	#Procedure 0x4049d0

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
	je	.label_279
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
.label_279:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x404a80
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_276]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_277]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_278]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_280
	test	rdx, rdx
	je	.label_280
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_280:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x404af0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_276]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_277]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_278]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_281
	test	rdx, rdx
	je	.label_281
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_281:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b60
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_276]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_277]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_278]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_282
	test	rsi, rsi
	je	.label_282
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_282:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404bd0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_276]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_277]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_278]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_283
	test	rsi, rsi
	je	.label_283
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
.label_283:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404c40
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c50
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
	#Procedure 0x404c70
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c90

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
	#Procedure 0x404cb0

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
	jne	.label_285
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_286
	cmp	ecx, 0x55
	jne	.label_284
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_284
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_284
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_284
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_284
	cmp	byte ptr [rax + 5], 0
	jne	.label_284
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_285
	mov	eax, OFFSET FLAT:.str.15
	jmp	.label_285
.label_286:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_284
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_284
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_284
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_284
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_284
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_284
	cmp	byte ptr [rax + 7], 0
	je	.label_287
.label_284:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_285:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_287:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_285
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_285
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404da0

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rdx, [rsp]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str_2
	call	__lxstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_288
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, rbx
.label_288:
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404df0

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
	je	.label_295
	mov	edx, OFFSET FLAT:.str_5
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_294
.label_295:
	mov	edx, OFFSET FLAT:.str.1_2
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_294:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_1
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
	mov	esi, OFFSET FLAT:.str.3_0
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_290
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_291]]
.label_914:
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
.label_290:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_289
.label_915:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_0
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
.label_916:
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
.label_917:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_296
.label_918:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_298
.label_919:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_293
.label_920:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_1
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
.label_293:
	mov	qword ptr [rsp + 0x10], rdi
.label_298:
	mov	qword ptr [rsp + 8], rsi
.label_296:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_297
.label_922:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_289:
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
	jmp	.label_292
.label_921:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_0
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
.label_292:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_297:
	call	__fprintf_chk
.label_913:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050e0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_299:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_299
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405110
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_302:
	cmp	r10d, 0x28
	ja	.label_300
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_301
	nop	word ptr cs:[rax + rax]
.label_300:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_301:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_303
	inc	r9
	cmp	r9, 0xa
	jb	.label_302
.label_303:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405170

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x128
	test	al, al
	je	.label_304
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_304:
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
.label_308:
	cmp	r8d, 0x28
	ja	.label_305
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_307
	nop	
.label_305:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_307:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_306
	inc	r9
	cmp	r9, 0xa
	jb	.label_308
.label_306:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405270
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_0
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
	mov	esi, OFFSET FLAT:.str.19_0
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
	#Procedure 0x4052f0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_309
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_310
	test	rax, rax
	je	.label_309
.label_310:
	pop	rbx
	ret	
.label_309:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405330

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_311
	test	rax, rax
	je	.label_312
.label_311:
	pop	rbx
	ret	
.label_312:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405350
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_313
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_314
	test	rbx, rbx
	jne	.label_314
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_314:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_315
	test	rax, rax
	je	.label_313
.label_315:
	pop	rbx
	ret	
.label_313:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053a0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_316
	test	rbx, rbx
	jne	.label_316
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_316:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_318
	test	rax, rax
	je	.label_317
.label_318:
	pop	rbx
	ret	
.label_317:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4053d0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_323
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_324
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_319
.label_323:
	test	rcx, rcx
	jne	.label_325
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_325:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_321
.label_319:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_320
	test	rbx, rbx
	jne	.label_320
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_320:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_322
	test	rax, rax
	je	.label_324
.label_322:
	pop	rbx
	ret	
.label_324:
	call	xalloc_die
.label_321:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405470
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_326
	test	rax, rax
	je	.label_327
.label_326:
	pop	rbx
	ret	
.label_327:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405490

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_330
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_332
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_329
	call	free
	xor	eax, eax
	jmp	.label_331
.label_330:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_328
	mov	qword ptr [rsi], rbx
.label_329:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_331
	test	rax, rax
	je	.label_328
.label_331:
	pop	rbx
	ret	
.label_328:
	call	xalloc_die
.label_332:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405500
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
	je	.label_334
	test	r14, r14
	je	.label_333
.label_334:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_333:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405540
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_335
	call	rpl_calloc
	test	rax, rax
	je	.label_335
	pop	rcx
	ret	
.label_335:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405570

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
	je	.label_336
	test	r15, r15
	je	.label_337
.label_336:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_337:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4055b0
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
	je	.label_339
	test	r15, r15
	je	.label_338
.label_339:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_338:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405600

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405630

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	test	rax, rax
	je	.label_341
	pop	rcx
	ret	
.label_341:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_340
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_4
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xfts_open
	call	__assert_fail
.label_340:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405670

	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:
	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	je	.label_342
	cmp	ecx, 0x11
	jne	.label_343
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_342:
	ret	
.label_343:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405690

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_344
	test	rsi, rsi
	mov	ecx, 1
	je	.label_345
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_345
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_344:
	mov	ecx, 1
.label_345:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4056e0

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
	jae	.label_348
	mov	eax, r15d
	and	eax, 0x204
	cmp	eax, 0x204
	je	.label_348
	test	r15b, 0x12
	je	.label_348
	mov	edi, 0x80
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_347
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
	je	.label_357
	mov	r14, rbx
	lea	rbx, [r12 + 8]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_369:
	call	strlen
	cmp	rax, rbp
	cmova	rbp, rax
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_369
	inc	rbp
	mov	rbx, r14
.label_357:
	cmp	rbp, 0x1000
	mov	esi, 0x1000
	cmova	rsi, rbp
	add	rsi, 0x100
	mov	qword ptr [rbx + 0x30], rsi
	xor	edi, edi
	call	realloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_349
	mov	r14d, r15d
	mov	qword ptr [rbx + 0x20], rbp
	mov	qword ptr [rsp + 0x18], rbx
	mov	r15, qword ptr [r12]
	mov	qword ptr [rsp + 0x30], r12
	xor	r12d, r12d
	test	r15, r15
	je	.label_378
	mov	edi, 0x110
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_351
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
.label_378:
	mov	byte ptr [rsp + 0x17], 1
	test	r13, r13
	je	.label_365
	mov	rax, qword ptr [rsp + 0x18]
	mov	al, byte ptr [rax + 0x49]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0x17], al
.label_365:
	xor	ebp, ebp
	test	r15, r15
	je	.label_363
	mov	qword ptr [rsp + 8], r12
	mov	ebx, r14d
	and	ebx, 0x800
	mov	dword ptr [rsp + 4], ebx
	xor	ebp, ebp
	xor	r12d, r12d
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_356:
	mov	qword ptr [rsp + 0x28], rbp
	mov	rdi, r15
	call	strlen
	mov	rbp, rax
	test	ebx, ebx
	jne	.label_364
	cmp	rbp, 3
	jb	.label_375
	cmp	rbp, 2
	jb	.label_353
	movzx	eax, byte ptr [rbp + r15 - 1]
	cmp	eax, 0x2f
	jne	.label_358
	mov	qword ptr [rsp + 0x20], r12
.label_379:
	movzx	eax, byte ptr [r15 + rbp - 2]
	cmp	eax, 0x2f
	jne	.label_350
	dec	rbp
	cmp	rbp, 1
	ja	.label_379
	jmp	.label_350
.label_364:
	mov	qword ptr [rsp + 0x20], r12
	jmp	.label_350
.label_375:
	mov	qword ptr [rsp + 0x20], r12
	jmp	.label_350
.label_353:
	mov	qword ptr [rsp + 0x20], r12
	jmp	.label_350
.label_358:
	mov	qword ptr [rsp + 0x20], r12
.label_350:
	mov	rbx, r13
	lea	rdi, [rbp + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_355
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
	jne	.label_361
	mov	word ptr [r12 + 0x70], 0xb
	mov	qword ptr [r12 + 0xa8], 2
	jmp	.label_374
	nop	dword ptr [rax + rax]
.label_361:
	xor	edx, edx
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
.label_374:
	mov	r13, rbx
	test	r13, r13
	je	.label_346
	mov	rbp, r12
	mov	qword ptr [r12 + 0x10], r15
	mov	r12, qword ptr [rsp + 0x20]
	jmp	.label_354
.label_346:
	mov	qword ptr [r12 + 0x10], 0
	test	r15, r15
	mov	rbp, r12
	je	.label_354
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + 0x10], r12
	mov	rbp, r15
.label_354:
	inc	r14
	mov	rax, qword ptr [rsp + 0x30]
	mov	r15, qword ptr [rax + 8]
	add	rax, 8
	mov	qword ptr [rsp + 0x30], rax
	test	r15, r15
	mov	ebx, dword ptr [rsp + 4]
	jne	.label_356
	test	r13, r13
	mov	rdi, qword ptr [rsp + 0x18]
	je	.label_360
	cmp	r14, 2
	mov	r12, qword ptr [rsp + 8]
	jb	.label_363
	mov	rsi, rbp
	mov	rdx, r14
	call	fts_sort
	mov	rbp, rax
	jmp	.label_363
.label_348:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
.label_347:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_349:
	mov	rdi, qword ptr [rbx + 0x20]
	jmp	.label_368
.label_355:
	mov	rbp, qword ptr [rsp + 0x28]
	mov	r12, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rsp + 0x18]
	jmp	.label_362
.label_351:
	mov	rbx, qword ptr [rsp + 0x18]
	jmp	.label_370
.label_360:
	mov	r12, qword ptr [rsp + 8]
.label_363:
	mov	edi, 0x110
	call	malloc
	test	rax, rax
	je	.label_373
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
	je	.label_376
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	jne	.label_359
	jmp	.label_362
.label_373:
	mov	rbx, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx], 0
	jmp	.label_362
.label_376:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	je	.label_362
	mov	rdi, rax
	call	cycle_check_init
.label_359:
	mov	eax, dword ptr [rbx + 0x48]
	test	ax, 0x204
	jne	.label_352
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_367
	mov	edi, OFFSET FLAT:.str_7
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_371
.label_362:
	mov	r14, rbx
	test	rbp, rbp
	je	.label_372
	nop	
.label_377:
	mov	rbx, qword ptr [rbp + 0x10]
	mov	rdi, qword ptr [rbp + 0x18]
	test	rdi, rdi
	je	.label_366
	call	closedir
.label_366:
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	mov	rbp, rbx
	jne	.label_377
.label_372:
	mov	rdi, r12
	call	free
	mov	rbx, r14
	mov	rbp, qword ptr [rbx + 0x20]
.label_370:
	mov	rdi, rbp
.label_368:
	call	free
	mov	rdi, rbx
	call	free
	xor	eax, eax
	jmp	.label_347
.label_367:
	mov	edi, dword ptr [rbx + 0x2c]
	mov	esi, OFFSET FLAT:.str_7
	xor	eax, eax
	call	openat_safer
.label_371:
	mov	dword ptr [rbx + 0x28], eax
	test	eax, eax
	jns	.label_352
	or	byte ptr [rbx + 0x48], 4
.label_352:
	mov	rdi, rbx
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	mov	rax, rbx
	jmp	.label_347
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c40

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
	jne	.label_380
	test	al, 1
	je	.label_380
	mov	dl, 1
.label_380:
	lea	rbx, [r14 + 0x78]
	test	dl, dl
	jne	.label_387
	and	eax, 2
	jne	.label_387
	mov	esi, dword ptr [r15 + 0x2c]
	mov	rdx, qword ptr [r14 + 0x30]
	mov	edi, 1
	mov	r8d, 0x100
	mov	rcx, rbx
	call	__fxstatat
	test	eax, eax
	je	.label_382
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_385
.label_387:
	mov	rsi, qword ptr [r14 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__xstat
	test	eax, eax
	je	.label_382
	call	__errno_location
	mov	r15, rax
	mov	eax, dword ptr [r15]
	cmp	eax, 2
	jne	.label_385
	mov	rsi, qword ptr [r14 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__lxstat
	test	eax, eax
	je	.label_384
	mov	eax, dword ptr [r15]
.label_385:
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
.label_383:
	movzx	eax, ax
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_382:
	mov	ecx, 0xf000
	and	ecx, dword ptr [r14 + 0x90]
	mov	ax, 0xc
	cmp	ecx, 0xa000
	je	.label_383
	cmp	ecx, 0x8000
	je	.label_388
	cmp	ecx, 0x4000
	jne	.label_389
	mov	rax, qword ptr [r14 + 0x88]
	mov	rcx, -1
	cmp	rax, 2
	jb	.label_381
	cmp	qword ptr [r14 + 0x58], 0
	jle	.label_381
	mov	ecx, dword ptr [r15 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_381:
	mov	qword ptr [r14 + 0x68], rcx
	mov	ecx, dword ptr [r14 + 0x108]
	mov	ax, 1
	movzx	edx, cl
	cmp	edx, 0x2e
	jne	.label_383
	mov	edx, ecx
	shr	edx, 8
	test	dl, dl
	je	.label_386
	movzx	edx, dl
	cmp	edx, 0x2e
	jne	.label_383
	test	ecx, 0xff0000
	jne	.label_383
.label_386:
	mov	ax, 1
	cmp	qword ptr [r14 + 0x58], 0
	je	.label_383
	mov	ax, 5
	jmp	.label_383
.label_388:
	mov	ax, 8
	jmp	.label_383
.label_389:
	mov	ax, 3
	jmp	.label_383
.label_384:
	mov	dword ptr [r15], 0
	mov	ax, 0xd
	jmp	.label_383
	nop	
	.section	.text
	.align	16
	#Procedure 0x405de0

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
	jae	.label_396
	lea	rsi, [r14 + 0x28]
	mov	qword ptr [r12 + 0x38], rsi
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_397
	lea	r13, [r12 + 0x10]
	mov	rdi, qword ptr [r13]
	shl	rsi, 3
	call	realloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_397
	mov	qword ptr [r13], rdi
	jmp	.label_398
.label_396:
	mov	rdi, qword ptr [r12 + 0x10]
	add	r12, 0x10
	mov	r13, r12
.label_398:
	test	rbx, rbx
	je	.label_391
	nop	dword ptr [rax]
.label_393:
	mov	qword ptr [rdi], rbx
	add	rdi, 8
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	jne	.label_393
	mov	rdi, qword ptr [r13]
.label_391:
	mov	edx, 8
	mov	rsi, r14
	mov	rcx, r15
	call	qsort
	mov	r9, qword ptr [r13]
	mov	rbx, qword ptr [r9]
	cmp	r14, 1
	mov	rcx, rbx
	je	.label_399
	mov	rcx, qword ptr [r9 + 8]
	mov	qword ptr [rbx + 0x10], rcx
	mov	rcx, r14
	add	rcx, -2
	je	.label_392
	lea	rdx, [r9 + 8]
	lea	edi, [r14 + 2]
	lea	r8, [r14 - 3]
	test	dil, 3
	je	.label_394
	lea	edi, [r14 + 2]
	and	edi, 3
	neg	rdi
	nop	dword ptr [rax]
.label_390:
	mov	rsi, qword ptr [rdx]
	mov	rax, qword ptr [rdx + 8]
	lea	rdx, [rdx + 8]
	mov	qword ptr [rsi + 0x10], rax
	dec	rcx
	inc	rdi
	jne	.label_390
.label_394:
	cmp	r8, 3
	jb	.label_392
	nop	dword ptr [rax]
.label_400:
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
	jne	.label_400
.label_392:
	mov	rcx, qword ptr [r9 + r14*8 - 8]
.label_399:
	mov	qword ptr [rcx + 0x10], 0
	jmp	.label_395
.label_397:
	mov	rdi, qword ptr [r12 + 0x10]
	call	free
	mov	qword ptr [r12 + 0x10], 0
	mov	qword ptr [r12 + 0x38], 0
.label_395:
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
	#Procedure 0x405f60

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_415
	cmp	qword ptr [rdi + 0x58], 0
	js	.label_405
	nop	word ptr cs:[rax + rax]
.label_416:
	mov	rbx, qword ptr [rdi + 0x10]
	test	rbx, rbx
	jne	.label_401
	mov	rbx, qword ptr [rdi + 8]
.label_401:
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	mov	rdi, rbx
	jns	.label_416
	jmp	.label_406
.label_405:
	mov	rbx, rdi
.label_406:
	mov	rdi, rbx
	call	free
.label_415:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_409
	nop	word ptr cs:[rax + rax]
.label_413:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_411
	call	closedir
.label_411:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_413
.label_409:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_418
	xor	ebp, ebp
	test	al, 4
	jne	.label_408
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebp, ebp
	test	eax, eax
	je	.label_403
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_403:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	test	ebp, ebp
	je	.label_407
	jmp	.label_408
.label_418:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebp, ebp
	test	edi, edi
	js	.label_408
	call	close
.label_407:
	test	eax, eax
	je	.label_408
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_408:
	lea	rbx, [r14 + 0x60]
	jmp	.label_412
	nop	dword ptr [rax + rax]
.label_404:
	mov	edi, eax
	call	close
.label_412:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_414
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_404
	jmp	.label_412
.label_414:
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_417
	call	hash_free
.label_417:
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_419
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_402
	call	hash_free
	jmp	.label_402
.label_419:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_402:
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	ebp, ebp
	je	.label_410
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_410:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4060d0

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
	je	.label_431
	mov	eax, dword ptr [r14 + 0x48]
	xor	r15d, r15d
	test	ah, 0x20
	jne	.label_431
	movzx	ecx, word ptr [r12 + 0x74]
	mov	word ptr [r12 + 0x74], 3
	cmp	ecx, 1
	je	.label_476
	movzx	edx, cx
	cmp	edx, 2
	jne	.label_427
	mov	ecx, dword ptr [r12 + 0x70]
	mov	esi, ecx
	and	esi, 0xfffe
	cmp	esi, 0xc
	jne	.label_430
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_443
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_441
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_447
	mov	edi, OFFSET FLAT:.str_7
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_454
.label_476:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	mov	r15, r12
	jmp	.label_431
.label_427:
	lea	r13, [r12 + 0x70]
	mov	ecx, dword ptr [r12 + 0x70]
	jmp	.label_461
.label_430:
	lea	r13, [r12 + 0x70]
.label_461:
	movzx	esi, cx
	cmp	esi, 1
	jne	.label_444
	cmp	edx, 4
	je	.label_464
	test	al, 0x40
	je	.label_468
	mov	rdx, qword ptr [r12 + 0x78]
	cmp	rdx, qword ptr [r14 + 0x18]
	jne	.label_464
.label_468:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_471
	test	ah, 0x10
	jne	.label_473
	mov	rcx, qword ptr [r12 + 0x30]
	mov	edx, 0xffffffff
	mov	rdi, r14
	mov	rsi, r12
	call	fts_safe_changedir
	test	eax, eax
	je	.label_421
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	or	byte ptr [r12 + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_426
	nop	word ptr cs:[rax + rax]
.label_444:
	mov	r15, qword ptr [r12 + 0x10]
	test	r15, r15
	je	.label_436
	mov	qword ptr [r14], r15
	mov	rdi, r12
	call	free
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_440
	movzx	eax, word ptr [r15 + 0x74]
	cmp	eax, 4
	mov	r12, r15
	je	.label_444
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_432
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_438
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_438
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_433
	mov	edi, OFFSET FLAT:.str_7
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_453
.label_470:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_426:
	test	rax, rax
	jne	.label_470
	jmp	.label_421
.label_464:
	test	ecx, 0x20000
	je	.label_472
	mov	edi, dword ptr [r12 + 0x44]
	call	close
.label_472:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_477
	nop	dword ptr [rax]
.label_475:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_420
	call	closedir
.label_420:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_475
	mov	qword ptr [r14 + 8], 0
.label_477:
	mov	word ptr [r12 + 0x70], 6
.label_446:
	mov	rdi, r14
	mov	rsi, r12
	call	leave_dir
	mov	r15, r12
	jmp	.label_431
.label_436:
	mov	r15, qword ptr [r12 + 8]
	cmp	qword ptr [r15 + 0x18], 0
	je	.label_439
	mov	qword ptr [r14], r15
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	r15, rax
	test	r15, r15
	je	.label_449
	mov	rdi, r12
	call	free
	jmp	.label_432
.label_443:
	mov	r15, r12
	jmp	.label_437
.label_440:
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	mov	eax, dword ptr [r14 + 0x48]
	je	.label_459
	or	eax, 0x2000
	mov	dword ptr [r14 + 0x48], eax
	xor	r15d, r15d
	jmp	.label_431
.label_441:
	mov	r15, r12
	jmp	.label_437
.label_459:
	test	ax, 0x102
	je	.label_465
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_460
	call	hash_free
	jmp	.label_460
.label_473:
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	nop	word ptr cs:[rax + rax]
.label_423:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_450
	call	closedir
.label_450:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_423
	mov	qword ptr [r14 + 8], 0
.label_471:
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_434
.label_421:
	mov	r15, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], 0
	jmp	.label_432
.label_434:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_431
	cmp	dword ptr [r12 + 0x40], 0
	je	.label_446
	movzx	eax, word ptr [r13]
	cmp	eax, 4
	je	.label_446
	mov	word ptr [r13], 7
	jmp	.label_446
.label_447:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:.str_7
	xor	eax, eax
	call	openat_safer
.label_454:
	mov	dword ptr [r12 + 0x44], eax
	test	eax, eax
	js	.label_455
	or	byte ptr [r12 + 0x72], 2
	mov	r15, r12
	jmp	.label_437
.label_449:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_431
	mov	r15, qword ptr [r12 + 8]
.label_439:
	mov	qword ptr [r14], r15
	mov	rdi, r12
	call	free
	cmp	qword ptr [r15 + 0x58], -1
	je	.label_466
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	je	.label_429
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_469
	movzx	eax, word ptr [r15 + 0x72]
	test	al, 2
	jne	.label_474
	test	al, 1
	jne	.label_435
	mov	rsi, qword ptr [r15 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_2
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_462
.label_466:
	mov	rdi, r15
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	xor	r15d, r15d
	jmp	.label_431
.label_455:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	mov	word ptr [r12 + 0x70], 7
	mov	r15, r12
	jmp	.label_437
.label_465:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_460:
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
	je	.label_456
	cmp	rbx, r12
	jne	.label_457
	cmp	byte ptr [r15 + 0x109], 0
	je	.label_456
.label_457:
	inc	rbx
	mov	rdi, rbx
	call	strlen
	mov	r13, rax
	lea	rdx, [r13 + 1]
	mov	rdi, r12
	mov	rsi, rbx
	call	memmove
	mov	qword ptr [r15 + 0x60], r13
.label_456:
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [r15 + 0x38], rax
	mov	qword ptr [r15 + 0x30], rax
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_458
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [r14 + 0x58], rax
	jmp	.label_437
.label_458:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [r14 + 0x58], rax
	test	rax, rax
	je	.label_437
	mov	rdi, rax
	call	cycle_check_init
	jmp	.label_437
.label_469:
	mov	rdi, r14
	call	restore_initial_cwd
.label_462:
	test	eax, eax
	je	.label_435
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_435
.label_474:
	mov	eax, dword ptr [r14 + 0x48]
	lea	rbx, [r15 + 0x44]
	test	al, 4
	jne	.label_452
	test	ah, 2
	mov	ebp, dword ptr [r15 + 0x44]
	jne	.label_445
	mov	edi, ebp
	call	fchdir
	test	eax, eax
	je	.label_452
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_452
.label_433:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:.str_7
	xor	eax, eax
	call	openat_safer
.label_453:
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_451
	or	byte ptr [r15 + 0x72], 2
	jmp	.label_438
.label_451:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
.label_438:
	mov	word ptr [r15 + 0x74], 3
.label_432:
	mov	rax, qword ptr [r14 + 0x20]
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rcx + 0x48]
	movzx	edx, byte ptr [rdx + rcx - 1]
	cmp	edx, 0x2f
	jne	.label_467
	dec	rcx
.label_467:
	lea	rdi, [rax + rcx + 1]
	mov	byte ptr [rax + rcx], 0x2f
	lea	rsi, [r15 + 0x108]
	mov	rdx, qword ptr [r15 + 0x60]
	inc	rdx
	call	memmove
.label_437:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	jne	.label_448
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_425
	cmp	rax, 2
	jne	.label_429
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_428
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_428
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	filesystem_type
	cmp	rax, 0x52654973
	je	.label_425
	cmp	rax, 0x58465342
	je	.label_425
.label_428:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	cmp	ecx, 0x4000
	jne	.label_448
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_425
	mov	rax, qword ptr [rbx + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_425
	dec	rax
	mov	qword ptr [rbx + 0x68], rax
.label_425:
	movzx	eax, word ptr [r15 + 0x70]
.label_448:
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_431
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_463
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_463:
	mov	rdi, r14
	mov	rsi, r15
	call	enter_dir
	test	al, al
	jne	.label_431
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r15d, r15d
	jmp	.label_431
.label_445:
	mov	esi, dword ptr [r14 + 0x2c]
	cmp	esi, ebp
	jne	.label_424
	cmp	esi, -0x64
	jne	.label_429
.label_424:
	lea	rdi, [r14 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_442
	mov	edi, eax
	call	close
.label_442:
	mov	dword ptr [r14 + 0x2c], ebp
.label_452:
	mov	edi, dword ptr [rbx]
	call	close
.label_435:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	je	.label_422
	mov	eax, dword ptr [r15 + 0x40]
	cmp	eax, 0
	setne	cl
	movzx	ecx, cl
	or	ecx, 6
	cmp	eax, 0
	mov	word ptr [r15 + 0x70], cx
	jne	.label_422
	mov	rdi, r14
	mov	rsi, r15
	call	leave_dir
.label_422:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	r15, rax
.label_431:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_429:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406860

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_478
	movups	xmm0, xmmword ptr [rsi + 0x78]
	movaps	xmmword ptr [rsp], xmm0
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_480
	mov	rdi, rax
	call	free
	add	rsp, 0x18
	ret	
.label_478:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_479
	cmp	qword ptr [rax + 0x58], 0
	js	.label_479
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_480
	mov	rdx, qword ptr [rcx]
	cmp	rdx, qword ptr [rsi + 0x80]
	jne	.label_479
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	jne	.label_479
	mov	rdx, qword ptr [rax + 0x78]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	qword ptr [rcx], rax
.label_479:
	add	rsp, 0x18
	ret	
.label_480:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4068f0

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
	je	.label_499
	movzx	edx, byte ptr [rbx]
	mov	ecx, 0x2e
	mov	eax, 0x2e
	sub	eax, edx
	jne	.label_484
	movzx	eax, byte ptr [rbx + 1]
	sub	ecx, eax
	mov	eax, ecx
	jne	.label_484
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_484:
	test	eax, eax
	sete	r14b
	jmp	.label_487
.label_499:
	xor	r14d, r14d
.label_487:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 4
	jne	.label_492
	test	r13d, r13d
	jns	.label_493
	mov	cl, r14b
	xor	cl, 1
	jne	.label_494
	mov	qword ptr [rsp], rsi
	and	eax, 0x200
	je	.label_486
	lea	rbp, [r15 + 0x60]
	mov	rdi, rbp
	call	i_ring_empty
	test	al, al
	jne	.label_486
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r14b, 1
	jmp	.label_486
.label_492:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_482
	and	eax, 0x200
	je	.label_482
	mov	edi, r13d
	call	close
	jmp	.label_482
.label_493:
	mov	qword ptr [rsp], rsi
	jmp	.label_486
.label_494:
	mov	qword ptr [rsp], rsi
.label_486:
	test	r13d, r13d
	mov	r12d, r13d
	jns	.label_488
	mov	eax, dword ptr [r15 + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_491
	xor	eax, eax
	mov	rdi, rbx
	mov	esi, edx
	call	open_safer
	jmp	.label_496
.label_491:
	mov	edi, dword ptr [r15 + 0x2c]
	xor	eax, eax
	mov	rsi, rbx
	call	openat_safer
.label_496:
	mov	r12d, eax
	mov	ebp, 0xffffffff
	test	r12d, r12d
	js	.label_482
.label_488:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 2
	jne	.label_502
	test	rbx, rbx
	je	.label_483
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x2e
	jne	.label_483
	movzx	ecx, byte ptr [rbx + 1]
	cmp	ecx, 0x2e
	jne	.label_483
	cmp	byte ptr [rbx + 2], 0
	jne	.label_483
.label_502:
	lea	rdx, [rsp + 8]
	mov	edi, 1
	mov	esi, r12d
	call	__fxstat
	test	eax, eax
	jne	.label_489
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_490
	mov	rax, qword ptr [rcx + 0x80]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_490
	mov	eax, dword ptr [r15 + 0x48]
.label_483:
	test	ah, 2
	jne	.label_495
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	jmp	.label_497
.label_495:
	mov	esi, dword ptr [r15 + 0x2c]
	cmp	esi, r12d
	jne	.label_498
	cmp	esi, -0x64
	jne	.label_500
.label_498:
	test	r14b, r14b
	je	.label_501
	test	al, 4
	jne	.label_481
	test	esi, esi
	js	.label_481
	mov	edi, esi
	jmp	.label_485
.label_490:
	call	__errno_location
	mov	dword ptr [rax], 2
.label_489:
	mov	ebp, 0xffffffff
.label_497:
	test	r13d, r13d
	jns	.label_482
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_482
.label_501:
	lea	rdi, [r15 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_481
	mov	edi, eax
.label_485:
	call	close
.label_481:
	mov	dword ptr [r15 + 0x2c], r12d
	xor	ebp, ebp
.label_482:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_500:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406af0

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
	je	.label_566
	mov	qword ptr [rsp + 0x48], rdi
	call	dirfd
	mov	dword ptr [rsp + 0xa4], eax
	test	eax, eax
	js	.label_547
	mov	qword ptr [rsp + 0x40], -1
	cmp	qword ptr [r13 + 0x40], 0
	jne	.label_550
	mov	eax, 0x186a0
	mov	qword ptr [rsp + 0x40], rax
.label_550:
	lea	rax, [r13 + 0x40]
	mov	qword ptr [rsp + 0x58], rax
	lea	rax, [r13 + 0x48]
	mov	qword ptr [rsp + 0x90], rax
	mov	al, 1
	mov	dword ptr [rsp + 0x1c], eax
	jmp	.label_576
.label_566:
	mov	qword ptr [rsp + 0x48], rdi
	mov	eax, dword ptr [r13 + 0x48]
	mov	ecx, eax
	and	ecx, 0x204
	mov	edi, 0xffffff9c
	cmp	ecx, 0x200
	jne	.label_560
	mov	edi, dword ptr [r13 + 0x2c]
.label_560:
	mov	rsi, qword ptr [r12 + 0x30]
	xor	edx, edx
	test	al, 0x10
	je	.label_562
	test	al, 1
	je	.label_565
	cmp	qword ptr [r12 + 0x58], 0
	je	.label_562
.label_565:
	mov	edx, 0x20000
.label_562:
	lea	rcx, [rsp + 0xa4]
	call	opendirat
	mov	qword ptr [r12 + 0x18], rax
	test	rax, rax
	je	.label_573
	lea	rcx, [r13 + 0x48]
	movzx	eax, word ptr [r12 + 0x70]
	cmp	eax, 0xb
	jne	.label_575
	mov	qword ptr [rsp + 0x90], rcx
	xor	edx, edx
	mov	rdi, r13
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	jmp	.label_543
.label_547:
	mov	rdi, qword ptr [r12 + 0x18]
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
.label_573:
	xor	ebx, ebx
	cmp	r15d, 3
	jne	.label_503
	mov	word ptr [r12 + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	xor	ebx, ebx
	jmp	.label_503
.label_575:
	test	byte ptr [rcx + 1], 1
	mov	qword ptr [rsp + 0x90], rcx
	je	.label_543
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
	je	.label_515
.label_543:
	mov	qword ptr [rsp + 0x40], -1
	cmp	qword ptr [r13 + 0x40], 0
	jne	.label_516
	mov	eax, 0x186a0
	mov	qword ptr [rsp + 0x40], rax
.label_516:
	lea	rax, [r13 + 0x40]
	mov	qword ptr [rsp + 0x58], rax
	cmp	r15d, 2
	je	.label_521
	mov	rax, qword ptr [rsp + 0x90]
	mov	eax, dword ptr [rax]
	and	eax, 0x38
	cmp	eax, 0x18
	jne	.label_523
	cmp	qword ptr [r12 + 0x88], 2
	jne	.label_523
	mov	esi, dword ptr [rsp + 0xa4]
	mov	rdi, r12
	call	filesystem_type
	cmp	rax, 0x9f9f
	jle	.label_512
	cmp	rax, 0x9fa0
	je	.label_523
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	je	.label_523
	cmp	rax, 0x5346414f
	je	.label_523
	jmp	.label_521
.label_515:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	ebx, ebx
	jmp	.label_503
.label_512:
	test	rax, rax
	je	.label_523
	cmp	rax, 0x6969
	jne	.label_521
.label_523:
	cmp	r15d, 3
	sete	bl
	mov	r14b, 1
	jmp	.label_540
.label_521:
	cmp	r15d, 3
	sete	bl
	mov	r14d, 0
	jne	.label_542
.label_540:
	mov	dword ptr [rsp + 0x24], r15d
	mov	rax, qword ptr [rsp + 0x90]
	test	byte ptr [rax + 1], 2
	mov	ebp, dword ptr [rsp + 0xa4]
	je	.label_545
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebp
	call	rpl_fcntl
	mov	ebp, eax
	mov	dword ptr [rsp + 0xa4], ebp
.label_545:
	test	ebp, ebp
	js	.label_554
	xor	ecx, ecx
	mov	rdi, r13
	mov	rsi, r12
	mov	edx, ebp
	call	fts_safe_changedir
	test	eax, eax
	je	.label_557
.label_554:
	and	bl, r14b
	movzx	eax, bl
	cmp	eax, 1
	jne	.label_558
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
.label_558:
	or	byte ptr [r12 + 0x72], 1
	mov	rdi, qword ptr [r12 + 0x18]
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
	mov	rax, qword ptr [rsp + 0x90]
	mov	eax, dword ptr [rax]
	test	ah, 2
	je	.label_532
	mov	edi, dword ptr [rsp + 0xa4]
	test	edi, edi
	js	.label_532
	call	close
.label_532:
	mov	qword ptr [r12 + 0x18], 0
	mov	dword ptr [rsp + 0x1c], 0
	jmp	.label_572
.label_542:
	mov	dword ptr [rsp + 0x1c], 0
	jmp	.label_576
.label_557:
	mov	al, 1
	mov	dword ptr [rsp + 0x1c], eax
.label_572:
	mov	r15d, dword ptr [rsp + 0x24]
.label_576:
	mov	rax, qword ptr [r12 + 0x38]
	mov	rdx, qword ptr [r12 + 0x48]
	movzx	eax, byte ptr [rax + rdx - 1]
	cmp	eax, 0x2f
	jne	.label_578
	dec	rdx
.label_578:
	mov	dword ptr [rsp + 0x24], r15d
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	mov	rax, qword ptr [rsp + 0x90]
	test	byte ptr [rax], 4
	je	.label_582
	mov	rax, qword ptr [r13 + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x68], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_582:
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
.label_505:
	mov	rbx, qword ptr [r12 + 0x18]
	test	rbx, rbx
	je	.label_506
	mov	qword ptr [rsp + 0x50], rax
	mov	qword ptr [rsp + 0x88], rbp
	call	__errno_location
	mov	qword ptr [rsp + 0x98], rax
	mov	rbp, qword ptr [rsp + 0x90]
	nop	dword ptr [rax]
.label_538:
	mov	rax, qword ptr [rsp + 0x98]
	mov	dword ptr [rax], 0
	mov	rdi, rbx
	call	readdir
	mov	r14, rax
	test	r14, r14
	je	.label_528
	mov	r13, r14
	add	r13, 0x13
	test	byte ptr [rbp], 0x20
	jne	.label_530
	movzx	eax, byte ptr [r13]
	cmp	eax, 0x2e
	jne	.label_530
	movzx	eax, byte ptr [r14 + 0x14]
	cmp	eax, 0x2e
	je	.label_533
	test	al, al
	je	.label_535
	jmp	.label_530
	nop	dword ptr [rax]
.label_533:
	cmp	byte ptr [r14 + 0x15], 0
	jne	.label_530
.label_535:
	mov	rbx, qword ptr [r12 + 0x18]
	test	rbx, rbx
	jne	.label_538
	jmp	.label_541
	nop	word ptr cs:[rax + rax]
.label_530:
	mov	rdi, r13
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_548
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
	jae	.label_555
	mov	rdx, qword ptr [rsp + 0x80]
	jmp	.label_568
	nop	word ptr cs:[rax + rax]
.label_555:
	mov	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rax + rbx]
	add	rsi, qword ptr [rbp + 0x30]
	jb	.label_574
	mov	qword ptr [rbp + 0x30], rsi
	mov	rdi, r13
	call	realloc
	test	rax, rax
	je	.label_579
	mov	qword ptr [rbp + 0x20], rax
	cmp	r13, rax
	je	.label_580
	mov	rdx, qword ptr [rsp + 0x80]
	add	rax, rdx
	mov	rcx, qword ptr [rsp + 0x90]
	test	byte ptr [rcx], 4
	mov	rcx, qword ptr [rsp + 0x68]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x68], rcx
	mov	al, 1
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_581
.label_580:
	mov	rdx, qword ptr [rsp + 0x80]
.label_581:
	mov	rax, qword ptr [rbp + 0x30]
	sub	rax, rdx
.label_568:
	add	rbx, rdx
	jb	.label_509
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
	jne	.label_510
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_519
	nop	word ptr cs:[rax + rax]
.label_510:
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x68]
	mov	rsi, qword ptr [rsp + 0x38]
	call	memmove
.label_519:
	mov	rax, qword ptr [rsp + 0x90]
	mov	edx, dword ptr [rax]
	mov	rax, qword ptr [rsp + 0x58]
	cmp	qword ptr [rax], 0
	je	.label_526
	mov	eax, edx
	and	eax, 0x400
	jne	.label_526
	xor	edx, edx
	mov	rdi, r13
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	mov	rbp, qword ptr [rsp + 0x88]
	jmp	.label_534
	nop	dword ptr [rax]
.label_526:
	and	edx, 0x18
	movzx	ecx, byte ptr [r14 + 0x12]
	xor	eax, eax
	cmp	edx, 0x18
	mov	edx, 0
	jne	.label_570
	cmp	ecx, 4
	setne	bl
	test	cl, cl
	setne	dl
	and	dl, bl
.label_570:
	mov	word ptr [r12 + 0x70], 0xb
	lea	esi, [rcx - 1]
	cmp	esi, 0xb
	mov	rbp, qword ptr [rsp + 0x88]
	ja	.label_517
	mov	eax,  dword ptr [dword ptr [+ (rcx * 4) + label_507]]
.label_517:
	mov	dword ptr [r12 + 0x90], eax
	cmp	dl, 1
	mov	eax, 1
	adc	rax, 0
	mov	qword ptr [r12 + 0xa8], rax
.label_534:
	mov	qword ptr [r12 + 0x10], 0
	test	r15, r15
	mov	rax, r12
	je	.label_553
	mov	rax, qword ptr [rsp + 0x50]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, r15
.label_553:
	mov	r15, rax
	cmp	rbp, 0x2710
	jne	.label_518
	mov	rax, qword ptr [rsp + 0x58]
	cmp	qword ptr [rax], 0
	jne	.label_518
	mov	esi, dword ptr [rsp + 0xa4]
	mov	rdi, qword ptr [rsp + 0x60]
	call	filesystem_type
	mov	dword ptr [rsp + 0x20], 0
	cmp	rax, 0x6969
	je	.label_518
	cmp	rax, 0x1021994
	je	.label_518
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	je	.label_518
	mov	al, 1
	mov	dword ptr [rsp + 0x20], eax
	nop	dword ptr [rax]
.label_518:
	inc	rbp
	cmp	qword ptr [rsp + 0x40], rbp
	mov	rax, r12
	mov	r12, qword ptr [rsp + 0x60]
	ja	.label_505
	jmp	.label_506
.label_528:
	mov	rax, qword ptr [rsp + 0x98]
	mov	eax, dword ptr [rax]
	test	eax, eax
	mov	rbp, qword ptr [rsp + 0x88]
	je	.label_536
	mov	dword ptr [r12 + 0x40], eax
	mov	rax, qword ptr [rsp + 0x48]
	or	rax, rbp
	mov	ax, 7
	mov	cx, 4
	cmovne	cx, ax
	mov	word ptr [r12 + 0x70], cx
.label_536:
	mov	rdi, qword ptr [r12 + 0x18]
	test	rdi, rdi
	mov	r13, qword ptr [rsp + 0x78]
	je	.label_506
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
	jmp	.label_506
.label_541:
	mov	r13, qword ptr [rsp + 0x78]
	mov	rbp, qword ptr [rsp + 0x88]
.label_506:
	mov	rax, qword ptr [rsp + 0x30]
	test	al, 1
	je	.label_511
	mov	rcx, qword ptr [r13 + 8]
	mov	rax, qword ptr [r13 + 0x20]
	jmp	.label_567
.label_514:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_567:
	test	rcx, rcx
	je	.label_513
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_514
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_514
.label_513:
	cmp	qword ptr [r15 + 0x58], 0
	js	.label_511
	mov	rcx, r15
	nop	word ptr cs:[rax + rax]
.label_529:
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_524
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
.label_524:
	mov	qword ptr [rcx + 0x38], rax
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_527
	mov	rdx, qword ptr [rcx + 8]
.label_527:
	cmp	qword ptr [rdx + 0x58], 0
	mov	rcx, rdx
	jns	.label_529
.label_511:
	mov	rax, qword ptr [rsp + 0x90]
	test	byte ptr [rax], 4
	je	.label_531
	mov	rax, qword ptr [rsp + 0x68]
	mov	rcx, rax
	lea	rax, [rcx - 1]
	mov	rdx, qword ptr [rsp + 0x80]
	cmp	rdx, qword ptr [r13 + 0x30]
	cmove	rcx, rax
	test	rbp, rbp
	cmove	rcx, rax
	mov	byte ptr [rcx], 0
.label_531:
	cmp	qword ptr [rsp + 0x48], 0
	jne	.label_539
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	je	.label_539
	cmp	dword ptr [rsp + 0x24], 1
	je	.label_544
	test	rbp, rbp
	jne	.label_539
.label_544:
	cmp	qword ptr [r12 + 0x58], 0
	je	.label_546
	mov	rsi, qword ptr [r12 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_2
	mov	rdi, r13
	call	fts_safe_changedir
	jmp	.label_551
.label_546:
	mov	rdi, r13
	call	restore_initial_cwd
.label_551:
	test	eax, eax
	je	.label_539
	mov	word ptr [r12 + 0x70], 7
	mov	rax, qword ptr [rsp + 0x90]
	or	byte ptr [rax + 1], 0x20
	xor	ebx, ebx
	test	r15, r15
	je	.label_503
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_561:
	mov	rbp, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	je	.label_559
	call	closedir
.label_559:
	mov	rdi, r15
	call	free
	test	rbp, rbp
	mov	r15, rbp
	jne	.label_561
	jmp	.label_503
.label_539:
	test	rbp, rbp
	je	.label_563
	mov	eax, dword ptr [rsp + 0x20]
	test	al, 1
	jne	.label_564
	cmp	rbp, 2
	jb	.label_569
	mov	rax, qword ptr [rsp + 0x58]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_571
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, rbp
	call	fts_sort
	mov	rbx, rax
	jmp	.label_503
.label_563:
	cmp	dword ptr [rsp + 0x24], 3
	jne	.label_577
	movzx	eax, word ptr [r12 + 0x70]
	cmp	eax, 4
	je	.label_577
	movzx	eax, ax
	cmp	eax, 7
	je	.label_577
	mov	word ptr [r12 + 0x70], 6
.label_577:
	xor	ebx, ebx
	test	r15, r15
	je	.label_503
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_508:
	mov	rbp, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	je	.label_504
	call	closedir
.label_504:
	mov	rdi, r15
	call	free
	test	rbp, rbp
	mov	r15, rbp
	jne	.label_508
	jmp	.label_503
.label_564:
	mov	rdx, rbp
	mov	r14, qword ptr [rsp + 0x58]
	mov	qword ptr [word ptr [r14]], OFFSET FLAT:fts_compare_ino
	mov	rdi, r13
	mov	rsi, r15
	call	fts_sort
	mov	rbx, rax
	mov	qword ptr [r14], 0
	jmp	.label_503
.label_569:
	mov	rbx, r15
	jmp	.label_503
.label_571:
	mov	rbx, r15
	jmp	.label_503
.label_509:
	mov	rdi, r12
	call	free
	test	r15, r15
	je	.label_520
	nop	dword ptr [rax]
.label_525:
	mov	rbx, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	je	.label_522
	call	closedir
.label_522:
	mov	rdi, r15
	call	free
	test	rbx, rbx
	mov	r15, rbx
	jne	.label_525
.label_520:
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
	jmp	.label_503
.label_574:
	mov	rdi, r13
	call	free
	mov	qword ptr [rbp + 0x20], 0
	mov	rax, qword ptr [rsp + 0x98]
	mov	dword ptr [rax], 0x24
	jmp	.label_537
.label_579:
	mov	rdi, qword ptr [rbp + 0x20]
	call	free
	mov	qword ptr [rbp + 0x20], 0
.label_537:
	mov	qword ptr [rsp + 8], r12
	mov	rbp, qword ptr [rsp + 0x90]
.label_548:
	mov	rax, qword ptr [rsp + 0x98]
	mov	r14d, dword ptr [rax]
	mov	rdi, qword ptr [rsp + 8]
	call	free
	test	r15, r15
	mov	r12, qword ptr [rsp + 0x60]
	je	.label_549
	nop	dword ptr [rax]
.label_556:
	mov	rbx, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	je	.label_552
	call	closedir
.label_552:
	mov	rdi, r15
	call	free
	test	rbx, rbx
	mov	r15, rbx
	jne	.label_556
.label_549:
	mov	rdi, qword ptr [r12 + 0x18]
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x70], 7
	or	byte ptr [rbp + 1], 0x20
	mov	rax, qword ptr [rsp + 0x98]
	mov	dword ptr [rax], r14d
	xor	ebx, ebx
.label_503:
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
	#Procedure 0x4075b0

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_586
	test	ah, 2
	jne	.label_589
	mov	edi, dword ptr [rbx + 0x28]
	call	fchdir
	test	eax, eax
	setne	al
	jmp	.label_584
.label_586:
	xor	eax, eax
	jmp	.label_584
.label_589:
	mov	esi, dword ptr [rbx + 0x2c]
	lea	rdi, [rbx + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_583
	mov	edi, eax
	call	close
.label_583:
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
	xor	eax, eax
.label_584:
	movzx	ebp, al
	add	rbx, 0x60
	jmp	.label_587
	nop	
.label_588:
	mov	edi, eax
	call	close
.label_587:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_585
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_588
	jmp	.label_587
.label_585:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407630

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
	je	.label_592
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_593
	movups	xmm0, xmmword ptr [r14 + 0x78]
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], r14
	mov	rdi, qword ptr [rbp + 0x58]
	mov	rsi, rbx
	call	hash_insert
	mov	r15, rax
	mov	bpl, 1
	cmp	r15, rbx
	je	.label_591
	mov	rdi, rbx
	call	free
	test	r15, r15
	je	.label_590
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [r14], rax
	jmp	.label_594
.label_592:
	mov	rdi, qword ptr [rbp + 0x58]
	lea	rsi, [r14 + 0x78]
	call	cycle_check
	mov	bpl, 1
	test	al, al
	je	.label_591
	mov	qword ptr [r14], r14
.label_594:
	mov	word ptr [r14 + 0x70], 2
	jmp	.label_591
.label_593:
	xor	ebp, ebp
	jmp	.label_591
.label_590:
	xor	ebp, ebp
.label_591:
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
	#Procedure 0x4076d0

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	cmp	edx, 5
	jb	.label_595
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	add	rsp, 8
	ret	
.label_595:
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407700
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
	jne	.label_596
	mov	r15, qword ptr [r13]
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	eax, eax
	test	byte ptr [r13 + 0x49], 0x20
	jne	.label_600
	movzx	ecx, word ptr [r15 + 0x70]
	xor	eax, eax
	cmp	ecx, 1
	je	.label_604
	movzx	ecx, cx
	cmp	ecx, 9
	jne	.label_600
	mov	rax, qword ptr [r15 + 0x10]
	jmp	.label_600
.label_596:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
	jmp	.label_600
.label_604:
	mov	rbx, qword ptr [r13 + 8]
	test	rbx, rbx
	je	.label_609
	nop	dword ptr [rax]
.label_603:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_598
	call	closedir
.label_598:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_603
.label_609:
	mov	ebx, 1
	cmp	r12d, 0x1000
	jne	.label_605
	or	byte ptr [r13 + 0x49], 0x10
	mov	ebx, 2
.label_605:
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_597
	mov	rax, qword ptr [r15 + 0x30]
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x2f
	je	.label_597
	mov	eax, dword ptr [r13 + 0x48]
	test	al, 4
	jne	.label_597
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_602
	mov	edi, OFFSET FLAT:.str_7
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_611
.label_597:
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
.label_600:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_602:
	mov	edi, dword ptr [r13 + 0x2c]
	mov	esi, OFFSET FLAT:.str_7
	xor	eax, eax
	call	openat_safer
.label_611:
	mov	r15d, eax
	test	r15d, r15d
	js	.label_606
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
	test	byte ptr [r13 + 0x49], 2
	jne	.label_612
	mov	edi, r15d
	call	fchdir
	test	eax, eax
	je	.label_601
	mov	ebx, dword ptr [r14]
	mov	edi, r15d
	call	close
	mov	dword ptr [r14], ebx
	xor	eax, eax
	jmp	.label_600
.label_606:
	mov	qword ptr [r13 + 8], 0
	xor	eax, eax
	jmp	.label_600
.label_612:
	mov	esi, dword ptr [r13 + 0x2c]
	cmp	esi, r15d
	jne	.label_607
	cmp	esi, -0x64
	jne	.label_610
.label_607:
	lea	rdi, [r13 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_599
	mov	edi, eax
	call	close
.label_599:
	mov	dword ptr [r13 + 0x2c], r15d
	jmp	.label_608
.label_601:
	mov	edi, r15d
	call	close
.label_608:
	mov	rax, qword ptr [r13 + 8]
	jmp	.label_600
.label_610:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4078b0

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
	#Procedure 0x4078c0

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_613
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
.label_613:
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4078e0

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
	je	.label_614
	mov	rbp, qword ptr [rbx + 0x50]
	test	rbp, rbp
	jne	.label_617
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
	je	.label_618
.label_617:
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsp]
	mov	rdi, rbp
	call	hash_lookup
	test	rax, rax
	je	.label_619
	mov	rax, qword ptr [rax + 8]
	jmp	.label_614
.label_619:
	mov	r12b, 1
	mov	r14, rbp
.label_618:
	xor	eax, eax
	test	r15d, r15d
	js	.label_614
	lea	rsi, [rsp + 0x10]
	mov	edi, r15d
	call	fstatfs
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_614
	test	r12b, r12b
	je	.label_615
	mov	edi, 0x10
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_615
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rbp], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbp + 8], rax
	mov	rdi, r14
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_616
	cmp	rax, rbp
	je	.label_615
	call	abort
.label_616:
	mov	rdi, rbp
	call	free
.label_615:
	mov	rax, qword ptr [rsp + 0x10]
.label_614:
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
	#Procedure 0x4079f0

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
	#Procedure 0x407a00

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
	#Procedure 0x407a10

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
	#Procedure 0x407a40

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
	je	.label_620
	cmp	r15, -2
	jb	.label_620
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_620
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_620:
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
	#Procedure 0x407aa0

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
	jne	.label_622
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_621
	test	cl, cl
	jne	.label_621
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_621
.label_622:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_621
	call	__errno_location
	mov	dword ptr [rax], 0
.label_621:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407b00

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	ret	
	.section	.text
	.align	16
	#Procedure 0x407b10

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	cmp	dword ptr [rdi + 0x18], 0x95f616
	jne	.label_623
	mov	rcx, qword ptr [rdi + 0x10]
	test	rcx, rcx
	je	.label_624
	mov	rax, qword ptr [rsi + 8]
	cmp	rax, qword ptr [rdi]
	jne	.label_624
	mov	rdx, qword ptr [rsi]
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 8]
	je	.label_625
.label_624:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x10], rdx
	test	rdx, rcx
	jne	.label_626
	mov	al, 1
	test	rdx, rdx
	je	.label_625
	mov	rax, qword ptr [rsi]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi], rax
.label_626:
	xor	eax, eax
.label_625:
	ret	
.label_623:
	push	rax
	mov	edi, OFFSET FLAT:.str_8
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0x3c
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.cycle_check
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x407b80

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xc8
	test	al, al
	je	.label_627
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_627:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_630
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_629
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_628
.label_629:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_628:
	mov	edx, dword ptr [rax]
.label_630:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c60

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_632
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_633
	cmp	byte ptr [rax + 1], 0
	je	.label_631
.label_633:
	mov	esi, OFFSET FLAT:.str.1_6
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_632
.label_631:
	xor	ebx, ebx
.label_632:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x407ca0
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407cb0
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407cc0
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407cd0
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdx
	jae	.label_634
	mov	rdi, rcx
	not	rdi
	add	rdi, rdx
	mov	rsi, rdi
	shr	rsi, 4
	xor	eax, eax
	bt	rdi, 4
	jb	.label_636
	xor	eax, eax
	cmp	qword ptr [rcx], 0
	je	.label_642
	mov	rdi, rcx
	nop	word ptr cs:[rax + rax]
.label_635:
	mov	rdi, qword ptr [rdi + 8]
	inc	rax
	test	rdi, rdi
	jne	.label_635
.label_642:
	add	rcx, 0x10
.label_636:
	test	rsi, rsi
	je	.label_634
	nop	word ptr cs:[rax + rax]
.label_637:
	cmp	qword ptr [rcx], 0
	mov	esi, 0
	mov	rdi, rcx
	je	.label_638
	nop	
.label_639:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_639
	cmp	rsi, rax
	cmova	rax, rsi
.label_638:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_640
	lea	rdi, [rcx + 0x10]
	xor	esi, esi
.label_641:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_641
	cmp	rsi, rax
	cmova	rax, rsi
.label_640:
	add	rcx, 0x20
	cmp	rcx, rdx
	jb	.label_637
.label_634:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407d80
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rcx, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	edx, edx
	cmp	rcx, r9
	mov	esi, 0
	jae	.label_643
	mov	rax, rcx
	not	rax
	add	rax, r9
	mov	r8, rax
	shr	r8, 4
	xor	edx, edx
	bt	rax, 4
	jb	.label_648
	xor	edx, edx
	cmp	qword ptr [rcx], 0
	je	.label_651
	mov	esi, 1
	mov	rax, rcx
.label_644:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_644
	jmp	.label_645
.label_648:
	xor	esi, esi
	jmp	.label_646
.label_651:
	xor	esi, esi
.label_645:
	add	rcx, 0x10
.label_646:
	test	r8, r8
	je	.label_643
	nop	dword ptr [rax]
.label_649:
	cmp	qword ptr [rcx], 0
	mov	rax, rcx
	je	.label_650
	nop	dword ptr [rax]
.label_654:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_654
	inc	rsi
.label_650:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_655
	lea	rax, [rcx + 0x10]
	nop	word ptr [rax + rax]
.label_647:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_647
	inc	rsi
.label_655:
	add	rcx, 0x20
	cmp	rcx, r9
	jb	.label_649
.label_643:
	cmp	rsi, qword ptr [rdi + 0x18]
	jne	.label_652
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 0x20]
	je	.label_653
.label_652:
	xor	eax, eax
.label_653:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407e40
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
	jae	.label_656
	mov	rdi, rax
	not	rdi
	add	rdi, rdx
	mov	rsi, rdi
	shr	rsi, 4
	xor	ebx, ebx
	bt	rdi, 4
	jb	.label_661
	xor	ebx, ebx
	cmp	qword ptr [rax], 0
	je	.label_657
	mov	rdi, rax
	nop	dword ptr [rax]
.label_663:
	mov	rdi, qword ptr [rdi + 8]
	inc	rbx
	test	rdi, rdi
	jne	.label_663
.label_657:
	add	rax, 0x10
.label_661:
	test	rsi, rsi
	je	.label_656
	nop	word ptr cs:[rax + rax]
.label_665:
	cmp	qword ptr [rax], 0
	mov	esi, 0
	mov	rdi, rax
	je	.label_666
	nop	
.label_662:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_662
	cmp	rsi, rbx
	cmova	rbx, rsi
.label_666:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_664
	lea	rdi, [rax + 0x10]
	xor	esi, esi
.label_667:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_667
	cmp	rsi, rbx
	cmova	rbx, rsi
.label_664:
	add	rax, 0x20
	cmp	rax, rdx
	jb	.label_665
.label_656:
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str_9
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.1_7
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_658]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_659]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_660]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.2_3
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_1
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
	#Procedure 0x407fb0

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
	jae	.label_671
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_668
	add	rbx, rax
	je	.label_668
	cmp	rsi, r12
	je	.label_670
	xor	r15d, r15d
	nop	
.label_669:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_672
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_668
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_669
.label_670:
	mov	r15, r12
	jmp	.label_668
.label_672:
	mov	r15, qword ptr [rbx]
.label_668:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_671:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408030
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_673
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_676
	nop	word ptr cs:[rax + rax]
.label_675:
	add	rcx, 0x10
.label_676:
	cmp	rcx, rdx
	jae	.label_674
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_675
.label_673:
	ret	
.label_674:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408070
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
	jae	.label_679
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_680:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_677
	test	rdx, rdx
	jne	.label_680
	jmp	.label_678
.label_677:
	test	rdx, rdx
	je	.label_678
	mov	rax, qword ptr [rdx]
	jmp	.label_681
.label_678:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rax + rcx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_682:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_681
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_682
.label_681:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_679:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408100
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	jmp	.label_683
	nop	dword ptr [rax + rax]
.label_686:
	add	r9, 0x10
.label_683:
	cmp	r9, r8
	jae	.label_684
	cmp	qword ptr [r9], 0
	je	.label_686
	test	r9, r9
	mov	r10, r9
	je	.label_686
	nop	word ptr [rax + rax]
.label_685:
	cmp	rax, rdx
	jae	.label_684
	mov	rcx, qword ptr [r10]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r10, qword ptr [r10 + 8]
	test	r10, r10
	jne	.label_685
	mov	r8, qword ptr [rdi + 8]
	jmp	.label_686
.label_684:
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x408150
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
	jmp	.label_691
	nop	word ptr cs:[rax + rax]
.label_690:
	add	r13, 0x10
.label_691:
	cmp	r13, rax
	jae	.label_688
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_690
	test	r13, r13
	je	.label_690
	mov	rsi, r14
	call	r15
	test	al, al
	mov	rbp, r13
	je	.label_688
	nop	word ptr cs:[rax + rax]
.label_689:
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_687
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_689
	jmp	.label_688
	nop	dword ptr [rax]
.label_687:
	mov	rax, qword ptr [r12 + 8]
	jmp	.label_690
.label_688:
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
	#Procedure 0x4081f0
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_692
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_693:
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
	jne	.label_693
.label_692:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408230
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_694]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408250

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
	je	.label_697
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_702
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_703]]
	jbe	.label_696
	movss	xmm1,  dword ptr [dword ptr [rip + label_710]]
	ucomiss	xmm1, xmm0
	jbe	.label_696
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_701]]
	jbe	.label_696
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_696
	addss	xmm1,  dword ptr [dword ptr [rip + label_703]]
	ucomiss	xmm0, xmm1
	jbe	.label_696
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_695]]
	ucomiss	xmm2, xmm0
	jb	.label_696
	ucomiss	xmm0, xmm1
	jbe	.label_696
.label_702:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_709
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_706
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_708
.label_706:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_708:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_699]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_700]]
	jae	.label_696
.label_709:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_698
	nop	
.label_707:
	add	rbx, 2
.label_698:
	cmp	rbx, -1
	je	.label_696
	cmp	rbx, 0xa
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	jb	.label_705
	nop	word ptr cs:[rax + rax]
.label_704:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_705
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_704
.label_705:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_707
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_696
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_696
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_696
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
	jmp	.label_697
.label_696:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_697:
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
	#Procedure 0x408470

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
	#Procedure 0x408480

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408490
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_713
	nop	word ptr cs:[rax + rax]
.label_716:
	add	r14, 0x10
.label_713:
	cmp	r14, rax
	jae	.label_715
	cmp	qword ptr [r14], 0
	je	.label_716
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_717
	nop	word ptr cs:[rax + rax]
.label_712:
	test	cl, 1
	je	.label_711
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_711:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_712
.label_717:
	test	cl, cl
	je	.label_714
	mov	rdi, qword ptr [r14]
	call	rax
.label_714:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_716
.label_715:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408540

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_718
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_718
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_724
	nop	
.label_722:
	add	r15, 0x10
.label_724:
	cmp	r15, rax
	jae	.label_718
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_722
	test	r15, r15
	je	.label_722
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_728
.label_721:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_728:
	test	rbx, rbx
	jne	.label_721
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_722
.label_718:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_719
	nop	
.label_723:
	add	r15, 0x10
.label_719:
	cmp	r15, rax
	jae	.label_726
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_723
	nop	word ptr cs:[rax + rax]
.label_720:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_720
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_723
.label_726:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_725
.label_727:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_727
.label_725:
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
	#Procedure 0x408610

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
	jne	.label_735
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_741
	cvtsi2ss	xmm0, rsi
	jmp	.label_746
.label_741:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_746:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_699]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_700]]
	jae	.label_731
.label_735:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_730
	nop	dword ptr [rax + rax]
.label_743:
	add	rbx, 2
.label_730:
	cmp	rbx, -1
	je	.label_731
	cmp	rbx, 0xa
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	jb	.label_738
	nop	word ptr cs:[rax + rax]
.label_739:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_738
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_739
.label_738:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_743
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_731
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_732
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_731
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
	je	.label_747
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_732
.label_747:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_742
	nop	
.label_733:
	add	r12, 0x10
.label_742:
	cmp	r12, r15
	jae	.label_729
	cmp	qword ptr [r12], 0
	je	.label_733
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_736
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_734:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_740
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_744
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_737
	nop	word ptr [rax + rax]
.label_744:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_737:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_734
.label_736:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_733
.label_729:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_745
	mov	rdi, qword ptr [rsp]
	call	free
.label_731:
	xor	ebp, ebp
.label_732:
	mov	al, bpl
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_740:
	call	abort
.label_745:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4088a0

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
	jae	.label_748
	nop	word ptr cs:[rax + rax]
.label_753:
	mov	r13, qword ptr [r14]
	test	r13, r13
	je	.label_751
	mov	r15, qword ptr [r14 + 8]
	test	r15, r15
	je	.label_755
	mov	rsi, qword ptr [rbp + 0x10]
	nop	dword ptr [rax]
.label_752:
	mov	rbx, qword ptr [r15]
	mov	rdi, rbx
	call	qword ptr [rbp + 0x30]
	mov	rsi, qword ptr [rbp + 0x10]
	cmp	rax, rsi
	jae	.label_760
	mov	rdx, qword ptr [rbp]
	mov	rcx, qword ptr [r15 + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_757
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [r15 + 8], rdi
	mov	qword ptr [rdx + rax + 8], r15
	jmp	.label_754
	nop	dword ptr [rax]
.label_757:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [rbp + 0x18]
	mov	qword ptr [r15], 0
	mov	rax, qword ptr [rbp + 0x48]
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [rbp + 0x48], r15
.label_754:
	test	rcx, rcx
	mov	r15, rcx
	jne	.label_752
	mov	r13, qword ptr [r14]
.label_755:
	mov	qword ptr [r14 + 8], 0
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	jne	.label_751
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, r13
	call	qword ptr [rbp + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [rbp + 0x10]
	jae	.label_758
	mov	r15, qword ptr [rbp]
	shl	rbx, 4
	cmp	qword ptr [r15 + rbx], 0
	je	.label_761
	mov	rax, qword ptr [rbp + 0x48]
	test	rax, rax
	je	.label_750
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp + 0x48], rcx
	jmp	.label_749
.label_761:
	add	r15, rbx
	mov	qword ptr [r15], r13
	inc	qword ptr [rbp + 0x18]
	jmp	.label_756
.label_750:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_759
.label_749:
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [r15 + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + rbx + 8], rax
.label_756:
	mov	qword ptr [r14], 0
	dec	qword ptr [r12 + 0x18]
.label_751:
	add	r14, 0x10
	cmp	r14, qword ptr [r12 + 8]
	jb	.label_753
	mov	al, 1
.label_748:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_759:
	xor	eax, eax
	jmp	.label_748
.label_760:
	call	abort
.label_758:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408a10

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
	je	.label_765
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_765
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_778
	cmp	rsi, r14
	je	.label_787
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_790
	mov	rax, qword ptr [r12]
	jmp	.label_779
.label_787:
	mov	rax, r14
	jmp	.label_773
.label_790:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_778
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr cs:[rax + rax]
.label_775:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_789
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_772
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_775
	jmp	.label_778
.label_789:
	mov	rax, r14
	jmp	.label_779
.label_772:
	mov	rax, qword ptr [rbp]
.label_779:
	test	rax, rax
	je	.label_778
.label_773:
	xor	ebp, ebp
	test	r15, r15
	je	.label_766
	mov	qword ptr [r15], rax
	jmp	.label_766
.label_778:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_786
	cvtsi2ss	xmm1, rax
	jmp	.label_791
.label_786:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_791:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_792
	cvtsi2ss	xmm0, rcx
	jmp	.label_767
.label_792:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_767:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_770
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_780
	ucomiss	xmm2,  dword ptr [dword ptr [rip + label_703]]
	jbe	.label_782
	movss	xmm3,  dword ptr [dword ptr [rip + label_710]]
	ucomiss	xmm3, xmm2
	jbe	.label_782
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_701]]
	jbe	.label_782
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_782
	addss	xmm3,  dword ptr [dword ptr [rip + label_703]]
	ucomiss	xmm2, xmm3
	jbe	.label_782
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5,  dword ptr [dword ptr [rip + label_695]]
	ucomiss	xmm5, xmm4
	jb	.label_782
	ucomiss	xmm4, xmm3
	ja	.label_769
.label_782:
	mov	qword ptr [word ptr [r13 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2,  dword ptr [dword ptr [rip + label_768]]
	jmp	.label_769
.label_780:
	mov	eax, OFFSET FLAT:default_tuning
.label_769:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_770
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_764
	mulss	xmm0, xmm2
.label_764:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_700]]
	jae	.label_766
	movss	xmm1,  dword ptr [dword ptr [rip + label_699]]
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
	je	.label_766
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_765
	mov	r15, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [r15 + rbp]
	mov	rsi, qword ptr [r15 + rbp]
	test	rsi, rsi
	je	.label_770
	cmp	rsi, r14
	mov	rax, r14
	je	.label_771
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_788
	mov	rax, qword ptr [r12]
	jmp	.label_771
.label_788:
	mov	rax, qword ptr [r15 + rbp + 8]
	test	rax, rax
	je	.label_770
	lea	rbp, [r15 + rbp + 8]
.label_763:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_783
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_762
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_763
	jmp	.label_770
.label_783:
	mov	rax, r14
	jmp	.label_771
.label_762:
	mov	rax, qword ptr [rbp]
.label_771:
	test	rax, rax
	jne	.label_774
.label_770:
	cmp	qword ptr [r12], 0
	je	.label_776
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_777
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_781
.label_776:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0,  xmmword ptr [word ptr [rip + label_784]]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_785
.label_777:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_766
.label_781:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_785:
	mov	ebp, 1
.label_766:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_765:
	call	abort
.label_774:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408d30

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
	je	.label_793
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_793:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408d60

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
	jae	.label_814
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_797
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_802
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_804
	mov	r14, qword ptr [r13]
.label_802:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_809
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_803
.label_804:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_797
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_800:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_794
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_798
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_800
	jmp	.label_797
.label_809:
	mov	qword ptr [r13], 0
	jmp	.label_803
.label_794:
	mov	rcx, rax
	jmp	.label_806
.label_798:
	mov	r14, qword ptr [rcx]
.label_806:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_803:
	xor	r12d, r12d
	test	r14, r14
	je	.label_797
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_799
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_813
	cvtsi2ss	xmm1, rax
	jmp	.label_796
.label_813:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_796:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_801
	cvtsi2ss	xmm0, rcx
	jmp	.label_805
.label_801:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_805:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_799
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_810
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_703]]
	jbe	.label_795
	movss	xmm4,  dword ptr [dword ptr [rip + label_710]]
	ucomiss	xmm4, xmm3
	jbe	.label_795
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_795
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4,  dword ptr [dword ptr [rip + label_701]]
	jbe	.label_795
	movss	xmm4,  dword ptr [dword ptr [rip + label_703]]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_795
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5,  dword ptr [dword ptr [rip + label_695]]
	ucomiss	xmm5, xmm3
	jb	.label_795
	ucomiss	xmm3, xmm4
	ja	.label_808
.label_795:
	mov	qword ptr [word ptr [r15 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_808
.label_810:
	mov	eax, OFFSET FLAT:default_tuning
.label_808:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_799
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_811
	mulss	xmm0, dword ptr [rax + 8]
.label_811:
	movss	xmm1,  dword ptr [dword ptr [rip + label_699]]
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
	jne	.label_799
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_812
	nop	
.label_807:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_807
.label_812:
	mov	qword ptr [r15 + 0x48], 0
.label_799:
	mov	r12, r14
.label_797:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_814:
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408ff0

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
	#Procedure 0x409020

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409030

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
	jne	.label_815
	mov	dl, byte ptr [rdi + 0x1c]
	xor	dl, 1
	movzx	edx, dl
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_815:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409070

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	cmp	byte ptr [rdi + 0x1c], 0
	jne	.label_816
	mov	ecx, dword ptr [rdi + 0x10]
	mov	edx, dword ptr [rdi + 0x14]
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], ecx
	mov	ecx, dword ptr [rdi + 0x14]
	cmp	ecx, dword ptr [rdi + 0x18]
	jne	.label_817
	mov	byte ptr [rdi + 0x1c], 1
	ret	
.label_817:
	add	ecx, 3
	and	ecx, 3
	mov	dword ptr [rdi + 0x14], ecx
	ret	
.label_816:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x4090a0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_8
	cmp	byte ptr [rcx], 0
	je	.label_818
	mov	rax, rcx
.label_818:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4090d0

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xc8
	test	al, al
	je	.label_819
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_819:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_821
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x18
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_820
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_822
.label_820:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_822:
	mov	ecx, dword ptr [rax]
.label_821:
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
	#Procedure 0x4091b0

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
	js	.label_824
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_823
	mov	dword ptr [r14], ebp
	jmp	.label_824
.label_823:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_824:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409200

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
	ja	.label_825
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
	jmp	.label_826
.label_825:
	mov	eax, ebx
.label_826:
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
	#Procedure 0x409250

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_827
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_829
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_827
.label_829:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_827
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_828
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_828:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_827:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x4092d0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
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
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	cmp	esi, 0xb
	ja	.label_833
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_839
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_840
	test	esi, esi
	jne	.label_833
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_850
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_831
.label_833:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_835
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_840
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_841
.label_839:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_838
.label_840:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_848
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_846
.label_848:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_846:
	mov	edx, dword ptr [rax]
.label_832:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
.label_838:
	mov	ebp, eax
.label_830:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_841:
	cmp	eax, 6
	jne	.label_835
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_836
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_842
.label_835:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_844
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_847
.label_850:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_831:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	jmp	.label_832
.label_836:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_842:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_837
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_843
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_843
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_830
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	al, 1
	jmp	.label_834
.label_843:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_830
.label_844:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_847:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_838
.label_837:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	sete	al
.label_834:
	test	al, al
	je	.label_830
	test	ebp, ebp
	js	.label_830
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_849
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_830
.label_849:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_830
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4095b0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_851
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_851
	test	byte ptr [rbx + 1], 1
	je	.label_851
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_851:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4095f0

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
	jne	.label_852
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_852
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_853
.label_852:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_853:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_854
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_854:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409660

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
	#Procedure 0x409680

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