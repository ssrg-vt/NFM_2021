	.section	.text
	.align	16
	#Procedure 0x401830

	.globl usage
	.type usage, @function
usage:
	lea	rdi, [rdi]
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	mov	rbp, rbp
	jne	.label_8
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rcx, rax
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	rbp, rbp
	mov	edi, 1
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rsi, rcx
	lea	rdi, [rdi]
	mov	rcx, rdx
	mov	r8, rdx
	mov	rbp, rbp
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	nop	
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	nop	
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	nop	
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	lea	rdi, [rdi]
	call	setlocale
	test	rax, rax
	mov	rbp, rbp
	je	.label_7
	mov	esi, OFFSET FLAT:.str.34
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_7
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
.label_7:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.18
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.10
	xor	eax, eax
	nop	
	call	__printf_chk
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.37
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi, rax
	mov	edi, 1
	nop	
	mov	edx, OFFSET FLAT:.str.10
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.38
	xor	eax, eax
	lea	rdi, [rdi]
	call	__printf_chk
	lea	rsi, [rsi]
	mov	edi, ebp
	mov	rsp, rsp
	call	exit
.label_8:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	lea	rdi, [rdi]
	mov	esi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	__fprintf_chk
	mov	rbp, rbp
	mov	edi, ebp
	lea	rsi, [rsi]
	call	exit
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401b30

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0xd8
	lea	rsi, [rsi]
	mov	r14, rsi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xd0], r14
	lea	rsi, [rsi]
	mov	ebp, edi
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x98], ebp
	nop	
	mov	qword ptr [rsp + 0xa8], 0
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_1
	call	setlocale
	mov	edi, OFFSET FLAT:.str.12
	mov	esi, OFFSET FLAT:.str.13
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.12
	call	textdomain
	nop	
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + diagnose_surprises]],  0
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + force_silent]],  0
	mov	byte ptr [byte ptr [rip + recurse]],  0
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0xc0], rax
	xor	ebx, ebx
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	
	xor	eax, eax
	mov	qword ptr [rsp + 0xc8], rax
	jmp	.label_12
	nop	dword ptr [rax]
.label_47:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc8], rax
	lea	rdi, [rdi]
	mov	byte ptr [rax + rbp], 0x2c
	add	r12, rax
	inc	r14
	mov	rdi, r12
	mov	rsi, rbx
	lea	rdi, [rdi]
	mov	rdx, r14
	lea	rsi, [rsi]
	call	memcpy
	mov	byte ptr [byte ptr [rip + diagnose_surprises]],  1
	lea	rsi, [rsi]
	mov	bl, r15b
	mov	r14, qword ptr [rsp + 0xd0]
	mov	rsp, rsp
	mov	ebp, dword ptr [rsp + 0x98]
.label_12:
	mov	r15b, bl
	lea	rdi, [rdi]
	xor	ebx, ebx
	nop	
	mov	edx, OFFSET FLAT:.str.14
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	rbp, rbp
	mov	edi, ebp
	mov	rsi, r14
	call	getopt_long
	mov	rbp, rbp
	cmp	eax, 0x60
	jle	.label_18
	add	eax, -0x61
	cmp	eax, 0x21
	lea	rsi, [rsi]
	ja	.label_16
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_22]]
.label_863:
	mov	dword ptr [dword ptr [rip + verbosity]],  1
	mov	bl, r15b
	jmp	.label_12
	nop	word ptr cs:[rax + rax]
.label_18:
	nop	
	cmp	eax, 0x2a
	jle	.label_29
	add	eax, -0x2b
	lea	rsi, [rsi]
	cmp	eax, 0x2d
	ja	.label_16
	mov	rsp, rsp
	movabs	rcx, 0x200000041fe3
	mov	rbp, rbp
	bt	rcx, rax
	jae	.label_35
.label_862:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rbp, rbp
	mov	rbx, qword ptr [r14 + rax*8 - 8]
	mov	rsp, rsp
	mov	rdi, rbx
	call	strlen
	mov	r14, rax
	nop	
	cmp	r13, 1
	mov	r12, r13
	lea	rdi, [rdi]
	mov	rbp, r13
	mov	rbp, rbp
	sbb	r12, -1
	nop	
	lea	r13, [r14 + r12]
	cmp	qword ptr [rsp + 0xa8], r13
	lea	rsi, [rsi]
	jbe	.label_39
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xc8]
	jmp	.label_47
	nop	word ptr [rax + rax]
.label_39:
	lea	rax, [r13 + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xa8], rax
	nop	
	mov	rdi, qword ptr [rsp + 0xc8]
	mov	rbp, rbp
	lea	rsi, [rsp + 0xa8]
	lea	rdi, [rdi]
	call	x2realloc
	lea	rdi, [rdi]
	jmp	.label_47
.label_35:
	cmp	rax, 0x27
	mov	rbp, rbp
	jne	.label_16
	mov	byte ptr [byte ptr [rip + recurse]],  1
	lea	rsi, [rsi]
	mov	bl, r15b
	mov	rbp, rbp
	jmp	.label_12
.label_864:
	mov	byte ptr [byte ptr [rip + force_silent]],  1
	lea	rdi, [rdi]
	mov	bl, r15b
	jmp	.label_12
.label_865:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + verbosity]],  0
	mov	bl, r15b
	mov	rbp, rbp
	jmp	.label_12
.label_866:
	mov	bl, 1
	jmp	.label_12
.label_867:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0xc0], rax
	mov	bl, r15b
	lea	rdi, [rdi]
	jmp	.label_12
.label_29:
	lea	rdi, [rdi]
	cmp	eax, -1
	lea	rsi, [rsi]
	jne	.label_60
	mov	rbx, qword ptr [rsp + 0xc0]
	nop	
	test	rbx, rbx
	mov	rcx, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	je	.label_46
	mov	rbp, rbp
	test	rcx, rcx
	nop	
	mov	ecx, 0
	je	.label_13
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.18_0
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	call	usage
.label_46:
	mov	rsp, rsp
	test	rcx, rcx
	jne	.label_13
	lea	rdi, [rdi]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	rdi, [rdi]
	lea	ecx, [rax + 1]
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + rax*8]
.label_13:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rsp, rsp
	cmp	eax, ebp
	lea	rdi, [rdi]
	jge	.label_19
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_23
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	mode_create_from_ref
	mov	qword ptr [word ptr [rip + change]],  rax
	test	rax, rax
	nop	
	jne	.label_25
	mov	rbp, rbp
	call	__errno_location
	lea	rsi, [rsi]
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.21
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	mov	rbp, rbp
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	lea	rdi, [rdi]
	xor	eax, eax
	mov	esi, r14d
	lea	rsi, [rsi]
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	error
.label_23:
	mov	rbp, rcx
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rsp, rsp
	call	mode_compile
	nop	
	mov	qword ptr [word ptr [rip + change]],  rax
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_43
	xor	edi, edi
	mov	rsp, rsp
	call	umask
	mov	dword ptr [dword ptr [rip + umask_value]],  eax
.label_25:
	test	r15b, r15b
	je	.label_45
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + recurse]]
	lea	rsi, [rsi]
	xor	al, 1
	test	al, 1
	jne	.label_45
	mov	edi, OFFSET FLAT:main.dev_ino_buf
	nop	
	call	get_root_dev_ino
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + root_dev_ino]],  rax
	test	rax, rax
	jne	.label_49
	lea	rdi, [rdi]
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rbp, rax
	lea	rdi, [rdi]
	mov	edi, 4
	nop	
	mov	esi, OFFSET FLAT:.str_0
	mov	rbp, rbp
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_45:
	mov	qword ptr [word ptr [rip + root_dev_ino]],  0
.label_49:
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	nop	
	lea	rdi, [r14 + rax*8]
	mov	rsp, rsp
	mov	esi, 0x411
	xor	edx, edx
	call	xfts_open
	mov	qword ptr [rsp + 0xc8], rax
	mov	rdi, rax
	call	rpl_fts_read
	mov	r12, rax
	mov	bpl, 1
	mov	rsp, rsp
	test	r12, r12
	lea	rdi, [rdi]
	je	.label_61
	mov	r14b, 1
	jmp	.label_20
.label_63:
	nop	
	mov	qword ptr [r12 + 0x20], 1
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 0xc8]
	mov	rsi, r12
	call	rpl_fts_set
	lea	rdi, [rdi]
	mov	bpl, 1
	nop	
	jmp	.label_11
.label_59:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.56
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r13
	lea	rdi, [rdi]
	call	quotearg_style
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	nop	
	mov	rdx, rbx
	call	error
.label_14:
	lea	rdi, [rdi]
	xor	ebp, ebp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.58
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	nop	
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edx, 4
	mov	rbx, qword ptr [rsp + 0xc8]
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, r12
	call	rpl_fts_set
	mov	rdi, rbx
	mov	rbp, rbp
	call	rpl_fts_read
	lea	rsi, [rsi]
	jmp	.label_11
	nop	dword ptr [rax]
.label_20:
	mov	rsp, rsp
	mov	rbx, qword ptr [r12 + 0x30]
	lea	rsi, [rsi]
	mov	r13, qword ptr [r12 + 0x38]
	movzx	eax, word ptr [r12 + 0x70]
	add	eax, -2
	nop	
	cmp	eax, 0xb
	ja	.label_37
	mov	rsp, rsp
	mov	bpl, 1
	jmp	qword ptr [word ptr [+ (rax * 8) + label_40]]
.label_895:
	mov	rdi, qword ptr [rsp + 0xc8]
	mov	rsi, r12
	call	cycle_warning_required
	mov	rsp, rsp
	test	al, al
	nop	
	je	.label_37
	xor	ebp, ebp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.55
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	nop	
	mov	rbx, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, 3
	mov	rsp, rsp
	mov	rdx, r13
	nop	
	call	quotearg_n_style_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	rbp, rbp
	jmp	.label_11
	nop	dword ptr [rax + rax]
.label_37:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd0], rbx
	mov	rax,  qword ptr [word ptr [rip + root_dev_ino]]
	test	rax, rax
	mov	rbp, rbp
	je	.label_30
	mov	rbp, rbp
	mov	rcx, qword ptr [r12 + 0x80]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rax]
	jne	.label_30
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 0x78]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rax + 8]
	mov	rbp, rbp
	jne	.label_30
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r13]
	nop	
	cmp	eax, 0x2f
	jne	.label_57
	cmp	byte ptr [r13 + 1], 0
	je	.label_59
.label_57:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 5
	call	dcgettext
	mov	rdx, r13
	lea	rsi, [rsi]
	mov	r13, rax
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 4
	lea	rdi, [rdi]
	call	quotearg_n_style
	mov	rbp, rax
	mov	rbp, rbp
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, 4
	mov	edx, OFFSET FLAT:.str_0
	nop	
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rdx, r13
	mov	rcx, rbp
	mov	r8, rbx
	mov	rbp, rbp
	call	error
	jmp	.label_14
.label_30:
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xc0], r14b
	mov	rbp, rbp
	mov	r14d, dword ptr [r12 + 0x90]
	mov	rbp, rbp
	mov	ebx, r14d
	and	ebx, 0xf000
	mov	rbp, rbp
	cmp	ebx, 0x4000
	nop	
	sete	al
	mov	edx,  dword ptr [dword ptr [rip + umask_value]]
	mov	rcx,  qword ptr [word ptr [rip + change]]
	mov	rbp, rbp
	movzx	esi, al
	xor	r15d, r15d
	lea	rdi, [rdi]
	xor	r8d, r8d
	mov	rsp, rsp
	mov	edi, r14d
	call	mode_adjust
	lea	rsi, [rsi]
	mov	ebp, eax
	cmp	ebx, 0xa000
	jne	.label_28
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], r13
	mov	r13b, 1
	mov	rsp, rsp
	mov	ebx, ebp
	mov	ebp, r14d
	lea	rsi, [rsi]
	jmp	.label_33
.label_896:
	mov	qword ptr [rsp + 0xd0], rbx
	mov	qword ptr [rsp + 0x98], r13
	mov	al,  byte ptr [byte ptr [rip + force_silent]]
	xor	r15d, r15d
	and	al, 1
	mov	r13d, 0
	mov	rsp, rsp
	jne	.label_10
	mov	ebx, dword ptr [r12 + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	jmp	.label_41
.label_899:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xd0], rbx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x98], r13
	mov	al,  byte ptr [byte ptr [rip + force_silent]]
	xor	r15d, r15d
	mov	rsp, rsp
	and	al, 1
	lea	rsi, [rsi]
	mov	r13d, 0
	jne	.label_10
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.54
	mov	rbp, rbp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x98]
	call	quotearg_style
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	lea	rsi, [rsi]
	jmp	.label_51
.label_897:
	mov	qword ptr [rsp + 0xd0], rbx
	mov	qword ptr [rsp + 0x98], r13
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + force_silent]]
	xor	r15d, r15d
	and	al, 1
	lea	rsi, [rsi]
	mov	r13d, 0
	jne	.label_10
	mov	ebx, dword ptr [r12 + 0x40]
	nop	
	xor	r15d, r15d
	nop	
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x98]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	esi, ebx
	mov	rbp, rbp
	jmp	.label_51
.label_898:
	cmp	qword ptr [r12 + 0x58], 0
	jne	.label_62
	nop	
	cmp	qword ptr [r12 + 0x20], 0
	je	.label_63
.label_62:
	nop	
	mov	qword ptr [rsp + 0xd0], rbx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x98], r13
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + force_silent]]
	xor	r15d, r15d
	lea	rdi, [rdi]
	and	al, 1
	nop	
	mov	r13d, 0
	nop	
	jne	.label_10
	mov	ebx, dword ptr [r12 + 0x40]
	xor	r15d, r15d
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.51
.label_41:
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x98]
	call	quotearg_style
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	xor	eax, eax
	nop	
	mov	esi, ebx
	mov	rdx, rbp
.label_51:
	mov	rbp, rbp
	call	error
	xor	r13d, r13d
	jmp	.label_10
.label_28:
	mov	rax, qword ptr [rsp + 0xc8]
	mov	edi, dword ptr [rax + 0x2c]
	xor	ecx, ecx
	mov	rsi, qword ptr [rsp + 0xd0]
	mov	edx, ebp
	mov	rsp, rsp
	call	fchmodat
	mov	rbp, rbp
	mov	r15b, 1
	mov	rsp, rsp
	test	eax, eax
	mov	ebx, ebp
	mov	rbp, rbp
	je	.label_31
	nop	
	mov	al,  byte ptr [byte ptr [rip + force_silent]]
	nop	
	xor	r15d, r15d
	and	al, 1
	lea	rdi, [rdi]
	mov	ebp, r14d
	je	.label_36
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x98], r13
	jmp	.label_38
.label_31:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x98], r13
	mov	r13b, 1
	mov	ebp, r14d
	jmp	.label_33
.label_36:
	call	__errno_location
	mov	rbp, rbp
	mov	r14d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.59
	mov	edx, 5
	call	dcgettext
	nop	
	mov	qword ptr [rsp + 0xa0], rax
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, r13
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], r13
	mov	rbp, rbp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, r14d
	mov	rdx, qword ptr [rsp + 0xa0]
	call	error
.label_38:
	xor	r13d, r13d
.label_33:
	mov	r14b, byte ptr [rsp + 0xc0]
.label_10:
	cmp	dword ptr [dword ptr [rip + verbosity]],  2
	je	.label_21
	test	r15b, r15b
	mov	rbp, rbp
	je	.label_50
	test	bh, 0xe
	mov	eax, ebx
	lea	rsi, [rsi]
	je	.label_53
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xc8]
	mov	esi, dword ptr [rax + 0x2c]
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rsp, rsp
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0xd0]
	mov	rbp, rbp
	lea	rcx, [rsp + 8]
	call	__fxstatat
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_56
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + force_silent]]
	and	al, 1
	nop	
	jne	.label_58
	lea	rdi, [rdi]
	call	__errno_location
	mov	eax, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xd0], eax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.61
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xc0], r14b
	mov	r14d, ebp
	mov	ebp, ebx
	nop	
	mov	rbx, rax
	mov	rbp, rbp
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, dword ptr [rsp + 0xd0]
	mov	rdx, rbx
	mov	ebx, ebp
	mov	ebp, r14d
	mov	r14b, byte ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	call	error
.label_58:
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_17
.label_50:
	xor	eax, eax
	jmp	.label_17
.label_56:
	mov	eax, dword ptr [rsp + 0x20]
.label_53:
	xor	eax, ebp
	mov	rbp, rbp
	test	ax, 0xfff
	setne	al
.label_17:
	nop	
	test	al, al
	mov	rbp, rbp
	jne	.label_55
	mov	ecx,  dword ptr [dword ptr [rip + verbosity]]
	lea	rdi, [rdi]
	test	ecx, ecx
	mov	rbp, rbp
	jne	.label_21
.label_55:
	mov	dword ptr [rsp + 0xd0], ebp
	mov	ebp, ebx
	mov	rbp, rbp
	test	al, al
	sete	al
	movzx	eax, al
	lea	ebx, [rax + rax + 1]
	test	r15b, r15b
	mov	rbp, rbp
	mov	eax, 0
	cmove	ebx, eax
	nop	
	test	r13b, r13b
	mov	rsp, rsp
	mov	eax, 2
	cmove	ebx, eax
	test	ebx, ebx
	lea	rdi, [rdi]
	je	.label_27
	mov	edi, ebp
	lea	rdi, [rdi]
	lea	rsi, [rsp + 8]
	nop	
	call	strmode
	mov	byte ptr [rsp + 0x12], 0
	mov	rbp, rbp
	mov	edi, dword ptr [rsp + 0xd0]
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0xb4]
	call	strmode
	mov	byte ptr [rsp + 0xbe], 0
	nop	
	cmp	ebx, 3
	je	.label_42
	cmp	ebx, 2
	je	.label_44
	nop	
	cmp	ebx, 1
	jne	.label_26
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.63
	jmp	.label_48
.label_27:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.62
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rsp + 0x98]
	call	quotearg_style
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	xor	eax, eax
	nop	
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
	mov	rbp, rbp
	jmp	.label_52
.label_42:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rbx, rax
	mov	rsp, rsp
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rdx, rax
	mov	ecx, ebp
	mov	rsp, rsp
	and	ecx, 0xfff
	mov	edi, 1
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rsi, rbx
	lea	rdi, [rdi]
	lea	r8, [rsp + 9]
	call	__printf_chk
	jmp	.label_52
.label_44:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.64
.label_48:
	mov	rbp, rbp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	call	quotearg_style
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0xd0]
	mov	ecx, eax
	mov	rsp, rsp
	and	ecx, 0xfff
	mov	rbp, rbp
	mov	r9d, ebp
	mov	rbp, rbp
	and	r9d, 0xfff
	nop	
	lea	rax, [rsp + 9]
	mov	qword ptr [rsp], rax
	nop	
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rsp, rsp
	lea	r8, [rsp + 0xb5]
	call	__printf_chk
.label_52:
	mov	rbp, rbp
	mov	ebx, ebp
	mov	ebp, dword ptr [rsp + 0xd0]
.label_21:
	test	r15b, r15b
	lea	rdi, [rdi]
	je	.label_24
	nop	
	movzx	eax,  byte ptr [byte ptr [rip + diagnose_surprises]]
	lea	rdi, [rdi]
	and	eax, 1
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_24
	mov	eax, ebp
	lea	rsi, [rsi]
	and	eax, 0xf000
	cmp	eax, 0x4000
	sete	al
	mov	rcx,  qword ptr [word ptr [rip + change]]
	movzx	esi, al
	xor	edx, edx
	lea	rsi, [rsi]
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	edi, ebp
	lea	rsi, [rsi]
	call	mode_adjust
	mov	rbp, rbp
	mov	ebp, eax
	mov	rsp, rsp
	not	eax
	test	ebx, eax
	je	.label_24
	mov	rsp, rsp
	mov	edi, ebx
	lea	rsi, [rsi]
	lea	rsi, [rsp + 8]
	call	strmode
	mov	edi, ebp
	lea	rsi, [rsp + 0xb4]
	call	strmode
	mov	rbp, rbp
	mov	byte ptr [rsp + 0xbe], 0
	mov	byte ptr [rsp + 0x12], 0
	lea	rdi, [rdi]
	xor	r13d, r13d
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	r8, [rsp + 9]
	lea	rdi, [rdi]
	lea	r9, [rsp + 0xb5]
	call	error
	nop	word ptr [rax + rax]
.label_24:
	mov	al,  byte ptr [byte ptr [rip + recurse]]
	lea	rsi, [rsi]
	and	al, 1
	lea	rsi, [rsi]
	jne	.label_54
	mov	edx, 4
	mov	rdi, qword ptr [rsp + 0xc8]
	mov	rsi, r12
	call	rpl_fts_set
.label_54:
	lea	rsi, [rsi]
	test	r13b, r13b
	setne	bpl
.label_11:
	mov	rbp, rbp
	and	bpl, r14b
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0xc8]
	nop	
	call	rpl_fts_read
	mov	r12, rax
	mov	rsp, rsp
	test	r12, r12
	mov	rbp, rbp
	mov	r14b, bpl
	mov	rsp, rsp
	jne	.label_20
.label_61:
	mov	rbp, rbp
	call	__errno_location
	nop	
	mov	r14, rax
	mov	ebx, dword ptr [r14]
	mov	rsp, rsp
	test	ebx, ebx
	je	.label_9
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + force_silent]]
	xor	ebp, ebp
	and	al, 1
	jne	.label_9
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.49
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_9:
	mov	rdi, qword ptr [rsp + 0xc8]
	mov	rbp, rbp
	call	rpl_fts_close
	mov	rbp, rbp
	test	eax, eax
	je	.label_15
	mov	ebx, dword ptr [r14]
	nop	
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.50
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebx
	nop	
	mov	rdx, rcx
	call	error
.label_15:
	movzx	eax, bpl
	xor	eax, 1
	add	rsp, 0xd8
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_60:
	mov	rbp, rbp
	cmp	eax, 0xffffff7d
	lea	rsi, [rsi]
	je	.label_32
	cmp	eax, 0xffffff7e
	jne	.label_16
	mov	rbp, rbp
	xor	edi, edi
	call	usage
.label_32:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.10
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.16
	mov	r9d, OFFSET FLAT:.str.17_0
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_16:
	mov	edi, 1
	nop	
	call	usage
.label_26:
	nop	
	call	abort
.label_19:
	mov	rsp, rsp
	mov	ebx, ebp
	mov	rsp, rsp
	mov	rbp, r14
	test	rcx, rcx
	je	.label_34
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp + rax*8 - 8]
	mov	rbp, rbp
	jne	.label_34
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	r14, rax
	movsxd	rax, ebx
	nop	
	mov	rdi, qword ptr [rbp + rax*8 - 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, r14
	lea	rsi, [rsi]
	call	error
	lea	rsi, [rsi]
	mov	edi, 1
	call	usage
.label_34:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	rbp, rbp
	mov	edi, 1
	nop	
	call	usage
.label_43:
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbx, rax
	mov	rdi, rbp
	mov	rsp, rsp
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	error
	mov	edi, 1
	lea	rdi, [rdi]
	call	usage
	.section	.text
	.align	16
	#Procedure 0x402c10
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
	#Procedure 0x402c20
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c30

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
	je	.label_65
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_64
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_64
.label_65:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_67
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_64:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_66
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
.label_67:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_66:
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
	#Procedure 0x402d30

	.globl strmode
	.type strmode, @function
strmode:
	mov	eax, edi
	mov	rbp, rbp
	mov	ecx, eax
	and	ecx, 0xf000
	cmp	ecx, 0x5fff
	mov	rbp, rbp
	jle	.label_82
	lea	rdi, [rdi]
	cmp	ecx, 0x9fff
	mov	rbp, rbp
	jg	.label_71
	cmp	ecx, 0x6000
	je	.label_69
	lea	rdi, [rdi]
	mov	dl, 0x2d
	mov	rsp, rsp
	cmp	ecx, 0x8000
	lea	rsi, [rsi]
	je	.label_72
	mov	rbp, rbp
	jmp	.label_70
.label_82:
	cmp	ecx, 0x1000
	je	.label_84
	nop	
	cmp	ecx, 0x2000
	je	.label_85
	cmp	ecx, 0x4000
	jne	.label_70
	mov	dl, 0x64
	mov	rbp, rbp
	jmp	.label_72
.label_71:
	lea	rsi, [rsi]
	cmp	ecx, 0xa000
	mov	rbp, rbp
	je	.label_76
	lea	rdi, [rdi]
	cmp	ecx, 0xc000
	jne	.label_70
	nop	
	mov	dl, 0x73
	jmp	.label_72
.label_69:
	lea	rsi, [rsi]
	mov	dl, 0x62
	jmp	.label_72
.label_84:
	mov	rbp, rbp
	mov	dl, 0x70
	mov	rbp, rbp
	jmp	.label_72
.label_76:
	mov	dl, 0x6c
	jmp	.label_72
.label_70:
	mov	dl, 0x3f
	mov	rsp, rsp
	jmp	.label_72
.label_85:
	mov	rbp, rbp
	mov	dl, 0x63
.label_72:
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
	jne	.label_75
	mov	cl, 0x2d
.label_75:
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
	jne	.label_78
	mov	cl, 0x2d
.label_78:
	test	bl, 8
	jne	.label_81
	mov	rsp, rsp
	mov	dl, cl
.label_81:
	lea	rdi, [rdi]
	mov	byte ptr [rsi + 3], dl
	test	al, 0x20
	mov	cl, 0x72
	nop	
	jne	.label_83
	mov	cl, 0x2d
.label_83:
	mov	byte ptr [rsi + 4], cl
	test	al, 0x10
	mov	dl, 0x77
	mov	cl, 0x77
	jne	.label_68
	mov	rsp, rsp
	mov	cl, 0x2d
.label_68:
	mov	byte ptr [rsi + 5], cl
	mov	ecx, eax
	nop	
	and	ecx, 8
	lea	rsi, [rsi]
	lea	edi, [rcx*4 + 0x53]
	mov	cl, 0x78
	lea	rsi, [rsi]
	jne	.label_74
	nop	
	mov	cl, 0x2d
.label_74:
	mov	rsp, rsp
	test	bl, 4
	jne	.label_79
	lea	rdi, [rdi]
	mov	dil, cl
.label_79:
	lea	rsi, [rsi]
	mov	byte ptr [rsi + 6], dil
	test	al, 4
	jne	.label_86
	mov	r9b, 0x2d
.label_86:
	nop	
	mov	byte ptr [rsi + 7], r9b
	test	al, 2
	jne	.label_73
	mov	dl, 0x2d
.label_73:
	nop	
	mov	byte ptr [rsi + 8], dl
	and	eax, 1
	nop	
	jne	.label_77
	mov	rbp, rbp
	mov	r8b, 0x2d
.label_77:
	mov	rbp, rbp
	test	bl, 2
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	je	.label_80
	shl	eax, 5
	or	eax, 0x54
	mov	r8b, al
.label_80:
	mov	rbp, rbp
	mov	byte ptr [rsi + 9], r8b
	mov	byte ptr [rsi + 0xa], 0x20
	mov	byte ptr [rsi + 0xb], 0
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ed0
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
	#Procedure 0x402ee0

	.globl mode_compile
	.type mode_compile, @function
mode_compile:
	lea	rdi, [rdi]
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rbp, rbp
	mov	bl, byte ptr [r14]
	mov	al, bl
	mov	rbp, rbp
	and	al, 0xf8
	movzx	eax, al
	cmp	eax, 0x30
	mov	rsp, rsp
	jne	.label_105
	mov	rbp, rbp
	xor	ebp, ebp
	mov	rbp, rbp
	xor	eax, eax
	mov	rdx, r14
	nop	word ptr cs:[rax + rax]
.label_104:
	lea	rsi, [rsi]
	movsx	ecx, bl
	nop	
	lea	ebp, [rcx + rbp*8 - 0x30]
	cmp	ebp, 0xfff
	lea	rsi, [rsi]
	ja	.label_92
	lea	rdi, [rdi]
	mov	bl, byte ptr [rdx + 1]
	inc	rdx
	lea	rsi, [rsi]
	mov	cl, bl
	mov	rbp, rbp
	and	cl, 0xf8
	movzx	ecx, cl
	cmp	ecx, 0x30
	lea	rdi, [rdi]
	je	.label_104
	xor	eax, eax
	test	bl, bl
	lea	rsi, [rsi]
	jne	.label_92
	sub	rdx, r14
	mov	eax, ebp
	mov	rsp, rsp
	and	eax, 0xc00
	or	eax, 0x3ff
	cmp	rdx, 5
	mov	rbp, rbp
	mov	ebx, 0xfff
	cmovl	ebx, eax
	mov	edi, 0x20
	call	xmalloc
	mov	byte ptr [rax], 0x3d
	lea	rsi, [rsi]
	mov	byte ptr [rax + 1], 1
	mov	dword ptr [rax + 4], 0xfff
	lea	rsi, [rsi]
	mov	dword ptr [rax + 8], ebp
	mov	rsp, rsp
	mov	dword ptr [rax + 0xc], ebx
	mov	rbp, rbp
	mov	byte ptr [rax + 0x11], 0
	jmp	.label_92
.label_105:
	lea	rsi, [rsi]
	lea	rax, [r14 + 1]
	mov	rbp, rbp
	mov	edi, 1
	jmp	.label_114
	nop	dword ptr [rax + rax]
.label_91:
	lea	rsi, [rsi]
	add	rdi, rdx
	lea	rsi, [rsi]
	mov	bl, byte ptr [rax]
	inc	rax
.label_114:
	mov	rbp, rbp
	movsx	ecx, bl
	cmp	ecx, 0x2c
	lea	rdi, [rdi]
	jle	.label_115
	movzx	ecx, bl
	cmp	ecx, 0x2d
	je	.label_118
	cmp	ecx, 0x3d
	lea	rsi, [rsi]
	mov	edx, 1
	je	.label_91
	jmp	.label_88
	nop	word ptr cs:[rax + rax]
.label_115:
	movzx	ecx, bl
	cmp	ecx, 0x2b
	nop	
	mov	edx, 1
	je	.label_91
	test	bl, bl
	je	.label_97
.label_88:
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rdi, [rdi]
	jmp	.label_91
	nop	dword ptr [rax]
.label_118:
	mov	edx, 1
	jmp	.label_91
.label_97:
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rsp, rsp
	shr	rax, 0x3b
	lea	rsi, [rsi]
	jne	.label_102
	shl	rdi, 4
	call	xmalloc
	lea	rsi, [rsi]
	xor	r8d, r8d
	jmp	.label_112
.label_98:
	inc	rdi
	mov	rbp, rbp
	mov	r14, rdi
	nop	word ptr [rax + rax]
.label_112:
	xor	r11d, r11d
	nop	
	jmp	.label_93
	nop	word ptr cs:[rax + rax]
.label_99:
	mov	rbp, rbp
	or	r11d, 0xfff
	inc	r14
.label_93:
	mov	bpl, byte ptr [r14]
	movsx	ecx, bpl
	cmp	ecx, 0x66
	lea	rdi, [rdi]
	jg	.label_89
	cmp	ecx, 0x60
	jle	.label_96
	cmp	ecx, 0x61
	je	.label_99
	jmp	.label_94
	nop	dword ptr [rax + rax]
.label_89:
	nop	
	cmp	ecx, 0x67
	mov	rsp, rsp
	je	.label_101
	cmp	ecx, 0x6f
	je	.label_103
	lea	rdi, [rdi]
	cmp	ecx, 0x75
	lea	rdi, [rdi]
	jne	.label_94
	or	r11d, 0x9c0
	inc	r14
	nop	
	jmp	.label_93
.label_101:
	or	r11d, 0x438
	inc	r14
	jmp	.label_93
.label_103:
	mov	rsp, rsp
	or	r11d, 0x207
	inc	r14
	jmp	.label_93
	nop	word ptr cs:[rax + rax]
.label_96:
	cmp	ecx, 0x2b
	je	.label_87
	cmp	ecx, 0x2d
	mov	rbp, rbp
	je	.label_87
	nop	
	cmp	ecx, 0x3d
	jne	.label_94
	nop	word ptr [rax + rax]
.label_87:
	lea	rsi, [rsi]
	lea	rdi, [r14 + 1]
	mov	rsp, rsp
	mov	bl, byte ptr [r14 + 1]
	movsx	edx, bl
	nop	
	mov	r9b, 1
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	cmp	edx, 0x66
	jg	.label_107
	nop	
	add	edx, -0x30
	mov	rbp, rbp
	cmp	edx, 8
	jae	.label_109
	nop	word ptr cs:[rax + rax]
.label_119:
	nop	
	movsx	edx, bl
	lea	ecx, [rdx + rcx*8 - 0x30]
	cmp	ecx, 0xfff
	lea	rsi, [rsi]
	ja	.label_94
	nop	
	mov	bl, byte ptr [rdi + 1]
	inc	rdi
	mov	rbp, rbp
	mov	dl, bl
	mov	rbp, rbp
	and	dl, 0xf8
	mov	rbp, rbp
	movzx	edx, dl
	cmp	edx, 0x30
	je	.label_119
	test	r11d, r11d
	jne	.label_94
	lea	rsi, [rsi]
	mov	r9b, 1
	mov	rsp, rsp
	mov	r11d, 0xfff
	lea	rdi, [rdi]
	test	bl, bl
	je	.label_120
	movzx	edx, bl
	cmp	edx, 0x2c
	mov	r10d, 0xfff
	je	.label_95
	lea	rdi, [rdi]
	jmp	.label_94
	nop	word ptr cs:[rax + rax]
.label_107:
	cmp	edx, 0x67
	je	.label_116
	cmp	edx, 0x6f
	je	.label_117
	nop	
	cmp	edx, 0x75
	jne	.label_109
	lea	rsi, [rsi]
	add	r14, 2
	nop	
	mov	r9b, 3
	mov	rbp, rbp
	xor	r10d, r10d
	mov	ecx, 0x1c0
	mov	rbp, rbp
	mov	rdi, r14
	jmp	.label_95
	nop	dword ptr [rax]
.label_111:
	mov	bl, byte ptr [rdi + 1]
	mov	rsp, rsp
	inc	rdi
	lea	rdi, [rdi]
	mov	r9b, dl
.label_109:
	movsx	esi, bl
	mov	rbp, rbp
	xor	r10d, r10d
	lea	edx, [rsi - 0x72]
	cmp	edx, 6
	ja	.label_100
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_106]]
.label_902:
	or	ecx, 0x124
	jmp	.label_108
.label_100:
	mov	dl, 2
	nop	
	cmp	esi, 0x58
	je	.label_111
	jmp	.label_95
.label_903:
	lea	rsi, [rsi]
	or	ecx, 0xc00
	jmp	.label_108
.label_904:
	or	ecx, 0x200
	mov	rsp, rsp
	jmp	.label_108
.label_905:
	lea	rdi, [rdi]
	or	ecx, 0x92
	mov	rsp, rsp
	jmp	.label_108
.label_906:
	mov	rsp, rsp
	or	ecx, 0x49
	nop	dword ptr [rax]
.label_108:
	nop	
	mov	dl, r9b
	mov	rbp, rbp
	jmp	.label_111
.label_120:
	lea	rdi, [rdi]
	mov	r10d, 0xfff
	jmp	.label_95
.label_116:
	add	r14, 2
	mov	r9b, 3
	lea	rsi, [rsi]
	xor	r10d, r10d
	nop	
	mov	ecx, 0x38
	mov	rdi, r14
	jmp	.label_95
.label_117:
	mov	rbp, rbp
	add	r14, 2
	lea	rsi, [rsi]
	mov	r9b, 3
	lea	rdi, [rdi]
	xor	r10d, r10d
	mov	ecx, 7
	mov	rsp, rsp
	mov	rdi, r14
	nop	word ptr [rax + rax]
.label_95:
	mov	rdx, r8
	lea	rsi, [rsi]
	shl	rdx, 4
	mov	byte ptr [rax + rdx], bpl
	mov	byte ptr [rax + rdx + 1], r9b
	lea	rdi, [rdi]
	mov	dword ptr [rax + rdx + 4], r11d
	lea	rsi, [rsi]
	mov	dword ptr [rax + rdx + 8], ecx
	nop	
	test	r10d, r10d
	lea	rsi, [rsi]
	jne	.label_113
	cmp	r11d, 1
	mov	rsp, rsp
	sbb	r10d, r10d
	lea	rsi, [rsi]
	or	r10d, r11d
	lea	rsi, [rsi]
	and	r10d, ecx
.label_113:
	inc	r8
	mov	rbp, rbp
	mov	dword ptr [rax + rdx + 0xc], r10d
	lea	rsi, [rsi]
	movsx	ebp, byte ptr [rdi]
	movzx	ecx, bpl
	cmp	ebp, 0x2c
	lea	rdi, [rdi]
	jle	.label_110
	mov	rsp, rsp
	cmp	ecx, 0x2d
	lea	rsi, [rsi]
	mov	r14, rdi
	je	.label_87
	lea	rsi, [rsi]
	cmp	ecx, 0x3d
	mov	r14, rdi
	lea	rdi, [rdi]
	je	.label_87
	jmp	.label_94
	nop	word ptr cs:[rax + rax]
.label_110:
	nop	
	cmp	ecx, 0x2b
	mov	rsp, rsp
	mov	r14, rdi
	je	.label_87
	test	bpl, bpl
	je	.label_90
	cmp	ecx, 0x2c
	nop	
	je	.label_98
.label_94:
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	xor	eax, eax
.label_92:
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
.label_90:
	shl	r8, 4
	mov	rbp, rbp
	mov	byte ptr [rax + r8 + 1], 0
	nop	
	jmp	.label_92
.label_102:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4033c0

	.globl mode_create_from_ref
	.type mode_create_from_ref, @function
mode_create_from_ref:
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x90
	mov	rsp, rsp
	mov	rax, rdi
	nop	
	lea	rdx, [rsp]
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	rsi, rax
	call	__xstat
	mov	ecx, eax
	mov	rbp, rbp
	xor	eax, eax
	test	ecx, ecx
	nop	
	jne	.label_121
	mov	ebx, dword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	edi, 0x20
	mov	rsp, rsp
	call	xmalloc
	nop	
	mov	byte ptr [rax], 0x3d
	mov	byte ptr [rax + 1], 1
	mov	dword ptr [rax + 4], 0xfff
	mov	dword ptr [rax + 8], ebx
	lea	rsi, [rsi]
	mov	dword ptr [rax + 0xc], 0xfff
	mov	byte ptr [rax + 0x11], 0
.label_121:
	add	rsp, 0x90
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403440

	.globl mode_adjust
	.type mode_adjust, @function
mode_adjust:
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	mov	rsp, rsp
	push	r13
	push	r12
	push	rbx
	mov	rsp, rsp
	mov	qword ptr [rsp - 8], r8
	and	edi, 0xfff
	nop	
	mov	al, byte ptr [rcx + 1]
	xor	r13d, r13d
	mov	rbp, rbp
	test	al, al
	je	.label_122
	lea	rsi, [rsi]
	xor	r13d, r13d
	test	sil, sil
	lea	rdi, [rdi]
	mov	r9d, 0xc00
	mov	rbp, rbp
	cmove	r9d, r13d
	not	edx
	mov	r10d, r9d
	lea	rdi, [rdi]
	not	r10d
	movzx	r12d, sil
	nop	
	mov	r14d, 0x92
	mov	rbp, rbp
	mov	r15d, 0x49
	nop	dword ptr [rax + rax]
.label_127:
	movsx	ebp, al
	mov	ebx, dword ptr [rcx + 4]
	mov	esi, dword ptr [rcx + 8]
	nop	
	mov	r8d, dword ptr [rcx + 0xc]
	cmp	ebp, 2
	lea	rsi, [rsi]
	je	.label_125
	mov	rbp, rbp
	cmp	ebp, 3
	jne	.label_124
	lea	rsi, [rsi]
	and	esi, edi
	mov	rsp, rsp
	mov	ebp, esi
	mov	rbp, rbp
	and	ebp, 0x124
	lea	rdi, [rdi]
	mov	eax, 0x124
	cmovne	ebp, eax
	mov	rbp, rbp
	mov	r11d, esi
	and	r11d, 0x92
	mov	rsp, rsp
	cmovne	r11d, r14d
	nop	
	or	r11d, esi
	and	esi, 0x49
	cmovne	esi, r15d
	or	esi, ebp
	lea	rdi, [rdi]
	or	esi, r11d
	jmp	.label_124
	nop	word ptr cs:[rax + rax]
.label_125:
	mov	ebp, edi
	and	ebp, 0x49
	mov	eax, esi
	or	eax, 0x49
	or	ebp, r12d
	cmovne	esi, eax
.label_124:
	test	ebx, ebx
	mov	rbp, rbp
	mov	eax, edx
	cmovne	eax, ebx
	mov	ebp, r8d
	nop	
	or	ebp, r10d
	and	ebp, esi
	and	ebp, eax
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rcx]
	cmp	esi, 0x2b
	lea	rdi, [rdi]
	je	.label_129
	cmp	esi, 0x2d
	je	.label_128
	mov	rbp, rbp
	cmp	esi, 0x3d
	lea	rsi, [rsi]
	jne	.label_123
	not	r8d
	nop	
	and	r8d, r9d
	mov	rsp, rsp
	test	ebx, ebx
	mov	rbp, rbp
	mov	eax, ebx
	not	eax
	cmove	eax, ebx
	or	eax, r8d
	lea	rsi, [rsi]
	mov	esi, eax
	not	esi
	and	esi, 0xfff
	or	r13d, esi
	and	eax, edi
	or	ebp, eax
	nop	
	mov	edi, ebp
	lea	rdi, [rdi]
	jmp	.label_123
	nop	dword ptr [rax + rax]
.label_128:
	lea	rdi, [rdi]
	or	r13d, ebp
	nop	
	not	ebp
	and	edi, ebp
	jmp	.label_123
	nop	dword ptr [rax]
.label_129:
	or	r13d, ebp
	mov	rbp, rbp
	or	edi, ebp
.label_123:
	mov	rsp, rsp
	mov	al, byte ptr [rcx + 0x11]
	add	rcx, 0x10
	lea	rsi, [rsi]
	test	al, al
	jne	.label_127
.label_122:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp - 8]
	mov	rsp, rsp
	test	rax, rax
	je	.label_126
	mov	dword ptr [rax], r13d
.label_126:
	mov	eax, edi
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rbp, rbp
	pop	r13
	nop	
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403600

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
	je	.label_130
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
	jl	.label_132
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_132
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
	jne	.label_131
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_131:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_132:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_130:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_4
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
	#Procedure 0x4036f0
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
	#Procedure 0x403740
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
	#Procedure 0x403760
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
	#Procedure 0x403780
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
	#Procedure 0x4037f0
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
	#Procedure 0x403810
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
	je	.label_133
	test	rdx, rdx
	nop	
	je	.label_133
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_133:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403850
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
	#Procedure 0x403900

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
.label_253:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	ecx, r15d
	lea	rdi, [rdi]
	cmp	r15d, 0xa
	ja	.label_255
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_136]]
.label_914:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.11
	nop	
	mov	esi, r15d
	mov	r14, r10
	nop	
	mov	bl, r8b
	call	gettext_quote
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r15d
	mov	rsp, rsp
	call	gettext_quote
	mov	r8b, bl
	mov	rsp, rsp
	mov	r10, r14
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x100], rax
.label_915:
	mov	byte ptr [rsp + 0x43], r8b
	mov	r13, rbp
	nop	
	test	r12b, 1
	nop	
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	rdx, qword ptr [rsp + 0x78]
	jne	.label_163
	mov	rbp, rbp
	mov	al, byte ptr [rdx]
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	mov	ecx, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], rcx
	je	.label_163
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	nop	dword ptr [rax]
.label_183:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_177
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rcx + rsi], al
.label_177:
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + rcx + 1]
	mov	rsp, rsp
	inc	rcx
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_183
.label_163:
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
	jmp	.label_194
.label_907:
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
	jmp	.label_194
.label_910:
	lea	rsi, [rsi]
	mov	al, 1
.label_908:
	mov	rbp, rbp
	mov	r12b, 1
.label_911:
	mov	rbp, rbp
	test	r12b, 1
	mov	cl, 1
	nop	
	je	.label_218
	lea	rsi, [rsi]
	mov	cl, al
.label_218:
	mov	rsp, rsp
	mov	al, cl
.label_909:
	mov	r9d, 2
	test	r12b, 1
	mov	rsp, rsp
	jne	.label_224
	test	r10, r10
	je	.label_230
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx], 0x27
	mov	rsp, rsp
	mov	ecx, 1
	mov	rsp, rsp
	jmp	.label_153
.label_224:
	xor	ecx, ecx
	jmp	.label_153
.label_912:
	mov	rsp, rsp
	mov	r9d, 5
	test	r12b, 1
	jne	.label_240
	lea	rdi, [rdi]
	test	r10, r10
	je	.label_246
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], 0x22
	mov	rsp, rsp
	mov	eax, 1
	jmp	.label_158
.label_913:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xf0], rax
	mov	sil, 1
	jmp	.label_194
.label_230:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_153:
	nop	
	mov	qword ptr [rsp + 0x58], rcx
	nop	
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbp, rbp
	mov	ecx, 1
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
	mov	dil, al
	mov	sil, r12b
	jmp	.label_194
.label_240:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_158
.label_246:
	lea	rdi, [rdi]
	mov	eax, 1
.label_158:
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10_0
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
.label_194:
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
	jmp	.label_244
	nop	word ptr cs:[rax + rax]
.label_172:
	nop	
	inc	rdi
.label_244:
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_219
	nop	
	cmp	rdi, rbp
	mov	rsp, rsp
	jne	.label_221
	jmp	.label_226
	nop	dword ptr [rax + rax]
.label_219:
	mov	r13, -1
	lea	rsi, [rsi]
	cmp	byte ptr [r11 + rdi], 0
	je	.label_229
.label_221:
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_235
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_237
	cmp	rbp, -1
	lea	rsi, [rsi]
	jne	.label_237
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
.label_237:
	mov	rsp, rsp
	cmp	rbx, rbp
	lea	rsi, [rsi]
	jbe	.label_147
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_151
	nop	dword ptr [rax + rax]
.label_235:
	nop	
	mov	dword ptr [rsp + 0x10c], 0
	lea	rdi, [rdi]
	jmp	.label_151
	nop	word ptr cs:[rax + rax]
.label_147:
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
	jne	.label_179
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
	je	.label_151
	jmp	.label_142
.label_179:
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
.label_151:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_200
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	nop	
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_207]]
.label_926:
	mov	rsp, rsp
	test	rdi, rdi
	mov	rbp, rbp
	jne	.label_155
	mov	rbp, rbp
	jmp	.label_216
.label_930:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	cmp	rbp, -1
	nop	
	je	.label_217
	lea	rdi, [rdi]
	test	rdi, rdi
	nop	
	jne	.label_220
	nop	
	cmp	rbp, 1
	je	.label_216
	xor	r13d, r13d
	jmp	.label_157
.label_919:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xc3], 0
	je	.label_231
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_142
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_241
	mov	al, r14b
	and	al, 1
	jne	.label_245
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x58], r10
	nop	
	jae	.label_192
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x27
.label_192:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	nop	
	jae	.label_257
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_257:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_141
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_141:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	add	rax, 3
	mov	rsp, rsp
	mov	r14b, 1
	mov	rbp, rbp
	mov	rcx, rax
	jmp	.label_140
.label_920:
	mov	rbp, rbp
	mov	bl, 0x62
	mov	rsp, rsp
	jmp	.label_156
.label_921:
	lea	rsi, [rsi]
	mov	cl, 0x74
	jmp	.label_160
.label_922:
	mov	rsp, rsp
	mov	bl, 0x76
	nop	
	jmp	.label_156
.label_923:
	mov	bl, 0x66
	jmp	.label_156
.label_924:
	lea	rsi, [rsi]
	mov	cl, 0x72
	jmp	.label_160
.label_927:
	mov	al, 1
	mov	qword ptr [rsp + 0x68], rax
	lea	rdi, [rdi]
	cmp	r9d, 2
	jne	.label_169
	cmp	byte ptr [rsp + 0xe7], 0
	nop	
	jne	.label_171
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
	jae	.label_190
	nop	
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_190:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_134
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x5c
.label_134:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_201
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_201:
	add	qword ptr [rsp + 0x58], 3
	xor	r14d, r14d
.label_169:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_157
.label_928:
	cmp	r9d, 5
	lea	rdi, [rdi]
	je	.label_215
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_155
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_155
	mov	rbp, rbp
	jmp	.label_225
.label_929:
	lea	rdi, [rdi]
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_227
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_232
	lea	rdi, [rdi]
	jmp	.label_236
.label_200:
	mov	qword ptr [rsp + 0x80], r9
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x43], r8b
	mov	qword ptr [rsp + 0x110], r10
	cmp	qword ptr [rsp + 0xb8], 1
	jne	.label_239
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
.label_150:
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
	ja	.label_139
	lea	rdi, [rdi]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_139
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_157
.label_217:
	test	rdi, rdi
	jne	.label_162
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_162
.label_216:
	mov	dl, 1
.label_925:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x66], 0
	lea	rsi, [rsi]
	je	.label_165
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, dl
	mov	rsp, rsp
	jmp	.label_157
.label_231:
	cmp	dword ptr [rsp + 0x3c], 0
	jne	.label_172
	jmp	.label_155
.label_227:
	cmp	byte ptr [rsp + 0x57], 0
	mov	cl, r15b
	je	.label_160
.label_232:
	xor	eax, eax
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_178
.label_160:
	cmp	byte ptr [rsp + 0x66], 0
	mov	bl, cl
	lea	rdi, [rdi]
	je	.label_181
.label_156:
	xor	eax, eax
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc3], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_157
	lea	rsi, [rsi]
	jmp	.label_159
.label_239:
	mov	qword ptr [rsp + 0x98], 0
	cmp	rbp, -1
	jne	.label_189
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
.label_189:
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
.label_196:
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
	je	.label_228
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x110]
	mov	rsp, rsp
	movabs	rsi, 0x20000002b
	je	.label_234
	lea	rsi, [rsi]
	cmp	rbp, -2
	nop	
	mov	rdi, qword ptr [rsp + 0xa8]
	je	.label_243
	lea	rsi, [rsi]
	cmp	rbp, 1
	seta	al
	lea	rdi, [rdi]
	and	al, byte ptr [rsp + 0x77]
	movzx	eax, al
	nop	
	cmp	eax, 1
	jne	.label_250
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	lea	rax, [rcx + rax]
	nop	
	mov	ecx, 1
	nop	
.label_146:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_138
	lea	rdi, [rdi]
	bt	rsi, rdx
	jb	.label_180
.label_138:
	lea	rsi, [rsi]
	inc	rcx
	mov	rbp, rbp
	cmp	rcx, rbp
	jb	.label_146
.label_250:
	nop	
	mov	edi, dword ptr [rsp + 0xc4]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	nop	
	jne	.label_242
	xor	r13d, r13d
.label_242:
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
	je	.label_196
	mov	rsp, rsp
	jmp	.label_150
.label_162:
	lea	rsi, [rsi]
	mov	rbp, -1
	mov	rbp, rbp
	xor	r13d, r13d
	jmp	.label_157
.label_215:
	cmp	dword ptr [rsp + 0x44], 0
	lea	rdi, [rdi]
	je	.label_155
	lea	rcx, [rdi + 2]
	mov	rsp, rsp
	cmp	rcx, rbp
	jae	.label_155
	mov	rbp, rbp
	movzx	eax, byte ptr [rdi + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_155
	lea	rsi, [rsi]
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	edx, 0x3e
	ja	.label_188
	nop	
	movabs	rsi, 0x7000a38200000000
	mov	rsp, rsp
	bt	rsi, rdx
	mov	rsp, rsp
	jae	.label_191
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_198
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_203
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rsi], 0x3f
.label_203:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_211
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x22
.label_211:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_137
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rsi + rax], 0x22
.label_137:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 3]
	cmp	rax, r10
	nop	
	jae	.label_195
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x3f
.label_195:
	mov	rbp, rbp
	add	qword ptr [rsp + 0x58], 4
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	lea	rdi, [rdi]
	xor	r13d, r13d
	jmp	.label_157
.label_155:
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_157:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x65], 0
	lea	rsi, [rsi]
	je	.label_247
	cmp	qword ptr [rsp + 0x150], 0
	mov	rsp, rsp
	jne	.label_252
	lea	rsi, [rsi]
	jmp	.label_256
.label_247:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_256
.label_252:
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
	jne	.label_258
	mov	rcx, qword ptr [rsp + 0x150]
	nop	
	and	esi, dword ptr [rcx + rdx*4]
	mov	rsp, rsp
	jmp	.label_143
	nop	word ptr cs:[rax + rax]
.label_256:
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rdi, [rdi]
	test	cl, cl
.label_143:
	mov	rbp, rbp
	mov	bl, r15b
	je	.label_178
	mov	rsp, rsp
	jmp	.label_159
.label_258:
	mov	bl, r15b
.label_159:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_142
	nop	
	cmp	r9d, 2
	jne	.label_176
	lea	rdi, [rdi]
	mov	al, r14b
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_176
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_204
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_204:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	cmp	rax, r10
	jae	.label_175
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_175:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_170
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_170:
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_176:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_186
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x5c
.label_186:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	jmp	.label_209
.label_220:
	xor	r13d, r13d
	nop	
	jmp	.label_157
.label_139:
	mov	rsp, rsp
	add	rax, rdi
	mov	qword ptr [rsp + 0xe8], rax
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_197
	nop	dword ptr [rax + rax]
.label_213:
	inc	qword ptr [rsp + 0x58]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_197:
	test	cl, cl
	je	.label_206
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0x10c]
	test	dl, 1
	mov	rbp, rbp
	je	.label_208
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_214
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x5c
.label_214:
	lea	rsi, [rsi]
	inc	qword ptr [rsp + 0x58]
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_208
	nop	dword ptr [rax]
.label_206:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_142
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_233
	mov	al, r14b
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_233
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_152
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rdx], 0x27
.label_152:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	inc	rax
	cmp	rax, r10
	jae	.label_248
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], 0x24
.label_248:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_193
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rdx + rax], 0x27
.label_193:
	mov	rsp, rsp
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_233:
	cmp	qword ptr [rsp + 0x58], r10
	lea	rsi, [rsi]
	jae	.label_144
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rax + rdx], 0x5c
.label_144:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_154
	mov	dl, r15b
	shr	dl, 6
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], dl
.label_154:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_164
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
.label_164:
	nop	
	add	qword ptr [rsp + 0x58], 3
	mov	rbp, rbp
	and	r15b, 7
	nop	
	or	r15b, 0x30
	mov	rsp, rsp
	mov	al, 1
.label_208:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xe8], rdx
	jbe	.label_178
	lea	rsi, [rsi]
	test	r14b, 1
	je	.label_184
	mov	bl, al
	nop	
	and	bl, 1
	lea	rdi, [rdi]
	jne	.label_184
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_187
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_187:
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	inc	rsi
	mov	rsp, rsp
	cmp	rsi, r10
	lea	rsi, [rsi]
	jae	.label_149
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdi + rsi], 0x27
	mov	rbp, rbp
	mov	rdi, rbx
.label_149:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_184:
	nop	
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_213
	mov	rsi, qword ptr [rsp + 0xb0]
	nop	
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rsi + rdi], r15b
	lea	rdi, [rdi]
	mov	rdi, rbx
	jmp	.label_213
	nop	word ptr cs:[rax + rax]
.label_178:
	test	r14b, 1
	lea	rsi, [rsi]
	je	.label_222
	mov	rsp, rsp
	and	al, 1
	jne	.label_222
	cmp	qword ptr [rsp + 0x58], r10
	mov	rsp, rsp
	jae	.label_205
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_205:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_135
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_135:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_222:
	mov	rsp, rsp
	mov	bl, r15b
.label_209:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_202
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], bl
.label_202:
	nop	
	inc	qword ptr [rsp + 0x58]
	nop	
	shl	r13b, 7
	mov	rsp, rsp
	sar	r13b, 7
	and	r13b, r8b
	mov	rbp, rbp
	mov	r8b, r13b
	jmp	.label_172
.label_241:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	jmp	.label_140
.label_245:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
.label_140:
	lea	rsi, [rsi]
	cmp	rcx, r10
	lea	rsi, [rsi]
	jae	.label_145
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax + rcx], 0x5c
.label_145:
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
	je	.label_223
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_161
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	cmp	edx, 9
	lea	rsi, [rsi]
	ja	.label_167
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_168
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x30
.label_168:
	lea	rsi, [rsi]
	lea	rdx, [rcx + 2]
	lea	rdi, [rdi]
	cmp	rdx, r10
	nop	
	jae	.label_173
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rdx], 0x30
.label_173:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x58], rcx
	jmp	.label_157
.label_223:
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_157
.label_161:
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	
	jmp	.label_157
.label_167:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_157
.label_234:
	xor	r13d, r13d
.label_228:
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_150
.label_243:
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	rbp, rcx
	lea	rsi, [rsi]
	jbe	.label_199
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
.label_254:
	cmp	byte ptr [r11 + rcx], 0
	nop	
	je	.label_210
	mov	rbp, rbp
	lea	rcx, [rax + rdi + 1]
	nop	
	inc	rax
	mov	rbp, rbp
	cmp	rcx, rbp
	mov	rsp, rsp
	jb	.label_254
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_150
.label_199:
	mov	rsp, rsp
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_150
.label_210:
	nop	
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_150
.label_188:
	xor	r13d, r13d
	jmp	.label_157
.label_191:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_157
.label_226:
	nop	
	mov	r13, rdi
.label_229:
	mov	rsp, rsp
	cmp	r9d, 2
	mov	rsp, rsp
	setne	al
	cmp	qword ptr [rsp + 0x58], 0
	lea	rsi, [rsi]
	setne	dl
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_238
	mov	rsp, rsp
	or	al, dl
	mov	rbp, rbp
	je	.label_251
.label_238:
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
	je	.label_148
	mov	rsp, rsp
	or	al, dl
	lea	rsi, [rsi]
	jne	.label_148
	test	r8b, 1
	mov	rbp, rbp
	jne	.label_212
	cmp	qword ptr [rsp + 0xd8], 0
	je	.label_148
	test	r10, r10
	mov	r15d, r9d
	mov	rbp, rbp
	mov	al, bl
	nop	
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0xd8]
	lea	rsi, [rsi]
	je	.label_253
.label_148:
	mov	rdx, qword ptr [rsp + 0x20]
	test	rdx, rdx
	je	.label_166
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rsi, [rsi]
	jne	.label_166
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	test	al, al
	je	.label_166
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_182:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_174
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rsi], al
.label_174:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	mov	rbp, rbp
	jne	.label_182
.label_166:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_185
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0
	lea	rdi, [rdi]
	jmp	.label_185
.label_165:
	lea	rdi, [rdi]
	mov	r9d, 2
	nop	
	jmp	.label_142
.label_180:
	mov	rsp, rsp
	mov	r9d, 2
	nop	
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rdi, [rdi]
	jmp	.label_142
.label_251:
	nop	
	mov	rbp, r13
	jmp	.label_142
.label_181:
	lea	rdi, [rdi]
	mov	r9d, 2
.label_142:
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
.label_249:
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rax
.label_185:
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
.label_212:
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
	jmp	.label_249
.label_171:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_142
.label_236:
	mov	r9d, 2
	lea	rsi, [rsi]
	jmp	.label_142
.label_225:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_142
.label_198:
	lea	rsi, [rsi]
	mov	r9d, 5
	mov	rbp, rbp
	jmp	.label_142
.label_255:
	nop	
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e80
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
	#Procedure 0x404fc0
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
	je	.label_259
	mov	qword ptr [rax], rbx
.label_259:
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
	#Procedure 0x405110
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_260
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_264:
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
	jl	.label_264
.label_260:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_263
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_261]], OFFSET FLAT:slot0
.label_263:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_262
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_262:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051d0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x4051e0

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
	js	.label_268
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_270
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_266
.label_270:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_271
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
	jne	.label_267
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_267:
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
.label_266:
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
	ja	.label_265
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
	je	.label_269
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_269:
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
.label_265:
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
.label_268:
	lea	rdi, [rdi]
	call	abort
.label_271:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x405450
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405460
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
	#Procedure 0x405490
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
	#Procedure 0x4054c0

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
	je	.label_272
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
.label_272:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405550
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
	je	.label_273
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
.label_273:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055f0

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
	je	.label_274
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
.label_274:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405680
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
	je	.label_275
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
.label_275:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4056f0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_276]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_277]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_278]]
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
	#Procedure 0x405790
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_276]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_277]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_278]]
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
	#Procedure 0x405830

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_276]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_277]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_278]]
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
	#Procedure 0x4058a0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_276]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_277]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_278]]
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
	#Procedure 0x405910

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
	je	.label_279
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
.label_279:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4059f0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_276]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_277]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_278]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_280
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_280
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
.label_280:
	nop	
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405a80
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_276]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_277]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_278]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_281
	test	rdx, rdx
	je	.label_281
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
.label_281:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b10
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_276]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_277]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_278]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_282
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_282
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
.label_282:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405bb0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_276]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_277]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_278]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_283
	test	rsi, rsi
	je	.label_283
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
.label_283:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c50
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c60
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
	#Procedure 0x405c80
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
	#Procedure 0x405ca0

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
	#Procedure 0x405cd0

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
	jne	.label_286
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_284
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_285
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_285
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_285
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_285
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_285
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_285
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_286
	mov	eax, OFFSET FLAT:.str.15
	jmp	.label_286
.label_284:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_285
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_285
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_285
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_285
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_285
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_285
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_287
.label_285:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_286:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_287:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_286
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_286
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405e40

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
	jne	.label_288
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 8], rax
	mov	rsp, rsp
	mov	rax, rbx
.label_288:
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ea0

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
	mov	edx, OFFSET FLAT:.str_5
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
	mov	edx, OFFSET FLAT:.str.1_2
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
	mov	esi, OFFSET FLAT:.str.3_0
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
	ja	.label_298
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_289]]
.label_936:
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
.label_298:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_292
.label_937:
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5_0
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
.label_938:
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
.label_939:
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
	jmp	.label_293
.label_940:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
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
	jmp	.label_291
.label_941:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
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
	jmp	.label_290
.label_942:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_1
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
.label_290:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_291:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_293:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_297
.label_944:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_292:
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
.label_943:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_0
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
.label_297:
	mov	rbp, rbp
	call	__fprintf_chk
.label_935:
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
	#Procedure 0x406290
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_299:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_299
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4062c0
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_301:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_300
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_302
	nop	word ptr cs:[rax + rax]
.label_300:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_302:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_303
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_301
.label_303:
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
	#Procedure 0x406350

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_304
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
.label_304:
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
.label_306:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_305
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_307
	nop	dword ptr [rax + rax]
.label_305:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_307:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_308
	inc	r9
	cmp	r9, 0xa
	jb	.label_306
.label_308:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406490
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
	mov	edx, OFFSET FLAT:.str.15_0
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
	mov	esi, OFFSET FLAT:.str.19_0
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
	#Procedure 0x406520
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
	jb	.label_309
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_310
	test	rax, rax
	je	.label_309
.label_310:
	nop	
	pop	rbx
	ret	
.label_309:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406570

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_311
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_312
.label_311:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_312:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4065a0
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
	jb	.label_314
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_313
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_313
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_313:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_315
	test	rax, rax
	je	.label_314
.label_315:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_314:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406620

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_316
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_316
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_316:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_317
	test	rax, rax
	nop	
	je	.label_318
.label_317:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_318:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406670
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_323
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_319
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_325
.label_323:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_322
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_322:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_324
.label_325:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_321
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_321
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_321:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_320
	test	rax, rax
	mov	rbp, rbp
	je	.label_319
.label_320:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_319:
	call	xalloc_die
.label_324:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406750
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_326
	test	rax, rax
	mov	rbp, rbp
	je	.label_327
.label_326:
	pop	rbx
	ret	
.label_327:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406770

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_331
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_332
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_330
	call	free
	xor	eax, eax
	jmp	.label_328
.label_331:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_329
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_330:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_328
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_329
.label_328:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_329:
	mov	rbp, rbp
	call	xalloc_die
.label_332:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406800
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
	je	.label_333
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_334
.label_333:
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
.label_334:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406860
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
	jb	.label_335
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_335
	pop	rcx
	ret	
.label_335:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x406890

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
	je	.label_337
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_336
.label_337:
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
.label_336:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4068f0
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
	je	.label_338
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_339
.label_338:
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
.label_339:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x406950

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_3
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
	#Procedure 0x4069a0

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_341
	mov	rsp, rsp
	pop	rcx
	ret	
.label_341:
	nop	
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0x16
	lea	rdi, [rdi]
	jne	.label_340
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_6
	nop	
	mov	esi, OFFSET FLAT:.str.1_4
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xfts_open
	lea	rsi, [rsi]
	call	__assert_fail
.label_340:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a00

	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:
	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	mov	rbp, rbp
	je	.label_342
	cmp	ecx, 0x11
	lea	rdi, [rdi]
	jne	.label_343
	mov	rsp, rsp
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_342:
	lea	rsi, [rsi]
	ret	
.label_343:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x406a30

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_344
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_345
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
	je	.label_345
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
.label_344:
	mov	ecx, 1
.label_345:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406aa0

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
	jae	.label_371
	mov	rbp, rbp
	mov	eax, r15d
	lea	rdi, [rdi]
	and	eax, 0x204
	nop	
	cmp	eax, 0x204
	je	.label_371
	mov	rsp, rsp
	test	r15b, 0x12
	nop	
	je	.label_371
	mov	rsp, rsp
	mov	edi, 0x80
	mov	rsp, rsp
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_347
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
	je	.label_351
	mov	r14, rbx
	mov	rbp, rbp
	lea	rbx, [r12 + 8]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_368:
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
	jne	.label_368
	inc	rbp
	mov	rsp, rsp
	mov	rbx, r14
.label_351:
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
	je	.label_360
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
	je	.label_346
	mov	edi, 0x110
	call	malloc
	mov	r12, rax
	mov	rbp, rbp
	test	r12, r12
	je	.label_355
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
.label_346:
	mov	byte ptr [rsp + 0x17], 1
	mov	rsp, rsp
	test	r13, r13
	je	.label_370
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	al, byte ptr [rax + 0x49]
	and	al, 4
	lea	rdi, [rdi]
	shr	al, 2
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x17], al
.label_370:
	mov	rsp, rsp
	xor	ebp, ebp
	mov	rsp, rsp
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_357
	mov	qword ptr [rsp + 0x20], r12
	mov	ebx, r14d
	and	ebx, 0x800
	mov	dword ptr [rsp + 0x34], ebx
	xor	ebp, ebp
	mov	rsp, rsp
	xor	r12d, r12d
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_348:
	mov	qword ptr [rsp + 0x18], rbp
	mov	rdi, r15
	lea	rsi, [rsi]
	call	strlen
	mov	rbp, rax
	test	ebx, ebx
	jne	.label_352
	lea	rdi, [rdi]
	cmp	rbp, 3
	jb	.label_354
	cmp	rbp, 2
	nop	
	jb	.label_356
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp + r15 - 1]
	lea	rsi, [rsi]
	cmp	eax, 0x2f
	jne	.label_358
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], r12
.label_362:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r15 + rbp - 2]
	cmp	eax, 0x2f
	jne	.label_361
	lea	rdi, [rdi]
	dec	rbp
	lea	rdi, [rdi]
	cmp	rbp, 1
	lea	rsi, [rsi]
	ja	.label_362
	jmp	.label_361
.label_352:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], r12
	jmp	.label_361
.label_354:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], r12
	jmp	.label_361
.label_356:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], r12
	jmp	.label_361
.label_358:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], r12
	nop	dword ptr [rax + rax]
.label_361:
	mov	rbx, r13
	lea	rsi, [rsi]
	lea	rdi, [rbp + 0x110]
	nop	
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	rbp, rbp
	mov	r12, rax
	test	r12, r12
	je	.label_373
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
	jne	.label_377
	mov	word ptr [r12 + 0x70], 0xb
	mov	rsp, rsp
	mov	qword ptr [r12 + 0xa8], 2
	jmp	.label_367
	nop	word ptr cs:[rax + rax]
.label_377:
	nop	
	xor	edx, edx
	mov	rsi, r12
	mov	rbp, rbp
	call	fts_stat
	mov	rsp, rsp
	mov	word ptr [r12 + 0x70], ax
.label_367:
	mov	rsp, rsp
	mov	r13, rbx
	nop	
	test	r13, r13
	je	.label_369
	mov	rbp, r12
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x10], r15
	nop	
	mov	r12, qword ptr [rsp + 0x28]
	jmp	.label_375
.label_369:
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x10], 0
	mov	rsp, rsp
	test	r15, r15
	lea	rdi, [rdi]
	mov	rbp, r12
	je	.label_375
	nop	
	mov	rax, qword ptr [rsp + 0x28]
	nop	
	mov	qword ptr [rax + 0x10], r12
	mov	rbp, r15
.label_375:
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
	jne	.label_348
	mov	rsp, rsp
	test	r13, r13
	mov	rdi, qword ptr [rsp + 8]
	je	.label_353
	cmp	r14, 2
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	jb	.label_357
	mov	rsi, rbp
	lea	rsi, [rsi]
	mov	rdx, r14
	call	fts_sort
	mov	rbp, rax
	nop	
	jmp	.label_357
.label_371:
	nop	
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	rbp, rbp
	xor	eax, eax
.label_347:
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
.label_360:
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rbp, rbp
	jmp	.label_366
.label_373:
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r12, qword ptr [rsp + 0x20]
	mov	rbx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jmp	.label_364
.label_355:
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 8]
	jmp	.label_350
.label_353:
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x20]
.label_357:
	mov	edi, 0x110
	call	malloc
	test	rax, rax
	mov	rsp, rsp
	je	.label_374
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
	je	.label_376
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
	jne	.label_363
	lea	rsi, [rsi]
	jmp	.label_364
.label_374:
	mov	rbx, qword ptr [rsp + 8]
	nop	
	mov	qword ptr [rbx], 0
	jmp	.label_364
.label_376:
	mov	edi, 0x20
	lea	rdi, [rdi]
	call	malloc
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	je	.label_364
	lea	rsi, [rsi]
	mov	rdi, rax
	call	cycle_check_init
.label_363:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbx + 0x48]
	nop	
	test	ax, 0x204
	jne	.label_365
	mov	edx, eax
	and	edx, 0x10
	mov	rbp, rbp
	shl	edx, 0xd
	mov	rsp, rsp
	or	edx, 0x90900
	mov	rbp, rbp
	test	ah, 2
	nop	
	jne	.label_372
	mov	edi, OFFSET FLAT:.str_7
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, edx
	lea	rsi, [rsi]
	call	open_safer
	lea	rdi, [rdi]
	jmp	.label_378
.label_364:
	lea	rdi, [rdi]
	mov	r14, rbx
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_379
	nop	dword ptr [rax]
.label_359:
	mov	rbx, qword ptr [rbp + 0x10]
	nop	
	mov	rdi, qword ptr [rbp + 0x18]
	test	rdi, rdi
	mov	rsp, rsp
	je	.label_349
	lea	rdi, [rdi]
	call	closedir
.label_349:
	mov	rsp, rsp
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	free
	test	rbx, rbx
	lea	rdi, [rdi]
	mov	rbp, rbx
	mov	rbp, rbp
	jne	.label_359
.label_379:
	mov	rdi, r12
	call	free
	mov	rbx, r14
	mov	rbp, qword ptr [rbx + 0x20]
.label_350:
	nop	
	mov	rdi, rbp
.label_366:
	call	free
	mov	rsp, rsp
	mov	rdi, rbx
	call	free
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_347
.label_372:
	mov	rsp, rsp
	mov	edi, dword ptr [rbx + 0x2c]
	mov	esi, OFFSET FLAT:.str_7
	xor	eax, eax
	call	openat_safer
.label_378:
	mov	rsp, rsp
	mov	dword ptr [rbx + 0x28], eax
	lea	rdi, [rdi]
	test	eax, eax
	jns	.label_365
	lea	rsi, [rsi]
	or	byte ptr [rbx + 0x48], 4
.label_365:
	nop	
	mov	rdi, rbx
	nop	
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	lea	rsi, [rsi]
	mov	rax, rbx
	lea	rdi, [rdi]
	jmp	.label_347
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4071c0

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
	jne	.label_380
	test	al, 1
	nop	
	je	.label_380
	lea	rsi, [rsi]
	mov	dl, 1
.label_380:
	mov	rbp, rbp
	lea	rbx, [r14 + 0x78]
	lea	rdi, [rdi]
	test	dl, dl
	lea	rdi, [rdi]
	jne	.label_383
	and	eax, 2
	jne	.label_383
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
	je	.label_386
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	eax, dword ptr [rax]
	mov	rbp, rbp
	jmp	.label_389
.label_383:
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
	je	.label_386
	lea	rdi, [rdi]
	call	__errno_location
	mov	r15, rax
	mov	eax, dword ptr [r15]
	cmp	eax, 2
	jne	.label_389
	mov	rsi, qword ptr [r14 + 0x30]
	nop	
	mov	edi, 1
	mov	rsp, rsp
	mov	rdx, rbx
	mov	rsp, rsp
	call	__lxstat
	test	eax, eax
	mov	rbp, rbp
	je	.label_384
	lea	rsi, [rsi]
	mov	eax, dword ptr [r15]
.label_389:
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
.label_382:
	movzx	eax, ax
	nop	
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_386:
	mov	rbp, rbp
	mov	ecx, 0xf000
	and	ecx, dword ptr [r14 + 0x90]
	lea	rsi, [rsi]
	mov	ax, 0xc
	cmp	ecx, 0xa000
	je	.label_382
	cmp	ecx, 0x8000
	nop	
	je	.label_381
	cmp	ecx, 0x4000
	mov	rbp, rbp
	jne	.label_385
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x88]
	mov	rcx, -1
	lea	rdi, [rdi]
	cmp	rax, 2
	mov	rsp, rsp
	jb	.label_387
	cmp	qword ptr [r14 + 0x58], 0
	jle	.label_387
	mov	ecx, dword ptr [r15 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	lea	rdi, [rdi]
	mov	rcx, rax
.label_387:
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x68], rcx
	mov	ecx, dword ptr [r14 + 0x108]
	mov	ax, 1
	mov	rsp, rsp
	movzx	edx, cl
	cmp	edx, 0x2e
	mov	rsp, rsp
	jne	.label_382
	mov	edx, ecx
	shr	edx, 8
	test	dl, dl
	je	.label_388
	mov	rbp, rbp
	movzx	edx, dl
	lea	rsi, [rsi]
	cmp	edx, 0x2e
	jne	.label_382
	lea	rsi, [rsi]
	test	ecx, 0xff0000
	lea	rdi, [rdi]
	jne	.label_382
.label_388:
	nop	
	mov	ax, 1
	cmp	qword ptr [r14 + 0x58], 0
	mov	rsp, rsp
	je	.label_382
	mov	ax, 5
	jmp	.label_382
.label_381:
	mov	ax, 8
	jmp	.label_382
.label_385:
	lea	rdi, [rdi]
	mov	ax, 3
	lea	rsi, [rsi]
	jmp	.label_382
.label_384:
	mov	dword ptr [r15], 0
	mov	ax, 0xd
	jmp	.label_382
	nop	
	.section	.text
	.align	16
	#Procedure 0x4073f0

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
	jae	.label_394
	lea	rsi, [r14 + 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x38], rsi
	mov	rbp, rbp
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_393
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
	je	.label_393
	mov	qword ptr [r13], rdi
	lea	rdi, [rdi]
	jmp	.label_395
.label_394:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	add	r12, 0x10
	mov	r13, r12
.label_395:
	mov	rsp, rsp
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_390
	nop	dword ptr [rax]
.label_392:
	mov	qword ptr [rdi], rbx
	add	rdi, 8
	mov	rbx, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_392
	mov	rdi, qword ptr [r13]
.label_390:
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
	je	.label_400
	nop	
	mov	rcx, qword ptr [r9 + 8]
	mov	qword ptr [rbx + 0x10], rcx
	mov	rsp, rsp
	mov	rcx, r14
	add	rcx, -2
	mov	rsp, rsp
	je	.label_399
	mov	rsp, rsp
	lea	rdx, [r9 + 8]
	lea	rsi, [rsi]
	lea	edi, [r14 + 2]
	mov	rsp, rsp
	lea	r8, [r14 - 3]
	lea	rsi, [rsi]
	test	dil, 3
	mov	rbp, rbp
	je	.label_398
	lea	rsi, [rsi]
	lea	edi, [r14 + 2]
	and	edi, 3
	neg	rdi
	nop	
.label_391:
	mov	rsi, qword ptr [rdx]
	nop	
	mov	rax, qword ptr [rdx + 8]
	lea	rdx, [rdx + 8]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x10], rax
	dec	rcx
	nop	
	inc	rdi
	jne	.label_391
.label_398:
	lea	rsi, [rsi]
	cmp	r8, 3
	mov	rbp, rbp
	jb	.label_399
	nop	dword ptr [rax + rax]
.label_397:
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
	jne	.label_397
.label_399:
	mov	rsp, rsp
	mov	rcx, qword ptr [r9 + r14*8 - 8]
.label_400:
	mov	qword ptr [rcx + 0x10], 0
	jmp	.label_396
.label_393:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12 + 0x10]
	call	free
	mov	qword ptr [r12 + 0x10], 0
	mov	qword ptr [r12 + 0x38], 0
.label_396:
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
	#Procedure 0x4075f0

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
	je	.label_414
	lea	rsi, [rsi]
	cmp	qword ptr [rdi + 0x58], 0
	lea	rsi, [rsi]
	js	.label_412
	nop	word ptr [rax + rax]
.label_408:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rdi + 0x10]
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_404
	mov	rbx, qword ptr [rdi + 8]
.label_404:
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	cmp	qword ptr [rbx + 0x58], 0
	lea	rsi, [rsi]
	mov	rdi, rbx
	jns	.label_408
	mov	rsp, rsp
	jmp	.label_410
.label_412:
	mov	rbx, rdi
.label_410:
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	call	free
.label_414:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_416
	nop	dword ptr [rax]
.label_402:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_419
	lea	rsi, [rsi]
	call	closedir
.label_419:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	lea	rdi, [rdi]
	mov	rbx, rbp
	jne	.label_402
.label_416:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	lea	rdi, [rdi]
	mov	eax, dword ptr [r14 + 0x48]
	lea	rdi, [rdi]
	test	ah, 2
	jne	.label_406
	xor	ebp, ebp
	mov	rbp, rbp
	test	al, 4
	jne	.label_401
	nop	
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebp, ebp
	test	eax, eax
	je	.label_411
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_411:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	lea	rsi, [rsi]
	test	ebp, ebp
	nop	
	je	.label_417
	nop	
	jmp	.label_401
.label_406:
	mov	rsp, rsp
	mov	edi, dword ptr [r14 + 0x2c]
	lea	rsi, [rsi]
	xor	ebp, ebp
	lea	rdi, [rdi]
	test	edi, edi
	js	.label_401
	nop	
	call	close
.label_417:
	nop	
	test	eax, eax
	nop	
	je	.label_401
	call	__errno_location
	mov	rbp, rbp
	mov	ebp, dword ptr [rax]
.label_401:
	lea	rsi, [rsi]
	lea	rbx, [r14 + 0x60]
	jmp	.label_403
	nop	
.label_409:
	mov	edi, eax
	mov	rsp, rsp
	call	close
.label_403:
	mov	rsp, rsp
	mov	rdi, rbx
	call	i_ring_empty
	lea	rdi, [rdi]
	test	al, al
	jne	.label_407
	mov	rbp, rbp
	mov	rdi, rbx
	call	i_ring_pop
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	jns	.label_409
	nop	
	jmp	.label_403
.label_407:
	mov	rsp, rsp
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_413
	nop	
	call	hash_free
.label_413:
	nop	
	movzx	eax, word ptr [r14 + 0x48]
	mov	rbp, rbp
	test	ax, 0x102
	je	.label_418
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x58]
	mov	rbp, rbp
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_415
	lea	rdi, [rdi]
	call	hash_free
	nop	
	jmp	.label_415
.label_418:
	mov	rdi, qword ptr [r14 + 0x58]
	lea	rdi, [rdi]
	call	free
.label_415:
	mov	rdi, r14
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	xor	eax, eax
	test	ebp, ebp
	je	.label_405
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], ebp
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
.label_405:
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
	#Procedure 0x4077e0

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
	je	.label_422
	mov	rsp, rsp
	mov	eax, dword ptr [r14 + 0x48]
	xor	r15d, r15d
	mov	rbp, rbp
	test	ah, 0x20
	mov	rsp, rsp
	jne	.label_422
	lea	rdi, [rdi]
	movzx	ecx, word ptr [r12 + 0x74]
	nop	
	mov	word ptr [r12 + 0x74], 3
	mov	rsp, rsp
	cmp	ecx, 1
	nop	
	je	.label_435
	movzx	edx, cx
	cmp	edx, 2
	mov	rsp, rsp
	jne	.label_445
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r12 + 0x70]
	mov	rsp, rsp
	mov	esi, ecx
	and	esi, 0xfffe
	mov	rbp, rbp
	cmp	esi, 0xc
	jne	.label_477
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_457
	mov	eax, dword ptr [r14 + 0x48]
	mov	rbp, rbp
	test	al, 4
	lea	rdi, [rdi]
	jne	.label_460
	mov	edx, eax
	nop	
	and	edx, 0x10
	shl	edx, 0xd
	lea	rdi, [rdi]
	or	edx, 0x90900
	mov	rsp, rsp
	test	ah, 2
	jne	.label_464
	nop	
	mov	edi, OFFSET FLAT:.str_7
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, edx
	call	open_safer
	nop	
	jmp	.label_470
.label_435:
	xor	edx, edx
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r12
	call	fts_stat
	mov	rbp, rbp
	mov	word ptr [r12 + 0x70], ax
	mov	r15, r12
	jmp	.label_422
.label_445:
	lea	r13, [r12 + 0x70]
	mov	ecx, dword ptr [r12 + 0x70]
	jmp	.label_421
.label_477:
	mov	rbp, rbp
	lea	r13, [r12 + 0x70]
.label_421:
	movzx	esi, cx
	mov	rsp, rsp
	cmp	esi, 1
	jne	.label_427
	cmp	edx, 4
	je	.label_434
	lea	rsi, [rsi]
	test	al, 0x40
	je	.label_438
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r12 + 0x78]
	nop	
	cmp	rdx, qword ptr [r14 + 0x18]
	jne	.label_434
.label_438:
	mov	rbx, qword ptr [r14 + 8]
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_446
	test	ah, 0x10
	jne	.label_442
	nop	
	mov	rcx, qword ptr [r12 + 0x30]
	mov	edx, 0xffffffff
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsi, r12
	call	fts_safe_changedir
	test	eax, eax
	mov	rbp, rbp
	je	.label_452
	call	__errno_location
	mov	eax, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [r12 + 0x40], eax
	or	byte ptr [r12 + 0x72], 1
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 8]
	lea	rdi, [rdi]
	jmp	.label_430
	nop	word ptr [rax + rax]
.label_427:
	mov	r15, qword ptr [r12 + 0x10]
	test	r15, r15
	je	.label_466
	mov	rsp, rsp
	mov	qword ptr [r14], r15
	mov	rbp, rbp
	mov	rdi, r12
	lea	rdi, [rdi]
	call	free
	nop	
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_468
	movzx	eax, word ptr [r15 + 0x74]
	cmp	eax, 4
	mov	r12, r15
	lea	rsi, [rsi]
	je	.label_427
	mov	rbp, rbp
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_439
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
	jne	.label_431
	mov	eax, dword ptr [r14 + 0x48]
	nop	
	test	al, 4
	mov	rbp, rbp
	jne	.label_431
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	lea	rdi, [rdi]
	or	edx, 0x90900
	mov	rbp, rbp
	test	ah, 2
	jne	.label_437
	mov	edi, OFFSET FLAT:.str_7
	lea	rdi, [rdi]
	xor	eax, eax
	mov	esi, edx
	lea	rdi, [rdi]
	call	open_safer
	lea	rsi, [rsi]
	jmp	.label_472
.label_458:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_430:
	mov	rbp, rbp
	test	rax, rax
	jne	.label_458
	jmp	.label_452
.label_434:
	test	ecx, 0x20000
	je	.label_459
	mov	rbp, rbp
	mov	edi, dword ptr [r12 + 0x44]
	mov	rsp, rsp
	call	close
.label_459:
	nop	
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_463
	nop	word ptr cs:[rax + rax]
.label_454:
	nop	
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_451
	call	closedir
.label_451:
	mov	rdi, rbx
	call	free
	nop	
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_454
	mov	rbp, rbp
	mov	qword ptr [r14 + 8], 0
.label_463:
	nop	
	mov	word ptr [r12 + 0x70], 6
.label_450:
	mov	rdi, r14
	mov	rsi, r12
	call	leave_dir
	mov	rsp, rsp
	mov	r15, r12
	mov	rbp, rbp
	jmp	.label_422
.label_466:
	lea	rsi, [rsi]
	mov	r15, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	cmp	qword ptr [r15 + 0x18], 0
	je	.label_426
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
	je	.label_447
	mov	rdi, r12
	call	free
	nop	
	jmp	.label_439
.label_457:
	mov	rbp, rbp
	mov	r15, r12
	jmp	.label_433
.label_468:
	lea	rdi, [rdi]
	mov	rdi, r14
	lea	rdi, [rdi]
	call	restore_initial_cwd
	mov	rbp, rbp
	test	eax, eax
	mov	eax, dword ptr [r14 + 0x48]
	je	.label_455
	or	eax, 0x2000
	mov	dword ptr [r14 + 0x48], eax
	mov	rbp, rbp
	xor	r15d, r15d
	nop	
	jmp	.label_422
.label_460:
	mov	r15, r12
	mov	rbp, rbp
	jmp	.label_433
.label_455:
	test	ax, 0x102
	je	.label_473
	mov	rdi, qword ptr [r14 + 0x58]
	nop	
	test	rdi, rdi
	je	.label_467
	mov	rbp, rbp
	call	hash_free
	jmp	.label_467
.label_442:
	nop	
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	nop	word ptr [rax + rax]
.label_476:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	nop	
	test	rdi, rdi
	je	.label_443
	nop	
	call	closedir
.label_443:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	lea	rdi, [rdi]
	mov	rbx, rbp
	jne	.label_476
	lea	rsi, [rsi]
	mov	qword ptr [r14 + 8], 0
.label_446:
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	lea	rsi, [rsi]
	mov	qword ptr [r14 + 8], rax
	mov	rsp, rsp
	test	rax, rax
	je	.label_432
.label_452:
	mov	r15, qword ptr [r14 + 8]
	mov	rsp, rsp
	mov	qword ptr [r14 + 8], 0
	jmp	.label_439
.label_432:
	xor	r15d, r15d
	lea	rdi, [rdi]
	test	byte ptr [r14 + 0x49], 0x20
	mov	rsp, rsp
	jne	.label_422
	lea	rsi, [rsi]
	cmp	dword ptr [r12 + 0x40], 0
	lea	rdi, [rdi]
	je	.label_450
	movzx	eax, word ptr [r13]
	nop	
	cmp	eax, 4
	nop	
	je	.label_450
	mov	rbp, rbp
	mov	word ptr [r13], 7
	nop	
	jmp	.label_450
.label_464:
	lea	rsi, [rsi]
	mov	edi, dword ptr [r14 + 0x2c]
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_7
	lea	rdi, [rdi]
	xor	eax, eax
	call	openat_safer
.label_470:
	mov	dword ptr [r12 + 0x44], eax
	mov	rsp, rsp
	test	eax, eax
	js	.label_462
	or	byte ptr [r12 + 0x72], 2
	mov	r15, r12
	jmp	.label_433
.label_447:
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_422
	mov	rsp, rsp
	mov	r15, qword ptr [r12 + 8]
.label_426:
	lea	rdi, [rdi]
	mov	qword ptr [r14], r15
	mov	rdi, r12
	mov	rbp, rbp
	call	free
	mov	rsp, rsp
	cmp	qword ptr [r15 + 0x58], -1
	nop	
	je	.label_474
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	nop	
	je	.label_453
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0
	lea	rsi, [rsi]
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_424
	movzx	eax, word ptr [r15 + 0x72]
	test	al, 2
	nop	
	jne	.label_471
	test	al, 1
	jne	.label_441
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_2
	mov	rdi, r14
	call	fts_safe_changedir
	lea	rdi, [rdi]
	jmp	.label_461
.label_474:
	mov	rdi, r15
	mov	rsp, rsp
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	mov	qword ptr [r14], 0
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_422
.label_462:
	call	__errno_location
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	lea	rdi, [rdi]
	mov	word ptr [r12 + 0x70], 7
	mov	rsp, rsp
	mov	r15, r12
	mov	rbp, rbp
	jmp	.label_433
.label_473:
	mov	rdi, qword ptr [r14 + 0x58]
	mov	rsp, rsp
	call	free
.label_467:
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
	je	.label_423
	lea	rsi, [rsi]
	cmp	rbx, r12
	nop	
	jne	.label_469
	nop	
	cmp	byte ptr [r15 + 0x109], 0
	je	.label_423
.label_469:
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
.label_423:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [r15 + 0x38], rax
	mov	qword ptr [r15 + 0x30], rax
	movzx	eax, word ptr [r14 + 0x48]
	mov	rbp, rbp
	test	ax, 0x102
	je	.label_444
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
	jmp	.label_433
.label_444:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [r14 + 0x58], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_433
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsp, rsp
	call	cycle_check_init
	jmp	.label_433
.label_424:
	mov	rdi, r14
	call	restore_initial_cwd
.label_461:
	test	eax, eax
	je	.label_441
	call	__errno_location
	mov	rbp, rbp
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	rbp, rbp
	or	byte ptr [r14 + 0x49], 0x20
	mov	rbp, rbp
	jmp	.label_441
.label_471:
	mov	eax, dword ptr [r14 + 0x48]
	lea	rsi, [rsi]
	lea	rbx, [r15 + 0x44]
	test	al, 4
	nop	
	jne	.label_428
	mov	rbp, rbp
	test	ah, 2
	mov	ebp, dword ptr [r15 + 0x44]
	jne	.label_420
	mov	edi, ebp
	call	fchdir
	mov	rsp, rsp
	test	eax, eax
	je	.label_428
	nop	
	call	__errno_location
	mov	eax, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_428
.label_437:
	mov	rbp, rbp
	mov	edi, dword ptr [r14 + 0x2c]
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_7
	xor	eax, eax
	call	openat_safer
.label_472:
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_449
	or	byte ptr [r15 + 0x72], 2
	lea	rdi, [rdi]
	jmp	.label_431
.label_449:
	call	__errno_location
	nop	
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
.label_431:
	mov	rbp, rbp
	mov	word ptr [r15 + 0x74], 3
.label_439:
	mov	rbp, rbp
	mov	rax, qword ptr [r14 + 0x20]
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rcx + 0x48]
	movzx	edx, byte ptr [rdx + rcx - 1]
	cmp	edx, 0x2f
	mov	rsp, rsp
	jne	.label_456
	mov	rsp, rsp
	dec	rcx
.label_456:
	lea	rdi, [rax + rcx + 1]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x2f
	mov	rsp, rsp
	lea	rsi, [r15 + 0x108]
	mov	rdx, qword ptr [r15 + 0x60]
	mov	rbp, rbp
	inc	rdx
	call	memmove
.label_433:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	mov	rsp, rsp
	jne	.label_448
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_436
	cmp	rax, 2
	jne	.label_453
	nop	
	mov	rbx, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_425
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	mov	rbp, rbp
	jne	.label_425
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	filesystem_type
	cmp	rax, 0x52654973
	mov	rbp, rbp
	je	.label_436
	mov	rsp, rsp
	cmp	rax, 0x58465342
	mov	rbp, rbp
	je	.label_436
.label_425:
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
	jne	.label_448
	lea	rsi, [rsi]
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_436
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x68]
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	nop	
	jb	.label_436
	dec	rax
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x68], rax
.label_436:
	mov	rbp, rbp
	movzx	eax, word ptr [r15 + 0x70]
.label_448:
	lea	rdi, [rdi]
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_422
	cmp	qword ptr [r15 + 0x58], 0
	mov	rbp, rbp
	jne	.label_465
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_465:
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, r15
	call	enter_dir
	lea	rdi, [rdi]
	test	al, al
	mov	rsp, rsp
	jne	.label_422
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0xc
	nop	
	xor	r15d, r15d
	jmp	.label_422
.label_420:
	mov	rsp, rsp
	mov	esi, dword ptr [r14 + 0x2c]
	cmp	esi, ebp
	nop	
	jne	.label_475
	cmp	esi, -0x64
	mov	rsp, rsp
	jne	.label_453
.label_475:
	mov	rsp, rsp
	lea	rdi, [r14 + 0x60]
	lea	rsi, [rsi]
	call	i_ring_push
	test	eax, eax
	js	.label_429
	mov	edi, eax
	call	close
.label_429:
	mov	rsp, rsp
	mov	dword ptr [r14 + 0x2c], ebp
.label_428:
	mov	edi, dword ptr [rbx]
	call	close
.label_441:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	mov	rsp, rsp
	je	.label_440
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
	jne	.label_440
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r15
	call	leave_dir
.label_440:
	xor	eax, eax
	mov	rbp, rbp
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	r15, rax
.label_422:
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
.label_453:
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4081b0

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_479
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
	je	.label_480
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	add	rsp, 0x18
	ret	
.label_479:
	mov	rsp, rsp
	mov	rax, qword ptr [rsi + 8]
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_478
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x58], 0
	nop	
	js	.label_478
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	mov	rsp, rsp
	je	.label_480
	mov	rdx, qword ptr [rcx]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rsi + 0x80]
	lea	rdi, [rdi]
	jne	.label_478
	nop	
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	mov	rbp, rbp
	jne	.label_478
	mov	rdx, qword ptr [rax + 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	qword ptr [rcx], rax
.label_478:
	lea	rdi, [rdi]
	add	rsp, 0x18
	ret	
.label_480:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408270

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
	je	.label_494
	mov	rbp, rbp
	movzx	edx, byte ptr [rbx]
	lea	rsi, [rsi]
	mov	ecx, 0x2e
	lea	rsi, [rsi]
	mov	eax, 0x2e
	sub	eax, edx
	lea	rsi, [rsi]
	jne	.label_488
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx + 1]
	lea	rsi, [rsi]
	sub	ecx, eax
	lea	rsi, [rsi]
	mov	eax, ecx
	jne	.label_488
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_488:
	test	eax, eax
	lea	rsi, [rsi]
	sete	r14b
	lea	rdi, [rdi]
	jmp	.label_497
.label_494:
	xor	r14d, r14d
.label_497:
	lea	rsi, [rsi]
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 4
	mov	rsp, rsp
	jne	.label_501
	nop	
	test	r13d, r13d
	jns	.label_495
	mov	rbp, rbp
	mov	cl, r14b
	mov	rbp, rbp
	xor	cl, 1
	jne	.label_502
	nop	
	mov	qword ptr [rsp + 0x90], rsi
	and	eax, 0x200
	mov	rbp, rbp
	je	.label_484
	lea	rbp, [r15 + 0x60]
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	i_ring_empty
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	jne	.label_484
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	mov	rsp, rsp
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r14b, 1
	nop	
	jmp	.label_484
.label_501:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_481
	and	eax, 0x200
	je	.label_481
	lea	rdi, [rdi]
	mov	edi, r13d
	mov	rsp, rsp
	call	close
	nop	
	jmp	.label_481
.label_495:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x90], rsi
	nop	
	jmp	.label_484
.label_502:
	mov	qword ptr [rsp + 0x90], rsi
.label_484:
	test	r13d, r13d
	mov	rbp, rbp
	mov	r12d, r13d
	jns	.label_485
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
	jne	.label_489
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	esi, edx
	call	open_safer
	mov	rbp, rbp
	jmp	.label_499
.label_489:
	mov	rbp, rbp
	mov	edi, dword ptr [r15 + 0x2c]
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsi, rbx
	nop	
	call	openat_safer
.label_499:
	mov	rbp, rbp
	mov	r12d, eax
	mov	ebp, 0xffffffff
	lea	rsi, [rsi]
	test	r12d, r12d
	lea	rdi, [rdi]
	js	.label_481
.label_485:
	lea	rsi, [rsi]
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 2
	nop	
	jne	.label_483
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_486
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x2e
	jne	.label_486
	movzx	ecx, byte ptr [rbx + 1]
	cmp	ecx, 0x2e
	jne	.label_486
	cmp	byte ptr [rbx + 2], 0
	mov	rsp, rsp
	jne	.label_486
.label_483:
	lea	rdx, [rsp]
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, r12d
	lea	rdi, [rdi]
	call	__fxstat
	test	eax, eax
	jne	.label_498
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x90]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	jne	.label_500
	nop	
	mov	rax, qword ptr [rcx + 0x80]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rsp + 8]
	nop	
	jne	.label_500
	mov	eax, dword ptr [r15 + 0x48]
.label_486:
	mov	rbp, rbp
	test	ah, 2
	jne	.label_482
	nop	
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	mov	rbp, rbp
	jmp	.label_487
.label_482:
	mov	esi, dword ptr [r15 + 0x2c]
	lea	rsi, [rsi]
	cmp	esi, r12d
	jne	.label_490
	cmp	esi, -0x64
	jne	.label_492
.label_490:
	lea	rdi, [rdi]
	test	r14b, r14b
	je	.label_493
	test	al, 4
	lea	rsi, [rsi]
	jne	.label_491
	nop	
	test	esi, esi
	js	.label_491
	mov	rbp, rbp
	mov	edi, esi
	jmp	.label_496
.label_500:
	nop	
	call	__errno_location
	mov	dword ptr [rax], 2
.label_498:
	mov	ebp, 0xffffffff
.label_487:
	test	r13d, r13d
	jns	.label_481
	call	__errno_location
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	nop	
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_481
.label_493:
	lea	rsi, [rsi]
	lea	rdi, [r15 + 0x60]
	lea	rsi, [rsi]
	call	i_ring_push
	lea	rsi, [rsi]
	test	eax, eax
	js	.label_491
	mov	edi, eax
.label_496:
	mov	rsp, rsp
	call	close
.label_491:
	mov	dword ptr [r15 + 0x2c], r12d
	xor	ebp, ebp
.label_481:
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
.label_492:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408550

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
	je	.label_577
	mov	qword ptr [rsp + 0x38], rdi
	call	dirfd
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x5c], eax
	lea	rsi, [rsi]
	test	eax, eax
	js	.label_571
	mov	qword ptr [rsp + 0x50], -1
	nop	
	cmp	qword ptr [r13 + 0x40], 0
	nop	
	jne	.label_575
	mov	eax, 0x186a0
	mov	qword ptr [rsp + 0x50], rax
.label_575:
	lea	rax, [r13 + 0x40]
	mov	qword ptr [rsp + 0x30], rax
	lea	rax, [r13 + 0x48]
	mov	qword ptr [rsp + 0x90], rax
	mov	al, 1
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x74], eax
	jmp	.label_554
.label_577:
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
	jne	.label_581
	mov	edi, dword ptr [r13 + 0x2c]
.label_581:
	mov	rbp, rbp
	mov	rsi, qword ptr [r12 + 0x30]
	xor	edx, edx
	mov	rsp, rsp
	test	al, 0x10
	mov	rbp, rbp
	je	.label_512
	nop	
	test	al, 1
	nop	
	je	.label_516
	lea	rsi, [rsi]
	cmp	qword ptr [r12 + 0x58], 0
	mov	rbp, rbp
	je	.label_512
.label_516:
	lea	rdi, [rdi]
	mov	edx, 0x20000
.label_512:
	nop	
	lea	rcx, [rsp + 0x5c]
	call	opendirat
	mov	qword ptr [r12 + 0x18], rax
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_524
	nop	
	lea	rcx, [r13 + 0x48]
	lea	rdi, [rdi]
	movzx	eax, word ptr [r12 + 0x70]
	nop	
	cmp	eax, 0xb
	mov	rsp, rsp
	jne	.label_527
	mov	qword ptr [rsp + 0x90], rcx
	xor	edx, edx
	mov	rdi, r13
	lea	rdi, [rdi]
	mov	rsi, r12
	lea	rsi, [rsi]
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	jmp	.label_534
.label_571:
	mov	rdi, qword ptr [r12 + 0x18]
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
.label_524:
	mov	rsp, rsp
	xor	ebx, ebx
	cmp	r15d, 3
	jne	.label_508
	lea	rsi, [rsi]
	mov	word ptr [r12 + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	nop	
	mov	dword ptr [r12 + 0x40], eax
	xor	ebx, ebx
	jmp	.label_508
.label_527:
	mov	rbp, rbp
	test	byte ptr [rcx + 1], 1
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x90], rcx
	je	.label_534
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
	je	.label_557
.label_534:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], -1
	lea	rdi, [rdi]
	cmp	qword ptr [r13 + 0x40], 0
	lea	rdi, [rdi]
	jne	.label_561
	mov	eax, 0x186a0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], rax
.label_561:
	lea	rax, [r13 + 0x40]
	mov	qword ptr [rsp + 0x30], rax
	cmp	r15d, 2
	nop	
	je	.label_506
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x90]
	mov	rsp, rsp
	mov	eax, dword ptr [rax]
	nop	
	and	eax, 0x38
	cmp	eax, 0x18
	mov	rbp, rbp
	jne	.label_504
	mov	rbp, rbp
	cmp	qword ptr [r12 + 0x88], 2
	jne	.label_504
	mov	esi, dword ptr [rsp + 0x5c]
	mov	rdi, r12
	lea	rsi, [rsi]
	call	filesystem_type
	cmp	rax, 0x9f9f
	nop	
	jle	.label_573
	cmp	rax, 0x9fa0
	lea	rsi, [rsi]
	je	.label_504
	mov	rbp, rbp
	mov	ecx, 0xff534d42
	mov	rsp, rsp
	cmp	rax, rcx
	je	.label_504
	mov	rsp, rsp
	cmp	rax, 0x5346414f
	je	.label_504
	lea	rsi, [rsi]
	jmp	.label_506
.label_557:
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0xc
	lea	rdi, [rdi]
	xor	ebx, ebx
	jmp	.label_508
.label_573:
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_504
	mov	rbp, rbp
	cmp	rax, 0x6969
	jne	.label_506
.label_504:
	cmp	r15d, 3
	nop	
	sete	bl
	mov	rbp, rbp
	mov	r14b, 1
	jmp	.label_509
.label_506:
	cmp	r15d, 3
	lea	rsi, [rsi]
	sete	bl
	mov	rbp, rbp
	mov	r14d, 0
	mov	rbp, rbp
	jne	.label_511
.label_509:
	mov	rsp, rsp
	mov	dword ptr [rsp + 8], r15d
	mov	rax, qword ptr [rsp + 0x90]
	nop	
	test	byte ptr [rax + 1], 2
	mov	ebp, dword ptr [rsp + 0x5c]
	lea	rdi, [rdi]
	je	.label_518
	nop	
	mov	esi, 0x406
	nop	
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebp
	call	rpl_fcntl
	mov	ebp, eax
	mov	dword ptr [rsp + 0x5c], ebp
.label_518:
	nop	
	test	ebp, ebp
	nop	
	js	.label_528
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
	je	.label_531
.label_528:
	and	bl, r14b
	lea	rsi, [rsi]
	movzx	eax, bl
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_533
	lea	rsi, [rsi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [r12 + 0x40], eax
.label_533:
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
	je	.label_549
	mov	edi, dword ptr [rsp + 0x5c]
	test	edi, edi
	js	.label_549
	call	close
.label_549:
	mov	qword ptr [r12 + 0x18], 0
	mov	dword ptr [rsp + 0x74], 0
	jmp	.label_552
.label_511:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x74], 0
	nop	
	jmp	.label_554
.label_531:
	mov	rsp, rsp
	mov	al, 1
	mov	dword ptr [rsp + 0x74], eax
.label_552:
	mov	r15d, dword ptr [rsp + 8]
.label_554:
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [r12 + 0x48]
	mov	rbp, rbp
	movzx	eax, byte ptr [rax + rdx - 1]
	cmp	eax, 0x2f
	jne	.label_559
	dec	rdx
.label_559:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 8], r15d
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	test	byte ptr [rax], 4
	je	.label_515
	mov	rax, qword ptr [r13 + 0x20]
	mov	rbp, rbp
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x28], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_515:
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
.label_566:
	mov	rsp, rsp
	mov	rbx, qword ptr [r12 + 0x18]
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_532
	mov	qword ptr [rsp + 0x88], rax
	mov	qword ptr [rsp + 0x18], rbp
	call	__errno_location
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x80], rax
	mov	rbp, qword ptr [rsp + 0x90]
	nop	word ptr cs:[rax + rax]
.label_526:
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
	je	.label_522
	mov	rsp, rsp
	mov	r13, r14
	add	r13, 0x13
	nop	
	test	byte ptr [rbp], 0x20
	jne	.label_525
	movzx	eax, byte ptr [r13]
	mov	rsp, rsp
	cmp	eax, 0x2e
	lea	rdi, [rdi]
	jne	.label_525
	nop	
	movzx	eax, byte ptr [r14 + 0x14]
	cmp	eax, 0x2e
	lea	rdi, [rdi]
	je	.label_530
	test	al, al
	je	.label_572
	lea	rsi, [rsi]
	jmp	.label_525
	nop	word ptr cs:[rax + rax]
.label_530:
	mov	rsp, rsp
	cmp	byte ptr [r14 + 0x15], 0
	lea	rsi, [rsi]
	jne	.label_525
.label_572:
	nop	
	mov	rbx, qword ptr [r12 + 0x18]
	test	rbx, rbx
	nop	
	jne	.label_526
	jmp	.label_542
	nop	word ptr cs:[rax + rax]
.label_525:
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
	je	.label_550
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
	jae	.label_558
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	jmp	.label_510
.label_558:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x48]
	lea	rsi, [rax + rbx]
	lea	rdi, [rdi]
	add	rsi, qword ptr [rbp + 0x30]
	jb	.label_546
	lea	rdi, [rdi]
	mov	qword ptr [rbp + 0x30], rsi
	mov	rdi, r13
	call	realloc
	lea	rdi, [rdi]
	test	rax, rax
	nop	
	je	.label_578
	mov	rsp, rsp
	mov	qword ptr [rbp + 0x20], rax
	lea	rdi, [rdi]
	cmp	r13, rax
	lea	rsi, [rsi]
	je	.label_580
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
	jmp	.label_513
.label_580:
	mov	rdx, qword ptr [rsp + 0x78]
.label_513:
	mov	rax, qword ptr [rbp + 0x30]
	sub	rax, rdx
.label_510:
	mov	rsp, rsp
	add	rbx, rdx
	jb	.label_519
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
	jne	.label_521
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_538
	nop	word ptr cs:[rax + rax]
.label_521:
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
.label_538:
	mov	rax, qword ptr [rsp + 0x90]
	mov	edx, dword ptr [rax]
	nop	
	mov	rax, qword ptr [rsp + 0x30]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	je	.label_536
	mov	eax, edx
	mov	rsp, rsp
	and	eax, 0x400
	jne	.label_536
	xor	edx, edx
	mov	rsp, rsp
	mov	rdi, r13
	mov	rsp, rsp
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	mov	rbp, qword ptr [rsp + 0x18]
	jmp	.label_556
	nop	
.label_536:
	and	edx, 0x18
	movzx	ecx, byte ptr [r14 + 0x12]
	xor	eax, eax
	cmp	edx, 0x18
	lea	rsi, [rsi]
	mov	edx, 0
	lea	rdi, [rdi]
	jne	.label_560
	nop	
	cmp	ecx, 4
	setne	bl
	test	cl, cl
	setne	dl
	and	dl, bl
.label_560:
	mov	word ptr [r12 + 0x70], 0xb
	mov	rsp, rsp
	lea	esi, [rcx - 1]
	mov	rsp, rsp
	cmp	esi, 0xb
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x18]
	ja	.label_564
	mov	eax,  dword ptr [dword ptr [+ (rcx * 4) + label_568]]
.label_564:
	mov	dword ptr [r12 + 0x90], eax
	cmp	dl, 1
	mov	eax, 1
	adc	rax, 0
	mov	rsp, rsp
	mov	qword ptr [r12 + 0xa8], rax
.label_556:
	mov	qword ptr [r12 + 0x10], 0
	test	r15, r15
	nop	
	mov	rax, r12
	je	.label_505
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, r15
.label_505:
	mov	rbp, rbp
	mov	r15, rax
	cmp	rbp, 0x2710
	jne	.label_507
	mov	rax, qword ptr [rsp + 0x30]
	cmp	qword ptr [rax], 0
	nop	
	jne	.label_507
	mov	esi, dword ptr [rsp + 0x5c]
	mov	rdi, qword ptr [rsp + 0x68]
	nop	
	call	filesystem_type
	mov	dword ptr [rsp + 0xc], 0
	cmp	rax, 0x6969
	mov	rbp, rbp
	je	.label_507
	mov	rsp, rsp
	cmp	rax, 0x1021994
	je	.label_507
	mov	ecx, 0xff534d42
	mov	rbp, rbp
	cmp	rax, rcx
	mov	rsp, rsp
	je	.label_507
	mov	rsp, rsp
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	nop	word ptr cs:[rax + rax]
.label_507:
	mov	rbp, rbp
	inc	rbp
	cmp	qword ptr [rsp + 0x50], rbp
	mov	rbp, rbp
	mov	rax, r12
	mov	r12, qword ptr [rsp + 0x68]
	ja	.label_566
	jmp	.label_532
.label_522:
	mov	rax, qword ptr [rsp + 0x80]
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_523
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
.label_523:
	mov	rdi, qword ptr [r12 + 0x18]
	lea	rdi, [rdi]
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x98]
	je	.label_532
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
	jmp	.label_532
.label_542:
	mov	r13, qword ptr [rsp + 0x98]
	mov	rbp, qword ptr [rsp + 0x18]
.label_532:
	nop	
	mov	rax, qword ptr [rsp + 0x40]
	test	al, 1
	lea	rsi, [rsi]
	je	.label_543
	mov	rcx, qword ptr [r13 + 8]
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 0x20]
	lea	rdi, [rdi]
	jmp	.label_545
	nop	word ptr cs:[rax + rax]
.label_553:
	mov	qword ptr [rcx + 0x38], rax
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
.label_545:
	nop	
	test	rcx, rcx
	je	.label_551
	mov	rdx, qword ptr [rcx + 0x30]
	mov	rbp, rbp
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_553
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x30], rdx
	mov	rsp, rsp
	jmp	.label_553
.label_551:
	cmp	qword ptr [r15 + 0x58], 0
	mov	rsp, rsp
	js	.label_543
	mov	rcx, r15
	nop	word ptr cs:[rax + rax]
.label_567:
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	lea	rsi, [rsi]
	je	.label_562
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x30], rdx
.label_562:
	mov	qword ptr [rcx + 0x38], rax
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_535
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + 8]
.label_535:
	lea	rdi, [rdi]
	cmp	qword ptr [rdx + 0x58], 0
	mov	rbp, rbp
	mov	rcx, rdx
	jns	.label_567
.label_543:
	nop	
	mov	rax, qword ptr [rsp + 0x90]
	test	byte ptr [rax], 4
	mov	rbp, rbp
	je	.label_569
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
.label_569:
	cmp	qword ptr [rsp + 0x38], 0
	jne	.label_514
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x74]
	nop	
	test	al, al
	je	.label_514
	cmp	dword ptr [rsp + 8], 1
	je	.label_565
	mov	rsp, rsp
	test	rbp, rbp
	lea	rdi, [rdi]
	jne	.label_514
.label_565:
	cmp	qword ptr [r12 + 0x58], 0
	je	.label_582
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r12 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_2
	nop	
	mov	rdi, r13
	call	fts_safe_changedir
	jmp	.label_541
.label_582:
	mov	rdi, r13
	lea	rdi, [rdi]
	call	restore_initial_cwd
.label_541:
	test	eax, eax
	je	.label_514
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
	je	.label_508
	xor	ebx, ebx
.label_529:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	mov	rbp, rbp
	test	rdi, rdi
	mov	rsp, rsp
	je	.label_517
	call	closedir
.label_517:
	lea	rdi, [rdi]
	mov	rdi, r15
	call	free
	mov	rsp, rsp
	test	rbp, rbp
	mov	r15, rbp
	jne	.label_529
	mov	rbp, rbp
	jmp	.label_508
.label_514:
	test	rbp, rbp
	mov	rbp, rbp
	je	.label_570
	mov	eax, dword ptr [rsp + 0xc]
	test	al, 1
	jne	.label_576
	cmp	rbp, 2
	jb	.label_537
	nop	
	mov	rax, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_539
	mov	rbp, rbp
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	fts_sort
	mov	rbx, rax
	mov	rbp, rbp
	jmp	.label_508
.label_570:
	cmp	dword ptr [rsp + 8], 3
	jne	.label_503
	lea	rdi, [rdi]
	movzx	eax, word ptr [r12 + 0x70]
	cmp	eax, 4
	lea	rsi, [rsi]
	je	.label_503
	movzx	eax, ax
	cmp	eax, 7
	lea	rdi, [rdi]
	je	.label_503
	mov	word ptr [r12 + 0x70], 6
.label_503:
	xor	ebx, ebx
	test	r15, r15
	je	.label_508
	nop	
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_563:
	nop	
	mov	rbp, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	nop	
	je	.label_555
	mov	rbp, rbp
	call	closedir
.label_555:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	test	rbp, rbp
	mov	rsp, rsp
	mov	r15, rbp
	jne	.label_563
	mov	rsp, rsp
	jmp	.label_508
.label_576:
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
	jmp	.label_508
.label_537:
	mov	rbx, r15
	nop	
	jmp	.label_508
.label_539:
	nop	
	mov	rbx, r15
	jmp	.label_508
.label_519:
	mov	rdi, r12
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	test	r15, r15
	mov	rbp, rbp
	je	.label_574
	nop	word ptr cs:[rax + rax]
.label_579:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r15 + 0x10]
	nop	
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_547
	call	closedir
.label_547:
	nop	
	mov	rdi, r15
	call	free
	lea	rsi, [rsi]
	test	rbx, rbx
	nop	
	mov	r15, rbx
	mov	rsp, rsp
	jne	.label_579
.label_574:
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
	jmp	.label_508
.label_546:
	mov	rdi, r13
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 0x20], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x80]
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x24
	jmp	.label_520
.label_578:
	mov	rdi, qword ptr [rbp + 0x20]
	call	free
	mov	rsp, rsp
	mov	qword ptr [rbp + 0x20], 0
.label_520:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa0], r12
	mov	rbp, qword ptr [rsp + 0x90]
.label_550:
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
	je	.label_540
	nop	word ptr cs:[rax + rax]
.label_548:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 0x18]
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_544
	lea	rdi, [rdi]
	call	closedir
.label_544:
	mov	rdi, r15
	lea	rdi, [rdi]
	call	free
	test	rbx, rbx
	mov	rsp, rsp
	mov	r15, rbx
	jne	.label_548
.label_540:
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
.label_508:
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
	#Procedure 0x409360

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
	jne	.label_583
	nop	
	test	ah, 2
	lea	rsi, [rsi]
	jne	.label_588
	mov	edi, dword ptr [rbx + 0x28]
	mov	rsp, rsp
	call	fchdir
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	setne	al
	jmp	.label_585
.label_583:
	xor	eax, eax
	jmp	.label_585
.label_588:
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbx + 0x2c]
	lea	rdi, [rbx + 0x60]
	mov	rbp, rbp
	call	i_ring_push
	test	eax, eax
	mov	rbp, rbp
	js	.label_586
	mov	rsp, rsp
	mov	edi, eax
	lea	rdi, [rdi]
	call	close
.label_586:
	nop	
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
	lea	rsi, [rsi]
	xor	eax, eax
.label_585:
	mov	rsp, rsp
	movzx	ebp, al
	lea	rsi, [rsi]
	add	rbx, 0x60
	jmp	.label_587
	nop	dword ptr [rax]
.label_584:
	mov	edi, eax
	mov	rbp, rbp
	call	close
.label_587:
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	i_ring_empty
	mov	rsp, rsp
	test	al, al
	nop	
	jne	.label_589
	mov	rdi, rbx
	call	i_ring_pop
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jns	.label_584
	lea	rsi, [rsi]
	jmp	.label_587
.label_589:
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
	#Procedure 0x409430

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
	je	.label_593
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	nop	
	je	.label_594
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
	je	.label_590
	mov	rsp, rsp
	mov	rdi, rbx
	call	free
	nop	
	test	r15, r15
	je	.label_592
	nop	
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [r14], rax
	jmp	.label_591
.label_593:
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
	je	.label_590
	lea	rsi, [rsi]
	mov	qword ptr [r14], r14
.label_591:
	nop	
	mov	word ptr [r14 + 0x70], 2
	lea	rsi, [rsi]
	jmp	.label_590
.label_594:
	xor	ebp, ebp
	jmp	.label_590
.label_592:
	xor	ebp, ebp
.label_590:
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
	#Procedure 0x409510

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	mov	rsp, rsp
	cmp	edx, 5
	jb	.label_595
	nop	
	push	rax
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	mov	rbp, rbp
	add	rsp, 8
	ret	
.label_595:
	mov	rsp, rsp
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409540
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
	jne	.label_596
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
	jne	.label_597
	movzx	ecx, word ptr [r15 + 0x70]
	mov	rbp, rbp
	xor	eax, eax
	cmp	ecx, 1
	je	.label_605
	movzx	ecx, cx
	cmp	ecx, 9
	nop	
	jne	.label_597
	mov	rax, qword ptr [r15 + 0x10]
	jmp	.label_597
.label_596:
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x16
	mov	rsp, rsp
	xor	eax, eax
	nop	
	jmp	.label_597
.label_605:
	mov	rbx, qword ptr [r13 + 8]
	test	rbx, rbx
	nop	
	je	.label_608
	nop	word ptr cs:[rax + rax]
.label_600:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_610
	call	closedir
.label_610:
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	test	rbp, rbp
	nop	
	mov	rbx, rbp
	jne	.label_600
.label_608:
	mov	ebx, 1
	lea	rsi, [rsi]
	cmp	r12d, 0x1000
	jne	.label_604
	or	byte ptr [r13 + 0x49], 0x10
	mov	rsp, rsp
	mov	ebx, 2
.label_604:
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x58], 0
	nop	
	jne	.label_603
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x30]
	mov	rsp, rsp
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x2f
	je	.label_603
	mov	eax, dword ptr [r13 + 0x48]
	test	al, 4
	lea	rdi, [rdi]
	jne	.label_603
	mov	edx, eax
	and	edx, 0x10
	lea	rsi, [rsi]
	shl	edx, 0xd
	or	edx, 0x90900
	mov	rsp, rsp
	test	ah, 2
	jne	.label_606
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str_7
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, edx
	mov	rbp, rbp
	call	open_safer
	jmp	.label_601
.label_603:
	mov	rdi, r13
	mov	esi, ebx
	mov	rbp, rbp
	call	fts_build
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 8], rax
.label_597:
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
.label_606:
	mov	edi, dword ptr [r13 + 0x2c]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str_7
	xor	eax, eax
	call	openat_safer
.label_601:
	mov	r15d, eax
	test	r15d, r15d
	mov	rbp, rbp
	js	.label_612
	mov	rbp, rbp
	mov	rdi, r13
	mov	esi, ebx
	lea	rsi, [rsi]
	call	fts_build
	mov	rsp, rsp
	mov	qword ptr [r13 + 8], rax
	mov	rbp, rbp
	test	byte ptr [r13 + 0x49], 2
	jne	.label_609
	nop	
	mov	edi, r15d
	call	fchdir
	test	eax, eax
	je	.label_599
	lea	rdi, [rdi]
	mov	ebx, dword ptr [r14]
	mov	edi, r15d
	call	close
	mov	rsp, rsp
	mov	dword ptr [r14], ebx
	mov	rsp, rsp
	xor	eax, eax
	nop	
	jmp	.label_597
.label_612:
	lea	rdi, [rdi]
	mov	qword ptr [r13 + 8], 0
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_597
.label_609:
	mov	esi, dword ptr [r13 + 0x2c]
	mov	rbp, rbp
	cmp	esi, r15d
	mov	rsp, rsp
	jne	.label_598
	lea	rsi, [rsi]
	cmp	esi, -0x64
	jne	.label_602
.label_598:
	lea	rdi, [r13 + 0x60]
	call	i_ring_push
	test	eax, eax
	mov	rbp, rbp
	js	.label_607
	mov	edi, eax
	mov	rbp, rbp
	call	close
.label_607:
	mov	dword ptr [r13 + 0x2c], r15d
	jmp	.label_611
.label_599:
	lea	rsi, [rsi]
	mov	edi, r15d
	call	close
.label_611:
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 8]
	jmp	.label_597
.label_602:
	mov	rbp, rbp
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4097a0

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
	#Procedure 0x4097c0

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	mov	rbp, rbp
	jne	.label_613
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	mov	rsp, rsp
	ret	
.label_613:
	mov	rsp, rsp
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4097f0

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
	je	.label_614
	mov	rbp, qword ptr [rbx + 0x50]
	mov	rbp, rbp
	test	rbp, rbp
	jne	.label_619
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
	je	.label_617
.label_619:
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
	je	.label_616
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	jmp	.label_614
.label_616:
	mov	r12b, 1
	mov	r14, rbp
.label_617:
	xor	eax, eax
	nop	
	test	r15d, r15d
	js	.label_614
	lea	rsi, [rsp + 0x10]
	mov	edi, r15d
	mov	rbp, rbp
	call	fstatfs
	mov	ecx, eax
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	test	ecx, ecx
	jne	.label_614
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_615
	mov	edi, 0x10
	lea	rsi, [rsi]
	call	malloc
	mov	rbp, rax
	nop	
	test	rbp, rbp
	je	.label_615
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
	je	.label_618
	nop	
	cmp	rax, rbp
	lea	rsi, [rsi]
	je	.label_615
	lea	rdi, [rdi]
	call	abort
.label_618:
	mov	rdi, rbp
	call	free
.label_615:
	mov	rax, qword ptr [rsp + 0x10]
.label_614:
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
	#Procedure 0x409960

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
	#Procedure 0x409980

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
	#Procedure 0x409990

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
	#Procedure 0x4099d0

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
	je	.label_620
	nop	
	cmp	r15, -2
	jb	.label_620
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_620
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_620:
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
	#Procedure 0x409a60

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
	jne	.label_621
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_622
	test	cl, cl
	mov	rsp, rsp
	jne	.label_622
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_622
.label_621:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_622
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_622:
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
	#Procedure 0x409af0

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
	#Procedure 0x409b10

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	nop	
	cmp	dword ptr [rdi + 0x18], 0x95f616
	jne	.label_623
	mov	rbp, rbp
	mov	rcx, qword ptr [rdi + 0x10]
	test	rcx, rcx
	je	.label_625
	mov	rax, qword ptr [rsi + 8]
	cmp	rax, qword ptr [rdi]
	nop	
	jne	.label_625
	mov	rsp, rsp
	mov	rdx, qword ptr [rsi]
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	je	.label_626
.label_625:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 1]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x10], rdx
	mov	rbp, rbp
	test	rdx, rcx
	jne	.label_624
	mov	al, 1
	test	rdx, rdx
	lea	rsi, [rsi]
	je	.label_626
	mov	rax, qword ptr [rsi]
	nop	
	mov	qword ptr [rdi + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi], rax
.label_624:
	mov	rsp, rsp
	xor	eax, eax
.label_626:
	ret	
.label_623:
	push	rax
	mov	edi, OFFSET FLAT:.str_8
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0x3c
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.cycle_check
	nop	
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409ba0

	.globl open_safer
	.type open_safer, @function
open_safer:
	mov	rsp, rsp
	sub	rsp, 0xc8
	nop	
	test	al, al
	mov	rbp, rbp
	je	.label_627
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
.label_627:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	xor	edx, edx
	nop	
	test	sil, 0x40
	je	.label_628
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
	ja	.label_629
	lea	rsi, [rsi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_630
.label_629:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_630:
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax]
.label_628:
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
	#Procedure 0x409cc0

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
	je	.label_632
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_631
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_633
.label_631:
	nop	
	mov	esi, OFFSET FLAT:.str.1_6
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_632
.label_633:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_632:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409d10
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d20
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d30
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d40
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
	jae	.label_634
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
	jb	.label_639
	xor	eax, eax
	nop	
	cmp	qword ptr [rcx], 0
	mov	rsp, rsp
	je	.label_640
	mov	rbp, rbp
	mov	rdi, rcx
	nop	dword ptr [rax]
.label_636:
	nop	
	mov	rdi, qword ptr [rdi + 8]
	inc	rax
	mov	rsp, rsp
	test	rdi, rdi
	lea	rdi, [rdi]
	jne	.label_636
.label_640:
	add	rcx, 0x10
.label_639:
	nop	
	test	rsi, rsi
	je	.label_634
	nop	word ptr cs:[rax + rax]
.label_641:
	cmp	qword ptr [rcx], 0
	nop	
	mov	esi, 0
	mov	rdi, rcx
	mov	rbp, rbp
	je	.label_635
	nop	word ptr cs:[rax + rax]
.label_637:
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_637
	mov	rbp, rbp
	cmp	rsi, rax
	lea	rsi, [rsi]
	cmova	rax, rsi
.label_635:
	cmp	qword ptr [rcx + 0x10], 0
	nop	
	je	.label_642
	lea	rdi, [rcx + 0x10]
	xor	esi, esi
	nop	word ptr [rax + rax]
.label_638:
	mov	rdi, qword ptr [rdi + 8]
	mov	rbp, rbp
	inc	rsi
	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rsi, [rsi]
	jne	.label_638
	mov	rsp, rsp
	cmp	rsi, rax
	nop	
	cmova	rax, rsi
.label_642:
	mov	rsp, rsp
	add	rcx, 0x20
	mov	rsp, rsp
	cmp	rcx, rdx
	mov	rsp, rsp
	jb	.label_641
.label_634:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409e50
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
	jae	.label_648
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
	jb	.label_653
	xor	edx, edx
	cmp	qword ptr [rcx], 0
	mov	rsp, rsp
	je	.label_649
	mov	esi, 1
	mov	rax, rcx
	nop	dword ptr [rax + rax]
.label_650:
	mov	rbp, rbp
	inc	rdx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	test	rax, rax
	jne	.label_650
	mov	rsp, rsp
	jmp	.label_645
.label_653:
	mov	rbp, rbp
	xor	esi, esi
	jmp	.label_647
.label_649:
	xor	esi, esi
.label_645:
	add	rcx, 0x10
.label_647:
	test	r8, r8
	nop	
	je	.label_648
	nop	dword ptr [rax]
.label_654:
	cmp	qword ptr [rcx], 0
	mov	rbp, rbp
	mov	rax, rcx
	je	.label_651
	nop	dword ptr [rax]
.label_652:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	jne	.label_652
	lea	rdi, [rdi]
	inc	rsi
.label_651:
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_646
	lea	rax, [rcx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_643:
	lea	rdi, [rdi]
	inc	rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_643
	inc	rsi
.label_646:
	add	rcx, 0x20
	cmp	rcx, r9
	jb	.label_654
.label_648:
	cmp	rsi, qword ptr [rdi + 0x18]
	jne	.label_655
	lea	rdi, [rdi]
	mov	al, 1
	nop	
	cmp	rdx, qword ptr [rdi + 0x20]
	lea	rsi, [rsi]
	je	.label_644
.label_655:
	xor	eax, eax
.label_644:
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409f60
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
	jae	.label_656
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
	jb	.label_657
	mov	rbp, rbp
	xor	ebx, ebx
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_661
	mov	rsp, rsp
	mov	rdi, rax
	nop	word ptr [rax + rax]
.label_658:
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 8]
	inc	rbx
	nop	
	test	rdi, rdi
	lea	rdi, [rdi]
	jne	.label_658
.label_661:
	add	rax, 0x10
.label_657:
	test	rsi, rsi
	je	.label_656
	nop	dword ptr [rax]
.label_666:
	cmp	qword ptr [rax], 0
	mov	esi, 0
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	je	.label_667
	nop	word ptr cs:[rax + rax]
.label_659:
	mov	rdi, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	inc	rsi
	nop	
	test	rdi, rdi
	jne	.label_659
	mov	rbp, rbp
	cmp	rsi, rbx
	cmova	rbx, rsi
.label_667:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_660
	lea	rdi, [rax + 0x10]
	xor	esi, esi
	nop	word ptr [rax + rax]
.label_662:
	mov	rdi, qword ptr [rdi + 8]
	mov	rsp, rsp
	inc	rsi
	test	rdi, rdi
	jne	.label_662
	mov	rbp, rbp
	cmp	rsi, rbx
	mov	rbp, rbp
	cmova	rbx, rsi
.label_660:
	add	rax, 0x20
	nop	
	cmp	rax, rdx
	jb	.label_666
.label_656:
	lea	rsi, [rsi]
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_9
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.1_7
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	nop	
	call	__fprintf_chk
	nop	
	movq	xmm1, r14
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_663]]
	punpckldq	xmm1, xmm2
	lea	rsi, [rsi]
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_664]]
	nop	
	subpd	xmm1, xmm3
	lea	rdi, [rdi]
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	lea	rsi, [rsi]
	mulsd	xmm0,  qword ptr [word ptr [rip + label_665]]
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
	mov	edx, OFFSET FLAT:.str.3_1
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
	#Procedure 0x40a170

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
	jae	.label_669
	mov	rbx, qword ptr [r14]
	nop	
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	mov	rsp, rsp
	test	rsi, rsi
	je	.label_671
	lea	rsi, [rsi]
	add	rbx, rax
	je	.label_671
	cmp	rsi, r12
	je	.label_668
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_672:
	nop	
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_670
	nop	
	mov	rbx, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_671
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx]
	nop	
	cmp	rsi, r12
	lea	rdi, [rdi]
	jne	.label_672
.label_668:
	mov	r15, r12
	jmp	.label_671
.label_670:
	nop	
	mov	r15, qword ptr [rbx]
.label_671:
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
.label_669:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a230
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	mov	rbp, rbp
	je	.label_673
	nop	
	mov	rcx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdi + 8]
	mov	rbp, rbp
	jmp	.label_675
	nop	dword ptr [rax]
.label_674:
	add	rcx, 0x10
.label_675:
	cmp	rcx, rdx
	jae	.label_676
	mov	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_674
.label_673:
	mov	rsp, rsp
	ret	
.label_676:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a270
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
	jae	.label_680
	nop	
	mov	rcx, qword ptr [r14]
	lea	rdi, [rdi]
	shl	rax, 4
	nop	
	lea	rdx, [rcx + rax]
	nop	word ptr [rax + rax]
.label_682:
	nop	
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	je	.label_678
	test	rdx, rdx
	jne	.label_682
	lea	rdi, [rdi]
	jmp	.label_679
.label_678:
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_679
	mov	rax, qword ptr [rdx]
	jmp	.label_677
.label_679:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rax + rcx + 0x10]
	nop	dword ptr [rax]
.label_681:
	mov	rbp, rbp
	cmp	rcx, rdx
	mov	eax, 0
	mov	rbp, rbp
	jae	.label_677
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_681
.label_677:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_680:
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a310
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	nop
	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_683
	nop	word ptr cs:[rax + rax]
.label_685:
	add	r9, 0x10
.label_683:
	nop	
	cmp	r9, r8
	lea	rdi, [rdi]
	jae	.label_684
	lea	rsi, [rsi]
	cmp	qword ptr [r9], 0
	je	.label_685
	test	r9, r9
	mov	rbp, rbp
	mov	r10, r9
	mov	rbp, rbp
	je	.label_685
	nop	word ptr cs:[rax + rax]
.label_686:
	mov	rsp, rsp
	cmp	rax, rdx
	jae	.label_684
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
	jne	.label_686
	mov	r8, qword ptr [rdi + 8]
	jmp	.label_685
.label_684:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a390
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
	jmp	.label_690
	nop	dword ptr [rax]
.label_687:
	lea	rsi, [rsi]
	add	r13, 0x10
.label_690:
	nop	
	cmp	r13, rax
	lea	rsi, [rsi]
	jae	.label_688
	mov	rdi, qword ptr [r13]
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_687
	test	r13, r13
	lea	rdi, [rdi]
	je	.label_687
	mov	rsi, r14
	lea	rsi, [rsi]
	call	r15
	mov	rbp, rbp
	test	al, al
	mov	rbp, r13
	mov	rsp, rsp
	je	.label_688
	nop	word ptr [rax + rax]
.label_691:
	mov	rsp, rsp
	inc	rbx
	mov	rbp, rbp
	mov	rbp, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	test	rbp, rbp
	je	.label_689
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_691
	jmp	.label_688
	nop	word ptr cs:[rax + rax]
.label_689:
	mov	rax, qword ptr [r12 + 8]
	mov	rbp, rbp
	jmp	.label_687
.label_688:
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
	#Procedure 0x40a460
	.globl hash_string
	.type hash_string, @function
hash_string:

	nop
	mov	al, byte ptr [rdi]
	nop	
	xor	edx, edx
	test	al, al
	je	.label_693
	inc	rdi
	nop	
	xor	edx, edx
.label_692:
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
	jne	.label_692
.label_693:
	mov	rax, rdx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a4a0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	nop
	mov	eax,  dword ptr [dword ptr [rip + label_694]]
	mov	dword ptr [rdi + 0x10], eax
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a4c0

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
	je	.label_698
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	mov	rbp, rbp
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_705
	movss	xmm0, dword ptr [rbx + 8]
	mov	rsp, rsp
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_696]]
	jbe	.label_695
	lea	rsi, [rsi]
	movss	xmm1,  dword ptr [dword ptr [rip + label_702]]
	ucomiss	xmm1, xmm0
	jbe	.label_695
	mov	rbp, rbp
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_709]]
	lea	rsi, [rsi]
	jbe	.label_695
	movss	xmm1, dword ptr [rbx]
	lea	rsi, [rsi]
	xorps	xmm2, xmm2
	lea	rsi, [rsi]
	ucomiss	xmm1, xmm2
	jb	.label_695
	addss	xmm1,  dword ptr [dword ptr [rip + label_696]]
	ucomiss	xmm0, xmm1
	lea	rdi, [rdi]
	jbe	.label_695
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbx + 4]
	lea	rdi, [rdi]
	movss	xmm2,  dword ptr [dword ptr [rip + label_708]]
	ucomiss	xmm2, xmm0
	jb	.label_695
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	mov	rsp, rsp
	jbe	.label_695
.label_705:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_703
	lea	rsi, [rsi]
	mov	eax, r12d
	and	eax, 1
	nop	
	test	r12, r12
	js	.label_704
	mov	rbp, rbp
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_710
.label_704:
	shr	r12, 1
	mov	rsp, rsp
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	lea	rdi, [rdi]
	addss	xmm0, xmm0
.label_710:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_700]]
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
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_701]]
	nop	
	jae	.label_695
.label_703:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	mov	rsp, rsp
	jmp	.label_707
.label_706:
	mov	rbp, rbp
	add	rbx, 2
.label_707:
	cmp	rbx, -1
	mov	rbp, rbp
	je	.label_695
	cmp	rbx, 0xa
	mov	rbp, rbp
	mov	esi, 0xc
	mov	edi, 9
	mov	rbp, rbp
	mov	ecx, 3
	lea	rdi, [rdi]
	jb	.label_699
	nop	word ptr cs:[rax + rax]
.label_697:
	xor	edx, edx
	mov	rax, rbx
	lea	rsi, [rsi]
	div	rcx
	test	rdx, rdx
	nop	
	je	.label_699
	mov	rbp, rbp
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	mov	rsp, rsp
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_697
.label_699:
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_706
	mov	rbp, rbp
	mov	rax, rbx
	lea	rdi, [rdi]
	shr	rax, 0x3c
	jne	.label_695
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_695
	mov	esi, 0x10
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	rpl_calloc
	lea	rsi, [rsi]
	mov	qword ptr [r15], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_695
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
	jmp	.label_698
.label_695:
	nop	
	mov	rdi, r15
	call	free
	nop	
	xor	eax, eax
.label_698:
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
	#Procedure 0x40a7a0

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
	#Procedure 0x40a7c0

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
	#Procedure 0x40a7d0
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
	jmp	.label_715
.label_711:
	mov	rsp, rsp
	add	r14, 0x10
.label_715:
	cmp	r14, rax
	jae	.label_716
	lea	rdi, [rdi]
	cmp	qword ptr [r14], 0
	nop	
	je	.label_711
	mov	rsp, rsp
	mov	rbx, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	nop	
	setne	cl
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_713
	nop	word ptr [rax + rax]
.label_712:
	nop	
	test	cl, 1
	je	.label_714
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	call	rax
	nop	
	mov	rax, qword ptr [r15 + 0x40]
.label_714:
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
	jne	.label_712
.label_713:
	test	cl, cl
	je	.label_717
	mov	rdi, qword ptr [r14]
	call	rax
.label_717:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	nop	
	jmp	.label_711
.label_716:
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
	#Procedure 0x40a8b0

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
	je	.label_723
	lea	rdi, [rdi]
	cmp	qword ptr [r14 + 0x20], 0
	lea	rdi, [rdi]
	je	.label_723
	mov	r15, qword ptr [r14]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 8]
	mov	rbp, rbp
	jmp	.label_725
	nop	word ptr [rax + rax]
.label_727:
	mov	rsp, rsp
	add	r15, 0x10
.label_725:
	lea	rdi, [rdi]
	cmp	r15, rax
	jae	.label_723
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_727
	test	r15, r15
	je	.label_727
	mov	rbp, rbp
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_719
	nop	dword ptr [rax]
.label_718:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_719:
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_718
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_727
.label_723:
	mov	r15, qword ptr [r14]
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	jmp	.label_722
	nop	dword ptr [rax + rax]
.label_720:
	mov	rbp, rbp
	add	r15, 0x10
.label_722:
	cmp	r15, rax
	jae	.label_724
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_720
	nop	dword ptr [rax + rax]
.label_728:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_728
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_720
.label_724:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_721
	nop	word ptr cs:[rax + rax]
.label_726:
	nop	
	mov	rbx, qword ptr [rdi + 8]
	call	free
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	jne	.label_726
.label_721:
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
	#Procedure 0x40a9e0

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
	jne	.label_740
	lea	rsi, [rsi]
	mov	ecx, esi
	nop	
	and	ecx, 1
	lea	rsi, [rsi]
	test	rsi, rsi
	js	.label_731
	lea	rdi, [rdi]
	cvtsi2ss	xmm0, rsi
	lea	rdi, [rdi]
	jmp	.label_739
.label_731:
	shr	rsi, 1
	or	rcx, rsi
	mov	rsp, rsp
	cvtsi2ss	xmm0, rcx
	mov	rbp, rbp
	addss	xmm0, xmm0
.label_739:
	nop	
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_700]]
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
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_701]]
	mov	rbp, rbp
	jae	.label_729
.label_740:
	mov	rsp, rsp
	cmp	rsi, 0xa
	mov	rbp, rbp
	mov	ebx, 0xa
	mov	rbp, rbp
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_736
	nop	word ptr cs:[rax + rax]
.label_735:
	lea	rsi, [rsi]
	add	rbx, 2
.label_736:
	cmp	rbx, -1
	je	.label_729
	cmp	rbx, 0xa
	mov	rbp, rbp
	mov	esi, 0xc
	nop	
	mov	edi, 9
	lea	rsi, [rsi]
	mov	ecx, 3
	lea	rsi, [rsi]
	jb	.label_733
.label_745:
	nop	
	xor	edx, edx
	mov	rax, rbx
	nop	
	div	rcx
	test	rdx, rdx
	je	.label_733
	lea	rdi, [rdi + rsi + 4]
	nop	
	add	rcx, 2
	add	rsi, 8
	lea	rsi, [rsi]
	cmp	rdi, rbx
	jb	.label_745
.label_733:
	mov	rsp, rsp
	xor	edx, edx
	nop	
	mov	rax, rbx
	div	rcx
	mov	rsp, rsp
	test	rdx, rdx
	je	.label_735
	nop	
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rsi, [rsi]
	ja	.label_729
	mov	bpl, 1
	mov	rbp, rbp
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_734
	nop	
	mov	esi, 0x10
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_729
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
	je	.label_730
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
	jmp	.label_734
.label_730:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x48], rax
	nop	
	mov	r12, qword ptr [rsp]
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jmp	.label_747
.label_742:
	add	r12, 0x10
.label_747:
	nop	
	cmp	r12, r15
	lea	rsi, [rsi]
	jae	.label_737
	cmp	qword ptr [r12], 0
	je	.label_742
	mov	rbp, rbp
	mov	rbp, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_744
	mov	rbp, rbp
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_738:
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp]
	nop	
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	lea	rsi, [rsi]
	jae	.label_743
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	nop	
	shl	rax, 4
	lea	rdi, [rdi]
	cmp	qword ptr [rdx + rax], 0
	je	.label_741
	mov	rbp, rbp
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp + 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_746
	nop	
.label_741:
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
.label_746:
	mov	rbp, rbp
	test	rcx, rcx
	mov	rbp, rcx
	nop	
	jne	.label_738
.label_744:
	nop	
	mov	qword ptr [r12 + 8], 0
	nop	
	jmp	.label_742
.label_737:
	nop	
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rbp, rbp
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_732
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp]
	call	free
.label_729:
	mov	rbp, rbp
	xor	ebp, ebp
.label_734:
	mov	al, bpl
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
.label_743:
	mov	rbp, rbp
	call	abort
.label_732:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ad50

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
	jae	.label_757
	nop	word ptr cs:[rax + rax]
.label_750:
	mov	r13, qword ptr [r14]
	nop	
	test	r13, r13
	mov	rbp, rbp
	je	.label_753
	lea	rdi, [rdi]
	mov	r15, qword ptr [r14 + 8]
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_756
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp + 0x10]
	nop	word ptr [rax + rax]
.label_752:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15]
	mov	rdi, rbx
	nop	
	call	qword ptr [rbp + 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp + 0x10]
	lea	rdi, [rdi]
	cmp	rax, rsi
	jae	.label_751
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp]
	mov	rcx, qword ptr [r15 + 8]
	nop	
	shl	rax, 4
	mov	rsp, rsp
	cmp	qword ptr [rdx + rax], 0
	lea	rsi, [rsi]
	je	.label_760
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [r15 + 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rdx + rax + 8], r15
	nop	
	jmp	.label_761
	nop	word ptr cs:[rax + rax]
.label_760:
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
.label_761:
	test	rcx, rcx
	mov	r15, rcx
	mov	rsp, rsp
	jne	.label_752
	mov	r13, qword ptr [r14]
.label_756:
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 8], 0
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 4]
	mov	rsp, rsp
	test	al, al
	mov	rsp, rsp
	jne	.label_753
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, r13
	mov	rbp, rbp
	call	qword ptr [rbp + 0x30]
	mov	rbp, rbp
	mov	rbx, rax
	mov	rsp, rsp
	cmp	rbx, qword ptr [rbp + 0x10]
	lea	rdi, [rdi]
	jae	.label_749
	mov	r15, qword ptr [rbp]
	shl	rbx, 4
	nop	
	cmp	qword ptr [r15 + rbx], 0
	je	.label_754
	mov	rax, qword ptr [rbp + 0x48]
	nop	
	test	rax, rax
	je	.label_758
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp + 0x48], rcx
	jmp	.label_759
.label_754:
	nop	
	add	r15, rbx
	nop	
	mov	qword ptr [r15], r13
	nop	
	inc	qword ptr [rbp + 0x18]
	mov	rsp, rsp
	jmp	.label_748
.label_758:
	mov	edi, 0x10
	nop	
	call	malloc
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_755
.label_759:
	mov	qword ptr [rax], r13
	nop	
	mov	rcx, qword ptr [r15 + rbx + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + rbx + 8], rax
.label_748:
	mov	rbp, rbp
	mov	qword ptr [r14], 0
	nop	
	dec	qword ptr [r12 + 0x18]
.label_753:
	mov	rbp, rbp
	add	r14, 0x10
	mov	rbp, rbp
	cmp	r14, qword ptr [r12 + 8]
	jb	.label_750
	mov	al, 1
.label_757:
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
.label_755:
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_757
.label_751:
	call	abort
.label_749:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40af60

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
	je	.label_771
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
	jae	.label_771
	mov	rbx, qword ptr [r13]
	mov	rbp, rbp
	shl	rbp, 4
	mov	rbp, rbp
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	nop	
	test	rsi, rsi
	je	.label_778
	mov	rsp, rsp
	cmp	rsi, r14
	je	.label_784
	mov	rdi, r14
	nop	
	call	qword ptr [r13 + 0x38]
	test	al, al
	lea	rdi, [rdi]
	je	.label_787
	mov	rax, qword ptr [r12]
	lea	rdi, [rdi]
	jmp	.label_780
.label_784:
	mov	rax, r14
	jmp	.label_789
.label_787:
	mov	rax, qword ptr [rbx + rbp + 8]
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_778
	lea	rbp, [rbx + rbp + 8]
	nop	
.label_776:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	mov	rsp, rsp
	je	.label_766
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	mov	rsp, rsp
	test	al, al
	jne	.label_773
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_776
	nop	
	jmp	.label_778
.label_766:
	mov	rbp, rbp
	mov	rax, r14
	jmp	.label_780
.label_773:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp]
.label_780:
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_778
.label_789:
	lea	rdi, [rdi]
	xor	ebp, ebp
	test	r15, r15
	je	.label_767
	lea	rsi, [rsi]
	mov	qword ptr [r15], rax
	mov	rsp, rsp
	jmp	.label_767
.label_778:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsp, rsp
	mov	edx, eax
	and	edx, 1
	nop	
	test	rax, rax
	mov	rbp, rbp
	js	.label_785
	cvtsi2ss	xmm1, rax
	jmp	.label_765
.label_785:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	lea	rdi, [rdi]
	addss	xmm1, xmm1
.label_765:
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	edx, ecx
	and	edx, 1
	mov	rbp, rbp
	test	rcx, rcx
	mov	rbp, rbp
	js	.label_774
	cvtsi2ss	xmm0, rcx
	jmp	.label_783
.label_774:
	shr	rcx, 1
	or	rdx, rcx
	lea	rsi, [rsi]
	cvtsi2ss	xmm0, rdx
	lea	rdi, [rdi]
	addss	xmm0, xmm0
.label_783:
	lea	rdi, [rdi]
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm1, xmm3
	nop	
	jbe	.label_764
	nop	
	mov	ecx, OFFSET FLAT:default_tuning
	mov	rsp, rsp
	cmp	rax, rcx
	mov	rbp, rbp
	je	.label_791
	ucomiss	xmm2,  dword ptr [dword ptr [rip + label_696]]
	jbe	.label_762
	nop	
	movss	xmm3,  dword ptr [dword ptr [rip + label_702]]
	ucomiss	xmm3, xmm2
	jbe	.label_762
	mov	rbp, rbp
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_709]]
	jbe	.label_762
	movss	xmm3, dword ptr [rax]
	lea	rsi, [rsi]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	lea	rdi, [rdi]
	jb	.label_762
	addss	xmm3,  dword ptr [dword ptr [rip + label_696]]
	ucomiss	xmm2, xmm3
	jbe	.label_762
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5,  dword ptr [dword ptr [rip + label_708]]
	ucomiss	xmm5, xmm4
	mov	rbp, rbp
	jb	.label_762
	lea	rsi, [rsi]
	ucomiss	xmm4, xmm3
	lea	rsi, [rsi]
	ja	.label_763
.label_762:
	mov	qword ptr [word ptr [r13 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	lea	rdi, [rdi]
	movss	xmm2,  dword ptr [dword ptr [rip + label_782]]
	jmp	.label_763
.label_791:
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:default_tuning
.label_763:
	movaps	xmm3, xmm2
	mov	rsp, rsp
	mulss	xmm3, xmm0
	lea	rsi, [rsi]
	ucomiss	xmm1, xmm3
	jbe	.label_764
	nop	
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rbp, rbp
	jne	.label_777
	mov	rbp, rbp
	mulss	xmm0, xmm2
.label_777:
	lea	rsi, [rsi]
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_701]]
	mov	rsp, rsp
	jae	.label_767
	nop	
	movss	xmm1,  dword ptr [dword ptr [rip + label_700]]
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
	je	.label_767
	mov	rsi, qword ptr [r13 + 0x10]
	nop	
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	lea	rsi, [rsi]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_771
	nop	
	mov	r15, qword ptr [r13]
	mov	rsp, rsp
	shl	rbp, 4
	mov	rbp, rbp
	lea	r12, [r15 + rbp]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + rbp]
	test	rsi, rsi
	je	.label_764
	cmp	rsi, r14
	mov	rbp, rbp
	mov	rax, r14
	lea	rdi, [rdi]
	je	.label_786
	mov	rdi, r14
	mov	rbp, rbp
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_772
	mov	rbp, rbp
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	jmp	.label_786
.label_772:
	mov	rax, qword ptr [r15 + rbp + 8]
	nop	
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_764
	lea	rbp, [r15 + rbp + 8]
.label_781:
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	lea	rdi, [rdi]
	je	.label_770
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsp, rsp
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	mov	rsp, rsp
	test	al, al
	mov	rsp, rsp
	jne	.label_779
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 8]
	mov	rsp, rsp
	add	rbp, 8
	test	rax, rax
	mov	rsp, rsp
	jne	.label_781
	lea	rsi, [rsi]
	jmp	.label_764
.label_770:
	mov	rax, r14
	lea	rdi, [rdi]
	jmp	.label_786
.label_779:
	mov	rax, qword ptr [rbp]
.label_786:
	mov	rsp, rsp
	test	rax, rax
	jne	.label_788
.label_764:
	cmp	qword ptr [r12], 0
	je	.label_790
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	mov	rbp, rbp
	je	.label_792
	mov	rcx, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [r13 + 0x48], rcx
	nop	
	jmp	.label_775
.label_790:
	lea	rsi, [rsi]
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0,  xmmword ptr [word ptr [rip + label_768]]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	mov	rsp, rsp
	jmp	.label_769
.label_792:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_767
.label_775:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_769:
	lea	rdi, [rdi]
	mov	ebp, 1
.label_767:
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
.label_771:
	mov	rsp, rsp
	call	abort
.label_788:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b3a0

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
	je	.label_793
	nop	
	test	ecx, ecx
	mov	rbp, rbp
	cmove	rbx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rax, rbx
.label_793:
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbx
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b3f0

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
	jae	.label_796
	mov	rbp, rbp
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	nop	
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_797
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_801
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rsp, rsp
	test	al, al
	nop	
	je	.label_806
	mov	r14, qword ptr [r13]
.label_801:
	nop	
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_809
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
	jmp	.label_813
.label_806:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_797
	lea	rsi, [rsi]
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_808:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_800
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	mov	rsp, rsp
	jne	.label_803
	mov	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	lea	rsi, [rsi]
	jne	.label_808
	lea	rsi, [rsi]
	jmp	.label_797
.label_809:
	mov	qword ptr [r13], 0
	lea	rsi, [rsi]
	jmp	.label_813
.label_800:
	mov	rcx, rax
	jmp	.label_811
.label_803:
	mov	r14, qword ptr [rcx]
.label_811:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x48], rcx
.label_813:
	lea	rdi, [rdi]
	xor	r12d, r12d
	test	r14, r14
	je	.label_797
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	mov	rbp, rbp
	jne	.label_799
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_804
	mov	rsp, rsp
	cvtsi2ss	xmm1, rax
	jmp	.label_810
.label_804:
	shr	rax, 1
	mov	rsp, rsp
	or	rcx, rax
	mov	rsp, rsp
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_810:
	mov	rcx, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	nop	
	test	rcx, rcx
	js	.label_794
	cvtsi2ss	xmm0, rcx
	mov	rsp, rsp
	jmp	.label_798
.label_794:
	mov	rbp, rbp
	shr	rcx, 1
	or	rdx, rcx
	nop	
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_798:
	movaps	xmm3, xmm2
	nop	
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_799
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	lea	rsi, [rsi]
	je	.label_805
	lea	rdi, [rdi]
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_696]]
	nop	
	jbe	.label_795
	mov	rsp, rsp
	movss	xmm4,  dword ptr [dword ptr [rip + label_702]]
	ucomiss	xmm4, xmm3
	mov	rsp, rsp
	jbe	.label_795
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_795
	mov	rbp, rbp
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4,  dword ptr [dword ptr [rip + label_709]]
	jbe	.label_795
	lea	rsi, [rsi]
	movss	xmm4,  dword ptr [dword ptr [rip + label_696]]
	addss	xmm4, xmm2
	mov	rbp, rbp
	ucomiss	xmm3, xmm4
	jbe	.label_795
	movss	xmm3, dword ptr [rax + 4]
	nop	
	movss	xmm5,  dword ptr [dword ptr [rip + label_708]]
	nop	
	ucomiss	xmm5, xmm3
	jb	.label_795
	ucomiss	xmm3, xmm4
	ja	.label_802
.label_795:
	mov	qword ptr [word ptr [r15 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_802
.label_805:
	mov	eax, OFFSET FLAT:default_tuning
.label_802:
	mulss	xmm2, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm2, xmm1
	jbe	.label_799
	mulss	xmm0, dword ptr [rax + 4]
	mov	rbp, rbp
	cmp	byte ptr [rax + 0x10], 0
	mov	rsp, rsp
	jne	.label_814
	mulss	xmm0, dword ptr [rax + 8]
.label_814:
	movss	xmm1,  dword ptr [dword ptr [rip + label_700]]
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
	jne	.label_799
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_807
.label_812:
	nop	
	mov	rbx, qword ptr [rdi + 8]
	mov	rsp, rsp
	call	free
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	jne	.label_812
.label_807:
	nop	
	mov	qword ptr [r15 + 0x48], 0
.label_799:
	nop	
	mov	r12, r14
.label_797:
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
.label_796:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b740

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
	#Procedure 0x40b780

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b790

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
	jne	.label_815
	lea	rsi, [rsi]
	mov	dl, byte ptr [rdi + 0x1c]
	mov	rbp, rbp
	xor	dl, 1
	movzx	edx, dl
	mov	rbp, rbp
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_815:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b7e0

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	nop	
	cmp	byte ptr [rdi + 0x1c], 0
	lea	rdi, [rdi]
	jne	.label_816
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
	jne	.label_817
	lea	rsi, [rsi]
	mov	byte ptr [rdi + 0x1c], 1
	lea	rdi, [rdi]
	ret	
.label_817:
	add	ecx, 3
	and	ecx, 3
	lea	rsi, [rsi]
	mov	dword ptr [rdi + 0x14], ecx
	ret	
.label_816:
	push	rax
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b840

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
	mov	eax, OFFSET FLAT:.str.1_8
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_818
	nop	
	mov	rax, rcx
.label_818:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b880

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	nop	
	sub	rsp, 0xd8
	nop	
	test	al, al
	lea	rdi, [rdi]
	je	.label_819
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
.label_819:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	dl, 0x40
	je	.label_821
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
	ja	.label_822
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	mov	rbp, rbp
	mov	dword ptr [rsp], ecx
	jmp	.label_820
.label_822:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rcx
.label_820:
	mov	ecx, dword ptr [rax]
.label_821:
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
	#Procedure 0x40b980

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
	js	.label_823
	mov	rsp, rsp
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_824
	mov	dword ptr [r14], ebp
	mov	rsp, rsp
	jmp	.label_823
.label_824:
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
.label_823:
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
	#Procedure 0x40ba00

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
	ja	.label_825
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
	jmp	.label_826
.label_825:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_826:
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
	#Procedure 0x40ba70

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
	js	.label_827
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_829
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
	je	.label_827
.label_829:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_827
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_828
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_828:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_827:
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
	#Procedure 0x40bb20

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
	je	.label_837
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
.label_837:
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
	ja	.label_850
	lea	rsi, [rsi]
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_844
	mov	eax, 0x514
	mov	rsp, rsp
	bt	eax, esi
	lea	rdi, [rdi]
	jb	.label_843
	mov	rsp, rsp
	test	esi, esi
	jne	.label_850
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	lea	rsi, [rsi]
	ja	.label_830
	lea	rdi, [rdi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_836
.label_850:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_842
	mov	ecx, 0x85
	mov	rbp, rbp
	bt	ecx, eax
	lea	rsi, [rsi]
	jb	.label_843
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_848
.label_844:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_841
.label_843:
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rsp, rsp
	cmp	rcx, 0x28
	nop	
	ja	.label_849
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_832
.label_849:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_832:
	mov	edx, dword ptr [rax]
.label_845:
	nop	
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
.label_841:
	mov	ebp, eax
.label_839:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_848:
	lea	rsi, [rsi]
	cmp	eax, 6
	jne	.label_842
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_847
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_846
.label_842:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_834
	mov	rax, rcx
	lea	rsi, [rsi]
	add	rax, qword ptr [rsp + 0xc0]
	nop	
	lea	ecx, [rcx + 8]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_838
.label_830:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_836:
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax]
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_845
.label_847:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_846:
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_835
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
	jns	.label_840
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_840
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
	js	.label_839
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	rsp, rsp
	mov	al, 1
	jmp	.label_831
.label_840:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_839
.label_834:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_838:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	nop	
	mov	edi, ebx
	lea	rdi, [rdi]
	call	fcntl
	nop	
	jmp	.label_841
.label_835:
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
.label_831:
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	je	.label_839
	test	ebp, ebp
	lea	rsi, [rsi]
	js	.label_839
	mov	esi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_833
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
	jne	.label_839
.label_833:
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
	jmp	.label_839
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40bef0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_851
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_851
	test	byte ptr [rbx + 1], 1
	je	.label_851
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_851:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40bf30

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
	jne	.label_852
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_852
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_853
.label_852:
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
.label_853:
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
	je	.label_854
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_854:
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
	#Procedure 0x40bfe0

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
	#Procedure 0x40c000

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