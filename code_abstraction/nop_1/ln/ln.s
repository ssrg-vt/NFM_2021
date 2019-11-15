	.section	.text
	.align	32
	#Procedure 0x401f20

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
	call	emit_mandatory_arg_note
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
	call	emit_backup_suffix_note
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
	#Procedure 0x4020a0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.29
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4020d0

	.globl emit_backup_suffix_note
	.type emit_backup_suffix_note, @function
emit_backup_suffix_note:
	push	rax
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
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402120

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.32
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
	mov	r14d, OFFSET FLAT:.str.10
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.10
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.45
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.46
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
	#Procedure 0x402240

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
	mov	r12, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [r12]
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
	mov	qword ptr [rsp + 0x20], rax
	lea	r13, [rsp + 0x28]
	xor	ebx, ebx
	xor	eax, eax
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x18], rcx
	xor	r14d, r14d
	jmp	.label_14
.label_17:
	mov	byte ptr [byte ptr [rip + hard_dir_link]],  1
	mov	al, r15b
	nop	word ptr [rax + rax]
.label_14:
	mov	r15b, al
	mov	edx, OFFSET FLAT:.str.14
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r12
	call	getopt_long
	cmp	eax, 0x61
	jle	.label_43
	add	eax, -0x62
	cmp	eax, 0x14
	ja	.label_19
	jmp	qword ptr [word ptr [+ (rax * 8) + label_12]]
.label_799:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	test	rax, rax
	mov	rcx, qword ptr [rsp + 0x20]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x20], rcx
	mov	r14b, 1
	mov	al, r15b
	jmp	.label_14
	nop	word ptr cs:[rax + rax]
.label_43:
	cmp	eax, 0x45
	jle	.label_23
	lea	ecx, [rax - 0x4c]
	cmp	ecx, 8
	ja	.label_24
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_27]]
.label_768:
	mov	byte ptr [byte ptr [rip + logical]],  1
	mov	al, r15b
	jmp	.label_14
.label_800:
	mov	byte ptr [byte ptr [rip + remove_existing_files]],  1
	mov	byte ptr [byte ptr [rip + interactive]],  0
	mov	al, r15b
	jmp	.label_14
.label_801:
	mov	byte ptr [byte ptr [rip + remove_existing_files]],  0
	mov	byte ptr [byte ptr [rip + interactive]],  1
	mov	al, r15b
	jmp	.label_14
.label_802:
	mov	byte ptr [byte ptr [rip + dereference_dest_dir_symlinks]],  1
	mov	al, r15b
	jmp	.label_14
.label_803:
	mov	byte ptr [byte ptr [rip + relative]],  1
	mov	al, r15b
	jmp	.label_14
.label_804:
	mov	byte ptr [byte ptr [rip + symbolic_link]],  1
	mov	al, r15b
	jmp	.label_14
.label_805:
	test	rbx, rbx
	jne	.label_42
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	rsi, r13
	call	stat
	test	eax, eax
	jne	.label_44
	mov	eax, dword ptr [rsp + 0x40]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0x4000
	jne	.label_45
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	mov	al, r15b
	jmp	.label_14
.label_806:
	mov	byte ptr [byte ptr [rip + verbose]],  1
	mov	al, r15b
	jmp	.label_14
.label_24:
	cmp	eax, 0x46
	je	.label_17
	jmp	.label_19
.label_769:
	mov	byte ptr [byte ptr [rip + logical]],  0
	mov	al, r15b
	jmp	.label_14
.label_770:
	mov	r14b, 1
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0x18], rax
	mov	al, r15b
	jmp	.label_14
.label_23:
	cmp	eax, -1
	jne	.label_25
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	movsxd	r13, ebp
	sub	r13, rax
	test	r13d, r13d
	jle	.label_29
	movzx	ecx,  byte ptr [byte ptr [rip + relative]]
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_32
	mov	cl,  byte ptr [byte ptr [rip + symbolic_link]]
	and	cl, 1
	je	.label_34
.label_32:
	lea	r12, [r12 + rax*8]
	test	r15b, r15b
	je	.label_36
	test	rbx, rbx
	jne	.label_37
	xor	r15d, r15d
	cmp	r13d, 2
	jne	.label_38
	mov	ebp, 0xffffffff
	mov	r13d, 2
.label_16:
	mov	dword ptr [rsp + 0x14], eax
	jmp	.label_28
.label_36:
	test	rbx, rbx
	jne	.label_41
	cmp	r13d, 2
	jge	.label_41
	mov	ebp, 0xffffffff
	mov	dword ptr [rsp + 0x14], 0xffffff9c
	mov	r15d, OFFSET FLAT:.str.2_0
	jmp	.label_28
.label_41:
	test	rbx, rbx
	mov	r15, rbx
	setne	al
	cmp	r13d, 2
	setne	bl
	mov	ebp, 0xffffffff
	or	bl, al
	jne	.label_13
	mov	rdi, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
	mov	esi, 0xffffff9c
	call	atomic_link
	mov	ebp, eax
	test	ebp, ebp
	js	.label_13
	cmp	ebp, 0x14
	je	.label_13
	cmp	ebp, 0x11
	jne	.label_16
.label_13:
	mov	byte ptr [rsp + 0x13], bl
	test	r15, r15
	mov	rbx, r15
	jne	.label_18
	mov	rbx, qword ptr [r12 + r13*8 - 8]
.label_18:
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
	js	.label_26
	mov	dword ptr [rsp + 0x14], eax
	cmp	r15, 1
	sbb	r13d, 0
	mov	r15, rbx
	jmp	.label_28
.label_26:
	mov	qword ptr [rsp + 8], rbx
	mov	dword ptr [rsp + 0x14], eax
	test	byte ptr [rsp + 0x13], 1
	jne	.label_31
.label_28:
	xor	eax, eax
	test	r14b, r14b
	je	.label_33
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x20]
	call	xget_version
.label_33:
	mov	dword ptr [dword ptr [rip + backup_type]],  eax
	mov	rdi, qword ptr [rsp + 0x18]
	call	set_simple_backup_suffix
	test	r15, r15
	je	.label_40
	cmp	r13d, 1
	jle	.label_22
	movzx	eax,  byte ptr [byte ptr [rip + remove_existing_files]]
	and	eax, 1
	cmp	eax, 1
	mov	r14d, dword ptr [rsp + 0x14]
	jne	.label_11
	cmp	dword ptr [dword ptr [rip + backup_type]],  3
	je	.label_11
	mov	al,  byte ptr [byte ptr [rip + symbolic_link]]
	xor	al, 1
	test	al, 1
	je	.label_11
	mov	edi, 0x3d
	xor	esi, esi
	mov	edx, OFFSET FLAT:triple_hash
	mov	ecx, OFFSET FLAT:triple_compare
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	mov	qword ptr [word ptr [rip + dest_set]],  rax
	test	rax, rax
	jne	.label_11
	call	xalloc_die
.label_40:
	mov	rdi, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
	mov	esi, 0xffffff9c
	mov	rcx, rdx
	mov	r8d, ebp
	call	do_link
	mov	bl, al
	jmp	.label_15
.label_22:
	mov	bl, 1
	test	r13d, r13d
	mov	r14d, dword ptr [rsp + 0x14]
	jle	.label_15
.label_11:
	mov	bl, 1
	nop	dword ptr [rax]
.label_35:
	mov	rdi, qword ptr [r12]
	call	last_component
	mov	rdi, r15
	mov	rsi, rax
	lea	rdx, [rsp + 0x28]
	call	file_name_concat
	mov	rbp, rax
	mov	rdi, qword ptr [rsp + 0x28]
	call	strip_trailing_slashes
	mov	rdi, qword ptr [r12]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	r8d, 0xffffffff
	mov	esi, r14d
	mov	rcx, rbp
	call	do_link
	and	bl, al
	mov	rdi, rbp
	call	free
	add	r12, 8
	dec	r13d
	jne	.label_35
.label_15:
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
.label_25:
	cmp	eax, 0xffffff7d
	je	.label_39
	cmp	eax, 0xffffff7e
	jne	.label_19
	xor	edi, edi
	call	usage
.label_39:
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
.label_19:
	mov	edi, 1
	call	usage
.label_29:
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
.label_37:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	jmp	.label_20
.label_38:
	xor	edi, edi
	cmp	r13d, 1
	jg	.label_21
	mov	esi, OFFSET FLAT:.str.24
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r12]
	jmp	.label_30
.label_42:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15
	jmp	.label_20
.label_44:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
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
.label_45:
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
.label_34:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
.label_20:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_21:
	mov	esi, OFFSET FLAT:.str.25
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r12 + 0x10]
.label_30:
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
.label_31:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402890

	.globl atomic_link
	.type atomic_link, @function
atomic_link:
	push	rax
	mov	r9, rdx
	mov	ecx, esi
	mov	rdx, rdi
	movzx	esi,  byte ptr [byte ptr [rip + symbolic_link]]
	and	esi, 1
	cmp	esi, 1
	jne	.label_46
	mov	al,  byte ptr [byte ptr [rip + relative]]
	and	al, 1
	je	.label_47
	mov	eax, 0xffffffff
	pop	rcx
	ret	
.label_46:
	movzx	r8d,  byte ptr [byte ptr [rip + logical]]
	and	r8d, 1
	shl	r8d, 0xa
	mov	edi, 0xffffff9c
	mov	rsi, rdx
	mov	edx, ecx
	mov	rcx, r9
	call	linkat
	jmp	.label_48
.label_47:
	mov	rdi, rdx
	mov	esi, ecx
	mov	rdx, r9
	call	symlinkat
.label_48:
	mov	edi, eax
	pop	rax
	jmp	errnoize
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402900

	.globl do_link
	.type do_link, @function
do_link:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x158
	mov	r14d, r8d
	mov	r13, rcx
	mov	rbp, rdx
	mov	dword ptr [rsp + 0x30], esi
	mov	r12, rdi
	mov	al,  byte ptr [byte ptr [rip + logical]]
	and	al, 1
	sete	bl
	test	r14d, r14d
	jns	.label_49
	mov	rdi, r12
	mov	esi, dword ptr [rsp + 0x30]
	mov	rdx, rbp
	call	atomic_link
	mov	r14d, eax
.label_49:
	mov	qword ptr [rsp + 0x28], rbp
	test	r14d, r14d
	jne	.label_61
	mov	rax,  qword ptr [word ptr [rip + dest_set]]
	mov	r15d, 1
	test	rax, rax
	je	.label_65
.label_61:
	mov	al,  byte ptr [byte ptr [rip + symbolic_link]]
	and	al, 1
	je	.label_70
	mov	r15d, 1
	mov	al, 1
	jmp	.label_75
.label_70:
	movzx	ecx, bl
	shl	ecx, 8
	lea	rdx, [rsp + 0xc8]
	mov	edi, 0xffffff9c
	mov	rsi, r12
	call	fstatat
	xor	r15d, r15d
	test	eax, eax
	je	.label_65
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_82
.label_65:
	mov	al,  byte ptr [byte ptr [rip + symbolic_link]]
.label_75:
	test	r14d, r14d
	je	.label_88
	test	al, 1
	jne	.label_55
	mov	al,  byte ptr [byte ptr [rip + hard_dir_link]]
	and	al, 1
	jne	.label_55
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0xe0]
	cmp	eax, 0x4000
	jne	.label_55
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.62
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r12
	jmp	.label_54
.label_55:
	movzx	eax,  byte ptr [byte ptr [rip + relative]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_83
	mov	rdi, r12
	mov	rsi, r13
	mov	qword ptr [rsp + 0x18], r13
	call	convert_abs_rel
	mov	qword ptr [rsp + 0x20], rax
	mov	r12, rax
	jmp	.label_60
.label_88:
	xor	ebp, ebp
	test	al, 1
	mov	ebx, 0
	je	.label_63
	jmp	.label_67
.label_83:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	mov	qword ptr [rsp + 0x18], r13
.label_60:
	mov	al,  byte ptr [byte ptr [rip + remove_existing_files]]
	and	al, 1
	mov	r13b, 1
	jne	.label_73
	mov	al,  byte ptr [byte ptr [rip + interactive]]
	and	al, 1
	jne	.label_73
	xor	ebp, ebp
	cmp	dword ptr [dword ptr [rip + backup_type]],  0
	setne	r13b
	je	.label_52
.label_73:
	lea	rdx, [rsp + 0x38]
	mov	ecx, 0x100
	mov	edi, dword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x28]
	call	fstatat
	test	eax, eax
	je	.label_80
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	cmp	ebx, 2
	mov	r13d, 0
	je	.label_52
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
.label_76:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x18]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r14
	call	error
	jmp	.label_50
.label_80:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x50]
	cmp	eax, 0x4000
	jne	.label_51
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.63
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x18]
.label_54:
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_82:
	mov	rdx, rbx
	call	error
	jmp	.label_50
.label_51:
	mov	rdi,  qword ptr [word ptr [rip + dest_set]]
	lea	rdx, [rsp + 0x38]
	mov	rbx, qword ptr [rsp + 0x18]
	mov	rsi, rbx
	call	seen_file
	test	al, al
	je	.label_72
	xor	ebp, ebp
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
	mov	rdx, r12
.label_74:
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, r15
	mov	r8, rbx
	call	error
	jmp	.label_50
.label_72:
	cmp	dword ptr [dword ptr [rip + backup_type]],  0
	je	.label_84
	mov	al,  byte ptr [byte ptr [rip + symbolic_link]]
	and	al, 1
	je	.label_85
	jmp	.label_53
.label_84:
	movzx	eax,  byte ptr [byte ptr [rip + remove_existing_files]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_53
.label_85:
	test	r15d, r15d
	je	.label_90
	lea	rsi, [rsp + 0xc8]
	mov	rdi, r12
	call	stat
	test	eax, eax
	jne	.label_53
.label_90:
	mov	rax, qword ptr [rsp + 0xd0]
	cmp	rax, qword ptr [rsp + 0x40]
	jne	.label_53
	mov	rax, qword ptr [rsp + 0xc8]
	cmp	rax, qword ptr [rsp + 0x38]
	jne	.label_53
	cmp	qword ptr [rsp + 0xd8], 1
	je	.label_57
	mov	edi, 0xffffff9c
	mov	rsi, r12
	mov	edx, dword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x28]
	call	same_nameat
	test	al, al
	je	.label_53
.label_57:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r12
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rsp + 0x18]
	jmp	.label_74
.label_53:
	xor	ebp, ebp
	test	r14d, r14d
	js	.label_77
	cmp	r14d, 0x11
	jne	.label_52
.label_77:
	movzx	eax,  byte ptr [byte ptr [rip + interactive]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_79
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp + 0x10], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.66
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rbx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x18]
	call	quotearg_style
	mov	rbp, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rdx, r15
	mov	rcx, rbx
	mov	r8, rbp
	call	__fprintf_chk
	mov	bpl, 1
	call	yesno
	test	al, al
	je	.label_50
.label_79:
	mov	edx,  dword ptr [dword ptr [rip + backup_type]]
	xor	ebp, ebp
	test	edx, edx
	je	.label_52
	mov	ebp, dword ptr [rsp + 0x30]
	mov	edi, ebp
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rsi, rbx
	call	find_backup_file_name
	mov	edi, ebp
	mov	rsi, rbx
	mov	edx, ebp
	mov	rbp, rax
	mov	rcx, rbp
	call	renameat
	test	eax, eax
	je	.label_52
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdi, rbp
	call	free
	xor	ebp, ebp
	cmp	ebx, 2
	mov	r13d, 0
	jne	.label_64
.label_52:
	movzx	eax,  byte ptr [byte ptr [rip + symbolic_link]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_66
	movzx	ecx, r13b
	mov	rdi, r12
	mov	esi, dword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rdx, rbx
	mov	r8d, r14d
	call	force_symlinkat
	jmp	.label_78
.label_66:
	movzx	r8d,  byte ptr [byte ptr [rip + logical]]
	and	r8d, 1
	shl	r8d, 0xa
	mov	dword ptr [rsp], r14d
	movzx	r9d, r13b
	mov	edi, 0xffffff9c
	mov	rsi, r12
	mov	edx, dword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rcx, rbx
	call	force_linkat
.label_78:
	mov	r13d, eax
	mov	al,  byte ptr [byte ptr [rip + symbolic_link]]
	test	r13d, r13d
	jle	.label_62
	test	al, 1
	je	.label_86
	mov	qword ptr [rsp + 0x10], rbp
	cmp	r13d, 0x24
	je	.label_87
	cmp	byte ptr [r12], 0
	je	.label_87
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.70
	jmp	.label_59
.label_62:
	mov	qword ptr [rsp + 0x28], rbx
	test	al, 1
	mov	r13, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 0x20]
	jne	.label_67
.label_63:
	mov	rdi,  qword ptr [word ptr [rip + dest_set]]
	lea	rdx, [rsp + 0xc8]
	mov	rsi, r13
	call	record_file
.label_67:
	mov	al, 1
	mov	qword ptr [rsp + 0x30], rax
	movzx	eax,  byte ptr [byte ptr [rip + verbose]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_56
	mov	qword ptr [rsp + 0x20], rbx
	mov	qword ptr [rsp + 0x18], r12
	mov	r12, r13
	mov	r14d, OFFSET FLAT:.str_0
	test	rbp, rbp
	mov	r15, rbp
	mov	r13d, OFFSET FLAT:.str_0
	je	.label_69
	mov	r14, r12
	mov	rbp, qword ptr [rsp + 0x28]
	sub	rbp, r14
	xor	r13d, r13d
	test	rbp, rbp
	mov	rbx, r15
	jle	.label_68
	mov	rdi, r15
	call	strlen
	lea	rdi, [rbp + rax + 1]
	call	xmalloc
	mov	rbx, rax
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, rbp
	call	memcpy
	add	rbp, rbx
	mov	rdi, rbp
	mov	rsi, r15
	call	strcpy
	mov	r13, rbx
.label_68:
	mov	r12, r14
	mov	edi, 2
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	r14, rax
	mov	rdi, r13
	call	free
	mov	r13d, OFFSET FLAT:.str.68
.label_69:
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r12
	call	quotearg_n_style
	mov	rbp, rax
	mov	al,  byte ptr [byte ptr [rip + symbolic_link]]
	and	al, 1
	mov	eax, 0x2d
	mov	ebx, 0x3d
	cmovne	ebx, eax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rsp + 0x18]
	call	quotearg_n_style
	mov	qword ptr [rsp], rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.69
	xor	eax, eax
	mov	r8, rbp
	mov	rdx, r14
	mov	rcx, r13
	mov	r9d, ebx
	call	__printf_chk
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rbp, r15
	jmp	.label_56
.label_86:
	cmp	r13d, 0x1f
	jne	.label_58
	mov	qword ptr [rsp + 0x10], rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.72
	jmp	.label_59
.label_87:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.71
	jmp	.label_59
.label_58:
	mov	qword ptr [rsp + 0x10], rbp
	mov	eax, r13d
	or	eax, 2
	cmp	eax, 0x1e
	je	.label_71
	cmp	r13d, 0x7a
	je	.label_71
	cmp	r13d, 0x11
	je	.label_71
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.74
	jmp	.label_59
.label_71:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.73
.label_59:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rsp + 0x18]
	call	quotearg_n_style
	mov	rbx, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, r12
	call	quotearg_n_style
	mov	rbp, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, r14
	mov	rcx, rbx
	mov	r8, rbp
	call	error
	mov	rbp, qword ptr [rsp + 0x10]
	test	rbp, rbp
	je	.label_81
	mov	edi, dword ptr [rsp + 0x30]
	mov	rsi, rbp
	mov	edx, edi
	mov	rcx, qword ptr [rsp + 0x28]
	call	renameat
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x20]
	je	.label_89
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.75
	mov	edx, 5
	call	dcgettext
	mov	r15, rbp
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x18]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	mov	rbp, r15
	call	error
	jmp	.label_56
.label_81:
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	ebp, ebp
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_56
.label_89:
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
.label_56:
	mov	rdi, rbp
	call	free
	mov	rdi, rbx
	call	free
	mov	rbp, qword ptr [rsp + 0x30]
.label_50:
	mov	al, bpl
	add	rsp, 0x158
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_64:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.67
	jmp	.label_76
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403090

	.globl errnoize
	.type errnoize, @function
errnoize:
	xor	eax, eax
	test	edi, edi
	jns	.label_91
	push	rax
	call	__errno_location
	mov	eax, dword ptr [rax]
	add	rsp, 8
.label_91:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030b0

	.globl convert_abs_rel
	.type convert_abs_rel, @function
convert_abs_rel:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdi
	mov	rdi, rsi
	call	dir_name
	mov	r15, rax
	mov	esi, 2
	mov	rdi, r15
	call	canonicalize_filename_mode
	mov	r13, rax
	mov	esi, 2
	mov	rdi, r14
	call	canonicalize_filename_mode
	mov	r12, rax
	xor	ebx, ebx
	test	r13, r13
	je	.label_92
	test	r12, r12
	je	.label_92
	mov	edi, 0x1000
	call	xmalloc
	mov	rbx, rax
	mov	ecx, 0x1000
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, rbx
	call	relpath
	test	al, al
	jne	.label_92
	mov	rdi, rbx
	call	free
	xor	ebx, ebx
.label_92:
	mov	rdi, r15
	call	free
	mov	rdi, r13
	call	free
	mov	rdi, r12
	call	free
	test	rbx, rbx
	je	.label_93
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_93:
	mov	rdi, r14
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	xstrdup
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403160

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
	mov	ebx, r9d
	mov	r12d, r8d
	mov	qword ptr [rsp], rcx
	mov	r13d, edx
	mov	r14, rsi
	mov	r15d, edi
	mov	ebp, dword ptr [rsp + 0x160]
	test	ebp, ebp
	jns	.label_98
	mov	edi, r15d
	mov	rsi, r14
	mov	edx, r13d
	mov	rcx, qword ptr [rsp]
	mov	r8d, r12d
	call	linkat
	xor	ebp, ebp
	test	eax, eax
	je	.label_95
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_98:
	cmp	ebp, 0x11
	jne	.label_95
	xor	bl, 1
	jne	.label_95
	lea	rbp, [rsp + 0x20]
	mov	rdi, qword ptr [rsp]
	mov	rsi, rbp
	call	samedir_template
	mov	rbx, rax
	test	rbx, rbx
	je	.label_96
	mov	dword ptr [rsp + 8], r15d
	mov	qword ptr [rsp + 0x10], r14
	mov	dword ptr [rsp + 0x18], r13d
	mov	dword ptr [rsp + 0x1c], r12d
	lea	rdx, [rsp + 8]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:try_link
	mov	r8d, 6
	mov	rdi, rbx
	call	try_tempname_len
	mov	r15, rbp
	test	eax, eax
	je	.label_94
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_97
.label_96:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_95
.label_94:
	mov	edi, r13d
	mov	rsi, rbx
	mov	edx, r13d
	mov	rcx, qword ptr [rsp]
	call	renameat
	mov	ebp, 0xffffffff
	test	eax, eax
	je	.label_99
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_99:
	xor	edx, edx
	mov	edi, r13d
	mov	rsi, rbx
	call	unlinkat
.label_97:
	cmp	rbx, r15
	je	.label_95
	mov	rdi, rbx
	call	free
.label_95:
	mov	eax, ebp
	add	rsp, 0x128
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
	#Procedure 0x403280

	.globl samedir_template
	.type samedir_template, @function
samedir_template:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	call	last_component
	mov	rbx, rax
	sub	rbx, r15
	lea	rdi, [rbx + 9]
	cmp	rdi, 0x101
	jb	.label_100
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_101
.label_100:
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	__mempcpy_chk
	movabs	rcx, 0x5858585858587543
	mov	qword ptr [rax], rcx
	mov	byte ptr [rax + 8], 0
	mov	rax, r14
.label_101:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4032f0

	.globl try_link
	.type try_link, @function
try_link:
	mov	rax, rdi
	mov	edi, dword ptr [rsi]
	mov	rcx, qword ptr [rsi + 8]
	mov	edx, dword ptr [rsi + 0x10]
	mov	r8d, dword ptr [rsi + 0x14]
	mov	rsi, rcx
	mov	rcx, rax
	jmp	linkat
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403310

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
	mov	r15d, esi
	mov	r14, rdi
	test	ebp, ebp
	jns	.label_105
	mov	rdi, r14
	mov	esi, r15d
	mov	rdx, r13
	call	symlinkat
	xor	ebp, ebp
	test	eax, eax
	je	.label_102
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_105:
	cmp	ebp, 0x11
	jne	.label_102
	xor	bl, 1
	jne	.label_102
	lea	rbx, [rsp + 0x10]
	mov	rdi, r13
	mov	rsi, rbx
	call	samedir_template
	mov	r12, rax
	test	r12, r12
	je	.label_106
	mov	qword ptr [rsp], r14
	mov	dword ptr [rsp + 8], r15d
	lea	rdx, [rsp]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:try_symlink
	mov	r8d, 6
	mov	rdi, r12
	call	try_tempname_len
	test	eax, eax
	je	.label_104
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_103
.label_106:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_102
.label_104:
	mov	edi, r15d
	mov	rsi, r12
	mov	edx, r15d
	mov	rcx, r13
	call	renameat
	mov	ebp, 0xffffffff
	test	eax, eax
	je	.label_103
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edx, edx
	mov	edi, r15d
	mov	rsi, r12
	call	unlinkat
.label_103:
	cmp	r12, rbx
	je	.label_102
	mov	rdi, r12
	call	free
.label_102:
	mov	eax, ebp
	add	rsp, 0x118
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
	#Procedure 0x403410

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
	#Procedure 0x403430

	.globl relpath
	.type relpath, @function
relpath:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rsi
	mov	r14, rdi
	mov	qword ptr [rsp + 8], rdx
	mov	qword ptr [rsp], rcx
	mov	rdi, rbx
	mov	rsi, r14
	call	path_common_prefix
	test	eax, eax
	je	.label_109
	cdqe	
	add	r14, rax
	movzx	ecx, byte ptr [rbx + rax]
	cmp	ecx, 0x2f
	jne	.label_110
	lea	rbx, [rbx + rax + 1]
	jmp	.label_115
.label_109:
	xor	eax, eax
	jmp	.label_116
.label_110:
	add	rbx, rax
.label_115:
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2f
	jne	.label_118
	inc	r14
.label_118:
	cmp	byte ptr [rbx], 0
	je	.label_107
	lea	r15, [rsp + 8]
	lea	r12, [rsp]
	mov	edi, OFFSET FLAT:.str_1
	mov	rsi, r15
	mov	rdx, r12
	call	buffer_or_output
	mov	bpl, al
	jmp	.label_114
	nop	dword ptr [rax]
.label_112:
	inc	rbx
.label_114:
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2f
	je	.label_117
	test	al, al
	jne	.label_112
	jmp	.label_119
	nop	word ptr cs:[rax + rax]
.label_117:
	mov	edi, OFFSET FLAT:.str.1_0
	mov	rsi, r15
	mov	rdx, r12
	call	buffer_or_output
	and	bpl, 1
	or	bpl, al
	jmp	.label_112
.label_119:
	cmp	byte ptr [r14], 0
	je	.label_111
	lea	rbx, [rsp + 8]
	lea	r15, [rsp]
	mov	edi, OFFSET FLAT:.str_3
	mov	rsi, rbx
	mov	rdx, r15
	call	buffer_or_output
	and	bpl, 1
	or	bpl, al
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, r15
	call	buffer_or_output
	or	bpl, al
	jmp	.label_111
.label_107:
	cmp	byte ptr [r14], 0
	jne	.label_113
	mov	r14d, OFFSET FLAT:.str.2_0
.label_113:
	lea	rsi, [rsp + 8]
	lea	rdx, [rsp]
	mov	rdi, r14
	call	buffer_or_output
	mov	bpl, al
.label_111:
	and	bpl, 1
	je	.label_108
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x24
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	call	error
.label_108:
	test	bpl, bpl
	sete	al
.label_116:
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403590

	.globl path_common_prefix
	.type path_common_prefix, @function
path_common_prefix:
	movzx	eax, byte ptr [rdi + 1]
	cmp	eax, 0x2f
	sete	cl
	movzx	eax, byte ptr [rsi + 1]
	cmp	eax, 0x2f
	sete	dl
	xor	eax, eax
	xor	dl, cl
	jne	.label_123
	mov	dl, byte ptr [rdi]
	xor	r8d, r8d
	xor	eax, eax
	test	dl, dl
	je	.label_124
	nop	word ptr cs:[rax + rax]
.label_125:
	mov	cl, byte ptr [rsi + r8]
	test	cl, cl
	je	.label_120
	movzx	ecx, cl
	movzx	edx, dl
	cmp	edx, ecx
	jne	.label_120
	lea	rcx, [r8 + 1]
	cmp	edx, 0x2f
	cmove	eax, ecx
	mov	dl, byte ptr [rdi + r8 + 1]
	test	dl, dl
	mov	r8, rcx
	jne	.label_125
	add	rsi, rcx
	add	rdi, rcx
	mov	r8d, ecx
	jmp	.label_124
.label_120:
	add	rsi, r8
	cmp	byte ptr [rdi + r8], 0
	lea	rdi, [rdi + r8]
	jne	.label_126
.label_124:
	cmp	byte ptr [rsi], 0
	je	.label_121
	cmp	byte ptr [rdi], 0
	je	.label_122
.label_126:
	mov	dl, byte ptr [rsi]
.label_127:
	test	dl, dl
	jne	.label_123
	movzx	ecx, byte ptr [rdi]
	cmp	ecx, 0x2f
	jne	.label_123
	jmp	.label_121
.label_122:
	movzx	edx, byte ptr [rsi]
	cmp	edx, 0x2f
	jne	.label_127
.label_121:
	mov	eax, r8d
.label_123:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403630

	.globl buffer_or_output
	.type buffer_or_output, @function
buffer_or_output:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	r13, qword ptr [r15]
	test	r13, r13
	je	.label_128
	mov	rdi, r12
	call	strlen
	mov	rbx, rax
	mov	al, 1
	cmp	rbx, qword ptr [r14]
	jae	.label_129
	mov	rdx, rbx
	inc	rdx
	mov	rdi, r13
	mov	rsi, r12
	call	memcpy
	add	qword ptr [r15], rbx
	sub	qword ptr [r14], rbx
	jmp	.label_130
.label_128:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, r12
	call	fputs_unlocked
.label_130:
	xor	eax, eax
.label_129:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403690

	.globl set_simple_backup_suffix
	.type set_simple_backup_suffix, @function
set_simple_backup_suffix:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	jne	.label_131
	mov	edi, OFFSET FLAT:.str_4
	call	getenv
	mov	rbx, rax
	mov	eax, OFFSET FLAT:.str.1_1
	test	rbx, rbx
	je	.label_132
.label_131:
	mov	eax, OFFSET FLAT:.str.1_1
	cmp	byte ptr [rbx], 0
	je	.label_132
	mov	rdi, rbx
	call	last_component
	cmp	rbx, rax
	mov	eax, OFFSET FLAT:.str.1_1
	cmove	rax, rbx
.label_132:
	mov	qword ptr [word ptr [rip + simple_backup_suffix]],  rax
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4036e0

	.globl backupfile_internal
	.type backupfile_internal, @function
backupfile_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	dword ptr [rsp + 0x34], ecx
	mov	ebx, edx
	mov	r13, rsi
	mov	dword ptr [rsp + 0x1c], edi
	mov	rdi, r13
	call	last_component
	mov	rbp, rax
	sub	rbp, r13
	mov	rdi, rax
	call	strlen
	mov	r12, rax
	add	r12, rbp
	cmp	qword ptr [word ptr [rip + simple_backup_suffix]],  0
	jne	.label_140
	xor	edi, edi
	call	set_simple_backup_suffix
.label_140:
	mov	rdi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	call	strlen
	inc	rax
	mov	qword ptr [rsp + 0x20], rax
	cmp	rax, 9
	mov	ecx, 9
	cmovae	rcx, rax
	lea	rdi, [r12 + rcx + 1]
	mov	qword ptr [rsp + 0x10], rdi
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rsp + 0x50], rcx
	xor	eax, eax
	test	rcx, rcx
	je	.label_136
	mov	qword ptr [rsp + 0x48], 0
	mov	dword ptr [rsp + 0x44], 0xffffffff
	mov	qword ptr [rsp + 0x38], 0
	lea	rax, [r12 + 1]
	mov	qword ptr [rsp + 0x28], rax
	nop	
.label_137:
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x28]
	call	memcpy
	cmp	ebx, 1
	jne	.label_141
	mov	rdi, qword ptr [rsp + 0x50]
	add	rdi, r12
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdx, qword ptr [rsp + 0x20]
	call	memcpy
	mov	ebx, 1
	jmp	.label_133
	nop	word ptr [rax + rax]
.label_141:
	lea	rax, [rsp + 0x44]
	mov	qword ptr [rsp], rax
	mov	edi, dword ptr [rsp + 0x1c]
	lea	rsi, [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rcx, r12
	mov	r8, rbp
	lea	r9, [rsp + 0x48]
	call	numbered_backup
	cmp	eax, 1
	je	.label_138
	cmp	eax, 2
	je	.label_143
	cmp	eax, 3
	jne	.label_133
	jmp	.label_135
.label_143:
	cmp	ebx, 2
	jne	.label_138
	mov	rdi, qword ptr [rsp + 0x50]
	add	rdi, r12
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdx, qword ptr [rsp + 0x20]
	call	memcpy
	mov	ebx, 1
.label_138:
	mov	rdi, qword ptr [rsp + 0x50]
	mov	edx, dword ptr [rsp + 0x44]
	mov	rsi, r12
	lea	rcx, [rsp + 0x38]
	call	check_extension
.label_133:
	mov	eax, dword ptr [rsp + 0x34]
	test	al, al
	je	.label_134
	cmp	dword ptr [rsp + 0x44], 0
	jns	.label_139
	mov	dword ptr [rsp + 0x44], 0xffffff9c
	xor	ebp, ebp
.label_139:
	cmp	ebx, 1
	setne	al
	movzx	r8d, al
	mov	edx, dword ptr [rsp + 0x44]
	mov	rcx, qword ptr [rsp + 0x50]
	add	rcx, rbp
	mov	edi, 0xffffff9c
	mov	rsi, r13
	call	renameatu
	test	eax, eax
	je	.label_134
	call	__errno_location
	mov	r15, rax
	mov	r14d, dword ptr [r15]
	cmp	r14d, 0x11
	je	.label_137
	mov	rdi, qword ptr [rsp + 0x48]
	test	rdi, rdi
	je	.label_144
	call	closedir
.label_144:
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	dword ptr [r15], r14d
	xor	eax, eax
	jmp	.label_136
.label_134:
	mov	rdi, qword ptr [rsp + 0x48]
	test	rdi, rdi
	je	.label_142
	call	closedir
.label_142:
	mov	rax, qword ptr [rsp + 0x50]
	jmp	.label_136
.label_135:
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
.label_136:
	add	rsp, 0x58
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
	#Procedure 0x403900

	.globl numbered_backup
	.type numbered_backup, @function
numbered_backup:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r15, r9
	mov	qword ptr [rsp + 0x48], r8
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x18], rdx
	mov	qword ptr [rsp + 0x28], rsi
	mov	ebx, edi
	mov	r12, qword ptr [r15]
	mov	r14, qword ptr [rsi]
	lea	rbp, [r14 + r8]
	mov	rdi, rbp
	call	base_len
	mov	r13, rax
	mov	qword ptr [rsp + 0x38], r13
	test	r12, r12
	je	.label_154
	mov	rdi, r12
	call	rewinddir
	jmp	.label_159
.label_154:
	mov	qword ptr [rsp + 0x38], r13
	mov	rcx, qword ptr [rsp + 0x90]
	mov	r13w, word ptr [rbp]
	mov	word ptr [rbp], 0x2e
	xor	edx, edx
	mov	edi, ebx
	mov	rsi, r14
	call	opendirat
	mov	r12, rax
	test	r12, r12
	je	.label_163
	mov	word ptr [rbp], r13w
	mov	r13, qword ptr [rsp + 0x38]
	mov	byte ptr [rbp + r13 + 4], 0
	mov	dword ptr [rbp + r13], 0x7e317e2e
	mov	qword ptr [r15], r12
.label_159:
	mov	rdi, r12
	call	readdir
	mov	rbp, rax
	test	rbp, rbp
	je	.label_151
	lea	rax, [r13 + 4]
	mov	qword ptr [rsp + 0x50], rax
	lea	rax, [r13 + 2]
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rsp + 0x20]
	lea	rax, [rax + 4]
	mov	qword ptr [rsp], rax
	lea	rax, [r13 + 0x17]
	mov	qword ptr [rsp + 0x10], rax
	mov	eax, 2
	mov	qword ptr [rsp + 0x30], rax
	mov	eax, 1
	mov	qword ptr [rsp + 8], rax
	jmp	.label_152
.label_157:
	mov	r13d, 1
.label_148:
	movzx	eax, al
	cmp	eax, 0x7e
	jne	.label_150
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbp, [rbp + rax + 0x15]
	cmp	byte ptr [r13 + rbp + 1], 0
	jne	.label_150
	cmp	qword ptr [rsp + 8], r13
	jb	.label_149
	jne	.label_150
	mov	rax, qword ptr [rsp + 0x20]
	lea	rdi, [r14 + rax + 2]
	mov	rsi, rbp
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	jle	.label_149
.label_150:
	mov	r15, r14
	mov	r13, qword ptr [rsp + 0x38]
	jmp	.label_153
.label_149:
	movzx	ebx, bl
	lea	rcx, [rbx + r13]
	mov	qword ptr [rsp + 8], rcx
	mov	rax, qword ptr [rsp]
	lea	rdx, [rax + rcx]
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, rdx
	jae	.label_156
	mov	rax, rdx
	shr	rax, 0x3e
	sete	cl
	shl	rdx, cl
	mov	qword ptr [rsp + 0x18], rdx
	mov	rdi, r14
	mov	rsi, rdx
	call	realloc
	mov	r15, rax
	test	r15, r15
	mov	rax, qword ptr [rsp + 0x18]
	jne	.label_164
	jmp	.label_146
.label_156:
	mov	r15, r14
.label_164:
	mov	qword ptr [rsp + 0x18], rax
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [r15 + rcx]
	mov	byte ptr [r15 + rcx], 0x2e
	mov	rdx, rbx
	mov	qword ptr [rsp + 0x30], rdx
	lea	rbx, [rax + rdx]
	mov	word ptr [r15 + rcx + 1], 0x307e
	lea	rdi, [rdx + rax + 2]
	lea	rdx, [r13 + 2]
	mov	rsi, rbp
	call	memcpy
	lea	rax, [r13 + rbx + 1]
	movzx	ecx, byte ptr [r13 + rbx + 1]
	jmp	.label_158
	nop	word ptr cs:[rax + rax]
.label_160:
	mov	byte ptr [rax], 0x30
	movzx	ecx, byte ptr [rax - 1]
	dec	rax
.label_158:
	cmp	ecx, 0x39
	je	.label_160
	inc	cl
	mov	byte ptr [rax], cl
	mov	r13, qword ptr [rsp + 0x38]
	jmp	.label_153
	nop	dword ptr [rax]
.label_152:
	lea	rbx, [rbp + 0x13]
	mov	rdi, rbx
	call	strlen
	cmp	rax, qword ptr [rsp + 0x50]
	jb	.label_147
	mov	rax, qword ptr [rsp + 0x48]
	lea	rdi, [r14 + rax]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x40]
	call	memcmp
	test	eax, eax
	jne	.label_147
	mov	al, byte ptr [rbp + r13 + 0x15]
	mov	cl, al
	add	cl, 0xcf
	movzx	ecx, cl
	cmp	ecx, 8
	ja	.label_147
	lea	rcx, [rbp + r13 + 0x13]
	movzx	eax, al
	cmp	eax, 0x39
	sete	bl
	movsx	eax, byte ptr [rcx + 3]
	mov	ecx, eax
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_157
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rcx, [rbp + rcx]
	xor	r13d, r13d
.label_162:
	movzx	eax, al
	cmp	eax, 0x39
	sete	al
	and	bl, al
	movsx	eax, byte ptr [rcx + r13]
	mov	edx, eax
	add	edx, -0x30
	inc	r13
	cmp	edx, 0xa
	jb	.label_162
	inc	r13
	jmp	.label_148
	nop	word ptr cs:[rax + rax]
.label_147:
	mov	r15, r14
.label_153:
	mov	rdi, r12
	call	readdir
	mov	rbp, rax
	test	rbp, rbp
	mov	r14, r15
	jne	.label_152
	jmp	.label_155
.label_151:
	mov	eax, 2
	mov	qword ptr [rsp + 0x30], rax
	mov	r15, r14
.label_155:
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], r15
	mov	rcx, qword ptr [rsp + 0x30]
.label_145:
	mov	eax, ecx
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_163:
	call	__errno_location
	mov	ecx, 3
	cmp	dword ptr [rax], 0xc
	je	.label_161
	mov	ecx, 2
.label_161:
	mov	word ptr [rbp], r13w
	mov	rax, qword ptr [rsp + 0x38]
	mov	byte ptr [rbp + rax + 4], 0
	mov	dword ptr [rbp + rax], 0x7e317e2e
	jmp	.label_145
.label_146:
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], r14
	mov	ecx, 3
	jmp	.label_145
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c30

	.globl check_extension
	.type check_extension, @function
check_extension:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rcx
	mov	ebp, edx
	mov	r15, rsi
	mov	rbx, rdi
	call	last_component
	mov	r14, rax
	mov	rdi, r14
	call	base_len
	mov	r13, rax
	mov	eax, 0xff
	cmp	r13, 0xf
	jb	.label_168
	cmp	qword ptr [r12], 0
	jne	.label_165
	test	ebp, ebp
	js	.label_167
	call	__errno_location
	mov	qword ptr [rsp], rax
	mov	dword ptr [rax], 0
	mov	esi, 3
	mov	edi, ebp
	call	fpathconf
	mov	rcx, qword ptr [rsp]
	cmp	dword ptr [rcx], 1
	sbb	rax, 0
	jmp	.label_166
.label_167:
	mov	ax, word ptr [r14]
	mov	word ptr [rsp], ax
	mov	word ptr [r14], 0x2e
	call	__errno_location
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	mov	esi, 3
	mov	rdi, rbx
	call	pathconf
	cmp	dword ptr [rbp], 1
	sbb	rax, 0
	mov	cx, word ptr [rsp]
	mov	word ptr [r14], cx
.label_166:
	cmp	rax, -1
	mov	ecx, 0xe
	mov	rdx, -1
	cmovl	rdx, rcx
	test	rax, rax
	cmovns	rdx, rax
	mov	qword ptr [r12], rdx
.label_165:
	mov	rax, qword ptr [r12]
.label_168:
	cmp	rax, r13
	jae	.label_169
	add	rbx, r15
	sub	rbx, r14
	cmp	rax, rbx
	lea	rax, [rax - 1]
	cmova	rax, rbx
	mov	word ptr [r14 + rax], 0x7e
.label_169:
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
	#Procedure 0x403d30

	.globl find_backup_file_name
	.type find_backup_file_name, @function
find_backup_file_name:
	push	rax
	xor	ecx, ecx
	call	backupfile_internal
	test	rax, rax
	je	.label_170
	pop	rcx
	ret	
.label_170:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d50

	.globl get_version
	.type get_version, @function
get_version:
	mov	eax, 2
	test	rsi, rsi
	je	.label_171
	cmp	byte ptr [rsi], 0
	je	.label_171
	push	rax
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + backup_types]]
	add	rsp, 8
.label_171:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d90

	.globl xget_version
	.type xget_version, @function
xget_version:
	test	rsi, rsi
	je	.label_172
	cmp	byte ptr [rsi], 0
	je	.label_172
	jmp	get_version
.label_172:
	push	rax
	mov	edi, OFFSET FLAT:.str.1_2
	call	getenv
	mov	edi, OFFSET FLAT:.str_5
	mov	rsi, rax
	pop	rax
	jmp	get_version
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403dc0

	.globl canonicalize_filename_mode
	.type canonicalize_filename_mode, @function
canonicalize_filename_mode:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xe8
	mov	ebx, esi
	mov	r15, rdi
	mov	qword ptr [rsp + 0xe0], 0
	mov	r13d, ebx
	and	r13d, 3
	lea	eax, [rbx + 3]
	test	eax, r13d
	jne	.label_220
	test	r15, r15
	je	.label_220
	movzx	eax, byte ptr [r15]
	cmp	eax, 0x2f
	je	.label_225
	test	al, al
	jne	.label_227
	call	__errno_location
	mov	dword ptr [rax], 2
	jmp	.label_177
.label_220:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_177:
	xor	ebp, ebp
.label_193:
	mov	rax, rbp
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_225:
	mov	edi, 0x1000
	call	xmalloc
	mov	rdi, rax
	mov	byte ptr [rdi], 0x2f
	lea	rsi, [rdi + 0x1000]
	lea	r14, [rdi + 1]
	jmp	.label_187
.label_227:
	call	xgetcwd
	xor	ebp, ebp
	test	rax, rax
	je	.label_193
	xor	esi, esi
	mov	rbp, rax
	mov	rdi, rbp
	call	__rawmemchr
	mov	rdi, rbp
	mov	rsi, rax
	mov	r14, rsi
	sub	r14, rdi
	cmp	r14, 0xfff
	jg	.label_198
	mov	esi, 0x1000
	call	xrealloc
	mov	rdi, rax
	add	r14, rdi
	mov	rsi, rdi
	add	rsi, 0x1000
	jmp	.label_187
.label_198:
	mov	r14, rsi
.label_187:
	cmp	byte ptr [r15], 0
	je	.label_212
	mov	eax, ebx
	and	eax, 4
	mov	dword ptr [rsp + 0x14], eax
	and	ebx, 7
	mov	qword ptr [rsp + 0x20], rbx
	cmp	r13d, 2
	setne	al
	movzx	eax, al
	lea	eax, [rax + rax*8 + 4]
	mov	dword ptr [rsp + 0x10], eax
	xor	eax, eax
	mov	qword ptr [rsp + 0x40], rax
	mov	rbx, r15
	mov	qword ptr [rsp + 0x18], r15
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 0x3c], eax
.label_189:
	lea	rax, [rdi + 1]
	mov	r12, r14
	mov	rbp, rbx
.label_210:
	mov	rbx, rbp
.label_197:
	mov	rbp, rbx
	movzx	ecx, byte ptr [rbp]
	lea	rbx, [rbp + 1]
	cmp	ecx, 0x2f
	mov	r15d, 0
	je	.label_197
	jmp	.label_175
	nop	dword ptr [rax + rax]
.label_201:
	inc	r15
.label_175:
	mov	cl, byte ptr [rbp + r15]
	test	cl, cl
	je	.label_202
	movzx	ecx, cl
	cmp	ecx, 0x2f
	jne	.label_201
.label_202:
	test	r15, r15
	je	.label_182
	lea	rbx, [rbp + r15]
	cmp	r15, 2
	je	.label_184
	cmp	r15, 1
	jne	.label_186
	movzx	ecx, byte ptr [rbp]
	cmp	ecx, 0x2e
	je	.label_188
	jmp	.label_186
	nop	dword ptr [rax]
.label_184:
	movzx	ecx, byte ptr [rbp]
	cmp	ecx, 0x2e
	jne	.label_186
	movzx	ecx, byte ptr [rbp + 1]
	cmp	ecx, 0x2e
	jne	.label_186
	cmp	r12, rax
	ja	.label_196
.label_188:
	cmp	byte ptr [rbx], 0
	jne	.label_197
	jmp	.label_200
.label_196:
	add	rbp, r15
	dec	r12
	mov	rcx, r12
	nop	word ptr [rax + rax]
.label_208:
	mov	r12, rcx
	cmp	r12, rdi
	jbe	.label_204
	lea	rcx, [r12 - 1]
	movzx	edx, byte ptr [r12 - 1]
	cmp	edx, 0x2f
	jne	.label_208
.label_204:
	cmp	byte ptr [rbp], 0
	jne	.label_210
	jmp	.label_213
.label_186:
	movzx	eax, byte ptr [r12 - 1]
	cmp	eax, 0x2f
	je	.label_214
	mov	byte ptr [r12], 0x2f
	inc	r12
.label_214:
	lea	rax, [r12 + r15]
	cmp	rax, rsi
	jae	.label_219
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x48], rdi
	jmp	.label_221
.label_219:
	sub	r12, rdi
	sub	rsi, rdi
	lea	r14, [r15 + 1]
	cmp	r15, 0xfff
	mov	eax, 0x1000
	cmovle	r14, rax
	add	r14, rsi
	mov	rsi, r14
	call	xrealloc
	mov	qword ptr [rsp + 0x48], rax
	add	r14, rax
	add	r12, rax
	mov	qword ptr [rsp + 0x28], r14
.label_221:
	lea	rax, [rbp + r15]
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, r12
	mov	rsi, rbp
	mov	rdx, r15
	call	memcpy
	lea	r14, [r12 + r15]
	mov	byte ptr [r12 + r15], 0
	mov	rax, qword ptr [rsp + 0x20]
	cmp	eax, 6
	je	.label_181
	cmp	dword ptr [rsp + 0x14], 0
	jne	.label_185
	mov	rdi, qword ptr [rsp + 0x48]
	lea	rsi, [rsp + 0x50]
	call	__lstat
	jmp	.label_190
.label_185:
	mov	rdi, qword ptr [rsp + 0x48]
	lea	rsi, [rsp + 0x50]
	call	stat
.label_190:
	test	eax, eax
	je	.label_194
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	r13d, 1
	je	.label_195
	mov	dword ptr [rsp + 0x3c], eax
	test	r13d, r13d
	je	.label_199
.label_181:
	mov	dword ptr [rsp + 0x68], 0
.label_194:
	mov	eax, dword ptr [rsp + 0x68]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0xa000
	jne	.label_174
	lea	rdi, [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0x18]
	lea	rdx, [rsp + 0x50]
	call	seen_triple
	test	al, al
	je	.label_215
	cmp	r13d, 2
	mov	eax, dword ptr [rsp + 0x3c]
	mov	ecx, 0x28
	cmovne	eax, ecx
	mov	dword ptr [rsp + 0x3c], eax
	mov	eax, dword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x30]
	jmp	.label_217
.label_215:
	mov	rsi, qword ptr [rsp + 0x80]
	mov	rdi, qword ptr [rsp + 0x48]
	call	areadlink_with_size
	test	rax, rax
	jne	.label_223
	cmp	r13d, 2
	mov	rbx, qword ptr [rsp + 0x30]
	jne	.label_176
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_176
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x28]
	jmp	.label_224
.label_195:
	mov	esi, 0x2f
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rdi, rbx
	mov	r12d, eax
	call	__strspn_c1
	add	rbp, rax
	cmp	byte ptr [r15 + rbp], 0
	setne	al
	cmp	r12d, 2
	mov	dword ptr [rsp + 0x3c], r12d
	movzx	eax, al
	lea	eax, [rax + rax*8 + 4]
	mov	ecx, 0xd
	cmovne	eax, ecx
	mov	rsi, qword ptr [rsp + 0x28]
.label_217:
	cmp	eax, 4
	jne	.label_180
	mov	rdi, qword ptr [rsp + 0x48]
.label_224:
	cmp	byte ptr [rbx], 0
	jne	.label_189
	jmp	.label_173
.label_174:
	cmp	eax, 0x4000
	mov	rdi, qword ptr [rsp + 0x48]
	jne	.label_203
	add	rbp, r15
	mov	rax, qword ptr [rsp + 8]
	mov	rbx, rbp
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x18]
	jmp	.label_205
.label_203:
	lea	rbx, [rbp + r15]
	cmp	r13d, 2
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x18]
	je	.label_211
	mov	cl, byte ptr [rbp + r15]
	mov	eax, 0x14
	test	cl, cl
	jne	.label_216
	mov	rax, qword ptr [rsp + 8]
	jmp	.label_205
.label_223:
	mov	rdi, rax
	mov	qword ptr [rsp], rax
	call	strlen
	mov	qword ptr [rsp + 0x18], rax
	add	r15, rbp
	mov	rdi, r15
	call	strlen
	mov	rdx, rax
	mov	rax, qword ptr [rsp + 0x18]
	lea	rcx, [rax + rdx + 1]
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_222
	mov	qword ptr [rsp + 0x30], rdx
	cmp	rcx, rax
	jbe	.label_226
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, rcx
	mov	qword ptr [rsp + 8], rcx
	call	xrealloc
	jmp	.label_192
.label_211:
	mov	rax, qword ptr [rsp + 8]
	jmp	.label_205
.label_222:
	cmp	rcx, 0x1000
	mov	eax, 0x1000
	cmovbe	rcx, rax
	mov	qword ptr [rsp + 8], rcx
	mov	rdi, rcx
	mov	qword ptr [rsp + 0x30], rdx
	call	xmalloc
	jmp	.label_192
.label_226:
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x40]
.label_192:
	mov	rdx, qword ptr [rsp + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, qword ptr [rsp + 0x18]
	add	rdi, rax
	inc	rdx
	mov	rsi, r15
	call	memmove
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r15, qword ptr [rsp]
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x18]
	call	memcpy
	mov	rdx, qword ptr [rsp + 0x48]
	lea	rax, [rdx + 1]
	movzx	ecx, byte ptr [r15]
	cmp	ecx, 0x2f
	jne	.label_178
	mov	byte ptr [rdx], 0x2f
	mov	r14, rax
	jmp	.label_207
.label_178:
	cmp	r14, rax
	jbe	.label_207
	sub	rbx, rbp
	lea	rax, [r12 + rbx - 1]
.label_209:
	mov	r14, rax
	cmp	r14, rdx
	jbe	.label_207
	lea	rax, [r14 - 1]
	movzx	ecx, byte ptr [r14 - 1]
	cmp	ecx, 0x2f
	jne	.label_209
.label_207:
	mov	rbx, rdx
	mov	rdi, r15
	call	free
	mov	rdi, rbx
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rax, rbx
	mov	qword ptr [rsp + 0x40], rax
	mov	rdx, rbx
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rsp + 8]
.label_205:
	mov	qword ptr [rsp + 0x18], rdx
	cmp	byte ptr [rbx], 0
	mov	qword ptr [rsp + 8], rax
	jne	.label_189
	jmp	.label_173
.label_212:
	xor	eax, eax
	mov	qword ptr [rsp + 0x40], rax
	jmp	.label_173
.label_182:
	mov	r14, r12
	jmp	.label_173
.label_200:
	mov	r14, r12
.label_173:
	lea	rax, [rdi + 1]
	cmp	r14, rax
	jbe	.label_179
	movzx	eax, byte ptr [r14 - 1]
	cmp	eax, 0x2f
	jne	.label_179
	dec	r14
.label_179:
	mov	byte ptr [r14], 0
	lea	rax, [r14 + 1]
	cmp	rsi, rax
	je	.label_183
	mov	esi, 1
	sub	rsi, rdi
	add	rsi, r14
	call	xrealloc
	mov	rbp, rax
	jmp	.label_191
.label_183:
	mov	rbp, rdi
.label_191:
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	mov	rdi, qword ptr [rsp + 0xe0]
	test	rdi, rdi
	je	.label_193
	call	hash_free
	jmp	.label_193
.label_176:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rdi, qword ptr [rsp + 0x48]
	jmp	.label_206
.label_180:
	cmp	eax, 0xd
	mov	rdi, qword ptr [rsp + 0x48]
	mov	r14d, dword ptr [rsp + 0x3c]
	je	.label_206
	jmp	.label_193
.label_199:
	mov	eax, dword ptr [rsp + 0x3c]
	mov	rdi, qword ptr [rsp + 0x48]
.label_216:
	mov	r14d, eax
.label_206:
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [rsp + 0xe0]
	test	rdi, rdi
	je	.label_218
	call	hash_free
.label_218:
	call	__errno_location
	mov	dword ptr [rax], r14d
	jmp	.label_177
.label_213:
	mov	r14, r12
	jmp	.label_173
	nop	
	.section	.text
	.align	32
	#Procedure 0x4043e0

	.globl seen_triple
	.type seen_triple, @function
seen_triple:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	cmp	qword ptr [rbx], 0
	jne	.label_228
	mov	edi, 7
	xor	esi, esi
	mov	edx, OFFSET FLAT:triple_hash
	mov	ecx, OFFSET FLAT:triple_compare_ino_str
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	mov	qword ptr [rbx], rax
	test	rax, rax
	je	.label_229
.label_228:
	mov	rdi, qword ptr [rbx]
	mov	rsi, r15
	mov	rdx, r14
	call	seen_file
	mov	cl, al
	mov	al, 1
	test	cl, cl
	jne	.label_230
	mov	rdi, qword ptr [rbx]
	mov	rsi, r15
	mov	rdx, r14
	call	record_file
	xor	eax, eax
.label_230:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_229:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404450
	.globl close_stdin_set_file_name
	.type close_stdin_set_file_name, @function
close_stdin_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404460

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
	je	.label_232
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
	test	eax, eax
	jne	.label_232
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fflush
	test	eax, eax
	setne	bpl
.label_232:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	close_stream
	test	bpl, bpl
	jne	.label_233
	test	eax, eax
	jne	.label_233
	pop	rbx
	pop	r14
	pop	rbp
	jmp	close_stdout
.label_233:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_6
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_234
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	jmp	.label_231
.label_234:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_3
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
.label_231:
	call	close_stdout
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404530
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name_0]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404540
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404550

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_235
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_237
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_237
.label_235:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_236
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_237:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_7
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name_0]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_238
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_236:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_238:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_3
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x404610

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rax
	call	mdir_name
	test	rax, rax
	je	.label_239
	pop	rcx
	ret	
.label_239:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404630

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
.label_241:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_240
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_241
.label_240:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404670

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	call	dir_len
	mov	rbx, rax
	test	rbx, rbx
	sete	al
	movzx	eax, al
	lea	rdi, [rbx + rax + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_242
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	test	rbx, rbx
	jne	.label_243
	mov	byte ptr [r14 + rbx], 0x2e
	mov	ebx, 1
.label_243:
	mov	byte ptr [r14 + rbx], 0
	mov	rax, r14
.label_242:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4046d0

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_244:
	movzx	eax, byte ptr [rdi + 1]
	inc	rdi
	cmp	eax, 0x2f
	je	.label_244
	xor	ecx, ecx
	mov	rax, rdi
	jmp	.label_247
	nop	word ptr cs:[rax + rax]
.label_246:
	inc	rax
	mov	cl, dl
.label_247:
	movzx	esi, byte ptr [rax]
	mov	dl, 1
	cmp	esi, 0x2f
	je	.label_246
	test	sil, sil
	je	.label_248
	mov	dl, cl
	and	dl, 1
	je	.label_245
	xor	ecx, ecx
.label_245:
	test	dl, dl
	cmovne	rdi, rax
	mov	dl, cl
	jmp	.label_246
.label_248:
	mov	rax, rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404730

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_250:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_249
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_250
.label_249:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404760

	.globl strip_trailing_slashes
	.type strip_trailing_slashes, @function
strip_trailing_slashes:
	push	rbx
	mov	rbx, rdi
	call	last_component
	cmp	byte ptr [rax], 0
	je	.label_251
	mov	rbx, rax
.label_251:
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
	#Procedure 0x404790

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
	je	.label_252
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
	je	.label_253
	cmp	rax, rbx
	je	.label_252
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	triple_free
.label_252:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_253:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404810

	.globl seen_file
	.type seen_file, @function
seen_file:
	test	rdi, rdi
	je	.label_254
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
.label_254:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x404850

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rax
	call	mfile_name_concat
	test	rax, rax
	je	.label_255
	pop	rcx
	ret	
.label_255:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404870

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
	je	.label_259
	movzx	ecx, byte ptr [rbx + r13 - 1]
	cmp	ecx, 0x2f
	jne	.label_260
	mov	qword ptr [rsp + 8], r14
	xor	r12d, r12d
	jmp	.label_263
.label_259:
	movzx	ecx, byte ptr [r14]
	mov	r12b, 0x2e
	cmp	ecx, 0x2f
	je	.label_258
	jmp	.label_261
.label_260:
	movzx	ecx, byte ptr [r14]
	cmp	ecx, 0x2f
	jne	.label_262
.label_261:
	xor	r12d, r12d
	jmp	.label_258
.label_262:
	mov	r12b, 0x2f
.label_258:
	mov	qword ptr [rsp + 8], r14
.label_263:
	test	r12b, r12b
	setne	cl
	movzx	ebp, cl
	lea	rcx, [r15 + rbx]
	lea	rdi, [rbp + rcx + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_257
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	add	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_256
	mov	qword ptr [rax], rbp
.label_256:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r15
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	mov	rax, r14
.label_257:
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
	#Procedure 0x404960

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404970

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404980

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404990

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	mov	rcx, qword ptr [rdi]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_264
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_266:
	cmp	qword ptr [rcx], 0
	mov	esi, 0
	mov	rdi, rcx
	je	.label_265
	nop	
.label_267:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_267
	cmp	rsi, rax
	cmova	rax, rsi
.label_265:
	add	rcx, 0x10
	cmp	rcx, rdx
	jb	.label_266
.label_264:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4049e0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rsi, qword ptr [rdi]
	xor	ecx, ecx
	cmp	rsi, qword ptr [rdi + 8]
	mov	edx, 0
	jae	.label_268
	mov	r8, qword ptr [rdi + 8]
	xor	ecx, ecx
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_273:
	cmp	qword ptr [rsi], 0
	mov	rax, rsi
	je	.label_269
	nop	dword ptr [rax]
.label_271:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_271
	inc	rdx
.label_269:
	add	rsi, 0x10
	cmp	rsi, r8
	jb	.label_273
.label_268:
	cmp	rdx, qword ptr [rdi + 0x18]
	jne	.label_270
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_272
.label_270:
	xor	eax, eax
.label_272:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404a40
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
	mov	edx, OFFSET FLAT:.str_8
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, rbp
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.1_4
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r15
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_274]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_275]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_276]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.2_1
	mov	al, 1
	mov	rdi, r13
	mov	rcx, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_0
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
	#Procedure 0x404b30

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
	je	.label_277
	test	rbx, rbx
	je	.label_277
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_279:
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	je	.label_278
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_278
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_279
	jmp	.label_277
.label_278:
	mov	r15, qword ptr [rbx]
.label_277:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x404b90

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
	jae	.label_280
	shl	rax, 4
	add	rax, qword ptr [rbx]
	pop	rbx
	ret	
.label_280:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bc0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_281
	mov	rcx, qword ptr [rdi]
	jmp	.label_283
	nop	
.label_284:
	add	rcx, 0x10
.label_283:
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_282
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_284
.label_281:
	ret	
.label_282:
	push	rax
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404bf0
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
.label_289:
	cmp	qword ptr [rcx], rbx
	jne	.label_285
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_287
.label_285:
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_289
	mov	rdx, qword ptr [r14 + 8]
	add	rax, 0x10
	nop	
.label_288:
	cmp	rax, rdx
	mov	ecx, 0
	jae	.label_286
	mov	rcx, qword ptr [rax]
	add	rax, 0x10
	test	rcx, rcx
	je	.label_288
	jmp	.label_286
.label_287:
	mov	rcx, qword ptr [rdx]
.label_286:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c60
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r8, qword ptr [rdi]
	xor	eax, eax
	jmp	.label_290
	nop	word ptr [rax + rax]
.label_291:
	add	r8, 0x10
.label_290:
	cmp	r8, qword ptr [rdi + 8]
	jae	.label_292
	cmp	qword ptr [r8], 0
	je	.label_291
	test	r8, r8
	mov	r9, r8
	je	.label_291
	nop	dword ptr [rax + rax]
.label_293:
	cmp	rax, rdx
	jae	.label_292
	mov	rcx, qword ptr [r9]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r9, qword ptr [r9 + 8]
	test	r9, r9
	jne	.label_293
	jmp	.label_291
.label_292:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404cb0
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
	jmp	.label_294
	nop	dword ptr [rax]
.label_295:
	add	r13, 0x10
.label_294:
	cmp	r13, qword ptr [r12 + 8]
	jae	.label_296
	cmp	qword ptr [r13], 0
	je	.label_295
	test	r13, r13
	mov	rbp, r13
	je	.label_295
	nop	word ptr [rax + rax]
.label_297:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_296
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	jne	.label_297
	jmp	.label_295
.label_296:
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
	#Procedure 0x404d20
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_298
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_299:
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
	jne	.label_299
.label_298:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d60
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_300]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d80

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
	je	.label_302
	mov	qword ptr [rsp], rbx
	test	r12, r12
	mov	ebx, OFFSET FLAT:default_tuning
	cmovne	rbx, r12
	mov	qword ptr [r13 + 0x28], rbx
	mov	rdi, r13
	call	check_tuning
	test	al, al
	je	.label_301
	mov	rdi, r15
	mov	rsi, rbx
	call	compute_bucket_size
	mov	qword ptr [r13 + 0x10], rax
	test	rax, rax
	je	.label_301
	mov	esi, 0x10
	mov	rdi, rax
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_301
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
	jmp	.label_302
.label_301:
	mov	rdi, r13
	call	free
	xor	eax, eax
.label_302:
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
	#Procedure 0x404e60

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
	#Procedure 0x404e80

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e90

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	mov	rcx, qword ptr [rdi + 0x28]
	mov	edx, OFFSET FLAT:default_tuning
	mov	al, 1
	cmp	rcx, rdx
	je	.label_303
	movss	xmm0, dword ptr [rcx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_304]]
	jbe	.label_305
	movss	xmm1,  dword ptr [dword ptr [rip + label_308]]
	ucomiss	xmm1, xmm0
	jbe	.label_305
	movss	xmm1, dword ptr [rcx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_307]]
	jbe	.label_305
	movss	xmm1, dword ptr [rcx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_305
	addss	xmm1,  dword ptr [dword ptr [rip + label_304]]
	ucomiss	xmm0, xmm1
	jbe	.label_305
	movss	xmm0, dword ptr [rcx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_306]]
	ucomiss	xmm2, xmm0
	jb	.label_305
	ucomiss	xmm0, xmm1
	ja	.label_303
.label_305:
	mov	qword ptr [word ptr [rdi + 40]], OFFSET FLAT:default_tuning
	xor	eax, eax
.label_303:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f10

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	cmp	byte ptr [rsi + 0x10], 0
	jne	.label_309
	mov	eax, edi
	and	eax, 1
	test	rdi, rdi
	js	.label_314
	cvtsi2ss	xmm0, rdi
	jmp	.label_310
.label_314:
	shr	rdi, 1
	or	rax, rdi
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_310:
	divss	xmm0, dword ptr [rsi + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_311]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rdi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rdi, rcx
	xor	eax, eax
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_312]]
	jae	.label_313
.label_309:
	push	rax
	call	next_prime
	mov	rcx, rax
	xor	eax, eax
	mov	rdx, rcx
	shr	rdx, 0x3c
	cmove	rax, rcx
	add	rsp, 8
.label_313:
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404f90
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	jmp	.label_320
	nop	dword ptr [rax]
.label_319:
	add	r14, 0x10
.label_320:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_317
	cmp	qword ptr [r14], 0
	je	.label_319
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_315
	nop	word ptr cs:[rax + rax]
.label_321:
	test	cl, 1
	je	.label_318
	mov	rdi, qword ptr [rbx]
	call	rax
.label_318:
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
	jne	.label_321
.label_315:
	test	cl, cl
	je	.label_316
	mov	rdi, qword ptr [r14]
	call	rax
.label_316:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	jmp	.label_319
.label_317:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405030

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_330
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_330
	mov	r14, qword ptr [r15]
	jmp	.label_326
	nop	dword ptr [rax + rax]
.label_322:
	add	r14, 0x10
.label_326:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_330
	cmp	qword ptr [r14], 0
	je	.label_322
	test	r14, r14
	mov	rbx, r14
	je	.label_322
	nop	dword ptr [rax + rax]
.label_331:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r15 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_331
	jmp	.label_322
.label_330:
	mov	r14, qword ptr [r15]
	jmp	.label_324
	nop	word ptr [rax + rax]
.label_323:
	add	r14, 0x10
.label_324:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_327
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_323
	nop	word ptr cs:[rax + rax]
.label_328:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_328
	jmp	.label_323
.label_327:
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_325
	nop	dword ptr [rax]
.label_329:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_329
.label_325:
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
	#Procedure 0x405100

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
	je	.label_332
	mov	r14b, 1
	cmp	rbp, qword ptr [rbx + 0x10]
	je	.label_334
	mov	esi, 0x10
	mov	rdi, rbp
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_332
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
	je	.label_333
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
	jmp	.label_334
.label_333:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	lea	rsi, [rsp]
	mov	edx, 1
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_335
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_335
	mov	rdi, qword ptr [rsp]
	call	free
.label_332:
	xor	r14d, r14d
.label_334:
	mov	al, r14b
	add	rsp, 0x50
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_335:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405230

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
	jae	.label_341
	mov	dword ptr [rsp + 4], edx
	nop	word ptr cs:[rax + rax]
.label_340:
	cmp	qword ptr [r15], 0
	je	.label_337
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	je	.label_343
	nop	word ptr cs:[rax + rax]
.label_336:
	mov	r13, qword ptr [rbx]
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rax], 0
	je	.label_338
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rax + 8], rbx
	jmp	.label_339
	nop	word ptr cs:[rax + rax]
.label_338:
	mov	qword ptr [rax], r13
	inc	qword ptr [r14 + 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	free_entry
.label_339:
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_336
.label_343:
	mov	r13, qword ptr [r15]
	mov	qword ptr [r15 + 8], 0
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	jne	.label_337
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbx, rax
	cmp	qword ptr [rbx], 0
	je	.label_342
	mov	rdi, r14
	call	allocate_entry
	test	rax, rax
	je	.label_344
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbx + 8], rax
	jmp	.label_345
.label_342:
	mov	qword ptr [rbx], r13
	inc	qword ptr [r14 + 0x18]
.label_345:
	mov	qword ptr [r15], 0
	dec	qword ptr [r12 + 0x18]
.label_337:
	add	r15, 0x10
	cmp	r15, qword ptr [r12 + 8]
	jb	.label_340
	mov	al, 1
	jmp	.label_341
.label_344:
	xor	eax, eax
.label_341:
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
	#Procedure 0x405350

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
	je	.label_350
	lea	rdx, [rsp]
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	je	.label_360
	test	rbx, rbx
	je	.label_346
	mov	qword ptr [rbx], rax
	jmp	.label_346
.label_360:
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_352
	cvtsi2ss	xmm0, rcx
	jmp	.label_357
.label_352:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_357:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_355
	cvtsi2ss	xmm1, rax
	jmp	.label_349
.label_355:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_349:
	mulss	xmm1, dword ptr [rcx + 8]
	ucomiss	xmm0, xmm1
	jbe	.label_356
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_359
	cvtsi2ss	xmm2, rcx
	jmp	.label_347
.label_359:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm2, rdx
	addss	xmm2, xmm2
.label_347:
	mov	rcx, qword ptr [r15 + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_354
	cvtsi2ss	xmm0, rax
	jmp	.label_353
.label_354:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_353:
	movaps	xmm3, xmm1
	mulss	xmm3, xmm0
	ucomiss	xmm2, xmm3
	jbe	.label_356
	cmp	byte ptr [rcx + 0x10], 0
	mulss	xmm0, dword ptr [rcx + 0xc]
	jne	.label_351
	mulss	xmm0, xmm1
.label_351:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_312]]
	jae	.label_346
	movss	xmm1,  dword ptr [dword ptr [rip + label_311]]
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
	je	.label_346
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	jne	.label_350
.label_356:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_348
	mov	rdi, r15
	call	allocate_entry
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_346
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx + 8], rax
	inc	qword ptr [r15 + 0x20]
	jmp	.label_358
.label_348:
	mov	qword ptr [rax], r14
	inc	qword ptr [r15 + 0x20]
	inc	qword ptr [r15 + 0x18]
.label_358:
	mov	ebp, 1
.label_346:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_350:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405520

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
	je	.label_362
	cmp	rsi, r13
	je	.label_365
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	je	.label_367
.label_365:
	mov	r15, qword ptr [rbx]
	test	r12b, r12b
	je	.label_362
	mov	rsi, qword ptr [rbx + 8]
	test	rsi, rsi
	je	.label_364
	movups	xmm0, xmmword ptr [rsi]
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_366
.label_367:
	mov	rax, qword ptr [rbx + 8]
	xor	r15d, r15d
	test	rax, rax
	je	.label_362
	add	rbx, 8
	xor	r15d, r15d
	nop	
.label_363:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r13
	je	.label_361
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_361
	mov	rbx, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
	add	rbx, 8
	test	rax, rax
	jne	.label_363
	jmp	.label_362
.label_364:
	mov	qword ptr [rbx], 0
	jmp	.label_362
.label_361:
	mov	rsi, qword ptr [rbx]
	mov	r15, qword ptr [rsi]
	test	r12b, r12b
	je	.label_362
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbx], rax
.label_366:
	mov	rdi, r14
	call	free_entry
.label_362:
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
	#Procedure 0x4055f0

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rax, qword ptr [rdi + 0x48]
	test	rax, rax
	je	.label_368
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rdi + 0x48], rcx
	ret	
.label_368:
	push	rax
	mov	edi, 0x10
	call	malloc
	add	rsp, 8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405620

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
	je	.label_369
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_369:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405650
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
	je	.label_379
	dec	qword ptr [r15 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	jne	.label_375
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_372
	cvtsi2ss	xmm0, rax
	jmp	.label_376
.label_372:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_376:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_382
	cvtsi2ss	xmm1, rcx
	jmp	.label_371
.label_382:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_371:
	mulss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jbe	.label_375
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_381
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rcx
	jmp	.label_370
.label_381:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_370:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_377
	cvtsi2ss	xmm0, rax
	jmp	.label_380
.label_377:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_380:
	movss	xmm2, dword ptr [rcx]
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_375
	mulss	xmm0, dword ptr [rcx + 4]
	cmp	byte ptr [rcx + 0x10], 0
	jne	.label_373
	mulss	xmm0, dword ptr [rcx + 8]
.label_373:
	movss	xmm1,  dword ptr [dword ptr [rip + label_311]]
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
	jne	.label_375
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_378
	nop	word ptr cs:[rax + rax]
.label_374:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_374
.label_378:
	mov	qword ptr [r15 + 0x48], 0
.label_375:
	mov	rax, r14
.label_379:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057e0

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
	jmp	.label_383
	nop	
.label_384:
	add	rbx, 2
.label_383:
	cmp	rbx, -1
	je	.label_385
	mov	rdi, rbx
	call	is_prime
	test	al, al
	je	.label_384
	mov	r14, rbx
.label_385:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405830

	.globl is_prime
	.type is_prime, @function
is_prime:
	mov	r8, rdi
	mov	esi, 3
	mov	edi, 9
	mov	ecx, 0x10
	cmp	r8, 0xa
	jb	.label_386
	nop	dword ptr [rax + rax]
.label_387:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	je	.label_386
	add	rdi, rcx
	add	rsi, 2
	add	rcx, 8
	cmp	rdi, r8
	jb	.label_387
.label_386:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	setne	al
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405880

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
	#Procedure 0x4058a0

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
	#Procedure 0x4058d0
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
	#Procedure 0x4058e0

	.globl triple_compare
	.type triple_compare, @function
triple_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_388
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_389
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	same_name
	add	rsp, 8
	ret	
.label_388:
	xor	eax, eax
	ret	
.label_389:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405910

	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_390
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_391
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	test	eax, eax
	sete	al
	add	rsp, 8
	ret	
.label_390:
	xor	eax, eax
	ret	
.label_391:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x405940

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
	#Procedure 0x405960

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xc8
	test	al, al
	je	.label_392
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_392:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_394
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x18
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_393
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_395
.label_393:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_395:
	mov	ecx, dword ptr [rax]
.label_394:
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
	#Procedure 0x405a40

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
	js	.label_397
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_396
	mov	dword ptr [r14], ebp
	jmp	.label_397
.label_396:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_397:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405a90

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_399
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_398
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_398
	mov	esi, OFFSET FLAT:.str.2_2
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_400
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_400:
	mov	rbx, r14
.label_398:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_399:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_9
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b40
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
	#Procedure 0x405b80
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
	#Procedure 0x405b90
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
	#Procedure 0x405ba0

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
	#Procedure 0x405be0
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
	#Procedure 0x405c00

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_401
	test	rdx, rdx
	je	.label_401
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_401:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c30
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
	#Procedure 0x405cb0

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
.label_441:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r13d
	cmp	r13d, 0xa
	ja	.label_421
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_494]]
.label_844:
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
.label_845:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	test	r15b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_403
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_403
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
.label_425:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_411
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_411:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_425
.label_403:
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
	jmp	.label_426
.label_837:
	xor	r14d, r14d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	xor	edi, edi
	jmp	.label_426
.label_840:
	mov	al, 1
.label_838:
	mov	r15b, 1
.label_841:
	test	r15b, 1
	mov	cl, 1
	je	.label_496
	mov	cl, al
.label_496:
	mov	al, cl
.label_839:
	mov	r14d, 2
	test	r15b, 1
	jne	.label_462
	test	r10, r10
	je	.label_431
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_468
.label_462:
	xor	ecx, ecx
	jmp	.label_468
.label_842:
	mov	r14d, 5
	test	r15b, 1
	jne	.label_470
	test	r10, r10
	je	.label_476
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_478
.label_843:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	dil, 1
	jmp	.label_426
.label_431:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_468:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xa8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	jmp	.label_426
.label_470:
	xor	eax, eax
	jmp	.label_478
.label_476:
	mov	eax, 1
.label_478:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	sil, 1
	mov	dil, r15b
	nop	dword ptr [rax + rax]
.label_426:
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
	jmp	.label_454
	nop	dword ptr [rax + rax]
.label_480:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	sar	r15b, 7
	and	r15b, r8b
	mov	r8b, r15b
	inc	rsi
.label_454:
	cmp	rbp, -1
	je	.label_466
	cmp	rsi, rbp
	jne	.label_444
	jmp	.label_449
	nop	dword ptr [rax]
.label_466:
	cmp	byte ptr [r9 + rsi], 0
	je	.label_449
.label_444:
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_452
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_430
	cmp	rbp, -1
	jne	.label_430
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
.label_430:
	cmp	rbx, rbp
	jbe	.label_473
.label_452:
	mov	rdi, r14
	mov	dword ptr [rsp + 0xec], 0
.label_504:
	movzx	r13d, byte ptr [r9 + rsi]
	cmp	r13, 0x7e
	ja	.label_479
	xor	edx, edx
	mov	r15b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_461]]
.label_855:
	test	rsi, rsi
	jne	.label_434
	jmp	.label_408
	nop	word ptr cs:[rax + rax]
.label_473:
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
	jne	.label_500
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_504
	jmp	.label_412
.label_500:
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	jmp	.label_504
.label_859:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_520
	test	rsi, rsi
	jne	.label_523
	cmp	rbp, 1
	je	.label_408
	xor	r15d, r15d
	jmp	.label_402
.label_848:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_409
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_412
	cmp	edi, 2
	jne	.label_419
	mov	al, r11b
	and	al, 1
	jne	.label_424
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_428
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_428:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_475
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_475:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_443
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_443:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r11b, 1
	mov	rcx, rax
	jmp	.label_484
.label_849:
	mov	bl, 0x62
	jmp	.label_460
.label_850:
	mov	cl, 0x74
	jmp	.label_458
.label_851:
	mov	bl, 0x76
	jmp	.label_460
.label_852:
	mov	bl, 0x66
	jmp	.label_460
.label_853:
	mov	cl, 0x72
	jmp	.label_458
.label_856:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_465
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_463
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
	jae	.label_472
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_472:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_483
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_483:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_490
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_490:
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	jmp	.label_498
.label_857:
	mov	r14, rdi
	cmp	r14d, 5
	je	.label_503
	cmp	r14d, 2
	jne	.label_505
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_463
.label_505:
	mov	rdi, r14
	jmp	.label_434
.label_858:
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_510
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_463
	mov	rdi, r14
	jmp	.label_513
.label_479:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_515
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
.label_427:
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
	ja	.label_414
	test	dl, dl
	je	.label_414
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_402
.label_520:
	test	rsi, rsi
	jne	.label_440
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_440
.label_408:
	mov	dl, 1
.label_854:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_412
	xor	eax, eax
	mov	r15b, dl
	jmp	.label_402
.label_409:
	cmp	dword ptr [rsp + 0x5c], 0
	je	.label_434
	mov	r14, rdi
	inc	rsi
	jmp	.label_454
.label_465:
	mov	rdi, r14
.label_498:
	xor	eax, eax
	mov	r15b, 1
	jmp	.label_402
.label_510:
	mov	rdi, r14
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r13b
	je	.label_458
.label_513:
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_410
.label_458:
	cmp	byte ptr [rsp + 0xa7], 0
	mov	bl, cl
	je	.label_412
.label_460:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	je	.label_402
	jmp	.label_418
.label_515:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_474
	mov	rdi, r9
	mov	rbx, r9
	mov	rbp, rsi
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_474:
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	r15b, 1
	xor	ebx, ebx
	lea	r14, [rsp + 0x100]
.label_416:
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
	je	.label_493
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x40]
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8b, byte ptr [rsp + 0xa6]
	je	.label_499
	cmp	rbp, -2
	je	.label_507
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_509
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_429:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_516
	bt	rsi, rdx
	jb	.label_519
.label_516:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_429
.label_509:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_404
	xor	r15d, r15d
.label_404:
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	add	rbx, rbp
	mov	r14, rdi
	call	mbsinit
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_416
	jmp	.label_427
.label_440:
	mov	rbp, -1
	xor	r15d, r15d
	jmp	.label_402
.label_503:
	mov	rdi, r14
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_434
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_434
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_434
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_477
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_450
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_412
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_456
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_456:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_447
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_447:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_471
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_471:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_438
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_438:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r15d, r15d
	jmp	.label_402
.label_434:
	xor	eax, eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_402:
	test	r12b, r12b
	je	.label_517
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_487
	jmp	.label_453
	nop	word ptr cs:[rax + rax]
.label_517:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_453
.label_487:
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_495
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_410
	jmp	.label_418
	nop	word ptr cs:[rax + rax]
.label_453:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_418
	jmp	.label_410
.label_495:
	mov	bl, r13b
	mov	rsi, r14
.label_418:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_412
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_518
	mov	al, r11b
	and	al, 1
	jne	.label_518
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_512
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_512:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_511
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_511:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_420
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_420:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_518:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_435
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_435:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_417
.label_523:
	xor	r15d, r15d
	jmp	.label_402
.label_414:
	add	rcx, rsi
	xor	eax, eax
	jmp	.label_448
	nop	word ptr cs:[rax + rax]
.label_451:
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_448:
	test	dl, dl
	je	.label_457
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	je	.label_459
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_486
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	mov	rsi, rbx
.label_486:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_459
	nop	word ptr [rax + rax]
.label_457:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_463
	cmp	r14d, 2
	jne	.label_464
	mov	al, r11b
	and	al, 1
	jne	.label_464
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_481
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_481:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_485
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_485:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_491
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_491:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_464:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_522
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_522:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_407
	mov	dl, r13b
	shr	dl, 6
	or	dl, 0x30
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rdi
.label_407:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_514
	mov	dl, r13b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_514:
	add	qword ptr [rsp + 0xf0], 3
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_459:
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_410
	test	r11b, 1
	je	.label_415
	mov	bl, al
	and	bl, 1
	mov	r14, rdi
	jne	.label_442
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_423
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_423:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_506
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
.label_506:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	rsi, rbx
	jmp	.label_442
	nop	word ptr cs:[rax + rax]
.label_415:
	mov	r14, rdi
.label_442:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_451
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rbx], r13b
	mov	rsi, rdi
	jmp	.label_451
.label_410:
	test	r11b, 1
	je	.label_445
	and	al, 1
	jne	.label_445
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_439
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_439:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_469
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_469:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	bl, r13b
	jmp	.label_417
	nop	dword ptr [rax + rax]
.label_445:
	mov	bl, r13b
	mov	r14, rdi
.label_417:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_480
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
	jmp	.label_480
.label_419:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_484
.label_424:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_484:
	cmp	rcx, r10
	jae	.label_488
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_488:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r13b, 0x30
	cmp	edi, 2
	je	.label_492
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_501
	mov	dl, byte ptr [r9 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_405
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_508
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	mov	rsi, rbx
.label_508:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_446
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsi, rbx
.label_446:
	add	rcx, 3
	xor	r15d, r15d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_402
.label_492:
	xor	r15d, r15d
	jmp	.label_402
.label_501:
	xor	r15d, r15d
	jmp	.label_402
.label_405:
	xor	r15d, r15d
	jmp	.label_402
.label_493:
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_406
.label_499:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_413
.label_507:
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	jae	.label_422
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_436:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	byte ptr [rax + rbx], 0
	je	.label_433
	lea	rax, [rsi + rbx + 1]
	inc	rbx
	cmp	rax, rbp
	jb	.label_436
	xor	r15d, r15d
	jmp	.label_406
.label_422:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_413:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_406:
	mov	byte ptr [rsp + 0xa6], r8b
	jmp	.label_427
.label_433:
	xor	r15d, r15d
	jmp	.label_406
.label_477:
	xor	r15d, r15d
	jmp	.label_402
.label_450:
	xor	r15d, r15d
	mov	rsi, rbx
	jmp	.label_402
	nop	dword ptr [rax + rax]
.label_449:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	and	cl, 1
	je	.label_455
	or	dl, al
	je	.label_463
.label_455:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12, r9
	test	cl, cl
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	je	.label_467
	or	dl, al
	jne	.label_467
	test	r8b, 1
	jne	.label_521
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_467
	test	r10, r10
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	r15b, dl
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_441
.label_467:
	mov	rdx, qword ptr [rsp + 0xa8]
	test	rdx, rdx
	je	.label_482
	test	cl, cl
	jne	.label_482
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_482
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_497:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_489
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_489:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_497
.label_482:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_502
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_502
.label_412:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_432:
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
.label_437:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_502:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_519:
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_432
.label_463:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	jmp	.label_432
.label_521:
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
	jmp	.label_437
.label_421:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ec0
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
	#Procedure 0x406ed0

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
	je	.label_524
	mov	qword ptr [rax], rbx
.label_524:
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
	#Procedure 0x406fd0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_525
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_527:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_527
.label_525:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_529
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_528]], OFFSET FLAT:slot0
.label_529:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_526
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_526:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407070

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x407080

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
	js	.label_530
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_533
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_536
.label_533:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_532
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
	jne	.label_531
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_531:
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
.label_536:
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
	ja	.label_534
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_535
	mov	rdi, rbx
	call	free
.label_535:
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
.label_534:
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
.label_530:
	call	abort
.label_532:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407250

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407260
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
	#Procedure 0x407270
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
	#Procedure 0x407280

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
	#Procedure 0x4072c0

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
	je	.label_537
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
.label_537:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407320

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
	#Procedure 0x407360

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
	#Procedure 0x407380
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
	#Procedure 0x4073a0

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
	mov	rcx,  qword ptr [word ptr [rip + label_538]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_539]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_540]]
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
	#Procedure 0x407410

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
	#Procedure 0x407420

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407430
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407440

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
	#Procedure 0x407490

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4074a0

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
	mov	rax,  qword ptr [word ptr [rip + label_538]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_539]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_540]]
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
	#Procedure 0x407510
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
	#Procedure 0x407530
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
	#Procedure 0x407550

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407560
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
	#Procedure 0x407570

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407580

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
	#Procedure 0x407590

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
	jne	.label_542
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
	je	.label_541
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_542
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_542
.label_541:
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
	je	.label_543
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_542
	mov	eax, OFFSET FLAT:.str.18_0
	jmp	.label_542
.label_543:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_542:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407670

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
	je	.label_545
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_546
	jmp	.label_544
.label_545:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_544
.label_546:
	mov	eax, 1
	test	bpl, bpl
	je	.label_544
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
.label_544:
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
	#Procedure 0x407700

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
	je	.label_548
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_547
	jmp	.label_549
.label_548:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_549
.label_547:
	mov	eax, 1
	test	bpl, bpl
	je	.label_549
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
.label_549:
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
	#Procedure 0x407790

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
	je	.label_550
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_552
	jmp	.label_551
.label_550:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_551
.label_552:
	mov	eax, 1
	test	bpl, bpl
	je	.label_551
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
.label_551:
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
	#Procedure 0x407810

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
	je	.label_555
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_554
	jmp	.label_553
.label_555:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_553
.label_554:
	mov	eax, 1
	test	bpl, bpl
	je	.label_553
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
.label_553:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407880

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
	je	.label_558
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_556
	jmp	.label_557
.label_558:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_557
.label_556:
	mov	eax, 1
	test	bpl, bpl
	je	.label_557
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_557:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4078f0

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
	je	.label_560
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_561
	jmp	.label_559
.label_560:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_559
.label_561:
	mov	eax, 1
	test	bpl, bpl
	je	.label_559
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_559:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407940

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
	je	.label_564
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_563
	jmp	.label_562
.label_564:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_562
.label_563:
	mov	eax, 1
	test	bpl, bpl
	je	.label_562
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_562:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407990

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_566
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_567
	jmp	.label_565
.label_566:
	mov	eax, 1
	test	cl, cl
	je	.label_565
.label_567:
	xor	eax, eax
.label_565:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4079c0

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
	mov	r13d, r8d
	mov	r12, rcx
	mov	r14d, edx
	mov	rbp, rsi
	mov	r15d, edi
	mov	edi, 0x13c
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	mov	ecx, r14d
	mov	r8, r12
	mov	r9d, r13d
	call	syscall
	mov	rbx, rax
	call	__errno_location
	test	ebx, ebx
	jns	.label_569
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x16
	je	.label_570
	cmp	ecx, 0x5f
	je	.label_570
	cmp	ecx, 0x26
	jne	.label_569
.label_570:
	test	r13d, r13d
	je	.label_574
	mov	qword ptr [rsp], rax
	cmp	r13d, 2
	jb	.label_577
	mov	edi, 0x5f
	jmp	.label_579
.label_574:
	mov	qword ptr [rsp], rax
	xor	r13d, r13d
.label_578:
	mov	rdi, rbp
	call	strlen
	mov	rbx, rax
	mov	rdi, r12
	call	strlen
	test	rbx, rbx
	je	.label_568
	test	rax, rax
	je	.label_568
	movzx	ecx, byte ptr [rbx + rbp - 1]
	cmp	ecx, 0x2f
	je	.label_580
	movzx	eax, byte ptr [rax + r12 - 1]
	cmp	eax, 0x2f
	jne	.label_568
.label_580:
	lea	rdx, [rsp + 0x98]
	mov	edi, r15d
	mov	rsi, rbp
	call	lstatat
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_569
	test	r13b, r13b
	je	.label_575
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0xb0]
	cmp	eax, 0x4000
	je	.label_568
	mov	edi, 2
	jmp	.label_581
.label_577:
	lea	rdx, [rsp + 8]
	mov	edi, r14d
	mov	rsi, r12
	call	lstatat
	test	eax, eax
	je	.label_572
	mov	rax, qword ptr [rsp]
	mov	eax, dword ptr [rax]
	mov	r13b, 1
	cmp	eax, 2
	je	.label_578
	mov	ebx, 0xffffffff
	cmp	eax, 0x4b
	jne	.label_569
.label_572:
	mov	edi, 0x11
.label_579:
	call	errno_fail
	mov	ebx, 0xffffffff
	jmp	.label_569
.label_575:
	lea	rdx, [rsp + 8]
	mov	edi, r14d
	mov	rsi, r12
	call	lstatat
	test	eax, eax
	je	.label_573
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax], 2
	jne	.label_569
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0xb0]
	cmp	eax, 0x4000
	jne	.label_569
	jmp	.label_568
.label_573:
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsp + 0x20]
	and	ecx, eax
	cmp	ecx, 0x4000
	jne	.label_576
	and	eax, dword ptr [rsp + 0xb0]
	cmp	eax, 0x4000
	jne	.label_571
.label_568:
	mov	edi, r15d
	mov	rsi, rbp
	mov	edx, r14d
	mov	rcx, r12
	call	renameat
	mov	ebx, eax
.label_569:
	mov	eax, ebx
	add	rsp, 0x128
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_576:
	mov	edi, 0x14
	jmp	.label_581
.label_571:
	mov	edi, 0x15
.label_581:
	call	errno_fail
	jmp	.label_569
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ba0

	.globl errno_fail
	.type errno_fail, @function
errno_fail:
	push	rbx
	mov	ebx, edi
	call	__errno_location
	mov	dword ptr [rax], ebx
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407bb0

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
	#Procedure 0x407bd0

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
	jne	.label_583
	mov	qword ptr [rsp + 8], r15
	mov	r15d, dword ptr [rsp + 0x14]
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, rax
	call	memcmp
	test	eax, eax
	je	.label_587
	xor	ebp, ebp
	jmp	.label_588
.label_583:
	xor	ebp, ebp
	jmp	.label_588
.label_587:
	mov	rdi, r13
	call	dir_name
	mov	rbp, rax
	lea	rdx, [rsp + 0xa8]
	mov	ecx, 0x100
	mov	edi, r12d
	mov	rsi, rbp
	call	fstatat
	test	eax, eax
	je	.label_585
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	rcx, rbp
	call	error
.label_585:
	mov	rdi, rbp
	call	free
	mov	rdi, qword ptr [rsp + 8]
	call	dir_name
	mov	rbx, rax
	lea	rdx, [rsp + 0x18]
	mov	ecx, 0x100
	mov	edi, r15d
	mov	rsi, rbx
	call	fstatat
	test	eax, eax
	je	.label_586
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	rcx, rbx
	call	error
.label_586:
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_582
	mov	rax, qword ptr [rsp + 0xa8]
	cmp	rax, qword ptr [rsp + 0x18]
	sete	bpl
	jmp	.label_584
.label_582:
	xor	ebp, ebp
.label_584:
	mov	rdi, rbx
	call	free
.label_588:
	mov	al, bpl
	add	rsp, 0x138
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
	#Procedure 0x407d20
	.globl statat
	.type statat, @function
statat:

	xor	ecx, ecx
	jmp	fstatat
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407d30

	.globl lstatat
	.type lstatat, @function
lstatat:
	mov	ecx, 0x100
	jmp	fstatat
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407d40

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
	mov	r14, r8
	mov	qword ptr [rsp + 0x28], rcx
	mov	qword ptr [rsp + 0x20], rdx
	mov	ebx, esi
	mov	r15, rdi
	call	__errno_location
	mov	qword ptr [rsp + 0x30], rax
	mov	r12d, dword ptr [rax]
	mov	rdi, r15
	call	strlen
	mov	rbp, rax
	movsxd	rbx, ebx
	lea	rax, [rbx + r14]
	mov	rdi, rbp
	sub	rdi, rax
	jb	.label_590
	add	rdi, r15
	mov	rsi, r14
	call	check_x_suffix
	test	al, al
	je	.label_590
	mov	dword ptr [rsp + 0xc], r12d
	mov	qword ptr [rsp + 0x10], r15
	xor	r13d, r13d
	xor	edi, edi
	mov	rsi, r14
	call	randint_all_new
	mov	r15, rax
	mov	r12d, 0xffffffff
	test	r15, r15
	je	.label_591
	sub	rbp, rbx
	mov	r12, qword ptr [rsp + 0x10]
	add	rbp, r12
	mov	rax, r14
	neg	rax
	mov	qword ptr [rsp + 0x18], rax
	nop	dword ptr [rax]
.label_594:
	test	r14, r14
	mov	rbx, qword ptr [rsp + 0x18]
	je	.label_592
	nop	word ptr [rax + rax]
.label_595:
	mov	esi, 0x3d
	mov	rdi, r15
	call	randint_genmax
	mov	al,  byte ptr [byte ptr [rax + letters]]
	mov	byte ptr [rbp + rbx], al
	inc	rbx
	jne	.label_595
.label_592:
	mov	rdi, r12
	mov	rbx, r12
	mov	rsi, qword ptr [rsp + 0x20]
	call	qword ptr [rsp + 0x28]
	mov	r12d, eax
	test	r12d, r12d
	jns	.label_589
	mov	rax, qword ptr [rsp + 0x30]
	cmp	dword ptr [rax], 0x11
	mov	r12d, 0xffffffff
	jne	.label_593
	inc	r13d
	cmp	r13d, 0x3a2f7
	mov	r12, rbx
	jbe	.label_594
	mov	rdi, r15
	call	randint_all_free
	mov	rax, qword ptr [rsp + 0x30]
	mov	dword ptr [rax], 0x11
	mov	r12d, 0xffffffff
	jmp	.label_591
.label_590:
	mov	rax, qword ptr [rsp + 0x30]
	mov	dword ptr [rax], 0x16
	mov	r12d, 0xffffffff
.label_591:
	mov	eax, r12d
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_589:
	mov	rax, qword ptr [rsp + 0x30]
	mov	ecx, dword ptr [rsp + 0xc]
	mov	dword ptr [rax], ecx
.label_593:
	mov	rbp, qword ptr [rsp + 0x30]
	mov	ebx, dword ptr [rbp]
	mov	rdi, r15
	call	randint_all_free
	mov	dword ptr [rbp], ebx
	jmp	.label_591
	.section	.text
	.align	32
	#Procedure 0x407ea0

	.globl check_x_suffix
	.type check_x_suffix, @function
check_x_suffix:
	push	rbx
	mov	rbx, rsi
	mov	esi, 0x58
	call	__strspn_c1
	cmp	rax, rbx
	setae	al
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ec0

	.globl gen_tempname_len
	.type gen_tempname_len, @function
gen_tempname_len:
	push	rax
	mov	dword ptr [rsp + 4], edx
	cmp	ecx, 3
	jae	.label_596
	movsxd	rax, ecx
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_597]]
	lea	rdx, [rsp + 4]
	call	try_tempname_len
	pop	rcx
	ret	
.label_596:
	mov	edi, OFFSET FLAT:.str_10
	mov	esi, OFFSET FLAT:.str.1_6
	mov	edx, 0x147
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.gen_tempname_len
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407f00

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
	#Procedure 0x407f20

	.globl try_dir
	.type try_dir, @function
try_dir:
	mov	esi, 0x1c0
	jmp	mkdir
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407f30

	.globl try_nocreate
	.type try_nocreate, @function
try_nocreate:
	sub	rsp, 0x98
	lea	rsi, [rsp + 8]
	call	__lstat
	test	eax, eax
	je	.label_598
	call	__errno_location
	cmp	dword ptr [rax], 0x4b
	jne	.label_599
.label_598:
	call	__errno_location
	mov	dword ptr [rax], 0x11
.label_599:
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 2
	mov	eax, 0xffffffff
	cmove	eax, ecx
	add	rsp, 0x98
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407f80
	.globl gen_tempname
	.type gen_tempname, @function
gen_tempname:

	mov	r8d, 6
	jmp	gen_tempname_len
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407f90
	.globl try_tempname
	.type try_tempname, @function
try_tempname:

	mov	r8d, 6
	jmp	try_tempname_len
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407fa0

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
	ja	.label_600
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
	jmp	.label_601
.label_600:
	mov	eax, ebx
.label_601:
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
	#Procedure 0x407ff0

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
	je	.label_608
	mov	edx, OFFSET FLAT:.str_11
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_607
.label_608:
	mov	edx, OFFSET FLAT:.str.1_7
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_607:
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
	mov	esi, OFFSET FLAT:.str.3_1
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_603
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_604]]
.label_826:
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
.label_603:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_602
.label_827:
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
.label_828:
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
.label_829:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_609
.label_830:
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
	jmp	.label_611
.label_831:
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
	jmp	.label_606
.label_832:
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
.label_606:
	mov	qword ptr [rsp + 0x10], rdi
.label_611:
	mov	qword ptr [rsp + 8], rsi
.label_609:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_610
.label_834:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_602:
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
	jmp	.label_605
.label_833:
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
.label_605:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_610:
	call	__fprintf_chk
.label_825:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4082e0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_612:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_612
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408310

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_614:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_613
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_615
	nop	dword ptr [rax]
.label_613:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_615:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_616
	inc	r9
	cmp	r9, 0xa
	jb	.label_614
.label_616:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408370

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	je	.label_617
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_617:
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
	#Procedure 0x408400
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
	#Procedure 0x408480
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_618
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_618:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4084b0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_619
	test	rax, rax
	je	.label_620
.label_619:
	pop	rbx
	ret	
.label_620:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4084d0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_621
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_621:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408500

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_622
	test	rbx, rbx
	jne	.label_622
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_622:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_624
	test	rax, rax
	je	.label_623
.label_624:
	pop	rbx
	ret	
.label_623:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x408530

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_625
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_628
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_626
.label_625:
	test	rcx, rcx
	jne	.label_629
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_629:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_627
.label_626:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_628:
	call	xalloc_die
.label_627:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4085b0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4085c0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4085d0
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
	#Procedure 0x408600
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_630
	call	rpl_calloc
	test	rax, rax
	je	.label_630
	pop	rcx
	ret	
.label_630:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408630

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
	#Procedure 0x408660

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
	#Procedure 0x408680

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
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4086b0

	.globl xgetcwd
	.type xgetcwd, @function
xgetcwd:
	push	rbx
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_632
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_631
.label_632:
	mov	rax, rbx
	pop	rbx
	ret	
.label_631:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4086e0

	.globl yesno
	.type yesno, @function
yesno:
	push	rbx
	sub	rsp, 0x10
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [rsp], 0
	mov	rdx,  qword ptr [word ptr [rip + stdin]]
	lea	rdi, [rsp + 8]
	lea	rsi, [rsp]
	call	getline
	test	rax, rax
	jle	.label_635
	mov	rcx, qword ptr [rsp + 8]
	movzx	edx, byte ptr [rax + rcx - 1]
	cmp	edx, 0xa
	jne	.label_633
	mov	byte ptr [rcx + rax - 1], 0
.label_633:
	mov	rdi, qword ptr [rsp + 8]
	call	rpmatch
	test	eax, eax
	setg	bl
	jmp	.label_634
.label_635:
	xor	ebx, ebx
.label_634:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	al, bl
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408750

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_636
	test	rsi, rsi
	mov	ecx, 1
	je	.label_637
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_637
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_636:
	mov	ecx, 1
.label_637:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4087a0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_638
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_638
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_638:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4087d0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_639
	ret	
.label_639:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4087f0

	.globl freadahead
	.type freadahead, @function
freadahead:
	mov	rcx, qword ptr [rdi + 0x28]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	ja	.label_640
	mov	rax, qword ptr [rdi + 0x10]
	sub	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	test	byte ptr [rdi + 1], 1
	je	.label_641
	mov	rcx, qword ptr [rdi + 0x58]
	sub	rcx, qword ptr [rdi + 0x48]
.label_641:
	add	rax, rcx
.label_640:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408820

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
	jne	.label_642
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_642
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_643
.label_642:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_643:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_644
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_644:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408890

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
	je	.label_645
	cmp	r15, -2
	jb	.label_645
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_645
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_645:
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
	#Procedure 0x4088f0

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
	je	.label_650
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	movabs	r15, 0x7fffffffffffffff
	nop	word ptr cs:[rax + rax]
.label_652:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbx
	mov	rdx, r12
	call	readlink
	mov	r13, rax
	test	r13, r13
	jns	.label_649
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	jne	.label_651
.label_649:
	cmp	r13, r12
	jb	.label_654
	mov	rdi, rbx
	call	free
	mov	rax, r12
	shr	rax, 0x3e
	jne	.label_647
	add	r12, r12
	jmp	.label_653
	nop	word ptr cs:[rax + rax]
.label_647:
	cmp	r12, r15
	mov	r12, r15
	jae	.label_646
.label_653:
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_652
	jmp	.label_650
.label_654:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp + 8], rbx
	jmp	.label_650
.label_646:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_648
.label_651:
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
.label_648:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
.label_650:
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
	#Procedure 0x408a00

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408a10

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
	je	.label_658
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, r14
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	nop	
.label_655:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_656
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_660
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_661
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_657
	mov	rdi, qword ptr [rsp + 0x18]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_656
.label_657:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_656
.label_661:
	mov	qword ptr [rsp + 0x18], rbp
	nop	word ptr [rax + rax]
.label_656:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_655
	jmp	.label_659
.label_658:
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_659:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 0x18]
.label_660:
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
	#Procedure 0x408b10

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
	je	.label_662
	mov	esi, OFFSET FLAT:.str.1_9
	jmp	.label_663
.label_662:
	mov	esi, OFFSET FLAT:.str_12
.label_663:
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
	#Procedure 0x408b80

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
	mov	r13, rsi
	mov	r15, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_4
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [r15]
	test	rbx, rbx
	je	.label_668
	xor	r12d, r12d
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_665:
	test	rbp, rbp
	je	.label_667
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_664
.label_667:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_2
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_666
	nop	word ptr cs:[rax + rax]
.label_664:
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.4_1
	xor	eax, eax
	mov	rdi, qword ptr [rsp]
	call	__fprintf_chk
.label_666:
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	jne	.label_665
.label_668:
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	putc_unlocked
	nop	
	.section	.text
	.align	32
	#Procedure 0x408c80

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_669
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, rax
	call	argmatch_invalid
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	argmatch_valid
	call	r14
	mov	rax, -1
.label_669:
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
	#Procedure 0x408cf0
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
	je	.label_670
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_671:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_670
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_671
.label_670:
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
	#Procedure 0x408d60
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
	#Procedure 0x408d70
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
	#Procedure 0x408d80
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
	#Procedure 0x408d90
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
	#Procedure 0x408da0
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
	#Procedure 0x408db0

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
	#Procedure 0x408dc0
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
	#Procedure 0x408de0
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
	#Procedure 0x408e00
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
	#Procedure 0x408e20
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
	#Procedure 0x408e40
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_672
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_672
.label_673:
	ret	
.label_672:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_673
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408e70
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_674
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_674:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408e90
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ea0
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
	#Procedure 0x408eb0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_675
.label_676:
	ret	
.label_675:
	cmp	edi, 0x7f
	je	.label_676
	xor	eax, eax
	jmp	.label_676
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ed0
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
	#Procedure 0x408ee0
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
	#Procedure 0x408ef0
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
	#Procedure 0x408f00
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
	#Procedure 0x408f10
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_677
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_677
.label_678:
	ret	
.label_677:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_678
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408f40
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_679
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_679:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408f60

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
	#Procedure 0x408f70
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_680
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_680:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408f90
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
	#Procedure 0x408fa0
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
	#Procedure 0x408fb0

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
	je	.label_682
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_681
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_681
.label_682:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_681
	test	cl, cl
	jne	.label_681
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_681:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409020

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_684
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_685
	cmp	byte ptr [rax + 1], 0
	je	.label_683
.label_685:
	mov	esi, OFFSET FLAT:.str.1_10
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_684
.label_683:
	xor	ebx, ebx
.label_684:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x409060

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	mov	cl, byte ptr [rdi]
	xor	eax, eax
	test	cl, cl
	je	.label_686
	inc	rdi
	xor	eax, eax
	nop	dword ptr [rax]
.label_687:
	movsx	rcx, cl
	rol	rax, 9
	add	rax, rcx
	mov	cl, byte ptr [rdi]
	inc	rdi
	test	cl, cl
	jne	.label_687
.label_686:
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409090

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
	je	.label_688
	mov	rax, rcx
.label_688:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4090c0

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
	#Procedure 0x4090e0

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	push	rax
	call	randread_new
	test	rax, rax
	je	.label_689
	mov	rdi, rax
	pop	rax
	jmp	randint_new
.label_689:
	xor	eax, eax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409100
	.globl randint_get_source
	.type randint_get_source, @function
randint_get_source:

	mov	rax, qword ptr [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409110

	.globl randint_genmax
	.type randint_genmax, @function
randint_genmax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	rax, qword ptr [rdi]
	mov	qword ptr [rsp + 0x18], rax
	mov	r15, qword ptr [rdi + 8]
	lea	rax, [rdi + 8]
	mov	qword ptr [rsp], rax
	mov	rbx, qword ptr [rdi + 0x10]
	lea	rbp, [r13 + 1]
	mov	qword ptr [rsp + 0x10], rbp
	lea	r12, [rsp + 0x20]
	nop	dword ptr [rax]
.label_696:
	cmp	rbx, r13
	jae	.label_690
	mov	rax, rbx
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_692:
	mov	rdi, rax
	call	shift_left
	add	rax, 0xff
	inc	r14
	cmp	rax, r13
	jb	.label_692
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r12
	mov	rdx, r14
	call	randread
	mov	rbp, r12
	nop	dword ptr [rax]
.label_693:
	mov	rdi, r15
	call	shift_left
	movzx	r15d, byte ptr [rbp]
	add	r15, rax
	mov	rdi, rbx
	call	shift_left
	mov	rbx, rax
	add	rbx, 0xff
	inc	rbp
	cmp	rbx, r13
	jb	.label_693
	mov	rcx, r15
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_695
	nop	word ptr cs:[rax + rax]
.label_690:
	mov	rcx, r15
.label_695:
	mov	rsi, rbx
	sub	rsi, r13
	je	.label_694
	xor	edx, edx
	mov	rax, rsi
	div	rbp
	mov	rdi, rdx
	sub	rbx, rdi
	xor	edx, edx
	mov	rax, rcx
	div	rbp
	mov	r15, rdx
	dec	rdi
	cmp	rcx, rbx
	mov	rbx, rdi
	ja	.label_696
	xor	edx, edx
	mov	rax, rcx
	div	rbp
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx + 8], rax
	xor	edx, edx
	mov	rax, rsi
	div	rbp
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, r15
	jmp	.label_691
.label_694:
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rsp]
	movups	xmmword ptr [rax], xmm0
.label_691:
	mov	rax, rcx
	add	rsp, 0x28
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
	#Procedure 0x409250

	.globl shift_left
	.type shift_left, @function
shift_left:
	shl	rdi, 8
	mov	rax, rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409260

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
	#Procedure 0x409280

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
	mov	rdi, rbx
	call	randint_free
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
	#Procedure 0x4092c0

	.globl randread_new
	.type randread_new, @function
randread_new:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	rbx, rdi
	test	r15, r15
	je	.label_697
	test	rbx, rbx
	je	.label_699
	mov	esi, OFFSET FLAT:.str_13
	mov	rdi, rbx
	call	fopen_safer
	mov	r12, rax
	xor	r14d, r14d
	test	r12, r12
	je	.label_698
	mov	rdi, r12
	mov	rsi, rbx
	call	simple_new
	mov	r14, rax
	lea	rsi, [r14 + 0x18]
	cmp	r15, 0x1000
	mov	ecx, 0x1000
	cmovbe	rcx, r15
	xor	edx, edx
	mov	rdi, r12
	call	setvbuf
	jmp	.label_698
.label_697:
	xor	edi, edi
	xor	esi, esi
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	simple_new
.label_699:
	xor	edi, edi
	mov	rsi, rbx
	call	simple_new
	mov	r14, rax
	mov	qword ptr [r14 + 0x18], 0
	mov	rbx, r14
	add	rbx, 0x20
	mov	rdi, rbx
	mov	rsi, r15
	call	get_nonce
	mov	rdi, rbx
	call	isaac_seed
.label_698:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409370

	.globl simple_new
	.type simple_new, @function
simple_new:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	edi, 0x1038
	call	xmalloc
	mov	qword ptr [rax], rbx
	mov	qword ptr [word ptr [rax + 8]], OFFSET FLAT:randread_error
	mov	qword ptr [rax + 0x10], r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4093a0

	.globl get_nonce
	.type get_nonce, @function
get_nonce:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	r14, rdi
	xor	r15d, r15d
	mov	edi, OFFSET FLAT:.str.3_3
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	ebp, eax
	test	ebp, ebp
	js	.label_700
	cmp	rbx, 0x800
	mov	edx, 0x800
	cmovbe	rdx, rbx
	mov	edi, ebp
	mov	rsi, r14
	call	read
	mov	rbx, rax
	mov	edi, ebp
	call	close
	xor	r15d, r15d
	test	rbx, rbx
	js	.label_700
	cmp	rbx, 0x7ff
	mov	r15, rbx
	ja	.label_701
.label_700:
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 0x10
	mov	ebx, 0x10
	cmovbe	rbx, rax
	lea	rbp, [rsp + 8]
	xor	esi, esi
	mov	rdi, rbp
	call	gettimeofday
	lea	rdi, [r14 + r15]
	mov	rsi, rbp
	mov	rdx, rbx
	call	memcpy
	add	rbx, r15
	cmp	rbx, 0x7ff
	ja	.label_701
	mov	eax, 0x800
	sub	rax, rbx
	cmp	rax, 4
	mov	r15d, 4
	cmovbe	r15, rax
	call	getpid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp + 8]
	mov	rdx, r15
	call	memcpy
	add	r15, rbx
	cmp	r15, 0x7ff
	ja	.label_701
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getppid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + r15]
	lea	rsi, [rsp + 8]
	mov	rdx, rbx
	call	memcpy
	add	rbx, r15
	cmp	rbx, 0x7ff
	ja	.label_701
	mov	eax, 0x800
	sub	rax, rbx
	cmp	rax, 4
	mov	r15d, 4
	cmovbe	r15, rax
	call	getuid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp + 8]
	mov	rdx, r15
	call	memcpy
	add	r15, rbx
	cmp	r15, 0x7ff
	ja	.label_701
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getgid
	mov	dword ptr [rsp + 8], eax
	add	r14, r15
	lea	rsi, [rsp + 8]
	mov	rdi, r14
	mov	rdx, rbx
	call	memcpy
.label_701:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409540
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	qword ptr [rdi + 8], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409550
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	mov	qword ptr [rdi + 0x10], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409560

	.globl randread
	.type randread, @function
randread:
	cmp	qword ptr [rdi], 0
	je	.label_702
	jmp	readsource
.label_702:
	add	rdi, 0x18
	jmp	readisaac
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409580

	.globl readsource
	.type readsource, @function
readsource:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r13, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	mov	rdi, r14
	call	fread_unlocked
	mov	rbx, rax
	call	__errno_location
	mov	r12, rax
	cmp	rbx, r13
	je	.label_704
	nop	word ptr cs:[rax + rax]
.label_703:
	sub	r13, rbx
	add	r14, rbx
	mov	ebx, dword ptr [r12]
	mov	rdi, qword ptr [r15]
	call	ferror_unlocked
	test	eax, eax
	cmove	ebx, eax
	mov	dword ptr [r12], ebx
	mov	rdi, qword ptr [r15 + 0x10]
	call	qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	mov	rdi, r14
	mov	rdx, r13
	call	fread_unlocked
	mov	rbx, rax
	cmp	r13, rbx
	jne	.label_703
.label_704:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409610

	.globl readisaac
	.type readisaac, @function
readisaac:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	r14, rdi
	mov	r12, qword ptr [r14]
	lea	r13, [r14 + 0x820]
	mov	rsi, r13
	sub	rsi, r12
	add	rsi, 0x800
	cmp	r12, r15
	jae	.label_707
	lea	rbp, [r14 + 8]
	mov	rdi, rbx
	mov	rdx, r12
	call	memcpy
	add	rbx, r12
	sub	r15, r12
	xor	r12d, r12d
	nop	dword ptr [rax + rax]
.label_708:
	cmp	r15, 0x800
	jb	.label_705
	mov	rdi, rbp
	mov	rsi, rbx
	call	isaac_refill
	add	rbx, 0x800
	add	r15, -0x800
	jne	.label_708
	jmp	.label_706
.label_705:
	mov	rdi, rbp
	mov	rsi, r13
	call	isaac_refill
	mov	r12d, 0x800
	mov	rsi, r13
.label_707:
	mov	rdi, rbx
	mov	rdx, r15
	call	memcpy
	sub	r12, r15
.label_706:
	mov	qword ptr [r14], r12
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
	#Procedure 0x4096c0

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
	je	.label_709
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	rpl_fclose
.label_709:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409700

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
	je	.label_710
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	jne	.label_712
	mov	esi, OFFSET FLAT:.str.1_12
	jmp	.label_711
.label_712:
	mov	esi, OFFSET FLAT:.str.2_5
.label_711:
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
.label_710:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x409760

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 8], rsi
	mov	r14, rdi
	mov	rbx, qword ptr [r14 + 0x800]
	mov	rax, qword ptr [r14 + 0x810]
	inc	rax
	mov	r12, qword ptr [r14 + 0x808]
	add	r12, rax
	mov	qword ptr [r14 + 0x810], rax
	lea	rax, [r14 + 0x400]
	mov	qword ptr [rsp], rax
	mov	rbp, rsi
	mov	r15, r14
	nop	dword ptr [rax]
.label_714:
	mov	qword ptr [rsp + 0x10], rbp
	mov	r13, rbx
	shl	r13, 0x15
	xor	r13, rbx
	not	r13
	add	r13, qword ptr [r15 + 0x400]
	mov	rbx, qword ptr [r15]
	mov	rdi, r14
	mov	rsi, rbx
	call	ind
	add	rax, r12
	add	rax, r13
	mov	qword ptr [r15], rax
	shr	rax, 8
	mov	rdi, r14
	mov	rsi, rax
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rdi, r13
	call	just
	mov	rbp, rax
	shr	rbp, 5
	xor	rbp, r13
	add	rbp, qword ptr [r15 + 0x408]
	mov	r12, qword ptr [r15 + 8]
	mov	rdi, r14
	mov	rsi, r12
	call	ind
	add	rbx, rbp
	add	rbx, rax
	mov	qword ptr [r15 + 8], rbx
	shr	rbx, 8
	mov	rdi, r14
	mov	rsi, rbx
	call	ind
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 8], rbx
	mov	r12, rbp
	shl	r12, 0xc
	xor	r12, rbp
	add	r12, qword ptr [r15 + 0x410]
	mov	rbp, qword ptr [r15 + 0x10]
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	rbx, r12
	add	rbx, rax
	mov	qword ptr [r15 + 0x10], rbx
	shr	rbx, 8
	mov	rdi, r14
	mov	rsi, rbx
	call	ind
	add	rbp, rax
	mov	rdi, rbp
	call	just
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 0x10], rbp
	mov	rdi, r12
	call	just
	mov	rbx, rax
	shr	rbx, 0x21
	xor	rbx, r12
	add	rbx, qword ptr [r15 + 0x418]
	mov	r12, qword ptr [r15 + 0x18]
	mov	rdi, r14
	mov	rsi, r12
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r15 + 0x18], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	mov	rbp, qword ptr [rsp + 0x10]
	call	ind
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	rcx, qword ptr [rsp]
	mov	r12, rax
	mov	qword ptr [rbp + 0x18], r12
	add	r15, 0x20
	add	rbp, 0x20
	cmp	r15, rcx
	jb	.label_714
	add	qword ptr [rsp + 8], 0x400
	lea	rax, [r14 + 0x800]
	mov	qword ptr [rsp + 0x10], rax
	nop	dword ptr [rax + rax]
.label_713:
	mov	r13, rbx
	shl	r13, 0x15
	xor	r13, rbx
	not	r13
	add	r13, qword ptr [rcx - 0x400]
	mov	rbx, qword ptr [rcx]
	mov	rdi, r14
	mov	rsi, rbx
	mov	r15, rcx
	call	ind
	add	rax, r12
	add	rax, r13
	mov	qword ptr [r15], rax
	shr	rax, 8
	mov	rdi, r14
	mov	rsi, rax
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	mov	rdi, r13
	call	just
	mov	rbx, rax
	shr	rbx, 5
	xor	rbx, r13
	add	rbx, qword ptr [r15 - 0x3f8]
	mov	r12, qword ptr [r15 + 8]
	mov	rdi, r14
	mov	rsi, r12
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r15 + 8], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	rbp, rax
	mov	r13, qword ptr [rsp + 8]
	mov	qword ptr [r13 + 8], rbp
	mov	r12, rbx
	shl	r12, 0xc
	xor	r12, rbx
	add	r12, qword ptr [r15 - 0x3f0]
	mov	rbx, qword ptr [r15 + 0x10]
	mov	rdi, r14
	mov	rsi, rbx
	call	ind
	add	rbp, r12
	add	rbp, rax
	mov	qword ptr [r15 + 0x10], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbp, rax
	mov	qword ptr [r13 + 0x10], rbp
	mov	rdi, r12
	call	just
	mov	rbx, rax
	shr	rbx, 0x21
	xor	rbx, r12
	add	rbx, qword ptr [r15 - 0x3e8]
	mov	r12, qword ptr [r15 + 0x18]
	mov	rdi, r14
	mov	rsi, r12
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r15 + 0x18], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	rcx, r15
	mov	r12, rax
	mov	rax, r13
	mov	qword ptr [rax + 0x18], r12
	add	rcx, 0x20
	add	rax, 0x20
	mov	qword ptr [rsp + 8], rax
	cmp	rcx, qword ptr [rsp + 0x10]
	jb	.label_713
	mov	qword ptr [r14 + 0x800], rbx
	mov	qword ptr [r14 + 0x808], r12
	add	rsp, 0x18
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
	#Procedure 0x409ac0

	.globl ind
	.type ind, @function
ind:
	and	esi, 0x7f8
	mov	rax, qword ptr [rdi + rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ad0

	.globl just
	.type just, @function
just:
	mov	rax, rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ae0

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x20], rdi
	movabs	rbp, 0x647c4677a2884b7c
	movabs	r15, 0xb9f8b322c73ac862
	movabs	r14, 0x8c0ea5053d4712a0
	movabs	rbx, 0xb29b2e824a595524
	movabs	r13, 0x82f053db8355e0ce
	movabs	rdx, 0x48fe4a0fa5a09315
	movabs	rax, 0xae985bf2cbfc89ed
	movabs	r12, 0x98f5704f6c44c0ab
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_716:
	mov	qword ptr [rsp + 0x18], rcx
	add	rbp, qword ptr [rdi + rcx*8]
	add	r15, qword ptr [rdi + rcx*8 + 8]
	add	r14, qword ptr [rdi + rcx*8 + 0x10]
	add	rbx, qword ptr [rdi + rcx*8 + 0x18]
	add	r13, qword ptr [rdi + rcx*8 + 0x20]
	add	rdx, qword ptr [rdi + rcx*8 + 0x28]
	mov	qword ptr [rsp + 0x30], rdx
	add	rax, qword ptr [rdi + rcx*8 + 0x30]
	mov	qword ptr [rsp + 0x28], rax
	add	r12, qword ptr [rdi + rcx*8 + 0x38]
	sub	rbp, r13
	mov	rdi, r12
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rsp + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	add	r12, rbp
	sub	r15, rax
	lea	rax, [r15 + rbp]
	mov	qword ptr [rsp + 0x10], rax
	shl	rbp, 9
	xor	rbp, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x28], rbp
	sub	r14, rbp
	mov	rdi, r15
	call	just
	shr	rax, 0x17
	xor	r12, rax
	add	r15, r14
	mov	qword ptr [rsp], r15
	sub	rbx, r12
	lea	rax, [rbx + r14]
	mov	qword ptr [rsp + 8], rax
	shl	r14, 0xf
	mov	rbp, r14
	xor	rbp, qword ptr [rsp + 0x10]
	sub	r13, rbp
	mov	rdi, rbx
	call	just
	mov	r15, rax
	shr	r15, 0xe
	xor	r15, qword ptr [rsp]
	add	rbx, r13
	mov	qword ptr [rsp + 0x10], rbx
	mov	rdi, qword ptr [rsp + 0x30]
	sub	rdi, r15
	mov	qword ptr [rsp + 0x30], rdi
	mov	r14, r13
	shl	r14, 0x14
	xor	r14, qword ptr [rsp + 8]
	add	r13, rdi
	mov	qword ptr [rsp + 8], r13
	mov	r13, qword ptr [rsp + 0x28]
	sub	r13, r14
	call	just
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rbx, rax
	shr	rbx, 0x11
	xor	rbx, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rax, r13
	add	rdx, rax
	sub	r12, rbx
	shl	r13, 0xe
	xor	r13, qword ptr [rsp + 8]
	add	rax, r12
	mov	qword ptr [rdi + rcx*8], rbp
	mov	qword ptr [rdi + rcx*8 + 8], r15
	mov	qword ptr [rdi + rcx*8 + 0x10], r14
	mov	qword ptr [rdi + rcx*8 + 0x18], rbx
	mov	qword ptr [rdi + rcx*8 + 0x20], r13
	mov	qword ptr [rdi + rcx*8 + 0x28], rdx
	mov	qword ptr [rdi + rcx*8 + 0x30], rax
	mov	qword ptr [rdi + rcx*8 + 0x38], r12
	add	rcx, 8
	cmp	rcx, 0x100
	jl	.label_716
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_715:
	mov	qword ptr [rsp + 0x18], rcx
	add	rbp, qword ptr [rdi + rcx*8]
	add	r15, qword ptr [rdi + rcx*8 + 8]
	add	r14, qword ptr [rdi + rcx*8 + 0x10]
	add	rbx, qword ptr [rdi + rcx*8 + 0x18]
	add	r13, qword ptr [rdi + rcx*8 + 0x20]
	add	rdx, qword ptr [rdi + rcx*8 + 0x28]
	mov	qword ptr [rsp + 0x30], rdx
	add	rax, qword ptr [rdi + rcx*8 + 0x30]
	mov	qword ptr [rsp + 0x28], rax
	add	r12, qword ptr [rdi + rcx*8 + 0x38]
	sub	rbp, r13
	mov	rdi, r12
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rsp + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	add	r12, rbp
	sub	r15, rax
	lea	rax, [r15 + rbp]
	mov	qword ptr [rsp + 0x10], rax
	shl	rbp, 9
	xor	rbp, qword ptr [rsp + 0x28]
	sub	r14, rbp
	mov	rdi, r15
	call	just
	shr	rax, 0x17
	xor	rax, r12
	add	r15, r14
	sub	rbx, rax
	mov	r12, rax
	lea	rax, [rbx + r14]
	mov	qword ptr [rsp + 8], rax
	shl	r14, 0xf
	xor	r14, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x28], r14
	sub	r13, r14
	mov	rdi, rbx
	call	just
	shr	rax, 0xe
	xor	r15, rax
	add	rbx, r13
	mov	rdi, qword ptr [rsp + 0x30]
	sub	rdi, r15
	mov	qword ptr [rsp + 0x30], rdi
	mov	r14, r13
	shl	r14, 0x14
	xor	r14, qword ptr [rsp + 8]
	add	r13, rdi
	sub	rbp, r14
	call	just
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
	shr	rax, 0x11
	xor	rbx, rax
	mov	rdx, qword ptr [rsp + 0x30]
	add	rdx, rbp
	sub	r12, rbx
	mov	rax, rbp
	shl	rax, 0xe
	xor	r13, rax
	add	rbp, r12
	mov	rsi, qword ptr [rsp + 0x28]
	mov	qword ptr [rdi + rcx*8], rsi
	mov	qword ptr [rdi + rcx*8 + 8], r15
	mov	qword ptr [rdi + rcx*8 + 0x10], r14
	mov	qword ptr [rdi + rcx*8 + 0x18], rbx
	mov	qword ptr [rdi + rcx*8 + 0x20], r13
	mov	qword ptr [rdi + rcx*8 + 0x28], rdx
	mov	qword ptr [rdi + rcx*8 + 0x30], rbp
	mov	qword ptr [rdi + rcx*8 + 0x38], r12
	add	rcx, 8
	cmp	rcx, 0x100
	mov	rax, rbp
	mov	rbp, rsi
	jl	.label_715
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x800], xmm0
	mov	qword ptr [rdi + 0x810], 0
	add	rsp, 0x38
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
	#Procedure 0x409e20

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
	#Procedure 0x409e30

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
	#Procedure 0x409e40

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_717
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_719
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_717
.label_719:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_717
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_718
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_718:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_717:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ec0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xc8
	test	al, al
	je	.label_720
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_720:
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
	ja	.label_726
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_722
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_725
	test	esi, esi
	jne	.label_726
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_728
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_730
.label_726:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_724
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_725
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_729
.label_722:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_725:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_732
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_721
.label_732:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_721:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_729:
	cmp	eax, 6
	jne	.label_724
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_723
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_727
.label_724:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_731
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_733
.label_728:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_730:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xc8
	ret	
.label_723:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_727:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xc8
	ret	
.label_731:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_733:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a0d0

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
	#Procedure 0x40a0e0

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_734
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_736
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_736
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_737
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_738
.label_736:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_738
.label_734:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_738:
	test	ebx, ebx
	js	.label_737
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_737
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_735
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_737
.label_735:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_737:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a1b0

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
	#Procedure 0x40a1d0

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
	je	.label_740
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_742
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_743
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_739
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_740
.label_739:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_741
.label_742:
	mov	rax, rbx
	jmp	.label_740
.label_743:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_741:
	xor	eax, eax
.label_740:
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a310

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x40a320

	.globl __lstat
	.type __lstat, @function
__lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section .text
	.align	32
	#Procedure 0x40a330

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
