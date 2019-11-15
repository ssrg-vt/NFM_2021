	.section	.text
	hlt	
	nop	word ptr [rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr [rax + rax]
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401880

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
	call	emit_ancillary_info
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
	.align	32
	#Procedure 0x401a10

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.24
	nop	
.label_10:
	mov	edi, OFFSET FLAT:.str.10
	call	strcmp
	test	eax, eax
	je	.label_9
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_10
.label_9:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:.str.10
	cmovne	rbx, rax
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
	je	.label_8
	mov	esi, OFFSET FLAT:.str.34
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.10
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.10
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.38
	mov	ecx, OFFSET FLAT:.str_0
	cmove	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rdx
	mov	rdx, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b30

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r14, rsi
	mov	qword ptr [rsp + 0x18], r14
	mov	ebp, edi
	mov	dword ptr [rsp + 0x24], ebp
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
.label_17:
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
	mov	ebp, dword ptr [rsp + 0x24]
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
	jle	.label_13
	add	eax, -0x61
	cmp	eax, 0x21
	ja	.label_15
	jmp	qword ptr [word ptr [+ (rax * 8) + label_20]]
.label_805:
	mov	dword ptr [dword ptr [rip + verbosity]],  1
	mov	bl, r15b
	jmp	.label_14
	nop	word ptr cs:[rax + rax]
.label_13:
	cmp	eax, 0x2a
	jle	.label_22
	add	eax, -0x2b
	cmp	eax, 0x2d
	ja	.label_15
	movabs	rcx, 0x200000041fe3
	bt	rcx, rax
	jae	.label_23
.label_804:
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
	jbe	.label_24
	mov	rax, qword ptr [rsp + 0x28]
	jmp	.label_17
	nop	
.label_24:
	lea	rax, [r13 + 1]
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, qword ptr [rsp + 0x28]
	lea	rsi, [rsp + 0x30]
	call	x2realloc
	jmp	.label_17
.label_23:
	cmp	rax, 0x27
	jne	.label_15
	mov	byte ptr [byte ptr [rip + recurse]],  1
	mov	bl, r15b
	jmp	.label_14
.label_806:
	mov	byte ptr [byte ptr [rip + force_silent]],  1
	mov	bl, r15b
	jmp	.label_14
.label_807:
	mov	dword ptr [dword ptr [rip + verbosity]],  0
	mov	bl, r15b
	jmp	.label_14
.label_808:
	mov	bl, 1
	jmp	.label_14
.label_809:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0x10], rax
	mov	bl, r15b
	jmp	.label_14
.label_22:
	cmp	eax, -1
	jne	.label_16
	mov	rbx, qword ptr [rsp + 0x10]
	test	rbx, rbx
	mov	rcx, qword ptr [rsp + 0x28]
	je	.label_18
	test	rcx, rcx
	mov	ecx, 0
	je	.label_25
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
.label_18:
	test	rcx, rcx
	jne	.label_25
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	rcx, qword ptr [r14 + rax*8]
.label_25:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, ebp
	jge	.label_29
	test	rbx, rbx
	je	.label_12
	mov	rdi, rbx
	call	mode_create_from_ref
	mov	qword ptr [word ptr [rip + change]],  rax
	test	rax, rax
	jne	.label_26
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
.label_12:
	mov	rbp, rcx
	mov	rdi, rbp
	call	mode_compile
	mov	qword ptr [word ptr [rip + change]],  rax
	test	rax, rax
	je	.label_27
	xor	edi, edi
	call	umask
	mov	dword ptr [dword ptr [rip + umask_value]],  eax
.label_26:
	test	r15b, r15b
	je	.label_11
	mov	al,  byte ptr [byte ptr [rip + recurse]]
	xor	al, 1
	test	al, 1
	jne	.label_11
	mov	edi, OFFSET FLAT:main.dev_ino_buf
	call	get_root_dev_ino
	mov	qword ptr [word ptr [rip + root_dev_ino]],  rax
	test	rax, rax
	jne	.label_21
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
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
.label_11:
	mov	qword ptr [word ptr [rip + root_dev_ino]],  0
.label_21:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	rdi, [r14 + rax*8]
	call	process_files
	movzx	eax, al
	xor	eax, 1
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_16:
	cmp	eax, 0xffffff7d
	je	.label_19
	cmp	eax, 0xffffff7e
	jne	.label_15
	xor	edi, edi
	call	usage
.label_19:
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
.label_15:
	mov	edi, 1
	call	usage
.label_29:
	mov	ebx, ebp
	mov	rbp, r14
	test	rcx, rcx
	je	.label_28
	cmp	rcx, qword ptr [rbp + rax*8 - 8]
	jne	.label_28
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
.label_28:
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
.label_27:
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401fb0

	.globl process_files
	.type process_files, @function
process_files:
	push	rbp
	push	r14
	push	rbx
	mov	esi, 0x411
	xor	edx, edx
	call	xfts_open
	mov	r14, rax
	mov	rdi, r14
	call	rpl_fts_read
	mov	bl, 1
	jmp	.label_31
	nop	
.label_30:
	mov	rdi, r14
	mov	rsi, rax
	call	process_file
	and	bl, al
	mov	rdi, r14
	call	rpl_fts_read
.label_31:
	test	rax, rax
	jne	.label_30
	call	__errno_location
	mov	ebp, dword ptr [rax]
	test	ebp, ebp
	je	.label_32
	mov	al,  byte ptr [byte ptr [rip + force_silent]]
	xor	ebx, ebx
	and	al, 1
	jne	.label_32
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.49
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_32:
	mov	rdi, r14
	call	rpl_fts_close
	test	eax, eax
	je	.label_33
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.50
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_33:
	mov	al, bl
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402070

	.globl process_file
	.type process_file, @function
process_file:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r13, rsi
	mov	r15, rdi
	mov	rbx, qword ptr [r13 + 0x30]
	mov	r12, qword ptr [r13 + 0x38]
	movzx	eax, word ptr [r13 + 0x70]
	add	eax, -2
	cmp	eax, 0xb
	ja	.label_41
	mov	bpl, 1
	jmp	qword ptr [word ptr [+ (rax * 8) + label_39]]
.label_797:
	mov	rdi, r15
	mov	rsi, r13
	call	cycle_warning_required
	test	al, al
	je	.label_41
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.55
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r12
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_37
.label_41:
	mov	rax,  qword ptr [word ptr [rip + root_dev_ino]]
	test	rax, rax
	je	.label_35
	mov	rcx, qword ptr [r13 + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_35
	mov	rcx, qword ptr [r13 + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_35
	mov	rbx, r15
	movzx	eax, byte ptr [r12]
	cmp	eax, 0x2f
	jne	.label_36
	cmp	byte ptr [r12 + 1], 0
	je	.label_40
.label_36:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 5
	call	dcgettext
	mov	rdx, r12
	mov	r12, rax
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:.str_1
	call	quotearg_n_style
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, rbp
	call	error
	jmp	.label_44
.label_35:
	mov	qword ptr [rsp + 8], rbx
	mov	ebx, dword ptr [r13 + 0x90]
	mov	ebp, ebx
	and	ebp, 0xf000
	cmp	ebp, 0x4000
	sete	al
	mov	edx,  dword ptr [dword ptr [rip + umask_value]]
	mov	rcx,  qword ptr [word ptr [rip + change]]
	movzx	esi, al
	xor	r14d, r14d
	xor	r8d, r8d
	mov	edi, ebx
	call	mode_adjust
	cmp	ebp, 0xa000
	jne	.label_45
	mov	qword ptr [rsp + 0x10], r12
	mov	qword ptr [rsp + 0x18], r15
	mov	r12b, 1
	mov	r15d, eax
	jmp	.label_47
.label_798:
	mov	qword ptr [rsp + 8], rbx
	mov	qword ptr [rsp + 0x18], r15
	mov	al,  byte ptr [byte ptr [rip + force_silent]]
	and	al, 1
	jne	.label_34
	mov	ebx, dword ptr [r13 + 0x40]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	jmp	.label_58
.label_799:
	mov	qword ptr [rsp + 8], rbx
	mov	qword ptr [rsp + 0x18], r15
	mov	al,  byte ptr [byte ptr [rip + force_silent]]
	and	al, 1
	jne	.label_34
	mov	ebp, dword ptr [r13 + 0x40]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r12
	mov	qword ptr [rsp + 0x10], r12
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebp
	call	error
	jmp	.label_46
.label_800:
	cmp	qword ptr [r13 + 0x58], 0
	jne	.label_49
	cmp	qword ptr [r13 + 0x20], 0
	je	.label_52
.label_49:
	mov	qword ptr [rsp + 8], rbx
	mov	qword ptr [rsp + 0x18], r15
	mov	al,  byte ptr [byte ptr [rip + force_silent]]
	and	al, 1
	jne	.label_34
	mov	ebx, dword ptr [r13 + 0x40]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.51
.label_58:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r12
	mov	qword ptr [rsp + 0x10], r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	jmp	.label_51
.label_801:
	mov	qword ptr [rsp + 8], rbx
	mov	qword ptr [rsp + 0x18], r15
	mov	al,  byte ptr [byte ptr [rip + force_silent]]
	and	al, 1
	je	.label_42
.label_34:
	mov	qword ptr [rsp + 0x10], r12
	xor	r14d, r14d
	jmp	.label_46
.label_45:
	mov	edi, dword ptr [r15 + 0x2c]
	mov	rsi, qword ptr [rsp + 8]
	mov	edx, eax
	mov	ebp, eax
	call	chmodat
	mov	r14b, 1
	test	eax, eax
	je	.label_53
	mov	al,  byte ptr [byte ptr [rip + force_silent]]
	xor	r14d, r14d
	and	al, 1
	je	.label_55
	mov	qword ptr [rsp + 0x10], r12
	mov	qword ptr [rsp + 0x18], r15
	jmp	.label_56
.label_42:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.54
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r12
	mov	qword ptr [rsp + 0x10], r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_51:
	mov	rdx, rbp
	call	error
.label_46:
	xor	r12d, r12d
.label_47:
	cmp	dword ptr [dword ptr [rip + verbosity]],  2
	je	.label_48
	test	r14b, r14b
	je	.label_50
	mov	rax, qword ptr [rsp + 0x18]
	mov	edi, dword ptr [rax + 0x2c]
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	ecx, ebx
	mov	r8d, r15d
	call	mode_changed
	jmp	.label_57
.label_50:
	xor	eax, eax
.label_57:
	test	al, al
	jne	.label_59
	mov	ecx,  dword ptr [dword ptr [rip + verbosity]]
	test	ecx, ecx
	jne	.label_48
.label_59:
	test	al, al
	sete	al
	movzx	eax, al
	lea	eax, [rax + rax + 1]
	xor	edx, edx
	test	r14b, r14b
	cmovne	edx, eax
	test	r12b, r12b
	mov	ecx, 2
	cmovne	ecx, edx
	mov	rdi, qword ptr [rsp + 0x10]
	mov	esi, ebx
	mov	edx, r15d
	call	describe_change
.label_48:
	test	r14b, r14b
	je	.label_43
	movzx	eax,  byte ptr [byte ptr [rip + diagnose_surprises]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_43
	mov	eax, ebx
	and	eax, 0xf000
	cmp	eax, 0x4000
	sete	al
	mov	rcx,  qword ptr [word ptr [rip + change]]
	movzx	esi, al
	xor	edx, edx
	xor	r8d, r8d
	mov	edi, ebx
	call	mode_adjust
	mov	ebp, eax
	not	eax
	test	r15d, eax
	je	.label_43
	lea	rsi, [rsp + 0x2c]
	mov	edi, r15d
	call	strmode
	lea	rsi, [rsp + 0x20]
	mov	edi, ebp
	call	strmode
	mov	byte ptr [rsp + 0x2a], 0
	mov	byte ptr [rsp + 0x36], 0
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x10]
	call	quotearg_n_style_colon
	mov	rcx, rax
	lea	r8, [rsp + 0x2d]
	lea	r9, [rsp + 0x21]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_43:
	mov	al,  byte ptr [byte ptr [rip + recurse]]
	and	al, 1
	jne	.label_54
	mov	edx, 4
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r13
	call	rpl_fts_set
.label_54:
	test	r12b, r12b
	setne	bpl
.label_37:
	mov	al, bpl
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_53:
	mov	qword ptr [rsp + 0x10], r12
	mov	qword ptr [rsp + 0x18], r15
	mov	r12b, 1
	jmp	.label_38
.label_55:
	mov	qword ptr [rsp + 0x18], r15
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.59
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp], rax
	mov	edi, 4
	mov	rsi, r12
	mov	qword ptr [rsp + 0x10], r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, qword ptr [rsp]
	call	error
.label_56:
	xor	r12d, r12d
.label_38:
	mov	r15d, ebp
	jmp	.label_47
.label_52:
	mov	qword ptr [r13 + 0x20], 1
	mov	edx, 1
	mov	rdi, r15
	mov	rsi, r13
	call	rpl_fts_set
	jmp	.label_37
.label_40:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.56
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_44:
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
	mov	rdi, rbx
	mov	rsi, r13
	call	rpl_fts_set
	mov	rdi, rbx
	call	rpl_fts_read
	jmp	.label_37
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402590

	.globl mode_changed
	.type mode_changed, @function
mode_changed:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x90
	mov	eax, r8d
	mov	ebp, ecx
	mov	rbx, rdx
	test	ah, 0xe
	je	.label_60
	lea	rdx, [rsp]
	xor	ecx, ecx
	call	fstatat
	test	eax, eax
	je	.label_61
	mov	al,  byte ptr [byte ptr [rip + force_silent]]
	and	al, 1
	jne	.label_62
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.61
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
.label_62:
	xor	eax, eax
	jmp	.label_63
.label_61:
	mov	eax, dword ptr [rsp + 0x18]
.label_60:
	xor	eax, ebp
	test	ax, 0xfff
	setne	al
.label_63:
	add	rsp, 0x90
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402620

	.globl describe_change
	.type describe_change, @function
describe_change:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	ebp, ecx
	mov	r15d, edx
	mov	ebx, esi
	mov	r14, rdi
	test	ebp, ebp
	je	.label_64
	lea	rsi, [rsp + 0x14]
	mov	edi, r15d
	call	strmode
	mov	byte ptr [rsp + 0x1e], 0
	lea	rsi, [rsp + 8]
	mov	edi, ebx
	call	strmode
	mov	byte ptr [rsp + 0x12], 0
	cmp	ebp, 3
	je	.label_69
	cmp	ebp, 2
	je	.label_65
	cmp	ebp, 1
	jne	.label_66
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.63
	jmp	.label_67
.label_64:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.62
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
	jmp	.label_68
.label_69:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	and	r15d, 0xfff
	lea	r8, [rsp + 0x15]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	mov	rcx, r15
	call	__printf_chk
	jmp	.label_68
.label_65:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.64
.label_67:
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	and	ebx, 0xfff
	lea	r8, [rsp + 9]
	and	r15d, 0xfff
	lea	rax, [rsp + 0x15]
	mov	qword ptr [rsp], rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r12
	mov	rdx, rcx
	mov	rcx, rbx
	mov	r9, r15
	call	__printf_chk
.label_68:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_66:
	call	abort
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402770
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402780
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402790

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_70
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_72
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_72
.label_70:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_71
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_72:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_3
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_73
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_71:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_73:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_0
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402850

	.globl chmodat
	.type chmodat, @function
chmodat:
	xor	ecx, ecx
	jmp	fchmodat
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402860
	.globl lchmodat
	.type lchmodat, @function
lchmodat:

	mov	ecx, 0x100
	jmp	fchmodat
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402870

	.globl strmode
	.type strmode, @function
strmode:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	ebx, edi
	call	ftypelet
	mov	byte ptr [r14], al
	mov	al, bh
	test	al, 1
	mov	sil, 0x72
	mov	cl, 0x72
	jne	.label_81
	mov	cl, 0x2d
.label_81:
	mov	byte ptr [r14 + 1], cl
	mov	cl, bl
	sar	cl, 7
	and	cl, 0x4a
	add	cl, 0x2d
	mov	byte ptr [r14 + 2], cl
	mov	ecx, ebx
	and	ecx, 0x40
	mov	edx, ecx
	shr	edx, 1
	or	edx, 0x53
	test	ecx, ecx
	mov	r8b, 0x78
	mov	cl, 0x78
	jne	.label_76
	mov	cl, 0x2d
.label_76:
	test	al, 8
	jne	.label_83
	mov	dl, cl
.label_83:
	mov	byte ptr [r14 + 3], dl
	test	bl, 0x20
	mov	cl, 0x72
	jne	.label_84
	mov	cl, 0x2d
.label_84:
	mov	byte ptr [r14 + 4], cl
	test	bl, 0x10
	mov	dl, 0x77
	mov	cl, 0x77
	jne	.label_75
	mov	cl, 0x2d
.label_75:
	mov	byte ptr [r14 + 5], cl
	mov	ecx, ebx
	and	ecx, 8
	lea	edi, [rcx*4 + 0x53]
	mov	cl, 0x78
	jne	.label_78
	mov	cl, 0x2d
.label_78:
	test	al, 4
	jne	.label_80
	mov	dil, cl
.label_80:
	mov	byte ptr [r14 + 6], dil
	test	bl, 4
	jne	.label_82
	mov	sil, 0x2d
.label_82:
	mov	byte ptr [r14 + 7], sil
	test	bl, 2
	jne	.label_74
	mov	dl, 0x2d
.label_74:
	mov	byte ptr [r14 + 8], dl
	and	ebx, 1
	jne	.label_77
	mov	r8b, 0x2d
.label_77:
	test	al, 2
	je	.label_79
	shl	ebx, 5
	or	ebx, 0x54
	mov	r8b, bl
.label_79:
	mov	byte ptr [r14 + 9], r8b
	mov	byte ptr [r14 + 0xa], 0x20
	mov	byte ptr [r14 + 0xb], 0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402940

	.globl ftypelet
	.type ftypelet, @function
ftypelet:
	and	edi, 0xf000
	cmp	edi, 0x5fff
	jle	.label_85
	cmp	edi, 0x9fff
	jg	.label_88
	cmp	edi, 0x6000
	je	.label_92
	mov	al, 0x2d
	cmp	edi, 0x8000
	je	.label_91
	jmp	.label_89
.label_85:
	cmp	edi, 0x1000
	je	.label_87
	cmp	edi, 0x2000
	je	.label_90
	cmp	edi, 0x4000
	jne	.label_89
	mov	al, 0x64
	movsx	eax, al
	ret	
.label_88:
	cmp	edi, 0xa000
	je	.label_86
	cmp	edi, 0xc000
	jne	.label_89
	mov	al, 0x73
	movsx	eax, al
	ret	
.label_92:
	mov	al, 0x62
	movsx	eax, al
	ret	
.label_87:
	mov	al, 0x70
.label_91:
	movsx	eax, al
	ret	
.label_86:
	mov	al, 0x6c
	movsx	eax, al
	ret	
.label_89:
	mov	al, 0x3f
	movsx	eax, al
	ret	
.label_90:
	mov	al, 0x63
	movsx	eax, al
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4029c0
	.globl filemodestring
	.type filemodestring, @function
filemodestring:

	mov	edi, dword ptr [rdi + 0x18]
	jmp	strmode
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4029d0

	.globl mode_compile
	.type mode_compile, @function
mode_compile:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rdi
	mov	al, byte ptr [r12]
	and	al, 0xf8
	mov	edi, 1
	movzx	eax, al
	cmp	eax, 0x30
	jne	.label_118
	xor	edi, edi
	xor	r14d, r14d
	mov	rbx, r12
	nop	dword ptr [rax]
.label_104:
	movsx	eax, byte ptr [rbx]
	lea	edi, [rax + rdi*8 - 0x30]
	cmp	edi, 0xfff
	ja	.label_93
	mov	al, byte ptr [rbx + 1]
	inc	rbx
	mov	cl, al
	and	cl, 0xf8
	movzx	ecx, cl
	cmp	ecx, 0x30
	je	.label_104
	xor	r14d, r14d
	test	al, al
	jne	.label_93
	call	octal_to_mode
	sub	rbx, r12
	mov	ecx, eax
	and	ecx, 0xc00
	or	ecx, 0x3ff
	cmp	rbx, 5
	mov	esi, 0xfff
	cmovl	esi, ecx
	mov	edi, eax
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	make_node_op_equals
.label_118:
	mov	rax, r12
	jmp	.label_123
	nop	dword ptr [rax]
.label_98:
	add	rdi, rdx
	inc	rax
.label_123:
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2c
	jle	.label_124
	movzx	ecx, cl
	cmp	ecx, 0x2d
	je	.label_127
	cmp	ecx, 0x3d
	mov	edx, 1
	je	.label_98
	jmp	.label_103
	nop	word ptr cs:[rax + rax]
.label_124:
	movzx	edx, cl
	cmp	edx, 0x2b
	mov	edx, 1
	je	.label_98
	test	cl, cl
	je	.label_110
.label_103:
	xor	edx, edx
	jmp	.label_98
	nop	word ptr cs:[rax + rax]
.label_127:
	mov	edx, 1
	jmp	.label_98
.label_110:
	mov	esi, 0x10
	call	xnmalloc
	mov	r14, rax
	xor	r15d, r15d
	jmp	.label_119
.label_102:
	inc	rbx
	mov	r12, rbx
	nop	
.label_119:
	xor	ebp, ebp
	jmp	.label_112
	nop	word ptr cs:[rax + rax]
.label_99:
	or	ebp, 0xfff
	inc	r12
.label_112:
	movsx	eax, byte ptr [r12]
	cmp	eax, 0x66
	jg	.label_126
	cmp	eax, 0x60
	jle	.label_95
	cmp	eax, 0x61
	je	.label_99
	jmp	.label_101
	nop	word ptr cs:[rax + rax]
.label_126:
	cmp	eax, 0x67
	je	.label_109
	cmp	eax, 0x6f
	je	.label_121
	cmp	eax, 0x75
	jne	.label_101
	or	ebp, 0x9c0
	inc	r12
	jmp	.label_112
.label_109:
	or	ebp, 0x438
	inc	r12
	jmp	.label_112
.label_121:
	or	ebp, 0x207
	inc	r12
	jmp	.label_112
	nop	word ptr cs:[rax + rax]
.label_95:
	cmp	eax, 0x2b
	je	.label_113
	cmp	eax, 0x2d
	je	.label_113
	cmp	eax, 0x3d
	jne	.label_101
	nop	word ptr cs:[rax + rax]
.label_113:
	lea	rbx, [r12 + 1]
	mov	r13b, byte ptr [r12]
	movsx	edx, byte ptr [r12 + 1]
	mov	r8b, 1
	xor	eax, eax
	cmp	edx, 0x66
	jg	.label_94
	add	edx, -0x30
	cmp	edx, 8
	jae	.label_107
	nop	word ptr cs:[rax + rax]
.label_114:
	movsx	edx, byte ptr [rbx]
	lea	eax, [rdx + rax*8 - 0x30]
	cmp	eax, 0xfff
	ja	.label_101
	mov	cl, byte ptr [rbx + 1]
	inc	rbx
	mov	dl, cl
	and	dl, 0xf8
	movzx	edx, dl
	cmp	edx, 0x30
	je	.label_114
	test	ebp, ebp
	jne	.label_101
	movzx	edx, cl
	cmp	edx, 0x2c
	je	.label_111
	test	cl, cl
	jne	.label_101
.label_111:
	mov	edi, eax
	call	octal_to_mode
	mov	r8b, 1
	mov	ebp, 0xfff
	mov	esi, 0xfff
	jmp	.label_120
	nop	word ptr cs:[rax + rax]
.label_94:
	cmp	edx, 0x67
	je	.label_122
	cmp	edx, 0x6f
	je	.label_105
	cmp	edx, 0x75
	jne	.label_107
	add	r12, 2
	mov	r8b, 3
	xor	esi, esi
	mov	eax, 0x1c0
	jmp	.label_97
	nop	
.label_108:
	inc	rbx
	mov	r8b, dl
.label_107:
	movsx	edi, byte ptr [rbx]
	xor	esi, esi
	lea	edx, [rdi - 0x72]
	cmp	edx, 6
	ja	.label_116
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_115]]
.label_829:
	or	eax, 0x124
	jmp	.label_100
.label_116:
	mov	dl, 2
	cmp	edi, 0x58
	je	.label_108
	jmp	.label_120
.label_830:
	or	eax, 0xc00
	jmp	.label_100
.label_831:
	or	eax, 0x200
	jmp	.label_100
.label_832:
	or	eax, 0x92
	jmp	.label_100
.label_833:
	or	eax, 0x49
	nop	word ptr cs:[rax + rax]
.label_100:
	mov	dl, r8b
	jmp	.label_108
.label_122:
	add	r12, 2
	mov	r8b, 3
	xor	esi, esi
	mov	eax, 0x38
	jmp	.label_97
.label_105:
	add	r12, 2
	mov	r8b, 3
	xor	esi, esi
	mov	eax, 7
.label_97:
	mov	rbx, r12
.label_120:
	mov	rdi, r15
	shl	rdi, 4
	mov	byte ptr [r14 + rdi], r13b
	mov	byte ptr [r14 + rdi + 1], r8b
	mov	dword ptr [r14 + rdi + 4], ebp
	mov	dword ptr [r14 + rdi + 8], eax
	test	esi, esi
	jne	.label_96
	cmp	ebp, 1
	sbb	esi, esi
	or	esi, ebp
	and	esi, eax
.label_96:
	inc	r15
	mov	dword ptr [r14 + rdi + 0xc], esi
	movsx	eax, byte ptr [rbx]
	cmp	eax, 0x2c
	jle	.label_117
	movzx	eax, al
	cmp	eax, 0x2d
	mov	r12, rbx
	je	.label_113
	cmp	eax, 0x3d
	mov	r12, rbx
	je	.label_113
	jmp	.label_125
	nop	word ptr [rax + rax]
.label_117:
	movzx	eax, al
	cmp	eax, 0x2b
	mov	r12, rbx
	je	.label_113
	cmp	eax, 0x2c
	je	.label_102
.label_125:
	cmp	byte ptr [rbx], 0
	je	.label_106
.label_101:
	mov	rdi, r14
	call	free
	xor	r14d, r14d
.label_93:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_106:
	shl	r15, 4
	mov	byte ptr [r14 + r15 + 1], 0
	jmp	.label_93
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d50

	.globl octal_to_mode
	.type octal_to_mode, @function
octal_to_mode:
	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d60

	.globl make_node_op_equals
	.type make_node_op_equals, @function
make_node_op_equals:
	push	rbp
	push	rbx
	push	rax
	mov	ebx, esi
	mov	ebp, edi
	mov	edi, 0x20
	call	xmalloc
	mov	byte ptr [rax], 0x3d
	mov	byte ptr [rax + 1], 1
	mov	dword ptr [rax + 4], 0xfff
	mov	dword ptr [rax + 8], ebp
	mov	dword ptr [rax + 0xc], ebx
	mov	byte ptr [rax + 0x11], 0
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402d90

	.globl mode_create_from_ref
	.type mode_create_from_ref, @function
mode_create_from_ref:
	sub	rsp, 0x98
	lea	rsi, [rsp + 8]
	call	stat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_128
	mov	edi, dword ptr [rsp + 0x20]
	mov	esi, 0xfff
	call	make_node_op_equals
.label_128:
	add	rsp, 0x98
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x402dc0

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
	je	.label_129
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
.label_136:
	movsx	ebp, al
	mov	ebx, dword ptr [rcx + 4]
	mov	esi, dword ptr [rcx + 8]
	mov	r8d, dword ptr [rcx + 0xc]
	cmp	ebp, 2
	je	.label_133
	cmp	ebp, 3
	jne	.label_130
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
	jmp	.label_130
	nop	dword ptr [rax + rax]
.label_133:
	mov	ebp, edi
	and	ebp, 0x49
	mov	eax, esi
	or	eax, 0x49
	or	ebp, r12d
	cmovne	esi, eax
.label_130:
	test	ebx, ebx
	mov	eax, edx
	cmovne	eax, ebx
	mov	ebp, r8d
	or	ebp, r10d
	and	ebp, esi
	and	ebp, eax
	movsx	esi, byte ptr [rcx]
	cmp	esi, 0x2b
	je	.label_135
	cmp	esi, 0x2d
	je	.label_132
	cmp	esi, 0x3d
	jne	.label_134
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
	jmp	.label_134
	nop	word ptr [rax + rax]
.label_132:
	or	r13d, ebp
	not	ebp
	and	edi, ebp
	jmp	.label_134
	nop	dword ptr [rax]
.label_135:
	or	r13d, ebp
	or	edi, ebp
.label_134:
	mov	al, byte ptr [rcx + 0x11]
	add	rcx, 0x10
	test	al, al
	jne	.label_136
.label_129:
	mov	rax, qword ptr [rsp - 8]
	test	rax, rax
	je	.label_131
	mov	dword ptr [rax], r13d
.label_131:
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
	.align	32
	#Procedure 0x402f00

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_137
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_138
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_138
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_139
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_139:
	mov	rbx, r14
.label_138:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_137:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_4
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402fb0
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
	#Procedure 0x402ff0
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
	#Procedure 0x403000
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
	#Procedure 0x403010

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
	#Procedure 0x403050
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
	#Procedure 0x403070

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_140
	test	rdx, rdx
	je	.label_140
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_140:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030a0
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
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
	mov	rax, qword ptr [rbp + 0x28]
	mov	rcx, qword ptr [rbp + 0x30]
	lea	rdx, [rbp + 8]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rdx
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403120

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
	mov	r13d, r8d
	mov	qword ptr [rsp + 0xc0], rcx
	mov	r12, rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xe0], rdi
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp + 0x88], rax
	mov	rax, qword ptr [rsp + 0x148]
	mov	qword ptr [rsp + 0x90], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0x60], rax
	mov	r15b, bl
	shr	r15b, 1
	and	r15b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x5c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x58], ebx
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x80], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xd0], rax
	mov	eax, 0
	xor	r11d, r11d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
.label_239:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r13d
	cmp	r13d, 0xa
	ja	.label_195
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_257]]
.label_848:
	mov	r12d, r11d
	mov	edi, OFFSET FLAT:.str.11
	mov	esi, r13d
	mov	r14, r10
	mov	bl, r8b
	mov	rbp, r9
	call	gettext_quote
	mov	qword ptr [rsp + 0x90], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r13d
	call	gettext_quote
	mov	r11d, r12d
	mov	r9, rbp
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x88], rax
.label_849:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	test	r15b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_161
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_161
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
.label_147:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_173
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_173:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_147
.label_161:
	mov	rbx, qword ptr [rsp + 0x88]
	mov	rdi, rbx
	mov	r12, r10
	call	strlen
	mov	r10, r12
	mov	qword ptr [rsp + 0xd0], rax
	mov	r14d, r13d
	mov	qword ptr [rsp + 0xa8], rbx
	mov	sil, 1
	mov	dil, r15b
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, rbp
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r11d, dword ptr [rsp + 0xb8]
	jmp	.label_196
.label_841:
	xor	r14d, r14d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	xor	edi, edi
	jmp	.label_196
.label_844:
	mov	al, 1
.label_842:
	mov	r15b, 1
.label_845:
	test	r15b, 1
	mov	cl, 1
	je	.label_220
	mov	cl, al
.label_220:
	mov	al, cl
.label_843:
	mov	r14d, 2
	test	r15b, 1
	jne	.label_221
	test	r10, r10
	je	.label_148
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_223
.label_221:
	xor	ecx, ecx
	jmp	.label_223
.label_846:
	mov	r14d, 5
	test	r15b, 1
	jne	.label_228
	test	r10, r10
	je	.label_187
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_237
.label_847:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	dil, 1
	jmp	.label_196
.label_148:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_223:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xa8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	jmp	.label_196
.label_228:
	xor	eax, eax
	jmp	.label_237
.label_187:
	mov	eax, 1
.label_237:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	sil, 1
	mov	dil, r15b
	nop	dword ptr [rax + rax]
.label_196:
	mov	qword ptr [rsp + 0x98], rdi
	mov	byte ptr [rsp + 0xa6], sil
	cmp	qword ptr [rsp + 0x140], 0
	setne	bl
	cmp	r14d, 2
	setne	r15b
	sete	dl
	mov	cl, sil
	and	cl, 1
	mov	byte ptr [rsp + 0xa5], cl
	sete	byte ptr [rsp + 0x6b]
	mov	r12b, r15b
	and	r12b, cl
	mov	byte ptr [rsp + 0xbf], r12b
	cmp	qword ptr [rsp + 0xd0], 0
	setne	r13b
	mov	al, r13b
	and	al, r12b
	mov	byte ptr [rsp + 0xdf], al
	mov	al, dil
	and	al, 1
	mov	byte ptr [rsp + 0xcf], al
	sete	cl
	and	dl, al
	mov	byte ptr [rsp + 0x7f], dl
	and	bl, al
	mov	byte ptr [rsp + 0xb7], bl
	or	cl, r15b
	mov	byte ptr [rsp + 0xa7], cl
	and	sil, dil
	and	sil, r13b
	mov	byte ptr [rsp + 0x6a], sil
	xor	esi, esi
	jmp	.label_155
	nop	dword ptr [rax + rax]
.label_240:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	sar	r15b, 7
	and	r15b, r8b
	mov	r8b, r15b
	inc	rsi
.label_155:
	cmp	rbp, -1
	je	.label_236
	cmp	rsi, rbp
	jne	.label_204
	jmp	.label_206
	nop	dword ptr [rax]
.label_236:
	cmp	byte ptr [r9 + rsi], 0
	je	.label_206
.label_204:
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_212
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_213
	cmp	rbp, -1
	jne	.label_213
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rdi, r9
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r14
	mov	r12, r9
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r11d, dword ptr [rsp + 0xb8]
	mov	r9, r12
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	r14, r13
	mov	r8b, r15b
	mov	r10, rbp
	mov	rbp, rax
.label_213:
	cmp	rbx, rbp
	jbe	.label_207
.label_212:
	mov	rdi, r14
	mov	dword ptr [rsp + 0xec], 0
.label_142:
	movzx	r13d, byte ptr [r9 + rsi]
	cmp	r13, 0x7e
	ja	.label_238
	xor	edx, edx
	mov	r15b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_227]]
.label_781:
	test	rsi, rsi
	jne	.label_151
	jmp	.label_185
	nop	word ptr cs:[rax + rax]
.label_207:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12d, r11d
	mov	r13, r14
	mov	r15b, r8b
	mov	rbx, r10
	lea	rdi, [r9 + rsi]
	mov	r14, rsi
	mov	rbp, r9
	mov	rsi, qword ptr [rsp + 0xa8]
	mov	rdx, qword ptr [rsp + 0xd0]
	call	memcmp
	test	eax, eax
	sete	al
	mov	dword ptr [rsp + 0xec], eax
	jne	.label_262
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_142
	jmp	.label_156
.label_262:
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	jmp	.label_142
.label_785:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_168
	test	rsi, rsi
	jne	.label_171
	cmp	rbp, 1
	je	.label_185
	xor	r15d, r15d
	jmp	.label_158
.label_774:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_214
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_156
	cmp	edi, 2
	jne	.label_180
	mov	al, r11b
	and	al, 1
	jne	.label_184
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_188
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_188:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_202
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_202:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_203
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_203:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r11b, 1
	mov	rcx, rax
	jmp	.label_211
.label_775:
	mov	bl, 0x62
	jmp	.label_199
.label_776:
	mov	cl, 0x74
	jmp	.label_219
.label_777:
	mov	bl, 0x76
	jmp	.label_199
.label_778:
	mov	bl, 0x66
	jmp	.label_199
.label_779:
	mov	cl, 0x72
	jmp	.label_219
.label_782:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_242
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_149
	test	r10, r10
	sete	al
	mov	rcx, qword ptr [rsp + 0x80]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r10
	mov	qword ptr [rsp + 0x80], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_230
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_230:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_246
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_246:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_252
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_252:
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	jmp	.label_260
.label_783:
	mov	r14, rdi
	cmp	r14d, 5
	je	.label_141
	cmp	r14d, 2
	jne	.label_145
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_149
.label_145:
	mov	rdi, r14
	jmp	.label_151
.label_784:
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_154
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_149
	mov	rdi, r14
	jmp	.label_159
.label_238:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_162
	mov	r14, r9
	mov	rbx, rsi
	call	__ctype_b_loc
	mov	rsi, rbx
	mov	r9, r14
	mov	rax, qword ptr [rax]
	movzx	r15d, word ptr [rax + r13*2]
	shr	r15d, 0xe
	and	r15b, 1
	mov	ebx, 1
.label_157:
	and	r15b, 1
	mov	dl, r15b
	or	dl, byte ptr [rsp + 0x6b]
	mov	byte ptr [rsp + 0xc0], dl
	cmp	rbx, 1
	mov	rcx, rbx
	mov	r10, qword ptr [rsp + 0x40]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r14, qword ptr [rsp + 0x38]
	mov	r11d, dword ptr [rsp + 0xb8]
	ja	.label_175
	test	dl, dl
	je	.label_175
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_158
.label_168:
	test	rsi, rsi
	jne	.label_197
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_197
.label_185:
	mov	dl, 1
.label_780:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_156
	xor	eax, eax
	mov	r15b, dl
	jmp	.label_158
.label_214:
	cmp	dword ptr [rsp + 0x5c], 0
	je	.label_151
	mov	r14, rdi
	inc	rsi
	jmp	.label_155
.label_242:
	mov	rdi, r14
.label_260:
	xor	eax, eax
	mov	r15b, 1
	jmp	.label_158
.label_154:
	mov	rdi, r14
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r13b
	je	.label_219
.label_159:
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_143
.label_219:
	cmp	byte ptr [rsp + 0xa7], 0
	mov	bl, cl
	je	.label_156
.label_199:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	je	.label_158
	jmp	.label_231
.label_162:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_234
	mov	rdi, r9
	mov	rbx, r9
	mov	rbp, rsi
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_234:
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	r15b, 1
	xor	ebx, ebx
	lea	r14, [rsp + 0x100]
.label_177:
	lea	rax, [rbx + rsi]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x30], rsi
	lea	rsi, [r9 + rax]
	mov	qword ptr [rsp + 0x48], r9
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xfc]
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_256
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x40]
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8b, byte ptr [rsp + 0xa6]
	je	.label_261
	cmp	rbp, -2
	je	.label_150
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_153
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_169:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_164
	bt	rsi, rdx
	jb	.label_167
.label_164:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_169
.label_153:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_152
	xor	r15d, r15d
.label_152:
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	add	rbx, rbp
	mov	r14, rdi
	call	mbsinit
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_177
	jmp	.label_157
.label_197:
	mov	rbp, -1
	xor	r15d, r15d
	jmp	.label_158
.label_141:
	mov	rdi, r14
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_151
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_151
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_151
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_205
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_209
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_156
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_218
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_218:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_178
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_178:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_229
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_229:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_249
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_249:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r15d, r15d
	jmp	.label_158
.label_151:
	xor	eax, eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_158:
	test	r12b, r12b
	je	.label_172
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_247
	jmp	.label_233
	nop	word ptr cs:[rax + rax]
.label_172:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_233
.label_247:
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_258
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_143
	jmp	.label_231
	nop	word ptr cs:[rax + rax]
.label_233:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_231
	jmp	.label_143
.label_258:
	mov	bl, r13b
	mov	rsi, r14
.label_231:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_156
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_165
	mov	al, r11b
	and	al, 1
	jne	.label_165
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_170
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_170:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_215
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_215:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_181
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_181:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_165:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_192
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_192:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_198
.label_171:
	xor	r15d, r15d
	jmp	.label_158
.label_175:
	add	rcx, rsi
	xor	eax, eax
	jmp	.label_208
	nop	word ptr cs:[rax + rax]
.label_166:
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_208:
	test	dl, dl
	je	.label_201
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	je	.label_210
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_235
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	mov	rsi, rbx
.label_235:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_210
	nop	word ptr [rax + rax]
.label_201:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_149
	cmp	r14d, 2
	jne	.label_224
	mov	al, r11b
	and	al, 1
	jne	.label_224
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_241
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_241:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_243
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_243:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_253
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_253:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_224:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_255
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_255:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_160
	mov	dl, r13b
	shr	dl, 6
	or	dl, 0x30
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rdi
.label_160:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_244
	mov	dl, r13b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_244:
	add	qword ptr [rsp + 0xf0], 3
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_210:
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_143
	test	r11b, 1
	je	.label_176
	mov	bl, al
	and	bl, 1
	mov	r14, rdi
	jne	.label_179
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_183
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_183:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_186
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
.label_186:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	rsi, rbx
	jmp	.label_179
	nop	word ptr cs:[rax + rax]
.label_176:
	mov	r14, rdi
.label_179:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_166
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rbx], r13b
	mov	rsi, rdi
	jmp	.label_166
.label_143:
	test	r11b, 1
	je	.label_217
	and	al, 1
	jne	.label_217
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_226
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_226:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_225
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_225:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	bl, r13b
	jmp	.label_198
	nop	dword ptr [rax + rax]
.label_217:
	mov	bl, r13b
	mov	r14, rdi
.label_198:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_240
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
	jmp	.label_240
.label_180:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_211
.label_184:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_211:
	cmp	rcx, r10
	jae	.label_250
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_250:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r13b, 0x30
	cmp	edi, 2
	je	.label_254
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_189
	mov	dl, byte ptr [r9 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_248
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_163
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	mov	rsi, rbx
.label_163:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_200
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsi, rbx
.label_200:
	add	rcx, 3
	xor	r15d, r15d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_158
.label_254:
	xor	r15d, r15d
	jmp	.label_158
.label_189:
	xor	r15d, r15d
	jmp	.label_158
.label_248:
	xor	r15d, r15d
	jmp	.label_158
.label_256:
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_146
.label_261:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_174
.label_150:
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	jae	.label_182
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_193:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	byte ptr [rax + rbx], 0
	je	.label_191
	lea	rax, [rsi + rbx + 1]
	inc	rbx
	cmp	rax, rbp
	jb	.label_193
	xor	r15d, r15d
	jmp	.label_146
.label_182:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_174:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_146:
	mov	byte ptr [rsp + 0xa6], r8b
	jmp	.label_157
.label_191:
	xor	r15d, r15d
	jmp	.label_146
.label_205:
	xor	r15d, r15d
	jmp	.label_158
.label_209:
	xor	r15d, r15d
	mov	rsi, rbx
	jmp	.label_158
	nop	dword ptr [rax + rax]
.label_206:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	and	cl, 1
	je	.label_216
	or	dl, al
	je	.label_149
.label_216:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12, r9
	test	cl, cl
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	je	.label_222
	or	dl, al
	jne	.label_222
	test	r8b, 1
	jne	.label_232
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_222
	test	r10, r10
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	r15b, dl
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_239
.label_222:
	mov	rdx, qword ptr [rsp + 0xa8]
	test	rdx, rdx
	je	.label_245
	test	cl, cl
	jne	.label_245
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_245
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_259:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_251
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_251:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_259
.label_245:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_144
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_144
.label_156:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_190:
	test	r8b, 1
	mov	r8d, 4
	cmove	r8d, r14d
	cmp	r14d, 2
	cmovne	r8d, r14d
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], 0
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, r10
	mov	rcx, rbp
.label_194:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_144:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_167:
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_190
.label_149:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	jmp	.label_190
.label_232:
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x140]
	mov	qword ptr [rsp], rax
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0x80]
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	r9d, dword ptr [rsp + 0x6c]
	jmp	.label_194
.label_195:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404330
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404340

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
	call	xcharalloc
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
	je	.label_263
	mov	qword ptr [rax], rbx
.label_263:
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
	#Procedure 0x404440
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_264
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
.label_264:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_268
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_265]], OFFSET FLAT:slot0
.label_268:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_266
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_266:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044e0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x4044f0

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
	js	.label_269
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_274
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_270
.label_274:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_273
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
	jne	.label_272
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_272:
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
.label_270:
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
	ja	.label_275
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_271
	mov	rdi, rbx
	call	free
.label_271:
	mov	rdi, r14
	call	xcharalloc
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
.label_275:
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
.label_269:
	call	abort
.label_273:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4046c0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4046d0
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4046e0
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quotearg_n_mem
	.section	.text
	.align	32
	#Procedure 0x4046f0

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	rbx, rdx
	mov	ebp, edi
	lea	r14, [rsp + 8]
	mov	rdi, r14
	call	quoting_options_from_style
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, rbx
	mov	rcx, r14
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404730

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	sub	rsp, 0x38
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_276
	mov	dword ptr [rdi], esi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rdi + 0x34], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rdi + 0x24], xmm2
	movups	xmmword ptr [rdi + 0x14], xmm1
	movups	xmmword ptr [rdi + 4], xmm0
	mov	rax, rdi
	add	rsp, 0x38
	ret	
.label_276:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404790

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x38
	mov	r14, rcx
	mov	rbx, rdx
	mov	ebp, edi
	lea	r15, [rsp]
	mov	rdi, r15
	call	quoting_options_from_style
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4047d0

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	mov	rax, rsi
	mov	ecx, edi
	xor	edi, edi
	mov	esi, ecx
	mov	rdx, rax
	jmp	quotearg_n_style
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047f0
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	mov	rax, rdx
	mov	rcx, rsi
	mov	edx, edi
	xor	edi, edi
	mov	esi, edx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_style_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404810

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	eax, edx
	mov	r14, rsi
	mov	rbx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_277]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_278]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_279]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	edx, 1
	mov	rdi, r15
	mov	esi, eax
	call	set_char_quoting
	xor	edi, edi
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404880

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404890

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048a0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048b0

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r14, rdx
	mov	ebp, edi
	lea	rbx, [rsp + 8]
	mov	rdi, rbx
	call	quoting_options_from_style
	mov	esi, 0x3a
	mov	edx, 1
	mov	rdi, rbx
	call	set_char_quoting
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, r14
	mov	rcx, rbx
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404900

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404910

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x38
	mov	r14, r8
	mov	rbx, rcx
	mov	ebp, edi
	mov	rax,  qword ptr [word ptr [rip + label_277]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_278]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_279]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	rdi, r15
	call	set_custom_quoting
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404980
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rax, rdx
	mov	rcx, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_custom
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4049a0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	rsi, rdi
	xor	edi, edi
	mov	r8, rax
	jmp	quotearg_n_custom_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049c0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049d0
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x4049e0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4049f0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a00

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r14d, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_281
	call	locale_charset
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0
	mov	dword ptr [rsp], 0
	mov	esi, 0x55
	mov	edx, 0x54
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	call	strcaseeq0
	test	eax, eax
	je	.label_280
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_281
	mov	eax, OFFSET FLAT:.str.15
	jmp	.label_281
.label_280:
	mov	dword ptr [rsp + 8], 0x30
	mov	dword ptr [rsp], 0x33
	mov	esi, 0x47
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	r8d, 0x38
	mov	r9d, 0x30
	mov	rdi, rbp
	call	strcaseeq0
	test	eax, eax
	je	.label_282
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_281
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_281
.label_282:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_281:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404ae0

	.globl strcaseeq0
	.type strcaseeq0, @function
strcaseeq0:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx]
	test	al, al
	je	.label_284
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_285
	jmp	.label_283
.label_284:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_283
.label_285:
	mov	eax, 1
	test	bpl, bpl
	je	.label_283
	mov	al, byte ptr [rsp + 0x40]
	movsx	ecx, byte ptr [rsp + 0x48]
	mov	dword ptr [rsp], ecx
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	movsx	r9d, al
	mov	rdi, rbx
	call	strcaseeq1
.label_283:
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
	.align	32
	#Procedure 0x404b70

	.globl strcaseeq1
	.type strcaseeq1, @function
strcaseeq1:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	dword ptr [rsp + 4], r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	r14b, byte ptr [rsp + 0x40]
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 1]
	test	al, al
	je	.label_287
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_286
	jmp	.label_288
.label_287:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_288
.label_286:
	mov	eax, 1
	test	bpl, bpl
	je	.label_288
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	mov	eax, dword ptr [rsp + 4]
	movsx	r8d, al
	movsx	r9d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq2
.label_288:
	add	rsp, 8
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
	#Procedure 0x404c00

	.globl strcaseeq2
	.type strcaseeq2, @function
strcaseeq2:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 2]
	test	al, al
	je	.label_289
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_291
	jmp	.label_290
.label_289:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_290
.label_291:
	mov	eax, 1
	test	bpl, bpl
	je	.label_290
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq3
.label_290:
	add	rsp, 8
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
	#Procedure 0x404c80

	.globl strcaseeq3
	.type strcaseeq3, @function
strcaseeq3:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14d, r8d
	mov	r15d, ecx
	mov	r12d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 3]
	test	al, al
	je	.label_294
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_293
	jmp	.label_292
.label_294:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_292
.label_293:
	mov	eax, 1
	test	bpl, bpl
	je	.label_292
	movsx	esi, r12b
	movsx	edx, r15b
	movsx	ecx, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq4
.label_292:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404cf0

	.globl strcaseeq4
	.type strcaseeq4, @function
strcaseeq4:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, ecx
	mov	r15d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 4]
	test	al, al
	je	.label_297
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_295
	jmp	.label_296
.label_297:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_296
.label_295:
	mov	eax, 1
	test	bpl, bpl
	je	.label_296
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_296:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d60

	.globl strcaseeq5
	.type strcaseeq5, @function
strcaseeq5:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 5]
	test	al, al
	je	.label_298
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_300
	jmp	.label_299
.label_298:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_299
.label_300:
	mov	eax, 1
	test	bpl, bpl
	je	.label_299
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_299:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404db0

	.globl strcaseeq6
	.type strcaseeq6, @function
strcaseeq6:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 6]
	test	al, al
	je	.label_303
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_302
	jmp	.label_301
.label_303:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_301
.label_302:
	mov	eax, 1
	test	bpl, bpl
	je	.label_301
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_301:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e00

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_305
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_306
	jmp	.label_304
.label_305:
	mov	eax, 1
	test	cl, cl
	je	.label_304
.label_306:
	xor	eax, eax
.label_304:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404e30

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rsi, [rsp]
	mov	edi, OFFSET FLAT:.str_1
	call	__lstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_307
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, rbx
.label_307:
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404e70

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
	je	.label_315
	mov	edx, OFFSET FLAT:.str_5
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_313
.label_315:
	mov	edx, OFFSET FLAT:.str.1_2
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_313:
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
	ja	.label_309
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_310]]
.label_816:
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
.label_309:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_308
.label_817:
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
.label_818:
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
.label_819:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_316
.label_820:
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
	jmp	.label_317
.label_821:
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
	jmp	.label_312
.label_822:
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
.label_312:
	mov	qword ptr [rsp + 0x10], rdi
.label_317:
	mov	qword ptr [rsp + 8], rsi
.label_316:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_314
.label_824:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_308:
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
	jmp	.label_311
.label_823:
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
.label_311:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_314:
	call	__fprintf_chk
.label_815:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405160
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_318:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_318
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405190

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_320:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_319
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_321
	nop	dword ptr [rax]
.label_319:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_321:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_322
	inc	r9
	cmp	r9, 0xa
	jb	.label_320
.label_322:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4051f0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	je	.label_323
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_323:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x20
	lea	r8, [rsp + 0xb0]
	call	version_etc_va
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405280
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
	.align	32
	#Procedure 0x405300

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_324
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_324:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405330

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_325
	test	rax, rax
	je	.label_326
.label_325:
	pop	rbx
	ret	
.label_326:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405350
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_327
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_327:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405380

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_328
	test	rbx, rbx
	jne	.label_328
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_328:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_330
	test	rax, rax
	je	.label_329
.label_330:
	pop	rbx
	ret	
.label_329:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4053b0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_331
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_334
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_332
.label_331:
	test	rcx, rcx
	jne	.label_335
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_335:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_333
.label_332:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_334:
	call	xalloc_die
.label_333:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405430

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405440

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405450
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	call	xmalloc
	mov	rbx, rax
	xor	esi, esi
	mov	rdi, rbx
	mov	rdx, r14
	call	memset
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405480
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_336
	call	rpl_calloc
	test	rax, rax
	je	.label_336
	pop	rcx
	ret	
.label_336:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054b0

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	mov	rdi, r15
	call	xmalloc
	mov	rbx, rax
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4054e0
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	rbx
	mov	rbx, rdi
	call	strlen
	lea	rsi, [rax + 1]
	mov	rdi, rbx
	pop	rbx
	jmp	xmemdup
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405500

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
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405530

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	test	rax, rax
	je	.label_338
	pop	rcx
	ret	
.label_338:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_337
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_4
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xfts_open
	call	__assert_fail
.label_337:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405570

	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:
	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	je	.label_339
	cmp	ecx, 0x11
	jne	.label_340
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_339:
	ret	
.label_340:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405590

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_341
	test	rsi, rsi
	mov	ecx, 1
	je	.label_342
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_342
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_341:
	mov	ecx, 1
.label_342:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055e0

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
	mov	rbp, rdx
	mov	r14d, esi
	mov	r15, rdi
	cmp	r14d, 0x1000
	jae	.label_344
	mov	eax, r14d
	and	eax, 0x204
	cmp	eax, 0x204
	je	.label_344
	test	r14b, 0x12
	je	.label_344
	mov	edi, 0x80
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_351
	xorps	xmm0, xmm0
	movups	xmmword ptr [r13 + 0x70], xmm0
	movups	xmmword ptr [r13 + 0x60], xmm0
	movups	xmmword ptr [r13 + 0x50], xmm0
	movups	xmmword ptr [r13 + 0x40], xmm0
	movups	xmmword ptr [r13 + 0x30], xmm0
	movups	xmmword ptr [r13 + 0x20], xmm0
	movups	xmmword ptr [r13 + 0x10], xmm0
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [r13 + 0x40], rbp
	mov	eax, r14d
	and	eax, 0xfffffdfb
	or	eax, 4
	test	r14b, 2
	cmove	eax, r14d
	mov	dword ptr [r13 + 0x48], eax
	mov	dword ptr [r13 + 0x2c], 0xffffff9c
	mov	rdi, r15
	call	fts_maxarglen
	cmp	rax, 0x1000
	mov	esi, 0x1000
	cmova	rsi, rax
	mov	rdi, r13
	call	fts_palloc
	test	al, al
	je	.label_350
	xor	r12d, r12d
	cmp	qword ptr [r15], 0
	je	.label_352
	mov	esi, OFFSET FLAT:.str_0
	xor	edx, edx
	mov	rdi, r13
	call	fts_alloc
	mov	r12, rax
	test	r12, r12
	je	.label_354
	mov	qword ptr [r12 + 0x58], -1
	mov	qword ptr [r12 + 0x68], -1
.label_352:
	mov	byte ptr [rsp + 0x27], 1
	test	rbp, rbp
	je	.label_360
	mov	al, byte ptr [r13 + 0x49]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0x27], al
.label_360:
	mov	qword ptr [rsp + 0x28], r13
	mov	r13, qword ptr [r15]
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	test	r13, r13
	je	.label_362
	mov	qword ptr [rsp + 0x18], r12
	mov	qword ptr [rsp + 0x10], rbp
	and	r14d, 0x800
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_356:
	mov	rdi, r13
	call	strlen
	test	r14d, r14d
	jne	.label_355
	cmp	rax, 3
	jb	.label_355
	cmp	rax, 2
	jb	.label_355
	movzx	ecx, byte ptr [rax + r13 - 1]
	cmp	ecx, 0x2f
	jne	.label_355
	nop	word ptr cs:[rax + rax]
.label_359:
	movzx	ecx, byte ptr [r13 + rax - 2]
	cmp	ecx, 0x2f
	jne	.label_355
	dec	rax
	cmp	rax, 1
	ja	.label_359
	nop	word ptr cs:[rax + rax]
.label_355:
	mov	rsi, qword ptr [r15]
	mov	r13, qword ptr [rsp + 0x28]
	mov	rdi, r13
	mov	rdx, rax
	call	fts_alloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_349
	mov	qword ptr [rbp + 0x58], 0
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbp + 8], rax
	mov	rax, rbp
	add	rax, 0x108
	mov	qword ptr [rbp + 0x30], rax
	mov	rbx, qword ptr [rsp + 0x30]
	test	rbx, rbx
	setne	al
	and	al, byte ptr [rsp + 0x27]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_353
	mov	word ptr [rbp + 0x70], 0xb
	mov	esi, 1
	mov	rdi, rbp
	call	fts_set_stat_required
	jmp	.label_361
.label_353:
	xor	edx, edx
	mov	rdi, r13
	mov	rsi, rbp
	call	fts_stat
	mov	word ptr [rbp + 0x70], ax
.label_361:
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_345
	mov	qword ptr [rbp + 0x10], rbx
	mov	qword ptr [rsp + 0x30], rbp
	jmp	.label_346
.label_345:
	mov	qword ptr [rbp + 0x10], 0
	test	rbx, rbx
	je	.label_347
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax + 0x10], rbp
	mov	qword ptr [rsp + 8], rbp
	jmp	.label_346
.label_347:
	mov	rax, rbp
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x30], rbp
	nop	word ptr [rax + rax]
.label_346:
	inc	r12
	mov	r13, qword ptr [r15 + 8]
	add	r15, 8
	test	r13, r13
	jne	.label_356
	cmp	qword ptr [rsp + 0x10], 0
	mov	rdi, qword ptr [rsp + 0x28]
	je	.label_343
	cmp	r12, 2
	jb	.label_343
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rdx, r12
	call	fts_sort
	mov	qword ptr [rsp + 0x30], rax
.label_343:
	mov	r12, qword ptr [rsp + 0x18]
.label_362:
	mov	esi, OFFSET FLAT:.str_0
	xor	edx, edx
	mov	r13, qword ptr [rsp + 0x28]
	mov	rdi, r13
	call	fts_alloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_348
	mov	rbx, qword ptr [rsp + 0x30]
	mov	qword ptr [rax + 0x10], rbx
	mov	rax, qword ptr [r13]
	mov	word ptr [rax + 0x70], 9
	mov	rax, qword ptr [r13]
	mov	qword ptr [rax + 0x58], 1
	mov	rdi, r13
	call	setup_dir
	test	al, al
	je	.label_357
	movzx	eax, word ptr [r13 + 0x48]
	test	ax, 0x204
	jne	.label_358
	mov	esi, OFFSET FLAT:.str_7
	mov	rdi, r13
	call	diropen
	mov	dword ptr [r13 + 0x28], eax
	test	eax, eax
	jns	.label_358
	or	byte ptr [r13 + 0x48], 4
.label_358:
	mov	rdi, r13
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	mov	rax, r13
	jmp	.label_351
.label_344:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
.label_351:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_349:
	mov	r12, qword ptr [rsp + 0x18]
.label_348:
	mov	rbx, qword ptr [rsp + 0x30]
.label_357:
	mov	rdi, rbx
	call	fts_lfree
	mov	rdi, r12
	call	free
.label_354:
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
.label_350:
	mov	rdi, r13
	call	free
	xor	eax, eax
	jmp	.label_351
	.section	.text
	.align	32
	#Procedure 0x405960

	.globl fts_maxarglen
	.type fts_maxarglen, @function
fts_maxarglen:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	mov	r14d, 1
	test	rdi, rdi
	je	.label_363
	add	rbx, 8
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_364:
	call	strlen
	cmp	rax, r14
	cmova	r14, rax
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_364
	inc	r14
.label_363:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059b0

	.globl fts_palloc
	.type fts_palloc, @function
fts_palloc:
	push	rbx
	mov	rbx, rdi
	add	rsi, 0x100
	add	rsi, qword ptr [rbx + 0x30]
	jae	.label_365
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	call	__errno_location
	mov	dword ptr [rax], 0x24
	xor	eax, eax
	pop	rbx
	ret	
.label_365:
	mov	qword ptr [rbx + 0x30], rsi
	mov	rdi, qword ptr [rbx + 0x20]
	call	realloc
	test	rax, rax
	je	.label_366
	mov	qword ptr [rbx + 0x20], rax
	mov	al, 1
	pop	rbx
	ret	
.label_366:
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405a10

	.globl fts_alloc
	.type fts_alloc, @function
fts_alloc:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	lea	rdi, [r15 + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_367
	mov	rdi, rbx
	add	rdi, 0x108
	mov	rsi, r12
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [rbx + r15 + 0x108], 0
	mov	qword ptr [rbx + 0x60], r15
	mov	qword ptr [rbx + 0x50], r14
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rbx + 0x38], rax
	mov	dword ptr [rbx + 0x40], 0
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x72], 0
	mov	word ptr [rbx + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	mov	rax, rbx
.label_367:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405aa0

	.globl fts_set_stat_required
	.type fts_set_stat_required, @function
fts_set_stat_required:
	movzx	eax, word ptr [rdi + 0x70]
	cmp	eax, 0xb
	jne	.label_368
	movzx	eax, sil
	inc	rax
	mov	qword ptr [rdi + 0xa8], rax
	ret	
.label_368:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x405ac0

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_369
	test	byte ptr [r14 + 0x48], 1
	je	.label_369
	mov	dl, 1
.label_369:
	lea	rbx, [r15 + 0x78]
	test	dl, dl
	jne	.label_376
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 2
	jne	.label_376
	mov	edi, dword ptr [r14 + 0x2c]
	mov	rsi, qword ptr [r15 + 0x30]
	mov	ecx, 0x100
	mov	rdx, rbx
	call	fstatat
	test	eax, eax
	je	.label_370
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_373
.label_376:
	mov	rdi, qword ptr [r15 + 0x30]
	mov	rsi, rbx
	call	stat
	test	eax, eax
	je	.label_370
	call	__errno_location
	mov	r14, rax
	cmp	dword ptr [r14], 2
	jne	.label_374
	mov	rdi, qword ptr [r15 + 0x30]
	mov	rsi, rbx
	call	__lstat
	test	eax, eax
	je	.label_379
.label_374:
	mov	eax, dword ptr [r14]
.label_373:
	mov	dword ptr [r15 + 0x40], eax
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
.label_371:
	movzx	eax, ax
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_370:
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	mov	ax, 0xc
	cmp	ecx, 0xa000
	je	.label_371
	cmp	ecx, 0x8000
	je	.label_375
	cmp	ecx, 0x4000
	jne	.label_377
	mov	rax, qword ptr [r15 + 0x88]
	mov	rcx, -1
	cmp	rax, 2
	jb	.label_372
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_372
	mov	ecx, dword ptr [r14 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_372:
	mov	qword ptr [r15 + 0x68], rcx
	mov	ax, 1
	movzx	ecx, byte ptr [r15 + 0x108]
	cmp	ecx, 0x2e
	jne	.label_371
	mov	cl, byte ptr [r15 + 0x109]
	test	cl, cl
	je	.label_378
	movzx	ecx, cl
	cmp	ecx, 0x2e
	jne	.label_371
	cmp	byte ptr [r15 + 0x10a], 0
	jne	.label_371
.label_378:
	mov	ax, 1
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_371
	mov	ax, 5
	jmp	.label_371
.label_375:
	mov	ax, 8
	jmp	.label_371
.label_377:
	mov	ax, 3
	jmp	.label_371
.label_379:
	mov	dword ptr [r14], 0
	mov	ax, 0xd
	jmp	.label_371
	nop	
	.section	.text
	.align	32
	#Procedure 0x405c50

	.globl fts_sort
	.type fts_sort, @function
fts_sort:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	r12, qword ptr [r15 + 0x40]
	cmp	qword ptr [r15 + 0x38], r14
	jae	.label_383
	lea	rsi, [r14 + 0x28]
	mov	qword ptr [r15 + 0x38], rsi
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_381
	mov	rdi, qword ptr [r15 + 0x10]
	shl	rsi, 3
	call	realloc
	test	rax, rax
	je	.label_381
	mov	qword ptr [r15 + 0x10], rax
.label_383:
	test	rbx, rbx
	je	.label_384
	mov	rax, qword ptr [r15 + 0x10]
	nop	
.label_382:
	mov	qword ptr [rax], rbx
	add	rax, 8
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	jne	.label_382
.label_384:
	mov	rdi, qword ptr [r15 + 0x10]
	mov	edx, 8
	mov	rsi, r14
	mov	rcx, r12
	call	qsort
	mov	rax, qword ptr [r15 + 0x10]
	mov	rbx, qword ptr [rax]
	cmp	r14, 1
	je	.label_380
	mov	ecx, 1
	sub	rcx, r14
	dec	r14
	lea	rdx, [rax + 8]
.label_386:
	mov	rsi, qword ptr [rdx - 8]
	mov	rdi, qword ptr [rdx]
	mov	qword ptr [rsi + 0x10], rdi
	add	rdx, 8
	inc	rcx
	jne	.label_386
	lea	rax, [rax + r14*8]
.label_380:
	mov	rax, qword ptr [rax]
	mov	qword ptr [rax + 0x10], 0
	jmp	.label_385
.label_381:
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	qword ptr [r15 + 0x10], 0
	mov	qword ptr [r15 + 0x38], 0
.label_385:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405d30

	.globl setup_dir
	.type setup_dir, @function
setup_dir:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	movzx	eax, word ptr [rbx + 0x48]
	test	ax, 0x102
	je	.label_387
	xor	r14d, r14d
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	jne	.label_390
	jmp	.label_389
.label_387:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	je	.label_388
	mov	rdi, rax
	call	cycle_check_init
.label_390:
	mov	r14b, 1
	jmp	.label_389
.label_388:
	xor	r14d, r14d
.label_389:
	mov	al, r14b
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405da0

	.globl diropen
	.type diropen, @function
diropen:
	mov	eax, dword ptr [rdi + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_391
	xor	eax, eax
	mov	rdi, rsi
	mov	esi, edx
	jmp	open_safer
.label_391:
	mov	edi, dword ptr [rdi + 0x2c]
	xor	eax, eax
	jmp	openat_safer
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405dd0

	.globl fts_lfree
	.type fts_lfree, @function
fts_lfree:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_392
	nop	dword ptr [rax]
.label_394:
	mov	r14, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_393
	call	closedir
.label_393:
	mov	rdi, rbx
	call	free
	test	r14, r14
	mov	rbx, r14
	jne	.label_394
.label_392:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e10

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_398
	cmp	qword ptr [rdi + 0x58], 0
	js	.label_402
	nop	word ptr cs:[rax + rax]
.label_395:
	mov	rbx, qword ptr [rdi + 0x10]
	test	rbx, rbx
	jne	.label_403
	mov	rbx, qword ptr [rdi + 8]
.label_403:
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	mov	rdi, rbx
	jns	.label_395
	jmp	.label_397
.label_402:
	mov	rbx, rdi
.label_397:
	mov	rdi, rbx
	call	free
.label_398:
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_400
	call	fts_lfree
.label_400:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_399
	xor	ebx, ebx
	test	al, 4
	jne	.label_396
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebx, ebx
	test	eax, eax
	je	.label_406
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_406:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	test	ebx, ebx
	je	.label_404
	jmp	.label_396
.label_399:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebx, ebx
	test	edi, edi
	js	.label_396
	call	close
.label_404:
	test	eax, eax
	je	.label_396
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_396:
	lea	rdi, [r14 + 0x60]
	call	fd_ring_clear
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_401
	call	hash_free
.label_401:
	mov	rdi, r14
	call	free_dir
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	ebx, ebx
	je	.label_405
	call	__errno_location
	mov	dword ptr [rax], ebx
	mov	eax, 0xffffffff
.label_405:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405f10

	.globl fd_ring_clear
	.type fd_ring_clear, @function
fd_ring_clear:
	push	rbx
	mov	rbx, rdi
	jmp	.label_407
	nop	word ptr cs:[rax + rax]
.label_408:
	mov	edi, eax
	call	close
.label_407:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_409
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_408
	jmp	.label_407
.label_409:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405f50

	.globl free_dir
	.type free_dir, @function
free_dir:
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_410
	mov	rdi, qword ptr [rdi + 0x58]
	test	rdi, rdi
	je	.label_411
	jmp	hash_free
.label_410:
	mov	rdi, qword ptr [rdi + 0x58]
	jmp	free
.label_411:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405f80

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rbx, qword ptr [r14]
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_425
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_425
	movzx	eax, word ptr [rbx + 0x74]
	mov	word ptr [rbx + 0x74], 3
	cmp	eax, 2
	je	.label_441
	movzx	ecx, ax
	cmp	ecx, 1
	jne	.label_424
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	mov	r15, rbx
	jmp	.label_425
.label_441:
	movzx	ecx, word ptr [rbx + 0x70]
	and	ecx, 0xfffe
	cmp	ecx, 0xc
	jne	.label_424
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_452
	test	byte ptr [r14 + 0x48], 4
	jne	.label_412
	mov	esi, OFFSET FLAT:.str_7
	mov	rdi, r14
	call	diropen
	mov	dword ptr [rbx + 0x44], eax
	test	eax, eax
	js	.label_419
	or	byte ptr [rbx + 0x72], 2
	mov	r15, rbx
	jmp	.label_417
.label_424:
	movzx	ecx, word ptr [rbx + 0x70]
	cmp	ecx, 1
	jne	.label_423
	movzx	eax, ax
	cmp	eax, 4
	je	.label_426
	test	byte ptr [r14 + 0x48], 0x40
	je	.label_427
	mov	rax, qword ptr [rbx + 0x78]
	cmp	rax, qword ptr [r14 + 0x18]
	jne	.label_426
.label_427:
	cmp	qword ptr [r14 + 8], 0
	je	.label_431
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 0x10
	jne	.label_433
	cmp	qword ptr [r14 + 8], 0
	je	.label_431
	mov	rcx, qword ptr [rbx + 0x30]
	mov	edx, 0xffffffff
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_436
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	or	byte ptr [rbx + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_448
	nop	word ptr [rax + rax]
.label_423:
	mov	r15, qword ptr [rbx + 0x10]
	test	r15, r15
	jne	.label_442
	mov	rax, qword ptr [rbx + 8]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_444
	mov	r15, qword ptr [rbx + 0x10]
	test	r15, r15
	je	.label_446
.label_442:
	mov	qword ptr [r14], r15
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_450
	movzx	eax, word ptr [r15 + 0x74]
	cmp	eax, 4
	mov	rbx, r15
	je	.label_423
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_415
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_421
	test	byte ptr [r14 + 0x48], 4
	jne	.label_421
	mov	esi, OFFSET FLAT:.str_7
	mov	rdi, r14
	call	diropen
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_428
	or	byte ptr [r15 + 0x72], 2
	jmp	.label_421
.label_434:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_448:
	test	rax, rax
	jne	.label_434
	jmp	.label_436
.label_426:
	test	byte ptr [rbx + 0x72], 2
	je	.label_437
	mov	edi, dword ptr [rbx + 0x44]
	call	close
.label_437:
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_439
	call	fts_lfree
	mov	qword ptr [r14 + 8], 0
.label_439:
	mov	word ptr [rbx + 0x70], 6
.label_438:
	mov	rdi, r14
	mov	rsi, rbx
	call	leave_dir
	mov	r15, rbx
	jmp	.label_425
.label_450:
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	je	.label_443
	or	byte ptr [r14 + 0x49], 0x20
	xor	r15d, r15d
	jmp	.label_425
.label_452:
	mov	r15, rbx
	jmp	.label_417
.label_412:
	mov	r15, rbx
	jmp	.label_417
.label_444:
	mov	qword ptr [r14], rax
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	r15, rax
	test	r15, r15
	je	.label_453
	mov	rdi, rbx
	call	free
	jmp	.label_415
.label_443:
	mov	rdi, r14
	call	free_dir
	mov	rdi, r14
	mov	rsi, r15
	call	fts_load
	mov	rdi, r14
	call	setup_dir
	jmp	.label_417
.label_433:
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	mov	rdi, qword ptr [r14 + 8]
	call	fts_lfree
	mov	qword ptr [r14 + 8], 0
.label_431:
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_430
.label_436:
	mov	r15, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], 0
	jmp	.label_415
.label_430:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_425
	cmp	dword ptr [rbx + 0x40], 0
	je	.label_438
	movzx	eax, word ptr [rbx + 0x70]
	cmp	eax, 4
	je	.label_438
	mov	word ptr [rbx + 0x70], 7
	jmp	.label_438
.label_419:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	mov	word ptr [rbx + 0x70], 7
	mov	r15, rbx
	jmp	.label_417
.label_453:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_425
.label_446:
	mov	r15, qword ptr [rbx + 8]
	mov	qword ptr [r14], r15
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r15 + 0x58], -1
	je	.label_447
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	je	.label_420
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_451
	movzx	eax, word ptr [r15 + 0x72]
	test	al, 2
	jne	.label_414
	test	al, 1
	jne	.label_429
	mov	rsi, qword ptr [r15 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_2
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_432
.label_447:
	mov	rdi, r15
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	xor	r15d, r15d
	jmp	.label_425
.label_451:
	mov	rdi, r14
	call	restore_initial_cwd
.label_432:
	test	eax, eax
	je	.label_429
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_429
.label_414:
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_435
	test	ah, 2
	mov	esi, dword ptr [r15 + 0x44]
	jne	.label_416
	mov	edi, esi
	call	fchdir
	test	eax, eax
	je	.label_435
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_435
.label_428:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
.label_421:
	mov	word ptr [r15 + 0x74], 3
.label_415:
	mov	rax, qword ptr [r14 + 0x20]
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rcx + 0x48]
	movzx	edx, byte ptr [rdx + rcx - 1]
	cmp	edx, 0x2f
	jne	.label_445
	dec	rcx
.label_445:
	lea	rdi, [rax + rcx + 1]
	mov	byte ptr [rax + rcx], 0x2f
	lea	rsi, [r15 + 0x108]
	mov	rdx, qword ptr [r15 + 0x60]
	inc	rdx
	call	memmove
.label_417:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	jne	.label_413
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_418
	cmp	rax, 2
	jne	.label_420
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_422
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_422
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	leaf_optimization
	cmp	eax, 2
	je	.label_418
.label_422:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	cmp	ecx, 0x4000
	jne	.label_413
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_418
	mov	rax, qword ptr [rbx + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_418
	dec	rax
	mov	qword ptr [rbx + 0x68], rax
.label_418:
	movzx	eax, word ptr [r15 + 0x70]
.label_413:
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_425
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_440
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_440:
	mov	rdi, r14
	mov	rsi, r15
	call	enter_dir
	test	al, al
	jne	.label_425
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r15d, r15d
	jmp	.label_425
.label_416:
	mov	edx, 1
	mov	rdi, r14
	call	cwd_advance_fd
.label_435:
	mov	edi, dword ptr [r15 + 0x44]
	call	close
.label_429:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	je	.label_449
	mov	eax, dword ptr [r15 + 0x40]
	cmp	eax, 0
	setne	cl
	movzx	ecx, cl
	or	ecx, 6
	cmp	eax, 0
	mov	word ptr [r15 + 0x70], cx
	jne	.label_449
	mov	rdi, r14
	mov	rsi, r15
	call	leave_dir
.label_449:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	r15, rax
.label_425:
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_420:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406530

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_456
	mov	rax, qword ptr [rsi + 0x78]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rsi + 0x80]
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_454
	mov	rdi, rax
	call	free
	add	rsp, 0x18
	ret	
.label_456:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_455
	cmp	qword ptr [rax + 0x58], 0
	js	.label_455
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_454
	mov	rdx, qword ptr [rcx]
	cmp	rdx, qword ptr [rsi + 0x80]
	jne	.label_455
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	jne	.label_455
	mov	rdx, qword ptr [rax + 0x78]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rdi + 0x58]
	mov	qword ptr [rcx], rax
.label_455:
	add	rsp, 0x18
	ret	
.label_454:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4065d0

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
	mov	r14, rdi
	test	rbx, rbx
	je	.label_469
	movzx	edx, byte ptr [rbx]
	mov	ecx, 0x2e
	mov	eax, 0x2e
	sub	eax, edx
	jne	.label_457
	movzx	eax, byte ptr [rbx + 1]
	sub	ecx, eax
	mov	eax, ecx
	jne	.label_457
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_457:
	test	eax, eax
	sete	r15b
	jmp	.label_461
.label_469:
	xor	r15d, r15d
.label_461:
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_464
	test	r13d, r13d
	jns	.label_470
	mov	cl, r15b
	xor	cl, 1
	jne	.label_465
	and	eax, 0x200
	je	.label_466
	mov	qword ptr [rsp], rsi
	lea	rbp, [r14 + 0x60]
	mov	rdi, rbp
	call	i_ring_empty
	test	al, al
	jne	.label_459
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r15b, 1
	jmp	.label_459
.label_464:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_458
	and	eax, 0x200
	je	.label_458
	mov	edi, r13d
	call	close
	jmp	.label_458
.label_466:
	mov	qword ptr [rsp], rsi
	jmp	.label_459
.label_470:
	mov	qword ptr [rsp], rsi
	jmp	.label_459
.label_465:
	mov	qword ptr [rsp], rsi
.label_459:
	test	r13d, r13d
	mov	r12d, r13d
	jns	.label_462
	mov	rdi, r14
	mov	rsi, rbx
	call	diropen
	mov	r12d, eax
	mov	ebp, 0xffffffff
	test	r12d, r12d
	js	.label_458
.label_462:
	test	byte ptr [r14 + 0x48], 2
	jne	.label_471
	test	rbx, rbx
	je	.label_468
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2e
	jne	.label_468
	movzx	eax, byte ptr [rbx + 1]
	cmp	eax, 0x2e
	jne	.label_468
	cmp	byte ptr [rbx + 2], 0
	jne	.label_468
.label_471:
	lea	rsi, [rsp + 8]
	mov	edi, r12d
	call	__fstat
	test	eax, eax
	jne	.label_472
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_467
	mov	rax, qword ptr [rcx + 0x80]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_467
.label_468:
	test	byte ptr [r14 + 0x49], 2
	jne	.label_460
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	jmp	.label_463
.label_460:
	test	r15b, r15b
	sete	al
	movzx	edx, al
	mov	rdi, r14
	mov	esi, r12d
	call	cwd_advance_fd
	xor	ebp, ebp
	jmp	.label_458
.label_467:
	call	__errno_location
	mov	dword ptr [rax], 2
.label_472:
	mov	ebp, 0xffffffff
.label_463:
	test	r13d, r13d
	jns	.label_458
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbx], r14d
.label_458:
	mov	eax, ebp
	add	rsp, 0x98
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
	#Procedure 0x406780

	.globl fts_build
	.type fts_build, @function
fts_build:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	r12d, esi
	mov	r14, rdi
	mov	rbp, qword ptr [r14]
	mov	qword ptr [rsp + 0x48], rbp
	mov	r15, qword ptr [rbp + 0x18]
	mov	qword ptr [rsp + 0x60], r15
	test	r15, r15
	je	.label_503
	mov	rdi, r15
	call	dirfd
	mov	dword ptr [rsp + 0x84], eax
	test	eax, eax
	js	.label_512
	mov	qword ptr [rsp + 0x38], -1
	cmp	qword ptr [r14 + 0x40], 0
	jne	.label_489
	mov	eax, 0x186a0
	mov	qword ptr [rsp + 0x38], rax
.label_489:
	lea	rax, [r14 + 0x40]
	mov	qword ptr [rsp + 0x58], rax
	mov	al, 1
	mov	dword ptr [rsp + 0x18], eax
	jmp	.label_494
.label_503:
	mov	eax, 0x204
	and	eax, dword ptr [r14 + 0x48]
	mov	edi, 0xffffff9c
	cmp	eax, 0x200
	jne	.label_528
	mov	edi, dword ptr [r14 + 0x2c]
.label_528:
	mov	rsi, qword ptr [rbp + 0x30]
	mov	eax, dword ptr [r14 + 0x48]
	xor	edx, edx
	test	al, 0x10
	je	.label_476
	test	al, 1
	je	.label_478
	cmp	qword ptr [rbp + 0x58], 0
	je	.label_476
.label_478:
	mov	edx, 0x20000
.label_476:
	lea	rcx, [rsp + 0x84]
	call	opendirat
	mov	qword ptr [rbp + 0x18], rax
	test	rax, rax
	je	.label_487
	movzx	eax, word ptr [rbp + 0x70]
	cmp	eax, 0xb
	jne	.label_502
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, rbp
	call	fts_stat
	mov	word ptr [rbp + 0x70], ax
	jmp	.label_493
.label_512:
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
.label_487:
	xor	r13d, r13d
	cmp	r12d, 3
	jne	.label_477
	mov	word ptr [rbp + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbp + 0x40], eax
	xor	r13d, r13d
	jmp	.label_477
.label_502:
	test	byte ptr [r14 + 0x49], 1
	je	.label_493
	mov	rdi, r14
	mov	rsi, rbp
	call	leave_dir
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, rbp
	call	fts_stat
	mov	rdi, r14
	mov	rsi, rbp
	call	enter_dir
	test	al, al
	je	.label_513
.label_493:
	mov	qword ptr [rsp + 0x38], -1
	cmp	qword ptr [r14 + 0x40], 0
	jne	.label_516
	mov	eax, 0x186a0
	mov	qword ptr [rsp + 0x38], rax
.label_516:
	lea	rax, [r14 + 0x40]
	mov	qword ptr [rsp + 0x58], rax
	mov	al, 1
	mov	dword ptr [rsp + 0x18], eax
	test	r15, r15
	jne	.label_494
	cmp	r12d, 2
	jne	.label_527
	mov	r13d, r12d
	xor	r12d, r12d
	jmp	.label_529
.label_527:
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x38
	cmp	eax, 0x18
	jne	.label_490
	cmp	qword ptr [rbp + 0x88], 2
	jne	.label_490
	mov	r13d, r12d
	mov	esi, dword ptr [rsp + 0x84]
	mov	rdi, rbp
	call	leaf_optimization
	test	eax, eax
	setne	r12b
	jmp	.label_484
.label_513:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r13d, r13d
	jmp	.label_477
.label_490:
	mov	r13d, r12d
	xor	r12d, r12d
.label_484:
	xor	r12b, 1
.label_529:
	cmp	r13d, 3
	je	.label_492
	test	r12b, r12b
	jne	.label_492
	mov	dword ptr [rsp + 0x18], r12d
	mov	r12d, r13d
	jmp	.label_494
.label_492:
	mov	qword ptr [rsp + 0x60], r15
	test	byte ptr [r14 + 0x49], 2
	mov	ebx, dword ptr [rsp + 0x84]
	je	.label_499
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebx
	call	rpl_fcntl
	mov	ebx, eax
	mov	dword ptr [rsp + 0x84], ebx
.label_499:
	test	ebx, ebx
	js	.label_507
	xor	ecx, ecx
	mov	rdi, r14
	mov	rsi, rbp
	mov	edx, ebx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_510
.label_507:
	cmp	r13d, 3
	jne	.label_481
	test	r12b, r12b
	je	.label_481
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbp + 0x40], eax
.label_481:
	or	byte ptr [rbp + 0x72], 1
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	je	.label_517
	mov	edi, dword ptr [rsp + 0x84]
	test	edi, edi
	js	.label_517
	call	close
.label_517:
	mov	qword ptr [rbp + 0x18], 0
	mov	dword ptr [rsp + 0x18], 0
.label_510:
	mov	r12d, r13d
	mov	r15, qword ptr [rsp + 0x60]
.label_494:
	mov	rax, qword ptr [rbp + 0x38]
	mov	rdx, qword ptr [rbp + 0x48]
	movzx	eax, byte ptr [rax + rdx - 1]
	cmp	eax, 0x2f
	jne	.label_474
	dec	rdx
.label_474:
	mov	dword ptr [rsp + 0x1c], r12d
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	test	byte ptr [r14 + 0x48], 4
	je	.label_479
	mov	rax, qword ptr [r14 + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x50], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_479:
	lea	rax, [rdx + 1]
	mov	qword ptr [rsp + 0x68], rax
	mov	rcx, qword ptr [r14 + 0x30]
	sub	rcx, rax
	mov	qword ptr [rsp + 0x40], rcx
	mov	rax, qword ptr [rbp + 0x58]
	inc	rax
	mov	qword ptr [rsp + 0x28], rax
	add	rdx, 2
	mov	qword ptr [rsp + 8], rdx
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	r12d, r12d
	xor	ebx, ebx
	xor	r13d, r13d
.label_514:
	cmp	qword ptr [rbp + 0x18], 0
	je	.label_480
	mov	qword ptr [rsp + 0x70], rbx
	mov	qword ptr [rsp + 0x78], r13
	call	__errno_location
	mov	r13, rax
	nop	dword ptr [rax]
.label_523:
	mov	dword ptr [r13], 0
	mov	rdi, qword ptr [rbp + 0x18]
	call	readdir
	mov	r15, rax
	test	r15, r15
	je	.label_511
	test	byte ptr [r14 + 0x48], 0x20
	jne	.label_515
	movzx	eax, byte ptr [r15 + 0x13]
	cmp	eax, 0x2e
	jne	.label_515
	movzx	eax, byte ptr [r15 + 0x14]
	cmp	eax, 0x2e
	je	.label_518
	test	al, al
	je	.label_520
	jmp	.label_515
	nop	
.label_518:
	cmp	byte ptr [r15 + 0x15], 0
	jne	.label_515
.label_520:
	cmp	qword ptr [rbp + 0x18], 0
	jne	.label_523
	jmp	.label_524
	nop	word ptr cs:[rax + rax]
.label_515:
	mov	qword ptr [rsp + 0x20], r12
	mov	rbx, r15
	add	rbx, 0x13
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rbp
	call	fts_alloc
	mov	r12, rax
	test	r12, r12
	je	.label_483
	cmp	rbp, qword ptr [rsp + 0x40]
	jae	.label_485
	mov	rbx, qword ptr [rsp + 0x68]
	jmp	.label_525
	nop	
.label_485:
	mov	rbx, qword ptr [r14 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rax + rbp]
	mov	rdi, r14
	call	fts_palloc
	test	al, al
	je	.label_483
	mov	rax, qword ptr [r14 + 0x20]
	cmp	rbx, rax
	je	.label_497
	mov	rbx, qword ptr [rsp + 0x68]
	add	rax, rbx
	test	byte ptr [r14 + 0x48], 4
	mov	rcx, qword ptr [rsp + 0x50]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x50], rcx
	mov	al, 1
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_500
.label_497:
	mov	rbx, qword ptr [rsp + 0x68]
.label_500:
	mov	rax, qword ptr [r14 + 0x30]
	sub	rax, rbx
	mov	qword ptr [rsp + 0x40], rax
.label_525:
	add	rbp, rbx
	jb	.label_508
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [r12 + 0x58], rax
	mov	rax, qword ptr [r14]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x48], rbp
	mov	rax, qword ptr [r15]
	mov	qword ptr [r12 + 0x80], rax
	test	byte ptr [r14 + 0x48], 4
	jne	.label_482
	lea	rax, [r12 + 0x108]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_501
	nop	dword ptr [rax]
.label_482:
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	lea	rsi, [r12 + 0x108]
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x50]
	call	memmove
.label_501:
	mov	rbp, qword ptr [rsp + 0x48]
	mov	r13, qword ptr [rsp + 0x78]
	mov	rax, qword ptr [rsp + 0x58]
	cmp	qword ptr [rax], 0
	je	.label_473
	test	byte ptr [r14 + 0x49], 4
	jne	.label_473
	mov	qword ptr [rsp + 0x68], rbx
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	jmp	.label_486
	nop	word ptr [rax + rax]
.label_473:
	mov	qword ptr [rsp + 0x68], rbx
	mov	rdi, r12
	add	rdi, 0x78
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_504
	movzx	eax, byte ptr [r15 + 0x12]
	cmp	eax, 4
	setne	cl
	test	al, al
	setne	bl
	and	bl, cl
	jmp	.label_495
.label_504:
	xor	ebx, ebx
.label_495:
	mov	word ptr [r12 + 0x70], 0xb
	movzx	esi, byte ptr [r15 + 0x12]
	call	set_stat_type
	xor	bl, 1
	movzx	esi, bl
	mov	rdi, r12
	call	fts_set_stat_required
.label_486:
	mov	r15, qword ptr [rsp + 0x60]
	mov	qword ptr [r12 + 0x10], 0
	test	r13, r13
	mov	rax, r12
	je	.label_498
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, r13
.label_498:
	mov	r13, rax
	mov	rbx, qword ptr [rsp + 0x70]
	cmp	rbx, 0x2710
	jne	.label_475
	mov	rax, qword ptr [rsp + 0x58]
	cmp	qword ptr [rax], 0
	jne	.label_475
	mov	esi, dword ptr [rsp + 0x84]
	mov	rdi, rbp
	call	dirent_inode_sort_may_be_useful
	mov	qword ptr [rsp + 0x10], rax
.label_475:
	inc	rbx
	cmp	qword ptr [rsp + 0x38], rbx
	ja	.label_514
	jmp	.label_480
.label_511:
	mov	eax, dword ptr [r13]
	test	eax, eax
	mov	r15, qword ptr [rsp + 0x60]
	mov	rbx, qword ptr [rsp + 0x70]
	je	.label_526
	mov	dword ptr [rbp + 0x40], eax
	mov	rax, r15
	or	rax, rbx
	mov	ax, 7
	mov	cx, 4
	cmovne	cx, ax
	mov	word ptr [rbp + 0x70], cx
.label_526:
	mov	rdi, qword ptr [rbp + 0x18]
	test	rdi, rdi
	mov	r13, qword ptr [rsp + 0x78]
	je	.label_480
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	jmp	.label_480
.label_524:
	mov	r15, qword ptr [rsp + 0x60]
	mov	r13, qword ptr [rsp + 0x78]
	mov	rbx, qword ptr [rsp + 0x70]
.label_480:
	mov	rax, qword ptr [rsp + 0x30]
	test	al, 1
	je	.label_491
	mov	rdi, r14
	mov	rsi, r13
	call	fts_padjust
.label_491:
	test	byte ptr [r14 + 0x48], 4
	mov	r12d, dword ptr [rsp + 0x1c]
	je	.label_496
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, rax
	lea	rax, [rcx - 1]
	mov	rdx, qword ptr [rsp + 0x68]
	cmp	rdx, qword ptr [r14 + 0x30]
	cmove	rcx, rax
	test	rbx, rbx
	cmove	rcx, rax
	mov	byte ptr [rcx], 0
.label_496:
	test	r15, r15
	jne	.label_506
	mov	eax, dword ptr [rsp + 0x18]
	test	al, al
	je	.label_506
	cmp	r12d, 1
	je	.label_505
	test	rbx, rbx
	jne	.label_506
.label_505:
	cmp	qword ptr [rbp + 0x58], 0
	je	.label_509
	mov	rsi, qword ptr [rbp + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_2
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_519
.label_509:
	mov	rdi, r14
	call	restore_initial_cwd
.label_519:
	test	eax, eax
	je	.label_506
	mov	word ptr [rbp + 0x70], 7
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_488
.label_506:
	test	rbx, rbx
	je	.label_521
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	je	.label_522
	mov	rbp, qword ptr [rsp + 0x58]
	mov	qword ptr [word ptr [rbp]], OFFSET FLAT:fts_compare_ino
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	fts_sort
	mov	r13, rax
	mov	qword ptr [rbp], 0
.label_522:
	cmp	rbx, 2
	jb	.label_477
	mov	rax, qword ptr [rsp + 0x58]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_477
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	fts_sort
	mov	r13, rax
	jmp	.label_477
.label_521:
	cmp	r12d, 3
	jne	.label_488
	movzx	eax, word ptr [rbp + 0x70]
	cmp	eax, 4
	je	.label_488
	movzx	eax, ax
	cmp	eax, 7
	je	.label_488
	mov	word ptr [rbp + 0x70], 6
.label_488:
	mov	rdi, r13
	call	fts_lfree
	xor	r13d, r13d
.label_477:
	mov	rax, r13
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_483:
	mov	ebx, dword ptr [r13]
	mov	rdi, r12
	call	free
	mov	rdi, qword ptr [rsp + 0x78]
	call	fts_lfree
	mov	rbp, qword ptr [rsp + 0x48]
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	mov	word ptr [rbp + 0x70], 7
	or	byte ptr [r14 + 0x49], 0x20
	mov	dword ptr [r13], ebx
	xor	r13d, r13d
	jmp	.label_477
.label_508:
	mov	rdi, r12
	call	free
	mov	rdi, qword ptr [rsp + 0x78]
	call	fts_lfree
	mov	rbx, qword ptr [rsp + 0x48]
	mov	rdi, qword ptr [rbx + 0x18]
	call	closedir
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x70], 7
	or	byte ptr [r14 + 0x49], 0x20
	mov	dword ptr [r13], 0x24
	xor	r13d, r13d
	jmp	.label_477
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406f00

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_530
	test	ah, 2
	jne	.label_532
	mov	edi, dword ptr [rbx + 0x28]
	call	fchdir
	test	eax, eax
	setne	al
	jmp	.label_531
.label_530:
	xor	eax, eax
	jmp	.label_531
.label_532:
	mov	esi, 0xffffff9c
	mov	edx, 1
	mov	rdi, rbx
	call	cwd_advance_fd
	xor	eax, eax
.label_531:
	movzx	ebp, al
	add	rbx, 0x60
	mov	rdi, rbx
	call	fd_ring_clear
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406f60

	.globl fts_load
	.type fts_load, @function
fts_load:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r12, rsi
	mov	r14, rdi
	mov	rdx, qword ptr [r12 + 0x60]
	mov	qword ptr [r12 + 0x48], rdx
	mov	rdi, qword ptr [r14 + 0x20]
	lea	r15, [r12 + 0x108]
	inc	rdx
	mov	rsi, r15
	call	memmove
	mov	esi, 0x2f
	mov	rdi, r15
	call	strrchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_534
	cmp	rbx, r15
	jne	.label_533
	cmp	byte ptr [rbx + 1], 0
	je	.label_534
.label_533:
	inc	rbx
	mov	rdi, rbx
	call	strlen
	mov	r13, rax
	lea	rdx, [r13 + 1]
	mov	rdi, r15
	mov	rsi, rbx
	call	memmove
	mov	qword ptr [r12 + 0x60], r13
.label_534:
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [r12 + 0x38], rax
	mov	qword ptr [r12 + 0x30], rax
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ff0

	.globl leaf_optimization
	.type leaf_optimization, @function
leaf_optimization:
	push	rax
	call	filesystem_type
	cmp	rax, 0x52654972
	jle	.label_538
	mov	ecx, 2
	cmp	rax, 0x58465341
	jg	.label_539
	cmp	rax, 0x52654973
	je	.label_536
	cmp	rax, 0x5346414f
	je	.label_535
	jmp	.label_537
.label_538:
	test	rax, rax
	je	.label_535
	cmp	rax, 0x6969
	je	.label_535
	cmp	rax, 0x9fa0
	je	.label_535
	jmp	.label_537
.label_539:
	cmp	rax, 0x58465342
	je	.label_536
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	jne	.label_537
.label_535:
	xor	ecx, ecx
	jmp	.label_536
.label_537:
	mov	ecx, 1
.label_536:
	mov	eax, ecx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407060

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
	je	.label_540
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_541
	mov	rax, qword ptr [r14 + 0x78]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [r14 + 0x80]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [rbx + 0x10], r14
	mov	rdi, qword ptr [rbp + 0x58]
	mov	rsi, rbx
	call	hash_insert
	mov	r15, rax
	mov	bpl, 1
	cmp	r15, rbx
	je	.label_542
	mov	rdi, rbx
	call	free
	test	r15, r15
	je	.label_544
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [r14], rax
	jmp	.label_543
.label_540:
	mov	rdi, qword ptr [rbp + 0x58]
	lea	rsi, [r14 + 0x78]
	call	cycle_check
	mov	bpl, 1
	test	al, al
	je	.label_542
	mov	qword ptr [r14], r14
.label_543:
	mov	word ptr [r14 + 0x70], 2
	jmp	.label_542
.label_541:
	xor	ebp, ebp
	jmp	.label_542
.label_544:
	xor	ebp, ebp
.label_542:
	mov	al, bpl
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407100

	.globl cwd_advance_fd
	.type cwd_advance_fd, @function
cwd_advance_fd:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	mov	esi, dword ptr [rbx + 0x2c]
	cmp	esi, ebp
	jne	.label_545
	cmp	esi, -0x64
	jne	.label_548
.label_545:
	test	dl, dl
	je	.label_549
	lea	rdi, [rbx + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_546
	mov	edi, eax
	jmp	.label_547
.label_549:
	test	esi, esi
	js	.label_546
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 4
	jne	.label_546
	mov	edi, esi
.label_547:
	call	close
.label_546:
	mov	dword ptr [rbx + 0x2c], ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_548:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407150

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	cmp	edx, 5
	jb	.label_550
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	add	rsp, 8
	ret	
.label_550:
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407180
	.globl rpl_fts_children
	.type rpl_fts_children, @function
rpl_fts_children:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	ebp, esi
	mov	rbx, rdi
	mov	eax, ebp
	or	eax, 0x1000
	cmp	eax, 0x1000
	jne	.label_551
	mov	r12, qword ptr [rbx]
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	eax, eax
	test	byte ptr [rbx + 0x49], 0x20
	jne	.label_552
	movzx	ecx, word ptr [r12 + 0x70]
	xor	eax, eax
	cmp	ecx, 1
	je	.label_559
	movzx	ecx, cx
	cmp	ecx, 9
	jne	.label_552
	mov	rax, qword ptr [r12 + 0x10]
	jmp	.label_552
.label_551:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
	jmp	.label_552
.label_559:
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	je	.label_557
	call	fts_lfree
.label_557:
	mov	r15d, 1
	cmp	ebp, 0x1000
	jne	.label_560
	or	byte ptr [rbx + 0x49], 0x10
	mov	r15d, 2
.label_560:
	cmp	qword ptr [r12 + 0x58], 0
	jne	.label_554
	mov	rax, qword ptr [r12 + 0x30]
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x2f
	je	.label_554
	test	byte ptr [rbx + 0x48], 4
	jne	.label_554
	mov	esi, OFFSET FLAT:.str_7
	mov	rdi, rbx
	call	diropen
	mov	ebp, eax
	test	ebp, ebp
	js	.label_555
	mov	rdi, rbx
	mov	esi, r15d
	call	fts_build
	mov	qword ptr [rbx + 8], rax
	test	byte ptr [rbx + 0x49], 2
	jne	.label_553
	mov	edi, ebp
	call	fchdir
	test	eax, eax
	je	.label_558
	mov	ebx, dword ptr [r14]
	mov	edi, ebp
	call	close
	mov	dword ptr [r14], ebx
	xor	eax, eax
	jmp	.label_552
.label_554:
	mov	rdi, rbx
	mov	esi, r15d
	call	fts_build
	mov	qword ptr [rbx + 8], rax
.label_552:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_555:
	mov	qword ptr [rbx + 8], 0
	xor	eax, eax
	jmp	.label_552
.label_553:
	mov	edx, 1
	mov	rdi, rbx
	mov	esi, ebp
	call	cwd_advance_fd
	jmp	.label_556
.label_558:
	mov	edi, ebp
	call	close
.label_556:
	mov	rax, qword ptr [rbx + 8]
	jmp	.label_552
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4072c0

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
	#Procedure 0x4072d0

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_561
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
.label_561:
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4072f0

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
	je	.label_564
	mov	rbp, qword ptr [rbx + 0x50]
	test	rbp, rbp
	jne	.label_565
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
	je	.label_567
.label_565:
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsp]
	mov	rdi, rbp
	call	hash_lookup
	test	rax, rax
	je	.label_562
	mov	rax, qword ptr [rax + 8]
	jmp	.label_564
.label_562:
	mov	r12b, 1
	mov	r14, rbp
.label_567:
	xor	eax, eax
	test	r15d, r15d
	js	.label_564
	lea	rsi, [rsp + 0x10]
	mov	edi, r15d
	call	fstatfs
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_564
	test	r12b, r12b
	je	.label_563
	mov	edi, 0x10
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_563
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rbp], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbp + 8], rax
	mov	rdi, r14
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_566
	cmp	rax, rbp
	je	.label_563
	call	abort
.label_566:
	mov	rdi, rbp
	call	free
.label_563:
	mov	rax, qword ptr [rsp + 0x10]
.label_564:
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
	#Procedure 0x407400

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
	#Procedure 0x407410

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
	#Procedure 0x407420

	.globl set_stat_type
	.type set_stat_type, @function
set_stat_type:
	dec	esi
	xor	eax, eax
	cmp	esi, 0xb
	ja	.label_568
	movsxd	rax, esi
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + label_569]]
.label_568:
	mov	dword ptr [rdi + 0x18], eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407440

	.globl dirent_inode_sort_may_be_useful
	.type dirent_inode_sort_may_be_useful, @function
dirent_inode_sort_may_be_useful:
	push	rax
	call	filesystem_type
	mov	rcx, rax
	xor	eax, eax
	cmp	rcx, 0x6969
	je	.label_570
	cmp	rcx, 0x1021994
	je	.label_570
	mov	edx, 0xff534d42
	cmp	rcx, rdx
	je	.label_570
	mov	al, 1
.label_570:
	pop	rcx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407470

	.globl fts_padjust
	.type fts_padjust, @function
fts_padjust:
	mov	rcx, qword ptr [rdi + 8]
	mov	rax, qword ptr [rdi + 0x20]
	jmp	.label_576
	nop	word ptr [rax + rax]
.label_575:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_576:
	test	rcx, rcx
	je	.label_571
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rdi, [rcx + 0x108]
	cmp	rdx, rdi
	je	.label_575
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_575
.label_571:
	cmp	qword ptr [rsi + 0x58], 0
	js	.label_573
	nop	word ptr cs:[rax + rax]
.label_572:
	mov	rcx, qword ptr [rsi + 0x30]
	lea	rdx, [rsi + 0x108]
	cmp	rcx, rdx
	je	.label_574
	sub	rcx, qword ptr [rsi + 0x38]
	add	rcx, rax
	mov	qword ptr [rsi + 0x30], rcx
.label_574:
	mov	qword ptr [rsi + 0x38], rax
	mov	rcx, qword ptr [rsi + 0x10]
	test	rcx, rcx
	jne	.label_577
	mov	rcx, qword ptr [rsi + 8]
.label_577:
	cmp	qword ptr [rcx + 0x58], 0
	mov	rsi, rcx
	jns	.label_572
.label_573:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407500

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
	#Procedure 0x407530
	.globl fts_compar
	.type fts_compar, @function
fts_compar:

	push	rax
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax + 0x50]
	call	qword ptr [rax + 0x40]
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407540

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
	je	.label_578
	cmp	r15, -2
	jb	.label_578
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_578
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_578:
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
	#Procedure 0x4075a0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_579
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_579
.label_580:
	ret	
.label_579:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_580
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4075d0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_581
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_581:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4075f0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407600
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
	#Procedure 0x407610
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_582
.label_583:
	ret	
.label_582:
	cmp	edi, 0x7f
	je	.label_583
	xor	eax, eax
	jmp	.label_583
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407630
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
	#Procedure 0x407640
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
	#Procedure 0x407650
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
	#Procedure 0x407660
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
	#Procedure 0x407670
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_584
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_584
.label_585:
	ret	
.label_584:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_585
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4076a0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_586
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_586:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4076c0

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
	#Procedure 0x4076d0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_587
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_587:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4076f0
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
	#Procedure 0x407700
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
	#Procedure 0x407710

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	__fpending
	mov	r14, rax
	mov	rdi, rbx
	call	ferror_unlocked
	mov	ebp, eax
	mov	rdi, rbx
	call	rpl_fclose
	test	ebp, ebp
	je	.label_589
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_588
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_588
.label_589:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_588
	test	cl, cl
	jne	.label_588
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_588:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407780

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	ret	
	.section	.text
	.align	32
	#Procedure 0x407790

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	cmp	dword ptr [r15 + 0x18], 0x95f616
	jne	.label_590
	cmp	qword ptr [r15 + 0x10], 0
	je	.label_592
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r15]
	jne	.label_592
	mov	rcx, qword ptr [r14]
	mov	al, 1
	cmp	rcx, qword ptr [r15 + 8]
	je	.label_593
.label_592:
	mov	rbx, qword ptr [r15 + 0x10]
	inc	rbx
	mov	qword ptr [r15 + 0x10], rbx
	mov	rdi, rbx
	call	is_zero_or_power_of_two
	test	al, al
	je	.label_591
	mov	al, 1
	test	rbx, rbx
	je	.label_593
	mov	rax, qword ptr [r14]
	mov	qword ptr [r15 + 8], rax
	mov	rax, qword ptr [r14 + 8]
	mov	qword ptr [r15], rax
.label_591:
	xor	eax, eax
.label_593:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_590:
	mov	edi, OFFSET FLAT:.str_8
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0x3c
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.cycle_check
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407810

	.globl is_zero_or_power_of_two
	.type is_zero_or_power_of_two, @function
is_zero_or_power_of_two:
	lea	rax, [rdi - 1]
	test	rax, rdi
	sete	al
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407820

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xc8
	test	al, al
	je	.label_594
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_594:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_597
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_596
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_595
.label_596:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_595:
	mov	edx, dword ptr [rax]
.label_597:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407900

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_599
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_600
	cmp	byte ptr [rax + 1], 0
	je	.label_598
.label_600:
	mov	esi, OFFSET FLAT:.str.1_6
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_599
.label_598:
	xor	ebx, ebx
.label_599:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x407940

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407950

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407960

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407970

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	mov	rcx, qword ptr [rdi]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_601
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_603:
	cmp	qword ptr [rcx], 0
	mov	esi, 0
	mov	rdi, rcx
	je	.label_602
	nop	
.label_604:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_604
	cmp	rsi, rax
	cmova	rax, rsi
.label_602:
	add	rcx, 0x10
	cmp	rcx, rdx
	jb	.label_603
.label_601:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4079c0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rsi, qword ptr [rdi]
	xor	ecx, ecx
	cmp	rsi, qword ptr [rdi + 8]
	mov	edx, 0
	jae	.label_605
	mov	r8, qword ptr [rdi + 8]
	xor	ecx, ecx
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_610:
	cmp	qword ptr [rsi], 0
	mov	rax, rsi
	je	.label_607
	nop	dword ptr [rax]
.label_606:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_606
	inc	rdx
.label_607:
	add	rsi, 0x10
	cmp	rsi, r8
	jb	.label_610
.label_605:
	cmp	rdx, qword ptr [rdi + 0x18]
	jne	.label_608
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_609
.label_608:
	xor	eax, eax
.label_609:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407a20
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rsi
	mov	rbx, rdi
	call	hash_get_n_entries
	mov	rbp, rax
	mov	rdi, rbx
	call	hash_get_n_buckets
	mov	r12, rax
	mov	rdi, rbx
	call	hash_get_n_buckets_used
	mov	r15, rax
	mov	rdi, rbx
	call	hash_get_max_bucket_length
	mov	r14, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str_9
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, rbp
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.1_7
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r15
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_611]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_612]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_613]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.2_3
	mov	al, 1
	mov	rdi, r13
	mov	rcx, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_1
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__fprintf_chk
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407b10

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
	call	safe_hasher
	mov	rbx, rax
	xor	r15d, r15d
	cmp	qword ptr [rbx], 0
	je	.label_614
	test	rbx, rbx
	je	.label_614
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_615:
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	je	.label_616
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_616
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_615
	jmp	.label_614
.label_616:
	mov	r15, qword ptr [rbx]
.label_614:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x407b70

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbx
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdi, rsi
	mov	rsi, rax
	call	qword ptr [rbx + 0x30]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_617
	shl	rax, 4
	add	rax, qword ptr [rbx]
	pop	rbx
	ret	
.label_617:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ba0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_618
	mov	rcx, qword ptr [rdi]
	jmp	.label_620
	nop	
.label_621:
	add	rcx, 0x10
.label_620:
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_619
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_621
.label_618:
	ret	
.label_619:
	push	rax
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407bd0
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rcx, rax
	nop	word ptr cs:[rax + rax]
.label_626:
	cmp	qword ptr [rcx], rbx
	jne	.label_622
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_624
.label_622:
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_626
	mov	rdx, qword ptr [r14 + 8]
	add	rax, 0x10
	nop	
.label_625:
	cmp	rax, rdx
	mov	ecx, 0
	jae	.label_623
	mov	rcx, qword ptr [rax]
	add	rax, 0x10
	test	rcx, rcx
	je	.label_625
	jmp	.label_623
.label_624:
	mov	rcx, qword ptr [rdx]
.label_623:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c40
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r8, qword ptr [rdi]
	xor	eax, eax
	jmp	.label_627
	nop	word ptr [rax + rax]
.label_628:
	add	r8, 0x10
.label_627:
	cmp	r8, qword ptr [rdi + 8]
	jae	.label_629
	cmp	qword ptr [r8], 0
	je	.label_628
	test	r8, r8
	mov	r9, r8
	je	.label_628
	nop	dword ptr [rax + rax]
.label_630:
	cmp	rax, rdx
	jae	.label_629
	mov	rcx, qword ptr [r9]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r9, qword ptr [r9 + 8]
	test	r9, r9
	jne	.label_630
	jmp	.label_628
.label_629:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c90
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
	xor	ebx, ebx
	jmp	.label_631
	nop	dword ptr [rax]
.label_632:
	add	r13, 0x10
.label_631:
	cmp	r13, qword ptr [r12 + 8]
	jae	.label_633
	cmp	qword ptr [r13], 0
	je	.label_632
	test	r13, r13
	mov	rbp, r13
	je	.label_632
	nop	word ptr [rax + rax]
.label_634:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_633
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	jne	.label_634
	jmp	.label_632
.label_633:
	mov	rax, rbx
	add	rsp, 8
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
	#Procedure 0x407d00
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_635
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_636:
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
	jne	.label_636
.label_635:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407d40
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_637]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407d60

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
	mov	rbx, r8
	mov	r12, rsi
	mov	r15, rdi
	test	rdx, rdx
	mov	ebp, OFFSET FLAT:raw_hasher
	cmovne	rbp, rdx
	test	rcx, rcx
	mov	r14d, OFFSET FLAT:raw_comparator
	cmovne	r14, rcx
	mov	edi, 0x50
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_639
	mov	qword ptr [rsp], rbx
	test	r12, r12
	mov	ebx, OFFSET FLAT:default_tuning
	cmovne	rbx, r12
	mov	qword ptr [r13 + 0x28], rbx
	mov	rdi, r13
	call	check_tuning
	test	al, al
	je	.label_638
	mov	rdi, r15
	mov	rsi, rbx
	call	compute_bucket_size
	mov	qword ptr [r13 + 0x10], rax
	test	rax, rax
	je	.label_638
	mov	esi, 0x10
	mov	rdi, rax
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_638
	mov	rcx, qword ptr [r13 + 0x10]
	shl	rcx, 4
	add	rax, rcx
	mov	qword ptr [r13 + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r13 + 0x18], xmm0
	mov	qword ptr [r13 + 0x30], rbp
	mov	qword ptr [r13 + 0x38], r14
	mov	rax, qword ptr [rsp]
	mov	qword ptr [r13 + 0x40], rax
	mov	qword ptr [r13 + 0x48], 0
	mov	rax, r13
	jmp	.label_639
.label_638:
	mov	rdi, r13
	call	free
	xor	eax, eax
.label_639:
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
	#Procedure 0x407e40

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	push	rbx
	mov	rbx, rsi
	mov	esi, 3
	call	rotr_sz
	xor	edx, edx
	div	rbx
	mov	rax, rdx
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407e60

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407e70

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	mov	rcx, qword ptr [rdi + 0x28]
	mov	edx, OFFSET FLAT:default_tuning
	mov	al, 1
	cmp	rcx, rdx
	je	.label_640
	movss	xmm0, dword ptr [rcx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_641]]
	jbe	.label_642
	movss	xmm1,  dword ptr [dword ptr [rip + label_645]]
	ucomiss	xmm1, xmm0
	jbe	.label_642
	movss	xmm1, dword ptr [rcx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_644]]
	jbe	.label_642
	movss	xmm1, dword ptr [rcx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_642
	addss	xmm1,  dword ptr [dword ptr [rip + label_641]]
	ucomiss	xmm0, xmm1
	jbe	.label_642
	movss	xmm0, dword ptr [rcx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_643]]
	ucomiss	xmm2, xmm0
	jb	.label_642
	ucomiss	xmm0, xmm1
	ja	.label_640
.label_642:
	mov	qword ptr [word ptr [rdi + 40]], OFFSET FLAT:default_tuning
	xor	eax, eax
.label_640:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ef0

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	cmp	byte ptr [rsi + 0x10], 0
	jne	.label_646
	mov	eax, edi
	and	eax, 1
	test	rdi, rdi
	js	.label_651
	cvtsi2ss	xmm0, rdi
	jmp	.label_647
.label_651:
	shr	rdi, 1
	or	rax, rdi
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_647:
	divss	xmm0, dword ptr [rsi + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_648]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rdi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rdi, rcx
	xor	eax, eax
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_649]]
	jae	.label_650
.label_646:
	push	rax
	call	next_prime
	mov	rcx, rax
	xor	eax, eax
	mov	rdx, rcx
	shr	rdx, 0x3c
	cmove	rax, rcx
	add	rsp, 8
.label_650:
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407f70
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	jmp	.label_656
	nop	dword ptr [rax]
.label_654:
	add	r14, 0x10
.label_656:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_653
	cmp	qword ptr [r14], 0
	je	.label_654
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_652
	nop	word ptr cs:[rax + rax]
.label_658:
	test	cl, 1
	je	.label_655
	mov	rdi, qword ptr [rbx]
	call	rax
.label_655:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [r15 + 0x48], rbx
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_658
.label_652:
	test	cl, cl
	je	.label_657
	mov	rdi, qword ptr [r14]
	call	rax
.label_657:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	jmp	.label_654
.label_653:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408010

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_664
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_664
	mov	r14, qword ptr [r15]
	jmp	.label_667
	nop	dword ptr [rax + rax]
.label_659:
	add	r14, 0x10
.label_667:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_664
	cmp	qword ptr [r14], 0
	je	.label_659
	test	r14, r14
	mov	rbx, r14
	je	.label_659
	nop	dword ptr [rax + rax]
.label_661:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r15 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_661
	jmp	.label_659
.label_664:
	mov	r14, qword ptr [r15]
	jmp	.label_665
	nop	word ptr [rax + rax]
.label_660:
	add	r14, 0x10
.label_665:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_668
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_660
	nop	word ptr cs:[rax + rax]
.label_663:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_663
	jmp	.label_660
.label_668:
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_666
	nop	dword ptr [rax]
.label_662:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_662
.label_666:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, r15
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4080e0

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x50
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x28]
	mov	rdi, rsi
	mov	rsi, rax
	call	compute_bucket_size
	mov	rbp, rax
	test	rbp, rbp
	je	.label_669
	mov	r14b, 1
	cmp	rbp, qword ptr [rbx + 0x10]
	je	.label_671
	mov	esi, 0x10
	mov	rdi, rbp
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_669
	mov	qword ptr [rsp + 0x10], rbp
	shl	rbp, 4
	add	rbp, qword ptr [rsp]
	mov	qword ptr [rsp + 8], rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x18], xmm0
	mov	rax, qword ptr [rbx + 0x28]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, qword ptr [rbx + 0x38]
	mov	qword ptr [rsp + 0x38], rax
	mov	rax, qword ptr [rbx + 0x40]
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rbx + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rsp]
	xor	edx, edx
	mov	rsi, rbx
	call	transfer_entries
	test	al, al
	je	.label_670
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 0x10], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx + 0x18], rax
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	jmp	.label_671
.label_670:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	lea	rsi, [rsp]
	mov	edx, 1
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_672
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_672
	mov	rdi, qword ptr [rsp]
	call	free
.label_669:
	xor	r14d, r14d
.label_671:
	mov	al, r14b
	add	rsp, 0x50
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_672:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408210

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
	mov	r12, rsi
	mov	r14, rdi
	mov	r15, qword ptr [r12]
	mov	al, 1
	cmp	r15, qword ptr [r12 + 8]
	jae	.label_677
	mov	dword ptr [rsp + 4], edx
	nop	word ptr cs:[rax + rax]
.label_674:
	cmp	qword ptr [r15], 0
	je	.label_673
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	je	.label_676
	nop	word ptr cs:[rax + rax]
.label_680:
	mov	r13, qword ptr [rbx]
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rax], 0
	je	.label_681
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rax + 8], rbx
	jmp	.label_682
	nop	word ptr cs:[rax + rax]
.label_681:
	mov	qword ptr [rax], r13
	inc	qword ptr [r14 + 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	free_entry
.label_682:
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_680
.label_676:
	mov	r13, qword ptr [r15]
	mov	qword ptr [r15 + 8], 0
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	jne	.label_673
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbx, rax
	cmp	qword ptr [rbx], 0
	je	.label_675
	mov	rdi, r14
	call	allocate_entry
	test	rax, rax
	je	.label_678
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbx + 8], rax
	jmp	.label_679
.label_675:
	mov	qword ptr [rbx], r13
	inc	qword ptr [r14 + 0x18]
.label_679:
	mov	qword ptr [r15], 0
	dec	qword ptr [r12 + 0x18]
.label_673:
	add	r15, 0x10
	cmp	r15, qword ptr [r12 + 8]
	jb	.label_674
	mov	al, 1
	jmp	.label_677
.label_678:
	xor	eax, eax
.label_677:
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
	.align	32
	#Procedure 0x408330

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	test	r14, r14
	je	.label_694
	lea	rdx, [rsp]
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	je	.label_689
	test	rbx, rbx
	je	.label_683
	mov	qword ptr [rbx], rax
	jmp	.label_683
.label_689:
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_696
	cvtsi2ss	xmm0, rcx
	jmp	.label_684
.label_696:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_684:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_690
	cvtsi2ss	xmm1, rax
	jmp	.label_693
.label_690:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_693:
	mulss	xmm1, dword ptr [rcx + 8]
	ucomiss	xmm0, xmm1
	jbe	.label_691
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_688
	cvtsi2ss	xmm2, rcx
	jmp	.label_692
.label_688:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm2, rdx
	addss	xmm2, xmm2
.label_692:
	mov	rcx, qword ptr [r15 + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_697
	cvtsi2ss	xmm0, rax
	jmp	.label_686
.label_697:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_686:
	movaps	xmm3, xmm1
	mulss	xmm3, xmm0
	ucomiss	xmm2, xmm3
	jbe	.label_691
	cmp	byte ptr [rcx + 0x10], 0
	mulss	xmm0, dword ptr [rcx + 0xc]
	jne	.label_695
	mulss	xmm0, xmm1
.label_695:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_649]]
	jae	.label_683
	movss	xmm1,  dword ptr [dword ptr [rip + label_648]]
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
	je	.label_683
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	jne	.label_694
.label_691:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_685
	mov	rdi, r15
	call	allocate_entry
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_683
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx + 8], rax
	inc	qword ptr [r15 + 0x20]
	jmp	.label_687
.label_685:
	mov	qword ptr [rax], r14
	inc	qword ptr [r15 + 0x20]
	inc	qword ptr [r15 + 0x18]
.label_687:
	mov	ebp, 1
.label_683:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_694:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408500

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12d, ecx
	mov	rbp, rdx
	mov	r13, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rsi, qword ptr [rbx]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_699
	cmp	rsi, r13
	je	.label_702
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	je	.label_704
.label_702:
	mov	r15, qword ptr [rbx]
	test	r12b, r12b
	je	.label_699
	mov	rsi, qword ptr [rbx + 8]
	test	rsi, rsi
	je	.label_701
	movups	xmm0, xmmword ptr [rsi]
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_703
.label_704:
	mov	rax, qword ptr [rbx + 8]
	xor	r15d, r15d
	test	rax, rax
	je	.label_699
	add	rbx, 8
	xor	r15d, r15d
	nop	
.label_700:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r13
	je	.label_698
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_698
	mov	rbx, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
	add	rbx, 8
	test	rax, rax
	jne	.label_700
	jmp	.label_699
.label_701:
	mov	qword ptr [rbx], 0
	jmp	.label_699
.label_698:
	mov	rsi, qword ptr [rbx]
	mov	r15, qword ptr [rsi]
	test	r12b, r12b
	je	.label_699
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbx], rax
.label_703:
	mov	rdi, r14
	call	free_entry
.label_699:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4085d0

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rax, qword ptr [rdi + 0x48]
	test	rax, rax
	je	.label_705
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rdi + 0x48], rcx
	ret	
.label_705:
	push	rax
	mov	edi, 0x10
	call	malloc
	add	rsp, 8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408600

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
	je	.label_706
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_706:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408630

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r15, rdi
	lea	rdx, [rsp + 8]
	mov	ecx, 1
	call	hash_find_entry
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_709
	dec	qword ptr [r15 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	jne	.label_713
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_715
	cvtsi2ss	xmm0, rax
	jmp	.label_707
.label_715:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_707:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_719
	cvtsi2ss	xmm1, rcx
	jmp	.label_717
.label_719:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_717:
	mulss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jbe	.label_713
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_712
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rcx
	jmp	.label_714
.label_712:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_714:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_708
	cvtsi2ss	xmm0, rax
	jmp	.label_710
.label_708:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_710:
	movss	xmm2, dword ptr [rcx]
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_713
	mulss	xmm0, dword ptr [rcx + 4]
	cmp	byte ptr [rcx + 0x10], 0
	jne	.label_716
	mulss	xmm0, dword ptr [rcx + 8]
.label_716:
	movss	xmm1,  dword ptr [dword ptr [rip + label_648]]
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
	jne	.label_713
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_718
	nop	word ptr cs:[rax + rax]
.label_711:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_711
.label_718:
	mov	qword ptr [r15 + 0x48], 0
.label_713:
	mov	rax, r14
.label_709:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4087c0

	.globl next_prime
	.type next_prime, @function
next_prime:
	push	r14
	push	rbx
	push	rax
	cmp	rdi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rdi
	or	rbx, 1
	mov	r14, -1
	jmp	.label_720
	nop	
.label_721:
	add	rbx, 2
.label_720:
	cmp	rbx, -1
	je	.label_722
	mov	rdi, rbx
	call	is_prime
	test	al, al
	je	.label_721
	mov	r14, rbx
.label_722:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408810

	.globl is_prime
	.type is_prime, @function
is_prime:
	mov	r8, rdi
	mov	esi, 3
	mov	edi, 9
	mov	ecx, 0x10
	cmp	r8, 0xa
	jb	.label_723
	nop	dword ptr [rax + rax]
.label_724:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	je	.label_723
	add	rdi, rcx
	add	rsi, 2
	add	rcx, 8
	cmp	rdi, r8
	jb	.label_724
.label_723:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	setne	al
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408860

	.globl free_entry
	.type free_entry, @function
free_entry:
	mov	qword ptr [rsi], 0
	mov	rax, qword ptr [rdi + 0x48]
	mov	qword ptr [rsi + 8], rax
	mov	qword ptr [rdi + 0x48], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x408880

	.globl i_ring_init
	.type i_ring_init, @function
i_ring_init:
	mov	byte ptr [rdi + 0x1c], 1
	mov	qword ptr [rdi + 0x14], 0
	xor	eax, eax
	nop	
.label_725:
	mov	dword ptr [rdi + rax*4], esi
	inc	rax
	cmp	rax, 4
	jne	.label_725
	mov	dword ptr [rdi + 0x10], esi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4088a0

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4088b0

	.globl i_ring_push
	.type i_ring_push, @function
i_ring_push:
	mov	al, byte ptr [rdi + 0x1c]
	xor	al, 1
	movzx	edx, al
	add	edx, dword ptr [rdi + 0x14]
	and	edx, 3
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], esi
	mov	dword ptr [rdi + 0x14], edx
	mov	ecx, dword ptr [rdi + 0x18]
	cmp	edx, ecx
	jne	.label_726
	mov	dl, byte ptr [rdi + 0x1c]
	xor	dl, 1
	movzx	edx, dl
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_726:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4088f0

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	push	rbx
	mov	rbx, rdi
	call	i_ring_empty
	test	al, al
	jne	.label_727
	mov	ecx, dword ptr [rbx + 0x10]
	mov	edx, dword ptr [rbx + 0x14]
	mov	eax, dword ptr [rbx + rdx*4]
	mov	dword ptr [rbx + rdx*4], ecx
	mov	ecx, dword ptr [rbx + 0x14]
	cmp	ecx, dword ptr [rbx + 0x18]
	jne	.label_728
	mov	byte ptr [rbx + 0x1c], 1
	pop	rbx
	ret	
.label_728:
	add	ecx, 3
	and	ecx, 3
	mov	dword ptr [rbx + 0x14], ecx
	pop	rbx
	ret	
.label_727:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408930

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
	je	.label_729
	mov	rax, rcx
.label_729:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408960

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xc8
	test	al, al
	je	.label_730
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_730:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_732
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x18
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_731
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_733
.label_731:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_733:
	mov	ecx, dword ptr [rax]
.label_732:
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
	#Procedure 0x408a40

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
	js	.label_735
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_734
	mov	dword ptr [r14], ebp
	jmp	.label_735
.label_734:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_735:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408a90

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
	ja	.label_736
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
	jmp	.label_737
.label_736:
	mov	eax, ebx
.label_737:
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
	#Procedure 0x408ae0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_738
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_739
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_738
.label_739:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_738
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_740
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_740:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_738:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408b60

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xc8
	test	al, al
	je	.label_746
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_746:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	cmp	esi, 0xb
	ja	.label_743
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_753
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_751
	test	esi, esi
	jne	.label_743
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_754
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_747
.label_743:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_748
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_751
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_741
.label_753:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_751:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_744
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_752
.label_744:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_752:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_741:
	cmp	eax, 6
	jne	.label_748
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_749
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_750
.label_748:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_742
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_745
.label_754:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_747:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xc8
	ret	
.label_749:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_750:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xc8
	ret	
.label_742:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_745:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408d70

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	mov	ecx, esi
	xor	esi, esi
	xor	eax, eax
	mov	edx, ecx
	jmp	fcntl
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408d80

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_755
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_757
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_757
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_758
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_759
.label_757:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_759
.label_755:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_759:
	test	ebx, ebx
	js	.label_758
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_758
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_756
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_758
.label_756:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_758:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408e50

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_760
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_760
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_760:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408e80

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_761
	ret	
.label_761:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408ea0

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
	jne	.label_762
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_762
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_763
.label_762:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_763:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_764
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_764:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408f10

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408f30
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	cl, sil
	rol	rdi, cl
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408f40
	.globl rotr64
	.type rotr64, @function
rotr64:

	mov	cl, sil
	ror	rdi, cl
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408f50
	.globl rotl32
	.type rotl32, @function
rotl32:

	mov	cl, sil
	rol	edi, cl
	mov	eax, edi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408f60
	.globl rotr32
	.type rotr32, @function
rotr32:

	mov	cl, sil
	ror	edi, cl
	mov	eax, edi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408f70
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	mov	cl, sil
	rol	rdi, cl
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408f80

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	mov	cl, sil
	ror	rdi, cl
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408f90
	.globl rotl16
	.type rotl16, @function
rotl16:

	mov	eax, edi
	mov	cl, sil
	shl	eax, cl
	mov	ecx, 0x10
	sub	ecx, esi
	shr	edi, cl
	or	edi, eax
	movzx	eax, di
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408fb0
	.globl rotr16
	.type rotr16, @function
rotr16:

	mov	eax, edi
	mov	cl, sil
	shr	eax, cl
	mov	ecx, 0x10
	sub	ecx, esi
	shl	edi, cl
	or	edi, eax
	movzx	eax, di
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408fd0
	.globl rotl8
	.type rotl8, @function
rotl8:

	mov	eax, edi
	mov	cl, sil
	shl	eax, cl
	mov	ecx, 8
	sub	ecx, esi
	shr	edi, cl
	or	edi, eax
	movzx	eax, dil
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ff0
	.globl rotr8
	.type rotr8, @function
rotr8:

	mov	eax, edi
	mov	cl, sil
	shr	eax, cl
	mov	ecx, 8
	sub	ecx, esi
	shl	edi, cl
	or	edi, eax
	movzx	eax, dil
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409010

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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4090d0

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x4090e0

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
	#Procedure 0x4090f0

	.globl __lstat
	.type __lstat, @function
__lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section .text
	.align	32
	#Procedure 0x409100

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat