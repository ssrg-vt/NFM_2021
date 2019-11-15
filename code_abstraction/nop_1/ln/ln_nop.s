	.section	.text
	.align	32
	#Procedure 0x401f20

	.globl usage
	.type usage, @function
usage:
	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	ebp, edi
	lea	rsi, [rsi]
	test	ebp, ebp
	lea	rsi, [rsi]
	jne	.label_7
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rcx, rdx
	mov	rsp, rsp
	mov	r8, rdx
	mov	r9, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	rbp, rbp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	call	emit_mandatory_arg_note
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.3
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.6
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.7
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	nop	
	call	emit_backup_suffix_note
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.9
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rsi, rcx
	call	__printf_chk
	mov	rbp, rbp
	call	emit_ancillary_info
	mov	rsp, rsp
	mov	edi, ebp
	call	exit
.label_7:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	lea	rsi, [rsi]
	mov	esi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	rdi, rbx
	call	__fprintf_chk
	lea	rsi, [rsi]
	mov	edi, ebp
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402130

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.29
	mov	rbp, rbp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	pop	rax
	nop	
	jmp	fputs_unlocked
	nop	
	.section	.text
	.align	32
	#Procedure 0x402160

	.globl emit_backup_suffix_note
	.type emit_backup_suffix_note, @function
emit_backup_suffix_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.31
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rbp, rbp
	pop	rax
	lea	rsi, [rsi]
	jmp	fputs_unlocked
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4021c0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.32
	nop	word ptr cs:[rax + rax]
.label_9:
	mov	edi, OFFSET FLAT:.str.10
	call	strcmp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_8
	mov	rsi, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	add	rbx, 0x10
	nop	
	test	rsi, rsi
	jne	.label_9
.label_8:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 8]
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, OFFSET FLAT:.str.10
	cmovne	rbx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	rbp, rbp
	mov	edi, 1
	nop	
	mov	edx, OFFSET FLAT:.str.17
	nop	
	mov	ecx, OFFSET FLAT:.str.18
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_10
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.42
	mov	rbp, rbp
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_10
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_10:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.10
	mov	edi, 1
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.10
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.45
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rdx, rax
	lea	rsi, [rsi]
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.46
	mov	ecx, OFFSET FLAT:.str_0
	cmove	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rdx
	mov	rdx, rbx
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	jmp	__printf_chk
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402330

	.globl main
	.type main, @function
main:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	nop	
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0xb8
	mov	rsp, rsp
	mov	r12, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [r12]
	call	set_program_name
	lea	rsi, [rsi]
	mov	edi, 6
	nop	
	mov	esi, OFFSET FLAT:.str_0
	nop	
	call	setlocale
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.12
	mov	esi, OFFSET FLAT:.str.13
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.12
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdin
	lea	rdi, [rdi]
	call	atexit
	mov	byte ptr [byte ptr [rip + hard_dir_link]],  0
	mov	byte ptr [byte ptr [rip + verbose]],  0
	mov	byte ptr [byte ptr [rip + interactive]],  0
	mov	byte ptr [byte ptr [rip + remove_existing_files]],  0
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + symbolic_link]],  0
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x20], rax
	lea	r13, [rsp + 0x28]
	xor	ebx, ebx
	xor	eax, eax
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	
	mov	qword ptr [rsp + 0x18], rcx
	lea	rsi, [rsi]
	xor	r14d, r14d
	jmp	.label_24
.label_30:
	mov	byte ptr [byte ptr [rip + hard_dir_link]],  1
	nop	
	mov	al, r15b
	nop	
.label_24:
	lea	rsi, [rsi]
	mov	r15b, al
	nop	
	mov	edx, OFFSET FLAT:.str.14
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:long_options
	mov	rbp, rbp
	xor	r8d, r8d
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, r12
	nop	
	call	getopt_long
	lea	rdi, [rdi]
	cmp	eax, 0x61
	jle	.label_35
	add	eax, -0x62
	mov	rsp, rsp
	cmp	eax, 0x14
	ja	.label_13
	lea	rdi, [rdi]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_21]]
.label_870:
	nop	
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	test	rax, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x20]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x20], rcx
	mov	r14b, 1
	nop	
	mov	al, r15b
	jmp	.label_24
	nop	
.label_35:
	lea	rdi, [rdi]
	cmp	eax, 0x45
	mov	rsp, rsp
	jle	.label_28
	lea	rsi, [rsi]
	lea	ecx, [rax - 0x4c]
	cmp	ecx, 8
	lea	rdi, [rdi]
	ja	.label_31
	mov	rsp, rsp
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_32]]
.label_857:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + logical]],  1
	mov	al, r15b
	jmp	.label_24
.label_871:
	mov	byte ptr [byte ptr [rip + remove_existing_files]],  1
	mov	byte ptr [byte ptr [rip + interactive]],  0
	nop	
	mov	al, r15b
	jmp	.label_24
.label_872:
	mov	byte ptr [byte ptr [rip + remove_existing_files]],  0
	nop	
	mov	byte ptr [byte ptr [rip + interactive]],  1
	mov	al, r15b
	jmp	.label_24
.label_873:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + dereference_dest_dir_symlinks]],  1
	lea	rdi, [rdi]
	mov	al, r15b
	lea	rsi, [rsi]
	jmp	.label_24
.label_874:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + relative]],  1
	mov	rbp, rbp
	mov	al, r15b
	jmp	.label_24
.label_875:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + symbolic_link]],  1
	mov	rbp, rbp
	mov	al, r15b
	lea	rsi, [rsi]
	jmp	.label_24
.label_876:
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_15
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rdi, [rdi]
	mov	rsi, r13
	call	stat
	mov	rbp, rbp
	test	eax, eax
	jne	.label_22
	mov	eax, dword ptr [rsp + 0x40]
	nop	
	mov	ecx, 0xf000
	and	eax, ecx
	lea	rsi, [rsi]
	cmp	eax, 0x4000
	jne	.label_25
	lea	rsi, [rsi]
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	mov	al, r15b
	lea	rdi, [rdi]
	jmp	.label_24
.label_877:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + verbose]],  1
	lea	rsi, [rsi]
	mov	al, r15b
	mov	rsp, rsp
	jmp	.label_24
.label_31:
	cmp	eax, 0x46
	je	.label_30
	jmp	.label_13
.label_858:
	mov	byte ptr [byte ptr [rip + logical]],  0
	mov	al, r15b
	jmp	.label_24
.label_859:
	lea	rsi, [rsi]
	mov	r14b, 1
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0x18], rax
	nop	
	mov	al, r15b
	mov	rbp, rbp
	jmp	.label_24
.label_28:
	lea	rsi, [rsi]
	cmp	eax, -1
	mov	rbp, rbp
	jne	.label_38
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	nop	
	movsxd	r13, ebp
	sub	r13, rax
	test	r13d, r13d
	nop	
	jle	.label_39
	movzx	ecx,  byte ptr [byte ptr [rip + relative]]
	lea	rsi, [rsi]
	and	ecx, 1
	cmp	ecx, 1
	lea	rdi, [rdi]
	jne	.label_44
	mov	rsp, rsp
	mov	cl,  byte ptr [byte ptr [rip + symbolic_link]]
	and	cl, 1
	je	.label_45
.label_44:
	nop	
	lea	r12, [r12 + rax*8]
	lea	rdi, [rdi]
	test	r15b, r15b
	je	.label_14
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_17
	nop	
	xor	r15d, r15d
	lea	rdi, [rdi]
	cmp	r13d, 2
	jne	.label_20
	mov	ebp, 0xffffffff
	mov	r13d, 2
.label_40:
	mov	dword ptr [rsp + 0x14], eax
	mov	rbp, rbp
	jmp	.label_18
.label_14:
	mov	rbp, rbp
	test	rbx, rbx
	lea	rsi, [rsi]
	jne	.label_19
	cmp	r13d, 2
	lea	rdi, [rdi]
	jge	.label_19
	nop	
	mov	ebp, 0xffffffff
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x14], 0xffffff9c
	lea	rdi, [rdi]
	mov	r15d, OFFSET FLAT:.str.2_0
	jmp	.label_18
.label_19:
	test	rbx, rbx
	lea	rdi, [rdi]
	mov	r15, rbx
	lea	rsi, [rsi]
	setne	al
	mov	rbp, rbp
	cmp	r13d, 2
	setne	bl
	mov	ebp, 0xffffffff
	or	bl, al
	mov	rbp, rbp
	jne	.label_33
	mov	rsp, rsp
	mov	rdi, qword ptr [r12]
	mov	rsp, rsp
	mov	rdx, qword ptr [r12 + 8]
	nop	
	mov	esi, 0xffffff9c
	lea	rdi, [rdi]
	call	atomic_link
	mov	ebp, eax
	test	ebp, ebp
	js	.label_33
	cmp	ebp, 0x14
	lea	rsi, [rsi]
	je	.label_33
	cmp	ebp, 0x11
	jne	.label_40
.label_33:
	mov	byte ptr [rsp + 0x13], bl
	test	r15, r15
	nop	
	mov	rbx, r15
	jne	.label_42
	mov	rbx, qword ptr [r12 + r13*8 - 8]
.label_42:
	mov	al,  byte ptr [byte ptr [rip + dereference_dest_dir_symlinks]]
	nop	
	and	al, 1
	mov	eax, 0x230000
	lea	rsi, [rsi]
	mov	edx, 0x210000
	cmovne	edx, eax
	mov	edi, 0xffffff9c
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rsi, rbx
	call	openat_safer
	mov	rsp, rsp
	test	eax, eax
	nop	
	js	.label_16
	mov	dword ptr [rsp + 0x14], eax
	cmp	r15, 1
	nop	
	sbb	r13d, 0
	mov	r15, rbx
	jmp	.label_18
.label_16:
	mov	qword ptr [rsp + 8], rbx
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x14], eax
	test	byte ptr [rsp + 0x13], 1
	jne	.label_23
.label_18:
	xor	eax, eax
	mov	rsp, rsp
	test	r14b, r14b
	lea	rsi, [rsi]
	je	.label_27
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x20]
	call	xget_version
.label_27:
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + backup_type]],  eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x18]
	call	set_simple_backup_suffix
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_36
	nop	
	cmp	r13d, 1
	mov	rsp, rsp
	jle	.label_37
	nop	
	movzx	eax,  byte ptr [byte ptr [rip + remove_existing_files]]
	and	eax, 1
	cmp	eax, 1
	mov	rbp, rbp
	mov	r14d, dword ptr [rsp + 0x14]
	nop	
	jne	.label_12
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + backup_type]],  3
	je	.label_12
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + symbolic_link]]
	lea	rsi, [rsi]
	xor	al, 1
	test	al, 1
	je	.label_12
	mov	edi, 0x3d
	nop	
	xor	esi, esi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:triple_hash
	nop	
	mov	ecx, OFFSET FLAT:triple_compare
	lea	rsi, [rsi]
	mov	r8d, OFFSET FLAT:triple_free
	mov	rsp, rsp
	call	hash_initialize
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + dest_set]],  rax
	test	rax, rax
	jne	.label_12
	call	xalloc_die
.label_36:
	mov	rdi, qword ptr [r12]
	mov	rbp, rbp
	mov	rdx, qword ptr [r12 + 8]
	mov	rsp, rsp
	mov	esi, 0xffffff9c
	nop	
	mov	rcx, rdx
	mov	r8d, ebp
	call	do_link
	mov	bl, al
	nop	
	jmp	.label_26
.label_37:
	nop	
	mov	bl, 1
	test	r13d, r13d
	mov	rbp, rbp
	mov	r14d, dword ptr [rsp + 0x14]
	jle	.label_26
.label_12:
	mov	rbp, rbp
	mov	bl, 1
	nop	word ptr [rax + rax]
.label_41:
	mov	rbp, rbp
	mov	rdi, qword ptr [r12]
	call	last_component
	mov	rdi, r15
	mov	rsi, rax
	lea	rdi, [rdi]
	lea	rdx, [rsp + 0x28]
	lea	rdi, [rdi]
	call	file_name_concat
	lea	rsi, [rsi]
	mov	rbp, rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x28]
	call	strip_trailing_slashes
	mov	rsp, rsp
	mov	rdi, qword ptr [r12]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	mov	r8d, 0xffffffff
	lea	rdi, [rdi]
	mov	esi, r14d
	mov	rcx, rbp
	call	do_link
	and	bl, al
	lea	rdi, [rdi]
	mov	rdi, rbp
	call	free
	lea	rdi, [rdi]
	add	r12, 8
	nop	
	dec	r13d
	jne	.label_41
.label_26:
	not	bl
	and	bl, 1
	movzx	eax, bl
	add	rsp, 0xb8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_38:
	mov	rsp, rsp
	cmp	eax, 0xffffff7d
	nop	
	je	.label_11
	lea	rdi, [rdi]
	cmp	eax, 0xffffff7e
	nop	
	jne	.label_13
	xor	edi, edi
	call	usage
.label_11:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.19
	mov	r9d, OFFSET FLAT:.str.20
	xor	eax, eax
	lea	rdi, [rdi]
	call	version_etc
	xor	edi, edi
	lea	rsi, [rsi]
	call	exit
.label_13:
	lea	rdi, [rdi]
	mov	edi, 1
	call	usage
.label_39:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	nop	
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rcx, rax
	nop	
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	nop	
	call	error
	nop	
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_17:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	jmp	.label_34
.label_20:
	lea	rdi, [rdi]
	xor	edi, edi
	cmp	r13d, 1
	nop	
	jg	.label_29
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.24
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsp, rsp
	mov	rsi, qword ptr [r12]
	nop	
	jmp	.label_43
.label_15:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15
	jmp	.label_34
.label_22:
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	edi, 4
	call	quotearg_style
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, ebx
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	error
.label_25:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.17_0
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	error
.label_45:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.22
.label_34:
	nop	
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_29:
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.25
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r12 + 0x10]
.label_43:
	lea	rsi, [rsi]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rbx
	mov	rsp, rsp
	call	error
	lea	rsi, [rsi]
	mov	edi, 1
	call	usage
.label_23:
	call	__errno_location
	nop	
	mov	r14d, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.27
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, r14d
	mov	rsp, rsp
	mov	rdx, rbx
	mov	rbp, rbp
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b80

	.globl atomic_link
	.type atomic_link, @function
atomic_link:
	nop	
	push	rax
	mov	r9, rdx
	lea	rdi, [rdi]
	mov	ecx, esi
	mov	rbp, rbp
	mov	rdx, rdi
	nop	
	movzx	esi,  byte ptr [byte ptr [rip + symbolic_link]]
	mov	rbp, rbp
	and	esi, 1
	nop	
	cmp	esi, 1
	lea	rdi, [rdi]
	jne	.label_46
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + relative]]
	mov	rbp, rbp
	and	al, 1
	nop	
	je	.label_47
	nop	
	mov	eax, 0xffffffff
	pop	rcx
	lea	rdi, [rdi]
	ret	
.label_46:
	nop	
	movzx	r8d,  byte ptr [byte ptr [rip + logical]]
	and	r8d, 1
	lea	rsi, [rsi]
	shl	r8d, 0xa
	mov	edi, 0xffffff9c
	mov	rbp, rbp
	mov	rsi, rdx
	mov	edx, ecx
	nop	
	mov	rcx, r9
	call	linkat
	mov	rsp, rsp
	jmp	.label_48
.label_47:
	mov	rdi, rdx
	mov	rsp, rsp
	mov	esi, ecx
	mov	rdx, r9
	call	symlinkat
.label_48:
	lea	rdi, [rdi]
	mov	edi, eax
	pop	rax
	mov	rsp, rsp
	jmp	errnoize
	.section	.text
	.align	32
	#Procedure 0x402c10

	.globl do_link
	.type do_link, @function
do_link:
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	nop	
	push	r13
	nop	
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x158
	mov	rbp, rbp
	mov	r14d, r8d
	mov	r13, rcx
	lea	rdi, [rdi]
	mov	rbp, rdx
	mov	dword ptr [rsp + 0x30], esi
	mov	r12, rdi
	mov	al,  byte ptr [byte ptr [rip + logical]]
	mov	rsp, rsp
	and	al, 1
	nop	
	sete	bl
	lea	rsi, [rsi]
	test	r14d, r14d
	jns	.label_53
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	esi, dword ptr [rsp + 0x30]
	nop	
	mov	rdx, rbp
	call	atomic_link
	mov	rsp, rsp
	mov	r14d, eax
.label_53:
	nop	
	mov	qword ptr [rsp + 0x28], rbp
	test	r14d, r14d
	mov	rbp, rbp
	jne	.label_70
	mov	rax,  qword ptr [word ptr [rip + dest_set]]
	mov	r15d, 1
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_74
.label_70:
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + symbolic_link]]
	lea	rsi, [rsi]
	and	al, 1
	nop	
	je	.label_77
	mov	r15d, 1
	mov	al, 1
	nop	
	jmp	.label_80
.label_77:
	movzx	ecx, bl
	lea	rdi, [rdi]
	shl	ecx, 8
	lea	rdx, [rsp + 0xc8]
	nop	
	mov	edi, 0xffffff9c
	mov	rsi, r12
	mov	rbp, rbp
	call	fstatat
	xor	r15d, r15d
	test	eax, eax
	je	.label_74
	call	__errno_location
	mov	rbp, rbp
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	nop	
	mov	rbx, rax
	mov	edi, 4
	nop	
	mov	rsi, r12
	call	quotearg_style
	mov	rbp, rbp
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, r14d
	mov	rbp, rbp
	jmp	.label_55
.label_74:
	mov	al,  byte ptr [byte ptr [rip + symbolic_link]]
.label_80:
	test	r14d, r14d
	mov	rsp, rsp
	je	.label_62
	test	al, 1
	jne	.label_64
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + hard_dir_link]]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_64
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	cmp	eax, 0x4000
	lea	rdi, [rdi]
	jne	.label_64
	xor	ebp, ebp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.62
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	lea	rsi, [rsi]
	mov	rdx, r12
	jmp	.label_75
.label_64:
	movzx	eax,  byte ptr [byte ptr [rip + relative]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_78
	mov	rdi, r12
	mov	rsi, r13
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], r13
	call	convert_abs_rel
	mov	qword ptr [rsp + 0x20], rax
	mov	rsp, rsp
	mov	r12, rax
	mov	rbp, rbp
	jmp	.label_83
.label_62:
	lea	rsi, [rsi]
	xor	ebp, ebp
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	mov	ebx, 0
	je	.label_86
	lea	rsi, [rsi]
	jmp	.label_87
.label_78:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	mov	qword ptr [rsp + 0x18], r13
.label_83:
	mov	al,  byte ptr [byte ptr [rip + remove_existing_files]]
	and	al, 1
	mov	rbp, rbp
	mov	r13b, 1
	jne	.label_50
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + interactive]]
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_50
	xor	ebp, ebp
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [rip + backup_type]],  0
	mov	rbp, rbp
	setne	r13b
	lea	rdi, [rdi]
	je	.label_57
.label_50:
	lea	rdi, [rdi]
	lea	rdx, [rsp + 0x38]
	lea	rsi, [rsi]
	mov	ecx, 0x100
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x28]
	nop	
	call	fstatat
	test	eax, eax
	je	.label_54
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	ebp, ebp
	cmp	ebx, 2
	mov	r13d, 0
	je	.label_57
	xor	ebp, ebp
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.16
.label_56:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rsp, rsp
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x18]
	call	quotearg_style
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebx
	lea	rsi, [rsi]
	mov	rdx, r14
	call	error
	jmp	.label_60
.label_54:
	mov	eax, 0xf000
	mov	rbp, rbp
	and	eax, dword ptr [rsp + 0x50]
	cmp	eax, 0x4000
	mov	rbp, rbp
	jne	.label_84
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.63
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsp, rsp
	mov	rbx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x18]
.label_75:
	mov	rsp, rsp
	call	quotearg_n_style_colon
	mov	rbp, rbp
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_55:
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	error
	mov	rbp, rbp
	jmp	.label_60
.label_84:
	mov	rdi,  qword ptr [word ptr [rip + dest_set]]
	mov	rbp, rbp
	lea	rdx, [rsp + 0x38]
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x18]
	mov	rsi, rbx
	mov	rbp, rbp
	call	seen_file
	test	al, al
	je	.label_67
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.64
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	nop	
	mov	r14, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	lea	rdi, [rdi]
	mov	rdx, r12
.label_82:
	mov	rsp, rsp
	call	quotearg_n_style
	mov	rbx, rax
	mov	rsp, rsp
	xor	edi, edi
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, r15
	mov	rbp, rbp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	error
	jmp	.label_60
.label_67:
	nop	
	cmp	dword ptr [dword ptr [rip + backup_type]],  0
	lea	rdi, [rdi]
	je	.label_85
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + symbolic_link]]
	lea	rsi, [rsi]
	and	al, 1
	je	.label_89
	jmp	.label_59
.label_85:
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + remove_existing_files]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_59
.label_89:
	mov	rsp, rsp
	test	r15d, r15d
	je	.label_58
	mov	rsp, rsp
	lea	rsi, [rsp + 0xc8]
	mov	rdi, r12
	call	stat
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_59
.label_58:
	mov	rax, qword ptr [rsp + 0xd0]
	nop	
	cmp	rax, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	jne	.label_59
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xc8]
	cmp	rax, qword ptr [rsp + 0x38]
	jne	.label_59
	nop	
	cmp	qword ptr [rsp + 0xd8], 1
	mov	rbp, rbp
	je	.label_69
	lea	rsi, [rsi]
	mov	edi, 0xffffff9c
	nop	
	mov	rsi, r12
	mov	rbp, rbp
	mov	edx, dword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	call	same_nameat
	nop	
	test	al, al
	je	.label_59
.label_69:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	r14, rax
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 4
	mov	rdx, r12
	call	quotearg_n_style
	lea	rdi, [rdi]
	mov	r15, rax
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, 4
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	jmp	.label_82
.label_59:
	xor	ebp, ebp
	mov	rsp, rsp
	test	r14d, r14d
	mov	rsp, rsp
	js	.label_63
	mov	rsp, rsp
	cmp	r14d, 0x11
	lea	rdi, [rdi]
	jne	.label_57
.label_63:
	movzx	eax,  byte ptr [byte ptr [rip + interactive]]
	nop	
	and	eax, 1
	cmp	eax, 1
	jne	.label_88
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.66
	mov	rbp, rbp
	mov	edx, 5
	nop	
	call	dcgettext
	nop	
	mov	r15, rax
	mov	rbx,  qword ptr [word ptr [rip + program_name]]
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x18]
	call	quotearg_style
	mov	rbp, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	mov	rdx, r15
	mov	rcx, rbx
	mov	rbp, rbp
	mov	r8, rbp
	lea	rsi, [rsi]
	call	__fprintf_chk
	mov	bpl, 1
	mov	rsp, rsp
	call	yesno
	mov	rsp, rsp
	test	al, al
	nop	
	je	.label_60
.label_88:
	mov	edx,  dword ptr [dword ptr [rip + backup_type]]
	xor	ebp, ebp
	nop	
	test	edx, edx
	lea	rsi, [rsi]
	je	.label_57
	mov	rbp, rbp
	mov	ebp, dword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	edi, ebp
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rbp, rbp
	call	find_backup_file_name
	mov	edi, ebp
	mov	rsi, rbx
	mov	rbp, rbp
	mov	edx, ebp
	mov	rsp, rsp
	mov	rbp, rax
	mov	rsp, rsp
	mov	rcx, rbp
	mov	rsp, rsp
	call	renameat
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_57
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	free
	xor	ebp, ebp
	cmp	ebx, 2
	mov	rsp, rsp
	mov	r13d, 0
	jne	.label_90
.label_57:
	movzx	eax,  byte ptr [byte ptr [rip + symbolic_link]]
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	jne	.label_51
	nop	
	movzx	ecx, r13b
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	esi, dword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x28]
	nop	
	mov	rdx, rbx
	lea	rdi, [rdi]
	mov	r8d, r14d
	nop	
	call	force_symlinkat
	lea	rdi, [rdi]
	jmp	.label_65
.label_51:
	movzx	r8d,  byte ptr [byte ptr [rip + logical]]
	and	r8d, 1
	nop	
	shl	r8d, 0xa
	mov	dword ptr [rsp], r14d
	movzx	r9d, r13b
	mov	edi, 0xffffff9c
	mov	rsi, r12
	mov	edx, dword ptr [rsp + 0x30]
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rcx, rbx
	lea	rdi, [rdi]
	call	force_linkat
.label_65:
	lea	rsi, [rsi]
	mov	r13d, eax
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + symbolic_link]]
	test	r13d, r13d
	mov	rsp, rsp
	jle	.label_73
	mov	rsp, rsp
	test	al, 1
	je	.label_76
	mov	qword ptr [rsp + 0x10], rbp
	mov	rsp, rsp
	cmp	r13d, 0x24
	nop	
	je	.label_79
	lea	rdi, [rdi]
	cmp	byte ptr [r12], 0
	je	.label_79
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.70
	jmp	.label_72
.label_73:
	mov	qword ptr [rsp + 0x28], rbx
	test	al, 1
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	jne	.label_87
.label_86:
	mov	rdi,  qword ptr [word ptr [rip + dest_set]]
	nop	
	lea	rdx, [rsp + 0xc8]
	mov	rsi, r13
	mov	rsp, rsp
	call	record_file
.label_87:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	movzx	eax,  byte ptr [byte ptr [rip + verbose]]
	mov	rbp, rbp
	and	eax, 1
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_49
	mov	qword ptr [rsp + 0x20], rbx
	nop	
	mov	qword ptr [rsp + 0x18], r12
	mov	rbp, rbp
	mov	r12, r13
	lea	rsi, [rsi]
	mov	r14d, OFFSET FLAT:.str_0
	test	rbp, rbp
	mov	r15, rbp
	mov	r13d, OFFSET FLAT:.str_0
	je	.label_61
	mov	r14, r12
	mov	rbp, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	sub	rbp, r14
	lea	rsi, [rsi]
	xor	r13d, r13d
	test	rbp, rbp
	mov	rbp, rbp
	mov	rbx, r15
	jle	.label_68
	mov	rbp, rbp
	mov	rdi, r15
	call	strlen
	lea	rsi, [rsi]
	lea	rdi, [rbp + rax + 1]
	call	xmalloc
	mov	rbp, rbp
	mov	rbx, rax
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rsi, r14
	nop	
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	memcpy
	lea	rsi, [rsi]
	add	rbp, rbx
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rsi, r15
	call	strcpy
	mov	r13, rbx
.label_68:
	nop	
	mov	r12, r14
	nop	
	mov	edi, 2
	mov	rsp, rsp
	mov	esi, 4
	mov	rsp, rsp
	mov	rdx, rbx
	call	quotearg_n_style
	mov	r14, rax
	mov	rbp, rbp
	mov	rdi, r13
	call	free
	mov	r13d, OFFSET FLAT:.str.68
.label_61:
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 4
	mov	rdx, r12
	call	quotearg_n_style
	mov	rbp, rax
	mov	al,  byte ptr [byte ptr [rip + symbolic_link]]
	mov	rsp, rsp
	and	al, 1
	mov	rbp, rbp
	mov	eax, 0x2d
	mov	ebx, 0x3d
	mov	rsp, rsp
	cmovne	ebx, eax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, 4
	nop	
	mov	rdx, qword ptr [rsp + 0x18]
	call	quotearg_n_style
	mov	qword ptr [rsp], rax
	mov	edi, 1
	nop	
	mov	esi, OFFSET FLAT:.str.69
	mov	rbp, rbp
	xor	eax, eax
	mov	r8, rbp
	mov	rdx, r14
	mov	rbp, rbp
	mov	rcx, r13
	mov	r9d, ebx
	call	__printf_chk
	mov	rbx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	rbp, r15
	jmp	.label_49
.label_76:
	cmp	r13d, 0x1f
	jne	.label_71
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rbp
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.72
	nop	
	jmp	.label_72
.label_79:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.71
	jmp	.label_72
.label_71:
	mov	qword ptr [rsp + 0x10], rbp
	mov	eax, r13d
	or	eax, 2
	cmp	eax, 0x1e
	je	.label_81
	cmp	r13d, 0x7a
	mov	rsp, rsp
	je	.label_81
	cmp	r13d, 0x11
	je	.label_81
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.74
	nop	
	jmp	.label_72
.label_81:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.73
.label_72:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 4
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	call	quotearg_n_style
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, 4
	nop	
	mov	rdx, r12
	mov	rbp, rbp
	call	quotearg_n_style
	mov	rbp, rax
	mov	rsp, rsp
	xor	edi, edi
	nop	
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, r14
	mov	rcx, rbx
	mov	r8, rbp
	call	error
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x10]
	test	rbp, rbp
	nop	
	je	.label_52
	mov	edi, dword ptr [rsp + 0x30]
	mov	rsi, rbp
	mov	edx, edi
	mov	rcx, qword ptr [rsp + 0x28]
	call	renameat
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x20]
	nop	
	je	.label_66
	lea	rdi, [rdi]
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rsp, rsp
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.75
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	r15, rbp
	mov	rbp, rax
	mov	rsp, rsp
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x18]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	esi, r14d
	mov	rdx, rbp
	mov	rbp, r15
	call	error
	lea	rdi, [rdi]
	jmp	.label_49
.label_52:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rax
	xor	ebp, ebp
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_49
.label_66:
	mov	rbp, rbp
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
.label_49:
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	free
	mov	rdi, rbx
	mov	rbp, rbp
	call	free
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x30]
.label_60:
	mov	al, bpl
	add	rsp, 0x158
	nop	
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	nop	
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_90:
	lea	rdi, [rdi]
	xor	ebp, ebp
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.67
	mov	rbp, rbp
	jmp	.label_56
	nop	
	.section	.text
	.align	32
	#Procedure 0x403630

	.globl errnoize
	.type errnoize, @function
errnoize:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	test	edi, edi
	lea	rsi, [rsi]
	jns	.label_91
	mov	rbp, rbp
	push	rax
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	mov	eax, dword ptr [rax]
	add	rsp, 8
.label_91:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403660

	.globl convert_abs_rel
	.type convert_abs_rel, @function
convert_abs_rel:
	push	r15
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	mov	rsp, rsp
	mov	r14, rdi
	mov	rdi, rsi
	lea	rdi, [rdi]
	call	dir_name
	mov	rsp, rsp
	mov	r15, rax
	mov	esi, 2
	lea	rsi, [rsi]
	mov	rdi, r15
	lea	rsi, [rsi]
	call	canonicalize_filename_mode
	nop	
	mov	r13, rax
	mov	rsp, rsp
	mov	esi, 2
	mov	rdi, r14
	call	canonicalize_filename_mode
	mov	r12, rax
	mov	rsp, rsp
	xor	ebx, ebx
	lea	rsi, [rsi]
	test	r13, r13
	je	.label_92
	test	r12, r12
	nop	
	je	.label_92
	mov	edi, 0x1000
	mov	rsp, rsp
	call	xmalloc
	lea	rsi, [rsi]
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	ecx, 0x1000
	mov	rbp, rbp
	mov	rdi, r12
	nop	
	mov	rsi, r13
	mov	rdx, rbx
	mov	rbp, rbp
	call	relpath
	lea	rdi, [rdi]
	test	al, al
	lea	rdi, [rdi]
	jne	.label_92
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_92:
	mov	rdi, r15
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsp, rsp
	call	free
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_93
	mov	rbp, rbp
	mov	rax, rbx
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	ret	
.label_93:
	mov	rdi, r14
	nop	
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	jmp	xstrdup
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403770

	.globl force_linkat
	.type force_linkat, @function
force_linkat:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	nop	
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x128
	nop	
	mov	ebx, r9d
	mov	r12d, r8d
	mov	qword ptr [rsp], rcx
	mov	rbp, rbp
	mov	r13d, edx
	mov	r14, rsi
	mov	r15d, edi
	nop	
	mov	ebp, dword ptr [rsp + 0x160]
	test	ebp, ebp
	lea	rdi, [rdi]
	jns	.label_99
	mov	edi, r15d
	lea	rdi, [rdi]
	mov	rsi, r14
	nop	
	mov	edx, r13d
	mov	rcx, qword ptr [rsp]
	mov	r8d, r12d
	call	linkat
	lea	rsi, [rsi]
	xor	ebp, ebp
	mov	rsp, rsp
	test	eax, eax
	je	.label_94
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	mov	ebp, dword ptr [rax]
.label_99:
	cmp	ebp, 0x11
	nop	
	jne	.label_94
	lea	rdi, [rdi]
	xor	bl, 1
	jne	.label_94
	mov	rsp, rsp
	lea	rbp, [rsp + 0x20]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp]
	nop	
	mov	rsi, rbp
	nop	
	call	samedir_template
	mov	rbx, rax
	test	rbx, rbx
	nop	
	je	.label_95
	mov	dword ptr [rsp + 8], r15d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], r14
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x18], r13d
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x1c], r12d
	lea	rdx, [rsp + 8]
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:try_link
	nop	
	mov	r8d, 6
	nop	
	mov	rdi, rbx
	mov	rsp, rsp
	call	try_tempname_len
	mov	rbp, rbp
	mov	r15, rbp
	test	eax, eax
	je	.label_96
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	jmp	.label_98
.label_95:
	lea	rsi, [rsi]
	call	__errno_location
	mov	ebp, dword ptr [rax]
	lea	rsi, [rsi]
	jmp	.label_94
.label_96:
	mov	rsp, rsp
	mov	edi, r13d
	mov	rsi, rbx
	lea	rdi, [rdi]
	mov	edx, r13d
	mov	rcx, qword ptr [rsp]
	lea	rdi, [rdi]
	call	renameat
	mov	rsp, rsp
	mov	ebp, 0xffffffff
	test	eax, eax
	je	.label_97
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_97:
	xor	edx, edx
	mov	edi, r13d
	mov	rsi, rbx
	call	unlinkat
.label_98:
	cmp	rbx, r15
	je	.label_94
	mov	rdi, rbx
	call	free
.label_94:
	mov	eax, ebp
	lea	rdi, [rdi]
	add	rsp, 0x128
	lea	rdi, [rdi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403900

	.globl samedir_template
	.type samedir_template, @function
samedir_template:
	nop	
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	mov	r14, rsi
	nop	
	mov	r15, rdi
	call	last_component
	lea	rdi, [rdi]
	mov	rbx, rax
	sub	rbx, r15
	lea	rsi, [rsi]
	lea	rdi, [rbx + 9]
	cmp	rdi, 0x101
	jb	.label_100
	mov	rbp, rbp
	call	malloc
	lea	rsi, [rsi]
	mov	r14, rax
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_101
.label_100:
	mov	rbp, rbp
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r15
	nop	
	mov	rdx, rbx
	nop	
	call	__mempcpy_chk
	lea	rdi, [rdi]
	movabs	rcx, 0x5858585858587543
	mov	qword ptr [rax], rcx
	mov	byte ptr [rax + 8], 0
	mov	rax, r14
.label_101:
	lea	rdi, [rdi]
	pop	rbx
	mov	rbp, rbp
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403990

	.globl try_link
	.type try_link, @function
try_link:
	mov	rax, rdi
	mov	edi, dword ptr [rsi]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsi + 8]
	mov	edx, dword ptr [rsi + 0x10]
	mov	rsp, rsp
	mov	r8d, dword ptr [rsi + 0x14]
	mov	rsp, rsp
	mov	rsi, rcx
	mov	rcx, rax
	jmp	linkat
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4039c0

	.globl force_symlinkat
	.type force_symlinkat, @function
force_symlinkat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x118
	mov	rsp, rsp
	mov	ebp, r8d
	mov	ebx, ecx
	mov	r13, rdx
	lea	rdi, [rdi]
	mov	r15d, esi
	mov	rsp, rsp
	mov	r14, rdi
	mov	rbp, rbp
	test	ebp, ebp
	lea	rdi, [rdi]
	jns	.label_102
	mov	rdi, r14
	mov	rsp, rsp
	mov	esi, r15d
	mov	rdx, r13
	mov	rbp, rbp
	call	symlinkat
	lea	rdi, [rdi]
	xor	ebp, ebp
	mov	rsp, rsp
	test	eax, eax
	nop	
	je	.label_104
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	mov	ebp, dword ptr [rax]
.label_102:
	mov	rbp, rbp
	cmp	ebp, 0x11
	lea	rsi, [rsi]
	jne	.label_104
	xor	bl, 1
	jne	.label_104
	lea	rbx, [rsp + 0x10]
	mov	rdi, r13
	mov	rsi, rbx
	call	samedir_template
	mov	r12, rax
	test	r12, r12
	je	.label_105
	mov	rbp, rbp
	mov	qword ptr [rsp], r14
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 8], r15d
	lea	rdx, [rsp]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:try_symlink
	mov	r8d, 6
	mov	rdi, r12
	mov	rbp, rbp
	call	try_tempname_len
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_103
	call	__errno_location
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	jmp	.label_106
.label_105:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_104
.label_103:
	mov	edi, r15d
	mov	rsi, r12
	mov	rsp, rsp
	mov	edx, r15d
	mov	rcx, r13
	mov	rbp, rbp
	call	renameat
	mov	ebp, 0xffffffff
	test	eax, eax
	mov	rbp, rbp
	je	.label_106
	lea	rdi, [rdi]
	call	__errno_location
	mov	ebp, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rbp, rbp
	mov	edi, r15d
	mov	rbp, rbp
	mov	rsi, r12
	mov	rsp, rsp
	call	unlinkat
.label_106:
	cmp	r12, rbx
	je	.label_104
	nop	
	mov	rdi, r12
	lea	rdi, [rdi]
	call	free
.label_104:
	lea	rsi, [rsi]
	mov	eax, ebp
	add	rsp, 0x118
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403b20

	.globl try_symlink
	.type try_symlink, @function
try_symlink:
	mov	rax, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsi]
	mov	rsp, rsp
	mov	esi, dword ptr [rsi + 8]
	mov	rdx, rax
	jmp	symlinkat
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b40

	.globl relpath
	.type relpath, @function
relpath:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x10
	nop	
	mov	rbx, rsi
	mov	r14, rdi
	mov	qword ptr [rsp + 8], rdx
	mov	rbp, rbp
	mov	qword ptr [rsp], rcx
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r14
	nop	
	call	path_common_prefix
	test	eax, eax
	je	.label_119
	cdqe	
	add	r14, rax
	movzx	ecx, byte ptr [rbx + rax]
	cmp	ecx, 0x2f
	jne	.label_107
	lea	rbx, [rbx + rax + 1]
	jmp	.label_110
.label_119:
	nop	
	xor	eax, eax
	jmp	.label_111
.label_107:
	mov	rbp, rbp
	add	rbx, rax
.label_110:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2f
	nop	
	jne	.label_114
	lea	rdi, [rdi]
	inc	r14
.label_114:
	mov	rbp, rbp
	cmp	byte ptr [rbx], 0
	lea	rsi, [rsi]
	je	.label_117
	nop	
	lea	r15, [rsp + 8]
	lea	r12, [rsp]
	mov	edi, OFFSET FLAT:.str_2
	mov	rsi, r15
	mov	rdx, r12
	call	buffer_or_output
	mov	rbp, rbp
	mov	bpl, al
	jmp	.label_113
	nop	dword ptr [rax + rax]
.label_115:
	inc	rbx
.label_113:
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2f
	je	.label_116
	test	al, al
	mov	rbp, rbp
	jne	.label_115
	mov	rsp, rsp
	jmp	.label_108
	nop	word ptr [rax + rax]
.label_116:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.1_0
	mov	rsp, rsp
	mov	rsi, r15
	lea	rdi, [rdi]
	mov	rdx, r12
	lea	rsi, [rsi]
	call	buffer_or_output
	nop	
	and	bpl, 1
	or	bpl, al
	lea	rsi, [rsi]
	jmp	.label_115
.label_108:
	lea	rsi, [rsi]
	cmp	byte ptr [r14], 0
	nop	
	je	.label_112
	mov	rbp, rbp
	lea	rbx, [rsp + 8]
	mov	rbp, rbp
	lea	r15, [rsp]
	mov	edi, OFFSET FLAT:.str_1
	mov	rsi, rbx
	mov	rdx, r15
	lea	rsi, [rsi]
	call	buffer_or_output
	and	bpl, 1
	nop	
	or	bpl, al
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, r15
	call	buffer_or_output
	mov	rsp, rsp
	or	bpl, al
	mov	rsp, rsp
	jmp	.label_112
.label_117:
	mov	rsp, rsp
	cmp	byte ptr [r14], 0
	lea	rsi, [rsi]
	jne	.label_109
	mov	rsp, rsp
	mov	r14d, OFFSET FLAT:.str.2_0
.label_109:
	lea	rsi, [rsp + 8]
	lea	rdx, [rsp]
	mov	rdi, r14
	mov	rsp, rsp
	call	buffer_or_output
	mov	rsp, rsp
	mov	bpl, al
.label_112:
	and	bpl, 1
	je	.label_118
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 5
	nop	
	call	dcgettext
	nop	
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x24
	mov	edx, OFFSET FLAT:.str_3
	lea	rdi, [rdi]
	xor	eax, eax
	call	error
.label_118:
	mov	rbp, rbp
	test	bpl, bpl
	mov	rbp, rbp
	sete	al
.label_111:
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x403d10

	.globl path_common_prefix
	.type path_common_prefix, @function
path_common_prefix:
	movzx	eax, byte ptr [rdi + 1]
	mov	rsp, rsp
	cmp	eax, 0x2f
	mov	rbp, rbp
	sete	cl
	movzx	eax, byte ptr [rsi + 1]
	lea	rsi, [rsi]
	cmp	eax, 0x2f
	lea	rsi, [rsi]
	sete	dl
	mov	rsp, rsp
	xor	eax, eax
	xor	dl, cl
	jne	.label_121
	mov	dl, byte ptr [rdi]
	xor	r8d, r8d
	mov	rsp, rsp
	xor	eax, eax
	test	dl, dl
	je	.label_127
	nop	dword ptr [rax + rax]
.label_123:
	mov	cl, byte ptr [rsi + r8]
	lea	rsi, [rsi]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_120
	movzx	ecx, cl
	movzx	edx, dl
	lea	rdi, [rdi]
	cmp	edx, ecx
	mov	rsp, rsp
	jne	.label_120
	nop	
	lea	rcx, [r8 + 1]
	lea	rdi, [rdi]
	cmp	edx, 0x2f
	cmove	eax, ecx
	mov	rbp, rbp
	mov	dl, byte ptr [rdi + r8 + 1]
	test	dl, dl
	mov	r8, rcx
	jne	.label_123
	add	rsi, rcx
	add	rdi, rcx
	mov	r8d, ecx
	jmp	.label_127
.label_120:
	mov	rsp, rsp
	add	rsi, r8
	cmp	byte ptr [rdi + r8], 0
	nop	
	lea	rdi, [rdi + r8]
	lea	rsi, [rsi]
	jne	.label_126
.label_127:
	cmp	byte ptr [rsi], 0
	je	.label_122
	mov	rbp, rbp
	cmp	byte ptr [rdi], 0
	nop	
	je	.label_124
.label_126:
	mov	dl, byte ptr [rsi]
.label_125:
	mov	rbp, rbp
	test	dl, dl
	jne	.label_121
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rdi]
	cmp	ecx, 0x2f
	nop	
	jne	.label_121
	jmp	.label_122
.label_124:
	movzx	edx, byte ptr [rsi]
	mov	rsp, rsp
	cmp	edx, 0x2f
	jne	.label_125
.label_122:
	lea	rdi, [rdi]
	mov	eax, r8d
.label_121:
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403df0

	.globl buffer_or_output
	.type buffer_or_output, @function
buffer_or_output:
	nop	
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	rbp, rbp
	mov	r13, qword ptr [r15]
	test	r13, r13
	lea	rdi, [rdi]
	je	.label_128
	lea	rsi, [rsi]
	mov	rdi, r12
	call	strlen
	mov	rsp, rsp
	mov	rbx, rax
	mov	al, 1
	lea	rsi, [rsi]
	cmp	rbx, qword ptr [r14]
	mov	rbp, rbp
	jae	.label_130
	mov	rsp, rsp
	mov	rdx, rbx
	lea	rdi, [rdi]
	inc	rdx
	mov	rdi, r13
	mov	rbp, rbp
	mov	rsi, r12
	call	memcpy
	add	qword ptr [r15], rbx
	nop	
	sub	qword ptr [r14], rbx
	mov	rsp, rsp
	jmp	.label_129
.label_128:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsp, rsp
	call	fputs_unlocked
.label_129:
	mov	rbp, rbp
	xor	eax, eax
.label_130:
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	ret	
	nop	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x403e90

	.globl set_simple_backup_suffix
	.type set_simple_backup_suffix, @function
set_simple_backup_suffix:
	push	rbx
	mov	rbx, rdi
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_131
	mov	edi, OFFSET FLAT:.str_4
	call	getenv
	nop	
	mov	rbx, rax
	mov	eax, OFFSET FLAT:.str.1_1
	mov	rsp, rsp
	test	rbx, rbx
	nop	
	je	.label_132
.label_131:
	mov	eax, OFFSET FLAT:.str.1_1
	cmp	byte ptr [rbx], 0
	je	.label_132
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	call	last_component
	nop	
	cmp	rbx, rax
	mov	eax, OFFSET FLAT:.str.1_1
	nop	
	cmove	rax, rbx
.label_132:
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + simple_backup_suffix]],  rax
	lea	rsi, [rsi]
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403ef0

	.globl backupfile_internal
	.type backupfile_internal, @function
backupfile_internal:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	lea	rsi, [rsi]
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x58
	mov	dword ptr [rsp + 0x34], ecx
	mov	ebx, edx
	mov	r13, rsi
	mov	dword ptr [rsp + 0x1c], edi
	mov	rdi, r13
	mov	rsp, rsp
	call	last_component
	mov	rbp, rax
	sub	rbp, r13
	mov	rdi, rax
	call	strlen
	mov	r12, rax
	mov	rbp, rbp
	add	r12, rbp
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [rip + simple_backup_suffix]],  0
	nop	
	jne	.label_141
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	call	set_simple_backup_suffix
.label_141:
	mov	rdi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	call	strlen
	lea	rsi, [rsi]
	inc	rax
	mov	qword ptr [rsp + 0x20], rax
	lea	rdi, [rdi]
	cmp	rax, 9
	lea	rdi, [rdi]
	mov	ecx, 9
	lea	rdi, [rdi]
	cmovae	rcx, rax
	lea	rdi, [r12 + rcx + 1]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rdi
	nop	
	call	malloc
	mov	rbp, rbp
	mov	rcx, rax
	mov	qword ptr [rsp + 0x50], rcx
	xor	eax, eax
	test	rcx, rcx
	je	.label_139
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x48], 0
	mov	dword ptr [rsp + 0x44], 0xffffffff
	nop	
	mov	qword ptr [rsp + 0x38], 0
	lea	rax, [r12 + 1]
	mov	qword ptr [rsp + 0x28], rax
	nop	word ptr cs:[rax + rax]
.label_138:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x50]
	nop	
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x28]
	call	memcpy
	nop	
	cmp	ebx, 1
	nop	
	jne	.label_144
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsp, rsp
	add	rdi, r12
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	call	memcpy
	mov	ebx, 1
	jmp	.label_136
	nop	dword ptr [rax]
.label_144:
	lea	rdi, [rdi]
	lea	rax, [rsp + 0x44]
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0x1c]
	nop	
	lea	rsi, [rsp + 0x50]
	nop	
	mov	rdx, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	rcx, r12
	nop	
	mov	r8, rbp
	lea	rdi, [rdi]
	lea	r9, [rsp + 0x48]
	mov	rbp, rbp
	call	numbered_backup
	mov	rbp, rbp
	cmp	eax, 1
	lea	rsi, [rsi]
	je	.label_135
	lea	rsi, [rsi]
	cmp	eax, 2
	je	.label_143
	cmp	eax, 3
	mov	rbp, rbp
	jne	.label_136
	lea	rsi, [rsi]
	jmp	.label_133
.label_143:
	cmp	ebx, 2
	jne	.label_135
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	add	rdi, r12
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdx, qword ptr [rsp + 0x20]
	nop	
	call	memcpy
	mov	rbp, rbp
	mov	ebx, 1
.label_135:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rsp + 0x44]
	lea	rsi, [rsi]
	mov	rsi, r12
	lea	rdi, [rdi]
	lea	rcx, [rsp + 0x38]
	call	check_extension
.label_136:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x34]
	lea	rdi, [rdi]
	test	al, al
	nop	
	je	.label_140
	cmp	dword ptr [rsp + 0x44], 0
	lea	rdi, [rdi]
	jns	.label_142
	nop	
	mov	dword ptr [rsp + 0x44], 0xffffff9c
	xor	ebp, ebp
.label_142:
	cmp	ebx, 1
	setne	al
	movzx	r8d, al
	mov	edx, dword ptr [rsp + 0x44]
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rbp, rbp
	add	rcx, rbp
	lea	rdi, [rdi]
	mov	edi, 0xffffff9c
	nop	
	mov	rsi, r13
	call	renameatu
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_140
	call	__errno_location
	mov	r15, rax
	lea	rsi, [rsi]
	mov	r14d, dword ptr [r15]
	lea	rdi, [rdi]
	cmp	r14d, 0x11
	lea	rsi, [rsi]
	je	.label_138
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x48]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_137
	mov	rbp, rbp
	call	closedir
.label_137:
	nop	
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsp, rsp
	call	free
	lea	rsi, [rsi]
	mov	dword ptr [r15], r14d
	xor	eax, eax
	nop	
	jmp	.label_139
.label_140:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x48]
	test	rdi, rdi
	je	.label_134
	call	closedir
.label_134:
	nop	
	mov	rax, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	jmp	.label_139
.label_133:
	mov	rdi, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	call	__errno_location
	mov	dword ptr [rax], 0xc
	nop	
	xor	eax, eax
.label_139:
	add	rsp, 0x58
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4041f0

	.globl numbered_backup
	.type numbered_backup, @function
numbered_backup:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	nop	
	push	r13
	nop	
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x58
	lea	rdi, [rdi]
	mov	r15, r9
	mov	qword ptr [rsp + 0x48], r8
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x18], rdx
	mov	qword ptr [rsp + 0x28], rsi
	mov	ebx, edi
	nop	
	mov	r12, qword ptr [r15]
	mov	r14, qword ptr [rsi]
	lea	rbp, [r14 + r8]
	mov	rsp, rsp
	mov	rdi, rbp
	call	base_len
	mov	r13, rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], r13
	lea	rdi, [rdi]
	test	r12, r12
	je	.label_153
	mov	rdi, r12
	call	rewinddir
	nop	
	jmp	.label_158
.label_153:
	mov	qword ptr [rsp + 0x38], r13
	mov	rcx, qword ptr [rsp + 0x90]
	mov	rsp, rsp
	mov	r13w, word ptr [rbp]
	mov	word ptr [rbp], 0x2e
	xor	edx, edx
	lea	rdi, [rdi]
	mov	edi, ebx
	mov	rsi, r14
	lea	rdi, [rdi]
	call	opendirat
	mov	r12, rax
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_145
	lea	rdi, [rdi]
	mov	word ptr [rbp], r13w
	mov	r13, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	mov	byte ptr [rbp + r13 + 4], 0
	mov	rsp, rsp
	mov	dword ptr [rbp + r13], 0x7e317e2e
	mov	rsp, rsp
	mov	qword ptr [r15], r12
.label_158:
	nop	
	mov	rdi, r12
	call	readdir
	nop	
	mov	rbp, rax
	test	rbp, rbp
	je	.label_156
	lea	rax, [r13 + 4]
	mov	qword ptr [rsp + 0x50], rax
	mov	rbp, rbp
	lea	rax, [r13 + 2]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rsp + 0x20]
	lea	rax, [rax + 4]
	mov	qword ptr [rsp], rax
	nop	
	lea	rax, [r13 + 0x17]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rax
	mov	eax, 2
	mov	qword ptr [rsp + 0x30], rax
	nop	
	mov	eax, 1
	mov	qword ptr [rsp + 8], rax
	jmp	.label_147
.label_164:
	lea	rdi, [rdi]
	mov	r13d, 1
.label_161:
	movzx	eax, al
	cmp	eax, 0x7e
	mov	rbp, rbp
	jne	.label_151
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbp, [rbp + rax + 0x15]
	cmp	byte ptr [r13 + rbp + 1], 0
	jne	.label_151
	cmp	qword ptr [rsp + 8], r13
	jb	.label_157
	jne	.label_151
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	lea	rdi, [r14 + rax + 2]
	mov	rsi, rbp
	lea	rdi, [rdi]
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	jle	.label_157
.label_151:
	mov	rsp, rsp
	mov	r15, r14
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x38]
	nop	
	jmp	.label_155
.label_157:
	lea	rsi, [rsi]
	movzx	ebx, bl
	lea	rcx, [rbx + r13]
	mov	qword ptr [rsp + 8], rcx
	mov	rax, qword ptr [rsp]
	lea	rdx, [rax + rcx]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, rdx
	jae	.label_146
	lea	rdi, [rdi]
	mov	rax, rdx
	lea	rdi, [rdi]
	shr	rax, 0x3e
	mov	rsp, rsp
	sete	cl
	lea	rdi, [rdi]
	shl	rdx, cl
	nop	
	mov	qword ptr [rsp + 0x18], rdx
	mov	rdi, r14
	mov	rsi, rdx
	nop	
	call	realloc
	lea	rdi, [rdi]
	mov	r15, rax
	mov	rsp, rsp
	test	r15, r15
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	jne	.label_162
	lea	rdi, [rdi]
	jmp	.label_163
.label_146:
	mov	r15, r14
.label_162:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [r15 + rcx]
	mov	rbp, rbp
	mov	byte ptr [r15 + rcx], 0x2e
	mov	rdx, rbx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rdx
	lea	rdi, [rdi]
	lea	rbx, [rax + rdx]
	lea	rsi, [rsi]
	mov	word ptr [r15 + rcx + 1], 0x307e
	mov	rbp, rbp
	lea	rdi, [rdx + rax + 2]
	nop	
	lea	rdx, [r13 + 2]
	mov	rsi, rbp
	lea	rsi, [rsi]
	call	memcpy
	mov	rbp, rbp
	lea	rax, [r13 + rbx + 1]
	nop	
	movzx	ecx, byte ptr [r13 + rbx + 1]
	lea	rdi, [rdi]
	jmp	.label_149
	nop	dword ptr [rax]
.label_160:
	mov	rsp, rsp
	mov	byte ptr [rax], 0x30
	movzx	ecx, byte ptr [rax - 1]
	nop	
	dec	rax
.label_149:
	mov	rbp, rbp
	cmp	ecx, 0x39
	lea	rdi, [rdi]
	je	.label_160
	inc	cl
	mov	byte ptr [rax], cl
	mov	r13, qword ptr [rsp + 0x38]
	jmp	.label_155
	nop	word ptr [rax + rax]
.label_147:
	nop	
	lea	rbx, [rbp + 0x13]
	mov	rsp, rsp
	mov	rdi, rbx
	nop	
	call	strlen
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rsp + 0x50]
	jb	.label_150
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	lea	rdi, [r14 + rax]
	lea	rsi, [rsi]
	mov	rsi, rbx
	nop	
	mov	rdx, qword ptr [rsp + 0x40]
	call	memcmp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_150
	mov	rbp, rbp
	mov	al, byte ptr [rbp + r13 + 0x15]
	mov	rbp, rbp
	mov	cl, al
	nop	
	add	cl, 0xcf
	lea	rdi, [rdi]
	movzx	ecx, cl
	nop	
	cmp	ecx, 8
	mov	rsp, rsp
	ja	.label_150
	lea	rcx, [rbp + r13 + 0x13]
	movzx	eax, al
	cmp	eax, 0x39
	nop	
	sete	bl
	movsx	eax, byte ptr [rcx + 3]
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rdi, [rdi]
	add	ecx, -0x30
	nop	
	cmp	ecx, 9
	ja	.label_164
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	lea	rcx, [rbp + rcx]
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_154:
	movzx	eax, al
	mov	rsp, rsp
	cmp	eax, 0x39
	lea	rdi, [rdi]
	sete	al
	and	bl, al
	mov	rbp, rbp
	movsx	eax, byte ptr [rcx + r13]
	nop	
	mov	edx, eax
	nop	
	add	edx, -0x30
	lea	rdi, [rdi]
	inc	r13
	lea	rsi, [rsi]
	cmp	edx, 0xa
	nop	
	jb	.label_154
	inc	r13
	mov	rsp, rsp
	jmp	.label_161
	nop	word ptr [rax + rax]
.label_150:
	lea	rdi, [rdi]
	mov	r15, r14
.label_155:
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rbp, rbp
	call	readdir
	lea	rsi, [rsi]
	mov	rbp, rax
	mov	rbp, rbp
	test	rbp, rbp
	mov	r14, r15
	jne	.label_147
	jmp	.label_152
.label_156:
	mov	eax, 2
	mov	qword ptr [rsp + 0x30], rax
	mov	r15, r14
.label_152:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rax], r15
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x30]
.label_148:
	mov	eax, ecx
	add	rsp, 0x58
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
.label_145:
	nop	
	call	__errno_location
	mov	ecx, 3
	cmp	dword ptr [rax], 0xc
	nop	
	je	.label_159
	mov	ecx, 2
.label_159:
	nop	
	mov	word ptr [rbp], r13w
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x38]
	mov	byte ptr [rbp + rax + 4], 0
	nop	
	mov	dword ptr [rbp + rax], 0x7e317e2e
	jmp	.label_148
.label_163:
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rax], r14
	lea	rsi, [rsi]
	mov	ecx, 3
	jmp	.label_148
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404630

	.globl check_extension
	.type check_extension, @function
check_extension:
	lea	rsi, [rsi]
	push	rbp
	nop	
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r12, rcx
	nop	
	mov	ebp, edx
	mov	r15, rsi
	mov	rbx, rdi
	call	last_component
	mov	r14, rax
	nop	
	mov	rdi, r14
	lea	rdi, [rdi]
	call	base_len
	mov	rbp, rbp
	mov	r13, rax
	mov	eax, 0xff
	cmp	r13, 0xf
	jb	.label_166
	mov	rsp, rsp
	cmp	qword ptr [r12], 0
	jne	.label_169
	test	ebp, ebp
	mov	rsp, rsp
	js	.label_167
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	nop	
	mov	dword ptr [rax], 0
	lea	rsi, [rsi]
	mov	esi, 3
	lea	rsi, [rsi]
	mov	edi, ebp
	call	fpathconf
	mov	rcx, qword ptr [rsp]
	nop	
	cmp	dword ptr [rcx], 1
	sbb	rax, 0
	mov	rsp, rsp
	jmp	.label_168
.label_167:
	mov	ax, word ptr [r14]
	mov	word ptr [rsp], ax
	mov	word ptr [r14], 0x2e
	mov	rsp, rsp
	call	__errno_location
	mov	rsp, rsp
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	mov	esi, 3
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	pathconf
	cmp	dword ptr [rbp], 1
	mov	rbp, rbp
	sbb	rax, 0
	lea	rdi, [rdi]
	mov	cx, word ptr [rsp]
	mov	rsp, rsp
	mov	word ptr [r14], cx
.label_168:
	cmp	rax, -1
	lea	rdi, [rdi]
	mov	ecx, 0xe
	mov	rbp, rbp
	mov	rdx, -1
	cmovl	rdx, rcx
	mov	rbp, rbp
	test	rax, rax
	cmovns	rdx, rax
	nop	
	mov	qword ptr [r12], rdx
.label_169:
	mov	rax, qword ptr [r12]
.label_166:
	lea	rdi, [rdi]
	cmp	rax, r13
	jae	.label_165
	mov	rbp, rbp
	add	rbx, r15
	lea	rsi, [rsi]
	sub	rbx, r14
	cmp	rax, rbx
	lea	rax, [rax - 1]
	lea	rdi, [rdi]
	cmova	rax, rbx
	mov	rsp, rsp
	mov	word ptr [r14 + rax], 0x7e
.label_165:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404790

	.globl find_backup_file_name
	.type find_backup_file_name, @function
find_backup_file_name:
	mov	rsp, rsp
	push	rax
	xor	ecx, ecx
	lea	rdi, [rdi]
	call	backupfile_internal
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_170
	pop	rcx
	nop	
	ret	
.label_170:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x4047b0

	.globl get_version
	.type get_version, @function
get_version:
	mov	rbp, rbp
	mov	eax, 2
	test	rsi, rsi
	mov	rbp, rbp
	je	.label_171
	cmp	byte ptr [rsi], 0
	je	.label_171
	push	rax
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	mov	rsp, rsp
	call	__xargmatch_internal
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + backup_types]]
	add	rsp, 8
.label_171:
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404800

	.globl xget_version
	.type xget_version, @function
xget_version:
	test	rsi, rsi
	lea	rdi, [rdi]
	je	.label_172
	lea	rsi, [rsi]
	cmp	byte ptr [rsi], 0
	je	.label_172
	lea	rdi, [rdi]
	jmp	get_version
.label_172:
	mov	rbp, rbp
	push	rax
	mov	edi, OFFSET FLAT:.str.1_2
	nop	
	call	getenv
	mov	edi, OFFSET FLAT:.str_5
	mov	rsi, rax
	pop	rax
	jmp	get_version
	nop	
	.section	.text
	.align	32
	#Procedure 0x404830

	.globl canonicalize_filename_mode
	.type canonicalize_filename_mode, @function
canonicalize_filename_mode:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	nop	
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xe8
	lea	rsi, [rsi]
	mov	ebx, esi
	mov	r15, rdi
	nop	
	mov	qword ptr [rsp + 0xe0], 0
	nop	
	mov	r13d, ebx
	mov	rbp, rbp
	and	r13d, 3
	lea	rdi, [rdi]
	lea	eax, [rbx + 3]
	test	eax, r13d
	jne	.label_197
	test	r15, r15
	je	.label_197
	movzx	eax, byte ptr [r15]
	lea	rdi, [rdi]
	cmp	eax, 0x2f
	je	.label_199
	test	al, al
	jne	.label_203
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 2
	mov	rsp, rsp
	jmp	.label_207
.label_197:
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_207:
	xor	ebp, ebp
.label_183:
	lea	rdi, [rdi]
	mov	rax, rbp
	lea	rdi, [rdi]
	add	rsp, 0xe8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_199:
	mov	edi, 0x1000
	call	xmalloc
	mov	rdi, rax
	mov	byte ptr [rdi], 0x2f
	lea	rsi, [rsi]
	lea	rsi, [rdi + 0x1000]
	lea	r14, [rdi + 1]
	mov	rsp, rsp
	jmp	.label_189
.label_203:
	call	xgetcwd
	mov	rbp, rbp
	xor	ebp, ebp
	nop	
	test	rax, rax
	je	.label_183
	mov	rbp, rbp
	xor	esi, esi
	mov	rbp, rax
	mov	rdi, rbp
	call	__rawmemchr
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rsi, rax
	mov	rbp, rbp
	mov	r14, rsi
	sub	r14, rdi
	cmp	r14, 0xfff
	jg	.label_181
	mov	esi, 0x1000
	lea	rsi, [rsi]
	call	xrealloc
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	add	r14, rdi
	mov	rsi, rdi
	mov	rbp, rbp
	add	rsi, 0x1000
	jmp	.label_189
.label_181:
	mov	rsp, rsp
	mov	r14, rsi
.label_189:
	cmp	byte ptr [r15], 0
	je	.label_193
	nop	
	mov	eax, ebx
	lea	rdi, [rdi]
	and	eax, 4
	mov	dword ptr [rsp + 0x14], eax
	mov	rsp, rsp
	and	ebx, 7
	mov	qword ptr [rsp + 0x20], rbx
	lea	rsi, [rsi]
	cmp	r13d, 2
	setne	al
	movzx	eax, al
	lea	eax, [rax + rax*8 + 4]
	mov	dword ptr [rsp + 0x10], eax
	xor	eax, eax
	mov	qword ptr [rsp + 0x40], rax
	nop	
	mov	rbx, r15
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], r15
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x3c], eax
.label_180:
	mov	rbp, rbp
	lea	rax, [rdi + 1]
	lea	rdi, [rdi]
	mov	r12, r14
	mov	rbp, rbx
.label_214:
	mov	rbp, rbp
	mov	rbx, rbp
.label_202:
	nop	
	mov	rbp, rbx
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp]
	mov	rbp, rbp
	lea	rbx, [rbp + 1]
	nop	
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	mov	r15d, 0
	je	.label_202
	jmp	.label_211
	nop	word ptr cs:[rax + rax]
.label_179:
	mov	rsp, rsp
	inc	r15
.label_211:
	mov	rsp, rsp
	mov	cl, byte ptr [rbp + r15]
	test	cl, cl
	je	.label_175
	lea	rsi, [rsi]
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, 0x2f
	nop	
	jne	.label_179
.label_175:
	mov	rbp, rbp
	test	r15, r15
	nop	
	je	.label_182
	lea	rbx, [rbp + r15]
	mov	rbp, rbp
	cmp	r15, 2
	mov	rsp, rsp
	je	.label_186
	cmp	r15, 1
	jne	.label_190
	movzx	ecx, byte ptr [rbp]
	cmp	ecx, 0x2e
	lea	rsi, [rsi]
	je	.label_191
	mov	rsp, rsp
	jmp	.label_190
	nop	word ptr [rax + rax]
.label_186:
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp]
	mov	rsp, rsp
	cmp	ecx, 0x2e
	jne	.label_190
	movzx	ecx, byte ptr [rbp + 1]
	mov	rsp, rsp
	cmp	ecx, 0x2e
	jne	.label_190
	nop	
	cmp	r12, rax
	ja	.label_200
.label_191:
	mov	rbp, rbp
	cmp	byte ptr [rbx], 0
	mov	rbp, rbp
	jne	.label_202
	jmp	.label_194
.label_200:
	add	rbp, r15
	dec	r12
	mov	rcx, r12
	nop	
.label_173:
	mov	rbp, rbp
	mov	r12, rcx
	cmp	r12, rdi
	jbe	.label_209
	mov	rbp, rbp
	lea	rcx, [r12 - 1]
	movzx	edx, byte ptr [r12 - 1]
	lea	rsi, [rsi]
	cmp	edx, 0x2f
	jne	.label_173
.label_209:
	mov	rsp, rsp
	cmp	byte ptr [rbp], 0
	jne	.label_214
	jmp	.label_222
.label_190:
	mov	rbp, rbp
	movzx	eax, byte ptr [r12 - 1]
	mov	rbp, rbp
	cmp	eax, 0x2f
	mov	rbp, rbp
	je	.label_221
	lea	rdi, [rdi]
	mov	byte ptr [r12], 0x2f
	inc	r12
.label_221:
	mov	rbp, rbp
	lea	rax, [r12 + r15]
	mov	rbp, rbp
	cmp	rax, rsi
	lea	rsi, [rsi]
	jae	.label_226
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x48], rdi
	jmp	.label_174
.label_226:
	sub	r12, rdi
	sub	rsi, rdi
	lea	rdi, [rdi]
	lea	r14, [r15 + 1]
	cmp	r15, 0xfff
	mov	eax, 0x1000
	lea	rsi, [rsi]
	cmovle	r14, rax
	mov	rsp, rsp
	add	r14, rsi
	lea	rdi, [rdi]
	mov	rsi, r14
	call	xrealloc
	mov	qword ptr [rsp + 0x48], rax
	add	r14, rax
	lea	rdi, [rdi]
	add	r12, rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], r14
.label_174:
	lea	rdi, [rdi]
	lea	rax, [rbp + r15]
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rsi, rbp
	mov	rdx, r15
	call	memcpy
	lea	rsi, [rsi]
	lea	r14, [r12 + r15]
	mov	byte ptr [r12 + r15], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	cmp	eax, 6
	nop	
	je	.label_198
	cmp	dword ptr [rsp + 0x14], 0
	jne	.label_208
	mov	rdi, qword ptr [rsp + 0x48]
	lea	rsi, [rsp + 0x50]
	mov	rbp, rbp
	call	__lstat
	jmp	.label_212
.label_208:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x48]
	lea	rsi, [rsp + 0x50]
	mov	rbp, rbp
	call	stat
.label_212:
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_215
	call	__errno_location
	mov	eax, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	r13d, 1
	nop	
	je	.label_219
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x3c], eax
	lea	rsi, [rsi]
	test	r13d, r13d
	je	.label_224
.label_198:
	mov	dword ptr [rsp + 0x68], 0
.label_215:
	mov	eax, dword ptr [rsp + 0x68]
	mov	rbp, rbp
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0xa000
	mov	rsp, rsp
	jne	.label_227
	lea	rdi, [rsp + 0xe0]
	nop	
	mov	rsi, qword ptr [rsp + 0x18]
	nop	
	lea	rdx, [rsp + 0x50]
	call	seen_triple
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	je	.label_217
	cmp	r13d, 2
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x3c]
	nop	
	mov	ecx, 0x28
	lea	rdi, [rdi]
	cmovne	eax, ecx
	mov	dword ptr [rsp + 0x3c], eax
	mov	eax, dword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	jmp	.label_192
.label_217:
	mov	rsi, qword ptr [rsp + 0x80]
	mov	rdi, qword ptr [rsp + 0x48]
	call	areadlink_with_size
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	jne	.label_201
	cmp	r13d, 2
	mov	rbx, qword ptr [rsp + 0x30]
	jne	.label_205
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	nop	
	je	.label_205
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	jmp	.label_220
.label_219:
	mov	esi, 0x2f
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rdi, rbx
	mov	rbp, rbp
	mov	r12d, eax
	call	__strspn_c1
	lea	rsi, [rsi]
	add	rbp, rax
	lea	rsi, [rsi]
	cmp	byte ptr [r15 + rbp], 0
	setne	al
	cmp	r12d, 2
	mov	dword ptr [rsp + 0x3c], r12d
	lea	rsi, [rsi]
	movzx	eax, al
	lea	eax, [rax + rax*8 + 4]
	lea	rdi, [rdi]
	mov	ecx, 0xd
	lea	rsi, [rsi]
	cmovne	eax, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x28]
.label_192:
	cmp	eax, 4
	mov	rbp, rbp
	jne	.label_196
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x48]
.label_220:
	nop	
	cmp	byte ptr [rbx], 0
	jne	.label_180
	lea	rsi, [rsi]
	jmp	.label_185
.label_227:
	nop	
	cmp	eax, 0x4000
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x48]
	nop	
	jne	.label_188
	add	rbp, r15
	mov	rax, qword ptr [rsp + 8]
	mov	rbx, rbp
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x18]
	jmp	.label_177
.label_188:
	lea	rsi, [rsi]
	lea	rbx, [rbp + r15]
	nop	
	cmp	r13d, 2
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x18]
	je	.label_195
	lea	rdi, [rdi]
	mov	cl, byte ptr [rbp + r15]
	mov	eax, 0x14
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_204
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 8]
	jmp	.label_177
.label_201:
	mov	rdi, rax
	mov	qword ptr [rsp], rax
	nop	
	call	strlen
	mov	qword ptr [rsp + 0x18], rax
	add	r15, rbp
	nop	
	mov	rdi, r15
	call	strlen
	mov	rdx, rax
	nop	
	mov	rax, qword ptr [rsp + 0x18]
	lea	rcx, [rax + rdx + 1]
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_218
	mov	qword ptr [rsp + 0x30], rdx
	cmp	rcx, rax
	jbe	.label_225
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	mov	rsi, rcx
	nop	
	mov	qword ptr [rsp + 8], rcx
	call	xrealloc
	nop	
	jmp	.label_176
.label_195:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	nop	
	jmp	.label_177
.label_218:
	cmp	rcx, 0x1000
	mov	eax, 0x1000
	mov	rbp, rbp
	cmovbe	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rcx
	mov	rdi, rcx
	mov	qword ptr [rsp + 0x30], rdx
	call	xmalloc
	jmp	.label_176
.label_225:
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x40]
.label_176:
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	add	rdi, rax
	inc	rdx
	mov	rsi, r15
	call	memmove
	nop	
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	mov	r15, qword ptr [rsp]
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x18]
	call	memcpy
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x48]
	lea	rax, [rdx + 1]
	movzx	ecx, byte ptr [r15]
	mov	rbp, rbp
	cmp	ecx, 0x2f
	jne	.label_206
	mov	byte ptr [rdx], 0x2f
	mov	r14, rax
	jmp	.label_178
.label_206:
	cmp	r14, rax
	jbe	.label_178
	sub	rbx, rbp
	nop	
	lea	rax, [r12 + rbx - 1]
.label_216:
	mov	r14, rax
	lea	rsi, [rsi]
	cmp	r14, rdx
	mov	rsp, rsp
	jbe	.label_178
	mov	rbp, rbp
	lea	rax, [r14 - 1]
	movzx	ecx, byte ptr [r14 - 1]
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	jne	.label_216
.label_178:
	mov	rbx, rdx
	nop	
	mov	rdi, r15
	mov	rbp, rbp
	call	free
	mov	rdi, rbx
	mov	rbx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	rax, rbx
	mov	qword ptr [rsp + 0x40], rax
	mov	rdx, rbx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 8]
.label_177:
	mov	qword ptr [rsp + 0x18], rdx
	cmp	byte ptr [rbx], 0
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	jne	.label_180
	mov	rsp, rsp
	jmp	.label_185
.label_193:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], rax
	mov	rbp, rbp
	jmp	.label_185
.label_182:
	nop	
	mov	r14, r12
	jmp	.label_185
.label_194:
	mov	r14, r12
.label_185:
	lea	rax, [rdi + 1]
	mov	rbp, rbp
	cmp	r14, rax
	lea	rsi, [rsi]
	jbe	.label_184
	mov	rbp, rbp
	movzx	eax, byte ptr [r14 - 1]
	mov	rsp, rsp
	cmp	eax, 0x2f
	lea	rsi, [rsi]
	jne	.label_184
	lea	rdi, [rdi]
	dec	r14
.label_184:
	mov	byte ptr [r14], 0
	lea	rsi, [rsi]
	lea	rax, [r14 + 1]
	cmp	rsi, rax
	je	.label_213
	mov	rsp, rsp
	mov	esi, 1
	mov	rsp, rsp
	sub	rsi, rdi
	lea	rdi, [rdi]
	add	rsi, r14
	lea	rdi, [rdi]
	call	xrealloc
	mov	rbp, rax
	jmp	.label_210
.label_213:
	mov	rbp, rdi
.label_210:
	nop	
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	call	free
	mov	rdi, qword ptr [rsp + 0xe0]
	test	rdi, rdi
	je	.label_183
	mov	rbp, rbp
	call	hash_free
	jmp	.label_183
.label_205:
	lea	rsi, [rsi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	r14d, dword ptr [rax]
	nop	
	mov	rdi, qword ptr [rsp + 0x48]
	jmp	.label_223
.label_196:
	cmp	eax, 0xd
	mov	rdi, qword ptr [rsp + 0x48]
	nop	
	mov	r14d, dword ptr [rsp + 0x3c]
	lea	rdi, [rdi]
	je	.label_223
	jmp	.label_183
.label_224:
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x3c]
	mov	rdi, qword ptr [rsp + 0x48]
.label_204:
	mov	rbp, rbp
	mov	r14d, eax
.label_223:
	mov	rsp, rsp
	mov	rbx, rdi
	nop	
	mov	rdi, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	call	free
	nop	
	mov	rdi, rbx
	nop	
	call	free
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_187
	call	hash_free
.label_187:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], r14d
	lea	rsi, [rsi]
	jmp	.label_207
.label_222:
	mov	rbp, rbp
	mov	r14, r12
	jmp	.label_185
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405070

	.globl seen_triple
	.type seen_triple, @function
seen_triple:
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	rbx
	mov	rsp, rsp
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	cmp	qword ptr [rbx], 0
	mov	rbp, rbp
	jne	.label_228
	mov	edi, 7
	mov	rbp, rbp
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:triple_hash
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:triple_compare_ino_str
	mov	rsp, rsp
	mov	r8d, OFFSET FLAT:triple_free
	mov	rsp, rsp
	call	hash_initialize
	nop	
	mov	qword ptr [rbx], rax
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_229
.label_228:
	mov	rdi, qword ptr [rbx]
	nop	
	mov	rsi, r15
	nop	
	mov	rdx, r14
	call	seen_file
	lea	rdi, [rdi]
	mov	cl, al
	lea	rdi, [rdi]
	mov	al, 1
	test	cl, cl
	mov	rsp, rsp
	jne	.label_230
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	mov	rbp, rbp
	mov	rsi, r15
	lea	rdi, [rdi]
	mov	rdx, r14
	call	record_file
	mov	rsp, rsp
	xor	eax, eax
.label_230:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_229:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405110
	.globl close_stdin_set_file_name
	.type close_stdin_set_file_name, @function
close_stdin_set_file_name:

	nop
	mov	qword ptr [word ptr [rip + file_name]],  rdi
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405120

	.globl close_stdin
	.type close_stdin, @function
close_stdin:
	push	rbp
	mov	rsp, rsp
	push	r14
	nop	
	push	rbx
	nop	
	mov	rbx,  qword ptr [word ptr [rip + stdin]]
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	freadahead
	xor	ebp, ebp
	test	rax, rax
	mov	rbp, rbp
	je	.label_234
	xor	esi, esi
	mov	rbp, rbp
	mov	edx, 1
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fseeko
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	jne	.label_234
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	setne	bpl
.label_234:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	close_stream
	test	bpl, bpl
	nop	
	jne	.label_231
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_231
	pop	rbx
	pop	r14
	pop	rbp
	mov	rsp, rsp
	jmp	close_stdout
.label_231:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_6
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	lea	rsi, [rsi]
	jne	.label_233
	xor	edi, edi
	nop	
	mov	edx, OFFSET FLAT:.str_3
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebp
	mov	rcx, r14
	call	error
	jmp	.label_232
.label_233:
	nop	
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.1_3
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, ebp
	lea	rsi, [rsi]
	mov	r8, r14
	call	error
.label_232:
	call	close_stdout
	nop	
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x405230
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + file_name_0]],  rdi
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405240
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405250

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	call	close_stream
	test	eax, eax
	je	.label_236
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_235
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	jne	.label_235
.label_236:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_238
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	rbp
	ret	
.label_235:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_7
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name_0]]
	lea	rdi, [rdi]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_237
	xor	edi, edi
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str_3
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, ebp
	nop	
	mov	rcx, r14
	lea	rdi, [rdi]
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_238:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_237:
	mov	rbp, rbp
	mov	rdi, rbx
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_3
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rsi, [rsi]
	mov	r8, r14
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405350

	.globl dir_name
	.type dir_name, @function
dir_name:
	lea	rsi, [rsi]
	push	rax
	mov	rbp, rbp
	call	mdir_name
	mov	rbp, rbp
	test	rax, rax
	je	.label_239
	pop	rcx
	ret	
.label_239:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x405370

	.globl dir_len
	.type dir_len, @function
dir_len:
	push	r14
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rsi, [rsi]
	mov	rbx, rdi
	movzx	eax, byte ptr [rbx]
	nop	
	cmp	eax, 0x2f
	sete	al
	movzx	r14d, al
	call	last_component
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	sub	rcx, rbx
	nop	dword ptr [rax]
.label_241:
	lea	rdi, [rdi]
	mov	rax, rcx
	lea	rsi, [rsi]
	cmp	r14, rax
	mov	rsp, rsp
	jae	.label_240
	lea	rcx, [rax - 1]
	nop	
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	lea	rdi, [rdi]
	je	.label_241
.label_240:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053e0

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	r15
	mov	rbp, rbp
	push	r14
	push	rbx
	mov	r15, rdi
	call	dir_len
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	mov	rbp, rbp
	sete	al
	nop	
	movzx	eax, al
	nop	
	lea	rdi, [rbx + rax + 1]
	call	malloc
	mov	rsp, rsp
	mov	r14, rax
	mov	rsp, rsp
	xor	eax, eax
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_243
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_242
	mov	rsp, rsp
	mov	byte ptr [r14 + rbx], 0x2e
	nop	
	mov	ebx, 1
.label_242:
	nop	
	mov	byte ptr [r14 + rbx], 0
	mov	rsp, rsp
	mov	rax, r14
.label_243:
	pop	rbx
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405470

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_244:
	nop	
	movzx	eax, byte ptr [rdi + 1]
	lea	rdi, [rdi]
	inc	rdi
	cmp	eax, 0x2f
	mov	rbp, rbp
	je	.label_244
	xor	ecx, ecx
	mov	rax, rdi
	jmp	.label_246
	nop	word ptr [rax + rax]
.label_248:
	inc	rax
	mov	rbp, rbp
	mov	cl, dl
.label_246:
	lea	rsi, [rsi]
	movzx	esi, byte ptr [rax]
	mov	dl, 1
	cmp	esi, 0x2f
	mov	rsp, rsp
	je	.label_248
	test	sil, sil
	mov	rsp, rsp
	je	.label_247
	mov	rbp, rbp
	mov	dl, cl
	and	dl, 1
	mov	rsp, rsp
	je	.label_245
	xor	ecx, ecx
.label_245:
	test	dl, dl
	lea	rsi, [rsi]
	cmovne	rdi, rax
	mov	dl, cl
	jmp	.label_248
.label_247:
	nop	
	mov	rax, rdi
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054f0

	.globl base_len
	.type base_len, @function
base_len:
	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	call	strlen
	nop	
	mov	rcx, rax
.label_250:
	mov	rbp, rbp
	mov	rax, rcx
	lea	rsi, [rsi]
	cmp	rax, 2
	mov	rsp, rsp
	jb	.label_249
	lea	rdi, [rdi]
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_250
.label_249:
	lea	rsi, [rsi]
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405530

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
	#Procedure 0x405560

	.globl record_file
	.type record_file, @function
record_file:
	nop	
	push	r15
	nop	
	push	r14
	push	r12
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rsp, rsp
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	test	r14, r14
	nop	
	je	.label_252
	mov	edi, 0x18
	call	xmalloc
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi, r12
	call	xstrdup
	lea	rsi, [rsi]
	mov	qword ptr [rbx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [rbx + 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15]
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, r14
	mov	rsi, rbx
	call	hash_insert
	test	rax, rax
	mov	rsp, rsp
	je	.label_253
	cmp	rax, rbx
	je	.label_252
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rdi, [rdi]
	jmp	triple_free
.label_252:
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r14
	nop	
	pop	r15
	mov	rsp, rsp
	ret	
.label_253:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405610

	.globl seen_file
	.type seen_file, @function
seen_file:
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_254
	lea	rsi, [rsi]
	sub	rsp, 0x18
	mov	qword ptr [rsp], rsi
	nop	
	mov	rax, qword ptr [rdx + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rdx]
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	lea	rsi, [rsp]
	call	hash_lookup
	test	rax, rax
	setne	al
	add	rsp, 0x18
	nop	
	ret	
.label_254:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405660

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rax
	call	mfile_name_concat
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	je	.label_255
	lea	rsi, [rsi]
	pop	rcx
	ret	
.label_255:
	mov	rsp, rsp
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x405680

	.globl mfile_name_concat
	.type mfile_name_concat, @function
mfile_name_concat:
	lea	rdi, [rdi]
	push	rbp
	nop	
	push	r15
	nop	
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	sub	rsp, 0x18
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdx
	mov	r14, rsi
	mov	r13, rdi
	call	last_component
	mov	rsp, rsp
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi, rbx
	call	base_len
	nop	
	mov	rbp, rax
	mov	rbp, rbp
	sub	rbx, r13
	add	rbx, rbp
	lea	rsi, [rsi]
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	test	rbp, rbp
	je	.label_261
	movzx	ecx, byte ptr [rbx + r13 - 1]
	lea	rdi, [rdi]
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	jne	.label_263
	mov	qword ptr [rsp + 8], r14
	lea	rdi, [rdi]
	xor	r12d, r12d
	lea	rsi, [rsi]
	jmp	.label_257
.label_261:
	movzx	ecx, byte ptr [r14]
	mov	r12b, 0x2e
	lea	rsi, [rsi]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	je	.label_262
	jmp	.label_258
.label_263:
	nop	
	movzx	ecx, byte ptr [r14]
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	jne	.label_259
.label_258:
	xor	r12d, r12d
	jmp	.label_262
.label_259:
	mov	r12b, 0x2f
.label_262:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r14
.label_257:
	test	r12b, r12b
	nop	
	setne	cl
	movzx	ebp, cl
	nop	
	lea	rcx, [r15 + rbx]
	lea	rdi, [rbp + rcx + 1]
	lea	rdi, [rdi]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_256
	mov	rcx, -1
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	lea	rsi, [rsi]
	add	rbp, rax
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_260
	mov	rsp, rsp
	mov	qword ptr [rax], rbp
.label_260:
	nop	
	mov	rcx, -1
	mov	rdi, rbp
	nop	
	mov	rsi, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rdx, r15
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	nop	
	mov	rax, r14
.label_256:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	nop	
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4057d0

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057e0

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	mov	rax, qword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057f0

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405800

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	mov	rcx, qword ptr [rdi]
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdi + 8]
	nop	
	jae	.label_264
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_267:
	cmp	qword ptr [rcx], 0
	nop	
	mov	esi, 0
	mov	rdi, rcx
	mov	rbp, rbp
	je	.label_265
	nop	word ptr cs:[rax + rax]
.label_266:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	inc	rsi
	test	rdi, rdi
	jne	.label_266
	nop	
	cmp	rsi, rax
	mov	rsp, rsp
	cmova	rax, rsi
.label_265:
	mov	rbp, rbp
	add	rcx, 0x10
	nop	
	cmp	rcx, rdx
	jb	.label_267
.label_264:
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405870
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rbp, rbp
	mov	rsi, qword ptr [rdi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	rsi, qword ptr [rdi + 8]
	mov	rsp, rsp
	mov	edx, 0
	jae	.label_268
	mov	r8, qword ptr [rdi + 8]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_270:
	lea	rdi, [rdi]
	cmp	qword ptr [rsi], 0
	mov	rbp, rbp
	mov	rax, rsi
	je	.label_269
	nop	
.label_272:
	lea	rdi, [rdi]
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_272
	inc	rdx
.label_269:
	mov	rsp, rsp
	add	rsi, 0x10
	cmp	rsi, r8
	jb	.label_270
.label_268:
	mov	rbp, rbp
	cmp	rdx, qword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	jne	.label_273
	lea	rsi, [rsi]
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	mov	rsp, rsp
	je	.label_271
.label_273:
	mov	rbp, rbp
	xor	eax, eax
.label_271:
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4058f0
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	nop	
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	r13, rsi
	mov	rbx, rdi
	mov	rsp, rsp
	call	hash_get_n_entries
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	hash_get_n_buckets
	lea	rdi, [rdi]
	mov	r12, rax
	mov	rsp, rsp
	mov	rdi, rbx
	call	hash_get_n_buckets_used
	mov	rbp, rbp
	mov	r15, rax
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	hash_get_max_bucket_length
	mov	rsp, rsp
	mov	r14, rax
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_8
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rcx, rbp
	mov	rsp, rsp
	call	__fprintf_chk
	mov	rbp, rbp
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.1_4
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r15
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_274]]
	punpckldq	xmm1, xmm2
	mov	rsp, rsp
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_275]]
	mov	rbp, rbp
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	lea	rsi, [rsi]
	addpd	xmm0, xmm1
	nop	
	mulsd	xmm0,  qword ptr [word ptr [rip + label_276]]
	movq	xmm1, r12
	mov	rbp, rbp
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.2_1
	mov	rsp, rsp
	mov	al, 1
	mov	rdi, r13
	mov	rcx, r15
	mov	rbp, rbp
	call	__fprintf_chk
	mov	rbp, rbp
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_0
	nop	
	xor	eax, eax
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rcx, r14
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	jmp	__fprintf_chk
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405a40

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
	call	safe_hasher
	mov	rbx, rax
	xor	r15d, r15d
	lea	rsi, [rsi]
	cmp	qword ptr [rbx], 0
	je	.label_277
	test	rbx, rbx
	nop	
	je	.label_277
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_278:
	mov	rsi, qword ptr [rbx]
	mov	rsp, rsp
	cmp	rsi, r12
	je	.label_279
	lea	rsi, [rsi]
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_279
	mov	rbx, qword ptr [rbx + 8]
	nop	
	test	rbx, rbx
	jne	.label_278
	jmp	.label_277
.label_279:
	mov	r15, qword ptr [rbx]
.label_277:
	nop	
	mov	rax, r15
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r12
	nop	
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ad0

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbx
	mov	rbx, rdi
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdi, rsi
	lea	rdi, [rdi]
	mov	rsi, rax
	call	qword ptr [rbx + 0x30]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_280
	lea	rdi, [rdi]
	shl	rax, 4
	add	rax, qword ptr [rbx]
	lea	rsi, [rsi]
	pop	rbx
	nop	
	ret	
.label_280:
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b10
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	mov	rbp, rbp
	je	.label_281
	nop	
	mov	rcx, qword ptr [rdi]
	lea	rdi, [rdi]
	jmp	.label_283
	nop	word ptr cs:[rax + rax]
.label_284:
	mov	rbp, rbp
	add	rcx, 0x10
.label_283:
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_282
	mov	rax, qword ptr [rcx]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_284
.label_281:
	ret	
.label_282:
	mov	rsp, rsp
	push	rax
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b60
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
	call	safe_hasher
	mov	rbp, rbp
	mov	rcx, rax
	nop	dword ptr [rax + rax]
.label_286:
	cmp	qword ptr [rcx], rbx
	jne	.label_285
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx + 8]
	nop	
	test	rdx, rdx
	lea	rdi, [rdi]
	jne	.label_288
.label_285:
	nop	
	mov	rcx, qword ptr [rcx + 8]
	nop	
	test	rcx, rcx
	jne	.label_286
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r14 + 8]
	add	rax, 0x10
	nop	dword ptr [rax + rax]
.label_289:
	cmp	rax, rdx
	lea	rdi, [rdi]
	mov	ecx, 0
	jae	.label_287
	mov	rbp, rbp
	mov	rcx, qword ptr [rax]
	add	rax, 0x10
	test	rcx, rcx
	je	.label_289
	jmp	.label_287
.label_288:
	mov	rbp, rbp
	mov	rcx, qword ptr [rdx]
.label_287:
	mov	rax, rcx
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405bf0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	nop
	mov	r8, qword ptr [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_290
	nop	dword ptr [rax + rax]
.label_292:
	mov	rbp, rbp
	add	r8, 0x10
.label_290:
	cmp	r8, qword ptr [rdi + 8]
	nop	
	jae	.label_293
	lea	rdi, [rdi]
	cmp	qword ptr [r8], 0
	lea	rsi, [rsi]
	je	.label_292
	test	r8, r8
	mov	r9, r8
	mov	rbp, rbp
	je	.label_292
	nop	word ptr cs:[rax + rax]
.label_291:
	mov	rbp, rbp
	cmp	rax, rdx
	mov	rsp, rsp
	jae	.label_293
	mov	rcx, qword ptr [r9]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + rax*8], rcx
	nop	
	inc	rax
	lea	rdi, [rdi]
	mov	r9, qword ptr [r9 + 8]
	mov	rsp, rsp
	test	r9, r9
	jne	.label_291
	nop	
	jmp	.label_292
.label_293:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405c60
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
	xor	ebx, ebx
	jmp	.label_294
	nop	word ptr cs:[rax + rax]
.label_295:
	mov	rsp, rsp
	add	r13, 0x10
.label_294:
	lea	rsi, [rsi]
	cmp	r13, qword ptr [r12 + 8]
	nop	
	jae	.label_296
	lea	rsi, [rsi]
	cmp	qword ptr [r13], 0
	je	.label_295
	mov	rbp, rbp
	test	r13, r13
	mov	rbp, r13
	je	.label_295
	nop	word ptr [rax + rax]
.label_297:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	lea	rsi, [rsi]
	call	r15
	mov	rbp, rbp
	test	al, al
	je	.label_296
	mov	rsp, rsp
	inc	rbx
	mov	rsp, rsp
	mov	rbp, qword ptr [rbp + 8]
	mov	rbp, rbp
	test	rbp, rbp
	lea	rsi, [rsi]
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
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d10
	.globl hash_string
	.type hash_string, @function
hash_string:

	nop
	mov	al, byte ptr [rdi]
	nop	
	xor	edx, edx
	test	al, al
	je	.label_299
	inc	rdi
	nop	
	xor	edx, edx
.label_298:
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
	jne	.label_298
.label_299:
	mov	rax, rdx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d50
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	nop
	mov	eax,  dword ptr [dword ptr [rip + label_300]]
	mov	dword ptr [rdi + 0x10], eax
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d70

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
	mov	rbx, r8
	lea	rsi, [rsi]
	mov	r12, rsi
	mov	r15, rdi
	lea	rdi, [rdi]
	test	rdx, rdx
	mov	ebp, OFFSET FLAT:raw_hasher
	lea	rdi, [rdi]
	cmovne	rbp, rdx
	test	rcx, rcx
	mov	rsp, rsp
	mov	r14d, OFFSET FLAT:raw_comparator
	lea	rdi, [rdi]
	cmovne	r14, rcx
	mov	edi, 0x50
	mov	rsp, rsp
	call	malloc
	mov	rsp, rsp
	mov	r13, rax
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	test	r13, r13
	je	.label_301
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rbx
	test	r12, r12
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:default_tuning
	cmovne	rbx, r12
	mov	qword ptr [r13 + 0x28], rbx
	mov	rdi, r13
	call	check_tuning
	mov	rsp, rsp
	test	al, al
	je	.label_302
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rsi, rbx
	call	compute_bucket_size
	mov	rbp, rbp
	mov	qword ptr [r13 + 0x10], rax
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_302
	mov	esi, 0x10
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_302
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rsp, rsp
	shl	rcx, 4
	lea	rdi, [rdi]
	add	rax, rcx
	mov	qword ptr [r13 + 8], rax
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [r13 + 0x18], xmm0
	mov	rsp, rsp
	mov	qword ptr [r13 + 0x30], rbp
	mov	qword ptr [r13 + 0x38], r14
	mov	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 0x40], rax
	mov	qword ptr [r13 + 0x48], 0
	nop	
	mov	rax, r13
	jmp	.label_301
.label_302:
	mov	rbp, rbp
	mov	rdi, r13
	call	free
	xor	eax, eax
.label_301:
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405eb0

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	push	rbx
	mov	rbp, rbp
	mov	rbx, rsi
	mov	rsp, rsp
	mov	esi, 3
	mov	rsp, rsp
	call	rotr_sz
	lea	rdi, [rdi]
	xor	edx, edx
	div	rbx
	mov	rax, rdx
	mov	rbp, rbp
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ee0

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
	.align	32
	#Procedure 0x405ef0

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	mov	rcx, qword ptr [rdi + 0x28]
	nop	
	mov	edx, OFFSET FLAT:default_tuning
	mov	al, 1
	cmp	rcx, rdx
	mov	rsp, rsp
	je	.label_303
	lea	rsi, [rsi]
	movss	xmm0, dword ptr [rcx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_306]]
	nop	
	jbe	.label_304
	movss	xmm1,  dword ptr [dword ptr [rip + label_307]]
	ucomiss	xmm1, xmm0
	jbe	.label_304
	movss	xmm1, dword ptr [rcx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_305]]
	jbe	.label_304
	movss	xmm1, dword ptr [rcx]
	lea	rdi, [rdi]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_304
	mov	rsp, rsp
	addss	xmm1,  dword ptr [dword ptr [rip + label_306]]
	ucomiss	xmm0, xmm1
	jbe	.label_304
	mov	rsp, rsp
	movss	xmm0, dword ptr [rcx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_308]]
	ucomiss	xmm2, xmm0
	nop	
	jb	.label_304
	ucomiss	xmm0, xmm1
	ja	.label_303
.label_304:
	mov	qword ptr [word ptr [rdi + 40]], OFFSET FLAT:default_tuning
	xor	eax, eax
.label_303:
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405f80

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	cmp	byte ptr [rsi + 0x10], 0
	jne	.label_309
	mov	eax, edi
	nop	
	and	eax, 1
	lea	rsi, [rsi]
	test	rdi, rdi
	js	.label_311
	mov	rsp, rsp
	cvtsi2ss	xmm0, rdi
	mov	rbp, rbp
	jmp	.label_310
.label_311:
	lea	rsi, [rsi]
	shr	rdi, 1
	or	rax, rdi
	mov	rsp, rsp
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_310:
	divss	xmm0, dword ptr [rsi + 8]
	nop	
	movss	xmm1,  dword ptr [dword ptr [rip + label_312]]
	nop	
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	mov	rsp, rsp
	cvttss2si	rax, xmm2
	mov	rsp, rsp
	movabs	rcx, 0x8000000000000000
	mov	rsp, rsp
	xor	rcx, rax
	mov	rsp, rsp
	cvttss2si	rdi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rdi, rcx
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_313]]
	jae	.label_314
.label_309:
	push	rax
	mov	rbp, rbp
	call	next_prime
	mov	rcx, rax
	xor	eax, eax
	mov	rdx, rcx
	shr	rdx, 0x3c
	cmove	rax, rcx
	lea	rsi, [rsi]
	add	rsp, 8
.label_314:
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406030
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
	jmp	.label_317
	nop	dword ptr [rax]
.label_315:
	add	r14, 0x10
.label_317:
	mov	rsp, rsp
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_318
	cmp	qword ptr [r14], 0
	lea	rdi, [rdi]
	je	.label_315
	nop	
	mov	rbx, qword ptr [r14 + 8]
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x40]
	lea	rsi, [rsi]
	test	rax, rax
	setne	cl
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_320
	nop	dword ptr [rax + rax]
.label_321:
	test	cl, 1
	nop	
	je	.label_316
	mov	rdi, qword ptr [rbx]
	mov	rsp, rsp
	call	rax
.label_316:
	lea	rdi, [rdi]
	mov	qword ptr [rbx], 0
	nop	
	mov	rdx, qword ptr [rbx + 8]
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rax
	nop	
	mov	qword ptr [r15 + 0x48], rbx
	mov	rax, qword ptr [r15 + 0x40]
	lea	rsi, [rsi]
	test	rax, rax
	setne	cl
	test	rdx, rdx
	lea	rdi, [rdi]
	mov	rbx, rdx
	mov	rbp, rbp
	jne	.label_321
.label_320:
	lea	rdi, [rdi]
	test	cl, cl
	je	.label_319
	mov	rdi, qword ptr [r14]
	call	rax
.label_319:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	jmp	.label_315
.label_318:
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406100

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
	mov	r15, rdi
	mov	rsp, rsp
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_322
	lea	rdi, [rdi]
	cmp	qword ptr [r15 + 0x20], 0
	lea	rdi, [rdi]
	je	.label_322
	mov	r14, qword ptr [r15]
	lea	rsi, [rsi]
	jmp	.label_329
	nop	word ptr cs:[rax + rax]
.label_323:
	mov	rbp, rbp
	add	r14, 0x10
.label_329:
	mov	rsp, rsp
	cmp	r14, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	jae	.label_322
	cmp	qword ptr [r14], 0
	je	.label_323
	test	r14, r14
	mov	rbp, rbp
	mov	rbx, r14
	je	.label_323
	nop	word ptr cs:[rax + rax]
.label_330:
	mov	rdi, qword ptr [rbx]
	mov	rbp, rbp
	call	qword ptr [r15 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_330
	jmp	.label_323
.label_322:
	mov	r14, qword ptr [r15]
	jmp	.label_324
	nop	word ptr [rax + rax]
.label_327:
	mov	rbp, rbp
	add	r14, 0x10
.label_324:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_326
	mov	rdi, qword ptr [r14 + 8]
	mov	rsp, rsp
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_327
	nop	dword ptr [rax]
.label_331:
	mov	rbp, rbp
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	lea	rdi, [rdi]
	mov	rdi, rbx
	jne	.label_331
	lea	rdi, [rdi]
	jmp	.label_327
.label_326:
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_325
	nop	word ptr cs:[rax + rax]
.label_328:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rdi, rbx
	lea	rdi, [rdi]
	jne	.label_328
.label_325:
	mov	rdi, qword ptr [r15]
	call	free
	nop	
	mov	rdi, r15
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406220

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r14
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x50
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x28]
	mov	rdi, rsi
	mov	rsp, rsp
	mov	rsi, rax
	mov	rsp, rsp
	call	compute_bucket_size
	mov	rbp, rax
	lea	rsi, [rsi]
	test	rbp, rbp
	nop	
	je	.label_332
	lea	rsi, [rsi]
	mov	r14b, 1
	cmp	rbp, qword ptr [rbx + 0x10]
	lea	rdi, [rdi]
	je	.label_335
	lea	rdi, [rdi]
	mov	esi, 0x10
	mov	rdi, rbp
	call	rpl_calloc
	mov	rsp, rsp
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	test	rax, rax
	nop	
	je	.label_332
	mov	qword ptr [rsp + 0x10], rbp
	mov	rsp, rsp
	shl	rbp, 4
	add	rbp, qword ptr [rsp]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rbp
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rsp + 0x18], xmm0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x38]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x40]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rbx + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	lea	rdi, [rsp]
	xor	edx, edx
	mov	rsi, rbx
	call	transfer_entries
	mov	rbp, rbp
	test	al, al
	nop	
	je	.label_333
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx]
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx], rax
	nop	
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 0x10], rax
	nop	
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx + 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	mov	rsp, rsp
	jmp	.label_335
.label_333:
	nop	
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	mov	rsp, rsp
	lea	rsi, [rsp]
	mov	edx, 1
	nop	
	mov	rdi, rbx
	call	transfer_entries
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	je	.label_334
	lea	rsi, [rsp]
	mov	rbp, rbp
	xor	edx, edx
	mov	rdi, rbx
	nop	
	call	transfer_entries
	test	al, al
	lea	rdi, [rdi]
	je	.label_334
	mov	rdi, qword ptr [rsp]
	call	free
.label_332:
	mov	rbp, rbp
	xor	r14d, r14d
.label_335:
	lea	rsi, [rsi]
	mov	al, r14b
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
.label_334:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4063d0

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
	mov	r12, rsi
	mov	r14, rdi
	mov	rbp, rbp
	mov	r15, qword ptr [r12]
	mov	rbp, rbp
	mov	al, 1
	nop	
	cmp	r15, qword ptr [r12 + 8]
	nop	
	jae	.label_344
	nop	
	mov	dword ptr [rsp + 4], edx
	nop	word ptr cs:[rax + rax]
.label_338:
	cmp	qword ptr [r15], 0
	nop	
	je	.label_339
	mov	rbp, rbp
	mov	rbx, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_342
	nop	word ptr [rax + rax]
.label_337:
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, r13
	call	safe_hasher
	nop	
	mov	rbp, qword ptr [rbx + 8]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_336
	mov	rcx, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rax + 8], rbx
	nop	
	jmp	.label_340
	nop	word ptr [rax + rax]
.label_336:
	mov	rsp, rsp
	mov	qword ptr [rax], r13
	lea	rsi, [rsi]
	inc	qword ptr [r14 + 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	mov	rsp, rsp
	call	free_entry
.label_340:
	nop	
	test	rbp, rbp
	mov	rbp, rbp
	mov	rbx, rbp
	jne	.label_337
.label_342:
	mov	r13, qword ptr [r15]
	nop	
	mov	qword ptr [r15 + 8], 0
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	nop	
	jne	.label_339
	mov	rdi, r14
	mov	rsi, r13
	mov	rsp, rsp
	call	safe_hasher
	mov	rbx, rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbx], 0
	mov	rsp, rsp
	je	.label_345
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsp, rsp
	call	allocate_entry
	test	rax, rax
	je	.label_341
	mov	rbp, rbp
	mov	qword ptr [rax], r13
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 8]
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 8], rax
	jmp	.label_343
.label_345:
	mov	qword ptr [rbx], r13
	nop	
	inc	qword ptr [r14 + 0x18]
.label_343:
	mov	qword ptr [r15], 0
	dec	qword ptr [r12 + 0x18]
.label_339:
	nop	
	add	r15, 0x10
	cmp	r15, qword ptr [r12 + 8]
	mov	rbp, rbp
	jb	.label_338
	mov	al, 1
	jmp	.label_344
.label_341:
	nop	
	xor	eax, eax
.label_344:
	nop	
	add	rsp, 8
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	nop	
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406550

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	lea	rsi, [rsi]
	test	r14, r14
	mov	rbp, rbp
	je	.label_347
	lea	rdx, [rsp]
	lea	rsi, [rsi]
	xor	ebp, ebp
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdi, r15
	nop	
	mov	rsi, r14
	mov	rsp, rsp
	call	hash_find_entry
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_360
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_346
	mov	rbp, rbp
	mov	qword ptr [rbx], rax
	jmp	.label_346
.label_360:
	nop	
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	nop	
	js	.label_356
	cvtsi2ss	xmm0, rcx
	lea	rdi, [rdi]
	jmp	.label_351
.label_356:
	shr	rcx, 1
	lea	rdi, [rdi]
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_351:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rsp, rsp
	mov	edx, eax
	lea	rsi, [rsi]
	and	edx, 1
	test	rax, rax
	js	.label_353
	cvtsi2ss	xmm1, rax
	mov	rsp, rsp
	jmp	.label_359
.label_353:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	mov	rsp, rsp
	addss	xmm1, xmm1
.label_359:
	mulss	xmm1, dword ptr [rcx + 8]
	lea	rdi, [rdi]
	ucomiss	xmm0, xmm1
	jbe	.label_352
	mov	rdi, r15
	call	check_tuning
	nop	
	mov	rax, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	lea	rdi, [rdi]
	and	edx, 1
	mov	rsp, rsp
	test	rcx, rcx
	mov	rbp, rbp
	js	.label_355
	lea	rdi, [rdi]
	cvtsi2ss	xmm2, rcx
	jmp	.label_350
.label_355:
	shr	rcx, 1
	lea	rsi, [rsi]
	or	rdx, rcx
	mov	rsp, rsp
	cvtsi2ss	xmm2, rdx
	addss	xmm2, xmm2
.label_350:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rsp, rsp
	movss	xmm1, dword ptr [rcx + 8]
	mov	edx, eax
	nop	
	and	edx, 1
	mov	rbp, rbp
	test	rax, rax
	js	.label_354
	cvtsi2ss	xmm0, rax
	jmp	.label_348
.label_354:
	shr	rax, 1
	or	rdx, rax
	lea	rdi, [rdi]
	cvtsi2ss	xmm0, rdx
	mov	rsp, rsp
	addss	xmm0, xmm0
.label_348:
	movaps	xmm3, xmm1
	lea	rsi, [rsi]
	mulss	xmm3, xmm0
	ucomiss	xmm2, xmm3
	mov	rbp, rbp
	jbe	.label_352
	mov	rbp, rbp
	cmp	byte ptr [rcx + 0x10], 0
	mulss	xmm0, dword ptr [rcx + 0xc]
	jne	.label_358
	mulss	xmm0, xmm1
.label_358:
	mov	ebp, 0xffffffff
	lea	rsi, [rsi]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_313]]
	lea	rdi, [rdi]
	jae	.label_346
	lea	rdi, [rdi]
	movss	xmm1,  dword ptr [dword ptr [rip + label_312]]
	movaps	xmm2, xmm0
	lea	rdi, [rdi]
	subss	xmm2, xmm1
	nop	
	cvttss2si	rax, xmm2
	nop	
	movabs	rcx, 0x8000000000000000
	mov	rsp, rsp
	xor	rcx, rax
	mov	rbp, rbp
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	nop	
	mov	rdi, r15
	call	hash_rehash
	test	al, al
	mov	rbp, rbp
	je	.label_346
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, r14
	call	hash_find_entry
	lea	rdi, [rdi]
	test	rax, rax
	jne	.label_347
.label_352:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_349
	mov	rdi, r15
	call	allocate_entry
	mov	rbp, rbp
	mov	ebp, 0xffffffff
	lea	rsi, [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_346
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	inc	qword ptr [r15 + 0x20]
	lea	rsi, [rsi]
	jmp	.label_357
.label_349:
	mov	qword ptr [rax], r14
	nop	
	inc	qword ptr [r15 + 0x20]
	inc	qword ptr [r15 + 0x18]
.label_357:
	mov	rbp, rbp
	mov	ebp, 1
.label_346:
	mov	rbp, rbp
	mov	eax, ebp
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
.label_347:
	lea	rdi, [rdi]
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x4067d0

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	r12d, ecx
	mov	rbp, rdx
	nop	
	mov	r13, rsi
	lea	rdi, [rdi]
	mov	r14, rdi
	mov	rbp, rbp
	call	safe_hasher
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbx]
	xor	r15d, r15d
	nop	
	test	rsi, rsi
	je	.label_361
	cmp	rsi, r13
	nop	
	je	.label_365
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	je	.label_367
.label_365:
	mov	r15, qword ptr [rbx]
	test	r12b, r12b
	mov	rsp, rsp
	je	.label_361
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx + 8]
	test	rsi, rsi
	je	.label_363
	nop	
	movups	xmm0, xmmword ptr [rsi]
	mov	rsp, rsp
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_366
.label_367:
	mov	rax, qword ptr [rbx + 8]
	nop	
	xor	r15d, r15d
	lea	rdi, [rdi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_361
	lea	rsi, [rsi]
	add	rbx, 8
	mov	rsp, rsp
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_364:
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	nop	
	cmp	rsi, r13
	mov	rsp, rsp
	je	.label_362
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	mov	rsp, rsp
	test	al, al
	jne	.label_362
	nop	
	mov	rbx, qword ptr [rbx]
	nop	
	mov	rax, qword ptr [rbx + 8]
	add	rbx, 8
	test	rax, rax
	jne	.label_364
	jmp	.label_361
.label_363:
	mov	rbp, rbp
	mov	qword ptr [rbx], 0
	lea	rsi, [rsi]
	jmp	.label_361
.label_362:
	nop	
	mov	rsi, qword ptr [rbx]
	mov	r15, qword ptr [rsi]
	test	r12b, r12b
	je	.label_361
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbx], rax
.label_366:
	mov	rdi, r14
	mov	rbp, rbp
	call	free_entry
.label_361:
	mov	rax, r15
	mov	rbp, rbp
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	nop	
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4068f0

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x48]
	test	rax, rax
	nop	
	je	.label_368
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rdi + 0x48], rcx
	ret	
.label_368:
	push	rax
	mov	edi, 0x10
	mov	rsp, rsp
	call	malloc
	add	rsp, 8
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406920

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
	je	.label_369
	nop	
	test	ecx, ecx
	mov	rbp, rbp
	cmove	rbx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rax, rbx
.label_369:
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbx
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406970
	.globl hash_delete
	.type hash_delete, @function
hash_delete:

	mov	rsp, rsp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	nop	
	mov	r15, rdi
	lea	rdi, [rdi]
	lea	rdx, [rsp + 8]
	mov	ecx, 1
	call	hash_find_entry
	mov	r14, rax
	mov	rbp, rbp
	xor	eax, eax
	test	r14, r14
	mov	rbp, rbp
	je	.label_378
	dec	qword ptr [r15 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	jne	.label_373
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	nop	
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_376
	cvtsi2ss	xmm0, rax
	jmp	.label_374
.label_376:
	shr	rax, 1
	mov	rsp, rsp
	or	rcx, rax
	nop	
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_374:
	nop	
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	mov	edx, ecx
	mov	rsp, rsp
	and	edx, 1
	lea	rsi, [rsi]
	test	rcx, rcx
	mov	rbp, rbp
	js	.label_377
	mov	rbp, rbp
	cvtsi2ss	xmm1, rcx
	mov	rsp, rsp
	jmp	.label_370
.label_377:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_370:
	mulss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	lea	rsi, [rsi]
	jbe	.label_373
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_382
	mov	rsp, rsp
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rcx
	lea	rsi, [rsi]
	jmp	.label_372
.label_382:
	shr	rcx, 1
	or	rdx, rcx
	lea	rsi, [rsi]
	xorps	xmm1, xmm1
	lea	rsi, [rsi]
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_372:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_379
	lea	rsi, [rsi]
	cvtsi2ss	xmm0, rax
	jmp	.label_371
.label_379:
	shr	rax, 1
	or	rdx, rax
	mov	rsp, rsp
	cvtsi2ss	xmm0, rdx
	lea	rdi, [rdi]
	addss	xmm0, xmm0
.label_371:
	movss	xmm2, dword ptr [rcx]
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_373
	mov	rbp, rbp
	mulss	xmm0, dword ptr [rcx + 4]
	cmp	byte ptr [rcx + 0x10], 0
	mov	rsp, rsp
	jne	.label_381
	mulss	xmm0, dword ptr [rcx + 8]
.label_381:
	movss	xmm1,  dword ptr [dword ptr [rip + label_312]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	lea	rdi, [rdi]
	cvttss2si	rax, xmm2
	mov	rsp, rsp
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	mov	rsp, rsp
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	lea	rsi, [rsi]
	test	al, al
	jne	.label_373
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	nop	
	je	.label_375
	nop	word ptr cs:[rax + rax]
.label_380:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	mov	rsp, rsp
	test	rbx, rbx
	mov	rbp, rbp
	mov	rdi, rbx
	jne	.label_380
.label_375:
	nop	
	mov	qword ptr [r15 + 0x48], 0
.label_373:
	mov	rax, r14
.label_378:
	add	rsp, 0x10
	nop	
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406b60

	.globl next_prime
	.type next_prime, @function
next_prime:
	nop	
	push	r14
	lea	rdi, [rdi]
	push	rbx
	push	rax
	nop	
	cmp	rdi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rdi
	lea	rsi, [rsi]
	or	rbx, 1
	mov	r14, -1
	jmp	.label_383
	nop	word ptr cs:[rax + rax]
.label_384:
	lea	rsi, [rsi]
	add	rbx, 2
.label_383:
	mov	rbp, rbp
	cmp	rbx, -1
	nop	
	je	.label_385
	nop	
	mov	rdi, rbx
	call	is_prime
	test	al, al
	mov	rbp, rbp
	je	.label_384
	mov	rsp, rsp
	mov	r14, rbx
.label_385:
	nop	
	mov	rax, r14
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406bd0

	.globl is_prime
	.type is_prime, @function
is_prime:
	lea	rdi, [rdi]
	mov	r8, rdi
	nop	
	mov	esi, 3
	nop	
	mov	edi, 9
	nop	
	mov	ecx, 0x10
	cmp	r8, 0xa
	jb	.label_386
	nop	
.label_387:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	je	.label_386
	add	rdi, rcx
	mov	rbp, rbp
	add	rsi, 2
	lea	rdi, [rdi]
	add	rcx, 8
	mov	rbp, rbp
	cmp	rdi, r8
	jb	.label_387
.label_386:
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r8
	div	rsi
	lea	rsi, [rsi]
	test	rdx, rdx
	setne	al
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406c30

	.globl free_entry
	.type free_entry, @function
free_entry:
	lea	rsi, [rsi]
	mov	qword ptr [rsi], 0
	nop	
	mov	rax, qword ptr [rdi + 0x48]
	nop	
	mov	qword ptr [rsi + 8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x48], rsi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406c50

	.globl triple_hash
	.type triple_hash, @function
triple_hash:
	push	r14
	mov	rbp, rbp
	push	rbx
	push	rax
	nop	
	mov	r14, rsi
	mov	rbp, rbp
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx]
	call	hash_pjw
	xor	rax, qword ptr [rbx + 8]
	mov	rbp, rbp
	xor	edx, edx
	div	r14
	mov	rsp, rsp
	mov	rax, rdx
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406c90
	.globl triple_hash_no_name
	.type triple_hash_no_name, @function
triple_hash_no_name:

	nop
	mov	rax, qword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	nop	
	mov	rax, rdx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406ca0

	.globl triple_compare
	.type triple_compare, @function
triple_compare:
	nop
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_388
	nop	
	mov	rax, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_389
	lea	rsi, [rsi]
	push	rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	same_name
	mov	rsp, rsp
	add	rsp, 8
	ret	
.label_388:
	mov	rsp, rsp
	xor	eax, eax
	ret	
.label_389:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406ce0

	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_391
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_390
	mov	rbp, rbp
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	mov	rsp, rsp
	sete	al
	lea	rsi, [rsi]
	add	rsp, 8
	mov	rbp, rbp
	ret	
.label_391:
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	ret	
.label_390:
	lea	rsi, [rsi]
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406d30

	.globl triple_free
	.type triple_free, @function
triple_free:
	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	call	free
	mov	rdi, rbx
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	jmp	free
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x406d60

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	nop	
	sub	rsp, 0xc8
	nop	
	test	al, al
	lea	rdi, [rdi]
	je	.label_392
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x50], xmm2
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x60], xmm3
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x70], xmm4
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x80], xmm5
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_392:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	dl, 0x40
	je	.label_393
	lea	rdi, [rdi]
	lea	rax, [rsp]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xc0], rax
	lea	rsi, [rsi]
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], 0x18
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_395
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_394
.label_395:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xb8], rcx
.label_394:
	mov	ecx, dword ptr [rax]
.label_393:
	xor	eax, eax
	call	openat
	lea	rsi, [rsi]
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xc8
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406e80

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
	js	.label_396
	mov	rsp, rsp
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_397
	mov	dword ptr [r14], ebp
	mov	rsp, rsp
	jmp	.label_396
.label_397:
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
.label_396:
	nop	
	mov	rax, rbx
	mov	rsp, rsp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406f00

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
	je	.label_398
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
	jl	.label_400
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_400
	mov	esi, OFFSET FLAT:.str.2_2
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_399
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_399:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_400:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_398:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_9
	mov	rbp, rbp
	mov	esi, 0x37
	lea	rsi, [rsi]
	mov	edx, 1
	call	fwrite
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406ff0
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
	.align	32
	#Procedure 0x407040
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
	.align	32
	#Procedure 0x407060
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
	.align	32
	#Procedure 0x407080

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
	.align	32
	#Procedure 0x4070f0
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
	.align	32
	#Procedure 0x407110

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
	je	.label_401
	test	rdx, rdx
	nop	
	je	.label_401
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_401:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407150
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
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
	mov	rax, qword ptr [rbp + 0x28]
	mov	rcx, qword ptr [rbp + 0x30]
	lea	rsi, [rsi]
	lea	rdx, [rbp + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rdx
	nop	
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x20]
	call	quotearg_buffer_restyled
	mov	dword ptr [rbx], r14d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	nop	
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4071f0

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
	sub	rsp, 0x108
	mov	ebx, r9d
	nop	
	mov	dword ptr [rsp + 0x6c], ebx
	mov	r13d, r8d
	mov	qword ptr [rsp + 0xc0], rcx
	mov	r12, rdx
	mov	rbp, rbp
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xe0], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x150]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x148]
	mov	qword ptr [rsp + 0x90], rax
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], rax
	mov	r15b, bl
	mov	rbp, rbp
	shr	r15b, 1
	mov	rbp, rbp
	and	r15b, 1
	nop	
	mov	eax, ebx
	and	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x5c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x58], ebx
	mov	rsp, rsp
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x80], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa8], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xd0], rax
	mov	eax, 0
	mov	rbp, rbp
	xor	r11d, r11d
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
.label_478:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rsi, [rsi]
	mov	ecx, r13d
	lea	rdi, [rdi]
	cmp	r13d, 0xa
	ja	.label_456
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	rsp, rsp
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_465]]
.label_839:
	lea	rsi, [rsi]
	mov	r12d, r11d
	nop	
	mov	edi, OFFSET FLAT:.str.11
	mov	esi, r13d
	nop	
	mov	r14, r10
	mov	bl, r8b
	mov	rbp, rbp
	mov	rbp, r9
	call	gettext_quote
	mov	qword ptr [rsp + 0x90], rax
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r13d
	mov	rsp, rsp
	call	gettext_quote
	mov	rsp, rsp
	mov	r11d, r12d
	mov	r9, rbp
	mov	r8b, bl
	nop	
	mov	r10, r14
	nop	
	mov	qword ptr [rsp + 0x88], rax
.label_840:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	rbp, rbp
	test	r15b, 1
	mov	rbp, rbp
	mov	eax, 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xf0], rax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_495
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rsp, rsp
	je	.label_495
	mov	rsp, rsp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_521:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_404
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rsi], al
.label_404:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	al, byte ptr [rdx + rcx + 1]
	lea	rdi, [rdi]
	inc	rcx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rbp, rbp
	test	al, al
	jne	.label_521
.label_495:
	mov	rbx, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	mov	rdi, rbx
	mov	r12, r10
	nop	
	call	strlen
	mov	r10, r12
	mov	qword ptr [rsp + 0xd0], rax
	lea	rdi, [rdi]
	mov	r14d, r13d
	mov	qword ptr [rsp + 0xa8], rbx
	mov	sil, 1
	mov	rbp, rbp
	mov	dil, r15b
	mov	r8b, byte ptr [rsp + 0x69]
	mov	rsp, rsp
	mov	r9, rbp
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	mov	r11d, dword ptr [rsp + 0xb8]
	nop	
	jmp	.label_417
.label_832:
	lea	rsi, [rsi]
	xor	r14d, r14d
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	jmp	.label_417
.label_835:
	mov	rsp, rsp
	mov	al, 1
.label_833:
	mov	r15b, 1
.label_836:
	test	r15b, 1
	mov	rsp, rsp
	mov	cl, 1
	je	.label_446
	mov	cl, al
.label_446:
	lea	rdi, [rdi]
	mov	al, cl
.label_834:
	mov	r14d, 2
	mov	rsp, rsp
	test	r15b, 1
	mov	rsp, rsp
	jne	.label_449
	test	r10, r10
	je	.label_454
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	lea	rdi, [rdi]
	jmp	.label_464
.label_449:
	xor	ecx, ecx
	jmp	.label_464
.label_837:
	mov	r14d, 5
	mov	rsp, rsp
	test	r15b, 1
	jne	.label_466
	test	r10, r10
	je	.label_470
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	lea	rsi, [rsi]
	jmp	.label_473
.label_838:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	nop	
	mov	qword ptr [rsp + 0xa8], rax
	nop	
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	rbp, rbp
	mov	dil, 1
	jmp	.label_417
.label_454:
	nop	
	mov	ecx, 1
	nop	dword ptr [rax]
.label_464:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa8], rcx
	lea	rdi, [rdi]
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	mov	rbp, rbp
	jmp	.label_417
.label_466:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_473
.label_470:
	mov	rbp, rbp
	mov	eax, 1
.label_473:
	nop	
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	rsp, rsp
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	lea	rsi, [rsi]
	mov	sil, 1
	mov	dil, r15b
	nop	word ptr cs:[rax + rax]
.label_417:
	mov	qword ptr [rsp + 0x98], rdi
	mov	byte ptr [rsp + 0xa6], sil
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x140], 0
	lea	rsi, [rsi]
	setne	bl
	cmp	r14d, 2
	lea	rsi, [rsi]
	setne	r15b
	mov	rsp, rsp
	sete	dl
	mov	rbp, rbp
	mov	cl, sil
	and	cl, 1
	mov	byte ptr [rsp + 0xa5], cl
	sete	byte ptr [rsp + 0x6b]
	lea	rdi, [rdi]
	mov	r12b, r15b
	and	r12b, cl
	mov	byte ptr [rsp + 0xbf], r12b
	cmp	qword ptr [rsp + 0xd0], 0
	mov	rsp, rsp
	setne	r13b
	mov	al, r13b
	and	al, r12b
	mov	rbp, rbp
	mov	byte ptr [rsp + 0xdf], al
	mov	al, dil
	mov	rsp, rsp
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xcf], al
	mov	rsp, rsp
	sete	cl
	lea	rdi, [rdi]
	and	dl, al
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x7f], dl
	and	bl, al
	mov	byte ptr [rsp + 0xb7], bl
	or	cl, r15b
	mov	byte ptr [rsp + 0xa7], cl
	nop	
	and	sil, dil
	mov	rsp, rsp
	and	sil, r13b
	mov	byte ptr [rsp + 0x6a], sil
	nop	
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_414
	nop	word ptr [rax + rax]
.label_483:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	lea	rsi, [rsi]
	sar	r15b, 7
	and	r15b, r8b
	lea	rdi, [rdi]
	mov	r8b, r15b
	nop	
	inc	rsi
.label_414:
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_460
	cmp	rsi, rbp
	jne	.label_499
	jmp	.label_463
	nop	word ptr cs:[rax + rax]
.label_460:
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + rsi], 0
	nop	
	je	.label_463
.label_499:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_471
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_476
	mov	rsp, rsp
	cmp	rbp, -1
	lea	rdi, [rdi]
	jne	.label_476
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, rbp
	mov	rdi, r9
	mov	rbp, rbp
	mov	rbp, r10
	nop	
	mov	r15b, r8b
	lea	rsi, [rsi]
	mov	r13, r14
	lea	rsi, [rsi]
	mov	r12, r9
	mov	r14, rsi
	lea	rdi, [rdi]
	call	strlen
	mov	rsp, rsp
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	r11d, dword ptr [rsp + 0xb8]
	mov	r9, r12
	mov	r12b, byte ptr [rsp + 0xbf]
	nop	
	mov	r14, r13
	lea	rdi, [rdi]
	mov	r8b, r15b
	mov	rbp, rbp
	mov	r10, rbp
	mov	rbp, rax
.label_476:
	lea	rsi, [rsi]
	cmp	rbx, rbp
	jbe	.label_505
.label_471:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xec], 0
.label_426:
	mov	rsp, rsp
	movzx	r13d, byte ptr [r9 + rsi]
	mov	rsp, rsp
	cmp	r13, 0x7e
	nop	
	ja	.label_510
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	r15b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	bl, 0x61
	nop	
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_513]]
.label_852:
	test	rsi, rsi
	jne	.label_412
	jmp	.label_458
	nop	word ptr [rax + rax]
.label_505:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12d, r11d
	lea	rsi, [rsi]
	mov	r13, r14
	lea	rdi, [rdi]
	mov	r15b, r8b
	mov	rbx, r10
	lea	rdi, [r9 + rsi]
	mov	r14, rsi
	mov	rbp, r9
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xa8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xd0]
	mov	rbp, rbp
	call	memcmp
	mov	rsp, rsp
	test	eax, eax
	sete	al
	mov	dword ptr [rsp + 0xec], eax
	jne	.label_420
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	nop	
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_426
	mov	rsp, rsp
	jmp	.label_402
.label_420:
	mov	rbp, rbp
	mov	r10, rbx
	mov	rbp, rbp
	mov	r8b, r15b
	mov	rbp, rbp
	mov	rdi, r13
	nop	
	mov	r9, rbp
	nop	
	mov	r11d, r12d
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0xc0]
	nop	
	mov	r12b, byte ptr [rsp + 0xbf]
	nop	
	mov	rsi, r14
	jmp	.label_426
.label_856:
	xor	eax, eax
	cmp	rbp, -1
	lea	rsi, [rsi]
	je	.label_437
	test	rsi, rsi
	nop	
	jne	.label_462
	cmp	rbp, 1
	lea	rsi, [rsi]
	je	.label_458
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_407
.label_845:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_411
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xcf], 0
	nop	
	jne	.label_402
	cmp	edi, 2
	nop	
	jne	.label_434
	lea	rdi, [rdi]
	mov	al, r11b
	and	al, 1
	nop	
	jne	.label_475
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_502
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], 0x27
.label_502:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_491
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_491:
	nop	
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_498
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_498:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	rsp, rsp
	mov	r11b, 1
	nop	
	mov	rcx, rax
	jmp	.label_448
.label_846:
	mov	bl, 0x62
	lea	rsi, [rsi]
	jmp	.label_509
.label_847:
	mov	cl, 0x74
	jmp	.label_423
.label_848:
	mov	bl, 0x76
	lea	rdi, [rdi]
	jmp	.label_509
.label_849:
	mov	bl, 0x66
	jmp	.label_509
.label_850:
	nop	
	mov	cl, 0x72
	mov	rsp, rsp
	jmp	.label_423
.label_853:
	lea	rsi, [rsi]
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	rbp, rbp
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 2
	jne	.label_494
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_403
	nop	
	test	r10, r10
	sete	al
	mov	rcx, qword ptr [rsp + 0x80]
	mov	rdx, rcx
	lea	rdi, [rdi]
	test	rdx, rdx
	nop	
	setne	cl
	nop	
	or	cl, al
	cmove	rdx, r10
	mov	qword ptr [rsp + 0x80], rdx
	mov	eax, 0
	mov	rsp, rsp
	cmove	r10, rax
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_504
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_504:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_431
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x5c
.label_431:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_442
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_442:
	nop	
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	mov	rbp, rbp
	jmp	.label_450
.label_854:
	lea	rdi, [rdi]
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 5
	mov	rsp, rsp
	je	.label_455
	cmp	r14d, 2
	lea	rdi, [rdi]
	jne	.label_461
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_403
.label_461:
	mov	rdi, r14
	jmp	.label_412
.label_855:
	mov	r14, rdi
	nop	
	cmp	r14d, 2
	mov	rsp, rsp
	jne	.label_469
	nop	
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_403
	mov	rdi, r14
	jmp	.label_479
.label_510:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	lea	rsi, [rsi]
	jne	.label_482
	mov	rbp, rbp
	mov	r14, r9
	mov	rbx, rsi
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	rsi, rbx
	nop	
	mov	r9, r14
	mov	rax, qword ptr [rax]
	movzx	r15d, word ptr [rax + r13*2]
	mov	rsp, rsp
	shr	r15d, 0xe
	lea	rdi, [rdi]
	and	r15b, 1
	lea	rsi, [rsi]
	mov	ebx, 1
.label_424:
	lea	rdi, [rdi]
	and	r15b, 1
	mov	dl, r15b
	or	dl, byte ptr [rsp + 0x6b]
	mov	byte ptr [rsp + 0xc0], dl
	cmp	rbx, 1
	mov	rcx, rbx
	mov	r10, qword ptr [rsp + 0x40]
	mov	r8b, byte ptr [rsp + 0x69]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	mov	r11d, dword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	ja	.label_503
	test	dl, dl
	mov	rsp, rsp
	je	.label_503
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_407
.label_437:
	test	rsi, rsi
	jne	.label_518
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_518
.label_458:
	mov	rbp, rbp
	mov	dl, 1
.label_851:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_402
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r15b, dl
	mov	rbp, rbp
	jmp	.label_407
.label_411:
	cmp	dword ptr [rsp + 0x5c], 0
	mov	rbp, rbp
	je	.label_412
	lea	rsi, [rsi]
	mov	r14, rdi
	inc	rsi
	jmp	.label_414
.label_494:
	mov	rdi, r14
.label_450:
	xor	eax, eax
	nop	
	mov	r15b, 1
	lea	rdi, [rdi]
	jmp	.label_407
.label_469:
	mov	rdi, r14
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x6a], 0
	nop	
	mov	cl, r13b
	nop	
	je	.label_423
.label_479:
	lea	rsi, [rsi]
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_428
.label_423:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xa7], 0
	lea	rsi, [rsi]
	mov	bl, cl
	nop	
	je	.label_402
.label_509:
	mov	rbp, rbp
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_407
	lea	rsi, [rsi]
	jmp	.label_409
.label_482:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_445
	mov	rsp, rsp
	mov	rdi, r9
	mov	rbx, r9
	lea	rdi, [rdi]
	mov	rbp, rsi
	mov	rsp, rsp
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_445:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	nop	
	mov	r15b, 1
	xor	ebx, ebx
	lea	rsi, [rsi]
	lea	r14, [rsp + 0x100]
.label_413:
	lea	rax, [rbx + rsi]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x30], rsi
	nop	
	lea	rsi, [r9 + rax]
	mov	qword ptr [rsp + 0x48], r9
	mov	rbp, rbp
	mov	rdx, rbp
	mov	rbp, rbp
	sub	rdx, rax
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0xfc]
	nop	
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rdi, [rdi]
	mov	rbp, rax
	test	rbp, rbp
	je	.label_485
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	lea	rsi, [rsi]
	mov	r10, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	nop	
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rdi, [rdi]
	je	.label_489
	cmp	rbp, -2
	nop	
	je	.label_501
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_439
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	lea	rsi, [rsi]
	mov	ecx, 1
.label_516:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	mov	rsp, rsp
	cmp	edx, 0x21
	lea	rsi, [rsi]
	ja	.label_432
	mov	rbp, rbp
	bt	rsi, rdx
	jb	.label_514
.label_432:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jb	.label_516
.label_439:
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_519
	xor	r15d, r15d
.label_519:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	add	rbx, rbp
	mov	r14, rdi
	nop	
	call	mbsinit
	mov	rsp, rsp
	test	eax, eax
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	je	.label_413
	jmp	.label_424
.label_518:
	mov	rbp, -1
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_407
.label_455:
	mov	rdi, r14
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x58], 0
	lea	rdi, [rdi]
	je	.label_412
	lea	rcx, [rsi + 2]
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jae	.label_412
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_412
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	mov	rsp, rsp
	cmp	edx, 0x3e
	ja	.label_443
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	nop	
	bt	rsi, rdx
	lea	rdi, [rdi]
	jae	.label_410
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_402
	lea	rsi, [rsi]
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_474
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_474:
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, r10
	jae	.label_419
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 0x22
.label_419:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_467
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x22
.label_467:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	nop	
	cmp	rax, r10
	lea	rsi, [rsi]
	jae	.label_408
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_408:
	nop	
	add	qword ptr [rsp + 0xf0], 4
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_407
.label_412:
	xor	eax, eax
	mov	rsp, rsp
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_407:
	test	r12b, r12b
	je	.label_520
	cmp	qword ptr [rsp + 0x140], 0
	nop	
	jne	.label_507
	jmp	.label_435
	nop	word ptr cs:[rax + rax]
.label_520:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xb7], 0
	lea	rdi, [rdi]
	je	.label_435
.label_507:
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	lea	rsi, [rsi]
	movzx	edx, cl
	mov	esi, 1
	mov	rsp, rsp
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_512
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_428
	jmp	.label_409
	nop	word ptr cs:[rax + rax]
.label_435:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_409
	jmp	.label_428
.label_512:
	mov	bl, r13b
	mov	rsi, r14
.label_409:
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_402
	mov	rsp, rsp
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_422
	nop	
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_422
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_515
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_515:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_436
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x24
.label_436:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_447
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_447:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_422:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_457
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_457:
	lea	rdi, [rdi]
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_427
.label_462:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_407
.label_503:
	mov	rsp, rsp
	add	rcx, rsi
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_440
	nop	word ptr cs:[rax + rax]
.label_481:
	mov	rbp, rbp
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_440:
	mov	rbp, rbp
	test	dl, dl
	mov	rbp, rbp
	je	.label_488
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	lea	rdi, [rdi]
	je	.label_490
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_496
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	lea	rsi, [rsi]
	mov	rsi, rbx
.label_496:
	nop	
	inc	qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xec], 0
	mov	rsp, rsp
	jmp	.label_490
	nop	dword ptr [rax]
.label_488:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_403
	cmp	r14d, 2
	jne	.label_441
	mov	rsp, rsp
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_441
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_508
	mov	rax, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	byte ptr [rax + rdx], 0x27
.label_508:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_425
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_425:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	nop	
	lea	rax, [rax + 2]
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_418
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_418:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_441:
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_433
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_433:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rdi, [rdi]
	inc	rax
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_486
	mov	dl, r13b
	mov	rsp, rsp
	shr	dl, 6
	or	dl, 0x30
	mov	rsp, rsp
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	lea	rsi, [rsi]
	mov	rsi, rdi
.label_486:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_451
	mov	dl, r13b
	shr	dl, 3
	nop	
	and	dl, 7
	or	dl, 0x30
	nop	
	mov	rbx, rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_451:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	rsp, rsp
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_490:
	mov	rsp, rsp
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_428
	test	r11b, 1
	lea	rdi, [rdi]
	je	.label_480
	mov	bl, al
	lea	rdi, [rdi]
	and	bl, 1
	mov	r14, rdi
	jne	.label_484
	lea	rsi, [rsi]
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_487
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_487:
	mov	rsi, qword ptr [rsp + 0xf0]
	nop	
	inc	rsi
	cmp	rsi, r10
	nop	
	jae	.label_497
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rdi + rsi], 0x27
.label_497:
	add	qword ptr [rsp + 0xf0], 2
	mov	rbp, rbp
	xor	r11d, r11d
	mov	rsi, rbx
	lea	rdi, [rdi]
	jmp	.label_484
	nop	word ptr cs:[rax + rax]
.label_480:
	lea	rsi, [rsi]
	mov	r14, rdi
.label_484:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_481
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rsi + rbx], r13b
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	jmp	.label_481
	nop	word ptr cs:[rax + rax]
.label_428:
	lea	rsi, [rsi]
	test	r11b, 1
	je	.label_406
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_406
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_405
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rax + rcx], 0x27
.label_405:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_416
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_416:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 2
	lea	rdi, [rdi]
	xor	r11d, r11d
	nop	
	mov	bl, r13b
	lea	rsi, [rsi]
	jmp	.label_427
	nop	word ptr cs:[rax + rax]
.label_406:
	lea	rsi, [rsi]
	mov	bl, r13b
	mov	r14, rdi
.label_427:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_483
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], bl
	lea	rdi, [rdi]
	jmp	.label_483
.label_434:
	nop	
	mov	rcx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	jmp	.label_448
.label_475:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_448:
	cmp	rcx, r10
	jae	.label_452
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_452:
	lea	rsi, [rsi]
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	lea	rsi, [rsi]
	mov	r13b, 0x30
	cmp	edi, 2
	lea	rsi, [rsi]
	je	.label_459
	lea	rdx, [rsi + 1]
	lea	rsi, [rsi]
	cmp	rdx, rbp
	jae	.label_429
	nop	
	mov	dl, byte ptr [r9 + rdx]
	mov	rbp, rbp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	mov	rbp, rbp
	cmp	edx, 9
	mov	rsp, rsp
	ja	.label_472
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_477
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	nop	
	mov	rsi, rbx
.label_477:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_493
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsp, rsp
	mov	rsi, rbx
.label_493:
	mov	rsp, rsp
	add	rcx, 3
	xor	r15d, r15d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rdi, [rdi]
	jmp	.label_407
.label_459:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_407
.label_429:
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_407
.label_472:
	xor	r15d, r15d
	jmp	.label_407
.label_485:
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_430
.label_489:
	xor	r15d, r15d
	nop	
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	jmp	.label_517
.label_501:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	jae	.label_523
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_415:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	cmp	byte ptr [rax + rbx], 0
	nop	
	je	.label_522
	lea	rax, [rsi + rbx + 1]
	lea	rsi, [rsi]
	inc	rbx
	cmp	rax, rbp
	jb	.label_415
	xor	r15d, r15d
	nop	
	jmp	.label_430
.label_523:
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_517:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_430:
	mov	byte ptr [rsp + 0xa6], r8b
	lea	rdi, [rdi]
	jmp	.label_424
.label_522:
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_430
.label_443:
	lea	rdi, [rdi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_407
.label_410:
	mov	rsp, rsp
	xor	r15d, r15d
	nop	
	mov	rsi, rbx
	jmp	.label_407
	nop	word ptr cs:[rax + rax]
.label_463:
	cmp	qword ptr [rsp + 0xf0], 0
	mov	rbp, rbp
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	and	cl, 1
	je	.label_444
	lea	rdi, [rdi]
	or	dl, al
	lea	rdi, [rdi]
	je	.label_403
.label_444:
	nop	
	mov	qword ptr [rsp + 0xc0], rbp
	mov	rsp, rsp
	mov	r12, r9
	nop	
	test	cl, cl
	setne	al
	lea	rdi, [rdi]
	cmp	r14d, 2
	nop	
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	lea	rdi, [rdi]
	test	sil, 1
	lea	rdi, [rdi]
	je	.label_468
	lea	rdi, [rdi]
	or	dl, al
	jne	.label_468
	lea	rdi, [rdi]
	test	r8b, 1
	jne	.label_421
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_468
	lea	rdi, [rdi]
	test	r10, r10
	nop	
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	r15b, dl
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_478
.label_468:
	nop	
	mov	rdx, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	test	rdx, rdx
	je	.label_492
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_492
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_492
	inc	rdx
	nop	dword ptr [rax + rax]
.label_506:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_500
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_500:
	nop	
	inc	qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	inc	rdx
	test	al, al
	jne	.label_506
.label_492:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_511
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_511
.label_402:
	lea	rdi, [rdi]
	mov	rdx, r9
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_438:
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rsi, [rsi]
	mov	r8d, 4
	cmove	r8d, r14d
	lea	rsi, [rsi]
	cmp	r14d, 2
	mov	rbp, rbp
	cmovne	r8d, r14d
	nop	
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	nop	
	mov	rax, qword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	rsi, r10
	mov	rcx, rbp
.label_453:
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_511:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	nop	
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
.label_514:
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_438
.label_403:
	lea	rsi, [rsi]
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rbp, rbp
	jmp	.label_438
.label_421:
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x140]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	mov	r8d, 5
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x80]
	lea	rdi, [rdi]
	mov	rdx, r12
	nop	
	mov	rcx, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	jmp	.label_453
.label_456:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408940
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	lea	rdi, [rdi]
	mov	rax, rdx
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rcx, rax
	mov	rbp, rbp
	jmp	quotearg_alloc_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408960

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
	mov	qword ptr [rsp + 0x28], r14
	mov	r15, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r12, rcx
	mov	rbp, rbp
	call	__errno_location
	mov	qword ptr [rsp + 0x38], rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x44], ecx
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
	call	xcharalloc
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
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	rax, rax
	mov	ecx, dword ptr [rsp + 0x44]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	dword ptr [rdx], ecx
	je	.label_524
	mov	qword ptr [rax], rbx
.label_524:
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
	.align	32
	#Procedure 0x408ab0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_525
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_529:
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
	jl	.label_529
.label_525:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_528
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_526]], OFFSET FLAT:slot0
.label_528:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_527
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_527:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408b70

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x408b80

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
	mov	qword ptr [rsp + 0x40], rsi
	mov	ebx, edi
	call	__errno_location
	test	ebx, ebx
	js	.label_533
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_535
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_532
.label_535:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_536
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
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
	jne	.label_531
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_531:
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
.label_532:
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
	mov	qword ptr [rsp + 0x20], rcx
	mov	r8d, dword ptr [rcx]
	mov	r12d, dword ptr [rcx + 4]
	or	r12d, 1
	mov	rsp, rsp
	lea	rdx, [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rdx
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
	mov	rdx, qword ptr [rsp + 0x40]
	nop	
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	nop	
	mov	r14, rax
	cmp	r15, r14
	ja	.label_530
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
	je	.label_534
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_534:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	call	xcharalloc
	mov	rbx, rax
	nop	
	mov	qword ptr [rbp], rbx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rcx]
	nop	
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
.label_530:
	mov	rax, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x2c]
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
.label_533:
	lea	rdi, [rdi]
	call	abort
.label_536:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x408df0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408e00
	.globl quotearg
	.type quotearg, @function
quotearg:

	nop
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	rsi, rax
	jmp	quotearg_n
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408e20
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rcx, rdi
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsi, rcx
	lea	rsi, [rsi]
	mov	rdx, rax
	jmp	quotearg_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408e40

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r14
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x40
	mov	rsp, rsp
	mov	rbx, rdx
	mov	ebp, edi
	nop	
	lea	r14, [rsp + 8]
	lea	rdi, [rdi]
	mov	rdi, r14
	call	quoting_options_from_style
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, rbx
	mov	rcx, r14
	call	quotearg_n_options
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ea0

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	mov	rbp, rbp
	sub	rsp, 0x38
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	mov	rbp, rbp
	je	.label_537
	mov	dword ptr [rdi], esi
	nop	
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rdi + 0x34], eax
	lea	rsi, [rsi]
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	nop	
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rdi + 0x24], xmm2
	movups	xmmword ptr [rdi + 0x14], xmm1
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi + 4], xmm0
	lea	rdi, [rdi]
	mov	rax, rdi
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
.label_537:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408f10

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x38
	nop	
	mov	r14, rcx
	lea	rdi, [rdi]
	mov	rbx, rdx
	lea	rsi, [rsi]
	mov	ebp, edi
	lea	rsi, [rsi]
	lea	r15, [rsp]
	nop	
	mov	rdi, r15
	call	quoting_options_from_style
	mov	edi, ebp
	nop	
	mov	rsi, rbx
	nop	
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r14
	nop	
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408f70

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	mov	rax, rsi
	mov	rbp, rbp
	mov	ecx, edi
	xor	edi, edi
	mov	esi, ecx
	mov	rbp, rbp
	mov	rdx, rax
	jmp	quotearg_n_style
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408f90
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	mov	rax, rdx
	mov	rcx, rsi
	lea	rsi, [rsi]
	mov	edx, edi
	xor	edi, edi
	mov	esi, edx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_style_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408fb0

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x40
	mov	eax, edx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rbx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_538]]
	mov	qword ptr [rsp + 0x30], rcx
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_539]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_540]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	lea	r15, [rsp]
	lea	rsi, [rsi]
	mov	edx, 1
	mov	rsp, rsp
	mov	rdi, r15
	mov	esi, eax
	mov	rbp, rbp
	call	set_char_quoting
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsi, rbx
	nop	
	mov	rdx, r14
	mov	rsp, rsp
	mov	rcx, r15
	call	quotearg_n_options
	nop	
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	r15
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409050

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	lea	rdi, [rdi]
	mov	rsi, -1
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rbp, rbp
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409070

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	mov	esi, 0x3a
	mov	rbp, rbp
	jmp	quotearg_char
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409080
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409090

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r14, rdx
	mov	ebp, edi
	lea	rsi, [rsi]
	lea	rbx, [rsp + 8]
	mov	rdi, rbx
	mov	rbp, rbp
	call	quoting_options_from_style
	nop	
	mov	esi, 0x3a
	lea	rdi, [rdi]
	mov	edx, 1
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	call	set_char_quoting
	mov	rdx, -1
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rcx, rbx
	mov	rsp, rsp
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x40
	nop	
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409100

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	lea	rsi, [rsi]
	mov	r8, -1
	nop	
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409110

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	r14, r8
	mov	rbp, rbp
	mov	rbx, rcx
	mov	ebp, edi
	mov	rax,  qword ptr [word ptr [rip + label_538]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_539]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_540]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	rdi, r15
	call	set_custom_quoting
	mov	edi, ebp
	nop	
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rdx, r14
	mov	rcx, r15
	mov	rsp, rsp
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4091a0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	mov	rax, rdx
	mov	rsp, rsp
	mov	rcx, rsi
	mov	rdx, rdi
	nop	
	xor	edi, edi
	mov	rsi, rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	jmp	quotearg_n_custom
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4091d0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	mov	rax, rcx
	mov	rcx, rdx
	mov	rbp, rbp
	mov	rdx, rsi
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	r8, rax
	mov	rsp, rsp
	jmp	quotearg_n_custom_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409200

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409210
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	nop	
	mov	rcx, rdi
	xor	edi, edi
	lea	rdi, [rdi]
	mov	rsi, rcx
	mov	rdx, rax
	lea	rsi, [rsi]
	jmp	quote_n_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409230

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409240

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	quote_n
	.section	.text
	.align	32
	#Procedure 0x409250

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	nop	
	sub	rsp, 0x10
	mov	r14d, esi
	lea	rsi, [rsi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	mov	rbp, rbp
	call	dcgettext
	cmp	rax, rbx
	mov	rsp, rsp
	jne	.label_541
	mov	rsp, rsp
	call	locale_charset
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0
	mov	rsp, rsp
	mov	dword ptr [rsp], 0
	nop	
	mov	esi, 0x55
	mov	rbp, rbp
	mov	edx, 0x54
	mov	rsp, rsp
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	call	strcaseeq0
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_542
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	cmp	ecx, 0x60
	je	.label_541
	nop	
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_541
.label_542:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 8], 0x30
	mov	dword ptr [rsp], 0x33
	lea	rdi, [rdi]
	mov	esi, 0x47
	nop	
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	rbp, rbp
	mov	r8d, 0x38
	mov	rsp, rsp
	mov	r9d, 0x30
	mov	rdi, rbp
	call	strcaseeq0
	test	eax, eax
	mov	rbp, rbp
	je	.label_543
	nop	
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x60
	lea	rdi, [rdi]
	je	.label_541
	mov	eax, OFFSET FLAT:.str.18_0
	jmp	.label_541
.label_543:
	cmp	r14d, 9
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	lea	rsi, [rsi]
	cmove	rax, rcx
.label_541:
	add	rsp, 0x10
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409380

	.globl strcaseeq0
	.type strcaseeq0, @function
strcaseeq0:
	mov	rsp, rsp
	push	rbp
	nop	
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	push	rax
	mov	rbp, rbp
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	nop	
	mov	r13d, edx
	lea	rsi, [rsi]
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	lea	rsi, [rsi]
	call	c_isupper
	movsx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_546
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	lea	rdi, [rdi]
	je	.label_544
	jmp	.label_545
.label_546:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rdi, [rdi]
	jne	.label_545
.label_544:
	mov	rsp, rsp
	mov	eax, 1
	test	bpl, bpl
	mov	rsp, rsp
	je	.label_545
	mov	al, byte ptr [rsp + 0x40]
	movsx	ecx, byte ptr [rsp + 0x48]
	lea	rsi, [rsi]
	mov	dword ptr [rsp], ecx
	movsx	esi, r13b
	movsx	edx, r12b
	nop	
	movsx	ecx, r15b
	nop	
	movsx	r8d, r14b
	mov	rbp, rbp
	movsx	r9d, al
	mov	rdi, rbx
	call	strcaseeq1
.label_545:
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409440

	.globl strcaseeq1
	.type strcaseeq1, @function
strcaseeq1:
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rbp, rbp
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 4], r9d
	lea	rdi, [rdi]
	mov	r15d, r8d
	mov	rbp, rbp
	mov	r12d, ecx
	mov	r13d, edx
	mov	rsp, rsp
	mov	ebp, esi
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	r14b, byte ptr [rsp + 0x40]
	lea	rsi, [rsi]
	mov	edi, ebp
	lea	rdi, [rdi]
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 1]
	nop	
	test	al, al
	mov	rsp, rsp
	je	.label_549
	nop	
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	nop	
	je	.label_548
	lea	rsi, [rsi]
	jmp	.label_547
.label_549:
	lea	rsi, [rsi]
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_547
.label_548:
	lea	rdi, [rdi]
	mov	eax, 1
	test	bpl, bpl
	lea	rdi, [rdi]
	je	.label_547
	nop	
	movsx	esi, r13b
	mov	rbp, rbp
	movsx	edx, r12b
	lea	rdi, [rdi]
	movsx	ecx, r15b
	mov	eax, dword ptr [rsp + 4]
	movsx	r8d, al
	lea	rdi, [rdi]
	movsx	r9d, r14b
	mov	rbp, rbp
	mov	rdi, rbx
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	jmp	strcaseeq2
.label_547:
	add	rsp, 8
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409530

	.globl strcaseeq2
	.type strcaseeq2, @function
strcaseeq2:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	r14d, r9d
	lea	rdi, [rdi]
	mov	r15d, r8d
	mov	rbp, rbp
	mov	r12d, ecx
	mov	r13d, edx
	lea	rsi, [rsi]
	mov	ebp, esi
	mov	rbx, rdi
	nop	
	mov	edi, ebp
	call	c_isupper
	mov	rbp, rbp
	movsx	ecx, byte ptr [rbx + 2]
	test	al, al
	je	.label_552
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_551
	jmp	.label_550
.label_552:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	movzx	edx, bpl
	mov	rsp, rsp
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_550
.label_551:
	nop	
	mov	eax, 1
	lea	rsi, [rsi]
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_550
	lea	rdi, [rdi]
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	jmp	strcaseeq3
.label_550:
	mov	rsp, rsp
	add	rsp, 8
	mov	rbp, rbp
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
	#Procedure 0x409600

	.globl strcaseeq3
	.type strcaseeq3, @function
strcaseeq3:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	r14d, r8d
	mov	r15d, ecx
	mov	rbp, rbp
	mov	r12d, edx
	lea	rdi, [rdi]
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	nop	
	call	c_isupper
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rbx + 3]
	nop	
	test	al, al
	je	.label_555
	lea	rsi, [rsi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_554
	jmp	.label_553
.label_555:
	xor	eax, eax
	mov	rsp, rsp
	movzx	edx, bpl
	movzx	ecx, cl
	nop	
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_553
.label_554:
	lea	rsi, [rsi]
	mov	eax, 1
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_553
	movsx	esi, r12b
	mov	rsp, rsp
	movsx	edx, r15b
	mov	rsp, rsp
	movsx	ecx, r14b
	nop	
	mov	rdi, rbx
	pop	rbx
	nop	
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
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4096a0

	.globl strcaseeq4
	.type strcaseeq4, @function
strcaseeq4:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	r14d, ecx
	lea	rdi, [rdi]
	mov	r15d, edx
	nop	
	mov	ebp, esi
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	edi, ebp
	nop	
	call	c_isupper
	nop	
	movsx	ecx, byte ptr [rbx + 4]
	mov	rbp, rbp
	test	al, al
	mov	rbp, rbp
	je	.label_558
	lea	rdi, [rdi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	mov	rsp, rsp
	je	.label_557
	nop	
	jmp	.label_556
.label_558:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_556
.label_557:
	mov	eax, 1
	test	bpl, bpl
	je	.label_556
	lea	rdi, [rdi]
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	jmp	strcaseeq5
.label_556:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409740

	.globl strcaseeq5
	.type strcaseeq5, @function
strcaseeq5:
	push	rbp
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rsi, [rsi]
	mov	r14d, edx
	mov	rsp, rsp
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 5]
	lea	rsi, [rsi]
	test	al, al
	nop	
	je	.label_561
	mov	rsp, rsp
	and	ecx, 0xffffffdf
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ecx, ebp
	lea	rsi, [rsi]
	je	.label_560
	lea	rsi, [rsi]
	jmp	.label_559
.label_561:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	nop	
	jne	.label_559
.label_560:
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	test	bpl, bpl
	nop	
	je	.label_559
	movsx	esi, r14b
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	rbp
	jmp	strcaseeq6
.label_559:
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4097d0

	.globl strcaseeq6
	.type strcaseeq6, @function
strcaseeq6:
	nop
	push	rbp
	mov	rbp, rbp
	push	rbx
	push	rax
	nop	
	mov	ebp, esi
	nop	
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	mov	rsp, rsp
	movsx	ecx, byte ptr [rbx + 6]
	test	al, al
	mov	rsp, rsp
	je	.label_564
	and	ecx, 0xffffffdf
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_563
	jmp	.label_562
.label_564:
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_562
.label_563:
	mov	eax, 1
	nop	
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_562
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_562:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409840

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	xor	edi, edi
	lea	rsi, [rsi]
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	je	.label_565
	mov	eax, 1
	mov	rsp, rsp
	test	ecx, 0xffffffdf
	lea	rdi, [rdi]
	jne	.label_567
	mov	rbp, rbp
	jmp	.label_566
.label_565:
	mov	eax, 1
	lea	rsi, [rsi]
	test	cl, cl
	je	.label_566
.label_567:
	xor	eax, eax
.label_566:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409890

	.globl renameatu
	.type renameatu, @function
renameatu:
	mov	rsp, rsp
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x128
	mov	rsp, rsp
	mov	r13d, r8d
	mov	rsp, rsp
	mov	r12, rcx
	mov	rbp, rbp
	mov	r14d, edx
	mov	rbp, rbp
	mov	rbp, rsi
	mov	r15d, edi
	nop	
	mov	edi, 0x13c
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	mov	ecx, r14d
	nop	
	mov	r8, r12
	lea	rdi, [rdi]
	mov	r9d, r13d
	lea	rsi, [rsi]
	call	syscall
	mov	rsp, rsp
	mov	rbx, rax
	call	__errno_location
	nop	
	test	ebx, ebx
	jns	.label_568
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0x16
	je	.label_571
	lea	rdi, [rdi]
	cmp	ecx, 0x5f
	je	.label_571
	cmp	ecx, 0x26
	mov	rbp, rbp
	jne	.label_568
.label_571:
	mov	rbp, rbp
	test	r13d, r13d
	je	.label_577
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	cmp	r13d, 2
	jb	.label_579
	nop	
	mov	edi, 0x5f
	mov	rbp, rbp
	jmp	.label_573
.label_577:
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	xor	r13d, r13d
.label_578:
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	strlen
	mov	rbx, rax
	mov	rdi, r12
	lea	rsi, [rsi]
	call	strlen
	lea	rdi, [rdi]
	test	rbx, rbx
	nop	
	je	.label_574
	test	rax, rax
	mov	rbp, rbp
	je	.label_574
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbx + rbp - 1]
	mov	rsp, rsp
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	je	.label_570
	movzx	eax, byte ptr [rax + r12 - 1]
	lea	rdi, [rdi]
	cmp	eax, 0x2f
	lea	rdi, [rdi]
	jne	.label_574
.label_570:
	lea	rdx, [rsp + 0x98]
	mov	rsp, rsp
	mov	edi, r15d
	mov	rsi, rbp
	call	lstatat
	nop	
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_568
	lea	rsi, [rsi]
	test	r13b, r13b
	lea	rdi, [rdi]
	je	.label_572
	lea	rdi, [rdi]
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0xb0]
	cmp	eax, 0x4000
	mov	rbp, rbp
	je	.label_574
	lea	rdi, [rdi]
	mov	edi, 2
	nop	
	jmp	.label_575
.label_579:
	lea	rdx, [rsp + 8]
	mov	edi, r14d
	mov	rsi, r12
	mov	rsp, rsp
	call	lstatat
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_576
	mov	rax, qword ptr [rsp]
	mov	rbp, rbp
	mov	eax, dword ptr [rax]
	mov	r13b, 1
	cmp	eax, 2
	lea	rdi, [rdi]
	je	.label_578
	mov	ebx, 0xffffffff
	cmp	eax, 0x4b
	lea	rsi, [rsi]
	jne	.label_568
.label_576:
	mov	edi, 0x11
.label_573:
	mov	rbp, rbp
	call	errno_fail
	mov	ebx, 0xffffffff
	jmp	.label_568
.label_572:
	lea	rdx, [rsp + 8]
	mov	edi, r14d
	mov	rsi, r12
	nop	
	call	lstatat
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	je	.label_581
	nop	
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax], 2
	mov	rbp, rbp
	jne	.label_568
	mov	rsp, rsp
	mov	eax, 0xf000
	nop	
	and	eax, dword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	cmp	eax, 0x4000
	nop	
	jne	.label_568
	nop	
	jmp	.label_574
.label_581:
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsp + 0x20]
	and	ecx, eax
	lea	rsi, [rsi]
	cmp	ecx, 0x4000
	mov	rsp, rsp
	jne	.label_580
	and	eax, dword ptr [rsp + 0xb0]
	cmp	eax, 0x4000
	jne	.label_569
.label_574:
	mov	rbp, rbp
	mov	edi, r15d
	nop	
	mov	rsi, rbp
	mov	edx, r14d
	mov	rcx, r12
	call	renameat
	nop	
	mov	ebx, eax
.label_568:
	mov	eax, ebx
	mov	rbp, rbp
	add	rsp, 0x128
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r12
	nop	
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
.label_580:
	mov	edi, 0x14
	jmp	.label_575
.label_569:
	mov	edi, 0x15
.label_575:
	lea	rdi, [rdi]
	call	errno_fail
	jmp	.label_568
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409b30

	.globl errno_fail
	.type errno_fail, @function
errno_fail:
	push	rbx
	mov	ebx, edi
	call	__errno_location
	nop	
	mov	dword ptr [rax], ebx
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409b50

	.globl same_name
	.type same_name, @function
same_name:
	nop	
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rcx, rdi
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	nop	
	mov	rsi, rcx
	mov	rcx, rax
	jmp	same_nameat
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409b70

	.globl same_nameat
	.type same_nameat, @function
same_nameat:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	nop	
	push	r13
	lea	rsi, [rsi]
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x138
	lea	rsi, [rsi]
	mov	r15, rcx
	mov	dword ptr [rsp + 0x14], edx
	lea	rsi, [rsi]
	mov	r13, rsi
	mov	r12d, edi
	lea	rdi, [rdi]
	mov	rdi, r13
	lea	rsi, [rsi]
	call	last_component
	nop	
	mov	rbx, rax
	mov	rdi, r15
	call	last_component
	mov	rbp, rax
	mov	rdi, rbx
	call	base_len
	mov	r14, rax
	mov	rdi, rbp
	call	base_len
	lea	rsi, [rsi]
	cmp	r14, rax
	mov	rbp, rbp
	jne	.label_584
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], r15
	lea	rsi, [rsi]
	mov	r15d, dword ptr [rsp + 0x14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, rbp
	mov	rdx, rax
	nop	
	call	memcmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_588
	xor	ebp, ebp
	mov	rsp, rsp
	jmp	.label_582
.label_584:
	xor	ebp, ebp
	mov	rbp, rbp
	jmp	.label_582
.label_588:
	mov	rdi, r13
	mov	rsp, rsp
	call	dir_name
	lea	rdi, [rdi]
	mov	rbp, rax
	lea	rdx, [rsp + 0xa8]
	lea	rsi, [rsi]
	mov	ecx, 0x100
	mov	edi, r12d
	lea	rsi, [rsi]
	mov	rsi, rbp
	call	fstatat
	test	eax, eax
	je	.label_587
	nop	
	call	__errno_location
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_3
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rcx, rbp
	call	error
.label_587:
	mov	rbp, rbp
	mov	rdi, rbp
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	call	dir_name
	mov	rbp, rbp
	mov	rbx, rax
	lea	rdx, [rsp + 0x18]
	nop	
	mov	ecx, 0x100
	mov	edi, r15d
	lea	rsi, [rsi]
	mov	rsi, rbx
	call	fstatat
	test	eax, eax
	je	.label_586
	nop	
	call	__errno_location
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, rbx
	call	error
.label_586:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_583
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xa8]
	nop	
	cmp	rax, qword ptr [rsp + 0x18]
	nop	
	sete	bpl
	jmp	.label_585
.label_583:
	lea	rsi, [rsi]
	xor	ebp, ebp
.label_585:
	mov	rdi, rbx
	call	free
.label_582:
	mov	al, bpl
	lea	rdi, [rdi]
	add	rsp, 0x138
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409d30
	.globl statat
	.type statat, @function
statat:

	lea	rsi, [rsi]
	xor	ecx, ecx
	jmp	fstatat
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409d40

	.globl lstatat
	.type lstatat, @function
lstatat:
	mov	ecx, 0x100
	jmp	fstatat
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409d50

	.globl try_tempname_len
	.type try_tempname_len, @function
try_tempname_len:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	push	r15
	nop	
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r14, r8
	mov	qword ptr [rsp + 0x28], rcx
	mov	qword ptr [rsp + 0x20], rdx
	mov	ebx, esi
	mov	rbp, rbp
	mov	r15, rdi
	nop	
	call	__errno_location
	mov	qword ptr [rsp + 0x30], rax
	nop	
	mov	r12d, dword ptr [rax]
	nop	
	mov	rdi, r15
	call	strlen
	mov	rbp, rax
	lea	rsi, [rsi]
	movsxd	rbx, ebx
	lea	rsi, [rsi]
	lea	rax, [rbx + r14]
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rsp, rsp
	sub	rdi, rax
	mov	rbp, rbp
	jb	.label_591
	nop	
	add	rdi, r15
	mov	rsi, r14
	call	check_x_suffix
	mov	rbp, rbp
	test	al, al
	nop	
	je	.label_591
	mov	dword ptr [rsp + 0xc], r12d
	nop	
	mov	qword ptr [rsp + 0x10], r15
	nop	
	xor	r13d, r13d
	mov	rsp, rsp
	xor	edi, edi
	mov	rsi, r14
	call	randint_all_new
	mov	r15, rax
	mov	r12d, 0xffffffff
	test	r15, r15
	je	.label_594
	sub	rbp, rbx
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	add	rbp, r12
	lea	rsi, [rsi]
	mov	rax, r14
	neg	rax
	mov	qword ptr [rsp + 0x18], rax
	nop	
.label_592:
	test	r14, r14
	nop	
	mov	rbx, qword ptr [rsp + 0x18]
	je	.label_593
	nop	dword ptr [rax + rax]
.label_590:
	mov	rsp, rsp
	mov	esi, 0x3d
	lea	rdi, [rdi]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	randint_genmax
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rax + letters]]
	mov	byte ptr [rbp + rbx], al
	nop	
	inc	rbx
	lea	rdi, [rdi]
	jne	.label_590
.label_593:
	mov	rdi, r12
	mov	rbx, r12
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	call	qword ptr [rsp + 0x28]
	mov	rbp, rbp
	mov	r12d, eax
	test	r12d, r12d
	jns	.label_595
	mov	rax, qword ptr [rsp + 0x30]
	cmp	dword ptr [rax], 0x11
	mov	r12d, 0xffffffff
	mov	rsp, rsp
	jne	.label_589
	mov	rbp, rbp
	inc	r13d
	cmp	r13d, 0x3a2f7
	mov	r12, rbx
	jbe	.label_592
	mov	rdi, r15
	nop	
	call	randint_all_free
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	mov	dword ptr [rax], 0x11
	mov	r12d, 0xffffffff
	mov	rsp, rsp
	jmp	.label_594
.label_591:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x30]
	mov	dword ptr [rax], 0x16
	nop	
	mov	r12d, 0xffffffff
.label_594:
	mov	rbp, rbp
	mov	eax, r12d
	add	rsp, 0x38
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	nop	
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_595:
	mov	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rsp + 0xc]
	mov	dword ptr [rax], ecx
.label_589:
	mov	rbp, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	ebx, dword ptr [rbp]
	lea	rsi, [rsi]
	mov	rdi, r15
	call	randint_all_free
	mov	rbp, rbp
	mov	dword ptr [rbp], ebx
	mov	rsp, rsp
	jmp	.label_594
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409f40

	.globl check_x_suffix
	.type check_x_suffix, @function
check_x_suffix:
	push	rbx
	mov	rbp, rbp
	mov	rbx, rsi
	mov	esi, 0x58
	mov	rbp, rbp
	call	__strspn_c1
	lea	rsi, [rsi]
	cmp	rax, rbx
	lea	rdi, [rdi]
	setae	al
	pop	rbx
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409f70

	.globl gen_tempname_len
	.type gen_tempname_len, @function
gen_tempname_len:
	mov	rbp, rbp
	push	rax
	mov	dword ptr [rsp + 4], edx
	nop	
	cmp	ecx, 3
	jae	.label_596
	lea	rsi, [rsi]
	movsxd	rax, ecx
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_597]]
	lea	rsi, [rsi]
	lea	rdx, [rsp + 4]
	call	try_tempname_len
	pop	rcx
	ret	
.label_596:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str_10
	mov	esi, OFFSET FLAT:.str.1_6
	mov	rsp, rsp
	mov	edx, 0x147
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.gen_tempname_len
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409fc0

	.globl try_file
	.type try_file, @function
try_file:
	mov	esi, dword ptr [rsi]
	and	esi, 0xffffff3c
	lea	rdi, [rdi]
	or	esi, 0xc2
	mov	edx, 0x180
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	jmp	open
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ff0

	.globl try_dir
	.type try_dir, @function
try_dir:
	mov	esi, 0x1c0
	lea	rsi, [rsi]
	jmp	mkdir
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a000

	.globl try_nocreate
	.type try_nocreate, @function
try_nocreate:
	lea	rdi, [rdi]
	sub	rsp, 0x98
	lea	rsi, [rsp + 8]
	lea	rsi, [rsi]
	call	__lstat
	test	eax, eax
	je	.label_599
	lea	rsi, [rsi]
	call	__errno_location
	cmp	dword ptr [rax], 0x4b
	jne	.label_598
.label_599:
	call	__errno_location
	mov	dword ptr [rax], 0x11
.label_598:
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 2
	mov	eax, 0xffffffff
	cmove	eax, ecx
	add	rsp, 0x98
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a050
	.globl gen_tempname
	.type gen_tempname, @function
gen_tempname:

	lea	rdi, [rdi]
	mov	r8d, 6
	jmp	gen_tempname_len
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a060
	.globl try_tempname
	.type try_tempname, @function
try_tempname:

	mov	r8d, 6
	lea	rsi, [rsi]
	jmp	try_tempname_len
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a070

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
	ja	.label_600
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
	jmp	.label_601
.label_600:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_601:
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
	.align	32
	#Procedure 0x40a0e0

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
	je	.label_606
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_11
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_609
.label_606:
	mov	edx, OFFSET FLAT:.str.1_7
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_609:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_3
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
	ja	.label_611
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_602]]
.label_750:
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
.label_611:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_604
.label_751:
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
.label_752:
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
.label_753:
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
	jmp	.label_605
.label_754:
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
	jmp	.label_607
.label_755:
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
	jmp	.label_603
.label_756:
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
.label_603:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_607:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_605:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_610
.label_758:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_604:
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
	jmp	.label_608
.label_757:
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
.label_608:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_610:
	mov	rbp, rbp
	call	__fprintf_chk
.label_749:
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
	.align	32
	#Procedure 0x40a4d0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_612:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_612
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a500

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_616:
	nop	
	movsxd	r10, dword ptr [r8]
	lea	rdi, [rdi]
	cmp	r10, 0x28
	ja	.label_613
	mov	r11, r10
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	rbp, rbp
	mov	dword ptr [r8], eax
	mov	rsp, rsp
	jmp	.label_615
	nop	word ptr cs:[rax + rax]
.label_613:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_615:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_614
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_616
.label_614:
	lea	rdi, [rdi]
	lea	r8, [rsp]
	mov	rsp, rsp
	call	version_etc_arn
	add	rsp, 0x58
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a590

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	nop	
	je	.label_617
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x30], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x40], xmm1
	nop	
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	nop	
	movaps	xmmword ptr [rsp + 0x70], xmm4
	nop	
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_617:
	mov	qword ptr [rsp + 0x28], r9
	nop	
	mov	qword ptr [rsp + 0x20], r8
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	mov	rbp, rbp
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], 0x20
	lea	r8, [rsp + 0xb0]
	mov	rsp, rsp
	call	version_etc_va
	lea	rdi, [rdi]
	add	rsp, 0xc8
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a640
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
	mov	edx, OFFSET FLAT:.str.15_1
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
	.align	32
	#Procedure 0x40a6d0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rsp, rsp
	div	rsi
	mov	rbp, rbp
	cmp	rax, rdi
	mov	rbp, rbp
	jb	.label_618
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_618:
	nop	
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a710

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_619
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_620
.label_619:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_620:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a740
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	lea	rdi, [rdi]
	mov	rcx, rdx
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	edx, edx
	nop	
	div	rcx
	cmp	rax, rsi
	mov	rbp, rbp
	jb	.label_621
	imul	rcx, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	jmp	xrealloc
.label_621:
	push	rax
	mov	rsp, rsp
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a780

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_622
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_622
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_622:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_623
	test	rax, rax
	nop	
	je	.label_624
.label_623:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_624:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a7d0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	nop	
	mov	r8, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_625
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_626
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_627
.label_625:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_628
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_628:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_629
.label_627:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	r8, rcx
	nop	
	mov	rsi, r8
	mov	rbp, rbp
	pop	rax
	lea	rdi, [rdi]
	jmp	xrealloc
.label_626:
	call	xalloc_die
.label_629:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a870

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	jmp	xmalloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a880
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	mov	rsp, rsp
	jmp	x2nrealloc
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a890
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	r14, rdi
	nop	
	call	xmalloc
	mov	rbx, rax
	xor	esi, esi
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rdx, r14
	call	memset
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a8d0
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
	jb	.label_630
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_630
	pop	rcx
	ret	
.label_630:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a900

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	rbx
	nop	
	mov	r15, rsi
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rdi, r15
	call	xmalloc
	mov	rsp, rsp
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, r15
	lea	rdi, [rdi]
	call	memcpy
	mov	rax, rbx
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a950

	.globl xstrdup
	.type xstrdup, @function
xstrdup:
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	rsp, rsp
	call	strlen
	lea	rsi, [rax + 1]
	mov	rdi, rbx
	mov	rbp, rbp
	pop	rbx
	jmp	xmemdup
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a970

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_8
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
	.align	32
	#Procedure 0x40a9c0

	.globl xgetcwd
	.type xgetcwd, @function
xgetcwd:
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	xor	edi, edi
	xor	esi, esi
	mov	rbp, rbp
	call	getcwd
	mov	rbp, rbp
	mov	rbx, rax
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rsi, [rsi]
	jne	.label_631
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	mov	rsp, rsp
	je	.label_632
.label_631:
	mov	rbp, rbp
	mov	rax, rbx
	nop	
	pop	rbx
	mov	rbp, rbp
	ret	
.label_632:
	mov	rbp, rbp
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40aa10

	.globl yesno
	.type yesno, @function
yesno:
	push	rbx
	sub	rsp, 0x10
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [rsp], 0
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + stdin]]
	mov	rsp, rsp
	lea	rdi, [rsp + 8]
	lea	rsi, [rsp]
	call	getline
	test	rax, rax
	jle	.label_633
	mov	rcx, qword ptr [rsp + 8]
	movzx	edx, byte ptr [rax + rcx - 1]
	lea	rdi, [rdi]
	cmp	edx, 0xa
	jne	.label_634
	mov	rsp, rsp
	mov	byte ptr [rcx + rax - 1], 0
.label_634:
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, rbp
	call	rpmatch
	test	eax, eax
	mov	rbp, rbp
	setg	bl
	jmp	.label_635
.label_633:
	mov	rsp, rsp
	xor	ebx, ebx
.label_635:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	al, bl
	add	rsp, 0x10
	nop	
	pop	rbx
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40aa90

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_636
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_637
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
	je	.label_637
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
.label_636:
	mov	ecx, 1
.label_637:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ab00

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_638
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_638
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_638:
	mov	rsp, rsp
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ab30

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	jne	.label_639
	mov	rbp, rbp
	ret	
.label_639:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, 1
	lea	rdi, [rdi]
	jmp	rpl_fseeko
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ab50

	.globl freadahead
	.type freadahead, @function
freadahead:
	mov	rcx, qword ptr [rdi + 0x28]
	nop	
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	nop	
	ja	.label_640
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x10]
	sub	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	nop	
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	je	.label_641
	mov	rcx, qword ptr [rdi + 0x58]
	sub	rcx, qword ptr [rdi + 0x48]
.label_641:
	lea	rdi, [rdi]
	add	rax, rcx
.label_640:
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ab90

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
	jne	.label_642
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_642
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_643
.label_642:
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
.label_643:
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
	je	.label_644
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_644:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ac40

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
	je	.label_645
	nop	
	cmp	r15, -2
	jb	.label_645
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_645
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_645:
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
	.align	32
	#Procedure 0x40acd0

	.globl areadlink_with_size
	.type areadlink_with_size, @function
areadlink_with_size:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	nop	
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x18
	nop	
	mov	qword ptr [rsp + 0x10], rdi
	lea	rsi, [rsi]
	cmp	rsi, 0x401
	lea	rax, [rsi + 1]
	mov	r12d, 0x401
	mov	rbp, rbp
	cmovb	r12, rax
	mov	rdi, r12
	lea	rdi, [rdi]
	call	malloc
	mov	rbx, rax
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_649
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	movabs	r15, 0x7fffffffffffffff
	nop	word ptr cs:[rax + rax]
.label_650:
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rdx, r12
	lea	rsi, [rsi]
	call	readlink
	mov	r13, rax
	nop	
	test	r13, r13
	mov	rbp, rbp
	jns	.label_652
	call	__errno_location
	nop	
	mov	rbp, rax
	mov	rbp, rbp
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	mov	rsp, rsp
	jne	.label_654
.label_652:
	mov	rsp, rsp
	cmp	r13, r12
	nop	
	jb	.label_648
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	mov	rax, r12
	mov	rsp, rsp
	shr	rax, 0x3e
	mov	rbp, rbp
	jne	.label_651
	add	r12, r12
	nop	
	jmp	.label_653
	nop	dword ptr [rax + rax]
.label_651:
	cmp	r12, r15
	mov	rsp, rsp
	mov	r12, r15
	jae	.label_646
.label_653:
	mov	rsp, rsp
	mov	rdi, r12
	mov	rbp, rbp
	call	malloc
	mov	rbp, rbp
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_650
	mov	rsp, rsp
	jmp	.label_649
.label_648:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp + 8], rbx
	jmp	.label_649
.label_646:
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	jmp	.label_647
.label_654:
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	call	free
	mov	dword ptr [rbp], r14d
.label_647:
	mov	rbp, rbp
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
.label_649:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ae50

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	jmp	usage
	.section	.text
	.align	32
	#Procedure 0x40ae60

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	nop	
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rsp, rsp
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	r13, rcx
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rbp
	lea	rsi, [rsi]
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_660
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], -1
	nop	
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, r14
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_658:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	strncmp
	test	eax, eax
	jne	.label_656
	mov	rdi, r15
	mov	rsp, rsp
	call	strlen
	mov	rbp, rbp
	cmp	rax, rbx
	lea	rsi, [rsi]
	je	.label_655
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_659
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	test	rax, rax
	je	.label_661
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x18]
	imul	rdi, r13
	lea	rdi, [rdi]
	add	rdi, rax
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, r13
	lea	rdi, [rdi]
	call	memcmp
	test	eax, eax
	je	.label_656
.label_661:
	mov	rsp, rsp
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_656
.label_659:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rbp
	nop	dword ptr [rax + rax]
.label_656:
	nop	
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	lea	rsi, [rsi]
	inc	rbp
	add	r14, r13
	test	r15, r15
	nop	
	jne	.label_658
	lea	rsi, [rsi]
	jmp	.label_657
.label_660:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], -1
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x10], rax
.label_657:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	mov	rsp, rsp
	cmove	rbp, qword ptr [rsp + 0x18]
.label_655:
	mov	rax, rbp
	add	rsp, 0x28
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40afe0

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	mov	rbp, rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r15, rsi
	lea	rdi, [rdi]
	mov	r14, rdi
	xor	edi, edi
	cmp	rdx, -1
	je	.label_662
	mov	esi, OFFSET FLAT:.str.1_9
	nop	
	jmp	.label_663
.label_662:
	nop	
	mov	esi, OFFSET FLAT:.str_12
.label_663:
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 8
	lea	rsi, [rsi]
	mov	rdx, r15
	call	quotearg_n_style
	nop	
	mov	r15, rax
	mov	edi, 1
	lea	rsi, [rsi]
	mov	rsi, r14
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r15
	nop	
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rsi, [rsi]
	jmp	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b080

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	mov	rsp, rsp
	push	rbp
	push	r15
	nop	
	push	r14
	nop	
	push	r13
	push	r12
	push	rbx
	nop	
	push	rax
	mov	r14, rdx
	mov	rsp, rsp
	mov	r13, rsi
	mov	r15, rdi
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.2_4
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rsp, rsp
	mov	rbx, qword ptr [r15]
	lea	rsi, [rsi]
	test	rbx, rbx
	nop	
	je	.label_664
	xor	r12d, r12d
	lea	rdi, [rdi]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_665:
	test	rbp, rbp
	je	.label_667
	mov	rbp, rbp
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_666
.label_667:
	lea	rsi, [rsi]
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.3_2
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_668
	nop	
.label_666:
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	quote
	mov	rsp, rsp
	mov	rcx, rax
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.4_1
	xor	eax, eax
	mov	rdi, qword ptr [rsp]
	call	__fprintf_chk
.label_668:
	mov	rsp, rsp
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	mov	rsp, rsp
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	lea	rsi, [rsi]
	jne	.label_665
.label_664:
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	jmp	putc_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b1d0

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	r14, r9
	lea	rsi, [rsi]
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rsp, rsp
	mov	rdx, r12
	mov	rcx, r15
	lea	rdi, [rdi]
	call	argmatch
	mov	rsp, rsp
	test	rax, rax
	jns	.label_669
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rdx, rax
	call	argmatch_invalid
	mov	rdi, r13
	mov	rsp, rsp
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, r15
	call	argmatch_valid
	mov	rsp, rsp
	call	r14
	lea	rsi, [rsi]
	mov	rax, -1
.label_669:
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	nop	
	pop	r14
	nop	
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b270
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rbp, rbp
	push	rbx
	nop	
	mov	r14, rcx
	mov	r15, rdx
	lea	rdi, [rdi]
	mov	rbx, rsi
	nop	
	mov	r12, rdi
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	xor	eax, eax
	mov	rsp, rsp
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_670
	lea	rsi, [rsi]
	add	rbx, 8
	nop	dword ptr [rax]
.label_671:
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, r15
	nop	
	mov	rdx, r14
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	mov	rax, r13
	nop	
	je	.label_670
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	mov	rbp, rbp
	test	r13, r13
	mov	eax, 0
	jne	.label_671
.label_670:
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b300
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	rsp, rsp
	mov	cl, sil
	rol	rdi, cl
	mov	rax, rdi
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b310
	.globl rotr64
	.type rotr64, @function
rotr64:

	mov	cl, sil
	ror	rdi, cl
	lea	rdi, [rdi]
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b320
	.globl rotl32
	.type rotl32, @function
rotl32:

	lea	rdi, [rdi]
	mov	cl, sil
	rol	edi, cl
	mov	eax, edi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b330
	.globl rotr32
	.type rotr32, @function
rotr32:

	nop
	mov	cl, sil
	ror	edi, cl
	mov	eax, edi
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b340
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	mov	cl, sil
	mov	rbp, rbp
	rol	rdi, cl
	mov	rax, rdi
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b350

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	mov	cl, sil
	ror	rdi, cl
	mov	rax, rdi
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b360
	.globl rotl16
	.type rotl16, @function
rotl16:

	mov	eax, edi
	mov	cl, sil
	shl	eax, cl
	lea	rsi, [rsi]
	mov	ecx, 0x10
	mov	rsp, rsp
	sub	ecx, esi
	mov	rbp, rbp
	shr	edi, cl
	or	edi, eax
	mov	rbp, rbp
	movzx	eax, di
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b390
	.globl rotr16
	.type rotr16, @function
rotr16:

	mov	rbp, rbp
	mov	eax, edi
	mov	cl, sil
	shr	eax, cl
	lea	rdi, [rdi]
	mov	ecx, 0x10
	mov	rsp, rsp
	sub	ecx, esi
	shl	edi, cl
	lea	rsi, [rsi]
	or	edi, eax
	movzx	eax, di
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b3c0
	.globl rotl8
	.type rotl8, @function
rotl8:

	mov	rbp, rbp
	mov	eax, edi
	nop	
	mov	cl, sil
	mov	rsp, rsp
	shl	eax, cl
	mov	rsp, rsp
	mov	ecx, 8
	sub	ecx, esi
	nop	
	shr	edi, cl
	lea	rdi, [rdi]
	or	edi, eax
	movzx	eax, dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b3f0
	.globl rotr8
	.type rotr8, @function
rotr8:

	mov	eax, edi
	mov	rsp, rsp
	mov	cl, sil
	nop	
	shr	eax, cl
	mov	rsp, rsp
	mov	ecx, 8
	lea	rsi, [rsi]
	sub	ecx, esi
	lea	rdi, [rdi]
	shl	edi, cl
	or	edi, eax
	movzx	eax, dil
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b420
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
	#Procedure 0x40b450
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
	#Procedure 0x40b470
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b480
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
	#Procedure 0x40b490
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
	#Procedure 0x40b4b0
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
	#Procedure 0x40b4c0
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
	#Procedure 0x40b4d0
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
	#Procedure 0x40b4e0
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
	#Procedure 0x40b4f0
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
	#Procedure 0x40b520
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
	#Procedure 0x40b540

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
	#Procedure 0x40b550
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
	#Procedure 0x40b570
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
	#Procedure 0x40b580
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
	#Procedure 0x40b590

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
	mov	rdi, rbx
	mov	rbp, rbp
	call	ferror_unlocked
	mov	ebp, eax
	mov	rdi, rbx
	nop	
	call	rpl_fclose
	mov	rbp, rbp
	test	ebp, ebp
	nop	
	je	.label_682
	mov	ebx, 0xffffffff
	mov	rbp, rbp
	test	eax, eax
	jne	.label_681
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	jmp	.label_681
.label_682:
	test	eax, eax
	mov	rbp, rbp
	sete	cl
	neg	eax
	nop	
	sbb	ebx, ebx
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_681
	test	cl, cl
	jne	.label_681
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	nop	
	cmove	ebx, ecx
.label_681:
	mov	rsp, rsp
	mov	eax, ebx
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b630

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
	je	.label_684
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_683
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_685
.label_683:
	nop	
	mov	esi, OFFSET FLAT:.str.1_10
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_684
.label_685:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_684:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b680

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	lea	rsi, [rsi]
	mov	cl, byte ptr [rdi]
	xor	eax, eax
	test	cl, cl
	je	.label_686
	mov	rbp, rbp
	inc	rdi
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_687:
	movsx	rcx, cl
	rol	rax, 9
	add	rax, rcx
	lea	rdi, [rdi]
	mov	cl, byte ptr [rdi]
	mov	rbp, rbp
	inc	rdi
	test	cl, cl
	mov	rsp, rsp
	jne	.label_687
.label_686:
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b6d0

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
	mov	ecx, OFFSET FLAT:.str_0
	nop	
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_11
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_688
	nop	
	mov	rax, rcx
.label_688:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b710

	.globl randint_new
	.type randint_new, @function
randint_new:
	push	rbx
	mov	rbp, rbp
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	edi, 0x18
	nop	
	call	xmalloc
	nop	
	mov	qword ptr [rax], rbx
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 8], xmm0
	mov	rbp, rbp
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b740

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	lea	rsi, [rsi]
	push	rax
	call	randread_new
	test	rax, rax
	je	.label_689
	lea	rdi, [rdi]
	mov	rdi, rax
	pop	rax
	mov	rsp, rsp
	jmp	randint_new
.label_689:
	xor	eax, eax
	pop	rcx
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b770
	.globl randint_get_source
	.type randint_get_source, @function
randint_get_source:

	nop
	mov	rax, qword ptr [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b780

	.globl randint_genmax
	.type randint_genmax, @function
randint_genmax:
	nop	
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	r13
	push	r12
	nop	
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x28
	lea	rsi, [rsi]
	mov	r13, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rdi
	mov	rax, qword ptr [rdi]
	mov	qword ptr [rsp + 0x18], rax
	mov	rbp, rbp
	mov	r15, qword ptr [rdi + 8]
	lea	rax, [rdi + 8]
	nop	
	mov	qword ptr [rsp], rax
	mov	rbx, qword ptr [rdi + 0x10]
	mov	rsp, rsp
	lea	rbp, [r13 + 1]
	nop	
	mov	qword ptr [rsp + 0x10], rbp
	lea	r12, [rsp + 0x20]
	nop	word ptr cs:[rax + rax]
.label_695:
	cmp	rbx, r13
	jae	.label_690
	lea	rsi, [rsi]
	mov	rax, rbx
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_694:
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	shift_left
	lea	rdi, [rdi]
	add	rax, 0xff
	inc	r14
	lea	rdi, [rdi]
	cmp	rax, r13
	jb	.label_694
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r12
	mov	rsp, rsp
	mov	rdx, r14
	mov	rsp, rsp
	call	randread
	mov	rbp, r12
	nop	
.label_696:
	mov	rdi, r15
	call	shift_left
	nop	
	movzx	r15d, byte ptr [rbp]
	nop	
	add	r15, rax
	mov	rdi, rbx
	call	shift_left
	mov	rbx, rax
	add	rbx, 0xff
	lea	rdi, [rdi]
	inc	rbp
	lea	rsi, [rsi]
	cmp	rbx, r13
	jb	.label_696
	mov	rcx, r15
	nop	
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	jmp	.label_693
.label_690:
	nop	
	mov	rcx, r15
.label_693:
	mov	rsp, rsp
	mov	rsi, rbx
	sub	rsi, r13
	lea	rsi, [rsi]
	je	.label_692
	mov	rbp, rbp
	xor	edx, edx
	mov	rax, rsi
	div	rbp
	mov	rdi, rdx
	sub	rbx, rdi
	xor	edx, edx
	mov	rax, rcx
	div	rbp
	mov	r15, rdx
	mov	rbp, rbp
	dec	rdi
	cmp	rcx, rbx
	mov	rbx, rdi
	lea	rsi, [rsi]
	ja	.label_695
	xor	edx, edx
	mov	rax, rcx
	mov	rsp, rsp
	div	rbp
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx + 8], rax
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, rsi
	mov	rbp, rbp
	div	rbp
	nop	
	mov	qword ptr [rcx + 0x10], rax
	nop	
	mov	rcx, r15
	mov	rsp, rsp
	jmp	.label_691
.label_692:
	mov	rbp, rbp
	xorps	xmm0, xmm0
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	rbp, rbp
	movups	xmmword ptr [rax], xmm0
.label_691:
	mov	rax, rcx
	add	rsp, 0x28
	mov	rbp, rbp
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
	#Procedure 0x40b920

	.globl shift_left
	.type shift_left, @function
shift_left:
	mov	rbp, rbp
	shl	rdi, 8
	mov	rax, rdi
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b930

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
	#Procedure 0x40b950

	.globl randint_all_free
	.type randint_all_free, @function
randint_all_free:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	randread_free
	lea	rsi, [rsi]
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	randint_free
	mov	dword ptr [rbp], r15d
	mov	rbp, rbp
	mov	eax, r14d
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b9a0

	.globl randread_new
	.type randread_new, @function
randread_new:
	mov	rbp, rbp
	push	r15
	nop	
	push	r14
	lea	rsi, [rsi]
	push	r12
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rbp, rbp
	mov	r15, rsi
	mov	rbp, rbp
	mov	rbx, rdi
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_697
	mov	rsp, rsp
	test	rbx, rbx
	nop	
	je	.label_698
	mov	esi, OFFSET FLAT:.str_13
	mov	rdi, rbx
	call	fopen_safer
	nop	
	mov	r12, rax
	mov	rsp, rsp
	xor	r14d, r14d
	lea	rdi, [rdi]
	test	r12, r12
	nop	
	je	.label_699
	lea	rsi, [rsi]
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rsi, rbx
	nop	
	call	simple_new
	mov	r14, rax
	lea	rsi, [r14 + 0x18]
	lea	rdi, [rdi]
	cmp	r15, 0x1000
	lea	rdi, [rdi]
	mov	ecx, 0x1000
	mov	rsp, rsp
	cmovbe	rcx, r15
	xor	edx, edx
	mov	rsp, rsp
	mov	rdi, r12
	call	setvbuf
	jmp	.label_699
.label_697:
	xor	edi, edi
	xor	esi, esi
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r12
	pop	r14
	mov	rsp, rsp
	pop	r15
	jmp	simple_new
.label_698:
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rbp, rbp
	call	simple_new
	lea	rdi, [rdi]
	mov	r14, rax
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x18], 0
	mov	rbx, r14
	mov	rsp, rsp
	add	rbx, 0x20
	mov	rdi, rbx
	mov	rsi, r15
	mov	rsp, rsp
	call	get_nonce
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	isaac_seed
.label_699:
	mov	rbp, rbp
	mov	rax, r14
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bab0

	.globl simple_new
	.type simple_new, @function
simple_new:
	push	r14
	nop	
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	edi, 0x1038
	call	xmalloc
	lea	rsi, [rsi]
	mov	qword ptr [rax], rbx
	mov	qword ptr [word ptr [rax + 8]], OFFSET FLAT:randread_error
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x10], r14
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bb00

	.globl get_nonce
	.type get_nonce, @function
get_nonce:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	nop	
	push	r14
	push	rbx
	sub	rsp, 0x18
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rbp, rbp
	mov	r14, rdi
	xor	r15d, r15d
	mov	edi, OFFSET FLAT:.str.3_3
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	call	open
	nop	
	mov	ebp, eax
	test	ebp, ebp
	js	.label_701
	cmp	rbx, 0x800
	mov	edx, 0x800
	lea	rdi, [rdi]
	cmovbe	rdx, rbx
	lea	rdi, [rdi]
	mov	edi, ebp
	mov	rbp, rbp
	mov	rsi, r14
	call	read
	mov	rbx, rax
	nop	
	mov	edi, ebp
	mov	rsp, rsp
	call	close
	xor	r15d, r15d
	nop	
	test	rbx, rbx
	mov	rsp, rsp
	js	.label_701
	mov	rbp, rbp
	cmp	rbx, 0x7ff
	mov	r15, rbx
	mov	rsp, rsp
	ja	.label_700
.label_701:
	mov	eax, 0x800
	mov	rsp, rsp
	sub	rax, r15
	mov	rbp, rbp
	cmp	rax, 0x10
	mov	ebx, 0x10
	cmovbe	rbx, rax
	lea	rbp, [rsp + 8]
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	gettimeofday
	lea	rdi, [r14 + r15]
	mov	rsi, rbp
	mov	rdx, rbx
	call	memcpy
	add	rbx, r15
	cmp	rbx, 0x7ff
	mov	rsp, rsp
	ja	.label_700
	lea	rdi, [rdi]
	mov	eax, 0x800
	lea	rdi, [rdi]
	sub	rax, rbx
	cmp	rax, 4
	lea	rsi, [rsi]
	mov	r15d, 4
	mov	rsp, rsp
	cmovbe	r15, rax
	lea	rsi, [rsi]
	call	getpid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp + 8]
	mov	rbp, rbp
	mov	rdx, r15
	call	memcpy
	add	r15, rbx
	nop	
	cmp	r15, 0x7ff
	mov	rbp, rbp
	ja	.label_700
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getppid
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + r15]
	lea	rdi, [rdi]
	lea	rsi, [rsp + 8]
	nop	
	mov	rdx, rbx
	call	memcpy
	add	rbx, r15
	cmp	rbx, 0x7ff
	ja	.label_700
	mov	eax, 0x800
	sub	rax, rbx
	lea	rsi, [rsi]
	cmp	rax, 4
	nop	
	mov	r15d, 4
	mov	rbp, rbp
	cmovbe	r15, rax
	lea	rdi, [rdi]
	call	getuid
	mov	rsp, rsp
	mov	dword ptr [rsp + 8], eax
	mov	rbp, rbp
	lea	rdi, [r14 + rbx]
	mov	rsp, rsp
	lea	rsi, [rsp + 8]
	mov	rsp, rsp
	mov	rdx, r15
	lea	rdi, [rdi]
	call	memcpy
	add	r15, rbx
	mov	rsp, rsp
	cmp	r15, 0x7ff
	ja	.label_700
	lea	rdi, [rdi]
	mov	eax, 0x800
	lea	rsi, [rsi]
	sub	rax, r15
	cmp	rax, 4
	mov	rbp, rbp
	mov	ebx, 4
	lea	rsi, [rsi]
	cmovbe	rbx, rax
	nop	
	call	getgid
	mov	dword ptr [rsp + 8], eax
	nop	
	add	r14, r15
	mov	rsp, rsp
	lea	rsi, [rsp + 8]
	nop	
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	memcpy
.label_700:
	nop	
	add	rsp, 0x18
	pop	rbx
	pop	r14
	nop	
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bd30
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	rsp, rsp
	mov	qword ptr [rdi + 8], rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bd40
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	mov	qword ptr [rdi + 0x10], rsi
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bd50

	.globl randread
	.type randread, @function
randread:
	mov	rsp, rsp
	cmp	qword ptr [rdi], 0
	mov	rsp, rsp
	je	.label_702
	nop	
	jmp	readsource
.label_702:
	add	rdi, 0x18
	nop	
	jmp	readisaac
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40bd70

	.globl readsource
	.type readsource, @function
readsource:
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	r13, rdx
	nop	
	mov	r14, rsi
	nop	
	mov	r15, rdi
	mov	rcx, qword ptr [r15]
	mov	rbp, rbp
	mov	esi, 1
	mov	rbp, rbp
	mov	rdi, r14
	call	fread_unlocked
	mov	rbp, rbp
	mov	rbx, rax
	lea	rsi, [rsi]
	call	__errno_location
	mov	r12, rax
	mov	rbp, rbp
	cmp	rbx, r13
	nop	
	je	.label_704
	nop	word ptr [rax + rax]
.label_703:
	lea	rsi, [rsi]
	sub	r13, rbx
	mov	rbp, rbp
	add	r14, rbx
	nop	
	mov	ebx, dword ptr [r12]
	mov	rdi, qword ptr [r15]
	lea	rdi, [rdi]
	call	ferror_unlocked
	test	eax, eax
	cmove	ebx, eax
	mov	dword ptr [r12], ebx
	mov	rdi, qword ptr [r15 + 0x10]
	call	qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	lea	rdi, [rdi]
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rdx, r13
	nop	
	call	fread_unlocked
	mov	rbp, rbp
	mov	rbx, rax
	cmp	r13, rbx
	jne	.label_703
.label_704:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40be30

	.globl readisaac
	.type readisaac, @function
readisaac:
	push	rbp
	push	r15
	nop	
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	nop	
	push	rax
	lea	rdi, [rdi]
	mov	r15, rdx
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	r14, rdi
	mov	r12, qword ptr [r14]
	mov	rsp, rsp
	lea	r13, [r14 + 0x820]
	mov	rsi, r13
	nop	
	sub	rsi, r12
	lea	rsi, [rsi]
	add	rsi, 0x800
	cmp	r12, r15
	jae	.label_706
	nop	
	lea	rbp, [r14 + 8]
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rdx, r12
	call	memcpy
	lea	rsi, [rsi]
	add	rbx, r12
	lea	rdi, [rdi]
	sub	r15, r12
	mov	rbp, rbp
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_707:
	cmp	r15, 0x800
	jb	.label_705
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rsi, rbx
	call	isaac_refill
	lea	rsi, [rsi]
	add	rbx, 0x800
	mov	rbp, rbp
	add	r15, -0x800
	lea	rsi, [rsi]
	jne	.label_707
	jmp	.label_708
.label_705:
	lea	rdi, [rdi]
	mov	rdi, rbp
	nop	
	mov	rsi, r13
	call	isaac_refill
	nop	
	mov	r12d, 0x800
	mov	rsi, r13
.label_706:
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rdx, r15
	nop	
	call	memcpy
	mov	rsp, rsp
	sub	r12, r15
.label_708:
	mov	qword ptr [r14], r12
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	nop	
	pop	r12
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40bf20

	.globl randread_free
	.type randread_free, @function
randread_free:
	mov	rsp, rsp
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	esi, 0x1038
	nop	
	call	explicit_bzero
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	free
	mov	rbp, rbp
	test	r14, r14
	je	.label_709
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r14
	jmp	rpl_fclose
.label_709:
	xor	eax, eax
	nop	
	add	rsp, 8
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r14
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40bf70

	.globl randread_error
	.type randread_error, @function
randread_error:
	mov	rsp, rsp
	push	rbp
	nop	
	push	r15
	nop	
	push	r14
	push	rbx
	push	rax
	nop	
	mov	rbx, rdi
	test	rbx, rbx
	nop	
	je	.label_710
	mov	rsp, rsp
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	lea	rsi, [rsi]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	lea	rdi, [rdi]
	jne	.label_712
	mov	esi, OFFSET FLAT:.str.1_12
	jmp	.label_711
.label_712:
	mov	esi, OFFSET FLAT:.str.2_5
.label_711:
	mov	rsp, rsp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	nop	
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, r14d
	mov	esi, r15d
	lea	rsi, [rsi]
	mov	rdx, rbp
	mov	rbp, rbp
	call	error
.label_710:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c000

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	push	rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	nop	
	sub	rsp, 0x18
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rsi
	mov	r14, rdi
	mov	rbx, qword ptr [r14 + 0x800]
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x810]
	mov	rbp, rbp
	inc	rax
	mov	r12, qword ptr [r14 + 0x808]
	add	r12, rax
	mov	qword ptr [r14 + 0x810], rax
	nop	
	lea	rax, [r14 + 0x400]
	mov	qword ptr [rsp], rax
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	r15, r14
	nop	dword ptr [rax]
.label_713:
	mov	qword ptr [rsp + 0x10], rbp
	lea	rsi, [rsi]
	mov	r13, rbx
	shl	r13, 0x15
	xor	r13, rbx
	not	r13
	add	r13, qword ptr [r15 + 0x400]
	mov	rbx, qword ptr [r15]
	mov	rdi, r14
	nop	
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	ind
	lea	rdi, [rdi]
	add	rax, r12
	lea	rdi, [rdi]
	add	rax, r13
	mov	qword ptr [r15], rax
	lea	rsi, [rsi]
	shr	rax, 8
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, rax
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	mov	rsp, rsp
	call	just
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	lea	rdi, [rdi]
	mov	rdi, r13
	call	just
	mov	rsp, rsp
	mov	rbp, rax
	lea	rdi, [rdi]
	shr	rbp, 5
	lea	rdi, [rdi]
	xor	rbp, r13
	nop	
	add	rbp, qword ptr [r15 + 0x408]
	nop	
	mov	r12, qword ptr [r15 + 8]
	mov	rdi, r14
	mov	rsi, r12
	call	ind
	mov	rbp, rbp
	add	rbx, rbp
	add	rbx, rax
	mov	qword ptr [r15 + 8], rbx
	mov	rbp, rbp
	shr	rbx, 8
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	ind
	add	r12, rax
	lea	rsi, [rsi]
	mov	rdi, r12
	call	just
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rbx
	mov	r12, rbp
	shl	r12, 0xc
	xor	r12, rbp
	add	r12, qword ptr [r15 + 0x410]
	mov	rbp, rbp
	mov	rbp, qword ptr [r15 + 0x10]
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	rbx, r12
	add	rbx, rax
	mov	qword ptr [r15 + 0x10], rbx
	shr	rbx, 8
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rbp, rbp
	call	ind
	add	rbp, rax
	mov	rdi, rbp
	call	just
	mov	rsp, rsp
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 0x10], rbp
	nop	
	mov	rdi, r12
	mov	rbp, rbp
	call	just
	mov	rbx, rax
	nop	
	shr	rbx, 0x21
	lea	rsi, [rsi]
	xor	rbx, r12
	add	rbx, qword ptr [r15 + 0x418]
	lea	rsi, [rsi]
	mov	r12, qword ptr [r15 + 0x18]
	mov	rdi, r14
	mov	rsi, r12
	nop	
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r15 + 0x18], rbp
	shr	rbp, 8
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, rbp
	mov	rbp, qword ptr [rsp + 0x10]
	call	ind
	nop	
	add	r12, rax
	nop	
	mov	rdi, r12
	lea	rsi, [rsi]
	call	just
	mov	rcx, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	r12, rax
	mov	qword ptr [rbp + 0x18], r12
	lea	rdi, [rdi]
	add	r15, 0x20
	add	rbp, 0x20
	cmp	r15, rcx
	jb	.label_713
	add	qword ptr [rsp + 8], 0x400
	lea	rax, [r14 + 0x800]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	nop	
.label_714:
	nop	
	mov	r13, rbx
	shl	r13, 0x15
	nop	
	xor	r13, rbx
	not	r13
	add	r13, qword ptr [rcx - 0x400]
	mov	rsp, rsp
	mov	rbx, qword ptr [rcx]
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsi, rbx
	mov	r15, rcx
	call	ind
	mov	rsp, rsp
	add	rax, r12
	add	rax, r13
	mov	qword ptr [r15], rax
	shr	rax, 8
	mov	rdi, r14
	mov	rsi, rax
	nop	
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rsp, rsp
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax], rbp
	mov	rdi, r13
	lea	rsi, [rsi]
	call	just
	mov	rbx, rax
	shr	rbx, 5
	lea	rdi, [rdi]
	xor	rbx, r13
	mov	rbp, rbp
	add	rbx, qword ptr [r15 - 0x3f8]
	nop	
	mov	r12, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, r12
	nop	
	call	ind
	add	rbp, rbx
	add	rbp, rax
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 8], rbp
	mov	rsp, rsp
	shr	rbp, 8
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, rbp
	call	ind
	lea	rsi, [rsi]
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	rbp, rax
	mov	r13, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	qword ptr [r13 + 8], rbp
	mov	r12, rbx
	shl	r12, 0xc
	xor	r12, rbx
	nop	
	add	r12, qword ptr [r15 - 0x3f0]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r15 + 0x10]
	mov	rdi, r14
	nop	
	mov	rsi, rbx
	call	ind
	mov	rsp, rsp
	add	rbp, r12
	lea	rsi, [rsi]
	add	rbp, rax
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x10], rbp
	shr	rbp, 8
	lea	rdi, [rdi]
	mov	rdi, r14
	nop	
	mov	rsi, rbp
	call	ind
	add	rbx, rax
	nop	
	mov	rdi, rbx
	call	just
	nop	
	mov	rbp, rax
	mov	qword ptr [r13 + 0x10], rbp
	mov	rdi, r12
	call	just
	mov	rbx, rax
	lea	rdi, [rdi]
	shr	rbx, 0x21
	mov	rsp, rsp
	xor	rbx, r12
	add	rbx, qword ptr [r15 - 0x3e8]
	mov	rbp, rbp
	mov	r12, qword ptr [r15 + 0x18]
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsi, r12
	mov	rbp, rbp
	call	ind
	lea	rdi, [rdi]
	add	rbp, rbx
	add	rbp, rax
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x18], rbp
	mov	rbp, rbp
	shr	rbp, 8
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, rbp
	lea	rdi, [rdi]
	call	ind
	mov	rbp, rbp
	add	r12, rax
	mov	rdi, r12
	lea	rdi, [rdi]
	call	just
	mov	rbp, rbp
	mov	rcx, r15
	mov	rbp, rbp
	mov	r12, rax
	mov	rax, r13
	mov	qword ptr [rax + 0x18], r12
	nop	
	add	rcx, 0x20
	add	rax, 0x20
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rsp + 0x10]
	jb	.label_714
	mov	qword ptr [r14 + 0x800], rbx
	mov	qword ptr [r14 + 0x808], r12
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c450

	.globl ind
	.type ind, @function
ind:
	and	esi, 0x7f8
	mov	rax, qword ptr [rdi + rsi]
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c460

	.globl just
	.type just, @function
just:
	mov	rsp, rsp
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c470

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rdi
	movabs	rbp, 0x647c4677a2884b7c
	movabs	r15, 0xb9f8b322c73ac862
	movabs	r14, 0x8c0ea5053d4712a0
	mov	rbp, rbp
	movabs	rbx, 0xb29b2e824a595524
	movabs	r13, 0x82f053db8355e0ce
	lea	rdi, [rdi]
	movabs	rdx, 0x48fe4a0fa5a09315
	mov	rbp, rbp
	movabs	rax, 0xae985bf2cbfc89ed
	movabs	r12, 0x98f5704f6c44c0ab
	mov	rbp, rbp
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_715:
	mov	qword ptr [rsp + 0x18], rcx
	add	rbp, qword ptr [rdi + rcx*8]
	lea	rdi, [rdi]
	add	r15, qword ptr [rdi + rcx*8 + 8]
	mov	rbp, rbp
	add	r14, qword ptr [rdi + rcx*8 + 0x10]
	lea	rsi, [rsi]
	add	rbx, qword ptr [rdi + rcx*8 + 0x18]
	mov	rbp, rbp
	add	r13, qword ptr [rdi + rcx*8 + 0x20]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rdi + rcx*8 + 0x28]
	mov	qword ptr [rsp + 0x30], rdx
	add	rax, qword ptr [rdi + rcx*8 + 0x30]
	mov	qword ptr [rsp + 0x28], rax
	add	r12, qword ptr [rdi + rcx*8 + 0x38]
	sub	rbp, r13
	mov	rbp, rbp
	mov	rdi, r12
	call	just
	nop	
	shr	rax, 9
	xor	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rax
	nop	
	add	r12, rbp
	nop	
	sub	r15, rax
	lea	rax, [r15 + rbp]
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, rbp
	shl	rbp, 9
	lea	rsi, [rsi]
	xor	rbp, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x28], rbp
	nop	
	sub	r14, rbp
	mov	rdi, r15
	call	just
	shr	rax, 0x17
	mov	rsp, rsp
	xor	r12, rax
	add	r15, r14
	nop	
	mov	qword ptr [rsp], r15
	mov	rbp, rbp
	sub	rbx, r12
	nop	
	lea	rax, [rbx + r14]
	mov	qword ptr [rsp + 8], rax
	shl	r14, 0xf
	mov	rsp, rsp
	mov	rbp, r14
	xor	rbp, qword ptr [rsp + 0x10]
	sub	r13, rbp
	mov	rdi, rbx
	mov	rsp, rsp
	call	just
	mov	rbp, rbp
	mov	r15, rax
	mov	rbp, rbp
	shr	r15, 0xe
	mov	rbp, rbp
	xor	r15, qword ptr [rsp]
	add	rbx, r13
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rbx
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x30]
	sub	rdi, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rdi
	mov	r14, r13
	lea	rsi, [rsi]
	shl	r14, 0x14
	mov	rsp, rsp
	xor	r14, qword ptr [rsp + 8]
	mov	rbp, rbp
	add	r13, rdi
	mov	qword ptr [rsp + 8], r13
	mov	r13, qword ptr [rsp + 0x28]
	nop	
	sub	r13, r14
	nop	
	call	just
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rbx, rax
	mov	rsp, rsp
	shr	rbx, 0x11
	xor	rbx, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	rax, r13
	mov	rbp, rbp
	add	rdx, rax
	lea	rsi, [rsi]
	sub	r12, rbx
	mov	rbp, rbp
	shl	r13, 0xe
	nop	
	xor	r13, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	add	rax, r12
	mov	rsp, rsp
	mov	qword ptr [rdi + rcx*8], rbp
	mov	qword ptr [rdi + rcx*8 + 8], r15
	mov	rbp, rbp
	mov	qword ptr [rdi + rcx*8 + 0x10], r14
	mov	rbp, rbp
	mov	qword ptr [rdi + rcx*8 + 0x18], rbx
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rcx*8 + 0x20], r13
	lea	rsi, [rsi]
	mov	qword ptr [rdi + rcx*8 + 0x28], rdx
	mov	qword ptr [rdi + rcx*8 + 0x30], rax
	mov	qword ptr [rdi + rcx*8 + 0x38], r12
	lea	rdi, [rdi]
	add	rcx, 8
	cmp	rcx, 0x100
	jl	.label_715
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_716:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rcx
	add	rbp, qword ptr [rdi + rcx*8]
	mov	rbp, rbp
	add	r15, qword ptr [rdi + rcx*8 + 8]
	lea	rdi, [rdi]
	add	r14, qword ptr [rdi + rcx*8 + 0x10]
	mov	rsp, rsp
	add	rbx, qword ptr [rdi + rcx*8 + 0x18]
	add	r13, qword ptr [rdi + rcx*8 + 0x20]
	add	rdx, qword ptr [rdi + rcx*8 + 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rdx
	add	rax, qword ptr [rdi + rcx*8 + 0x30]
	mov	qword ptr [rsp + 0x28], rax
	add	r12, qword ptr [rdi + rcx*8 + 0x38]
	sub	rbp, r13
	mov	rdi, r12
	lea	rsi, [rsi]
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rax
	add	r12, rbp
	sub	r15, rax
	nop	
	lea	rax, [r15 + rbp]
	mov	qword ptr [rsp + 0x10], rax
	shl	rbp, 9
	mov	rsp, rsp
	xor	rbp, qword ptr [rsp + 0x28]
	sub	r14, rbp
	mov	rbp, rbp
	mov	rdi, r15
	lea	rdi, [rdi]
	call	just
	shr	rax, 0x17
	xor	rax, r12
	add	r15, r14
	lea	rdi, [rdi]
	sub	rbx, rax
	mov	r12, rax
	lea	rax, [rbx + r14]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	shl	r14, 0xf
	xor	r14, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x28], r14
	sub	r13, r14
	mov	rdi, rbx
	call	just
	shr	rax, 0xe
	mov	rsp, rsp
	xor	r15, rax
	add	rbx, r13
	mov	rdi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	sub	rdi, r15
	mov	qword ptr [rsp + 0x30], rdi
	mov	rbp, rbp
	mov	r14, r13
	mov	rbp, rbp
	shl	r14, 0x14
	xor	r14, qword ptr [rsp + 8]
	mov	rsp, rsp
	add	r13, rdi
	lea	rdi, [rdi]
	sub	rbp, r14
	lea	rdi, [rdi]
	call	just
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	shr	rax, 0x11
	xor	rbx, rax
	mov	rdx, qword ptr [rsp + 0x30]
	add	rdx, rbp
	nop	
	sub	r12, rbx
	mov	rax, rbp
	shl	rax, 0xe
	xor	r13, rax
	lea	rdi, [rdi]
	add	rbp, r12
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x28]
	mov	qword ptr [rdi + rcx*8], rsi
	mov	qword ptr [rdi + rcx*8 + 8], r15
	mov	rsp, rsp
	mov	qword ptr [rdi + rcx*8 + 0x10], r14
	mov	rsp, rsp
	mov	qword ptr [rdi + rcx*8 + 0x18], rbx
	mov	qword ptr [rdi + rcx*8 + 0x20], r13
	mov	qword ptr [rdi + rcx*8 + 0x28], rdx
	mov	qword ptr [rdi + rcx*8 + 0x30], rbp
	mov	qword ptr [rdi + rcx*8 + 0x38], r12
	add	rcx, 8
	nop	
	cmp	rcx, 0x100
	mov	rax, rbp
	mov	rbp, rsi
	jl	.label_716
	mov	rbp, rbp
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rdi + 0x800], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x810], 0
	mov	rsp, rsp
	add	rsp, 0x38
	lea	rdi, [rdi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c8a0

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
	.section	.text
	.align	32
	#Procedure 0x40c8c0

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	mov	rax, rsi
	xor	esi, esi
	mov	rdx, rax
	lea	rdi, [rdi]
	jmp	memset
	.section	.text
	.align	32
	#Procedure 0x40c8d0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	rbx, rdi
	call	fileno
	mov	rbp, rbp
	test	eax, eax
	js	.label_717
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_719
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
	je	.label_717
.label_719:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_717
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	lea	rsi, [rsi]
	test	ebp, ebp
	je	.label_718
	call	__errno_location
	mov	dword ptr [rax], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_718:
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_717:
	lea	rsi, [rsi]
	mov	rdi, rbx
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	rbp
	nop	
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c990

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xc8
	test	al, al
	mov	rbp, rbp
	je	.label_726
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x30], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm6
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_726:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	nop	
	lea	rax, [rsp + 0xd0]
	nop	
	mov	qword ptr [rsp + 0xb8], rax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xb4], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], 0x10
	nop	
	cmp	esi, 0xb
	mov	rsp, rsp
	ja	.label_728
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	lea	rsi, [rsi]
	jb	.label_732
	mov	rsp, rsp
	mov	eax, 0x514
	lea	rsi, [rsi]
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_720
	mov	rbp, rbp
	test	esi, esi
	jne	.label_728
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_730
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	mov	rbp, rbp
	lea	ecx, [rcx + 8]
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], ecx
	lea	rdi, [rdi]
	jmp	.label_724
.label_728:
	lea	eax, [rsi - 0x400]
	lea	rdi, [rdi]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_721
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_720
	lea	rdi, [rdi]
	mov	ecx, 0x102
	bt	ecx, eax
	mov	rbp, rbp
	jae	.label_725
.label_732:
	lea	rsi, [rsi]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_720:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_729
	mov	rax, rcx
	mov	rbp, rbp
	add	rax, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_731
.label_729:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_731:
	mov	edx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_725:
	nop	
	cmp	eax, 6
	jne	.label_721
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_723
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	lea	rsi, [rsi]
	jmp	.label_727
.label_721:
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_733
	mov	rbp, rbp
	mov	rax, rcx
	mov	rsp, rsp
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_722
.label_730:
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_724:
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	call	rpl_fcntl_DUPFD
	add	rsp, 0xc8
	lea	rsi, [rsi]
	ret	
.label_723:
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_727:
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xc8
	lea	rsi, [rsi]
	ret	
.label_733:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_722:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	rsp, rsp
	call	fcntl
	lea	rsi, [rsi]
	add	rsp, 0xc8
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cc30

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	lea	rdi, [rdi]
	mov	ecx, esi
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	edx, ecx
	jmp	fcntl
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cc50

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	mov	rsp, rsp
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	lea	rsi, [rsi]
	js	.label_738
	mov	esi, 0x406
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	lea	rsi, [rsi]
	test	ebx, ebx
	nop	
	jns	.label_735
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	nop	
	jne	.label_735
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_734
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_737
.label_735:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	mov	rbp, rbp
	jmp	.label_737
.label_738:
	mov	rbp, rbp
	mov	edi, ebp
	mov	rbp, rbp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_737:
	test	ebx, ebx
	js	.label_734
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_734
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_736
	or	ecx, 1
	nop	
	mov	esi, 2
	mov	rbp, rbp
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	mov	rsp, rsp
	call	fcntl
	mov	rbp, rbp
	cmp	eax, -1
	mov	rbp, rbp
	jne	.label_734
.label_736:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	lea	rdi, [rdi]
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_734:
	lea	rdi, [rdi]
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cd60

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
	.section	.text
	.align	32
	#Procedure 0x40cd80

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	lea	rdi, [rdi]
	push	rbp
	push	r14
	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rsp, rsp
	call	fopen
	lea	rsi, [rsi]
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_740
	mov	rsp, rsp
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_741
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	call	dup_safer
	mov	rsp, rsp
	mov	ebp, eax
	test	ebp, ebp
	js	.label_739
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fclose
	mov	rbp, rbp
	test	eax, eax
	jne	.label_743
	mov	rsp, rsp
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, r14
	call	fdopen
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_740
.label_743:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	lea	rdi, [rdi]
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbx], r14d
	mov	rbp, rbp
	jmp	.label_742
.label_741:
	mov	rax, rbx
	mov	rsp, rsp
	jmp	.label_740
.label_739:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_742:
	xor	eax, eax
.label_740:
	mov	rbp, rbp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40cf10

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x40cf20

	.globl __lstat
	.type __lstat, @function
__lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section .text
	.align	32
	#Procedure 0x40cf30

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
