	.section	.text
	.align	32
	#Procedure 0x401e80

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
	mov	r9, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
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
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.31
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.9
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
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
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.10
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.45
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.10
	mov	ecx, OFFSET FLAT:.str.46
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402110

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.12
	mov	esi, OFFSET FLAT:.str.13
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.12
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdin
	call	atexit
	mov	byte ptr [byte ptr [rip + hard_dir_link]],  0
	mov	byte ptr [byte ptr [rip + verbose]],  0
	mov	byte ptr [byte ptr [rip + interactive]],  0
	mov	byte ptr [byte ptr [rip + remove_existing_files]],  0
	mov	byte ptr [byte ptr [rip + symbolic_link]],  0
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	lea	r12, [rsp + 0x28]
	mov	r13d, 0xf000
	xor	r15d, r15d
	xor	eax, eax
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x10], rcx
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_11
.label_47:
	mov	byte ptr [byte ptr [rip + hard_dir_link]],  1
	mov	al, r14b
	nop	word ptr cs:[rax + rax]
.label_11:
	mov	r14b, al
	mov	edx, OFFSET FLAT:.str.14
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, 0x61
	jle	.label_14
	add	eax, -0x62
	cmp	eax, 0x14
	ja	.label_9
	jmp	qword ptr [word ptr [+ (rax * 8) + label_44]]
.label_884:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	test	rax, rax
	mov	rcx, qword ptr [rsp + 0x18]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x18], rcx
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
	mov	al, r14b
	jmp	.label_11
	nop	word ptr cs:[rax + rax]
.label_14:
	cmp	eax, 0x45
	jle	.label_15
	lea	ecx, [rax - 0x4c]
	cmp	ecx, 8
	ja	.label_17
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_20]]
.label_876:
	mov	byte ptr [byte ptr [rip + logical]],  1
	mov	al, r14b
	jmp	.label_11
.label_885:
	mov	byte ptr [byte ptr [rip + remove_existing_files]],  1
	mov	byte ptr [byte ptr [rip + interactive]],  0
	mov	al, r14b
	jmp	.label_11
.label_886:
	mov	byte ptr [byte ptr [rip + remove_existing_files]],  0
	mov	byte ptr [byte ptr [rip + interactive]],  1
	mov	al, r14b
	jmp	.label_11
.label_887:
	mov	byte ptr [byte ptr [rip + dereference_dest_dir_symlinks]],  1
	mov	al, r14b
	jmp	.label_11
.label_888:
	mov	byte ptr [byte ptr [rip + relative]],  1
	mov	al, r14b
	jmp	.label_11
.label_889:
	mov	byte ptr [byte ptr [rip + symbolic_link]],  1
	mov	al, r14b
	jmp	.label_11
.label_890:
	test	r15, r15
	jne	.label_37
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	edi, 1
	mov	rdx, r12
	call	__xstat
	test	eax, eax
	jne	.label_34
	mov	eax, dword ptr [rsp + 0x40]
	and	eax, r13d
	cmp	eax, 0x4000
	jne	.label_40
	mov	r15,  qword ptr [word ptr [rip + optarg]]
	mov	al, r14b
	jmp	.label_11
.label_891:
	mov	byte ptr [byte ptr [rip + verbose]],  1
	mov	al, r14b
	jmp	.label_11
.label_17:
	cmp	eax, 0x46
	je	.label_47
	jmp	.label_9
.label_877:
	mov	byte ptr [byte ptr [rip + logical]],  0
	mov	al, r14b
	jmp	.label_11
.label_878:
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0x10], rax
	mov	al, r14b
	jmp	.label_11
.label_15:
	cmp	eax, -1
	jne	.label_19
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	movsxd	r13, ebp
	sub	r13, rax
	test	r13d, r13d
	jle	.label_21
	mov	dl,  byte ptr [byte ptr [rip + relative]]
	and	dl, 1
	movzx	ecx, dl
	cmp	ecx, 1
	jne	.label_24
	mov	cl,  byte ptr [byte ptr [rip + symbolic_link]]
	and	cl, 1
	je	.label_27
.label_24:
	lea	r12, [rbx + rax*8]
	test	r14b, r14b
	je	.label_28
	test	r15, r15
	jne	.label_29
	xor	ebx, ebx
	cmp	r13d, 2
	jne	.label_31
	mov	r14d, 0xffffffff
	mov	r13d, 2
	jmp	.label_13
.label_28:
	test	r15, r15
	jne	.label_36
	cmp	r13d, 2
	jge	.label_36
	mov	r14d, 0xffffffff
	mov	ebp, 0xffffff9c
	mov	ebx, OFFSET FLAT:.str.3_0
	jmp	.label_13
.label_36:
	test	r15, r15
	setne	al
	cmp	r13d, 2
	setne	bpl
	mov	r14d, 0xffffffff
	or	bpl, al
	jne	.label_22
	mov	rax, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 8]
	movzx	esi,  byte ptr [byte ptr [rip + symbolic_link]]
	and	esi, 1
	cmp	esi, 1
	jne	.label_41
	test	dl, dl
	jne	.label_22
	mov	esi, 0xffffff9c
	mov	rdi, rax
	mov	rdx, rcx
	call	symlinkat
	jmp	.label_10
.label_41:
	movzx	r8d,  byte ptr [byte ptr [rip + logical]]
	and	r8d, 1
	shl	r8d, 0xa
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	rsi, rax
	call	linkat
.label_10:
	test	eax, eax
	js	.label_18
	mov	r13d, 2
	xor	r14d, r14d
	xor	ebx, ebx
	jmp	.label_13
.label_18:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	test	r14d, r14d
	js	.label_22
	cmp	r14d, 0x14
	je	.label_22
	cmp	r14d, 0x11
	jne	.label_23
.label_22:
	test	r15, r15
	mov	rbx, r15
	jne	.label_25
	mov	rbx, qword ptr [r12 + r13*8 - 8]
.label_25:
	mov	al,  byte ptr [byte ptr [rip + dereference_dest_dir_symlinks]]
	and	al, 1
	mov	eax, 0x230000
	mov	edx, 0x210000
	cmovne	edx, eax
	mov	edi, 0xffffff9c
	xor	eax, eax
	mov	rsi, rbx
	call	openat_safer
	test	eax, eax
	js	.label_32
	cmp	r15, 1
	sbb	r13d, 0
	mov	ebp, eax
	jmp	.label_13
.label_32:
	mov	r15, rbx
	mov	r13d, 2
	xor	ebx, ebx
	test	bpl, 1
	mov	ebp, eax
	jne	.label_35
.label_13:
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x20]
	test	cl, cl
	je	.label_38
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x18]
	call	xget_version
.label_38:
	mov	dword ptr [dword ptr [rip + backup_type]],  eax
	mov	rdi, qword ptr [rsp + 0x10]
	call	set_simple_backup_suffix
	test	rbx, rbx
	je	.label_43
	mov	r15d, ebp
	mov	r14, rbx
	cmp	r13d, 1
	jle	.label_45
	movzx	eax,  byte ptr [byte ptr [rip + remove_existing_files]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_12
	cmp	dword ptr [dword ptr [rip + backup_type]],  3
	je	.label_12
	mov	al,  byte ptr [byte ptr [rip + symbolic_link]]
	xor	al, 1
	test	al, 1
	je	.label_12
	mov	edi, 0x3d
	xor	esi, esi
	mov	edx, OFFSET FLAT:triple_hash
	mov	ecx, OFFSET FLAT:triple_compare
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	mov	qword ptr [word ptr [rip + dest_set]],  rax
	test	rax, rax
	jne	.label_12
	call	xalloc_die
.label_43:
	mov	rdi, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
	mov	esi, 0xffffff9c
	mov	rcx, rdx
	mov	r8d, r14d
	call	do_link
	mov	bl, al
	jmp	.label_26
.label_45:
	mov	bl, 1
	test	r13d, r13d
	jle	.label_26
.label_12:
	mov	bl, 1
	nop	word ptr cs:[rax + rax]
.label_39:
	mov	rdi, qword ptr [r12]
	call	last_component
	mov	rdi, r14
	mov	rsi, rax
	lea	rdx, [rsp + 0x28]
	call	file_name_concat
	mov	rbp, rax
	mov	rdi, qword ptr [rsp + 0x28]
	call	strip_trailing_slashes
	mov	rdi, qword ptr [r12]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	r8d, 0xffffffff
	mov	esi, r15d
	mov	rcx, rbp
	call	do_link
	and	bl, al
	mov	rdi, rbp
	call	free
	add	r12, 8
	dec	r13d
	jne	.label_39
.label_26:
	not	bl
	and	bl, 1
	movzx	eax, bl
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_23:
	mov	r13d, 2
	xor	ebx, ebx
	jmp	.label_13
.label_19:
	cmp	eax, 0xffffff7d
	je	.label_46
	cmp	eax, 0xffffff7e
	jne	.label_9
	xor	edi, edi
	call	usage
.label_46:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.19
	mov	r9d, OFFSET FLAT:.str.20
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_9:
	mov	edi, 1
	call	usage
.label_21:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
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
.label_29:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	jmp	.label_30
.label_31:
	xor	edi, edi
	cmp	r13d, 1
	jg	.label_33
	mov	esi, OFFSET FLAT:.str.24
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r12]
	jmp	.label_42
.label_37:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15
	jmp	.label_30
.label_34:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	edi, 4
.label_16:
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_40:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
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
	mov	esi, OFFSET FLAT:.str.22
.label_30:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_33:
	mov	esi, OFFSET FLAT:.str.25
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r12 + 0x10]
.label_42:
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
.label_35:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	jmp	.label_16
	.section	.text
	.align	32
	#Procedure 0x4027c0

	.globl do_link
	.type do_link, @function
do_link:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x168
	mov	r14d, r8d
	mov	r15, rcx
	mov	r12, rdx
	mov	r13d, esi
	mov	rbp, rdi
	mov	al,  byte ptr [byte ptr [rip + logical]]
	and	al, 1
	sete	bl
	test	r14d, r14d
	jns	.label_63
	movzx	ecx,  byte ptr [byte ptr [rip + symbolic_link]]
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_93
	mov	al,  byte ptr [byte ptr [rip + relative]]
	and	al, 1
	je	.label_98
	mov	qword ptr [rsp + 0x40], rbp
	mov	r14d, 0xffffffff
	mov	ecx, 1
	jmp	.label_51
.label_93:
	movzx	r8d, al
	shl	r8d, 0xa
	mov	edi, 0xffffff9c
	mov	rsi, rbp
	mov	edx, r13d
	mov	rcx, r12
	call	linkat
	jmp	.label_59
.label_98:
	mov	rdi, rbp
	mov	esi, r13d
	mov	rdx, r12
	call	symlinkat
.label_59:
	xor	r14d, r14d
	test	eax, eax
	jns	.label_63
	call	__errno_location
	mov	r14d, dword ptr [rax]
.label_63:
	test	r14d, r14d
	mov	al,  byte ptr [byte ptr [rip + symbolic_link]]
	jne	.label_68
	mov	rcx,  qword ptr [word ptr [rip + dest_set]]
	test	rcx, rcx
	jne	.label_68
	mov	qword ptr [rsp + 0x40], rbp
	xor	r13d, r13d
	test	al, 1
	mov	ebx, 0
	jne	.label_56
	jmp	.label_76
.label_68:
	mov	ecx, 1
	test	al, 1
	jne	.label_57
	movzx	r8d, bl
	shl	r8d, 8
	lea	rcx, [rsp + 0xd8]
	mov	edi, 1
	mov	esi, 0xffffff9c
	mov	rdx, rbp
	call	__fxstatat
	xor	ecx, ecx
	test	eax, eax
	je	.label_57
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_91
.label_57:
	mov	qword ptr [rsp + 0x40], rbp
	test	r14d, r14d
	je	.label_94
.label_51:
	mov	al,  byte ptr [byte ptr [rip + symbolic_link]]
	and	al, 1
	jne	.label_48
	mov	al,  byte ptr [byte ptr [rip + hard_dir_link]]
	and	al, 1
	jne	.label_48
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0xf0]
	cmp	eax, 0x4000
	jne	.label_48
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.62
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x40]
	jmp	.label_71
.label_48:
	mov	dword ptr [rsp + 0x18], ecx
	mov	dword ptr [rsp + 0x34], r13d
	xor	ebx, ebx
	movzx	eax,  byte ptr [byte ptr [rip + relative]]
	and	eax, 1
	cmp	eax, 1
	mov	rbp, qword ptr [rsp + 0x40]
	jne	.label_66
	mov	qword ptr [rsp + 0x20], r12
	mov	rdi, r15
	mov	qword ptr [rsp + 0x28], r15
	call	dir_name
	mov	r15, rax
	mov	esi, 2
	mov	rdi, r15
	call	canonicalize_filename_mode
	mov	r12, rax
	mov	esi, 2
	mov	rdi, rbp
	call	canonicalize_filename_mode
	mov	r13, rax
	xor	ebx, ebx
	test	r12, r12
	je	.label_82
	test	r13, r13
	je	.label_82
	mov	rbp, r15
	mov	edi, 0x1000
	call	xmalloc
	mov	r15, rax
	mov	ecx, 0x1000
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	relpath
	test	al, al
	je	.label_86
	mov	rbx, r15
	jmp	.label_87
.label_66:
	mov	qword ptr [rsp + 0x28], r15
	jmp	.label_55
.label_94:
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	ebx, ebx
	xor	r14d, r14d
	jmp	.label_90
.label_86:
	mov	rdi, r15
	call	free
	xor	ebx, ebx
.label_87:
	mov	r15, rbp
.label_82:
	mov	rdi, r15
	call	free
	mov	rdi, r12
	call	free
	mov	rdi, r13
	call	free
	test	rbx, rbx
	mov	rbp, rbx
	mov	r12, qword ptr [rsp + 0x20]
	jne	.label_55
	mov	rdi, qword ptr [rsp + 0x40]
	call	xstrdup
	mov	rbx, rax
	mov	rbp, rbx
.label_55:
	mov	al,  byte ptr [byte ptr [rip + remove_existing_files]]
	and	al, 1
	mov	r13b, 1
	jne	.label_58
	mov	al,  byte ptr [byte ptr [rip + interactive]]
	and	al, 1
	jne	.label_58
	xor	r15d, r15d
	cmp	dword ptr [dword ptr [rip + backup_type]],  0
	setne	r13b
	je	.label_64
.label_58:
	lea	rcx, [rsp + 0x48]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0x34]
	mov	rdx, r12
	call	__fxstatat
	test	eax, eax
	je	.label_75
	mov	qword ptr [rsp + 0x38], rbx
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	cmp	ebx, 2
	mov	r13d, 0
	je	.label_62
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
.label_70:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x28]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_52
.label_75:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x60]
	cmp	eax, 0x4000
	jne	.label_89
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.63
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x28]
.label_71:
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_91:
	mov	rdx, rbx
	call	error
	jmp	.label_52
.label_89:
	mov	qword ptr [rsp + 0x38], rbx
	mov	rdi,  qword ptr [word ptr [rip + dest_set]]
	lea	rdx, [rsp + 0x48]
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rsi, rbx
	call	seen_file
	test	al, al
	je	.label_83
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.64
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, rbp
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, r15
.label_84:
	mov	r8, rbx
	call	error
	jmp	.label_52
.label_83:
	cmp	dword ptr [dword ptr [rip + backup_type]],  0
	je	.label_79
	mov	al,  byte ptr [byte ptr [rip + symbolic_link]]
	and	al, 1
	je	.label_80
	jmp	.label_49
.label_79:
	movzx	eax,  byte ptr [byte ptr [rip + remove_existing_files]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_49
.label_80:
	cmp	dword ptr [rsp + 0x18], 0
	je	.label_85
	lea	rdx, [rsp + 0xd8]
	mov	edi, 1
	mov	rsi, rbp
	call	__xstat
	test	eax, eax
	jne	.label_49
.label_85:
	mov	rax, qword ptr [rsp + 0xe0]
	cmp	rax, qword ptr [rsp + 0x50]
	jne	.label_49
	mov	rax, qword ptr [rsp + 0xd8]
	cmp	rax, qword ptr [rsp + 0x48]
	jne	.label_49
	cmp	qword ptr [rsp + 0xe8], 1
	je	.label_88
	mov	edi, 0xffffff9c
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x34]
	mov	rcx, r12
	call	same_nameat
	test	al, al
	je	.label_49
.label_88:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbp
	call	quotearg_n_style
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rsp + 0x28]
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbp
	jmp	.label_84
.label_49:
	xor	r15d, r15d
	test	r14d, r14d
	js	.label_72
	cmp	r14d, 0x11
	jne	.label_62
.label_72:
	mov	qword ptr [rsp + 0x20], r12
	movzx	eax,  byte ptr [byte ptr [rip + interactive]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_96
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp + 0x40], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.66
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	r15,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x28]
	call	quotearg_style
	mov	rbx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, rbx
	call	__fprintf_chk
	mov	r12b, 1
	call	yesno
	test	al, al
	je	.label_52
.label_96:
	mov	edx,  dword ptr [dword ptr [rip + backup_type]]
	xor	r15d, r15d
	test	edx, edx
	je	.label_53
	mov	ebx, dword ptr [rsp + 0x34]
	mov	edi, ebx
	mov	r12, qword ptr [rsp + 0x20]
	mov	rsi, r12
	call	find_backup_file_name
	mov	r15, rax
	mov	edi, ebx
	mov	rsi, r12
	mov	edx, ebx
	mov	rcx, r15
	call	renameat
	test	eax, eax
	je	.label_62
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdi, r15
	call	free
	xor	r15d, r15d
	cmp	ebx, 2
	mov	r13d, 0
	je	.label_62
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.67
	jmp	.label_70
.label_53:
	mov	r12, qword ptr [rsp + 0x20]
.label_62:
	mov	rbx, qword ptr [rsp + 0x38]
.label_64:
	mov	qword ptr [rsp + 0x18], r15
	movzx	eax,  byte ptr [byte ptr [rip + symbolic_link]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_74
	movzx	ecx, r13b
	mov	rdi, rbp
	mov	r13d, dword ptr [rsp + 0x34]
	mov	esi, r13d
	mov	rdx, r12
	mov	r8d, r14d
	call	force_symlinkat
	jmp	.label_81
.label_74:
	movzx	r8d,  byte ptr [byte ptr [rip + logical]]
	and	r8d, 1
	shl	r8d, 0xa
	mov	dword ptr [rsp], r14d
	movzx	r9d, r13b
	mov	edi, 0xffffff9c
	mov	rsi, rbp
	mov	r13d, dword ptr [rsp + 0x34]
	mov	edx, r13d
	mov	rcx, r12
	call	force_linkat
.label_81:
	mov	r14d, eax
	mov	qword ptr [rsp + 0x40], rbp
	mov	r15, qword ptr [rsp + 0x28]
.label_90:
	mov	al,  byte ptr [byte ptr [rip + symbolic_link]]
	test	r14d, r14d
	jle	.label_92
	test	al, 1
	je	.label_95
	cmp	r14d, 0x24
	je	.label_50
	mov	rax, qword ptr [rsp + 0x40]
	cmp	byte ptr [rax], 0
	je	.label_50
	mov	dword ptr [rsp + 0x34], r13d
	mov	qword ptr [rsp + 0x38], rbx
	mov	qword ptr [rsp + 0x20], r12
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.70
	jmp	.label_54
.label_92:
	test	al, 1
	mov	r13, qword ptr [rsp + 0x18]
	jne	.label_56
.label_76:
	mov	rdi,  qword ptr [word ptr [rip + dest_set]]
	lea	rdx, [rsp + 0xd8]
	mov	rsi, r15
	call	record_file
.label_56:
	movzx	eax,  byte ptr [byte ptr [rip + verbose]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_65
	mov	qword ptr [rsp + 0x38], rbx
	mov	r14d, OFFSET FLAT:.str_0
	test	r13, r13
	mov	ebx, OFFSET FLAT:.str_0
	je	.label_69
	mov	rbp, r12
	sub	rbp, r15
	xor	r12d, r12d
	test	rbp, rbp
	mov	rbx, r13
	jle	.label_73
	mov	rdi, r13
	call	strlen
	lea	rdi, [rbp + rax + 1]
	call	xmalloc
	mov	rbx, rax
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, rbp
	call	memcpy
	add	rbp, rbx
	mov	rdi, rbp
	mov	rsi, r13
	call	strcpy
	mov	r12, rbx
.label_73:
	mov	edi, 2
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	r14, rax
	mov	rdi, r12
	call	free
	mov	ebx, OFFSET FLAT:.str.68
.label_69:
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r15
	call	quotearg_n_style
	mov	rbp, rax
	mov	al,  byte ptr [byte ptr [rip + symbolic_link]]
	and	al, 1
	mov	eax, 0x2d
	mov	r15d, 0x3d
	cmovne	r15d, eax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rsp + 0x40]
	call	quotearg_n_style
	mov	qword ptr [rsp], rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.69
	xor	eax, eax
	mov	r8, rbp
	mov	rdx, r14
	mov	rcx, rbx
	mov	r9d, r15d
	call	__printf_chk
	mov	rbx, qword ptr [rsp + 0x38]
	mov	r12b, 1
	jmp	.label_60
.label_65:
	mov	r12b, 1
	jmp	.label_60
.label_95:
	cmp	r14d, 0x1f
	jne	.label_67
	mov	dword ptr [rsp + 0x34], r13d
	mov	qword ptr [rsp + 0x38], rbx
	mov	qword ptr [rsp + 0x20], r12
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.72
	jmp	.label_54
.label_50:
	mov	dword ptr [rsp + 0x34], r13d
	mov	qword ptr [rsp + 0x38], rbx
	mov	qword ptr [rsp + 0x20], r12
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.71
	jmp	.label_54
.label_67:
	mov	eax, r14d
	or	eax, 2
	cmp	eax, 0x1e
	je	.label_78
	cmp	r14d, 0x7a
	je	.label_78
	cmp	r14d, 0x11
	je	.label_78
	mov	dword ptr [rsp + 0x34], r13d
	mov	qword ptr [rsp + 0x38], rbx
	mov	qword ptr [rsp + 0x20], r12
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.74
	jmp	.label_54
.label_78:
	mov	dword ptr [rsp + 0x34], r13d
	mov	qword ptr [rsp + 0x38], rbx
	mov	qword ptr [rsp + 0x20], r12
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.73
.label_54:
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x10], rax
	mov	r13, qword ptr [rsp + 0x18]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r15
	mov	qword ptr [rsp + 0x28], r15
	call	quotearg_n_style
	mov	rbx, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rsp + 0x40]
	call	quotearg_n_style
	mov	rbp, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rcx, rbx
	mov	r8, rbp
	call	error
	test	r13, r13
	je	.label_97
	mov	edi, dword ptr [rsp + 0x34]
	mov	rsi, r13
	mov	edx, edi
	mov	rcx, qword ptr [rsp + 0x20]
	call	renameat
	test	eax, eax
	je	.label_61
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.75
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x28]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_77
.label_97:
	xor	r13d, r13d
	jmp	.label_77
.label_61:
	xor	r12d, r12d
.label_77:
	mov	rbx, qword ptr [rsp + 0x38]
.label_60:
	mov	rdi, r13
	call	free
	mov	rdi, rbx
	call	free
.label_52:
	mov	al, r12b
	add	rsp, 0x168
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030c0

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
	jns	.label_99
	mov	edi, r13d
	mov	qword ptr [rsp], rsi
	mov	edx, ebx
	mov	rcx, r12
	mov	r8d, r15d
	call	linkat
	xor	r14d, r14d
	test	eax, eax
	je	.label_100
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rsi, qword ptr [rsp]
.label_99:
	cmp	r14d, 0x11
	jne	.label_100
	mov	qword ptr [rsp], rsi
	xor	bpl, 1
	jne	.label_100
	mov	rdi, r12
	call	last_component
	mov	rbp, rax
	sub	rbp, r12
	lea	rdi, [rbp + 9]
	mov	r14d, r15d
	cmp	rdi, 0x101
	jae	.label_105
	lea	r15, [rsp + 0x20]
	jmp	.label_102
.label_105:
	call	malloc
	mov	r15, rax
	test	r15, r15
	je	.label_103
.label_102:
	mov	rcx, -1
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbp
	call	__mempcpy_chk
	movabs	rcx, 0x5858585858587543
	mov	qword ptr [rax], rcx
	mov	byte ptr [rax + 8], 0
	test	r15, r15
	je	.label_103
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
	je	.label_106
	call	__errno_location
	mov	r14d, dword ptr [rax]
	jmp	.label_101
.label_103:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	jmp	.label_100
.label_106:
	mov	edi, ebx
	mov	rsi, r15
	mov	edx, ebx
	mov	rcx, r12
	call	renameat
	mov	r14d, 0xffffffff
	test	eax, eax
	je	.label_104
	call	__errno_location
	mov	r14d, dword ptr [rax]
.label_104:
	xor	edx, edx
	mov	edi, ebx
	mov	rsi, r15
	call	unlinkat
.label_101:
	lea	rax, [rsp + 0x20]
	cmp	r15, rax
	je	.label_100
	mov	rdi, r15
	call	free
.label_100:
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
	.align	32
	#Procedure 0x403230

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
	.align	32
	#Procedure 0x403250

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
	jns	.label_110
	mov	rdi, r15
	mov	esi, r14d
	mov	rdx, r13
	call	symlinkat
	xor	ebp, ebp
	test	eax, eax
	je	.label_107
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_110:
	cmp	ebp, 0x11
	jne	.label_107
	xor	bl, 1
	jne	.label_107
	mov	rdi, r13
	call	last_component
	mov	rbx, rax
	sub	rbx, r13
	lea	rdi, [rbx + 9]
	cmp	rdi, 0x101
	jae	.label_112
	lea	r12, [rsp + 0x10]
	jmp	.label_113
.label_112:
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_109
.label_113:
	mov	rcx, -1
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	movabs	rcx, 0x5858585858587543
	mov	qword ptr [rax], rcx
	mov	byte ptr [rax + 8], 0
	test	r12, r12
	je	.label_109
	mov	qword ptr [rsp], r15
	mov	dword ptr [rsp + 8], r14d
	lea	rdx, [rsp]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:try_symlink
	mov	r8d, 6
	mov	rdi, r12
	call	try_tempname_len
	test	eax, eax
	je	.label_111
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_108
.label_109:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_107
.label_111:
	mov	edi, r14d
	mov	rsi, r12
	mov	edx, r14d
	mov	rcx, r13
	call	renameat
	mov	ebp, 0xffffffff
	test	eax, eax
	je	.label_108
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edx, edx
	mov	edi, r14d
	mov	rsi, r12
	call	unlinkat
.label_108:
	lea	rax, [rsp + 0x10]
	cmp	r12, rax
	je	.label_107
	mov	rdi, r12
	call	free
.label_107:
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
	.align	32
	#Procedure 0x403390

	.globl try_symlink
	.type try_symlink, @function
try_symlink:
	mov	rax, rdi
	mov	rdi, qword ptr [rsi]
	mov	esi, dword ptr [rsi + 8]
	mov	rdx, rax
	jmp	symlinkat
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033b0

	.globl relpath
	.type relpath, @function
relpath:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	r15, rdi
	movzx	eax, byte ptr [r13 + 1]
	cmp	eax, 0x2f
	sete	al
	movzx	ecx, byte ptr [r15 + 1]
	cmp	ecx, 0x2f
	sete	cl
	xor	ebx, ebx
	xor	cl, al
	jne	.label_122
	mov	cl, byte ptr [r13]
	test	cl, cl
	mov	eax, 0
	mov	rdx, r15
	je	.label_139
	xor	eax, eax
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_121:
	mov	rdx, rax
	mov	al, byte ptr [r15 + rdx]
	test	al, al
	je	.label_114
	movzx	edi, al
	movzx	esi, cl
	cmp	esi, edi
	jne	.label_114
	lea	rax, [rdx + 1]
	cmp	esi, 0x2f
	cmove	ebx, eax
	mov	cl, byte ptr [r13 + rdx + 1]
	test	cl, cl
	jne	.label_121
	lea	rdx, [r15 + rdx + 1]
.label_139:
	mov	cl, byte ptr [rdx]
	test	cl, cl
	je	.label_127
	movzx	ecx, cl
	cmp	ecx, 0x2f
	je	.label_127
	jmp	.label_129
.label_114:
	movzx	ecx, cl
	cmp	ecx, 0x2f
	jne	.label_129
	test	al, al
	mov	eax, edx
	jne	.label_129
.label_127:
	mov	ebx, eax
.label_129:
	test	ebx, ebx
	je	.label_133
	movsxd	rax, ebx
	add	r15, rax
	movzx	ecx, byte ptr [r13 + rax]
	cmp	ecx, 0x2f
	jne	.label_135
	lea	r13, [r13 + rax + 1]
	jmp	.label_137
.label_133:
	xor	ebx, ebx
	jmp	.label_122
.label_135:
	add	r13, rax
.label_137:
	movzx	eax, byte ptr [r15]
	cmp	eax, 0x2f
	jne	.label_141
	inc	r15
.label_141:
	cmp	byte ptr [r13], 0
	je	.label_143
	test	r12, r12
	je	.label_116
	mov	bpl, 1
	cmp	r14, 3
	jb	.label_131
	mov	byte ptr [r12 + 2], 0
	mov	word ptr [r12], 0x2e2e
	add	r12, 2
	add	r14, -2
	jmp	.label_120
.label_143:
	cmp	byte ptr [r15], 0
	jne	.label_126
	mov	r15d, OFFSET FLAT:.str.3_0
.label_126:
	test	r12, r12
	je	.label_128
	mov	rdi, r15
	call	strlen
	cmp	rax, r14
	jae	.label_132
	inc	rax
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, rax
	call	memcpy
	jmp	.label_125
.label_116:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str_2
	call	fputs_unlocked
	xor	r12d, r12d
.label_120:
	xor	ebp, ebp
	jmp	.label_131
	nop	
.label_117:
	inc	r13
.label_131:
	movzx	eax, byte ptr [r13]
	cmp	eax, 0x2f
	je	.label_115
	test	al, al
	jne	.label_117
	jmp	.label_119
	nop	word ptr cs:[rax + rax]
.label_115:
	test	r12, r12
	je	.label_123
	mov	al, 1
	cmp	r14, 4
	jb	.label_124
	mov	dword ptr [r12], 0x2e2e2f
	add	r12, 3
	add	r14, -3
	jmp	.label_118
.label_123:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.1_0
	call	fputs_unlocked
	xor	r12d, r12d
.label_118:
	xor	eax, eax
.label_124:
	and	bpl, 1
	or	bpl, al
	jmp	.label_117
.label_119:
	cmp	byte ptr [r15], 0
	je	.label_136
	test	r12, r12
	je	.label_138
	mov	bl, 1
	cmp	r14, 1
	jbe	.label_140
	mov	word ptr [r12], 0x2f
	inc	r12
	dec	r14
	and	bpl, 1
	jmp	.label_142
.label_128:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, r15
	call	fputs_unlocked
.label_125:
	mov	bl, 1
	jmp	.label_122
.label_138:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.2_0
	call	fputs_unlocked
	and	bpl, 1
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, r15
	call	fputs_unlocked
	jmp	.label_130
.label_140:
	mov	bpl, 1
.label_142:
	mov	rdi, r15
	call	strlen
	cmp	rax, r14
	jae	.label_134
	inc	rax
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, rax
	call	memcpy
.label_130:
	xor	ebx, ebx
.label_134:
	or	bpl, bl
.label_136:
	mov	bl, 1
	test	bpl, 1
	je	.label_122
.label_132:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0
	mov	esi, 0x24
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	call	error
.label_122:
	mov	al, bl
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
	#Procedure 0x403630

	.globl set_simple_backup_suffix
	.type set_simple_backup_suffix, @function
set_simple_backup_suffix:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	jne	.label_144
	mov	edi, OFFSET FLAT:.str_3
	call	getenv
	mov	rbx, rax
	mov	eax, OFFSET FLAT:.str.1_1
	test	rbx, rbx
	je	.label_145
.label_144:
	mov	eax, OFFSET FLAT:.str.1_1
	cmp	byte ptr [rbx], 0
	je	.label_145
	mov	rdi, rbx
	call	last_component
	cmp	rbx, rax
	mov	eax, OFFSET FLAT:.str.1_1
	cmove	rax, rbx
.label_145:
	mov	qword ptr [word ptr [rip + simple_backup_suffix]],  rax
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403680

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
	jne	.label_172
	mov	edi, OFFSET FLAT:.str_3
	call	getenv
	mov	rbx, rax
	mov	edi, OFFSET FLAT:.str.1_1
	test	rbx, rbx
	je	.label_177
	mov	edi, OFFSET FLAT:.str.1_1
	cmp	byte ptr [rbx], 0
	je	.label_177
	mov	rdi, rbx
	call	last_component
	cmp	rbx, rax
	mov	edi, OFFSET FLAT:.str.1_1
	cmove	rdi, rbx
.label_177:
	mov	qword ptr [word ptr [rip + simple_backup_suffix]],  rdi
.label_172:
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
	je	.label_155
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
.label_157:
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rdx, qword ptr [rsp + 0x48]
	call	memcpy
	cmp	r15d, 1
	jne	.label_180
	mov	rax, qword ptr [rsp + 0x40]
	lea	rdi, [r13 + rax]
	mov	r14, r13
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdx, qword ptr [rsp + 0x38]
	call	memcpy
	mov	dword ptr [rsp + 0x6c], 1
	jmp	.label_170
	nop	word ptr cs:[rax + rax]
.label_180:
	mov	rax, qword ptr [rsp + 0x78]
	lea	rbx, [r13 + rax]
	mov	rdi, rbx
	call	base_len
	mov	rbp, rax
	test	r12, r12
	je	.label_176
	mov	dword ptr [rsp + 0x6c], r15d
	mov	rdi, r12
	call	rewinddir
	mov	r15, rbp
	jmp	.label_178
.label_176:
	mov	r14w, word ptr [rbx]
	mov	word ptr [rbx], 0x2e
	xor	edx, edx
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, r13
	lea	rcx, [rsp + 0x84]
	call	opendirat
	mov	r12, rax
	test	r12, r12
	je	.label_148
	mov	dword ptr [rsp + 0x6c], r15d
	mov	word ptr [rbx], r14w
	mov	r15, rbp
	mov	byte ptr [rbx + r15 + 4], 0
	mov	dword ptr [rbx + r15], 0x7e317e2e
.label_178:
	mov	rdi, r12
	call	readdir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_156
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
.label_162:
	lea	rbp, [rbx + 0x13]
	mov	rdi, rbp
	call	strlen
	cmp	rax, r13
	jb	.label_154
	mov	rax, qword ptr [rsp + 0x78]
	lea	rdi, [r14 + rax]
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp + 0x70]
	call	memcmp
	test	eax, eax
	jne	.label_154
	mov	al, byte ptr [rbx + r15 + 0x15]
	mov	cl, al
	add	cl, 0xcf
	movzx	ecx, cl
	cmp	ecx, 8
	ja	.label_154
	lea	rcx, [rbx + r15 + 0x13]
	movzx	eax, al
	cmp	eax, 0x39
	mov	rdx, r15
	sete	r15b
	movsx	eax, byte ptr [rcx + 3]
	mov	ecx, eax
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_174
	lea	rcx, [rbx + rdx + 0x17]
	mov	qword ptr [rsp + 0x58], rdx
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_146:
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
	jb	.label_146
	add	rbp, 2
	jmp	.label_173
.label_174:
	mov	qword ptr [rsp + 0x58], rdx
	mov	ebp, 1
.label_173:
	movzx	eax, al
	cmp	eax, 0x7e
	jne	.label_167
	mov	rax, qword ptr [rsp + 0x58]
	lea	rbx, [rbx + rax + 0x15]
	cmp	byte ptr [rbp + rbx + 1], 0
	je	.label_161
	mov	r15, qword ptr [rsp + 0x58]
	jmp	.label_154
.label_167:
	mov	r15, qword ptr [rsp + 0x58]
	jmp	.label_154
.label_161:
	cmp	qword ptr [rsp + 0x28], rbp
	jb	.label_149
	jne	.label_165
	mov	rax, qword ptr [rsp + 0x40]
	lea	rdi, [r14 + rax + 2]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x28]
	call	memcmp
	test	eax, eax
	jle	.label_149
	mov	r15, qword ptr [rsp + 0x58]
	jmp	.label_154
.label_149:
	movzx	edx, r15b
	lea	rcx, [rdx + rbp]
	mov	qword ptr [rsp + 0x28], rcx
	mov	rax, qword ptr [rsp]
	lea	r15, [rax + rcx]
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, r15
	jae	.label_168
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
	jne	.label_175
	jmp	.label_153
.label_168:
	mov	rax, r14
.label_175:
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
	jmp	.label_151
	nop	word ptr cs:[rax + rax]
.label_163:
	mov	byte ptr [rax], 0x30
	movzx	ecx, byte ptr [rax - 1]
	dec	rax
.label_151:
	cmp	ecx, 0x39
	je	.label_163
	inc	cl
	mov	byte ptr [rax], cl
	mov	r15, qword ptr [rsp + 0x58]
	jmp	.label_154
.label_165:
	mov	r15, qword ptr [rsp + 0x58]
	nop	
.label_154:
	mov	rdi, r12
	call	readdir
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_162
	mov	r13, r14
	mov	rcx, qword ptr [rsp + 0x30]
	jmp	.label_164
.label_148:
	mov	dword ptr [rsp + 0x6c], r15d
	call	__errno_location
	mov	ecx, 3
	cmp	dword ptr [rax], 0xc
	je	.label_166
	mov	ecx, 2
.label_166:
	mov	word ptr [rbx], r14w
	mov	byte ptr [rbx + rbp + 4], 0
	mov	dword ptr [rbx + rbp], 0x7e317e2e
	xor	r12d, r12d
.label_164:
	cmp	ecx, 1
	je	.label_169
	cmp	ecx, 2
	je	.label_156
	mov	r14, r13
	cmp	ecx, 3
	jne	.label_170
	jmp	.label_153
	nop	word ptr cs:[rax + rax]
.label_156:
	mov	eax, dword ptr [rsp + 0x6c]
	cmp	eax, 2
	jne	.label_169
	mov	rax, qword ptr [rsp + 0x40]
	lea	rdi, [r13 + rax]
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdx, qword ptr [rsp + 0x38]
	call	memcpy
	mov	dword ptr [rsp + 0x6c], 1
.label_169:
	mov	r15d, dword ptr [rsp + 0x84]
	mov	rdi, r13
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	base_len
	mov	rbp, rax
	cmp	rbp, 0xf
	jb	.label_147
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	jne	.label_150
	mov	r14, r13
	test	r15d, r15d
	js	.label_152
	call	__errno_location
	mov	r13, rax
	mov	dword ptr [r13], 0
	mov	esi, 3
	mov	edi, r15d
	call	fpathconf
	cmp	dword ptr [r13], 1
	sbb	rax, 0
	jmp	.label_158
.label_147:
	mov	eax, 0xff
	jmp	.label_150
.label_152:
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
.label_158:
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
.label_150:
	cmp	rax, rbp
	jae	.label_171
	mov	rcx, qword ptr [rsp + 0x40]
	lea	rcx, [r13 + rcx]
	mov	r14, r13
	sub	rcx, rbx
	cmp	rax, rcx
	lea	rax, [rax - 1]
	cmova	rax, rcx
	mov	word ptr [rbx + rax], 0x7e
	jmp	.label_170
.label_171:
	mov	r14, r13
	nop	dword ptr [rax + rax]
.label_170:
	mov	eax, dword ptr [rsp + 0x54]
	test	al, al
	mov	r15d, dword ptr [rsp + 0x6c]
	mov	r13, r14
	je	.label_159
	mov	edx, dword ptr [rsp + 0x84]
	test	edx, edx
	jns	.label_179
	mov	dword ptr [rsp + 0x84], 0xffffff9c
	mov	edx, 0xffffff9c
	xor	eax, eax
	mov	qword ptr [rsp + 0x78], rax
.label_179:
	cmp	r15d, 1
	setne	al
	movzx	r8d, al
	mov	rax, qword ptr [rsp + 0x78]
	lea	rcx, [r13 + rax]
	mov	edi, 0xffffff9c
	mov	rsi, qword ptr [rsp + 0x60]
	call	renameatu
	test	eax, eax
	je	.label_159
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	cmp	ebp, 0x11
	je	.label_157
	test	r12, r12
	je	.label_160
	mov	rdi, r12
	call	closedir
.label_160:
	mov	rdi, r13
	call	free
	mov	dword ptr [rbx], ebp
	xor	r13d, r13d
	jmp	.label_155
.label_159:
	test	r12, r12
	je	.label_155
	mov	rdi, r12
	call	closedir
	jmp	.label_155
.label_153:
	mov	rdi, r14
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r13d, r13d
.label_155:
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
	.align	32
	#Procedure 0x403cb0

	.globl find_backup_file_name
	.type find_backup_file_name, @function
find_backup_file_name:
	push	rax
	xor	ecx, ecx
	call	backupfile_internal
	test	rax, rax
	je	.label_181
	pop	rcx
	ret	
.label_181:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403cd0
	.globl get_version
	.type get_version, @function
get_version:

	mov	eax, 2
	test	rsi, rsi
	je	.label_182
	cmp	byte ptr [rsi], 0
	je	.label_182
	push	rax
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + backup_types]]
	add	rsp, 8
.label_182:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d10

	.globl xget_version
	.type xget_version, @function
xget_version:
	push	rax
	test	rsi, rsi
	je	.label_183
	cmp	byte ptr [rsi], 0
	je	.label_183
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	jmp	.label_185
.label_183:
	mov	edi, OFFSET FLAT:.str.1_2
	call	getenv
	mov	ecx, 2
	test	rax, rax
	je	.label_184
	cmp	byte ptr [rax], 0
	je	.label_184
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str_4
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	mov	rsi, rax
.label_185:
	call	__xargmatch_internal
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + backup_types]]
.label_184:
	mov	eax, ecx
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403d80

	.globl canonicalize_filename_mode
	.type canonicalize_filename_mode, @function
canonicalize_filename_mode:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xf8
	mov	r12d, esi
	mov	r13, rdi
	mov	ebp, r12d
	and	ebp, 3
	lea	eax, [r12 + 3]
	test	eax, ebp
	jne	.label_213
	test	r13, r13
	je	.label_213
	movzx	eax, byte ptr [r13]
	cmp	eax, 0x2f
	je	.label_228
	test	al, al
	jne	.label_231
	call	__errno_location
	mov	dword ptr [rax], 2
	jmp	.label_216
.label_213:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_216:
	xor	ebx, ebx
.label_189:
	mov	rax, rbx
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_228:
	mov	edi, 0x1000
	call	xmalloc
	mov	r14, rax
	mov	byte ptr [r14], 0x2f
	lea	rax, [r14 + 0x1000]
	lea	r15, [r14 + 1]
	jmp	.label_201
.label_231:
	call	xgetcwd
	mov	r14, rax
	xor	ebx, ebx
	test	r14, r14
	je	.label_189
	xor	esi, esi
	mov	rdi, r14
	call	__rawmemchr
	mov	r15, rax
	sub	r15, r14
	cmp	r15, 0xfff
	jg	.label_195
	mov	esi, 0x1000
	mov	rdi, r14
	call	xrealloc
	mov	r14, rax
	add	r15, r14
	add	rax, 0x1000
	jmp	.label_201
.label_195:
	mov	r15, rax
.label_201:
	mov	r8b, byte ptr [r13]
	mov	rdx, r13
	xor	r13d, r13d
	test	r8b, r8b
	je	.label_207
	mov	ecx, r12d
	and	ecx, 4
	mov	dword ptr [rsp + 0x34], ecx
	and	r12d, 7
	mov	qword ptr [rsp + 0x20], r12
	mov	rbx, r12
	cmp	ebp, 2
	mov	dword ptr [rsp + 0x5c], ebp
	setne	cl
	movzx	ecx, cl
	lea	ecx, [rcx + rcx*8 + 4]
	mov	dword ptr [rsp + 0x1c], ecx
	xor	r13d, r13d
	mov	r12, rdx
	mov	qword ptr [rsp + 0x28], rdx
	xor	edx, edx
	mov	dword ptr [rsp + 0x4c], ecx
	xor	ebp, ebp
	jmp	.label_190
.label_207:
	xor	ebp, ebp
	jmp	.label_224
.label_210:
	mov	qword ptr [rsp + 0x60], r14
	mov	dword ptr [rsp + 0x80], 0
	jmp	.label_215
.label_202:
	mov	qword ptr [rsp + 0x60], r14
	cmp	eax, 0x4000
	mov	rax, qword ptr [rsp + 0x40]
	jne	.label_215
	mov	dword ptr [rsp + 0x5c], ebp
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_236
.label_215:
	cmp	ebp, 2
	mov	rsi, qword ptr [rsp + 0x10]
	je	.label_232
	mov	cl, byte ptr [r13]
	mov	edx, 0x14
	test	cl, cl
	mov	r14, qword ptr [rsp + 0x60]
	jne	.label_240
	mov	dword ptr [rsp + 0x5c], ebp
	mov	rbp, rsi
	mov	r12, r13
	jmp	.label_230
.label_232:
	mov	dword ptr [rsp + 0x5c], ebp
	mov	rbp, rsi
.label_236:
	mov	r12, r13
	mov	r14, qword ptr [rsp + 0x60]
.label_230:
	mov	r8b, byte ptr [r12]
	test	r8b, r8b
	mov	rdx, rbp
	mov	rbp, qword ptr [rsp + 0x50]
	mov	r13, qword ptr [rsp + 0x38]
	jne	.label_190
	jmp	.label_224
.label_188:
	mov	rdi, rax
	mov	qword ptr [rsp + 0x28], rax
	call	strlen
	mov	rbx, rax
	mov	rdi, r13
	call	strlen
	mov	rdx, rax
	lea	rbp, [rbx + rdx + 1]
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	mov	rcx, qword ptr [rsp + 0x20]
	je	.label_203
	mov	qword ptr [rsp + 8], rdx
	mov	qword ptr [rsp + 0x60], rbx
	mov	rbx, rcx
	cmp	rbp, rax
	jbe	.label_211
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, rbp
	call	xrealloc
	mov	r12, rax
	jmp	.label_242
.label_203:
	mov	qword ptr [rsp + 0x60], rbx
	mov	rbx, rcx
	cmp	rbp, 0x1000
	mov	eax, 0x1000
	cmovbe	rbp, rax
	mov	rdi, rbp
	mov	r12, rdx
	call	xmalloc
	mov	rdx, r12
	mov	r12, rax
	jmp	.label_226
.label_211:
	mov	rbp, rax
	mov	r12, qword ptr [rsp + 0x38]
.label_242:
	mov	rdx, qword ptr [rsp + 8]
.label_226:
	mov	rdi, qword ptr [rsp + 0x60]
	add	rdi, r12
	inc	rdx
	mov	rsi, r13
	call	memmove
	mov	rdi, r12
	mov	r13, qword ptr [rsp + 0x28]
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x60]
	call	memcpy
	mov	rdi, r13
	mov	rcx, r14
	lea	r14, [rcx + 1]
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x2f
	jne	.label_241
	mov	byte ptr [rcx], 0x2f
	mov	r13, rcx
	jmp	.label_187
.label_241:
	mov	r13, rcx
	cmp	r15, r14
	jbe	.label_248
	dec	r15
.label_208:
	mov	r14, r15
	cmp	r14, r13
	jbe	.label_187
	lea	r15, [r14 - 1]
	movzx	eax, byte ptr [r14 - 1]
	cmp	eax, 0x2f
	jne	.label_208
	jmp	.label_187
.label_248:
	mov	r14, r15
.label_187:
	call	free
	mov	qword ptr [rsp + 0x38], r12
	mov	r15, r14
	mov	qword ptr [rsp + 0x28], r12
	mov	r14, r13
	mov	rax, qword ptr [rsp + 0x40]
	jmp	.label_230
.label_190:
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 0x38], r13
	mov	qword ptr [rsp + 0x50], rbp
	mov	r13, r12
.label_199:
	mov	qword ptr [rsp + 0x60], r14
	lea	rcx, [r14 + 1]
	mov	r12, r15
.label_197:
	mov	r15, r13
	jmp	.label_212
	nop	word ptr cs:[rax + rax]
.label_220:
	mov	r8b, byte ptr [rdx]
	mov	r15, rdx
.label_212:
	lea	rdx, [r15 + 1]
	movzx	esi, r8b
	cmp	esi, 0x2f
	mov	r13, r15
	jne	.label_217
	jmp	.label_220
	nop	dword ptr [rax + rax]
.label_223:
	mov	r8b, byte ptr [r13 + 1]
	inc	r13
.label_217:
	test	r8b, r8b
	je	.label_221
	movzx	edi, r8b
	cmp	edi, 0x2f
	jne	.label_223
.label_221:
	mov	r14, r13
	sub	r14, r15
	je	.label_227
	cmp	r14, 2
	je	.label_229
	cmp	r14, 1
	jne	.label_206
	movzx	edx, byte ptr [r15]
	cmp	edx, 0x2e
	mov	r14d, 1
	je	.label_235
	jmp	.label_206
	nop	
.label_229:
	cmp	esi, 0x2e
	mov	r14d, 2
	jne	.label_206
	movzx	edx, byte ptr [rdx]
	cmp	edx, 0x2e
	mov	r14d, 2
	jne	.label_206
	cmp	r12, rcx
	ja	.label_244
.label_235:
	mov	r8b, byte ptr [r13]
	test	r8b, r8b
	mov	r15, r13
	jne	.label_212
	jmp	.label_227
.label_244:
	dec	r12
	mov	rdx, r12
	mov	r14, qword ptr [rsp + 0x60]
	nop	
.label_193:
	mov	r12, rdx
	cmp	r12, r14
	jbe	.label_192
	lea	rdx, [r12 - 1]
	movzx	esi, byte ptr [r12 - 1]
	cmp	esi, 0x2f
	jne	.label_193
.label_192:
	test	r8b, r8b
	jne	.label_197
	jmp	.label_198
.label_206:
	movzx	ecx, byte ptr [r12 - 1]
	cmp	ecx, 0x2f
	je	.label_200
	mov	byte ptr [r12], 0x2f
	inc	r12
.label_200:
	lea	rcx, [r12 + r14]
	cmp	rcx, rax
	jae	.label_204
	mov	qword ptr [rsp + 0x40], rax
	jmp	.label_209
.label_204:
	mov	rdi, qword ptr [rsp + 0x60]
	sub	r12, rdi
	sub	rax, rdi
	lea	rbp, [r14 + 1]
	cmp	r14, 0xfff
	mov	ecx, 0x1000
	cmovle	rbp, rcx
	add	rbp, rax
	mov	rsi, rbp
	call	xrealloc
	mov	qword ptr [rsp + 0x60], rax
	add	rbp, rax
	add	r12, rax
	mov	qword ptr [rsp + 0x40], rbp
.label_209:
	lea	rbp, [rsp + 0x68]
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcpy
	lea	r15, [r12 + r14]
	mov	byte ptr [r12 + r14], 0
	cmp	ebx, 6
	je	.label_243
	cmp	dword ptr [rsp + 0x34], 0
	jne	.label_233
	mov	edi, 1
	mov	r14, qword ptr [rsp + 0x60]
	mov	rsi, r14
	mov	rdx, rbp
	call	__lxstat
	jmp	.label_238
.label_233:
	mov	edi, 1
	mov	r14, qword ptr [rsp + 0x60]
	mov	rsi, r14
	mov	rdx, rbp
	call	__xstat
.label_238:
	mov	ebp, dword ptr [rsp + 0x5c]
	test	eax, eax
	je	.label_245
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0x4c], eax
	cmp	ebp, 1
	mov	rax, r13
	jne	.label_247
	nop	word ptr [rax + rax]
.label_246:
	movzx	ecx, byte ptr [rax]
	inc	rax
	cmp	ecx, 0x2f
	je	.label_246
	test	cl, cl
	setne	al
	cmp	dword ptr [rsp + 0x4c], 2
	movzx	eax, al
	lea	ecx, [rax + rax*8 + 4]
	mov	eax, 0xd
	cmovne	ecx, eax
	mov	rax, qword ptr [rsp + 0x40]
	jmp	.label_194
.label_245:
	mov	eax, dword ptr [rsp + 0x80]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0xa000
	jne	.label_202
	mov	rbp, qword ptr [rsp + 0x50]
	test	rbp, rbp
	jne	.label_205
	mov	edi, 7
	xor	esi, esi
	mov	edx, OFFSET FLAT:triple_hash
	mov	ecx, OFFSET FLAT:triple_compare_ino_str
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	mov	rbp, rax
	test	rbp, rbp
	je	.label_218
.label_205:
	mov	rdi, rbp
	mov	r12, qword ptr [rsp + 0x28]
	mov	rsi, r12
	lea	rbx, [rsp + 0x68]
	mov	rdx, rbx
	call	seen_file
	test	al, al
	je	.label_225
	mov	qword ptr [rsp + 0x50], rbp
	mov	ebp, dword ptr [rsp + 0x5c]
	cmp	ebp, 2
	mov	eax, dword ptr [rsp + 0x4c]
	mov	ecx, 0x28
	cmovne	eax, ecx
	mov	dword ptr [rsp + 0x4c], eax
	mov	ecx, dword ptr [rsp + 0x1c]
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbx, qword ptr [rsp + 0x20]
.label_194:
	cmp	ecx, 4
	jne	.label_237
	mov	dword ptr [rsp + 0x5c], ebp
	jmp	.label_239
.label_225:
	mov	rdi, rbp
	mov	qword ptr [rsp + 0x50], rbp
	mov	rsi, r12
	mov	rdx, rbx
	call	record_file
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rdi, r14
	call	areadlink_with_size
	test	rax, rax
	jne	.label_188
	call	__errno_location
	mov	ecx, dword ptr [rsp + 0x5c]
	cmp	ecx, 2
	mov	rcx, qword ptr [rsp + 0x20]
	jne	.label_191
	cmp	dword ptr [rax], 0xc
	je	.label_191
	mov	rbx, rcx
	mov	rax, qword ptr [rsp + 0x40]
.label_239:
	mov	r8b, byte ptr [r13]
	test	r8b, r8b
	jne	.label_199
	jmp	.label_196
.label_243:
	mov	dword ptr [rsp + 0x80], 0
	mov	ebp, dword ptr [rsp + 0x5c]
	mov	rax, qword ptr [rsp + 0x40]
	jmp	.label_215
.label_247:
	test	ebp, ebp
	mov	rax, qword ptr [rsp + 0x40]
	jne	.label_210
	mov	edx, dword ptr [rsp + 0x4c]
.label_240:
	mov	dword ptr [rsp + 0x4c], edx
	jmp	.label_214
.label_227:
	mov	r15, r12
	mov	r14, qword ptr [rsp + 0x60]
.label_196:
	mov	rbp, qword ptr [rsp + 0x50]
	mov	r13, qword ptr [rsp + 0x38]
.label_224:
	lea	rcx, [r14 + 1]
	cmp	r15, rcx
	jbe	.label_219
	movzx	ecx, byte ptr [r15 - 1]
	cmp	ecx, 0x2f
	jne	.label_219
	dec	r15
.label_219:
	mov	byte ptr [r15], 0
	lea	rcx, [r15 + 1]
	cmp	rax, rcx
	je	.label_222
	mov	esi, 1
	sub	rsi, r14
	add	rsi, r15
	mov	rdi, r14
	call	xrealloc
	mov	rbx, rax
	jmp	.label_234
.label_222:
	mov	rbx, r14
.label_234:
	mov	rdi, r13
	call	free
	test	rbp, rbp
	je	.label_189
	mov	rdi, rbp
	call	hash_free
	jmp	.label_189
.label_237:
	cmp	ecx, 0xd
	je	.label_214
	jmp	.label_189
.label_191:
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0x4c], eax
.label_214:
	mov	rdi, qword ptr [rsp + 0x38]
	call	free
	mov	rdi, r14
	call	free
	mov	rdi, qword ptr [rsp + 0x50]
	test	rdi, rdi
	je	.label_186
	call	hash_free
.label_186:
	call	__errno_location
	mov	ecx, dword ptr [rsp + 0x4c]
	mov	dword ptr [rax], ecx
	jmp	.label_216
.label_198:
	mov	r15, r12
	jmp	.label_196
.label_218:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404430
	.globl close_stdin_set_file_name
	.type close_stdin_set_file_name, @function
close_stdin_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404440

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
	je	.label_249
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
	test	eax, eax
	jne	.label_249
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fflush
	test	eax, eax
	setne	bpl
.label_249:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	close_stream
	test	bpl, bpl
	jne	.label_250
	test	eax, eax
	jne	.label_250
	pop	rbx
	pop	r14
	pop	rbp
	jmp	close_stdout
.label_250:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_5
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_251
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	jmp	.label_252
.label_251:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_3
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
.label_252:
	call	close_stdout
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404510
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name_0]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404520
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404530

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_256
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_255
	cmp	dword ptr [rbp], 0x20
	jne	.label_255
.label_256:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_254
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_255:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_6
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name_0]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_253
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_254:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_253:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_3
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x4045f0

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rax
	call	mdir_name
	test	rax, rax
	je	.label_257
	pop	rcx
	ret	
.label_257:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404610
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
.label_258:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_259
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_258
.label_259:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404650

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
.label_262:
	mov	rbx, rax
	cmp	r15, rbx
	jae	.label_260
	lea	rax, [rbx - 1]
	movzx	ecx, byte ptr [r14 + rbx - 1]
	cmp	ecx, 0x2f
	je	.label_262
.label_260:
	test	rbx, rbx
	sete	al
	movzx	eax, al
	lea	rdi, [rbx + rax + 1]
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_263
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	test	rbx, rbx
	jne	.label_261
	mov	byte ptr [r15], 0x2e
	mov	ebx, 1
.label_261:
	mov	byte ptr [r15 + rbx], 0
	mov	rax, r15
.label_263:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4046d0

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_264:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	edx, 0x2f
	je	.label_264
	xor	r8d, r8d
	mov	rax, rdi
	jmp	.label_268
	nop	word ptr cs:[rax + rax]
.label_265:
	mov	dl, byte ptr [rax + 1]
	inc	rax
	mov	r8b, cl
.label_268:
	mov	cl, 1
	movzx	esi, dl
	cmp	esi, 0x2f
	je	.label_265
	test	dl, dl
	je	.label_266
	mov	cl, r8b
	and	cl, 1
	je	.label_267
	xor	r8d, r8d
.label_267:
	test	cl, cl
	cmovne	rdi, rax
	mov	cl, r8b
	jmp	.label_265
.label_266:
	mov	rax, rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404740

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_270:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_269
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_270
.label_269:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404770

	.globl strip_trailing_slashes
	.type strip_trailing_slashes, @function
strip_trailing_slashes:
	push	rbx
	mov	rbx, rdi
	call	last_component
	cmp	byte ptr [rax], 0
	je	.label_271
	mov	rbx, rax
.label_271:
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
	.align	32
	#Procedure 0x4047a0

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
	je	.label_272
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
	je	.label_273
	cmp	rax, rbx
	je	.label_272
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	triple_free
.label_272:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_273:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404820

	.globl seen_file
	.type seen_file, @function
seen_file:
	test	rdi, rdi
	je	.label_274
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
.label_274:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x404860

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rax
	call	mfile_name_concat
	test	rax, rax
	je	.label_275
	pop	rcx
	ret	
.label_275:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404880

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
	je	.label_283
	movzx	ecx, byte ptr [rbx + r13 - 1]
	cmp	ecx, 0x2f
	jne	.label_276
	mov	qword ptr [rsp + 8], r14
	xor	r12d, r12d
	jmp	.label_279
.label_283:
	movzx	ecx, byte ptr [r14]
	mov	r12b, 0x2e
	cmp	ecx, 0x2f
	je	.label_280
	jmp	.label_277
.label_276:
	movzx	ecx, byte ptr [r14]
	cmp	ecx, 0x2f
	jne	.label_278
.label_277:
	xor	r12d, r12d
	jmp	.label_280
.label_278:
	mov	r12b, 0x2f
.label_280:
	mov	qword ptr [rsp + 8], r14
.label_279:
	test	r12b, r12b
	setne	cl
	movzx	ebp, cl
	lea	rcx, [r15 + rbx]
	lea	rdi, [rbp + rcx + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_282
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	add	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_281
	mov	qword ptr [rax], rbp
.label_281:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r15
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	mov	rax, r14
.label_282:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404970
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404980
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404990
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049a0
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdx
	jae	.label_284
	mov	rdi, rcx
	not	rdi
	add	rdi, rdx
	mov	rsi, rdi
	shr	rsi, 4
	xor	eax, eax
	bt	rdi, 4
	jb	.label_289
	xor	eax, eax
	cmp	qword ptr [rcx], 0
	je	.label_287
	mov	rdi, rcx
	nop	word ptr cs:[rax + rax]
.label_292:
	mov	rdi, qword ptr [rdi + 8]
	inc	rax
	test	rdi, rdi
	jne	.label_292
.label_287:
	add	rcx, 0x10
.label_289:
	test	rsi, rsi
	je	.label_284
	nop	word ptr cs:[rax + rax]
.label_288:
	cmp	qword ptr [rcx], 0
	mov	esi, 0
	mov	rdi, rcx
	je	.label_285
	nop	
.label_290:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_290
	cmp	rsi, rax
	cmova	rax, rsi
.label_285:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_286
	lea	rdi, [rcx + 0x10]
	xor	esi, esi
.label_291:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_291
	cmp	rsi, rax
	cmova	rax, rsi
.label_286:
	add	rcx, 0x20
	cmp	rcx, rdx
	jb	.label_288
.label_284:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404a50
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rcx, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	edx, edx
	cmp	rcx, r9
	mov	esi, 0
	jae	.label_300
	mov	rax, rcx
	not	rax
	add	rax, r9
	mov	r8, rax
	shr	r8, 4
	xor	edx, edx
	bt	rax, 4
	jb	.label_301
	xor	edx, edx
	cmp	qword ptr [rcx], 0
	je	.label_293
	mov	esi, 1
	mov	rax, rcx
.label_296:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_296
	jmp	.label_297
.label_301:
	xor	esi, esi
	jmp	.label_298
.label_293:
	xor	esi, esi
.label_297:
	add	rcx, 0x10
.label_298:
	test	r8, r8
	je	.label_300
	nop	dword ptr [rax]
.label_302:
	cmp	qword ptr [rcx], 0
	mov	rax, rcx
	je	.label_303
	nop	dword ptr [rax]
.label_294:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_294
	inc	rsi
.label_303:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_295
	lea	rax, [rcx + 0x10]
	nop	word ptr [rax + rax]
.label_299:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_299
	inc	rsi
.label_295:
	add	rcx, 0x20
	cmp	rcx, r9
	jb	.label_302
.label_300:
	cmp	rsi, qword ptr [rdi + 0x18]
	jne	.label_304
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 0x20]
	je	.label_305
.label_304:
	xor	eax, eax
.label_305:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404b10
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
	jae	.label_306
	mov	rdi, rax
	not	rdi
	add	rdi, rdx
	mov	rsi, rdi
	shr	rsi, 4
	xor	ebx, ebx
	bt	rdi, 4
	jb	.label_316
	xor	ebx, ebx
	cmp	qword ptr [rax], 0
	je	.label_310
	mov	rdi, rax
	nop	dword ptr [rax]
.label_315:
	mov	rdi, qword ptr [rdi + 8]
	inc	rbx
	test	rdi, rdi
	jne	.label_315
.label_310:
	add	rax, 0x10
.label_316:
	test	rsi, rsi
	je	.label_306
	nop	word ptr cs:[rax + rax]
.label_311:
	cmp	qword ptr [rax], 0
	mov	esi, 0
	mov	rdi, rax
	je	.label_307
	nop	
.label_317:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_317
	cmp	rsi, rbx
	cmova	rbx, rsi
.label_307:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_308
	lea	rdi, [rax + 0x10]
	xor	esi, esi
.label_309:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_309
	cmp	rsi, rbx
	cmova	rbx, rsi
.label_308:
	add	rax, 0x20
	cmp	rax, rdx
	jb	.label_311
.label_306:
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str_7
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.1_4
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_312]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_313]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_314]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.2_1
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
	.align	32
	#Procedure 0x404c80

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
	jae	.label_322
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_319
	add	rbx, rax
	je	.label_319
	cmp	rsi, r12
	je	.label_321
	xor	r15d, r15d
	nop	
.label_320:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_318
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_319
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_320
.label_321:
	mov	r15, r12
	jmp	.label_319
.label_318:
	mov	r15, qword ptr [rbx]
.label_319:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_322:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d00
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_323
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_326
	nop	word ptr cs:[rax + rax]
.label_325:
	add	rcx, 0x10
.label_326:
	cmp	rcx, rdx
	jae	.label_324
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_325
.label_323:
	ret	
.label_324:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d40
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
	jae	.label_330
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_331:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_329
	test	rdx, rdx
	jne	.label_331
	jmp	.label_327
.label_329:
	test	rdx, rdx
	je	.label_327
	mov	rax, qword ptr [rdx]
	jmp	.label_328
.label_327:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rax + rcx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_332:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_328
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_332
.label_328:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_330:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404dd0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	jmp	.label_333
	nop	dword ptr [rax + rax]
.label_336:
	add	r9, 0x10
.label_333:
	cmp	r9, r8
	jae	.label_334
	cmp	qword ptr [r9], 0
	je	.label_336
	test	r9, r9
	mov	r10, r9
	je	.label_336
	nop	word ptr [rax + rax]
.label_335:
	cmp	rax, rdx
	jae	.label_334
	mov	rcx, qword ptr [r10]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r10, qword ptr [r10 + 8]
	test	r10, r10
	jne	.label_335
	mov	r8, qword ptr [rdi + 8]
	jmp	.label_336
.label_334:
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404e20
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
	jmp	.label_337
	nop	word ptr cs:[rax + rax]
.label_338:
	add	r13, 0x10
.label_337:
	cmp	r13, rax
	jae	.label_339
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_338
	test	r13, r13
	je	.label_338
	mov	rsi, r14
	call	r15
	test	al, al
	mov	rbp, r13
	je	.label_339
	nop	word ptr cs:[rax + rax]
.label_340:
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_341
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_340
	jmp	.label_339
	nop	dword ptr [rax]
.label_341:
	mov	rax, qword ptr [r12 + 8]
	jmp	.label_338
.label_339:
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
	.align	32
	#Procedure 0x404ec0
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_342
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_343:
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
	jne	.label_343
.label_342:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f00
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_344]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f20

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
	je	.label_350
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_356
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_359]]
	jbe	.label_347
	movss	xmm1,  dword ptr [dword ptr [rip + label_348]]
	ucomiss	xmm1, xmm0
	jbe	.label_347
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_354]]
	jbe	.label_347
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_347
	addss	xmm1,  dword ptr [dword ptr [rip + label_359]]
	ucomiss	xmm0, xmm1
	jbe	.label_347
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_349]]
	ucomiss	xmm2, xmm0
	jb	.label_347
	ucomiss	xmm0, xmm1
	jbe	.label_347
.label_356:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_351
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_358
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_345
.label_358:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_345:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_352]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_353]]
	jae	.label_347
.label_351:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_355
	nop	
.label_360:
	add	rbx, 2
.label_355:
	cmp	rbx, -1
	je	.label_347
	cmp	rbx, 0xa
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	jb	.label_346
	nop	word ptr cs:[rax + rax]
.label_357:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_346
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_357
.label_346:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_360
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_347
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_347
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_347
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
	jmp	.label_350
.label_347:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_350:
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
	.align	32
	#Procedure 0x405140

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
	.align	32
	#Procedure 0x405150

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405160
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_361
	nop	word ptr cs:[rax + rax]
.label_364:
	add	r14, 0x10
.label_361:
	cmp	r14, rax
	jae	.label_363
	cmp	qword ptr [r14], 0
	je	.label_364
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_365
	nop	word ptr cs:[rax + rax]
.label_367:
	test	cl, 1
	je	.label_366
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_366:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_367
.label_365:
	test	cl, cl
	je	.label_362
	mov	rdi, qword ptr [r14]
	call	rax
.label_362:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_364
.label_363:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405210

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_373
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_373
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_375
	nop	
.label_368:
	add	r15, 0x10
.label_375:
	cmp	r15, rax
	jae	.label_373
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_368
	test	r15, r15
	je	.label_368
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_370
.label_372:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_370:
	test	rbx, rbx
	jne	.label_372
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_368
.label_373:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_374
	nop	
.label_369:
	add	r15, 0x10
.label_374:
	cmp	r15, rax
	jae	.label_377
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_369
	nop	word ptr cs:[rax + rax]
.label_371:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_371
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_369
.label_377:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_376
.label_378:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_378
.label_376:
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, r14
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052e0

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
	jne	.label_390
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_394
	cvtsi2ss	xmm0, rsi
	jmp	.label_381
.label_394:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_381:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_352]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_353]]
	jae	.label_383
.label_390:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_386
	nop	dword ptr [rax + rax]
.label_397:
	add	rbx, 2
.label_386:
	cmp	rbx, -1
	je	.label_383
	cmp	rbx, 0xa
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	jb	.label_379
	nop	word ptr cs:[rax + rax]
.label_393:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_379
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_393
.label_379:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_397
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_383
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_387
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_383
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
	je	.label_384
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_387
.label_384:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_395
	nop	
.label_388:
	add	r12, 0x10
.label_395:
	cmp	r12, r15
	jae	.label_385
	cmp	qword ptr [r12], 0
	je	.label_388
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_391
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_389:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_382
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_396
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_392
	nop	word ptr [rax + rax]
.label_396:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_392:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_389
.label_391:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_388
.label_385:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_380
	mov	rdi, qword ptr [rsp]
	call	free
.label_383:
	xor	ebp, ebp
.label_387:
	mov	al, bpl
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_382:
	call	abort
.label_380:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405570

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
	jae	.label_401
	nop	word ptr cs:[rax + rax]
.label_411:
	mov	r13, qword ptr [r14]
	test	r13, r13
	je	.label_405
	mov	r15, qword ptr [r14 + 8]
	test	r15, r15
	je	.label_408
	mov	rsi, qword ptr [rbp + 0x10]
	nop	dword ptr [rax]
.label_409:
	mov	rbx, qword ptr [r15]
	mov	rdi, rbx
	call	qword ptr [rbp + 0x30]
	mov	rsi, qword ptr [rbp + 0x10]
	cmp	rax, rsi
	jae	.label_400
	mov	rdx, qword ptr [rbp]
	mov	rcx, qword ptr [r15 + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_403
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [r15 + 8], rdi
	mov	qword ptr [rdx + rax + 8], r15
	jmp	.label_407
	nop	dword ptr [rax]
.label_403:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [rbp + 0x18]
	mov	qword ptr [r15], 0
	mov	rax, qword ptr [rbp + 0x48]
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [rbp + 0x48], r15
.label_407:
	test	rcx, rcx
	mov	r15, rcx
	jne	.label_409
	mov	r13, qword ptr [r14]
.label_408:
	mov	qword ptr [r14 + 8], 0
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	jne	.label_405
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, r13
	call	qword ptr [rbp + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [rbp + 0x10]
	jae	.label_398
	mov	r15, qword ptr [rbp]
	shl	rbx, 4
	cmp	qword ptr [r15 + rbx], 0
	je	.label_402
	mov	rax, qword ptr [rbp + 0x48]
	test	rax, rax
	je	.label_404
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp + 0x48], rcx
	jmp	.label_406
.label_402:
	add	r15, rbx
	mov	qword ptr [r15], r13
	inc	qword ptr [rbp + 0x18]
	jmp	.label_410
.label_404:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_399
.label_406:
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [r15 + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + rbx + 8], rax
.label_410:
	mov	qword ptr [r14], 0
	dec	qword ptr [r12 + 0x18]
.label_405:
	add	r14, 0x10
	cmp	r14, qword ptr [r12 + 8]
	jb	.label_411
	mov	al, 1
.label_401:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_399:
	xor	eax, eax
	jmp	.label_401
.label_400:
	call	abort
.label_398:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4056e0

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
	je	.label_416
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_416
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_414
	cmp	rsi, r14
	je	.label_424
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_428
	mov	rax, qword ptr [r12]
	jmp	.label_415
.label_424:
	mov	rax, r14
	jmp	.label_430
.label_428:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_414
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr cs:[rax + rax]
.label_441:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_422
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_439
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_441
	jmp	.label_414
.label_422:
	mov	rax, r14
	jmp	.label_415
.label_439:
	mov	rax, qword ptr [rbp]
.label_415:
	test	rax, rax
	je	.label_414
.label_430:
	xor	ebp, ebp
	test	r15, r15
	je	.label_421
	mov	qword ptr [r15], rax
	jmp	.label_421
.label_414:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_423
	cvtsi2ss	xmm1, rax
	jmp	.label_429
.label_423:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_429:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_432
	cvtsi2ss	xmm0, rcx
	jmp	.label_435
.label_432:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_435:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_413
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_427
	ucomiss	xmm2,  dword ptr [dword ptr [rip + label_359]]
	jbe	.label_418
	movss	xmm3,  dword ptr [dword ptr [rip + label_348]]
	ucomiss	xmm3, xmm2
	jbe	.label_418
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_354]]
	jbe	.label_418
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_418
	addss	xmm3,  dword ptr [dword ptr [rip + label_359]]
	ucomiss	xmm2, xmm3
	jbe	.label_418
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5,  dword ptr [dword ptr [rip + label_349]]
	ucomiss	xmm5, xmm4
	jb	.label_418
	ucomiss	xmm4, xmm3
	ja	.label_434
.label_418:
	mov	qword ptr [word ptr [r13 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2,  dword ptr [dword ptr [rip + label_436]]
	jmp	.label_434
.label_427:
	mov	eax, OFFSET FLAT:default_tuning
.label_434:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_413
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_438
	mulss	xmm0, xmm2
.label_438:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_353]]
	jae	.label_421
	movss	xmm1,  dword ptr [dword ptr [rip + label_352]]
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
	je	.label_421
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_416
	mov	r15, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [r15 + rbp]
	mov	rsi, qword ptr [r15 + rbp]
	test	rsi, rsi
	je	.label_413
	cmp	rsi, r14
	mov	rax, r14
	je	.label_426
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_425
	mov	rax, qword ptr [r12]
	jmp	.label_426
.label_425:
	mov	rax, qword ptr [r15 + rbp + 8]
	test	rax, rax
	je	.label_413
	lea	rbp, [r15 + rbp + 8]
.label_433:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_437
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_431
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_433
	jmp	.label_413
.label_437:
	mov	rax, r14
	jmp	.label_426
.label_431:
	mov	rax, qword ptr [rbp]
.label_426:
	test	rax, rax
	jne	.label_440
.label_413:
	cmp	qword ptr [r12], 0
	je	.label_442
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_412
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_417
.label_442:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0,  xmmword ptr [word ptr [rip + label_419]]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_420
.label_412:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_421
.label_417:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_420:
	mov	ebp, 1
.label_421:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_416:
	call	abort
.label_440:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a00

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
	je	.label_443
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_443:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405a30
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
	jae	.label_457
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_453
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_463
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_444
	mov	r14, qword ptr [r13]
.label_463:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_449
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_450
.label_444:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_453
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_461:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_458
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_460
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_461
	jmp	.label_453
.label_449:
	mov	qword ptr [r13], 0
	jmp	.label_450
.label_458:
	mov	rcx, rax
	jmp	.label_446
.label_460:
	mov	r14, qword ptr [rcx]
.label_446:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_450:
	xor	r12d, r12d
	test	r14, r14
	je	.label_453
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_451
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_452
	cvtsi2ss	xmm1, rax
	jmp	.label_459
.label_452:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_459:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_462
	cvtsi2ss	xmm0, rcx
	jmp	.label_445
.label_462:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_445:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_451
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_464
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_359]]
	jbe	.label_455
	movss	xmm4,  dword ptr [dword ptr [rip + label_348]]
	ucomiss	xmm4, xmm3
	jbe	.label_455
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_455
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4,  dword ptr [dword ptr [rip + label_354]]
	jbe	.label_455
	movss	xmm4,  dword ptr [dword ptr [rip + label_359]]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_455
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5,  dword ptr [dword ptr [rip + label_349]]
	ucomiss	xmm5, xmm3
	jb	.label_455
	ucomiss	xmm3, xmm4
	ja	.label_447
.label_455:
	mov	qword ptr [word ptr [r15 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_447
.label_464:
	mov	eax, OFFSET FLAT:default_tuning
.label_447:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_451
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_454
	mulss	xmm0, dword ptr [rax + 8]
.label_454:
	movss	xmm1,  dword ptr [dword ptr [rip + label_352]]
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
	jne	.label_451
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_456
	nop	
.label_448:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_448
.label_456:
	mov	qword ptr [r15 + 0x48], 0
.label_451:
	mov	r12, r14
.label_453:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_457:
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405cc0

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
	.align	32
	#Procedure 0x405cf0
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
	.align	32
	#Procedure 0x405d00

	.globl triple_compare
	.type triple_compare, @function
triple_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_465
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_466
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	same_name
	add	rsp, 8
	ret	
.label_465:
	xor	eax, eax
	ret	
.label_466:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d30

	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_467
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_468
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	test	eax, eax
	sete	al
	add	rsp, 8
	ret	
.label_467:
	xor	eax, eax
	ret	
.label_468:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x405d60

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
	.align	32
	#Procedure 0x405d80

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xc8
	test	al, al
	je	.label_469
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_469:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_471
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x18
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_470
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_472
.label_470:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_472:
	mov	ecx, dword ptr [rax]
.label_471:
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
	#Procedure 0x405e60

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
	js	.label_474
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_473
	mov	dword ptr [r14], ebp
	jmp	.label_474
.label_473:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_474:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405eb0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_476
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_477
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_477
	mov	esi, OFFSET FLAT:.str.2_2
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_475
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_475:
	mov	rbx, r14
.label_477:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_476:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_8
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405f60
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
	#Procedure 0x405fa0
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
	#Procedure 0x405fb0
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
	#Procedure 0x405fc0
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
	#Procedure 0x406000
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
	#Procedure 0x406020
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_478
	test	rdx, rdx
	je	.label_478
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_478:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406050
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
	.align	32
	#Procedure 0x4060d0

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
.label_518:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_580
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_585]]
.label_903:
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
.label_904:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_485
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_485
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_502:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_579
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_579:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_502
.label_485:
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
	jmp	.label_514
.label_896:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_514
.label_899:
	mov	al, 1
.label_897:
	mov	r12b, 1
.label_900:
	test	r12b, 1
	mov	cl, 1
	je	.label_555
	mov	cl, al
.label_555:
	mov	al, cl
.label_898:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_540
	test	r10, r10
	je	.label_543
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_544
.label_540:
	xor	ecx, ecx
	jmp	.label_544
.label_901:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_552
	test	r10, r10
	je	.label_558
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_561
.label_902:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_514
.label_543:
	mov	ecx, 1
	nop	dword ptr [rax]
.label_544:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_514
.label_552:
	xor	eax, eax
	jmp	.label_561
.label_558:
	mov	eax, 1
.label_561:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_514:
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
	jmp	.label_507
.label_515:
	inc	rdi
.label_507:
	cmp	rbp, -1
	je	.label_508
	cmp	rdi, rbp
	jne	.label_511
	jmp	.label_512
	nop	word ptr cs:[rax + rax]
.label_508:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_574
.label_511:
	test	r12b, r12b
	je	.label_521
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_523
	cmp	rbp, -1
	jne	.label_523
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
.label_523:
	cmp	rbx, rbp
	jbe	.label_550
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_491
	nop	word ptr [rax + rax]
.label_521:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_491
.label_550:
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
	jne	.label_575
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_491
	jmp	.label_494
.label_575:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_491:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_539
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_598]]
.label_945:
	test	rdi, rdi
	jne	.label_490
	jmp	.label_484
.label_949:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_479
	test	rdi, rdi
	jne	.label_483
	cmp	rbp, 1
	je	.label_484
	xor	r13d, r13d
	jmp	.label_482
.label_938:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_489
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_494
	cmp	r9d, 2
	jne	.label_583
	mov	al, r14b
	and	al, 1
	jne	.label_498
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_501
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_501:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_532
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_532:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_576
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_576:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_526
.label_939:
	mov	bl, 0x62
	jmp	.label_533
.label_940:
	mov	cl, 0x74
	jmp	.label_535
.label_941:
	mov	bl, 0x76
	jmp	.label_533
.label_942:
	mov	bl, 0x66
	jmp	.label_533
.label_943:
	mov	cl, 0x72
	jmp	.label_535
.label_946:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_541
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_546
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
	jae	.label_493
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_493:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_571
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_571:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_520
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_520:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_541:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_482
.label_947:
	cmp	r9d, 5
	je	.label_594
	cmp	r9d, 2
	jne	.label_490
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_490
	jmp	.label_590
.label_948:
	cmp	r9d, 2
	jne	.label_592
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_595
	jmp	.label_599
.label_539:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_601
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
.label_480:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_492
	test	cl, cl
	je	.label_492
	xor	eax, eax
	jmp	.label_482
.label_479:
	test	rdi, rdi
	jne	.label_505
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_505
.label_484:
	mov	dl, 1
.label_944:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_510
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_482
.label_489:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_515
	jmp	.label_490
.label_592:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_535
.label_595:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_524
.label_535:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_528
.label_533:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_482
	jmp	.label_536
.label_601:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_537
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_537:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_603:
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
	je	.label_570
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_573
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_578
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_563
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_591:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_588
	bt	rsi, rdx
	jb	.label_589
.label_588:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_591
.label_563:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_559
	xor	r13d, r13d
.label_559:
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
	je	.label_603
	jmp	.label_480
.label_505:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_482
.label_594:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_490
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_490
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_490
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_499
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_503
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_527
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_569
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_569:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_519
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_519:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_530
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_530:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_525
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_525:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_482
.label_490:
	xor	eax, eax
	xor	r13d, r13d
.label_482:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_554
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_557
	jmp	.label_562
	nop	word ptr [rax + rax]
.label_554:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_562
.label_557:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_566
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_572
	nop	word ptr cs:[rax + rax]
.label_562:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_572:
	mov	bl, r15b
	je	.label_524
	jmp	.label_536
.label_566:
	mov	bl, r15b
.label_536:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_494
	cmp	r9d, 2
	jne	.label_584
	mov	al, r14b
	and	al, 1
	jne	.label_584
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_593
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_593:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_600
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_600:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_597
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_597:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_584:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_481
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_481:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_586
.label_483:
	xor	r13d, r13d
	jmp	.label_482
.label_492:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_495
	nop	word ptr [rax + rax]
.label_486:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_495:
	test	cl, cl
	je	.label_504
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_506
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_509
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_509:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_506
	nop	word ptr [rax + rax]
.label_504:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_494
	cmp	r9d, 2
	jne	.label_517
	mov	al, r14b
	and	al, 1
	jne	.label_517
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_534
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_534:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_577
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_577:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_551
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_551:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_517:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_565
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_565:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_568
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_568:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_516
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_516:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_506:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_524
	test	r14b, 1
	je	.label_547
	mov	bl, al
	and	bl, 1
	jne	.label_547
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_531
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_531:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_602
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_602:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_547:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_486
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_486
	nop	dword ptr [rax]
.label_524:
	test	r14b, 1
	je	.label_500
	and	al, 1
	jne	.label_500
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_487
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_487:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_581
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_581:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_500:
	mov	bl, r15b
.label_586:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_522
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_522:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_515
.label_583:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_526
.label_498:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_526:
	cmp	rcx, r10
	jae	.label_542
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_542:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_549
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_556
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_560
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_564
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_564:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_567
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_567:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_482
.label_549:
	xor	r13d, r13d
	jmp	.label_482
.label_556:
	xor	r13d, r13d
	jmp	.label_482
.label_560:
	xor	r13d, r13d
	jmp	.label_482
.label_573:
	xor	r13d, r13d
.label_570:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_480
.label_578:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_587
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_545:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_582
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_545
	xor	r13d, r13d
	jmp	.label_480
.label_587:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_480
.label_582:
	xor	r13d, r13d
	jmp	.label_480
.label_499:
	xor	r13d, r13d
	jmp	.label_482
.label_503:
	xor	r13d, r13d
	jmp	.label_482
	nop	dword ptr [rax]
.label_512:
	mov	r13, rdi
.label_574:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_488
	or	al, dl
	je	.label_496
.label_488:
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
	je	.label_497
	or	al, dl
	jne	.label_497
	test	r8b, 1
	jne	.label_513
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_497
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_518
.label_497:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_529
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_529
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_529
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_548:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_538
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_538:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_548
.label_529:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_553
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_553
.label_510:
	mov	r9d, 2
	jmp	.label_494
.label_589:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_494
.label_496:
	mov	rbp, r13
	jmp	.label_494
.label_528:
	mov	r9d, 2
.label_494:
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
.label_596:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_553:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_513:
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
	jmp	.label_596
.label_546:
	mov	r9d, 2
	jmp	.label_494
.label_599:
	mov	r9d, 2
	jmp	.label_494
.label_590:
	mov	r9d, 2
	jmp	.label_494
.label_527:
	mov	r9d, 5
	jmp	.label_494
.label_580:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407260
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
	.align	32
	#Procedure 0x407330
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
	je	.label_604
	mov	qword ptr [rax], rbx
.label_604:
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
	#Procedure 0x407430
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_605
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_607:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_607
.label_605:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_608
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_609]], OFFSET FLAT:slot0
.label_608:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_606
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_606:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4074d0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x4074e0

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
	js	.label_610
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_613
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_616
.label_613:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_612
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
	jne	.label_611
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_611:
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
.label_616:
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
	ja	.label_614
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_615
	mov	rdi, rbx
	call	free
.label_615:
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
.label_614:
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
.label_610:
	call	abort
.label_612:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4076b0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4076c0
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
	.align	32
	#Procedure 0x4076e0
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
	.align	32
	#Procedure 0x407700

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
	je	.label_617
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
.label_617:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x407770
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
	je	.label_618
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
.label_618:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4077e0

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
	je	.label_619
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
.label_619:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407850
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
	je	.label_620
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
.label_620:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4078c0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_621]]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_622]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_623]]
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
	.align	32
	#Procedure 0x407930
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx,  qword ptr [word ptr [rip + label_621]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_622]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_623]]
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
	.align	32
	#Procedure 0x4079a0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_621]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_622]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_623]]
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
	.align	32
	#Procedure 0x407a00
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_621]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_622]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_623]]
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
	.align	32
	#Procedure 0x407a60

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
	je	.label_624
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
.label_624:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x407b10
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_621]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_622]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_623]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_625
	test	rdx, rdx
	je	.label_625
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_625:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x407b80
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_621]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_622]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_623]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_626
	test	rdx, rdx
	je	.label_626
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_626:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407bf0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_621]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_622]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_623]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_627
	test	rsi, rsi
	je	.label_627
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_627:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x407c60
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_621]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_622]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_623]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_628
	test	rsi, rsi
	je	.label_628
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
.label_628:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407cd0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ce0
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
	.align	32
	#Procedure 0x407d00

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407d20

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
	.align	32
	#Procedure 0x407d40

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
	jne	.label_631
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_632
	cmp	ecx, 0x55
	jne	.label_630
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_630
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_630
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_630
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_630
	cmp	byte ptr [rax + 5], 0
	jne	.label_630
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_631
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_631
.label_632:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_630
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_630
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_630
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_630
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_630
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_630
	cmp	byte ptr [rax + 7], 0
	je	.label_629
.label_630:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_631:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_629:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_631
	mov	eax, OFFSET FLAT:.str.18_0
	jmp	.label_631
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407e30

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
	jns	.label_633
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x16
	je	.label_634
	cmp	ecx, 0x5f
	je	.label_634
	cmp	ecx, 0x26
	jne	.label_633
.label_634:
	test	r12d, r12d
	je	.label_636
	mov	qword ptr [rsp], rax
	cmp	r12d, 2
	jb	.label_637
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0x5f
	mov	ebx, 0xffffffff
	jmp	.label_633
.label_636:
	mov	qword ptr [rsp], rax
	xor	r12d, r12d
.label_641:
	mov	rdi, rbp
	call	strlen
	mov	rbx, rax
	mov	rdi, r13
	call	strlen
	test	rbx, rbx
	je	.label_635
	test	rax, rax
	je	.label_635
	movzx	ecx, byte ptr [rbx + rbp - 1]
	cmp	ecx, 0x2f
	je	.label_638
	movzx	eax, byte ptr [rax + r13 - 1]
	cmp	eax, 0x2f
	jne	.label_635
.label_638:
	lea	rcx, [rsp + 0x98]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, r15d
	mov	rdx, rbp
	call	__fxstatat
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_633
	test	r12b, r12b
	je	.label_643
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0xb0]
	cmp	eax, 0x4000
	je	.label_635
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 2
	jmp	.label_633
.label_637:
	lea	rcx, [rsp + 8]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, r14d
	mov	rdx, r13
	call	__fxstatat
	test	eax, eax
	je	.label_640
	mov	rax, qword ptr [rsp]
	mov	eax, dword ptr [rax]
	mov	r12b, 1
	cmp	eax, 2
	je	.label_641
	mov	ebx, 0xffffffff
	cmp	eax, 0x4b
	jne	.label_633
.label_640:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0x11
	mov	ebx, 0xffffffff
	jmp	.label_633
.label_643:
	lea	rcx, [rsp + 8]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, r14d
	mov	rdx, r13
	call	__fxstatat
	test	eax, eax
	je	.label_644
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax], 2
	jne	.label_633
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0xb0]
	cmp	eax, 0x4000
	jne	.label_633
	jmp	.label_635
.label_644:
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsp + 0x20]
	and	ecx, eax
	cmp	ecx, 0x4000
	jne	.label_639
	and	eax, dword ptr [rsp + 0xb0]
	cmp	eax, 0x4000
	jne	.label_642
.label_635:
	mov	edi, r15d
	mov	rsi, rbp
	mov	edx, r14d
	mov	rcx, r13
	call	renameat
	mov	ebx, eax
.label_633:
	mov	eax, ebx
	add	rsp, 0x128
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_639:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0x14
	jmp	.label_633
.label_642:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0x15
	jmp	.label_633
	nop	
	.section	.text
	.align	32
	#Procedure 0x408040

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
	.align	32
	#Procedure 0x408060

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
	jne	.label_649
	mov	qword ptr [rsp + 8], r15
	mov	dword ptr [rsp + 0x10], r12d
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_646
	xor	ebp, ebp
	jmp	.label_647
.label_649:
	xor	ebp, ebp
	jmp	.label_647
.label_646:
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
	je	.label_645
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	rcx, rbp
	call	error
.label_645:
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
	je	.label_648
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	rcx, rbx
	call	error
.label_648:
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_650
	mov	rax, qword ptr [rsp + 0xa8]
	cmp	rax, qword ptr [rsp + 0x18]
	sete	bpl
	jmp	.label_651
.label_650:
	xor	ebp, ebp
.label_651:
	mov	rdi, rbx
	call	free
.label_647:
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
	.align	32
	#Procedure 0x4081b0

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
	jb	.label_660
	mov	rax, rbp
	sub	rax, r12
	sub	rax, r13
	add	rax, r14
	mov	rcx, -1
	nop	dword ptr [rax + rax]
.label_654:
	movzx	edx, byte ptr [rax + rcx + 1]
	inc	rcx
	cmp	edx, 0x58
	je	.label_654
	cmp	rcx, r12
	jae	.label_657
.label_660:
	mov	rax, qword ptr [rsp + 0x30]
	mov	dword ptr [rax], 0x16
	mov	r12d, 0xffffffff
.label_656:
	mov	eax, r12d
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_657:
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
	je	.label_656
	sub	rbp, r13
	add	rbp, qword ptr [rsp + 0x18]
	mov	rcx, rax
	neg	rcx
	mov	qword ptr [rsp + 0x10], rcx
	mov	r13, rax
	nop	word ptr cs:[rax + rax]
.label_659:
	test	r13, r13
	mov	rbx, qword ptr [rsp + 0x10]
	je	.label_658
	nop	word ptr [rax + rax]
.label_653:
	mov	esi, 0x3d
	mov	rdi, r15
	call	randint_genmax
	mov	al,  byte ptr [byte ptr [rax + letters]]
	mov	byte ptr [rbp + rbx], al
	inc	rbx
	jne	.label_653
.label_658:
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x20]
	call	qword ptr [rsp + 0x28]
	mov	r12d, eax
	test	r12d, r12d
	jns	.label_652
	mov	rax, qword ptr [rsp + 0x30]
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x11
	mov	r12d, 0xffffffff
	jne	.label_655
	inc	r14d
	cmp	r14d, 0x3a2f7
	jbe	.label_659
	mov	rdi, r15
	call	randint_all_free
	mov	rax, qword ptr [rsp + 0x30]
	mov	dword ptr [rax], 0x11
	mov	r12d, 0xffffffff
	jmp	.label_656
.label_652:
	mov	eax, dword ptr [rsp + 0xc]
	mov	rcx, qword ptr [rsp + 0x30]
	mov	dword ptr [rcx], eax
	mov	ebx, eax
.label_655:
	mov	rdi, r15
	call	randint_all_free
	mov	rax, qword ptr [rsp + 0x30]
	mov	dword ptr [rax], ebx
	jmp	.label_656
	nop	
	.section	.text
	.align	32
	#Procedure 0x408330
	.globl gen_tempname_len
	.type gen_tempname_len, @function
gen_tempname_len:

	push	rax
	mov	dword ptr [rsp + 4], edx
	cmp	ecx, 3
	jae	.label_661
	movsxd	rax, ecx
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_662]]
	lea	rdx, [rsp + 4]
	call	try_tempname_len
	pop	rcx
	ret	
.label_661:
	mov	edi, OFFSET FLAT:.str_9
	mov	esi, OFFSET FLAT:.str.1_6
	mov	edx, 0x147
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.gen_tempname_len
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408370

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
	.align	32
	#Procedure 0x408390

	.globl try_dir
	.type try_dir, @function
try_dir:
	mov	esi, 0x1c0
	jmp	mkdir
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4083a0

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
	je	.label_663
	cmp	dword ptr [rax], 0x4b
	jne	.label_664
.label_663:
	mov	dword ptr [rax], 0x11
.label_664:
	xor	ecx, ecx
	cmp	dword ptr [rax], 2
	mov	eax, 0xffffffff
	cmove	eax, ecx
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4083f0
	.globl gen_tempname
	.type gen_tempname, @function
gen_tempname:

	push	rax
	mov	dword ptr [rsp + 4], edx
	cmp	ecx, 3
	jae	.label_665
	movsxd	rax, ecx
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_662]]
	lea	rdx, [rsp + 4]
	mov	r8d, 6
	call	try_tempname_len
	pop	rcx
	ret	
.label_665:
	mov	edi, OFFSET FLAT:.str_9
	mov	esi, OFFSET FLAT:.str.1_6
	mov	edx, 0x147
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.gen_tempname_len
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x408430
	.globl try_tempname
	.type try_tempname, @function
try_tempname:

	mov	r8d, 6
	jmp	try_tempname_len
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408440

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
	ja	.label_666
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
	jmp	.label_667
.label_666:
	mov	eax, ebx
.label_667:
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
	#Procedure 0x408490

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
	je	.label_671
	mov	edx, OFFSET FLAT:.str_10
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_669
.label_671:
	mov	edx, OFFSET FLAT:.str.1_7
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_669:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_3
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
	mov	esi, OFFSET FLAT:.str.3_2
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_677
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_676]]
.label_925:
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
.label_677:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_674
.label_926:
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
.label_927:
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
.label_928:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_670
.label_929:
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
	jmp	.label_673
.label_930:
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
	jmp	.label_668
.label_931:
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
.label_668:
	mov	qword ptr [rsp + 0x10], rdi
.label_673:
	mov	qword ptr [rsp + 8], rsi
.label_670:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_675
.label_933:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_674:
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
	jmp	.label_672
.label_932:
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
.label_672:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_675:
	call	__fprintf_chk
.label_924:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408780
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_678:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_678
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4087b0
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_681:
	cmp	r10d, 0x28
	ja	.label_679
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_680
	nop	word ptr cs:[rax + rax]
.label_679:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_680:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_682
	inc	r9
	cmp	r9, 0xa
	jb	.label_681
.label_682:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408810

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x128
	test	al, al
	je	.label_683
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_683:
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
.label_687:
	cmp	r8d, 0x28
	ja	.label_684
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_686
	nop	
.label_684:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_686:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_685
	inc	r9
	cmp	r9, 0xa
	jb	.label_687
.label_685:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408910
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
	mov	edx, OFFSET FLAT:.str.15_1
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
	#Procedure 0x408990
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_688
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_689
	test	rax, rax
	je	.label_688
.label_689:
	pop	rbx
	ret	
.label_688:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4089d0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_690
	test	rax, rax
	je	.label_691
.label_690:
	pop	rbx
	ret	
.label_691:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4089f0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_692
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_693
	test	rbx, rbx
	jne	.label_693
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_693:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_694
	test	rax, rax
	je	.label_692
.label_694:
	pop	rbx
	ret	
.label_692:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408a40

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_695
	test	rbx, rbx
	jne	.label_695
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_695:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_697
	test	rax, rax
	je	.label_696
.label_697:
	pop	rbx
	ret	
.label_696:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x408a70
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_701
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_702
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_698
.label_701:
	test	rcx, rcx
	jne	.label_704
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_704:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_703
.label_698:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_699
	test	rbx, rbx
	jne	.label_699
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_699:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_700
	test	rax, rax
	je	.label_702
.label_700:
	pop	rbx
	ret	
.label_702:
	call	xalloc_die
.label_703:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408b10
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_705
	test	rax, rax
	je	.label_706
.label_705:
	pop	rbx
	ret	
.label_706:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408b30
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_709
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_711
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_708
	call	free
	xor	eax, eax
	jmp	.label_710
.label_709:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_707
	mov	qword ptr [rsi], rbx
.label_708:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_710
	test	rax, rax
	je	.label_707
.label_710:
	pop	rbx
	ret	
.label_707:
	call	xalloc_die
.label_711:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ba0
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
	je	.label_713
	test	r14, r14
	je	.label_712
.label_713:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_712:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408be0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_714
	call	rpl_calloc
	test	rax, rax
	je	.label_714
	pop	rcx
	ret	
.label_714:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408c10

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
	je	.label_715
	test	r15, r15
	je	.label_716
.label_715:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_716:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408c50

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
	je	.label_718
	test	r15, r15
	je	.label_717
.label_718:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_717:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408ca0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_8
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
	.align	32
	#Procedure 0x408cd0

	.globl xgetcwd
	.type xgetcwd, @function
xgetcwd:
	push	rbx
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_720
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_719
.label_720:
	mov	rax, rbx
	pop	rbx
	ret	
.label_719:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408d00

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
	jle	.label_721
	mov	rdi, qword ptr [rsp + 8]
	movzx	ecx, byte ptr [rax + rdi - 1]
	cmp	ecx, 0xa
	jne	.label_723
	mov	byte ptr [rdi + rax - 1], 0
	mov	rdi, qword ptr [rsp + 8]
.label_723:
	call	rpmatch
	test	eax, eax
	setg	bl
	jmp	.label_722
.label_721:
	xor	ebx, ebx
.label_722:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	al, bl
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408d70

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_724
	test	rsi, rsi
	mov	ecx, 1
	je	.label_725
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_725
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_724:
	mov	ecx, 1
.label_725:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408dc0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_726
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_726
	test	byte ptr [rbx + 1], 1
	je	.label_726
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_726:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408e00

	.globl freadahead
	.type freadahead, @function
freadahead:
	mov	rcx, qword ptr [rdi + 0x28]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	ja	.label_727
	mov	rax, qword ptr [rdi + 0x10]
	sub	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	test	byte ptr [rdi + 1], 1
	je	.label_728
	mov	rcx, qword ptr [rdi + 0x58]
	sub	rcx, qword ptr [rdi + 0x48]
.label_728:
	add	rax, rcx
.label_727:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408e30

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
	jne	.label_729
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_729
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_730
.label_729:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_730:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_731
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_731:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408ea0

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
	je	.label_732
	cmp	r15, -2
	jb	.label_732
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_732
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_732:
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
	#Procedure 0x408f00

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
	je	.label_734
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	movabs	r15, 0x7fffffffffffffff
	nop	word ptr cs:[rax + rax]
.label_733:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbx
	mov	rdx, r12
	call	readlink
	mov	r13, rax
	test	r13, r13
	jns	.label_740
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	jne	.label_739
.label_740:
	cmp	r13, r12
	jb	.label_735
	mov	rdi, rbx
	call	free
	mov	rax, r12
	shr	rax, 0x3e
	jne	.label_737
	add	r12, r12
	jmp	.label_741
	nop	word ptr cs:[rax + rax]
.label_737:
	cmp	r12, r15
	mov	r12, r15
	jae	.label_736
.label_741:
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_733
	jmp	.label_734
.label_735:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp + 8], rbx
	jmp	.label_734
.label_736:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_738
.label_739:
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
.label_738:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
.label_734:
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
	.align	32
	#Procedure 0x409010

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409020

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
	je	.label_743
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, r14
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	nop	
.label_742:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_747
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_745
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_746
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_748
	mov	rdi, qword ptr [rsp + 0x18]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_747
.label_748:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_747
.label_746:
	mov	qword ptr [rsp + 0x18], rbp
	nop	word ptr [rax + rax]
.label_747:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_742
	jmp	.label_744
.label_743:
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_744:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 0x18]
.label_745:
	mov	rax, rbp
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
	.align	32
	#Procedure 0x409120
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
	je	.label_749
	mov	esi, OFFSET FLAT:.str.1_9
	jmp	.label_750
.label_749:
	mov	esi, OFFSET FLAT:.str_11
.label_750:
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
	.align	32
	#Procedure 0x409190

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
	mov	esi, OFFSET FLAT:.str.2_4
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbx]
	test	rbx, rbx
	je	.label_752
	xor	r13d, r13d
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_755:
	test	r15, r15
	je	.label_751
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_754
.label_751:
	mov	r13,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_3
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_756
	nop	word ptr cs:[rax + rax]
.label_754:
	mov	rbp,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.4_1
	xor	eax, eax
	mov	rdi, rbp
	call	__fprintf_chk
.label_756:
	mov	rax, qword ptr [rsp]
	mov	rbx, qword ptr [rax + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_755
.label_752:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_753
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
.label_753:
	mov	esi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4092c0

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
	jns	.label_758
	mov	qword ptr [rsp + 0x10], rbp
	xor	edi, edi
	cmp	rax, -1
	je	.label_759
	mov	esi, OFFSET FLAT:.str.1_9
	jmp	.label_757
.label_759:
	mov	esi, OFFSET FLAT:.str_11
.label_757:
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
.label_758:
	add	rsp, 0x18
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
	#Procedure 0x409380
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
	je	.label_760
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_761:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_760
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_761
.label_760:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4093f0

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
	jne	.label_763
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_762
	test	cl, cl
	jne	.label_762
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_762
.label_763:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_762
	call	__errno_location
	mov	dword ptr [rax], 0
.label_762:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409450

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_765
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_766
	cmp	byte ptr [rax + 1], 0
	je	.label_764
.label_766:
	mov	esi, OFFSET FLAT:.str.1_10
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_765
.label_764:
	xor	ebx, ebx
.label_765:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x409490

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	mov	cl, byte ptr [rdi]
	xor	eax, eax
	test	cl, cl
	je	.label_767
	inc	rdi
	xor	eax, eax
	nop	dword ptr [rax]
.label_768:
	movsx	rcx, cl
	rol	rax, 9
	add	rax, rcx
	mov	cl, byte ptr [rdi]
	inc	rdi
	test	cl, cl
	jne	.label_768
.label_767:
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4094c0

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
	je	.label_769
	mov	rax, rcx
.label_769:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4094f0
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409510

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	push	rbx
	call	randread_new
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_770
	mov	edi, 0x18
	call	xmalloc
	mov	qword ptr [rax], rbx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 8], xmm0
.label_770:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409540
	.globl randint_get_source
	.type randint_get_source, @function
randint_get_source:

	mov	rax, qword ptr [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409550

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
.label_773:
	cmp	r14, r13
	jae	.label_772
	mov	rax, r14
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_771:
	shl	rax, 8
	or	rax, 0xff
	inc	rdx
	cmp	rax, r13
	jb	.label_771
	mov	rdi, r15
	mov	rsi, r12
	call	randread
	mov	rax, r12
.label_775:
	mov	rcx, rbx
	shl	rcx, 8
	movzx	ebx, byte ptr [rax]
	or	rbx, rcx
	shl	r14, 8
	or	r14, 0xff
	inc	rax
	cmp	r14, r13
	jb	.label_775
.label_772:
	mov	rcx, rbx
	mov	rsi, r14
	sub	rsi, r13
	je	.label_776
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
	ja	.label_773
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
	jmp	.label_774
.label_776:
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rsp]
	movups	xmmword ptr [rax], xmm0
.label_774:
	mov	rax, rcx
	add	rsp, 0x18
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
	#Procedure 0x409650
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
	.align	32
	#Procedure 0x409670

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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4096c0

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
	je	.label_777
	xor	ebx, ebx
	test	r14, r14
	je	.label_781
	mov	esi, OFFSET FLAT:.str_12
	mov	rdi, r14
	call	fopen_safer
	mov	rbx, rax
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_780
.label_781:
	mov	edi, 0x1038
	call	xmalloc
	mov	r15, rax
	mov	qword ptr [r15], rbx
	mov	qword ptr [word ptr [r15 + 8]], OFFSET FLAT:randread_error
	mov	qword ptr [r15 + 0x10], r14
	test	rbx, rbx
	je	.label_778
	mov	rsi, r15
	add	rsi, 0x18
	cmp	r12, 0x1000
	mov	ecx, 0x1000
	cmovbe	rcx, r12
	xor	edx, edx
	mov	rdi, rbx
	call	setvbuf
	jmp	.label_780
.label_777:
	mov	edi, 0x1038
	call	xmalloc
	mov	r15, rax
	mov	qword ptr [r15], 0
	mov	qword ptr [word ptr [r15 + 8]], OFFSET FLAT:randread_error
	mov	qword ptr [r15 + 0x10], 0
	jmp	.label_780
.label_778:
	mov	qword ptr [r15 + 0x18], 0
	mov	r14, r15
	add	r14, 0x20
	xor	r13d, r13d
	mov	edi, OFFSET FLAT:.str.3_4
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	ebx, eax
	test	ebx, ebx
	js	.label_779
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
	js	.label_779
	cmp	r12, 0x7ff
	mov	r13, r12
	ja	.label_782
.label_779:
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
	ja	.label_782
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
	ja	.label_782
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
	ja	.label_782
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
	ja	.label_782
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
.label_782:
	mov	rdi, r14
	call	isaac_seed
.label_780:
	mov	rax, r15
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409910
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	qword ptr [rdi + 8], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409920
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	mov	qword ptr [rdi + 0x10], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409930

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
	je	.label_789
	mov	esi, 1
	mov	rdi, r15
	mov	rdx, rbx
	call	fread_unlocked
	mov	rbp, rax
	call	__errno_location
	mov	r12, rax
	cmp	rbp, rbx
	je	.label_785
.label_784:
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
	jne	.label_784
	jmp	.label_785
.label_789:
	mov	r12, qword ptr [r14 + 0x18]
	lea	r13, [r14 + 0x838]
	mov	rsi, r13
	sub	rsi, r12
	add	rsi, 0x800
	cmp	r12, rbx
	jae	.label_788
	lea	rbp, [r14 + 0x20]
	mov	rdi, r15
	mov	rdx, r12
	call	memcpy
	add	r15, r12
	sub	rbx, r12
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_787:
	cmp	rbx, 0x800
	jb	.label_783
	mov	rdi, rbp
	mov	rsi, r15
	call	isaac_refill
	add	r15, 0x800
	add	rbx, -0x800
	jne	.label_787
	jmp	.label_786
.label_783:
	mov	rdi, rbp
	mov	rsi, r13
	call	isaac_refill
	mov	r12d, 0x800
	mov	rsi, r13
.label_788:
	mov	rdi, r15
	mov	rdx, rbx
	call	memcpy
	sub	r12, rbx
.label_786:
	mov	qword ptr [r14 + 0x18], r12
.label_785:
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
	.align	32
	#Procedure 0x409a50

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
	je	.label_790
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	rpl_fclose
.label_790:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409a90

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
	je	.label_791
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	jne	.label_793
	mov	esi, OFFSET FLAT:.str.1_12
	jmp	.label_792
.label_793:
	mov	esi, OFFSET FLAT:.str.2_5
.label_792:
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
.label_791:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x409af0

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
.label_794:
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
	jb	.label_794
	add	rsi, 0x400
	lea	r8, [rdi + 0x800]
	nop	dword ptr [rax]
.label_795:
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
	jb	.label_795
	mov	qword ptr [rdi + 0x800], rax
	mov	qword ptr [rdi + 0x808], rcx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409d40

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
.label_796:
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
	jl	.label_796
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_797:
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
	jl	.label_797
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x800], xmm0
	mov	qword ptr [rdi + 0x810], 0
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409fa0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop	
	.section	.text
	.align	32
	#Procedure 0x409fb0

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	mov	rax, rsi
	xor	esi, esi
	mov	rdx, rax
	jmp	memset
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409fc0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_798
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_799
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_798
.label_799:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_798
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_800
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_800:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_798:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a040

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_814
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_814:
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
	ja	.label_801
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_815
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_809
	test	esi, esi
	jne	.label_801
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_818
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_820
.label_801:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_804
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_809
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_810
.label_815:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_808
.label_809:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_813
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_805
.label_813:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_805:
	mov	edx, dword ptr [rax]
.label_821:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
.label_808:
	mov	ebp, eax
.label_803:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_810:
	cmp	eax, 6
	jne	.label_804
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_806
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_802
.label_804:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_819
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_816
.label_818:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_820:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	jmp	.label_821
.label_806:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_802:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_807
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_811
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_811
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_803
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	al, 1
	jmp	.label_812
.label_811:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_803
.label_819:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_816:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_808
.label_807:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	sete	al
.label_812:
	test	al, al
	je	.label_803
	test	ebp, ebp
	js	.label_803
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_817
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_803
.label_817:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_803
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a320

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
	.align	32
	#Procedure 0x40a340

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
	je	.label_822
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_826
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_823
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_824
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_822
.label_824:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_825
.label_826:
	mov	rax, rbx
	jmp	.label_822
.label_823:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_825:
	xor	eax, eax
.label_822:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]