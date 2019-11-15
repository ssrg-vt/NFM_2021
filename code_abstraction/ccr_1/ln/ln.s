	.section	.text
	.align	16
	#Procedure 0x401fd0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_15
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
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
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_backup_suffix_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_16
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_15:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
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
	#Procedure 0x402150

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402180

	.globl emit_backup_suffix_note
	.type emit_backup_suffix_note, @function
emit_backup_suffix_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4021d0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_32
	nop	
.label_31:
	mov	edi, OFFSET FLAT:label_23
	call	strcmp
	test	eax, eax
	je	.label_28
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_31
.label_28:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_23
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_26
	mov	ecx, OFFSET FLAT:label_27
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_24
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_24
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_24:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_23
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_27
	mov	ecx, OFFSET FLAT:label_23
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_35
	mov	ecx, OFFSET FLAT:label_36
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
	.align	16
	#Procedure 0x4022f0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_36
	call	setlocale
	mov	edi, OFFSET FLAT:label_42
	mov	esi, OFFSET FLAT:label_43
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_42
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
	lea	r12, [rsp + 0x38]
	mov	r15d, 0xf000
	xor	r14d, r14d
	xor	eax, eax
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x28], rcx
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_40
.label_909:
	mov	byte ptr [byte ptr [rip + hard_dir_link]],  1
	mov	al, r13b
	nop	word ptr cs:[rax + rax]
.label_40:
	mov	r13d, eax
	mov	edx, OFFSET FLAT:label_67
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	lea	ecx, [rax + 1]
	cmp	ecx, 0x77
	ja	.label_53
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_71]]
.label_910:
	mov	byte ptr [byte ptr [rip + logical]],  1
	mov	al, r13b
	jmp	.label_40
.label_916:
	mov	byte ptr [byte ptr [rip + dereference_dest_dir_symlinks]],  1
	mov	al, r13b
	jmp	.label_40
.label_919:
	test	r14, r14
	jne	.label_76
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	rsi, r12
	call	stat
	test	eax, eax
	jne	.label_82
	mov	eax, dword ptr [rsp + 0x50]
	and	eax, r15d
	cmp	eax, 0x4000
	jne	.label_38
	mov	r14,  qword ptr [word ptr [rip + optarg]]
	mov	al, r13b
	jmp	.label_40
.label_911:
	mov	byte ptr [byte ptr [rip + logical]],  0
	mov	al, r13b
	jmp	.label_40
.label_912:
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0x28], rax
	mov	al, r13b
	jmp	.label_40
.label_913:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	test	rax, rax
	mov	rcx, qword ptr [rsp + 0x18]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x18], rcx
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
	mov	al, r13b
	jmp	.label_40
.label_914:
	mov	byte ptr [byte ptr [rip + remove_existing_files]],  1
	mov	byte ptr [byte ptr [rip + interactive]],  0
	mov	al, r13b
	jmp	.label_40
.label_915:
	mov	byte ptr [byte ptr [rip + remove_existing_files]],  0
	mov	byte ptr [byte ptr [rip + interactive]],  1
	mov	al, r13b
	jmp	.label_40
.label_917:
	mov	byte ptr [byte ptr [rip + relative]],  1
	mov	al, r13b
	jmp	.label_40
.label_918:
	mov	byte ptr [byte ptr [rip + symbolic_link]],  1
	mov	al, r13b
	jmp	.label_40
.label_920:
	mov	byte ptr [byte ptr [rip + verbose]],  1
	mov	al, r13b
	jmp	.label_40
.label_908:
	movsxd	r15,  dword ptr [dword ptr [rip + optind]]
	movsxd	r12, ebp
	sub	r12, r15
	test	r12d, r12d
	jle	.label_72
	cmp	byte ptr [byte ptr [rip + relative]],  1
	mov	rbp, r14
	jne	.label_77
	mov	al,  byte ptr [byte ptr [rip + symbolic_link]]
	test	al, al
	je	.label_78
.label_77:
	mov	al,  byte ptr [byte ptr [rip + hard_dir_link]]
	test	al, al
	jne	.label_37
	call	priv_set_remove_linkdir
.label_37:
	lea	r15, [rbx + r15*8]
	test	r13b, r13b
	je	.label_39
	test	rbp, rbp
	jne	.label_41
	xor	ebp, ebp
	cmp	r12d, 2
	jne	.label_44
	mov	r13d, 0xffffffff
	mov	r12d, 2
	jmp	.label_45
.label_39:
	test	rbp, rbp
	jne	.label_49
	cmp	r12d, 2
	jge	.label_49
	mov	r13d, 0xffffffff
	mov	ebx, 0xffffff9c
	mov	ebp, OFFSET FLAT:label_81
	jmp	.label_45
.label_49:
	test	rbp, rbp
	setne	al
	cmp	r12d, 2
	setne	bl
	mov	r13d, 0xffffffff
	or	bl, al
	jne	.label_50
	mov	rdi, qword ptr [r15]
	mov	rdx, qword ptr [r15 + 8]
	mov	esi, 0xffffff9c
	call	atomic_link
	mov	r13d, eax
	test	r13d, r13d
	js	.label_50
	cmp	r13d, 0x14
	je	.label_50
	cmp	r13d, 0x11
	jne	.label_66
.label_50:
	mov	byte ptr [rsp + 0x17], bl
	mov	rbp, r14
	test	rbp, rbp
	jne	.label_70
	mov	rbp, qword ptr [r15 + r12*8 - 8]
.label_70:
	mov	al,  byte ptr [byte ptr [rip + dereference_dest_dir_symlinks]]
	test	al, al
	mov	eax, 0x230000
	mov	edx, 0x210000
	cmovne	edx, eax
	mov	edi, 0xffffff9c
	xor	eax, eax
	mov	rsi, rbp
	call	openat_safer
	mov	ebx, eax
	test	ebx, ebx
	js	.label_73
	cmp	r14, 1
	sbb	r12d, 0
	jmp	.label_45
.label_73:
	mov	qword ptr [rsp + 0x30], rbp
	test	byte ptr [rsp + 0x17], 1
	mov	rbp, r14
	je	.label_45
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_80
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x30]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
.label_66:
	mov	rbp, r14
.label_45:
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x20]
	test	cl, cl
	je	.label_47
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_51
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x18]
	call	xget_version
.label_47:
	mov	dword ptr [dword ptr [rip + backup_type]],  eax
	mov	rdi, qword ptr [rsp + 0x28]
	call	set_simple_backup_suffix
	test	rbp, rbp
	je	.label_58
	mov	r14d, ebx
	cmp	r12d, 1
	jle	.label_60
	cmp	byte ptr [byte ptr [rip + remove_existing_files]],  1
	jne	.label_52
	cmp	dword ptr [dword ptr [rip + backup_type]],  3
	je	.label_52
	mov	al,  byte ptr [byte ptr [rip + symbolic_link]]
	xor	al, 1
	test	al, 1
	je	.label_52
	mov	edi, 0x3d
	xor	esi, esi
	mov	edx, OFFSET FLAT:triple_hash
	mov	ecx, OFFSET FLAT:triple_compare
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	mov	qword ptr [word ptr [rip + dest_set]],  rax
	test	rax, rax
	jne	.label_52
	call	xalloc_die
.label_58:
	mov	rdi, qword ptr [r15]
	mov	rdx, qword ptr [r15 + 8]
	mov	esi, 0xffffff9c
	mov	rcx, rdx
	mov	r8d, r13d
	call	do_link
	mov	ebx, eax
	jmp	.label_74
.label_60:
	mov	bl, 1
	jne	.label_74
.label_52:
	mov	bl, 1
	nop	word ptr [rax + rax]
.label_48:
	mov	rdi, qword ptr [r15]
	call	last_component
	mov	rdi, rbp
	mov	rsi, rax
	lea	rdx, [rsp + 0x38]
	call	file_name_concat
	mov	r13, rbp
	mov	rbp, rax
	mov	rdi, qword ptr [rsp + 0x38]
	call	strip_trailing_slashes
	mov	rdi, qword ptr [r15]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	r8d, 0xffffffff
	mov	esi, r14d
	mov	rcx, rbp
	call	do_link
	and	bl, al
	mov	rdi, rbp
	mov	rbp, r13
	call	free
	add	r15, 8
	dec	r12d
	jne	.label_48
.label_74:
	not	bl
	and	bl, 1
	movzx	eax, bl
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_53:
	cmp	eax, 0xffffff7d
	je	.label_54
	cmp	eax, 0xffffff7e
	jne	.label_55
	xor	edi, edi
	call	usage
.label_55:
	mov	edi, 1
	call	usage
.label_54:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_23
	mov	edx, OFFSET FLAT:label_26
	mov	r8d, OFFSET FLAT:label_62
	mov	r9d, OFFSET FLAT:label_63
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_72:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
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
.label_76:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_75
	jmp	.label_57
.label_82:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_79
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
.label_38:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_46
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
.label_41:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_56
	jmp	.label_57
.label_44:
	xor	edi, edi
	cmp	r12d, 1
	jg	.label_59
	mov	esi, OFFSET FLAT:label_61
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r15]
	jmp	.label_64
.label_78:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_65
.label_57:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_59:
	mov	esi, OFFSET FLAT:label_68
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r15 + 0x10]
.label_64:
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402900

	.globl atomic_link
	.type atomic_link, @function
atomic_link:
	push	rax
	mov	r9, rdx
	mov	ecx, esi
	mov	rdx, rdi
	cmp	byte ptr [byte ptr [rip + symbolic_link]],  1
	jne	.label_83
	mov	al,  byte ptr [byte ptr [rip + relative]]
	test	al, al
	je	.label_85
	mov	eax, 0xffffffff
	pop	rcx
	ret	
.label_83:
	movzx	r8d,  byte ptr [byte ptr [rip + logical]]
	shl	r8d, 0xa
	mov	edi, 0xffffff9c
	mov	rsi, rdx
	mov	edx, ecx
	mov	rcx, r9
	call	linkat
	jmp	.label_84
.label_85:
	mov	rdi, rdx
	mov	esi, ecx
	mov	rdx, r9
	call	symlinkat
.label_84:
	mov	edi, eax
	pop	rax
	jmp	errnoize
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402960

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
	mov	dword ptr [rsp + 0x10], esi
	mov	r12, rdi
	mov	al,  byte ptr [byte ptr [rip + logical]]
	xor	ebx, ebx
	test	al, al
	sete	r15b
	test	r14d, r14d
	jns	.label_109
	mov	rdi, r12
	mov	esi, dword ptr [rsp + 0x10]
	mov	rdx, rbp
	call	atomic_link
	mov	r14d, eax
.label_109:
	mov	qword ptr [rsp + 0x20], rbp
	test	r14d, r14d
	jne	.label_125
	mov	rax,  qword ptr [word ptr [rip + dest_set]]
	mov	ebp, 1
	test	rax, rax
	je	.label_129
.label_125:
	mov	al,  byte ptr [byte ptr [rip + symbolic_link]]
	test	al, al
	je	.label_141
	mov	ebp, 1
	mov	al, 1
	jmp	.label_96
.label_141:
	mov	bl, r15b
	shl	ebx, 8
	lea	rdx, [rsp + 0x38]
	mov	edi, 0xffffff9c
	mov	rsi, r12
	mov	ecx, ebx
	call	fstatat
	xor	ebp, ebp
	test	eax, eax
	je	.label_129
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_79
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r12
	jmp	.label_91
.label_129:
	mov	al,  byte ptr [byte ptr [rip + symbolic_link]]
.label_96:
	test	r14d, r14d
	je	.label_97
	test	al, 1
	jne	.label_98
	mov	al,  byte ptr [byte ptr [rip + hard_dir_link]]
	test	al, al
	jne	.label_98
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x50]
	cmp	eax, 0x4000
	jne	.label_98
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_104
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r12
	jmp	.label_122
.label_98:
	xor	r15d, r15d
	cmp	byte ptr [byte ptr [rip + relative]],  1
	mov	qword ptr [rsp + 0x18], r13
	jne	.label_113
	mov	rdi, r12
	mov	rsi, r13
	call	convert_abs_rel
	mov	r15, rax
	mov	r12, r15
.label_113:
	mov	r13b, 1
	mov	al,  byte ptr [byte ptr [rip + remove_existing_files]]
	test	al, al
	jne	.label_120
	mov	al,  byte ptr [byte ptr [rip + interactive]]
	test	al, al
	jne	.label_120
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	cmp	dword ptr [dword ptr [rip + backup_type]],  0
	setne	r13b
	je	.label_128
.label_120:
	lea	rdx, [rsp + 0xc8]
	mov	ecx, 0x100
	mov	edi, dword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x20]
	call	fstatat
	test	eax, eax
	je	.label_137
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	cmp	ebx, 2
	mov	r13d, 0
	je	.label_112
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_79
.label_127:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x18]
.label_91:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_93
.label_97:
	xor	ebp, ebp
	test	al, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x28], rax
	mov	rbx, qword ptr [rsp + 0x20]
	je	.label_101
	jmp	.label_106
.label_137:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0xe0]
	cmp	eax, 0x4000
	jne	.label_107
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_110
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x18]
.label_122:
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_93
.label_107:
	mov	rdi,  qword ptr [word ptr [rip + dest_set]]
	lea	rdx, [rsp + 0xc8]
	mov	rbx, qword ptr [rsp + 0x18]
	mov	rsi, rbx
	call	seen_file
	test	al, al
	je	.label_116
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_132
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, r12
.label_111:
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbp
	mov	r8, rbx
	call	error
	jmp	.label_93
.label_116:
	cmp	dword ptr [dword ptr [rip + backup_type]],  0
	je	.label_95
	mov	al,  byte ptr [byte ptr [rip + symbolic_link]]
	test	al, al
	je	.label_138
	jmp	.label_99
.label_95:
	cmp	byte ptr [byte ptr [rip + remove_existing_files]],  1
	jne	.label_99
.label_138:
	test	ebp, ebp
	je	.label_103
	lea	rsi, [rsp + 0x38]
	mov	rdi, r12
	call	stat
	test	eax, eax
	jne	.label_99
.label_103:
	mov	rax, qword ptr [rsp + 0x40]
	cmp	rax, qword ptr [rsp + 0xd0]
	jne	.label_99
	mov	rax, qword ptr [rsp + 0x38]
	cmp	rax, qword ptr [rsp + 0xc8]
	jne	.label_99
	cmp	qword ptr [rsp + 0x48], 1
	je	.label_86
	mov	edi, 0xffffff9c
	mov	rsi, r12
	mov	edx, dword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x20]
	call	same_nameat
	test	al, al
	je	.label_99
.label_86:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_121
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r12
	call	quotearg_n_style
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rsp + 0x18]
	jmp	.label_111
.label_99:
	xor	ebp, ebp
	test	r14d, r14d
	js	.label_135
	cmp	r14d, 0x11
	jne	.label_112
.label_135:
	mov	qword ptr [rsp + 0x28], r15
	cmp	byte ptr [byte ptr [rip + interactive]],  1
	jne	.label_139
	mov	rbp,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_134
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 8], rax
	mov	r15,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x18]
	call	quotearg_style
	mov	rbx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbp
	mov	rdx, qword ptr [rsp + 8]
	mov	rcx, r15
	mov	r8, rbx
	call	__fprintf_chk
	mov	r15b, 1
	call	yesno
	test	al, al
	je	.label_93
.label_139:
	mov	edx,  dword ptr [dword ptr [rip + backup_type]]
	xor	ebp, ebp
	test	edx, edx
	je	.label_89
	mov	ebp, dword ptr [rsp + 0x10]
	mov	edi, ebp
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rsi, rbx
	call	find_backup_file_name
	mov	edi, ebp
	mov	rsi, rbx
	mov	edx, ebp
	mov	rbp, rax
	mov	rcx, rbp
	call	renameat
	test	eax, eax
	je	.label_89
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdi, rbp
	call	free
	xor	ebp, ebp
	cmp	ebx, 2
	mov	r13d, 0
	mov	r15, qword ptr [rsp + 0x28]
	je	.label_112
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_126
	jmp	.label_127
.label_89:
	mov	r15, qword ptr [rsp + 0x28]
.label_112:
	mov	qword ptr [rsp + 8], rbp
.label_128:
	cmp	byte ptr [byte ptr [rip + symbolic_link]],  1
	jne	.label_131
	movzx	ecx, r13b
	mov	rdi, r12
	mov	esi, dword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rdx, rbx
	mov	r8d, r14d
	call	force_symlinkat
	jmp	.label_140
.label_131:
	movzx	r8d,  byte ptr [byte ptr [rip + logical]]
	shl	r8d, 0xa
	mov	dword ptr [rsp], r14d
	movzx	r9d, r13b
	mov	edi, 0xffffff9c
	mov	rsi, r12
	mov	edx, dword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rcx, rbx
	call	force_linkat
.label_140:
	mov	r14d, eax
	mov	rbp, qword ptr [rsp + 8]
	mov	al,  byte ptr [byte ptr [rip + symbolic_link]]
	test	r14d, r14d
	mov	r13, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 0x28], r15
	jle	.label_92
	test	al, 1
	je	.label_100
	cmp	r14d, 0x24
	je	.label_102
	cmp	byte ptr [r12], 0
	je	.label_102
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_136
	jmp	.label_118
.label_92:
	test	al, 1
	jne	.label_106
.label_101:
	mov	rdi,  qword ptr [word ptr [rip + dest_set]]
	lea	rdx, [rsp + 0x38]
	mov	rsi, r13
	call	record_file
.label_106:
	mov	r15b, 1
	cmp	byte ptr [byte ptr [rip + verbose]],  1
	jne	.label_108
	mov	qword ptr [rsp + 0x10], r12
	mov	r12, r13
	mov	r14d, OFFSET FLAT:label_36
	mov	qword ptr [rsp + 8], rbp
	test	rbp, rbp
	mov	r13d, OFFSET FLAT:label_36
	je	.label_115
	mov	r14, r12
	sub	rbx, r14
	mov	rbp, rbx
	xor	r13d, r13d
	test	rbp, rbp
	mov	r15, qword ptr [rsp + 8]
	mov	rbx, r15
	jle	.label_124
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
.label_124:
	mov	edi, 2
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	r14, rax
	mov	rdi, r13
	call	free
	mov	r13d, OFFSET FLAT:label_88
	mov	r15b, 1
.label_115:
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r12
	call	quotearg_n_style
	mov	rbp, rax
	mov	al,  byte ptr [byte ptr [rip + symbolic_link]]
	test	al, al
	mov	eax, 0x2d
	mov	ebx, 0x3d
	cmovne	ebx, eax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rsp + 0x10]
	call	quotearg_n_style
	mov	qword ptr [rsp], rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_105
	xor	eax, eax
	mov	r8, rbp
	mov	rdx, r14
	mov	rcx, r13
	mov	r9d, ebx
	call	__printf_chk
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_108
.label_100:
	lea	eax, [r14 - 0x11]
	cmp	eax, 0xe
	ja	.label_114
	jmp	qword ptr [word ptr [+ (rax * 8) + label_90]]
.label_1000:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_117
	jmp	.label_118
.label_102:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	jmp	.label_118
.label_114:
	cmp	r14d, 0x7a
	jne	.label_123
.label_999:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_133
	jmp	.label_118
.label_123:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_142
.label_118:
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x30], rax
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r13
	call	quotearg_n_style
	mov	rbx, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, r12
	call	quotearg_n_style
	mov	rbp, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rcx, rbx
	mov	r8, rbp
	call	error
	mov	rbp, qword ptr [rsp + 8]
	test	rbp, rbp
	je	.label_87
	mov	edi, dword ptr [rsp + 0x10]
	mov	rsi, rbp
	mov	edx, edi
	mov	rcx, qword ptr [rsp + 0x20]
	call	renameat
	test	eax, eax
	je	.label_130
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_94
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	mov	rbp, qword ptr [rsp + 8]
	call	error
	jmp	.label_108
.label_87:
	xor	ebp, ebp
	jmp	.label_108
.label_130:
	xor	r15d, r15d
.label_108:
	mov	rdi, rbp
	call	free
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
.label_93:
	mov	eax, r15d
	add	rsp, 0x158
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
	#Procedure 0x4030a0

	.globl errnoize
	.type errnoize, @function
errnoize:
	xor	eax, eax
	test	edi, edi
	jns	.label_143
	push	rax
	call	__errno_location
	mov	eax, dword ptr [rax]
	add	rsp, 8
.label_143:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030c0

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
	je	.label_145
	test	r12, r12
	je	.label_145
	mov	edi, 0x1000
	call	xmalloc
	mov	rbx, rax
	mov	ecx, 0x1000
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, rbx
	call	relpath
	test	al, al
	jne	.label_145
	mov	rdi, rbx
	call	free
	xor	ebx, ebx
.label_145:
	mov	rdi, r15
	call	free
	mov	rdi, r13
	call	free
	mov	rdi, r12
	call	free
	test	rbx, rbx
	je	.label_144
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_144:
	mov	rdi, r14
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	xstrdup
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403170

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
	mov	r13d, edx
	mov	r14, rsi
	mov	r15d, edi
	mov	ebp, dword ptr [rsp + 0x160]
	test	ebp, ebp
	jns	.label_151
	mov	edi, r15d
	mov	rsi, r14
	mov	edx, r13d
	mov	r12, rcx
	mov	dword ptr [rsp + 4], r8d
	call	linkat
	xor	ebp, ebp
	test	eax, eax
	je	.label_146
	call	__errno_location
	mov	rcx, r12
	mov	ebp, dword ptr [rax]
	mov	r8d, dword ptr [rsp + 4]
.label_151:
	cmp	ebp, 0x11
	jne	.label_146
	mov	r12d, r8d
	xor	bl, 1
	jne	.label_146
	lea	rsi, [rsp + 0x20]
	mov	rbp, rcx
	mov	rdi, rcx
	call	samedir_template
	mov	rbx, rax
	test	rbx, rbx
	je	.label_150
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
	test	eax, eax
	je	.label_148
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_149
.label_150:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_146
.label_148:
	mov	edi, r13d
	mov	rsi, rbx
	mov	edx, r13d
	mov	rcx, rbp
	call	renameat
	mov	ebp, 0xffffffff
	test	eax, eax
	je	.label_147
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_147:
	xor	edx, edx
	mov	edi, r13d
	mov	rsi, rbx
	call	unlinkat
.label_149:
	lea	rax, [rsp + 0x20]
	cmp	rbx, rax
	je	.label_146
	mov	rdi, rbx
	call	free
.label_146:
	mov	eax, ebp
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
	#Procedure 0x403290

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
	jb	.label_152
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_153
.label_152:
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	__mempcpy_chk
	movabs	rcx, 0x5858585858587543
	mov	qword ptr [rax], rcx
	mov	byte ptr [rax + 8], 0
	mov	rax, r14
.label_153:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403300

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
	.align	16
	#Procedure 0x403320

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
	jns	.label_157
	mov	rdi, r14
	mov	esi, r15d
	mov	rdx, r13
	call	symlinkat
	xor	ebp, ebp
	test	eax, eax
	je	.label_154
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_157:
	cmp	ebp, 0x11
	jne	.label_154
	xor	bl, 1
	jne	.label_154
	lea	rbx, [rsp + 0x10]
	mov	rdi, r13
	mov	rsi, rbx
	call	samedir_template
	mov	r12, rax
	test	r12, r12
	je	.label_155
	mov	qword ptr [rsp], r14
	mov	dword ptr [rsp + 8], r15d
	lea	rdx, [rsp]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:try_symlink
	mov	r8d, 6
	mov	rdi, r12
	call	try_tempname_len
	test	eax, eax
	je	.label_158
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_156
.label_155:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_154
.label_158:
	mov	edi, r15d
	mov	rsi, r12
	mov	edx, r15d
	mov	rcx, r13
	call	renameat
	mov	ebp, 0xffffffff
	test	eax, eax
	je	.label_156
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edx, edx
	mov	edi, r15d
	mov	rsi, r12
	call	unlinkat
.label_156:
	cmp	r12, rbx
	je	.label_154
	mov	rdi, r12
	call	free
.label_154:
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
	.align	16
	#Procedure 0x403420

	.globl try_symlink
	.type try_symlink, @function
try_symlink:
	mov	rax, rdi
	mov	rdi, qword ptr [rsi]
	mov	esi, dword ptr [rsi + 8]
	mov	rdx, rax
	jmp	symlinkat
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403440

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
	je	.label_169
	cdqe	
	lea	rcx, [r14 + rax]
	cmp	byte ptr [rbx + rax], 0x2f
	lea	rdx, [rbx + rax + 1]
	lea	rbx, [rbx + rax]
	cmove	rbx, rdx
	cmp	byte ptr [r14 + rax], 0x2f
	lea	r14, [r14 + rax + 1]
	cmovne	r14, rcx
	cmp	byte ptr [rbx], 0
	je	.label_170
	lea	r15, [rsp + 8]
	lea	r12, [rsp]
	mov	edi, OFFSET FLAT:label_166
	mov	rsi, r15
	mov	rdx, r12
	call	buffer_or_output
	mov	ebp, eax
	jmp	.label_172
	nop	dword ptr [rax]
.label_161:
	inc	rbx
.label_172:
	movzx	eax, byte ptr [rbx]
	cmp	al, 0x2f
	je	.label_164
	test	al, al
	jne	.label_161
	jmp	.label_162
.label_164:
	mov	edi, OFFSET FLAT:label_163
	mov	rsi, r15
	mov	rdx, r12
	call	buffer_or_output
	and	bpl, 1
	or	bpl, al
	jmp	.label_161
.label_162:
	cmp	byte ptr [r14], 0
	je	.label_167
	lea	r15, [rsp + 8]
	lea	r12, [rsp]
	mov	edi, OFFSET FLAT:label_171
	mov	rsi, r15
	mov	rdx, r12
	call	buffer_or_output
	and	bpl, 1
	or	bpl, al
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, r12
	call	buffer_or_output
	or	bpl, al
	jmp	.label_167
.label_169:
	xor	eax, eax
	jmp	.label_168
.label_170:
	cmp	byte ptr [r14], 0
	mov	edi, OFFSET FLAT:label_81
	cmovne	rdi, r14
	lea	rsi, [rsp + 8]
	lea	rdx, [rsp]
	call	buffer_or_output
	mov	ebp, eax
.label_167:
	and	bpl, 1
	je	.label_159
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_160
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x24
	mov	edx, OFFSET FLAT:label_165
	xor	eax, eax
	call	error
.label_159:
	test	bpl, bpl
	sete	al
.label_168:
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403590

	.globl path_common_prefix
	.type path_common_prefix, @function
path_common_prefix:
	cmp	byte ptr [rdi + 1], 0x2f
	sete	cl
	cmp	byte ptr [rsi + 1], 0x2f
	sete	dl
	xor	eax, eax
	xor	dl, cl
	jne	.label_178
	mov	dl, byte ptr [rdi]
	xor	r8d, r8d
	test	dl, dl
	je	.label_175
	xor	r8d, r8d
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_181:
	movzx	ecx, byte ptr [rsi + r8]
	test	cl, cl
	je	.label_173
	cmp	dl, cl
	jne	.label_173
	lea	rcx, [r8 + 1]
	cmp	dl, 0x2f
	cmove	eax, ecx
	movzx	edx, byte ptr [rdi + r8 + 1]
	test	dl, dl
	mov	r8, rcx
	jne	.label_181
	add	rsi, rcx
	add	rdi, rcx
	mov	r8d, ecx
	jmp	.label_177
.label_175:
	xor	eax, eax
	jmp	.label_177
.label_173:
	add	rsi, r8
	cmp	byte ptr [rdi + r8], 0
	lea	rdi, [rdi + r8]
	jne	.label_179
.label_177:
	cmp	byte ptr [rsi], 0
	je	.label_174
	cmp	byte ptr [rdi], 0
	je	.label_176
.label_179:
	mov	cl, byte ptr [rsi]
.label_180:
	test	cl, cl
	jne	.label_178
	cmp	byte ptr [rdi], 0x2f
	je	.label_174
	jmp	.label_178
.label_176:
	mov	cl, byte ptr [rsi]
	cmp	cl, 0x2f
	jne	.label_180
.label_174:
	mov	eax, r8d
.label_178:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
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
	je	.label_182
	mov	rdi, r12
	call	strlen
	mov	rbx, rax
	mov	al, 1
	cmp	rbx, qword ptr [r14]
	jae	.label_183
	mov	rdx, rbx
	inc	rdx
	mov	rdi, r13
	mov	rsi, r12
	call	memcpy
	add	qword ptr [r15], rbx
	sub	qword ptr [r14], rbx
	jmp	.label_184
.label_182:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, r12
	call	fputs_unlocked
.label_184:
	xor	eax, eax
.label_183:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403690

	.globl set_simple_backup_suffix
	.type set_simple_backup_suffix, @function
set_simple_backup_suffix:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	jne	.label_185
	mov	edi, OFFSET FLAT:label_188
	call	getenv
	mov	rbx, rax
	mov	eax, OFFSET FLAT:label_186
	test	rbx, rbx
	je	.label_187
.label_185:
	mov	eax, OFFSET FLAT:label_186
	cmp	byte ptr [rbx], 0
	je	.label_187
	mov	rdi, rbx
	call	last_component
	cmp	rbx, rax
	mov	eax, OFFSET FLAT:label_186
	cmove	rax, rbx
.label_187:
	mov	qword ptr [word ptr [rip + simple_backup_suffix]],  rax
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
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
	sub	rsp, 0x48
	mov	dword ptr [rsp + 0x24], ecx
	mov	ebx, edx
	mov	r13, rsi
	mov	dword ptr [rsp + 0x20], edi
	mov	rdi, r13
	call	last_component
	mov	rbp, rax
	sub	rbp, r13
	mov	rdi, rax
	call	strlen
	mov	r12, rax
	add	r12, rbp
	cmp	qword ptr [word ptr [rip + simple_backup_suffix]],  0
	jne	.label_195
	xor	edi, edi
	call	set_simple_backup_suffix
.label_195:
	mov	rdi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	call	strlen
	inc	rax
	cmp	rax, 9
	mov	ecx, 9
	mov	qword ptr [rsp + 0x28], rax
	cmovae	rcx, rax
	lea	rdi, [r12 + rcx + 1]
	mov	qword ptr [rsp + 0x30], rdi
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rsp + 0x10], rcx
	xor	eax, eax
	test	rcx, rcx
	je	.label_191
	mov	qword ptr [rsp + 0x18], 0
	mov	dword ptr [rsp + 0xc], 0xffffffff
	mov	qword ptr [rsp + 0x40], 0
	lea	rax, [r12 + 1]
	mov	qword ptr [rsp + 0x38], rax
	nop	
.label_192:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x38]
	call	memcpy
	cmp	ebx, 1
	jne	.label_197
	mov	rdi, qword ptr [rsp + 0x10]
	add	rdi, r12
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdx, qword ptr [rsp + 0x28]
	call	memcpy
	mov	ebx, 1
	jmp	.label_189
	nop	word ptr [rax + rax]
.label_197:
	lea	rax, [rsp + 0xc]
	mov	qword ptr [rsp], rax
	mov	edi, dword ptr [rsp + 0x20]
	lea	rsi, [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rcx, r12
	mov	r8, rbp
	lea	r9, [rsp + 0x18]
	call	numbered_backup
	cmp	eax, 1
	je	.label_196
	cmp	eax, 2
	je	.label_201
	cmp	eax, 3
	jne	.label_189
	jmp	.label_198
.label_201:
	cmp	ebx, 2
	jne	.label_196
	mov	rdi, qword ptr [rsp + 0x10]
	add	rdi, r12
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdx, qword ptr [rsp + 0x28]
	call	memcpy
	mov	ebx, 1
.label_196:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	edx, dword ptr [rsp + 0xc]
	mov	rsi, r12
	lea	rcx, [rsp + 0x40]
	call	check_extension
.label_189:
	mov	eax, dword ptr [rsp + 0x24]
	test	al, al
	je	.label_190
	cmp	dword ptr [rsp + 0xc], 0
	jns	.label_194
	mov	dword ptr [rsp + 0xc], 0xffffff9c
	xor	ebp, ebp
.label_194:
	xor	r8d, r8d
	cmp	ebx, 1
	setne	r8b
	mov	edx, dword ptr [rsp + 0xc]
	mov	rcx, qword ptr [rsp + 0x10]
	add	rcx, rbp
	mov	edi, 0xffffff9c
	mov	rsi, r13
	call	renameatu
	test	eax, eax
	je	.label_190
	call	__errno_location
	mov	r15, rax
	mov	r14d, dword ptr [r15]
	cmp	r14d, 0x11
	je	.label_192
	mov	rdi, qword ptr [rsp + 0x18]
	test	rdi, rdi
	je	.label_200
	call	closedir
.label_200:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	mov	dword ptr [r15], r14d
	jmp	.label_199
.label_190:
	mov	rdi, qword ptr [rsp + 0x18]
	test	rdi, rdi
	je	.label_193
	call	closedir
.label_193:
	mov	rax, qword ptr [rsp + 0x10]
	jmp	.label_191
.label_198:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0xc
.label_199:
	xor	eax, eax
.label_191:
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
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 0x20], rdx
	mov	ebx, edi
	mov	r12, qword ptr [r15]
	mov	qword ptr [rsp + 0x28], rsi
	mov	r14, qword ptr [rsi]
	mov	qword ptr [rsp + 0x48], r8
	lea	rbp, [r14 + r8]
	mov	rdi, rbp
	call	base_len
	mov	r13, rax
	test	r12, r12
	mov	qword ptr [rsp], r13
	je	.label_221
	mov	rdi, r12
	call	rewinddir
	jmp	.label_214
.label_221:
	mov	rcx, qword ptr [rsp + 0x90]
	movzx	r13d, word ptr [rbp]
	mov	word ptr [rbp], 0x2e
	xor	edx, edx
	mov	edi, ebx
	mov	rsi, r14
	call	opendirat
	mov	r12, rax
	test	r12, r12
	je	.label_212
	mov	word ptr [rbp], r13w
	mov	r13, qword ptr [rsp]
	mov	byte ptr [rbp + r13 + 4], 0
	mov	dword ptr [rbp + r13], 0x7e317e2e
	mov	qword ptr [r15], r12
.label_214:
	mov	rdi, r12
	call	readdir
	mov	rbp, rax
	test	rbp, rbp
	je	.label_208
	lea	rax, [r13 + 4]
	mov	qword ptr [rsp + 0x50], rax
	lea	rax, [r13 + 2]
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rsp + 8]
	lea	rax, [rax + 4]
	mov	qword ptr [rsp + 0x30], rax
	lea	rax, [r13 + 0x17]
	mov	qword ptr [rsp + 0x38], rax
	mov	eax, 2
	mov	qword ptr [rsp + 0x10], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_204
.label_209:
	mov	r13d, 1
.label_220:
	cmp	al, 0x7e
	jne	.label_203
	mov	rax, qword ptr [rsp]
	lea	rbp, [rbp + rax + 0x15]
	cmp	byte ptr [rbp + r13 + 1], 0
	jne	.label_203
	cmp	qword ptr [rsp + 0x18], r13
	jb	.label_202
	jne	.label_203
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [r14 + rax + 2]
	mov	rsi, rbp
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	jle	.label_202
.label_203:
	mov	r15, r14
	mov	r13, qword ptr [rsp]
	jmp	.label_206
.label_202:
	movzx	edx, bl
	lea	rcx, [rdx + r13]
	mov	rax, qword ptr [rsp + 0x30]
	mov	qword ptr [rsp + 0x18], rcx
	lea	rsi, [rax + rcx]
	mov	rbx, qword ptr [rsp + 0x20]
	cmp	rbx, rsi
	jae	.label_211
	mov	rax, rsi
	shr	rax, 0x3e
	sete	cl
	shl	rsi, cl
	mov	rdi, r14
	mov	rbx, rsi
	mov	r15, rdx
	call	realloc
	mov	rdx, r15
	mov	r15, rax
	test	r15, r15
	jne	.label_219
	jmp	.label_210
.label_211:
	mov	r15, r14
.label_219:
	mov	qword ptr [rsp + 0x20], rbx
	mov	rcx, qword ptr [rsp + 8]
	lea	rax, [r15 + rcx]
	mov	byte ptr [r15 + rcx], 0x2e
	lea	rbx, [rax + rdx]
	mov	word ptr [r15 + rcx + 1], 0x307e
	mov	qword ptr [rsp + 0x10], rdx
	lea	rdi, [rdx + rax + 2]
	lea	rdx, [r13 + 2]
	mov	rsi, rbp
	call	memcpy
	lea	rax, [r13 + rbx + 1]
	mov	cl, byte ptr [r13 + rbx + 1]
	cmp	cl, 0x39
	jne	.label_213
	mov	r13, qword ptr [rsp]
	nop	dword ptr [rax]
.label_215:
	mov	byte ptr [rax], 0x30
	movzx	ecx, byte ptr [rax - 1]
	dec	rax
	cmp	cl, 0x39
	je	.label_215
	jmp	.label_217
.label_213:
	mov	r13, qword ptr [rsp]
.label_217:
	inc	cl
	mov	byte ptr [rax], cl
	jmp	.label_206
	nop	
.label_204:
	lea	rbx, [rbp + 0x13]
	mov	rdi, rbx
	call	strlen
	cmp	rax, qword ptr [rsp + 0x50]
	jb	.label_205
	mov	rax, qword ptr [rsp + 0x48]
	lea	rdi, [r14 + rax]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x40]
	call	memcmp
	test	eax, eax
	jne	.label_205
	mov	al, byte ptr [rbp + r13 + 0x15]
	mov	ecx, eax
	add	cl, 0xcf
	cmp	cl, 8
	ja	.label_205
	lea	rcx, [rbp + r13 + 0x13]
	cmp	al, 0x39
	sete	bl
	movsx	eax, byte ptr [rcx + 3]
	mov	ecx, eax
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_209
	mov	rcx, qword ptr [rsp + 0x38]
	lea	rcx, [rbp + rcx]
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_218:
	cmp	al, 0x39
	sete	al
	and	bl, al
	movsx	eax, byte ptr [rcx + r13]
	mov	edx, eax
	add	edx, -0x30
	inc	r13
	cmp	edx, 0xa
	jb	.label_218
	inc	r13
	jmp	.label_220
	nop	word ptr cs:[rax + rax]
.label_205:
	mov	r15, r14
.label_206:
	mov	rdi, r12
	call	readdir
	mov	rbp, rax
	test	rbp, rbp
	mov	r14, r15
	jne	.label_204
	jmp	.label_207
.label_208:
	mov	eax, 2
	mov	qword ptr [rsp + 0x10], rax
	mov	r15, r14
.label_207:
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], r15
	mov	rcx, qword ptr [rsp + 0x10]
.label_216:
	mov	eax, ecx
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_212:
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 0xc
	sete	cl
	or	ecx, 2
	mov	word ptr [rbp], r13w
	mov	rax, qword ptr [rsp]
	mov	byte ptr [rbp + rax + 4], 0
	mov	dword ptr [rbp + rax], 0x7e317e2e
	jmp	.label_216
.label_210:
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], r14
	mov	ecx, 3
	jmp	.label_216
	nop	
	.section	.text
	.align	16
	#Procedure 0x403c10

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
	jb	.label_225
	cmp	qword ptr [r12], 0
	jne	.label_223
	test	ebp, ebp
	js	.label_224
	call	__errno_location
	mov	qword ptr [rsp], rax
	mov	dword ptr [rax], 0
	mov	esi, 3
	mov	edi, ebp
	call	fpathconf
	mov	rcx, qword ptr [rsp]
	cmp	dword ptr [rcx], 1
	sbb	rax, 0
	jmp	.label_222
.label_224:
	movzx	eax, word ptr [r14]
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
	movzx	ecx, word ptr [rsp]
	mov	word ptr [r14], cx
.label_222:
	cmp	rax, -1
	mov	ecx, 0xe
	mov	rdx, -1
	cmovl	rdx, rcx
	test	rax, rax
	cmovns	rdx, rax
	mov	qword ptr [r12], rdx
.label_223:
	mov	rax, qword ptr [r12]
.label_225:
	cmp	rax, r13
	jae	.label_226
	add	rbx, r15
	sub	rbx, r14
	cmp	rax, rbx
	lea	rax, [rax - 1]
	cmova	rax, rbx
	mov	word ptr [r14 + rax], 0x7e
.label_226:
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
	#Procedure 0x403d10

	.globl find_backup_file_name
	.type find_backup_file_name, @function
find_backup_file_name:
	push	rax
	xor	ecx, ecx
	call	backupfile_internal
	test	rax, rax
	je	.label_227
	pop	rcx
	ret	
.label_227:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d30

	.globl get_version
	.type get_version, @function
get_version:
	mov	eax, 2
	test	rsi, rsi
	je	.label_228
	cmp	byte ptr [rsi], 0
	je	.label_228
	push	rax
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + backup_types]]
	add	rsp, 8
.label_228:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d70

	.globl xget_version
	.type xget_version, @function
xget_version:
	test	rsi, rsi
	je	.label_229
	cmp	byte ptr [rsi], 0
	je	.label_229
	jmp	get_version
.label_229:
	push	rax
	mov	edi, OFFSET FLAT:label_230
	call	getenv
	mov	edi, OFFSET FLAT:label_231
	mov	rsi, rax
	pop	rax
	jmp	get_version
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403da0

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
	mov	rbp, rdi
	mov	qword ptr [rsp + 0x38], 0
	mov	r14d, ebx
	and	r14d, 3
	lea	eax, [rbx + 3]
	test	eax, r14d
	jne	.label_266
	test	rbp, rbp
	je	.label_266
	mov	al, byte ptr [rbp]
	cmp	al, 0x2f
	je	.label_283
	test	al, al
	jne	.label_280
	call	__errno_location
	mov	dword ptr [rax], 2
	jmp	.label_254
.label_266:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_254:
	xor	ebp, ebp
.label_239:
	mov	rax, rbp
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_283:
	mov	edi, 0x1000
	call	xmalloc
	mov	rdi, rax
	mov	byte ptr [rdi], 0x2f
	lea	rax, [rdi + 0x1000]
	lea	r13, [rdi + 1]
	jmp	.label_240
.label_280:
	mov	r15, rbp
	call	xgetcwd
	xor	ebp, ebp
	test	rax, rax
	je	.label_239
	xor	esi, esi
	mov	rbp, rax
	mov	rdi, rbp
	call	__rawmemchr
	mov	rdi, rbp
	mov	r13, rax
	sub	r13, rdi
	cmp	r13, 0xfff
	jg	.label_250
	mov	esi, 0x1000
	call	xrealloc
	mov	rdi, rax
	add	r13, rdi
	add	rax, 0x1000
	jmp	.label_255
.label_250:
	mov	r13, rax
.label_255:
	mov	rbp, r15
.label_240:
	xor	r15d, r15d
	cmp	byte ptr [rbp], 0
	je	.label_260
	mov	ecx, ebx
	and	ecx, 4
	mov	dword ptr [rsp + 0x48], ecx
	mov	ecx, ebx
	and	ecx, 7
	mov	dword ptr [rsp + 0x4c], ecx
	xor	ecx, ecx
	cmp	r14d, 2
	setne	cl
	lea	ecx, [rcx + rcx*8 + 4]
	mov	dword ptr [rsp + 0x44], ecx
	xor	r15d, r15d
	and	bl, 3
	mov	rdx, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x18], rcx
	mov	dword ptr [rsp + 0x14], ecx
	mov	dword ptr [rsp + 0x2c], r14d
.label_263:
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp], r15
	mov	rbp, rdx
.label_270:
	lea	rdx, [rdi + 1]
	mov	r12, r13
	nop	word ptr cs:[rax + rax]
.label_256:
	dec	rbp
	mov	r15, rbp
	nop	word ptr cs:[rax + rax]
.label_267:
	cmp	byte ptr [r15 + 1], 0x2f
	lea	r15, [r15 + 1]
	je	.label_267
	mov	rbp, r15
	jmp	.label_286
.label_235:
	inc	rbp
.label_286:
	movzx	ecx, byte ptr [rbp]
	test	cl, cl
	je	.label_233
	cmp	cl, 0x2f
	jne	.label_235
.label_233:
	mov	r14, rbp
	sub	r14, r15
	cmp	r14, 1
	je	.label_237
	cmp	r14, 2
	jne	.label_241
	cmp	byte ptr [r15], 0x2e
	jne	.label_243
	cmp	byte ptr [r15 + 1], 0x2e
	jne	.label_243
	cmp	r12, rdx
	jbe	.label_246
	dec	r12
	mov	rcx, r12
	nop	word ptr [rax + rax]
.label_251:
	mov	r12, rcx
	cmp	r12, rdi
	jbe	.label_246
	lea	rcx, [r12 - 1]
	cmp	byte ptr [r12 - 1], 0x2f
	jne	.label_251
	jmp	.label_246
	nop	word ptr [rax + rax]
.label_237:
	cmp	byte ptr [r15], 0x2e
	jne	.label_243
.label_246:
	cmp	byte ptr [rbp], 0
	jne	.label_256
	jmp	.label_259
.label_241:
	test	r14, r14
	je	.label_259
.label_243:
	cmp	byte ptr [r12 - 1], 0x2f
	je	.label_261
	mov	byte ptr [r12], 0x2f
	inc	r12
.label_261:
	lea	rcx, [r12 + r14]
	cmp	rcx, rax
	jae	.label_264
	mov	qword ptr [rsp + 0x30], rax
	mov	qword ptr [rsp + 8], rdi
	jmp	.label_265
.label_264:
	sub	r12, rdi
	sub	rax, rdi
	lea	r13, [r14 + 1]
	cmp	r14, 0xfff
	mov	ecx, 0x1000
	cmovle	r13, rcx
	add	r13, rax
	mov	rsi, r13
	call	xrealloc
	add	r13, rax
	mov	qword ptr [rsp + 8], rax
	add	r12, rax
	mov	qword ptr [rsp + 0x30], r13
.label_265:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcpy
	lea	r13, [r12 + r14]
	mov	byte ptr [r12 + r14], 0
	cmp	dword ptr [rsp + 0x4c], 6
	je	.label_282
	cmp	dword ptr [rsp + 0x48], 0
	jne	.label_284
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsp + 0x58]
	call	lstat
	jmp	.label_236
.label_284:
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsp + 0x58]
	call	stat
.label_236:
	test	eax, eax
	je	.label_242
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rax, rbx
	cmp	al, 1
	mov	dword ptr [rsp + 0x14], r14d
	je	.label_244
	test	al, al
	je	.label_248
.label_282:
	mov	dword ptr [rsp + 0x70], 0
.label_242:
	movzx	eax, word ptr [rsp + 0x70]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_252
	lea	rdi, [rsp + 0x38]
	mov	rsi, qword ptr [rsp + 0x20]
	lea	rdx, [rsp + 0x58]
	call	seen_triple
	test	al, al
	je	.label_258
	mov	r14d, dword ptr [rsp + 0x2c]
	cmp	r14d, 2
	mov	eax, dword ptr [rsp + 0x14]
	mov	ecx, 0x28
	cmovne	eax, ecx
	mov	dword ptr [rsp + 0x14], eax
	mov	ecx, dword ptr [rsp + 0x44]
	jmp	.label_275
.label_258:
	mov	rsi, qword ptr [rsp + 0x88]
	mov	rdi, qword ptr [rsp + 8]
	call	areadlink_with_size
	mov	r14, rax
	test	r14, r14
	jne	.label_268
	mov	r14d, dword ptr [rsp + 0x2c]
	cmp	r14d, 2
	jne	.label_271
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_271
	mov	rdi, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x30]
	jmp	.label_276
.label_244:
	mov	esi, 0x2f
	mov	rdi, rbp
	call	__strspn_c1
	xor	ecx, ecx
	cmp	byte ptr [rax + rbp], 0
	setne	cl
	cmp	r14d, 2
	lea	ecx, [rcx + rcx*8 + 4]
	mov	eax, 0xd
	cmovne	ecx, eax
.label_275:
	mov	rdi, qword ptr [rsp + 8]
	mov	r15, qword ptr [rsp]
	and	cl, 0xf
	cmp	cl, 4
	mov	rax, qword ptr [rsp + 0x30]
	jne	.label_232
.label_276:
	cmp	byte ptr [rbp], 0
	jne	.label_270
	jmp	.label_281
.label_252:
	movzx	eax, ax
	cmp	eax, 0x4000
	jne	.label_245
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, rax
	mov	rdx, rbp
	mov	rdi, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x30]
	mov	r15, qword ptr [rsp]
	jmp	.label_247
.label_245:
	mov	r14d, dword ptr [rsp + 0x2c]
	cmp	r14d, 2
	mov	rdi, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x30]
	mov	r15, qword ptr [rsp]
	je	.label_253
	mov	cl, byte ptr [rbp]
	mov	edx, 0x14
	test	cl, cl
	jne	.label_257
.label_253:
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdx, rbp
.label_247:
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_262
.label_268:
	mov	rdi, r14
	call	strlen
	mov	qword ptr [rsp + 0x20], rax
	mov	rdi, rbp
	call	strlen
	mov	rdx, rax
	mov	rax, qword ptr [rsp + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	mov	qword ptr [rsp + 0x50], r14
	je	.label_274
	cmp	rcx, rax
	jbe	.label_273
	mov	rdi, qword ptr [rsp]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rsi, rcx
	mov	r14, rdx
	call	xrealloc
	jmp	.label_278
.label_274:
	cmp	rcx, 0x1000
	mov	eax, 0x1000
	cmovbe	rcx, rax
	mov	qword ptr [rsp + 0x18], rcx
	mov	rdi, rcx
	mov	r14, rdx
	call	xmalloc
.label_278:
	mov	rdx, r14
	mov	r14, rax
	jmp	.label_285
.label_273:
	mov	qword ptr [rsp + 0x18], rax
	mov	r14, qword ptr [rsp]
.label_285:
	mov	rdi, qword ptr [rsp + 0x20]
	add	rdi, r14
	inc	rdx
	mov	rsi, rbp
	call	memmove
	mov	qword ptr [rsp], r14
	mov	rdi, r14
	mov	r14, qword ptr [rsp + 0x50]
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x20]
	call	memcpy
	mov	rcx, qword ptr [rsp + 8]
	lea	rax, [rcx + 1]
	cmp	byte ptr [r14], 0x2f
	jne	.label_287
	mov	byte ptr [rcx], 0x2f
	mov	r13, rax
	jmp	.label_238
.label_287:
	cmp	r13, rax
	jbe	.label_238
	sub	r12, r15
	lea	rax, [r12 + rbp - 1]
.label_269:
	mov	r13, rax
	cmp	r13, rcx
	jbe	.label_238
	lea	rax, [r13 - 1]
	cmp	byte ptr [r13 - 1], 0x2f
	jne	.label_269
.label_238:
	mov	rdi, r14
	call	free
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp]
	mov	r15, rdx
	mov	rbp, rdx
	mov	rax, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x18]
.label_262:
	cmp	byte ptr [rdx], 0
	mov	qword ptr [rsp + 0x18], rcx
	jne	.label_263
	jmp	.label_260
.label_259:
	mov	r13, r12
.label_281:
	mov	r15, qword ptr [rsp]
.label_260:
	lea	rcx, [rdi + 1]
	cmp	r13, rcx
	jbe	.label_277
	lea	rcx, [r13 - 1]
	cmp	byte ptr [r13 - 1], 0x2f
	cmove	r13, rcx
.label_277:
	mov	byte ptr [r13], 0
	lea	rcx, [r13 + 1]
	cmp	rax, rcx
	je	.label_272
	mov	esi, 1
	sub	rsi, rdi
	add	rsi, r13
	call	xrealloc
	mov	rbp, rax
	jmp	.label_279
.label_272:
	mov	rbp, rdi
.label_279:
	mov	rdi, r15
	call	free
	mov	rdi, qword ptr [rsp + 0x38]
	test	rdi, rdi
	je	.label_239
	call	hash_free
	jmp	.label_239
.label_271:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rdi, qword ptr [rsp + 8]
	mov	r15, qword ptr [rsp]
	jmp	.label_234
.label_232:
	cmp	cl, 0xd
	mov	r14d, dword ptr [rsp + 0x14]
	jne	.label_239
	jmp	.label_234
.label_248:
	mov	edx, dword ptr [rsp + 0x14]
	mov	rdi, qword ptr [rsp + 8]
	mov	r15, qword ptr [rsp]
.label_257:
	mov	r14d, edx
.label_234:
	mov	rbx, rdi
	mov	rdi, r15
	call	free
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [rsp + 0x38]
	test	rdi, rdi
	je	.label_249
	call	hash_free
.label_249:
	call	__errno_location
	mov	dword ptr [rax], r14d
	jmp	.label_254
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404370

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
	jne	.label_288
	mov	edi, 7
	xor	esi, esi
	mov	edx, OFFSET FLAT:triple_hash
	mov	ecx, OFFSET FLAT:triple_compare_ino_str
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	mov	qword ptr [rbx], rax
	test	rax, rax
	je	.label_289
.label_288:
	mov	rdi, qword ptr [rbx]
	mov	rsi, r15
	mov	rdx, r14
	call	seen_file
	mov	ecx, eax
	mov	al, 1
	test	cl, cl
	jne	.label_290
	mov	rdi, qword ptr [rbx]
	mov	rsi, r15
	mov	rdx, r14
	call	record_file
	xor	eax, eax
.label_290:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_289:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4043e0
	.globl close_stdin_set_file_name
	.type close_stdin_set_file_name, @function
close_stdin_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043f0

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
	je	.label_292
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
	test	eax, eax
	jne	.label_292
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fflush
	test	eax, eax
	setne	bpl
.label_292:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	close_stream
	test	bpl, bpl
	jne	.label_291
	test	eax, eax
	jne	.label_291
	pop	rbx
	pop	r14
	pop	rbp
	jmp	close_stdout
.label_291:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_294
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_296
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_165
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	jmp	.label_293
.label_296:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_295
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
.label_293:
	call	close_stdout
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044c0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name_0]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044d0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044e0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_299
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_297
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_297
.label_299:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_300
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_297:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_301
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name_0]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_298
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_165
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_300:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_298:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_295
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045a0

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rax
	call	mdir_name
	test	rax, rax
	je	.label_302
	pop	rcx
	ret	
.label_302:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045c0

	.globl dir_len
	.type dir_len, @function
dir_len:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	xor	r14d, r14d
	cmp	byte ptr [rbx], 0x2f
	sete	r14b
	call	last_component
	mov	rcx, rax
	sub	rcx, rbx
	nop	dword ptr [rax]
.label_304:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_303
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_304
.label_303:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404600

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	call	dir_len
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	sete	al
	lea	rdi, [rbx + rax + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_305
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	test	rbx, rbx
	jne	.label_306
	mov	byte ptr [r14 + rbx], 0x2e
	mov	ebx, 1
.label_306:
	mov	byte ptr [r14 + rbx], 0
	mov	rax, r14
.label_305:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404660

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_307:
	cmp	byte ptr [rdi + 1], 0x2f
	lea	rdi, [rdi + 1]
	je	.label_307
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_310
	nop	word ptr cs:[rax + rax]
.label_308:
	inc	rax
	mov	sil, dl
.label_310:
	movzx	ecx, byte ptr [rax]
	mov	dl, 1
	cmp	cl, 0x2f
	je	.label_308
	test	cl, cl
	je	.label_311
	mov	edx, esi
	and	dl, 1
	je	.label_309
	xor	esi, esi
.label_309:
	test	dl, dl
	cmovne	rdi, rax
	mov	edx, esi
	jmp	.label_308
.label_311:
	mov	rax, rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046c0

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_313:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_312
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_313
.label_312:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046f0

	.globl strip_trailing_slashes
	.type strip_trailing_slashes, @function
strip_trailing_slashes:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	call	last_component
	mov	rbx, rax
	cmp	byte ptr [rbx], 0
	cmove	rbx, r14
	mov	rdi, rbx
	call	base_len
	cmp	byte ptr [rbx + rax], 0
	setne	cl
	mov	byte ptr [rbx + rax], 0
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404730

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
	je	.label_314
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
	je	.label_315
	cmp	rax, rbx
	je	.label_314
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	triple_free
.label_314:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_315:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4047b0

	.globl seen_file
	.type seen_file, @function
seen_file:
	test	rdi, rdi
	je	.label_316
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
.label_316:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4047f0

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rax
	call	mfile_name_concat
	test	rax, rax
	je	.label_317
	pop	rcx
	ret	
.label_317:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404810

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
	mov	r15, rsi
	mov	r13, rdi
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	base_len
	mov	rbp, rax
	sub	rbx, r13
	add	rbx, rbp
	mov	rdi, r15
	call	strlen
	test	rbp, rbp
	je	.label_322
	cmp	byte ptr [r13 + rbx - 1], 0x2f
	je	.label_321
	cmp	byte ptr [r15], 0x2f
	je	.label_321
	mov	r12b, 0x2f
	jmp	.label_318
.label_322:
	cmp	byte ptr [r15], 0x2f
	mov	r12b, 0x2e
	je	.label_318
.label_321:
	xor	r12d, r12d
.label_318:
	xor	ebp, ebp
	test	r12b, r12b
	setne	bpl
	mov	qword ptr [rsp + 8], rax
	lea	rax, [rax + rbx]
	lea	rdi, [rbp + rax + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_320
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	add	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_319
	mov	qword ptr [rax], rbp
.label_319:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 8]
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	mov	rax, r14
.label_320:
	add	rsp, 0x18
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
	#Procedure 0x4048f0

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404900

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404910

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404920

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	mov	rcx, qword ptr [rdi]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_323
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_325:
	cmp	qword ptr [rcx], 0
	je	.label_324
	xor	esi, esi
	mov	rdi, rcx
	nop	dword ptr [rax + rax]
.label_326:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_326
	cmp	rsi, rax
	cmova	rax, rsi
.label_324:
	add	rcx, 0x10
	cmp	rcx, rdx
	jb	.label_325
.label_323:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404970
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rsi, qword ptr [rdi]
	xor	edx, edx
	cmp	rsi, qword ptr [rdi + 8]
	mov	ecx, 0
	jae	.label_327
	mov	r8, qword ptr [rdi + 8]
	xor	ecx, ecx
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_332:
	cmp	qword ptr [rsi], 0
	je	.label_328
	mov	rax, rsi
	nop	dword ptr [rax]
.label_329:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_329
	inc	rdx
.label_328:
	add	rsi, 0x10
	cmp	rsi, r8
	jb	.label_332
.label_327:
	cmp	rdx, qword ptr [rdi + 0x18]
	jne	.label_330
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_331
.label_330:
	xor	eax, eax
.label_331:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4049d0
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
	mov	edx, OFFSET FLAT:label_334
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, rbp
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_333
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r15
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_335]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_336]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_337]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_338
	mov	al, 1
	mov	rdi, r13
	mov	rcx, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_339
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
	.align	16
	#Procedure 0x404ac0

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
	je	.label_341
	test	rbx, rbx
	je	.label_341
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_340:
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	je	.label_342
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_342
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_340
	jmp	.label_341
.label_342:
	mov	r15, qword ptr [rbx]
.label_341:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404b20

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
	jae	.label_343
	shl	rax, 4
	add	rax, qword ptr [rbx]
	pop	rbx
	ret	
.label_343:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b50
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_344
	mov	rcx, qword ptr [rdi]
	jmp	.label_346
	nop	
.label_347:
	add	rcx, 0x10
.label_346:
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_345
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_347
.label_344:
	ret	
.label_345:
	push	rax
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404b80
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
.label_352:
	cmp	qword ptr [rcx], rbx
	jne	.label_348
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_350
.label_348:
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_352
	mov	rdx, qword ptr [r14 + 8]
	add	rax, 0x10
	nop	
.label_351:
	cmp	rax, rdx
	mov	ecx, 0
	jae	.label_349
	mov	rcx, qword ptr [rax]
	add	rax, 0x10
	test	rcx, rcx
	je	.label_351
	jmp	.label_349
.label_350:
	mov	rcx, qword ptr [rdx]
.label_349:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404bf0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r8, qword ptr [rdi]
	xor	eax, eax
	cmp	r8, qword ptr [rdi + 8]
	jae	.label_353
	xor	eax, eax
.label_356:
	cmp	qword ptr [r8], 0
	je	.label_354
	test	r8, r8
	je	.label_354
	mov	r9, r8
	nop	dword ptr [rax + rax]
.label_355:
	cmp	rax, rdx
	jae	.label_353
	mov	rcx, qword ptr [r9]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r9, qword ptr [r9 + 8]
	test	r9, r9
	jne	.label_355
.label_354:
	add	r8, 0x10
	cmp	r8, qword ptr [rdi + 8]
	jb	.label_356
.label_353:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c40
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
	cmp	r13, qword ptr [r12 + 8]
	jae	.label_357
	xor	ebx, ebx
.label_359:
	cmp	qword ptr [r13], 0
	je	.label_358
	test	r13, r13
	je	.label_358
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_360:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_357
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	jne	.label_360
.label_358:
	add	r13, 0x10
	cmp	r13, qword ptr [r12 + 8]
	jb	.label_359
.label_357:
	mov	rax, rbx
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
	.align	16
	#Procedure 0x404cc0
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_361
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_362:
	mov	rcx, rdx
	shl	rcx, 5
	sub	rcx, rdx
	movzx	eax, al
	add	rax, rcx
	xor	edx, edx
	div	rsi
	movzx	eax, byte ptr [rdi]
	inc	rdi
	test	al, al
	jne	.label_362
.label_361:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d00
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_363]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d20

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
	je	.label_365
	mov	qword ptr [rsp], rbx
	test	r12, r12
	mov	ebx, OFFSET FLAT:default_tuning
	cmovne	rbx, r12
	mov	qword ptr [r13 + 0x28], rbx
	mov	rdi, r13
	call	check_tuning
	test	al, al
	je	.label_364
	mov	rdi, r15
	mov	rsi, rbx
	call	compute_bucket_size
	mov	qword ptr [r13 + 0x10], rax
	test	rax, rax
	je	.label_364
	mov	esi, 0x10
	mov	rdi, rax
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_364
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
	jmp	.label_365
.label_364:
	mov	rdi, r13
	call	free
	xor	eax, eax
.label_365:
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
	#Procedure 0x404e00

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
	.align	16
	#Procedure 0x404e20

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e30

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	mov	rcx, qword ptr [rdi + 0x28]
	mov	edx, OFFSET FLAT:default_tuning
	mov	al, 1
	cmp	rcx, rdx
	je	.label_366
	movss	xmm0, dword ptr [rcx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_367]]
	jbe	.label_368
	movss	xmm1,  dword ptr [dword ptr [rip + label_371]]
	ucomiss	xmm1, xmm0
	jbe	.label_368
	movss	xmm1, dword ptr [rcx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_370]]
	jbe	.label_368
	movss	xmm1, dword ptr [rcx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_368
	addss	xmm1,  dword ptr [dword ptr [rip + label_367]]
	ucomiss	xmm0, xmm1
	jbe	.label_368
	movss	xmm0, dword ptr [rcx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_369]]
	ucomiss	xmm2, xmm0
	jb	.label_368
	ucomiss	xmm0, xmm1
	ja	.label_366
.label_368:
	mov	qword ptr [word ptr [rdi + 40]], OFFSET FLAT:default_tuning
	xor	eax, eax
.label_366:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404eb0

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	cmp	byte ptr [rsi + 0x10], 0
	jne	.label_372
	mov	eax, edi
	and	eax, 1
	test	rdi, rdi
	js	.label_377
	cvtsi2ss	xmm0, rdi
	jmp	.label_373
.label_377:
	shr	rdi, 1
	or	rax, rdi
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_373:
	divss	xmm0, dword ptr [rsi + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_374]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rdi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rdi, rcx
	xor	eax, eax
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_375]]
	jae	.label_376
.label_372:
	push	rax
	call	next_prime
	mov	rcx, rax
	xor	eax, eax
	mov	rdx, rcx
	shr	rdx, 0x3c
	cmove	rax, rcx
	add	rsp, 8
.label_376:
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404f30
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	jmp	.label_381
	nop	dword ptr [rax]
.label_380:
	add	r14, 0x10
.label_381:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_379
	cmp	qword ptr [r14], 0
	je	.label_380
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_378
	nop	word ptr cs:[rax + rax]
.label_384:
	test	cl, 1
	je	.label_383
	mov	rdi, qword ptr [rbx]
	call	rax
.label_383:
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
	jne	.label_384
.label_378:
	test	cl, cl
	je	.label_382
	mov	rdi, qword ptr [r14]
	call	rax
.label_382:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	jmp	.label_380
.label_379:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fd0

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_389
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_389
	mov	r14, qword ptr [r15]
	jmp	.label_392
	nop	dword ptr [rax + rax]
.label_385:
	add	r14, 0x10
.label_392:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_389
	cmp	qword ptr [r14], 0
	je	.label_385
	test	r14, r14
	je	.label_385
	mov	rbx, r14
	nop	dword ptr [rax + rax]
.label_387:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r15 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_387
	jmp	.label_385
.label_389:
	mov	r14, qword ptr [r15]
	jmp	.label_390
	nop	word ptr [rax + rax]
.label_386:
	add	r14, 0x10
.label_390:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_393
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_386
	nop	word ptr cs:[rax + rax]
.label_388:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_388
	jmp	.label_386
.label_393:
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_391
	nop	dword ptr [rax]
.label_394:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_394
.label_391:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, r15
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050a0

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
	je	.label_395
	mov	r14b, 1
	cmp	rbp, qword ptr [rbx + 0x10]
	je	.label_397
	mov	esi, 0x10
	mov	rdi, rbp
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_395
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
	je	.label_396
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
	jmp	.label_397
.label_396:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	lea	rsi, [rsp]
	mov	edx, 1
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_398
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_398
	mov	rdi, qword ptr [rsp]
	call	free
.label_395:
	xor	r14d, r14d
.label_397:
	mov	eax, r14d
	add	rsp, 0x50
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_398:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051d0

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
	mov	r12d, edx
	mov	rbp, rsi
	mov	r14, rdi
	mov	r15, qword ptr [rbp]
	mov	al, 1
	cmp	r15, qword ptr [rbp + 8]
	jae	.label_401
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_400:
	cmp	qword ptr [r15], 0
	je	.label_399
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	je	.label_403
	nop	word ptr cs:[rax + rax]
.label_406:
	mov	r13, qword ptr [rbx]
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rax], 0
	je	.label_407
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rax + 8], rbx
	jmp	.label_408
	nop	word ptr cs:[rax + rax]
.label_407:
	mov	qword ptr [rax], r13
	inc	qword ptr [r14 + 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	free_entry
.label_408:
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_406
.label_403:
	mov	r13, qword ptr [r15]
	mov	qword ptr [r15 + 8], 0
	test	r12b, r12b
	mov	rbp, qword ptr [rsp]
	jne	.label_399
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbx, rax
	cmp	qword ptr [rbx], 0
	je	.label_402
	mov	rdi, r14
	call	allocate_entry
	test	rax, rax
	je	.label_404
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbx + 8], rax
	jmp	.label_405
.label_402:
	mov	qword ptr [rbx], r13
	inc	qword ptr [r14 + 0x18]
.label_405:
	mov	qword ptr [r15], 0
	dec	qword ptr [rbp + 0x18]
.label_399:
	add	r15, 0x10
	cmp	r15, qword ptr [rbp + 8]
	jb	.label_400
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
.label_404:
	xor	eax, eax
	jmp	.label_401
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052f0

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
	je	.label_417
	lea	rdx, [rsp]
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	je	.label_416
	test	rbx, rbx
	je	.label_412
	mov	qword ptr [rbx], rax
	jmp	.label_412
.label_416:
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_421
	cvtsi2ss	xmm0, rcx
	jmp	.label_411
.label_421:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_411:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_415
	cvtsi2ss	xmm1, rax
	jmp	.label_420
.label_415:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_420:
	mulss	xmm1, dword ptr [rcx + 8]
	ucomiss	xmm0, xmm1
	jbe	.label_409
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_414
	cvtsi2ss	xmm2, rcx
	jmp	.label_418
.label_414:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm2, rdx
	addss	xmm2, xmm2
.label_418:
	mov	rcx, qword ptr [r15 + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_423
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_413
.label_423:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_413:
	movaps	xmm3, xmm1
	mulss	xmm3, xmm0
	ucomiss	xmm2, xmm3
	jbe	.label_409
	cmp	byte ptr [rcx + 0x10], 0
	mulss	xmm0, dword ptr [rcx + 0xc]
	jne	.label_422
	mulss	xmm0, xmm1
.label_422:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_375]]
	jae	.label_412
	movss	xmm1,  dword ptr [dword ptr [rip + label_374]]
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
	je	.label_412
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	jne	.label_417
.label_409:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_419
	mov	rdi, r15
	call	allocate_entry
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_412
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx + 8], rax
	inc	qword ptr [r15 + 0x20]
	jmp	.label_410
.label_419:
	mov	qword ptr [rax], r14
	inc	qword ptr [r15 + 0x20]
	inc	qword ptr [r15 + 0x18]
.label_410:
	mov	ebp, 1
.label_412:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_417:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4054d0

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
	je	.label_427
	cmp	rsi, r13
	je	.label_425
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	je	.label_428
.label_425:
	mov	r15, qword ptr [rbx]
	test	r12b, r12b
	je	.label_427
	mov	rsi, qword ptr [rbx + 8]
	test	rsi, rsi
	je	.label_430
	movups	xmm0, xmmword ptr [rsi]
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_426
.label_428:
	mov	rax, qword ptr [rbx + 8]
	xor	r15d, r15d
	test	rax, rax
	je	.label_427
	add	rbx, 8
	xor	r15d, r15d
	nop	
.label_429:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r13
	je	.label_424
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_424
	mov	rbx, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
	add	rbx, 8
	test	rax, rax
	jne	.label_429
	jmp	.label_427
.label_430:
	mov	qword ptr [rbx], 0
	jmp	.label_427
.label_424:
	mov	rsi, qword ptr [rbx]
	mov	r15, qword ptr [rsi]
	test	r12b, r12b
	je	.label_427
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbx], rax
.label_426:
	mov	rdi, r14
	call	free_entry
.label_427:
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
	.align	16
	#Procedure 0x4055a0

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rax, qword ptr [rdi + 0x48]
	test	rax, rax
	je	.label_431
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rdi + 0x48], rcx
	ret	
.label_431:
	push	rax
	mov	edi, 0x10
	call	malloc
	add	rsp, 8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055d0

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
	je	.label_432
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_432:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405600
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
	je	.label_437
	dec	qword ptr [r15 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	jne	.label_434
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_445
	cvtsi2ss	xmm0, rax
	jmp	.label_435
.label_445:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_435:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_440
	cvtsi2ss	xmm1, rcx
	jmp	.label_444
.label_440:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_444:
	mulss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jbe	.label_434
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_439
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rcx
	jmp	.label_442
.label_439:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_442:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_436
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_438
.label_436:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_438:
	movss	xmm2, dword ptr [rcx]
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_434
	mulss	xmm0, dword ptr [rcx + 4]
	cmp	byte ptr [rcx + 0x10], 0
	jne	.label_433
	mulss	xmm0, dword ptr [rcx + 8]
.label_433:
	movss	xmm1,  dword ptr [dword ptr [rip + label_374]]
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
	jne	.label_434
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_441
	nop	dword ptr [rax + rax]
.label_443:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_443
.label_441:
	mov	qword ptr [r15 + 0x48], 0
.label_434:
	mov	rax, r14
.label_437:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405790

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
	jmp	.label_446
	nop	
.label_447:
	add	rbx, 2
.label_446:
	cmp	rbx, -1
	je	.label_448
	mov	rdi, rbx
	call	is_prime
	test	al, al
	je	.label_447
	mov	r14, rbx
.label_448:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4057e0

	.globl is_prime
	.type is_prime, @function
is_prime:
	mov	r8, rdi
	mov	esi, 3
	cmp	r8, 0xa
	jb	.label_449
	mov	esi, 3
	mov	edi, 9
	mov	ecx, 0x10
	nop	dword ptr [rax]
.label_450:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	je	.label_449
	add	rdi, rcx
	add	rsi, 2
	add	rcx, 8
	cmp	rdi, r8
	jb	.label_450
.label_449:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	setne	al
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405830

	.globl free_entry
	.type free_entry, @function
free_entry:
	mov	qword ptr [rsi], 0
	mov	rax, qword ptr [rdi + 0x48]
	mov	qword ptr [rsi + 8], rax
	mov	qword ptr [rdi + 0x48], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405850

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
	#Procedure 0x405880
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
	#Procedure 0x405890

	.globl triple_compare
	.type triple_compare, @function
triple_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_451
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_452
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	same_name
	add	rsp, 8
	ret	
.label_451:
	xor	eax, eax
	ret	
.label_452:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4058c0

	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_453
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_454
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	test	eax, eax
	sete	al
	add	rsp, 8
	ret	
.label_453:
	xor	eax, eax
	ret	
.label_454:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4058f0

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
	.section	.text
	.align	16
	#Procedure 0x405910

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_455
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_455:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_456
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x18
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_458
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_457
.label_458:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_457:
	mov	ecx, dword ptr [rax]
.label_456:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4059d0

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
	js	.label_460
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_459
	mov	dword ptr [r14], ebp
	jmp	.label_460
.label_459:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_460:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405a20

	.globl priv_set_remove_linkdir
	.type priv_set_remove_linkdir, @function
priv_set_remove_linkdir:
	mov	eax, 0xffffffff
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a30
	.globl priv_set_restore_linkdir
	.type priv_set_restore_linkdir, @function
priv_set_restore_linkdir:

	mov	eax, 0xffffffff
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a40

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_461
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_463
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_465
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_463
	mov	esi, OFFSET FLAT:label_464
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_466
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_466:
	mov	rbx, r14
.label_463:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_461:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_462
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405af0
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
	#Procedure 0x405b30
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
	#Procedure 0x405b40
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
	#Procedure 0x405b50

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	mov	ecx, esi
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	cmovne	rsi, rdi
	mov	eax, ecx
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
	#Procedure 0x405b90
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
	#Procedure 0x405bb0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_467
	test	rdx, rdx
	je	.label_467
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_467:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405be0
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbx, rax
	mov	eax, dword ptr [rbx]
	mov	dword ptr [rsp + 4], eax
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, r14
	push	qword ptr [rbp + 0x30]
	push	qword ptr [rbp + 0x28]
	lea	rax, [rbp + 8]
	push	rax
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	ecx, dword ptr [rsp + 4]
	mov	dword ptr [rbx], ecx
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
	#Procedure 0x405c60

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	ebx, r9d
	mov	r15d, r8d
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	rax, qword ptr [rsp + 0x100]
	mov	qword ptr [rsp + 0x70], rax
	mov	rax, qword ptr [rsp + 0xf8]
	mov	qword ptr [rsp + 0x78], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0xb0], rax
	mov	r12d, ebx
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x90], eax
	mov	dword ptr [rsp + 0x18], ebx
	and	ebx, 4
	mov	dword ptr [rsp + 0x8c], ebx
	mov	r10b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x60], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x38], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa0], rcx
.label_530:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_535
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_540]]
.label_978:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_544
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_482
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_979:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_556
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_556
	xor	r14d, r14d
.label_568:
	cmp	r14, r11
	jae	.label_566
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_566:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_568
.label_556:
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rdi, rbp
	mov	rbx, r11
	call	strlen
	mov	r11, rbx
	mov	qword ptr [rsp + 0x38], rax
	mov	edi, r15d
	mov	qword ptr [rsp + 0x40], rbp
	mov	r13b, 1
	mov	sil, r12b
	mov	r8, qword ptr [rsp + 0x30]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r9d, dword ptr [rsp + 0x48]
	jmp	.label_483
.label_971:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_483
.label_974:
	mov	al, 1
.label_972:
	mov	r12b, 1
.label_975:
	test	r12b, 1
	mov	cl, 1
	je	.label_582
	mov	ecx, eax
.label_582:
	mov	al, cl
.label_973:
	test	r12b, 1
	jne	.label_470
	test	r11, r11
	je	.label_489
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_489:
	mov	r14d, 1
	jmp	.label_478
.label_470:
	xor	r14d, r14d
.label_478:
	mov	ecx, OFFSET FLAT:label_482
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_483
.label_976:
	test	r12b, 1
	jne	.label_490
	test	r11, r11
	je	.label_492
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_492:
	mov	r14d, 1
	jmp	.label_495
.label_977:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_498
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_483
.label_490:
	xor	r14d, r14d
.label_495:
	mov	eax, OFFSET FLAT:label_498
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_483:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r12b
	cmp	edi, 2
	setne	r15b
	sete	bl
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x2b]
	mov	eax, r15d
	mov	byte ptr [rsp + 0x1e], cl
	and	al, cl
	cmp	qword ptr [rsp + 0x38], 0
	setne	cl
	mov	edx, ecx
	mov	byte ptr [rsp + 0x2e], al
	and	dl, al
	mov	byte ptr [rsp + 0x2f], dl
	mov	eax, esi
	and	al, 1
	sete	dl
	and	bl, al
	mov	byte ptr [rsp + 0x2c], bl
	mov	byte ptr [rsp + 7], al
	and	r12b, al
	mov	byte ptr [rsp + 0x2d], r12b
	or	dl, r15b
	mov	byte ptr [rsp + 0x1f], dl
	mov	byte ptr [rsp + 0x1d], r13b
	mov	qword ptr [rsp + 0xa8], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x2a], r13b
	xor	esi, esi
	mov	qword ptr [rsp + 0x68], rdi
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r12, rdi
	mov	rdi, r8
	jmp	.label_481
	nop	dword ptr [rax]
.label_475:
	inc	rsi
.label_481:
	cmp	rbp, -1
	je	.label_548
	cmp	rsi, rbp
	jne	.label_550
	jmp	.label_552
	nop	word ptr cs:[rax + rax]
.label_548:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_552
.label_550:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_558
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_532
	cmp	rbp, -1
	jne	.label_532
	mov	r15d, r10d
	mov	rbp, r11
	mov	r13d, r9d
	mov	r12, r14
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r14, r12
	mov	r9d, r13d
	mov	r12, qword ptr [rsp + 0x68]
	mov	r10d, r15d
	mov	r11, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_532:
	cmp	rbx, rbp
	jbe	.label_571
.label_558:
	xor	r8d, r8d
.label_480:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_573
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_577]]
.label_884:
	test	rsi, rsi
	jne	.label_479
	jmp	.label_504
	nop	
.label_571:
	mov	qword ptr [rsp + 0x20], rbp
	mov	ebp, r9d
	mov	r15d, r10d
	mov	rbx, r11
	mov	r12, rsi
	lea	rdi, [rdi + rsi]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x38]
	call	memcmp
	test	eax, eax
	sete	r8b
	jne	.label_476
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_480
	jmp	.label_491
.label_476:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_480
.label_888:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_499
	test	rsi, rsi
	jne	.label_500
	cmp	rbp, 1
	je	.label_504
	xor	r13d, r13d
	jmp	.label_469
.label_877:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_508
	cmp	byte ptr [rsp + 7], 0
	jne	.label_486
	cmp	r12d, 2
	jne	.label_510
	mov	eax, r9d
	and	al, 1
	jne	.label_510
	cmp	r14, r11
	jae	.label_512
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_512:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_516
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_516:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_521
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_521:
	add	r14, 3
	mov	r9b, 1
.label_510:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_529
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_529:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_533
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_533
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_533
	cmp	r14, r11
	jae	.label_545
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_545:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_527
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_527:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_469
.label_878:
	mov	bl, 0x62
	jmp	.label_555
.label_879:
	mov	cl, 0x74
	jmp	.label_557
.label_880:
	mov	bl, 0x76
	jmp	.label_555
.label_881:
	mov	bl, 0x66
	jmp	.label_555
.label_882:
	mov	cl, 0x72
	jmp	.label_557
.label_885:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_564
	cmp	byte ptr [rsp + 7], 0
	jne	.label_486
	test	r11, r11
	sete	al
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r11
	mov	qword ptr [rsp + 0x60], rdx
	mov	eax, 0
	cmove	r11, rax
	cmp	r14, r11
	jae	.label_569
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_569:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_578
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_578:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_580
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_580:
	add	r14, 3
	xor	r9d, r9d
.label_564:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_469
.label_886:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_474
	cmp	r12d, 2
	jne	.label_479
	cmp	byte ptr [rsp + 7], 0
	je	.label_479
	jmp	.label_486
.label_887:
	cmp	r12d, 2
	jne	.label_487
	cmp	byte ptr [rsp + 7], 0
	jne	.label_486
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_554
.label_573:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_551
	mov	qword ptr [rsp + 0x20], rbp
	mov	rbx, rsi
	call	__ctype_b_loc
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	r12d, 1
.label_496:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_522
	test	r8b, r8b
	je	.label_522
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_469
.label_499:
	test	rsi, rsi
	jne	.label_531
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_531
.label_504:
	mov	dl, 1
.label_883:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_486
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_469:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_541
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_542
	jmp	.label_546
	nop	word ptr cs:[rax + rax]
.label_541:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_546
.label_542:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_549
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_554
	jmp	.label_553
	nop	dword ptr [rax]
.label_546:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_553
	jmp	.label_554
.label_549:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_553
.label_508:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_475
	xor	r15d, r15d
	jmp	.label_479
.label_487:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_557
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_554
.label_557:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_486
.label_555:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_469
	nop	word ptr cs:[rax + rax]
.label_553:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_486
	cmp	r12d, 2
	jne	.label_471
	mov	eax, r9d
	and	al, 1
	jne	.label_471
	cmp	r14, r11
	jae	.label_472
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_472:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_505
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_505:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_485
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_485:
	add	r14, 3
	mov	r9b, 1
.label_471:
	cmp	r14, r11
	jae	.label_488
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_488:
	inc	r14
	jmp	.label_493
.label_551:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_497
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_497:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_509:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_514
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_518
	cmp	rbp, -2
	je	.label_524
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_526
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_570:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_515
	bt	rsi, rdx
	jb	.label_491
.label_515:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_570
.label_526:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_579
	xor	r13d, r13d
.label_579:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_509
	jmp	.label_496
.label_533:
	xor	r13d, r13d
	jmp	.label_469
.label_531:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_469
.label_474:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_479
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_479
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_479
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_503
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_523
	cmp	byte ptr [rsp + 7], 0
	jne	.label_486
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_560
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_560:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_537
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_537:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_477
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_477:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_484
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_484:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_469
.label_479:
	xor	eax, eax
.label_500:
	xor	r13d, r13d
	jmp	.label_469
.label_522:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_494
	nop	word ptr cs:[rax + rax]
.label_567:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_494:
	test	r8b, r8b
	je	.label_501
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_502
	cmp	r14, r11
	jae	.label_506
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_506:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_502
	nop	dword ptr [rax]
.label_501:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_491
	cmp	r12d, 2
	jne	.label_513
	mov	eax, r9d
	and	al, 1
	jne	.label_513
	cmp	r14, r11
	jae	.label_517
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_517:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_520
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_520:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_562
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_562:
	add	r14, 3
	mov	r9b, 1
.label_513:
	cmp	r14, r11
	jae	.label_563
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_563:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_538
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_538:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_543
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_543:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_502:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_554
	test	r9b, 1
	je	.label_547
	mov	ebx, eax
	and	bl, 1
	jne	.label_547
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_559
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_559:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_561
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_561:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_547:
	cmp	r14, r11
	jae	.label_567
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_567
	nop	word ptr cs:[rax + rax]
.label_554:
	test	r9b, 1
	je	.label_574
	and	al, 1
	jne	.label_574
	cmp	r14, r11
	jae	.label_576
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_576:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_511
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_511:
	add	r14, 2
	xor	r9d, r9d
.label_574:
	mov	ebx, r15d
.label_493:
	cmp	r14, r11
	jae	.label_581
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_581:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_475
.label_518:
	xor	r13d, r13d
.label_514:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_496
.label_524:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_534
	mov	rsi, qword ptr [rsp + 0x50]
.label_575:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_565
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_575
	xor	r13d, r13d
	jmp	.label_496
.label_534:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_496
.label_565:
	xor	r13d, r13d
	jmp	.label_496
.label_503:
	xor	r13d, r13d
	jmp	.label_469
.label_523:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_469
	nop	dword ptr [rax + rax]
.label_552:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_507
	or	dl, al
	je	.label_491
.label_507:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_528
	or	dl, al
	jne	.label_528
	test	r10b, 1
	jne	.label_525
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_528
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_530
.label_528:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_536
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_539
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_539
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_572:
	cmp	r14, r11
	jae	.label_519
	mov	byte ptr [rcx + r14], al
.label_519:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_572
	jmp	.label_539
.label_486:
	mov	qword ptr [rsp + 0x20], rbp
.label_491:
	mov	rdx, rdi
	mov	r9d, dword ptr [rsp + 0x18]
	test	byte ptr [rsp + 0x1d], 1
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x68]
	cmove	r8d, eax
	cmp	eax, 2
	cmovne	r8d, eax
	and	r9d, 0xfffffffd
	sub	rsp, 8
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r11
	mov	rcx, qword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	0
	call	quotearg_buffer_restyled
	add	rsp, 0x20
.label_468:
	mov	r14, rax
.label_473:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_525:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, dword ptr [rsp + 0x20]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	qword ptr [rsp + 0x108]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_468
.label_536:
	mov	rcx, qword ptr [rsp + 8]
.label_539:
	cmp	r14, r11
	jae	.label_473
	mov	byte ptr [rcx + r14], 0
	jmp	.label_473
.label_535:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406a20
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a30

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x10], r14
	mov	r15, rdi
	mov	qword ptr [rsp + 8], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	cmovne	r12, rcx
	call	__errno_location
	mov	qword ptr [rsp + 0x20], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 4], ecx
	xor	ebp, ebp
	test	rbx, rbx
	sete	bpl
	or	ebp, dword ptr [r12 + 4]
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	sub	rsp, 8
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	mov	r9d, ebp
	push	qword ptr [r12 + 0x30]
	push	qword ptr [r12 + 0x28]
	push	r13
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rbx, rax
	lea	r15, [rbx + 1]
	mov	rdi, r15
	call	xcharalloc
	mov	r14, rax
	mov	r8d, dword ptr [r12]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r9d, ebp
	push	qword ptr [r12 + 0x30]
	push	qword ptr [r12 + 0x28]
	push	r13
	call	quotearg_buffer_restyled
	mov	rax, qword ptr [rsp + 0x38]
	add	rsp, 0x20
	test	rax, rax
	mov	ecx, dword ptr [rsp + 4]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	dword ptr [rdx], ecx
	je	.label_583
	mov	qword ptr [rax], rbx
.label_583:
	mov	rax, r14
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
	#Procedure 0x406b20
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_584
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_586:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_586
.label_584:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_588
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_587]], OFFSET FLAT:slot0
.label_588:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_585
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_585:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406bc0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x406bd0

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rcx
	mov	r15, rdx
	mov	qword ptr [rsp + 0x20], rsi
	mov	r12d, edi
	call	__errno_location
	mov	r13, rax
	test	r12d, r12d
	js	.label_592
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_595
	cmp	r12d, 0x7fffffff
	je	.label_590
	mov	ebx, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, rbx
	cmovne	rdi, rbp
	lea	r15d, [r12 + 1]
	movsxd	rsi, r12d
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, rbx
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_593
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_593:
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
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 8]
.label_595:
	movsxd	r13, r12d
	shl	r13, 4
	mov	r12, qword ptr [rbp + r13]
	mov	r14, qword ptr [rbp + r13 + 8]
	mov	r8d, dword ptr [rbx]
	mov	r9d, dword ptr [rbx + 4]
	or	r9d, 1
	lea	rax, [rbx + 8]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, r15
	mov	dword ptr [rsp + 0xc], r9d
	push	qword ptr [rbx + 0x30]
	push	qword ptr [rbx + 0x28]
	mov	rbx, rax
	push	rbx
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	r15, rax
	cmp	r12, r15
	jbe	.label_591
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_594
.label_591:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_589
	mov	rdi, r14
	call	free
.label_589:
	mov	rdi, r15
	call	xcharalloc
	mov	r14, rax
	mov	qword ptr [r12], r14
	mov	rax, qword ptr [rsp + 0x10]
	mov	r8d, dword ptr [rax]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0xc]
	push	qword ptr [rax + 0x30]
	push	qword ptr [rax + 0x28]
	push	rbx
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rax, qword ptr [rsp + 0x18]
.label_594:
	mov	dword ptr [rax], ebp
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_592:
	call	abort
.label_590:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406d90

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406da0
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406db0
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
	.align	16
	#Procedure 0x406dc0

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
	.align	16
	#Procedure 0x406e00

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
	je	.label_596
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
.label_596:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406e60

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
	.align	16
	#Procedure 0x406ea0

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
	.align	16
	#Procedure 0x406ec0
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
	.align	16
	#Procedure 0x406ee0

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
	mov	rcx,  qword ptr [word ptr [rip + label_597]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_598]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_599]]
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
	.align	16
	#Procedure 0x406f50

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406f60

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406f70
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406f80

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
	.align	16
	#Procedure 0x406fd0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406fe0

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
	mov	rax,  qword ptr [word ptr [rip + label_597]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_598]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_599]]
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
	.align	16
	#Procedure 0x407050
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
	.align	16
	#Procedure 0x407070
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
	.align	16
	#Procedure 0x407090

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4070a0
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
	.align	16
	#Procedure 0x4070b0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4070c0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4070d0

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_604
	call	locale_charset
	mov	rbp, rax
	mov	esi, 0x55
	mov	edx, 0x54
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	push	0
	push	0
	call	strcaseeq0
	add	rsp, 0x10
	test	eax, eax
	je	.label_600
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_605
	mov	eax, OFFSET FLAT:label_606
	jmp	.label_603
.label_600:
	mov	esi, 0x47
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	r8d, 0x38
	mov	r9d, 0x30
	mov	rdi, rbp
	push	0x30
	push	0x33
	call	strcaseeq0
	add	rsp, 0x10
	test	eax, eax
	je	.label_607
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_601
	mov	eax, OFFSET FLAT:label_602
	jmp	.label_603
.label_607:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_498
	mov	eax, OFFSET FLAT:label_482
.label_603:
	cmove	rax, rcx
.label_604:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407190

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
	je	.label_609
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_610
	jmp	.label_608
.label_609:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_608
.label_610:
	mov	eax, 1
	test	bpl, bpl
	je	.label_608
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
.label_608:
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
	#Procedure 0x407210

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
	je	.label_613
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_611
	jmp	.label_612
.label_613:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_612
.label_611:
	mov	eax, 1
	test	bpl, bpl
	je	.label_612
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
.label_612:
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
	#Procedure 0x4072a0

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
	je	.label_614
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_616
	jmp	.label_615
.label_614:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_615
.label_616:
	mov	eax, 1
	test	bpl, bpl
	je	.label_615
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
.label_615:
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
	#Procedure 0x407320

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
	je	.label_619
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_618
	jmp	.label_617
.label_619:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_617
.label_618:
	mov	eax, 1
	test	bpl, bpl
	je	.label_617
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
.label_617:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407390

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
	je	.label_622
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_620
	jmp	.label_621
.label_622:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_621
.label_620:
	mov	eax, 1
	test	bpl, bpl
	je	.label_621
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_621:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4073f0

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
	je	.label_623
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_625
	jmp	.label_624
.label_623:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_624
.label_625:
	mov	eax, 1
	test	bpl, bpl
	je	.label_624
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_624:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407440

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
	je	.label_628
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_627
	jmp	.label_626
.label_628:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_626
.label_627:
	mov	eax, 1
	test	bpl, bpl
	je	.label_626
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_626:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407490

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_631
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_630
	jmp	.label_629
.label_631:
	mov	eax, 1
	test	cl, cl
	je	.label_629
.label_630:
	xor	eax, eax
.label_629:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4074c0

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
	jns	.label_634
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x16
	je	.label_639
	cmp	ecx, 0x5f
	je	.label_639
	cmp	ecx, 0x26
	jne	.label_634
.label_639:
	test	r13d, r13d
	je	.label_632
	cmp	r13d, 1
	jne	.label_643
	mov	rbx, rax
	lea	rdx, [rsp + 0x98]
	mov	edi, r14d
	mov	rsi, r12
	call	lstatat
	test	eax, eax
	je	.label_635
	mov	rax, rbx
	mov	ecx, dword ptr [rax]
	mov	r13b, 1
	cmp	ecx, 2
	je	.label_637
	mov	ebx, 0xffffffff
	cmp	ecx, 0x4b
	jne	.label_634
.label_635:
	mov	edi, 0x11
	jmp	.label_642
.label_632:
	xor	r13d, r13d
.label_637:
	mov	qword ptr [rsp], rax
	mov	rdi, rbp
	call	strlen
	mov	rbx, rax
	mov	rdi, r12
	call	strlen
	test	rbx, rbx
	je	.label_636
	test	rax, rax
	je	.label_636
	cmp	byte ptr [rbp + rbx - 1], 0x2f
	je	.label_640
	cmp	byte ptr [r12 + rax - 1], 0x2f
	jne	.label_636
.label_640:
	lea	rdx, [rsp + 8]
	mov	edi, r15d
	mov	rsi, rbp
	call	lstatat
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_634
	test	r13b, r13b
	je	.label_638
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	je	.label_636
	mov	edi, 2
	jmp	.label_641
.label_643:
	mov	edi, 0x5f
.label_642:
	call	errno_fail
	mov	ebx, 0xffffffff
	jmp	.label_634
.label_638:
	lea	rdx, [rsp + 0x98]
	mov	edi, r14d
	mov	rsi, r12
	call	lstatat
	test	eax, eax
	je	.label_645
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax], 2
	jne	.label_634
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	je	.label_636
	jmp	.label_634
.label_645:
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsp + 0xb0]
	and	ecx, eax
	cmp	ecx, 0x4000
	jne	.label_644
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	jne	.label_633
.label_636:
	mov	edi, r15d
	mov	rsi, rbp
	mov	edx, r14d
	mov	rcx, r12
	call	renameat
	mov	ebx, eax
.label_634:
	mov	eax, ebx
	add	rsp, 0x128
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_644:
	mov	edi, 0x14
	jmp	.label_641
.label_633:
	mov	edi, 0x15
.label_641:
	call	errno_fail
	jmp	.label_634
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407690

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
	.align	16
	#Procedure 0x4076a0

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
	#Procedure 0x4076c0

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
	mov	dword ptr [rsp + 0xc], edx
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
	jne	.label_646
	mov	qword ptr [rsp + 0x10], r15
	mov	r15d, dword ptr [rsp + 0xc]
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, rax
	call	memcmp
	test	eax, eax
	je	.label_650
.label_646:
	xor	ebp, ebp
.label_651:
	mov	eax, ebp
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_650:
	mov	rdi, r13
	call	dir_name
	mov	rbp, rax
	lea	rdx, [rsp + 0xa8]
	mov	ecx, 0x100
	mov	edi, r12d
	mov	rsi, rbp
	call	fstatat
	test	eax, eax
	je	.label_649
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_165
	xor	eax, eax
	mov	rcx, rbp
	call	error
.label_649:
	mov	rdi, rbp
	call	free
	mov	rdi, qword ptr [rsp + 0x10]
	call	dir_name
	mov	rbx, rax
	lea	rdx, [rsp + 0x18]
	mov	ecx, 0x100
	mov	edi, r15d
	mov	rsi, rbx
	call	fstatat
	test	eax, eax
	je	.label_652
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_165
	xor	eax, eax
	mov	rcx, rbx
	call	error
.label_652:
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_647
	mov	rax, qword ptr [rsp + 0xa8]
	cmp	rax, qword ptr [rsp + 0x18]
	sete	bpl
	jmp	.label_648
.label_647:
	xor	ebp, ebp
.label_648:
	mov	rdi, rbx
	call	free
	jmp	.label_651
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407800
	.globl statat
	.type statat, @function
statat:

	xor	ecx, ecx
	jmp	fstatat
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407810

	.globl lstatat
	.type lstatat, @function
lstatat:
	mov	ecx, 0x100
	jmp	fstatat
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407820

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
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x28], rdx
	mov	ebx, esi
	mov	r15, rdi
	call	__errno_location
	mov	qword ptr [rsp + 8], rax
	mov	r12d, dword ptr [rax]
	mov	rdi, r15
	call	strlen
	mov	rbp, rax
	movsxd	rbx, ebx
	lea	rax, [rbx + r14]
	mov	rdi, rbp
	sub	rdi, rax
	jb	.label_659
	add	rdi, r15
	mov	rsi, r14
	call	check_x_suffix
	test	al, al
	je	.label_659
	mov	dword ptr [rsp + 0x14], r12d
	mov	qword ptr [rsp + 0x18], r15
	xor	r13d, r13d
	xor	edi, edi
	mov	rsi, r14
	call	randint_all_new
	mov	r15, rax
	mov	r12d, 0xffffffff
	test	r15, r15
	je	.label_656
	sub	rbp, rbx
	mov	r12, qword ptr [rsp + 0x18]
	add	rbp, r12
	mov	rax, r14
	neg	rax
	mov	qword ptr [rsp + 0x20], rax
	nop	dword ptr [rax]
.label_655:
	test	r14, r14
	je	.label_653
	mov	rbx, qword ptr [rsp + 0x20]
	nop	word ptr [rax + rax]
.label_657:
	mov	esi, 0x3d
	mov	rdi, r15
	call	randint_genmax
	movzx	eax,  byte ptr [byte ptr [rax + letters]]
	mov	byte ptr [rbp + rbx], al
	inc	rbx
	jne	.label_657
.label_653:
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x28]
	call	qword ptr [rsp + 0x30]
	mov	r12d, eax
	test	r12d, r12d
	jns	.label_660
	mov	rax, qword ptr [rsp + 8]
	cmp	dword ptr [rax], 0x11
	mov	r12d, 0xffffffff
	jne	.label_654
	inc	r13d
	cmp	r13d, 0x3a2f7
	mov	r12, qword ptr [rsp + 0x18]
	jbe	.label_655
	mov	rdi, r15
	call	randint_all_free
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0x11
	jmp	.label_658
.label_659:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0x16
.label_658:
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
.label_660:
	mov	rax, qword ptr [rsp + 8]
	mov	ecx, dword ptr [rsp + 0x14]
	mov	dword ptr [rax], ecx
.label_654:
	mov	rbp, qword ptr [rsp + 8]
	mov	ebx, dword ptr [rbp]
	mov	rdi, r15
	call	randint_all_free
	mov	dword ptr [rbp], ebx
	jmp	.label_656
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407980

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
	.align	16
	#Procedure 0x4079a0

	.globl gen_tempname_len
	.type gen_tempname_len, @function
gen_tempname_len:
	push	rax
	mov	dword ptr [rsp + 4], edx
	cmp	ecx, 3
	jae	.label_661
	movsxd	rax, ecx
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_665]]
	lea	rdx, [rsp + 4]
	call	try_tempname_len
	pop	rcx
	ret	
.label_661:
	mov	edi, OFFSET FLAT:label_662
	mov	esi, OFFSET FLAT:label_663
	mov	edx, 0x147
	mov	ecx, OFFSET FLAT:label_664
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4079e0

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
	#Procedure 0x407a00

	.globl try_dir
	.type try_dir, @function
try_dir:
	mov	esi, 0x1c0
	jmp	mkdir
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407a10

	.globl try_nocreate
	.type try_nocreate, @function
try_nocreate:
	sub	rsp, 0x98
	lea	rsi, [rsp + 8]
	call	lstat
	test	eax, eax
	je	.label_666
	call	__errno_location
	cmp	dword ptr [rax], 0x4b
	jne	.label_667
.label_666:
	call	__errno_location
	mov	dword ptr [rax], 0x11
.label_667:
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 2
	mov	eax, 0xffffffff
	cmove	eax, ecx
	add	rsp, 0x98
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407a60
	.globl gen_tempname
	.type gen_tempname, @function
gen_tempname:

	mov	r8d, 6
	jmp	gen_tempname_len
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407a70
	.globl try_tempname
	.type try_tempname, @function
try_tempname:

	mov	r8d, 6
	jmp	try_tempname_len
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407a80

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
	ja	.label_668
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
	jmp	.label_669
.label_668:
	mov	eax, ebx
.label_669:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ad0

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, r9
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_680
	mov	edx, OFFSET FLAT:label_685
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_672
.label_680:
	mov	edx, OFFSET FLAT:label_674
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_672:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_679
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
	mov	esi, OFFSET FLAT:label_675
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_681
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_682]]
.label_862:
	add	rsp, 8
	jmp	.label_673
.label_681:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_688
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_673
.label_863:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_676
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_864:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_670
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_865:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_686
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_866:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_683
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_673
.label_867:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_678
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_673
.label_868:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_684
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_673
.label_869:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_687
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_673
.label_871:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_671
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_673
.label_870:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_677
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
.label_673:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407e30
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_689:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_689
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407e60

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_691:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_690
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_692
	nop	dword ptr [rax]
.label_690:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_692:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_693
	inc	r9
	cmp	r9, 0xa
	jb	.label_691
.label_693:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x407ec0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_694
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_694:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x20
	lea	r8, [rsp]
	call	version_etc_va
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407f50
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_695
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_696
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_698
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_26
	mov	ecx, OFFSET FLAT:label_27
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_697
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407fd0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_699
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_699:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408000

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_700
	test	rax, rax
	je	.label_701
.label_700:
	pop	rbx
	ret	
.label_701:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408020
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_702
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_702:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408050

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_703
	test	rbx, rbx
	jne	.label_703
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_703:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_705
	test	rax, rax
	je	.label_704
.label_705:
	pop	rbx
	ret	
.label_704:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x408080

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_706
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_709
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_707
.label_706:
	test	rcx, rcx
	jne	.label_710
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_710:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_708
.label_707:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_709:
	call	xalloc_die
.label_708:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408100

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408110
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408120
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
	.align	16
	#Procedure 0x408150
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_711
	call	rpl_calloc
	test	rax, rax
	je	.label_711
	pop	rcx
	ret	
.label_711:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408180

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
	.align	16
	#Procedure 0x4081b0

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
	.section	.text
	.align	16
	#Procedure 0x4081d0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_712
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_165
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x408200

	.globl xgetcwd
	.type xgetcwd, @function
xgetcwd:
	push	rbx
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_714
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_713
.label_714:
	mov	rax, rbx
	pop	rbx
	ret	
.label_713:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408230

	.globl yesno
	.type yesno, @function
yesno:
	push	rbx
	sub	rsp, 0x10
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], 0
	mov	rdx,  qword ptr [word ptr [rip + stdin]]
	lea	rdi, [rsp]
	lea	rsi, [rsp + 8]
	call	getline
	test	rax, rax
	jle	.label_717
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx + rax - 1], 0xa
	jne	.label_715
	mov	byte ptr [rcx + rax - 1], 0
.label_715:
	mov	rdi, qword ptr [rsp]
	call	rpmatch
	test	eax, eax
	setg	bl
	jmp	.label_716
.label_717:
	xor	ebx, ebx
.label_716:
	mov	rdi, qword ptr [rsp]
	call	free
	mov	eax, ebx
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4082a0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_718
	test	rsi, rsi
	mov	ecx, 1
	je	.label_719
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_719
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_718:
	mov	ecx, 1
.label_719:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4082f0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_720
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_720
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_720:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408320

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_721
	ret	
.label_721:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408340

	.globl freadahead
	.type freadahead, @function
freadahead:
	mov	rcx, qword ptr [rdi + 0x28]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	ja	.label_722
	mov	rax, qword ptr [rdi + 0x10]
	sub	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	test	byte ptr [rdi + 1], 1
	je	.label_723
	mov	rcx, qword ptr [rdi + 0x58]
	sub	rcx, qword ptr [rdi + 0x48]
.label_723:
	add	rax, rcx
.label_722:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408370

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
	jne	.label_724
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_724
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_725
.label_724:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_725:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_726
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_726:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4083e0

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
	je	.label_727
	cmp	r15, -2
	jb	.label_727
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_727
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_727:
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
	#Procedure 0x408440

	.globl areadlink_with_size
	.type areadlink_with_size, @function
areadlink_with_size:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdi
	cmp	rsi, 0x401
	lea	rax, [rsi + 1]
	mov	r12d, 0x401
	cmovb	r12, rax
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	mov	qword ptr [rsp], rax
	test	rbx, rbx
	je	.label_728
	xor	eax, eax
	mov	qword ptr [rsp], rax
	nop	word ptr cs:[rax + rax]
.label_736:
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r12
	call	readlink
	mov	r13, rax
	test	r13, r13
	jns	.label_733
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	jne	.label_729
.label_733:
	cmp	r13, r12
	jb	.label_735
	mov	rdi, rbx
	call	free
	mov	rax, r12
	shr	rax, 0x3e
	jne	.label_730
	add	r12, r12
	jmp	.label_731
	nop	word ptr cs:[rax + rax]
.label_730:
	movabs	rax, 0x7fffffffffffffff
	cmp	r12, rax
	mov	r12, rax
	jae	.label_734
.label_731:
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_736
	jmp	.label_728
.label_735:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp], rbx
	jmp	.label_728
.label_734:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_732
.label_729:
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
.label_732:
	xor	eax, eax
	mov	qword ptr [rsp], rax
.label_728:
	mov	rax, qword ptr [rsp]
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
	#Procedure 0x408550

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408560

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
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_743
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], r14
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_737:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_742
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_740
	cmp	qword ptr [rsp + 8], -1
	je	.label_741
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_739
	mov	rdi, qword ptr [rsp + 8]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_742
.label_739:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_742
.label_741:
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr [rax + rax]
.label_742:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_737
	jmp	.label_738
.label_743:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_738:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 8]
.label_740:
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
	.align	16
	#Procedure 0x408660

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
	je	.label_744
	mov	esi, OFFSET FLAT:label_745
	jmp	.label_746
.label_744:
	mov	esi, OFFSET FLAT:label_747
.label_746:
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
	#Procedure 0x4086d0

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
	mov	esi, OFFSET FLAT:label_752
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [r15]
	test	rbx, rbx
	je	.label_750
	xor	r12d, r12d
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_754:
	test	rbp, rbp
	je	.label_748
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_753
.label_748:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_751
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_755
	nop	word ptr cs:[rax + rax]
.label_753:
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_749
	xor	eax, eax
	mov	rdi, qword ptr [rsp]
	call	__fprintf_chk
.label_755:
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	jne	.label_754
.label_750:
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
	.align	16
	#Procedure 0x4087d0

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
	jns	.label_756
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
	#Procedure 0x408840
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
	je	.label_757
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_758:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_757
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_758
.label_757:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4088b0
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	ecx, esi
	rol	rdi, cl
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4088c0
	.globl rotr64
	.type rotr64, @function
rotr64:

	mov	ecx, esi
	ror	rdi, cl
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4088d0
	.globl rotl32
	.type rotl32, @function
rotl32:

	mov	ecx, esi
	rol	edi, cl
	mov	eax, edi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4088e0
	.globl rotr32
	.type rotr32, @function
rotr32:

	mov	ecx, esi
	ror	edi, cl
	mov	eax, edi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4088f0
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	mov	ecx, esi
	rol	rdi, cl
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408900

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	mov	ecx, esi
	ror	rdi, cl
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408910
	.globl rotl16
	.type rotl16, @function
rotl16:

	mov	eax, edi
	mov	ecx, esi
	shl	eax, cl
	mov	ecx, 0x10
	sub	ecx, esi
	shr	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408930
	.globl rotr16
	.type rotr16, @function
rotr16:

	mov	eax, edi
	mov	ecx, esi
	shr	eax, cl
	mov	ecx, 0x10
	sub	ecx, esi
	shl	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408950
	.globl rotl8
	.type rotl8, @function
rotl8:

	mov	eax, edi
	mov	ecx, esi
	shl	eax, cl
	mov	ecx, 8
	sub	ecx, esi
	shr	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408970
	.globl rotr8
	.type rotr8, @function
rotr8:

	mov	eax, edi
	mov	ecx, esi
	shr	eax, cl
	mov	ecx, 8
	sub	ecx, esi
	shl	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408990
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_759
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_759
.label_760:
	ret	
.label_759:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_760
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4089c0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_761
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_761:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4089e0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4089f0
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
	.align	16
	#Procedure 0x408a00
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_762
.label_763:
	ret	
.label_762:
	cmp	edi, 0x7f
	je	.label_763
	xor	eax, eax
	jmp	.label_763
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408a20
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408a30
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408a40
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408a50
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408a60
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_764
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_765]]
.label_766:
	ret	
.label_764:
	xor	eax, eax
	jmp	.label_766
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408a80
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_767
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_767:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408aa0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ab0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_768
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_768:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x408ad0
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
	.align	16
	#Procedure 0x408ae0
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
	.align	16
	#Procedure 0x408af0

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
	je	.label_770
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_769
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_769
.label_770:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_769
	test	cl, cl
	jne	.label_769
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_769:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408b60

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_772
	cmp	byte ptr [rax], 0x43
	jne	.label_774
	cmp	byte ptr [rax + 1], 0
	je	.label_771
.label_774:
	mov	esi, OFFSET FLAT:label_773
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_772
.label_771:
	xor	ebx, ebx
.label_772:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ba0

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	mov	cl, byte ptr [rdi]
	xor	eax, eax
	test	cl, cl
	je	.label_775
	inc	rdi
	xor	eax, eax
	nop	dword ptr [rax]
.label_776:
	movsx	rcx, cl
	rol	rax, 9
	add	rax, rcx
	movzx	ecx, byte ptr [rdi]
	inc	rdi
	test	cl, cl
	jne	.label_776
.label_775:
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x408bd0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_36
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_777
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408c00

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
	.align	16
	#Procedure 0x408c20

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	push	rax
	call	randread_new
	test	rax, rax
	je	.label_778
	mov	rdi, rax
	pop	rax
	jmp	randint_new
.label_778:
	xor	eax, eax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408c40
	.globl randint_get_source
	.type randint_get_source, @function
randint_get_source:

	mov	rax, qword ptr [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408c50

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
	mov	rax, qword ptr [rdi]
	mov	qword ptr [rsp + 0x18], rax
	mov	r15, qword ptr [rdi + 8]
	lea	rax, [rdi + 8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], rdi
	mov	rbx, qword ptr [rdi + 0x10]
	lea	r12, [r13 + 1]
	nop	word ptr cs:[rax + rax]
.label_780:
	cmp	rbx, r13
	jae	.label_779
	mov	rax, rbx
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_781:
	mov	rdi, rax
	call	shift_left
	add	rax, 0xff
	inc	r14
	cmp	rax, r13
	jb	.label_781
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rbp, [rsp + 0x20]
	mov	rsi, rbp
	mov	rdx, r14
	call	randread
	nop	dword ptr [rax + rax]
.label_783:
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
	jb	.label_783
.label_779:
	mov	rcx, r15
	mov	rsi, rbx
	sub	rsi, r13
	je	.label_784
	xor	edx, edx
	mov	rax, rsi
	div	r12
	mov	rdi, rdx
	sub	rbx, rdi
	xor	edx, edx
	mov	rax, rcx
	div	r12
	mov	r15, rdx
	dec	rdi
	cmp	rcx, rbx
	mov	rbx, rdi
	ja	.label_780
	xor	edx, edx
	mov	rax, rcx
	div	r12
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx + 8], rax
	xor	edx, edx
	mov	rax, rsi
	div	r12
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, r15
	jmp	.label_782
.label_784:
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rsp + 8]
	movups	xmmword ptr [rax], xmm0
.label_782:
	mov	rax, rcx
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
	#Procedure 0x408d70

	.globl shift_left
	.type shift_left, @function
shift_left:
	shl	rdi, 8
	mov	rax, rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408d80

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
	.align	16
	#Procedure 0x408da0

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
	.align	16
	#Procedure 0x408de0

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
	je	.label_785
	test	rbx, rbx
	je	.label_787
	mov	esi, OFFSET FLAT:label_788
	mov	rdi, rbx
	call	fopen_safer
	mov	r12, rax
	xor	r14d, r14d
	test	r12, r12
	je	.label_786
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
	jmp	.label_786
.label_785:
	xor	edi, edi
	xor	esi, esi
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	simple_new
.label_787:
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
.label_786:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408e90

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
	.align	16
	#Procedure 0x408ec0

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
	mov	edi, OFFSET FLAT:label_789
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	ebp, eax
	test	ebp, ebp
	js	.label_790
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
	js	.label_790
	cmp	rbx, 0x7ff
	mov	r15, rbx
	ja	.label_791
.label_790:
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
	ja	.label_791
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
	ja	.label_791
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
	ja	.label_791
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
	ja	.label_791
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
.label_791:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409060
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	qword ptr [rdi + 8], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409070
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	mov	qword ptr [rdi + 0x10], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409080

	.globl randread
	.type randread, @function
randread:
	cmp	qword ptr [rdi], 0
	je	.label_792
	jmp	readsource
.label_792:
	add	rdi, 0x18
	jmp	readisaac
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4090a0

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
	jmp	.label_794
	nop	
.label_793:
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
.label_794:
	sub	r13, rbx
	jne	.label_793
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409120

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
	jae	.label_795
	lea	rbp, [r14 + 8]
	mov	rdi, rbx
	mov	rdx, r12
	call	memcpy
	add	rbx, r12
	sub	r15, r12
	xor	r12d, r12d
	nop	dword ptr [rax + rax]
.label_797:
	cmp	r15, 0x800
	jb	.label_796
	mov	rdi, rbp
	mov	rsi, rbx
	call	isaac_refill
	add	rbx, 0x800
	add	r15, -0x800
	jne	.label_797
	jmp	.label_798
.label_796:
	mov	rdi, rbp
	mov	rsi, r13
	call	isaac_refill
	mov	r12d, 0x800
	mov	rsi, r13
.label_795:
	mov	rdi, rbx
	mov	rdx, r15
	call	memcpy
	sub	r12, r15
.label_798:
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
	.align	16
	#Procedure 0x4091d0

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
	je	.label_799
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	rpl_fclose
.label_799:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409210

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
	je	.label_800
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	jne	.label_803
	mov	esi, OFFSET FLAT:label_801
	jmp	.label_802
.label_803:
	mov	esi, OFFSET FLAT:label_804
.label_802:
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
.label_800:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x409270

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbp, rsi
	mov	r14, rdi
	mov	rbx, qword ptr [r14 + 0x800]
	mov	rax, qword ptr [r14 + 0x810]
	inc	rax
	mov	r12, qword ptr [r14 + 0x808]
	add	r12, rax
	mov	qword ptr [r14 + 0x810], rax
	lea	rcx, [r14 + 0x400]
	lea	rax, [r14 + 0x20]
	cmp	rcx, rax
	mov	qword ptr [rsp + 0x20], rcx
	cmova	rax, rcx
	mov	rcx, r14
	not	rcx
	add	rcx, rax
	shr	rcx, 5
	lea	rax, [rcx*4]
	mov	qword ptr [rsp + 0x18], rax
	shl	rcx, 5
	lea	rax, [rbp + rcx + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 8], r14
	mov	r15, qword ptr [rsp + 8]
	nop	
.label_806:
	mov	qword ptr [rsp], rbp
	mov	r13, rbx
	shl	r13, 0x15
	xor	r13, rbx
	not	r13
	add	r13, qword ptr [r14 + 0x400]
	mov	rbx, qword ptr [r14]
	mov	rdi, r15
	mov	rsi, rbx
	call	ind
	add	rax, r12
	add	rax, r13
	mov	qword ptr [r14], rax
	shr	rax, 8
	mov	rdi, r15
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
	add	rbp, qword ptr [r14 + 0x408]
	mov	r12, qword ptr [r14 + 8]
	mov	rdi, r15
	mov	rsi, r12
	call	ind
	add	rbx, rbp
	add	rbx, rax
	mov	qword ptr [r14 + 8], rbx
	shr	rbx, 8
	mov	rdi, r15
	mov	rsi, rbx
	call	ind
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	rbx, rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax + 8], rbx
	mov	r12, rbp
	shl	r12, 0xc
	xor	r12, rbp
	add	r12, qword ptr [r14 + 0x410]
	mov	rbp, qword ptr [r14 + 0x10]
	mov	rdi, r15
	mov	rsi, rbp
	call	ind
	add	rbx, r12
	add	rbx, rax
	mov	qword ptr [r14 + 0x10], rbx
	shr	rbx, 8
	mov	rdi, r15
	mov	rsi, rbx
	call	ind
	add	rbp, rax
	mov	rdi, rbp
	call	just
	mov	rbp, rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax + 0x10], rbp
	mov	rdi, r12
	call	just
	mov	rbx, rax
	shr	rbx, 0x21
	xor	rbx, r12
	add	rbx, qword ptr [r14 + 0x418]
	mov	r12, qword ptr [r14 + 0x18]
	mov	rdi, r15
	mov	rsi, r12
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r14 + 0x18], rbp
	shr	rbp, 8
	mov	rdi, r15
	mov	rsi, rbp
	mov	rbp, qword ptr [rsp]
	call	ind
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	r12, rax
	mov	qword ptr [rbp + 0x18], r12
	add	r14, 0x20
	add	rbp, 0x20
	cmp	r14, qword ptr [rsp + 0x20]
	jb	.label_806
	mov	rcx, qword ptr [rsp + 8]
	lea	rax, [rcx + 0x800]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rsp + 0x18]
	lea	r13, [rcx + rax*8 + 0x38]
	mov	r14, qword ptr [rsp + 8]
	nop	
.label_805:
	mov	r15, rbx
	shl	r15, 0x15
	xor	r15, rbx
	not	r15
	add	r15, qword ptr [r13 - 0x418]
	mov	rbx, qword ptr [r13 - 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	ind
	add	rax, r12
	add	rax, r15
	mov	qword ptr [r13 - 0x18], rax
	shr	rax, 8
	mov	rdi, r14
	mov	rsi, rax
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rbp
	mov	r12, rax
	mov	rdi, r15
	call	just
	mov	rbx, rax
	shr	rbx, 5
	xor	rbx, r15
	add	rbx, qword ptr [r13 - 0x410]
	mov	r15, qword ptr [r13 - 0x10]
	mov	rdi, r14
	mov	rsi, r15
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r13 - 0x10], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	r15, rax
	mov	rdi, r15
	call	just
	mov	rbp, rax
	mov	qword ptr [r12 + 8], rbp
	mov	qword ptr [rsp + 0x10], r12
	mov	r15, rbx
	shl	r15, 0xc
	xor	r15, rbx
	add	r15, qword ptr [r13 - 0x408]
	mov	rbx, qword ptr [r13 - 8]
	mov	rdi, r14
	mov	rsi, rbx
	call	ind
	add	rbp, r15
	add	rbp, rax
	mov	qword ptr [r13 - 8], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbp, rax
	mov	qword ptr [r12 + 0x10], rbp
	mov	rdi, r15
	call	just
	mov	rbx, rax
	shr	rbx, 0x21
	xor	rbx, r15
	add	rbx, qword ptr [r13 - 0x400]
	mov	r15, qword ptr [r13]
	mov	rdi, r14
	mov	rsi, r15
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r13], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	r15, rax
	mov	rdi, r15
	call	just
	mov	r12, rax
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx + 0x18], r12
	lea	rax, [r13 + 0x20]
	add	r13, 8
	add	rcx, 0x20
	mov	qword ptr [rsp + 0x10], rcx
	cmp	r13, qword ptr [rsp]
	mov	r13, rax
	jb	.label_805
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax + 0x800], rbx
	mov	qword ptr [rax + 0x808], r12
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
	.align	16
	#Procedure 0x409610

	.globl ind
	.type ind, @function
ind:
	and	esi, 0x7f8
	mov	rax, qword ptr [rdi + rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409620

	.globl just
	.type just, @function
just:
	mov	rax, rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409630

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
	movabs	rbp, 0x647c4677a2884b7c
	movabs	r15, 0xb9f8b322c73ac862
	movabs	r14, 0x8c0ea5053d4712a0
	movabs	rbx, 0xb29b2e824a595524
	movabs	r13, 0x82f053db8355e0ce
	movabs	rdx, 0x48fe4a0fa5a09315
	movabs	rax, 0xae985bf2cbfc89ed
	movabs	r12, 0x98f5704f6c44c0ab
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x28], rdi
	nop	word ptr cs:[rax + rax]
.label_807:
	mov	qword ptr [rsp + 0x20], rcx
	add	rbp, qword ptr [rdi + rcx*8]
	add	r15, qword ptr [rdi + rcx*8 + 8]
	add	r14, qword ptr [rdi + rcx*8 + 0x10]
	add	rbx, qword ptr [rdi + rcx*8 + 0x18]
	add	r13, qword ptr [rdi + rcx*8 + 0x20]
	add	rdx, qword ptr [rdi + rcx*8 + 0x28]
	mov	qword ptr [rsp], rdx
	add	rax, qword ptr [rdi + rcx*8 + 0x30]
	mov	qword ptr [rsp + 8], rax
	add	r12, qword ptr [rdi + rcx*8 + 0x38]
	sub	rbp, r13
	mov	rdi, r12
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rsp]
	mov	qword ptr [rsp], rax
	add	r12, rbp
	sub	r15, rax
	lea	rax, [r15 + rbp]
	mov	qword ptr [rsp + 0x18], rax
	shl	rbp, 9
	xor	rbp, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 8], rbp
	sub	r14, rbp
	mov	rdi, r15
	call	just
	shr	rax, 0x17
	xor	r12, rax
	add	r15, r14
	mov	qword ptr [rsp + 0x30], r15
	sub	rbx, r12
	lea	rax, [rbx + r14]
	mov	qword ptr [rsp + 0x10], rax
	shl	r14, 0xf
	mov	rbp, r14
	xor	rbp, qword ptr [rsp + 0x18]
	sub	r13, rbp
	mov	rdi, rbx
	call	just
	mov	r15, rax
	shr	r15, 0xe
	xor	r15, qword ptr [rsp + 0x30]
	add	rbx, r13
	mov	qword ptr [rsp + 0x18], rbx
	mov	rdi, qword ptr [rsp]
	sub	rdi, r15
	mov	qword ptr [rsp], rdi
	mov	r14, r13
	shl	r14, 0x14
	xor	r14, qword ptr [rsp + 0x10]
	add	r13, rdi
	mov	qword ptr [rsp + 0x10], r13
	mov	r13, qword ptr [rsp + 8]
	sub	r13, r14
	call	just
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rbx, rax
	shr	rbx, 0x11
	xor	rbx, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp]
	mov	rax, r13
	add	rdx, rax
	sub	r12, rbx
	shl	r13, 0xe
	xor	r13, qword ptr [rsp + 0x10]
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
	jl	.label_807
	xor	ecx, ecx
	nop	
.label_808:
	mov	qword ptr [rsp + 0x20], rcx
	add	rbp, qword ptr [rdi + rcx*8]
	add	r15, qword ptr [rdi + rcx*8 + 8]
	add	r14, qword ptr [rdi + rcx*8 + 0x10]
	add	rbx, qword ptr [rdi + rcx*8 + 0x18]
	add	r13, qword ptr [rdi + rcx*8 + 0x20]
	add	rdx, qword ptr [rdi + rcx*8 + 0x28]
	mov	qword ptr [rsp], rdx
	add	rax, qword ptr [rdi + rcx*8 + 0x30]
	mov	qword ptr [rsp + 8], rax
	add	r12, qword ptr [rdi + rcx*8 + 0x38]
	sub	rbp, r13
	mov	rdi, r12
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rsp]
	mov	qword ptr [rsp], rax
	add	r12, rbp
	sub	r15, rax
	lea	rax, [r15 + rbp]
	mov	qword ptr [rsp + 0x18], rax
	shl	rbp, 9
	xor	rbp, qword ptr [rsp + 8]
	sub	r14, rbp
	mov	rdi, r15
	call	just
	shr	rax, 0x17
	xor	rax, r12
	add	r15, r14
	sub	rbx, rax
	mov	r12, rax
	lea	rax, [rbx + r14]
	mov	qword ptr [rsp + 0x10], rax
	shl	r14, 0xf
	xor	r14, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 8], r14
	sub	r13, r14
	mov	rdi, rbx
	call	just
	shr	rax, 0xe
	xor	r15, rax
	add	rbx, r13
	mov	rdi, qword ptr [rsp]
	sub	rdi, r15
	mov	qword ptr [rsp], rdi
	mov	r14, r13
	shl	r14, 0x14
	xor	r14, qword ptr [rsp + 0x10]
	add	r13, rdi
	sub	rbp, r14
	call	just
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x28]
	shr	rax, 0x11
	xor	rbx, rax
	mov	rdx, qword ptr [rsp]
	add	rdx, rbp
	sub	r12, rbx
	mov	rax, rbp
	shl	rax, 0xe
	xor	r13, rax
	add	rbp, r12
	mov	rsi, qword ptr [rsp + 8]
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
	jl	.label_808
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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409950

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop	
	.section	.text
	.align	16
	#Procedure 0x409960

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	mov	rax, rsi
	xor	esi, esi
	mov	rdx, rax
	jmp	memset
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409970

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_809
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_811
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_809
.label_811:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_809
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_810
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_810:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_809:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4099f0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
	test	al, al
	je	.label_818
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_818:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	cmp	esi, 0xb
	ja	.label_812
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_822
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_820
	test	esi, esi
	jne	.label_812
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_823
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_815
.label_812:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_813
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_820
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_825
.label_822:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_820:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_816
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_819
.label_816:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_819:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_825:
	cmp	eax, 6
	jne	.label_813
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_814
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_817
.label_813:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_821
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_824
.label_823:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_815:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_814:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_817:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_821:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_824:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409bb0

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
	.align	16
	#Procedure 0x409bc0

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_826
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_828
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_828
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_829
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_830
.label_828:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_830
.label_826:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_830:
	test	ebx, ebx
	js	.label_829
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_829
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_827
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_829
.label_827:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_829:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409c90

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
	.align	16
	#Procedure 0x409cb0

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
	je	.label_832
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_834
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_835
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_831
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_832
.label_831:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_833
.label_834:
	mov	rax, rbx
	jmp	.label_832
.label_835:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_833:
	xor	eax, eax
.label_832:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409df0

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	16
	#Procedure 0x409e00

	.globl lstat
	.type lstat, @function
lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section .text
	.align	16
	#Procedure 0x409e10

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
