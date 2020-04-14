	.section	.text
	.align	32
	#Procedure 0x401e80

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
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.29
	mov	rbp, rbp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	nop	
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.7
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.31
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.8
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.9
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.18
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	call	__printf_chk
	mov	rbp, rbp
	mov	edi, 5
	mov	rbp, rbp
	xor	esi, esi
	mov	rbp, rbp
	call	setlocale
	test	rax, rax
	je	.label_8
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.10
	xor	eax, eax
	nop	
	call	__printf_chk
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.45
	mov	rsp, rsp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.10
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.46
	xor	eax, eax
	mov	rsp, rsp
	call	__printf_chk
	nop	
	mov	edi, ebp
	call	exit
.label_7:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsp, rsp
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	nop	
	mov	edi, ebp
	call	exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4021f0

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
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
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
	lea	r12, [rsp + 0x28]
	mov	r13d, 0xf000
	xor	r15d, r15d
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rcx
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x18], rcx
	nop	
	jmp	.label_10
.label_29:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + hard_dir_link]],  1
	nop	
	mov	al, r14b
	nop	dword ptr [rax]
.label_10:
	mov	rsp, rsp
	mov	r14b, al
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.14
	mov	ecx, OFFSET FLAT:long_options
	lea	rsi, [rsi]
	xor	r8d, r8d
	nop	
	mov	edi, ebp
	lea	rdi, [rdi]
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, 0x61
	mov	rsp, rsp
	jle	.label_43
	add	eax, -0x62
	lea	rdi, [rdi]
	cmp	eax, 0x14
	nop	
	ja	.label_28
	jmp	qword ptr [word ptr [+ (rax * 8) + label_47]]
.label_901:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	test	rax, rax
	mov	rcx, qword ptr [rsp + 0x20]
	cmovne	rcx, rax
	nop	
	mov	qword ptr [rsp + 0x20], rcx
	mov	al, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], rax
	mov	rsp, rsp
	mov	al, r14b
	lea	rsi, [rsi]
	jmp	.label_10
	nop	word ptr [rax + rax]
.label_43:
	cmp	eax, 0x45
	lea	rdi, [rdi]
	jle	.label_25
	mov	rsp, rsp
	lea	ecx, [rax - 0x4c]
	cmp	ecx, 8
	lea	rsi, [rsi]
	ja	.label_11
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_30]]
.label_897:
	mov	byte ptr [byte ptr [rip + logical]],  1
	mov	al, r14b
	nop	
	jmp	.label_10
.label_902:
	mov	byte ptr [byte ptr [rip + remove_existing_files]],  1
	mov	byte ptr [byte ptr [rip + interactive]],  0
	nop	
	mov	al, r14b
	jmp	.label_10
.label_903:
	mov	byte ptr [byte ptr [rip + remove_existing_files]],  0
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + interactive]],  1
	lea	rdi, [rdi]
	mov	al, r14b
	lea	rsi, [rsi]
	jmp	.label_10
.label_904:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + dereference_dest_dir_symlinks]],  1
	mov	rbp, rbp
	mov	al, r14b
	jmp	.label_10
.label_905:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + relative]],  1
	mov	rbp, rbp
	mov	al, r14b
	lea	rsi, [rsi]
	jmp	.label_10
.label_906:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + symbolic_link]],  1
	mov	al, r14b
	jmp	.label_10
.label_907:
	lea	rdi, [rdi]
	test	r15, r15
	jne	.label_45
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	edi, 1
	mov	rdx, r12
	nop	
	call	__xstat
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_15
	mov	eax, dword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	and	eax, r13d
	cmp	eax, 0x4000
	lea	rdi, [rdi]
	jne	.label_27
	lea	rsi, [rsi]
	mov	r15,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	mov	al, r14b
	mov	rsp, rsp
	jmp	.label_10
.label_908:
	mov	byte ptr [byte ptr [rip + verbose]],  1
	mov	al, r14b
	jmp	.label_10
.label_11:
	cmp	eax, 0x46
	je	.label_29
	jmp	.label_28
.label_898:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + logical]],  0
	mov	rbp, rbp
	mov	al, r14b
	jmp	.label_10
.label_899:
	nop	
	mov	al, 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rax
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rax
	mov	al, r14b
	nop	
	jmp	.label_10
.label_25:
	cmp	eax, -1
	jne	.label_36
	nop	
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	movsxd	r13, ebp
	lea	rsi, [rsi]
	sub	r13, rax
	test	r13d, r13d
	lea	rdi, [rdi]
	jle	.label_12
	mov	rsp, rsp
	mov	dl,  byte ptr [byte ptr [rip + relative]]
	and	dl, 1
	movzx	ecx, dl
	nop	
	cmp	ecx, 1
	lea	rdi, [rdi]
	jne	.label_38
	mov	cl,  byte ptr [byte ptr [rip + symbolic_link]]
	nop	
	and	cl, 1
	lea	rdi, [rdi]
	je	.label_41
.label_38:
	nop	
	lea	r12, [rbx + rax*8]
	lea	rdi, [rdi]
	test	r14b, r14b
	je	.label_46
	test	r15, r15
	jne	.label_9
	xor	ebx, ebx
	mov	rbp, rbp
	cmp	r13d, 2
	mov	rbp, rbp
	jne	.label_13
	lea	rsi, [rsi]
	mov	r14d, 0xffffffff
	mov	r13d, 2
	lea	rdi, [rdi]
	jmp	.label_17
.label_46:
	nop	
	test	r15, r15
	lea	rdi, [rdi]
	jne	.label_24
	lea	rdi, [rdi]
	cmp	r13d, 2
	jge	.label_24
	mov	r14d, 0xffffffff
	lea	rdi, [rdi]
	mov	ebp, 0xffffff9c
	lea	rsi, [rsi]
	mov	ebx, OFFSET FLAT:.str.3_0
	mov	rbp, rbp
	jmp	.label_17
.label_24:
	test	r15, r15
	setne	al
	cmp	r13d, 2
	mov	rbp, rbp
	setne	bpl
	mov	rsp, rsp
	mov	r14d, 0xffffffff
	mov	rsp, rsp
	or	bpl, al
	nop	
	jne	.label_21
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 8]
	movzx	esi,  byte ptr [byte ptr [rip + symbolic_link]]
	and	esi, 1
	cmp	esi, 1
	lea	rsi, [rsi]
	jne	.label_32
	test	dl, dl
	jne	.label_21
	mov	esi, 0xffffff9c
	mov	rdi, rax
	nop	
	mov	rdx, rcx
	call	symlinkat
	jmp	.label_37
.label_32:
	movzx	r8d,  byte ptr [byte ptr [rip + logical]]
	nop	
	and	r8d, 1
	shl	r8d, 0xa
	lea	rsi, [rsi]
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	rsi, rax
	nop	
	call	linkat
.label_37:
	lea	rsi, [rsi]
	test	eax, eax
	js	.label_42
	mov	rsp, rsp
	mov	r13d, 2
	nop	
	xor	r14d, r14d
	xor	ebx, ebx
	jmp	.label_17
.label_42:
	nop	
	call	__errno_location
	mov	r14d, dword ptr [rax]
	test	r14d, r14d
	js	.label_21
	lea	rdi, [rdi]
	cmp	r14d, 0x14
	je	.label_21
	cmp	r14d, 0x11
	jne	.label_16
.label_21:
	mov	rsp, rsp
	test	r15, r15
	lea	rsi, [rsi]
	mov	rbx, r15
	jne	.label_19
	mov	rbx, qword ptr [r12 + r13*8 - 8]
.label_19:
	mov	al,  byte ptr [byte ptr [rip + dereference_dest_dir_symlinks]]
	mov	rbp, rbp
	and	al, 1
	mov	eax, 0x230000
	lea	rsi, [rsi]
	mov	edx, 0x210000
	cmovne	edx, eax
	lea	rdi, [rdi]
	mov	edi, 0xffffff9c
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsi, rbx
	call	openat_safer
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	js	.label_31
	mov	rsp, rsp
	cmp	r15, 1
	nop	
	sbb	r13d, 0
	mov	ebp, eax
	jmp	.label_17
.label_31:
	mov	rbp, rbp
	mov	r15, rbx
	nop	
	mov	r13d, 2
	mov	rsp, rsp
	xor	ebx, ebx
	test	bpl, 1
	mov	rbp, rbp
	mov	ebp, eax
	lea	rsi, [rsi]
	jne	.label_40
.label_17:
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x18]
	test	cl, cl
	nop	
	je	.label_35
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.28
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x20]
	call	xget_version
.label_35:
	mov	dword ptr [dword ptr [rip + backup_type]],  eax
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	call	set_simple_backup_suffix
	mov	rsp, rsp
	test	rbx, rbx
	nop	
	je	.label_44
	mov	r15d, ebp
	mov	r14, rbx
	cmp	r13d, 1
	nop	
	jle	.label_39
	nop	
	movzx	eax,  byte ptr [byte ptr [rip + remove_existing_files]]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	jne	.label_18
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [rip + backup_type]],  3
	mov	rbp, rbp
	je	.label_18
	mov	al,  byte ptr [byte ptr [rip + symbolic_link]]
	xor	al, 1
	test	al, 1
	lea	rdi, [rdi]
	je	.label_18
	lea	rdi, [rdi]
	mov	edi, 0x3d
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:triple_hash
	mov	ecx, OFFSET FLAT:triple_compare
	mov	rsp, rsp
	mov	r8d, OFFSET FLAT:triple_free
	lea	rsi, [rsi]
	call	hash_initialize
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + dest_set]],  rax
	lea	rdi, [rdi]
	test	rax, rax
	jne	.label_18
	call	xalloc_die
.label_44:
	mov	rdi, qword ptr [r12]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r12 + 8]
	mov	esi, 0xffffff9c
	lea	rdi, [rdi]
	mov	rcx, rdx
	nop	
	mov	r8d, r14d
	call	do_link
	mov	bl, al
	jmp	.label_34
.label_39:
	mov	bl, 1
	test	r13d, r13d
	mov	rsp, rsp
	jle	.label_34
.label_18:
	mov	bl, 1
.label_22:
	mov	rdi, qword ptr [r12]
	call	last_component
	mov	rdi, r14
	mov	rsi, rax
	lea	rdx, [rsp + 0x28]
	mov	rsp, rsp
	call	file_name_concat
	nop	
	mov	rbp, rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x28]
	nop	
	call	strip_trailing_slashes
	mov	rdi, qword ptr [r12]
	mov	rdx, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	mov	r8d, 0xffffffff
	lea	rdi, [rdi]
	mov	esi, r15d
	mov	rcx, rbp
	call	do_link
	and	bl, al
	mov	rdi, rbp
	call	free
	add	r12, 8
	lea	rdi, [rdi]
	dec	r13d
	jne	.label_22
.label_34:
	lea	rsi, [rsi]
	not	bl
	lea	rdi, [rdi]
	and	bl, 1
	movzx	eax, bl
	nop	
	add	rsp, 0xb8
	pop	rbx
	nop	
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	nop	
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_16:
	mov	r13d, 2
	nop	
	xor	ebx, ebx
	nop	
	jmp	.label_17
.label_36:
	lea	rsi, [rsi]
	cmp	eax, 0xffffff7d
	mov	rbp, rbp
	je	.label_26
	cmp	eax, 0xffffff7e
	jne	.label_28
	lea	rdi, [rdi]
	xor	edi, edi
	call	usage
.label_26:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, OFFSET FLAT:.str.17
	mov	rsp, rsp
	mov	r8d, OFFSET FLAT:.str.19
	nop	
	mov	r9d, OFFSET FLAT:.str.20
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_28:
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_12:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.21
	nop	
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	call	error
	mov	rbp, rbp
	mov	edi, 1
	call	usage
.label_9:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	lea	rsi, [rsi]
	jmp	.label_23
.label_13:
	xor	edi, edi
	lea	rsi, [rsi]
	cmp	r13d, 1
	jg	.label_14
	mov	esi, OFFSET FLAT:.str.24
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r12]
	lea	rsi, [rsi]
	jmp	.label_20
.label_45:
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.15
	jmp	.label_23
.label_15:
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsp, rsp
	mov	rbp, rax
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	edi, 4
.label_33:
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	edi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	error
.label_27:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17_0
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbx, rax
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	mov	edi, 4
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	nop	
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	error
.label_41:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
.label_23:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rsp, rsp
	call	error
.label_14:
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.25
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rsi, qword ptr [r12 + 0x10]
.label_20:
	mov	rsp, rsp
	mov	edi, 4
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_40:
	nop	
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	mov	rsp, rsp
	jmp	.label_33
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ab0

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
	sub	rsp, 0x168
	mov	rbp, rbp
	mov	r14d, r8d
	mov	r15, rcx
	lea	rdi, [rdi]
	mov	r12, rdx
	mov	r13d, esi
	mov	rbp, rdi
	mov	al,  byte ptr [byte ptr [rip + logical]]
	mov	rsp, rsp
	and	al, 1
	nop	
	sete	bl
	lea	rsi, [rsi]
	test	r14d, r14d
	jns	.label_76
	lea	rsi, [rsi]
	movzx	ecx,  byte ptr [byte ptr [rip + symbolic_link]]
	and	ecx, 1
	nop	
	cmp	ecx, 1
	jne	.label_98
	mov	rsp, rsp
	mov	al,  byte ptr [byte ptr [rip + relative]]
	nop	
	and	al, 1
	je	.label_51
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa8], rbp
	mov	r14d, 0xffffffff
	mov	ecx, 1
	jmp	.label_55
.label_98:
	lea	rsi, [rsi]
	movzx	r8d, al
	lea	rsi, [rsi]
	shl	r8d, 0xa
	lea	rsi, [rsi]
	mov	edi, 0xffffff9c
	nop	
	mov	rsi, rbp
	mov	edx, r13d
	mov	rcx, r12
	nop	
	call	linkat
	jmp	.label_73
.label_51:
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	esi, r13d
	nop	
	mov	rdx, r12
	call	symlinkat
.label_73:
	mov	rbp, rbp
	xor	r14d, r14d
	test	eax, eax
	jns	.label_76
	call	__errno_location
	mov	r14d, dword ptr [rax]
.label_76:
	mov	rbp, rbp
	test	r14d, r14d
	mov	al,  byte ptr [byte ptr [rip + symbolic_link]]
	jne	.label_79
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + dest_set]]
	test	rcx, rcx
	lea	rdi, [rdi]
	jne	.label_79
	nop	
	mov	qword ptr [rsp + 0xa8], rbp
	xor	r13d, r13d
	nop	
	test	al, 1
	mov	ebx, 0
	mov	rbp, rbp
	jne	.label_87
	jmp	.label_93
.label_79:
	mov	ecx, 1
	lea	rsi, [rsi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_94
	movzx	r8d, bl
	shl	r8d, 8
	mov	rsp, rsp
	lea	rcx, [rsp + 0xb0]
	mov	edi, 1
	mov	esi, 0xffffff9c
	lea	rdi, [rdi]
	mov	rdx, rbp
	call	__fxstatat
	lea	rdi, [rdi]
	xor	ecx, ecx
	test	eax, eax
	je	.label_94
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	r14d, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, rbp
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_66
.label_94:
	mov	qword ptr [rsp + 0xa8], rbp
	test	r14d, r14d
	lea	rsi, [rsi]
	je	.label_70
.label_55:
	mov	al,  byte ptr [byte ptr [rip + symbolic_link]]
	and	al, 1
	mov	rsp, rsp
	jne	.label_75
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + hard_dir_link]]
	lea	rsi, [rsi]
	and	al, 1
	mov	rbp, rbp
	jne	.label_75
	lea	rsi, [rsi]
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	cmp	eax, 0x4000
	jne	.label_75
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.62
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0xa8]
	jmp	.label_91
.label_75:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x140], ecx
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x164], r13d
	lea	rdi, [rdi]
	xor	ebx, ebx
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + relative]]
	lea	rsi, [rsi]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	mov	rbp, qword ptr [rsp + 0xa8]
	nop	
	jne	.label_95
	mov	qword ptr [rsp + 0x148], r12
	mov	rdi, r15
	mov	qword ptr [rsp + 0xa0], r15
	call	dir_name
	lea	rdi, [rdi]
	mov	r15, rax
	mov	esi, 2
	mov	rdi, r15
	call	canonicalize_filename_mode
	mov	r12, rax
	lea	rsi, [rsi]
	mov	esi, 2
	nop	
	mov	rdi, rbp
	call	canonicalize_filename_mode
	mov	r13, rax
	xor	ebx, ebx
	mov	rsp, rsp
	test	r12, r12
	je	.label_69
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_69
	mov	rsp, rsp
	mov	rbp, r15
	mov	edi, 0x1000
	lea	rsi, [rsi]
	call	xmalloc
	lea	rsi, [rsi]
	mov	r15, rax
	mov	ecx, 0x1000
	mov	rdi, r13
	mov	rsi, r12
	mov	rbp, rbp
	mov	rdx, r15
	call	relpath
	mov	rbp, rbp
	test	al, al
	je	.label_85
	mov	rbx, r15
	jmp	.label_86
.label_95:
	nop	
	mov	qword ptr [rsp + 0xa0], r15
	nop	
	jmp	.label_50
.label_70:
	mov	rsp, rsp
	xor	eax, eax
	mov	qword ptr [rsp + 0x140], rax
	lea	rdi, [rdi]
	xor	ebx, ebx
	mov	rsp, rsp
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_90
.label_85:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rbp, rbp
	call	free
	xor	ebx, ebx
.label_86:
	mov	r15, rbp
.label_69:
	mov	rdi, r15
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	mov	rdi, r12
	call	free
	mov	rbp, rbp
	mov	rdi, r13
	mov	rsp, rsp
	call	free
	test	rbx, rbx
	mov	rbp, rbp
	mov	rbp, rbx
	mov	r12, qword ptr [rsp + 0x148]
	jne	.label_50
	mov	rdi, qword ptr [rsp + 0xa8]
	call	xstrdup
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	rbp, rbx
.label_50:
	mov	al,  byte ptr [byte ptr [rip + remove_existing_files]]
	nop	
	and	al, 1
	lea	rsi, [rsi]
	mov	r13b, 1
	jne	.label_61
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + interactive]]
	lea	rdi, [rdi]
	and	al, 1
	jne	.label_61
	xor	r15d, r15d
	cmp	dword ptr [dword ptr [rip + backup_type]],  0
	lea	rdi, [rdi]
	setne	r13b
	mov	rsp, rsp
	je	.label_71
.label_61:
	lea	rcx, [rsp + 0x10]
	mov	rsp, rsp
	mov	edi, 1
	mov	r8d, 0x100
	lea	rsi, [rsi]
	mov	esi, dword ptr [rsp + 0x164]
	mov	rdx, r12
	call	__fxstatat
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_82
	mov	qword ptr [rsp + 0x150], rbx
	nop	
	call	__errno_location
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rax]
	lea	rsi, [rsi]
	xor	r15d, r15d
	lea	rsi, [rsi]
	cmp	ebx, 2
	mov	r13d, 0
	je	.label_74
	lea	rdi, [rdi]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
.label_84:
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rax
	mov	rsp, rsp
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xa0]
	call	quotearg_style
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	eax, eax
	nop	
	mov	esi, ebx
	mov	rsp, rsp
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	error
	jmp	.label_52
.label_82:
	mov	eax, 0xf000
	nop	
	and	eax, dword ptr [rsp + 0x28]
	mov	rbp, rbp
	cmp	eax, 0x4000
	lea	rsi, [rsi]
	jne	.label_56
	nop	
	xor	r12d, r12d
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.63
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0xa0]
.label_91:
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
.label_66:
	mov	rdx, rbx
	call	error
	lea	rdi, [rdi]
	jmp	.label_52
.label_56:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x150], rbx
	mov	rdi,  qword ptr [word ptr [rip + dest_set]]
	lea	rdi, [rdi]
	lea	rdx, [rsp + 0x10]
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0xa0]
	mov	rsi, rbx
	mov	rsp, rsp
	call	seen_file
	mov	rsp, rsp
	test	al, al
	mov	rsp, rsp
	je	.label_92
	lea	rdi, [rdi]
	xor	r12d, r12d
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.64
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	r14, rax
	nop	
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	mov	rbp, rbp
	call	quotearg_n_style
	nop	
	mov	r15, rax
	nop	
	mov	edi, 1
	mov	esi, 4
	lea	rdi, [rdi]
	mov	rdx, rbp
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rbp, rbp
	mov	rcx, r15
.label_53:
	mov	r8, rbx
	mov	rbp, rbp
	call	error
	lea	rsi, [rsi]
	jmp	.label_52
.label_92:
	cmp	dword ptr [dword ptr [rip + backup_type]],  0
	mov	rsp, rsp
	je	.label_62
	mov	rsp, rsp
	mov	al,  byte ptr [byte ptr [rip + symbolic_link]]
	nop	
	and	al, 1
	je	.label_65
	jmp	.label_57
.label_62:
	nop	
	movzx	eax,  byte ptr [byte ptr [rip + remove_existing_files]]
	lea	rsi, [rsi]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_57
.label_65:
	cmp	dword ptr [rsp + 0x140], 0
	mov	rsp, rsp
	je	.label_64
	mov	rbp, rbp
	lea	rdx, [rsp + 0xb0]
	mov	edi, 1
	mov	rsi, rbp
	mov	rbp, rbp
	call	__xstat
	mov	rsp, rsp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_57
.label_64:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rsp + 0x18]
	jne	.label_57
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	jne	.label_57
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0xc0], 1
	je	.label_67
	mov	edi, 0xffffff9c
	mov	rsp, rsp
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x164]
	mov	rcx, r12
	call	same_nameat
	lea	rsi, [rsi]
	test	al, al
	je	.label_57
.label_67:
	nop	
	xor	r12d, r12d
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	r14, rax
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 4
	mov	rdx, rbp
	call	quotearg_n_style
	nop	
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rsp + 0xa0]
	call	quotearg_n_style
	mov	rbx, rax
	mov	rsp, rsp
	xor	edi, edi
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, r14
	lea	rsi, [rsi]
	mov	rcx, rbp
	jmp	.label_53
.label_57:
	mov	rsp, rsp
	xor	r15d, r15d
	mov	rsp, rsp
	test	r14d, r14d
	js	.label_96
	cmp	r14d, 0x11
	mov	rsp, rsp
	jne	.label_74
.label_96:
	nop	
	mov	qword ptr [rsp + 0x148], r12
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + interactive]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_81
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp + 0xa8], rax
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.66
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	r12, rax
	nop	
	mov	r15,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xa0]
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rbp, rbp
	mov	rbx, rax
	mov	esi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0xa8]
	mov	rsp, rsp
	mov	rdx, r12
	mov	rcx, r15
	nop	
	mov	r8, rbx
	mov	rbp, rbp
	call	__fprintf_chk
	lea	rsi, [rsi]
	mov	r12b, 1
	call	yesno
	test	al, al
	je	.label_52
.label_81:
	mov	edx,  dword ptr [dword ptr [rip + backup_type]]
	xor	r15d, r15d
	test	edx, edx
	lea	rdi, [rdi]
	je	.label_77
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rsp + 0x164]
	mov	edi, ebx
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x148]
	mov	rsi, r12
	mov	rbp, rbp
	call	find_backup_file_name
	mov	r15, rax
	lea	rsi, [rsi]
	mov	edi, ebx
	mov	rsi, r12
	mov	rbp, rbp
	mov	edx, ebx
	mov	rsp, rsp
	mov	rcx, r15
	call	renameat
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_74
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	mov	ebx, dword ptr [rax]
	mov	rdi, r15
	call	free
	xor	r15d, r15d
	nop	
	cmp	ebx, 2
	nop	
	mov	r13d, 0
	mov	rsp, rsp
	je	.label_74
	mov	rsp, rsp
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.67
	mov	rbp, rbp
	jmp	.label_84
.label_77:
	mov	r12, qword ptr [rsp + 0x148]
.label_74:
	mov	rbx, qword ptr [rsp + 0x150]
.label_71:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x140], r15
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + symbolic_link]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_97
	movzx	ecx, r13b
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rbp, rbp
	mov	r13d, dword ptr [rsp + 0x164]
	mov	esi, r13d
	mov	rsp, rsp
	mov	rdx, r12
	lea	rsi, [rsi]
	mov	r8d, r14d
	call	force_symlinkat
	nop	
	jmp	.label_88
.label_97:
	movzx	r8d,  byte ptr [byte ptr [rip + logical]]
	and	r8d, 1
	shl	r8d, 0xa
	nop	
	mov	dword ptr [rsp], r14d
	mov	rbp, rbp
	movzx	r9d, r13b
	mov	edi, 0xffffff9c
	mov	rsi, rbp
	mov	rbp, rbp
	mov	r13d, dword ptr [rsp + 0x164]
	mov	edx, r13d
	mov	rcx, r12
	call	force_linkat
.label_88:
	lea	rdi, [rdi]
	mov	r14d, eax
	mov	qword ptr [rsp + 0xa8], rbp
	mov	r15, qword ptr [rsp + 0xa0]
.label_90:
	mov	al,  byte ptr [byte ptr [rip + symbolic_link]]
	lea	rsi, [rsi]
	test	r14d, r14d
	mov	rbp, rbp
	jle	.label_78
	test	al, 1
	nop	
	je	.label_80
	cmp	r14d, 0x24
	nop	
	je	.label_83
	mov	rax, qword ptr [rsp + 0xa8]
	cmp	byte ptr [rax], 0
	je	.label_83
	mov	dword ptr [rsp + 0x164], r13d
	mov	qword ptr [rsp + 0x150], rbx
	mov	qword ptr [rsp + 0x148], r12
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.70
	jmp	.label_72
.label_78:
	test	al, 1
	nop	
	mov	r13, qword ptr [rsp + 0x140]
	jne	.label_87
.label_93:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + dest_set]]
	lea	rsi, [rsi]
	lea	rdx, [rsp + 0xb0]
	mov	rsi, r15
	call	record_file
.label_87:
	movzx	eax,  byte ptr [byte ptr [rip + verbose]]
	and	eax, 1
	nop	
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_48
	mov	qword ptr [rsp + 0x150], rbx
	mov	rsp, rsp
	mov	r14d, OFFSET FLAT:.str_0
	test	r13, r13
	lea	rsi, [rsi]
	mov	ebx, OFFSET FLAT:.str_0
	je	.label_54
	nop	
	mov	rbp, r12
	mov	rbp, rbp
	sub	rbp, r15
	xor	r12d, r12d
	mov	rsp, rsp
	test	rbp, rbp
	nop	
	mov	rbx, r13
	jle	.label_63
	mov	rdi, r13
	call	strlen
	lea	rdi, [rbp + rax + 1]
	call	xmalloc
	mov	rsp, rsp
	mov	rbx, rax
	mov	rdi, rbx
	nop	
	mov	rsi, r15
	mov	rdx, rbp
	call	memcpy
	add	rbp, rbx
	mov	rdi, rbp
	mov	rsi, r13
	call	strcpy
	mov	r12, rbx
.label_63:
	nop	
	mov	edi, 2
	lea	rdi, [rdi]
	mov	esi, 4
	mov	rdx, rbx
	mov	rsp, rsp
	call	quotearg_n_style
	mov	r14, rax
	mov	rdi, r12
	call	free
	mov	ebx, OFFSET FLAT:.str.68
.label_54:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 4
	mov	rdx, r15
	mov	rsp, rsp
	call	quotearg_n_style
	mov	rbp, rax
	mov	al,  byte ptr [byte ptr [rip + symbolic_link]]
	and	al, 1
	mov	eax, 0x2d
	mov	rbp, rbp
	mov	r15d, 0x3d
	nop	
	cmovne	r15d, eax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	call	quotearg_n_style
	mov	rsp, rsp
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.69
	mov	rbp, rbp
	xor	eax, eax
	mov	r8, rbp
	mov	rbp, rbp
	mov	rdx, r14
	mov	rcx, rbx
	lea	rdi, [rdi]
	mov	r9d, r15d
	lea	rsi, [rsi]
	call	__printf_chk
	mov	rbx, qword ptr [rsp + 0x150]
	mov	rbp, rbp
	mov	r12b, 1
	mov	rsp, rsp
	jmp	.label_60
.label_48:
	mov	r12b, 1
	jmp	.label_60
.label_80:
	nop	
	cmp	r14d, 0x1f
	lea	rdi, [rdi]
	jne	.label_68
	mov	dword ptr [rsp + 0x164], r13d
	nop	
	mov	qword ptr [rsp + 0x150], rbx
	mov	qword ptr [rsp + 0x148], r12
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.72
	lea	rdi, [rdi]
	jmp	.label_72
.label_83:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x164], r13d
	mov	qword ptr [rsp + 0x150], rbx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x148], r12
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.71
	jmp	.label_72
.label_68:
	lea	rdi, [rdi]
	mov	eax, r14d
	or	eax, 2
	cmp	eax, 0x1e
	je	.label_89
	mov	rsp, rsp
	cmp	r14d, 0x7a
	mov	rsp, rsp
	je	.label_89
	cmp	r14d, 0x11
	je	.label_89
	mov	dword ptr [rsp + 0x164], r13d
	mov	qword ptr [rsp + 0x150], rbx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x148], r12
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.74
	mov	rsp, rsp
	jmp	.label_72
.label_89:
	mov	dword ptr [rsp + 0x164], r13d
	mov	qword ptr [rsp + 0x150], rbx
	mov	qword ptr [rsp + 0x148], r12
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.73
.label_72:
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x158], rax
	mov	r13, qword ptr [rsp + 0x140]
	lea	rsi, [rsi]
	xor	r12d, r12d
	nop	
	xor	edi, edi
	mov	esi, 4
	nop	
	mov	rdx, r15
	mov	qword ptr [rsp + 0xa0], r15
	mov	rbp, rbp
	call	quotearg_n_style
	mov	rsp, rsp
	mov	rbx, rax
	mov	edi, 1
	mov	esi, 4
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xa8]
	mov	rsp, rsp
	call	quotearg_n_style
	mov	rbp, rax
	mov	rsp, rsp
	xor	edi, edi
	xor	eax, eax
	nop	
	mov	esi, r14d
	mov	rdx, qword ptr [rsp + 0x158]
	mov	rbp, rbp
	mov	rcx, rbx
	lea	rsi, [rsi]
	mov	r8, rbp
	nop	
	call	error
	nop	
	test	r13, r13
	je	.label_58
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0x164]
	mov	rsi, r13
	mov	edx, edi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x148]
	call	renameat
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_49
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rsi, [rsi]
	xor	r12d, r12d
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.75
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rbp, rax
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xa0]
	call	quotearg_style
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebx
	mov	rdx, rbp
	mov	rbp, rbp
	call	error
	nop	
	jmp	.label_59
.label_58:
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_59
.label_49:
	lea	rsi, [rsi]
	xor	r12d, r12d
.label_59:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x150]
.label_60:
	mov	rdi, r13
	call	free
	mov	rdi, rbx
	call	free
.label_52:
	mov	rbp, rbp
	mov	al, r12b
	add	rsp, 0x168
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x403790

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
	mov	ebp, r9d
	mov	r15d, r8d
	mov	r12, rcx
	mov	rbp, rbp
	mov	ebx, edx
	mov	r13d, edi
	mov	r14d, dword ptr [rsp + 0x160]
	nop	
	test	r14d, r14d
	jns	.label_104
	lea	rdi, [rdi]
	mov	edi, r13d
	mov	qword ptr [rsp + 0x120], rsi
	lea	rdi, [rdi]
	mov	edx, ebx
	nop	
	mov	rcx, r12
	mov	r8d, r15d
	call	linkat
	xor	r14d, r14d
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	je	.label_100
	call	__errno_location
	lea	rdi, [rdi]
	mov	r14d, dword ptr [rax]
	nop	
	mov	rsi, qword ptr [rsp + 0x120]
.label_104:
	cmp	r14d, 0x11
	nop	
	jne	.label_100
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x120], rsi
	xor	bpl, 1
	mov	rsp, rsp
	jne	.label_100
	mov	rsp, rsp
	mov	rdi, r12
	nop	
	call	last_component
	nop	
	mov	rbp, rax
	sub	rbp, r12
	lea	rdi, [rbp + 9]
	nop	
	mov	r14d, r15d
	cmp	rdi, 0x101
	lea	rsi, [rsi]
	jae	.label_106
	mov	rsp, rsp
	lea	r15, [rsp]
	lea	rsi, [rsi]
	jmp	.label_102
.label_106:
	call	malloc
	lea	rsi, [rsi]
	mov	r15, rax
	mov	rsp, rsp
	test	r15, r15
	nop	
	je	.label_103
.label_102:
	nop	
	mov	rcx, -1
	mov	rsp, rsp
	mov	rdi, r15
	mov	rbp, rbp
	mov	rsi, r12
	mov	rdx, rbp
	call	__mempcpy_chk
	lea	rdi, [rdi]
	movabs	rcx, 0x5858585858587543
	nop	
	mov	qword ptr [rax], rcx
	mov	rbp, rbp
	mov	byte ptr [rax + 8], 0
	lea	rsi, [rsi]
	test	r15, r15
	je	.label_103
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x108], r13d
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x120]
	mov	qword ptr [rsp + 0x110], rax
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x118], ebx
	mov	dword ptr [rsp + 0x11c], r14d
	lea	rdi, [rdi]
	lea	rdx, [rsp + 0x108]
	mov	rsp, rsp
	xor	esi, esi
	mov	ecx, OFFSET FLAT:try_link
	mov	r8d, 6
	mov	rdi, r15
	call	try_tempname_len
	test	eax, eax
	je	.label_99
	call	__errno_location
	mov	r14d, dword ptr [rax]
	jmp	.label_101
.label_103:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	jmp	.label_100
.label_99:
	mov	edi, ebx
	lea	rdi, [rdi]
	mov	rsi, r15
	lea	rdi, [rdi]
	mov	edx, ebx
	lea	rsi, [rsi]
	mov	rcx, r12
	call	renameat
	lea	rsi, [rsi]
	mov	r14d, 0xffffffff
	mov	rbp, rbp
	test	eax, eax
	je	.label_105
	call	__errno_location
	mov	r14d, dword ptr [rax]
.label_105:
	xor	edx, edx
	mov	edi, ebx
	mov	rsi, r15
	call	unlinkat
.label_101:
	lea	rsi, [rsi]
	lea	rax, [rsp]
	cmp	r15, rax
	je	.label_100
	mov	rdi, r15
	call	free
.label_100:
	mov	eax, r14d
	lea	rsi, [rsi]
	add	rsp, 0x128
	mov	rbp, rbp
	pop	rbx
	nop	
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4039a0

	.globl try_link
	.type try_link, @function
try_link:
	mov	rax, rdi
	mov	edi, dword ptr [rsi]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	mov	rsp, rsp
	mov	r8, rdx
	mov	rsp, rsp
	shr	r8, 0x20
	mov	rsi, rcx
	mov	rcx, rax
	jmp	linkat
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4039d0

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
	mov	r14d, esi
	mov	rsp, rsp
	mov	r15, rdi
	mov	rbp, rbp
	test	ebp, ebp
	lea	rdi, [rdi]
	jns	.label_108
	mov	rdi, r15
	mov	rsp, rsp
	mov	esi, r14d
	mov	rdx, r13
	mov	rbp, rbp
	call	symlinkat
	lea	rdi, [rdi]
	xor	ebp, ebp
	mov	rsp, rsp
	test	eax, eax
	nop	
	je	.label_107
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	mov	ebp, dword ptr [rax]
.label_108:
	mov	rbp, rbp
	cmp	ebp, 0x11
	lea	rsi, [rsi]
	jne	.label_107
	xor	bl, 1
	jne	.label_107
	mov	rdi, r13
	call	last_component
	mov	rbx, rax
	sub	rbx, r13
	lea	rdi, [rbx + 9]
	cmp	rdi, 0x101
	jae	.label_109
	mov	rbp, rbp
	lea	r12, [rsp]
	lea	rsi, [rsi]
	jmp	.label_112
.label_109:
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_111
.label_112:
	mov	rcx, -1
	mov	rbp, rbp
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rsi, r13
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	__mempcpy_chk
	lea	rdi, [rdi]
	movabs	rcx, 0x5858585858587543
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	mov	byte ptr [rax + 8], 0
	test	r12, r12
	je	.label_111
	mov	qword ptr [rsp + 0x108], r15
	mov	dword ptr [rsp + 0x110], r14d
	mov	rsp, rsp
	lea	rdx, [rsp + 0x108]
	xor	esi, esi
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:try_symlink
	mov	r8d, 6
	mov	rdi, r12
	mov	rbp, rbp
	call	try_tempname_len
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_113
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	jmp	.label_110
.label_111:
	mov	rsp, rsp
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_107
.label_113:
	nop	
	mov	edi, r14d
	lea	rdi, [rdi]
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	edx, r14d
	mov	rcx, r13
	call	renameat
	mov	rbp, rbp
	mov	ebp, 0xffffffff
	test	eax, eax
	je	.label_110
	lea	rdi, [rdi]
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rsp, rsp
	xor	edx, edx
	mov	edi, r14d
	mov	rsi, r12
	lea	rsi, [rsi]
	call	unlinkat
.label_110:
	mov	rsp, rsp
	lea	rax, [rsp]
	cmp	r12, rax
	mov	rbp, rbp
	je	.label_107
	lea	rdi, [rdi]
	mov	rdi, r12
	lea	rsi, [rsi]
	call	free
.label_107:
	mov	rsp, rsp
	mov	eax, ebp
	add	rsp, 0x118
	nop	
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	nop	
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	nop	
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403ba0

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
	#Procedure 0x403bc0

	.globl relpath
	.type relpath, @function
relpath:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	nop	
	push	rax
	mov	r14, rcx
	mov	r12, rdx
	mov	rbp, rbp
	mov	r13, rsi
	lea	rdi, [rdi]
	mov	r15, rdi
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r13 + 1]
	nop	
	cmp	eax, 0x2f
	sete	al
	movzx	ecx, byte ptr [r15 + 1]
	cmp	ecx, 0x2f
	sete	cl
	xor	ebx, ebx
	xor	cl, al
	jne	.label_127
	mov	cl, byte ptr [r13]
	test	cl, cl
	nop	
	mov	eax, 0
	mov	rdx, r15
	mov	rbp, rbp
	je	.label_117
	lea	rsi, [rsi]
	xor	eax, eax
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_135:
	nop	
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, byte ptr [r15 + rdx]
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	je	.label_125
	nop	
	movzx	edi, al
	movzx	esi, cl
	cmp	esi, edi
	jne	.label_125
	lea	rax, [rdx + 1]
	cmp	esi, 0x2f
	mov	rbp, rbp
	cmove	ebx, eax
	mov	cl, byte ptr [r13 + rdx + 1]
	test	cl, cl
	jne	.label_135
	lea	rdx, [r15 + rdx + 1]
.label_117:
	mov	cl, byte ptr [rdx]
	test	cl, cl
	mov	rbp, rbp
	je	.label_141
	mov	rsp, rsp
	movzx	ecx, cl
	lea	rdi, [rdi]
	cmp	ecx, 0x2f
	mov	rsp, rsp
	je	.label_141
	lea	rdi, [rdi]
	jmp	.label_116
.label_125:
	lea	rsi, [rsi]
	movzx	ecx, cl
	nop	
	cmp	ecx, 0x2f
	jne	.label_116
	lea	rsi, [rsi]
	test	al, al
	lea	rsi, [rsi]
	mov	eax, edx
	nop	
	jne	.label_116
.label_141:
	mov	rbp, rbp
	mov	ebx, eax
.label_116:
	mov	rbp, rbp
	test	ebx, ebx
	je	.label_122
	movsxd	rax, ebx
	add	r15, rax
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [r13 + rax]
	cmp	ecx, 0x2f
	nop	
	jne	.label_124
	lea	rdi, [rdi]
	lea	r13, [r13 + rax + 1]
	jmp	.label_133
.label_122:
	xor	ebx, ebx
	jmp	.label_127
.label_124:
	mov	rsp, rsp
	add	r13, rax
.label_133:
	mov	rsp, rsp
	movzx	eax, byte ptr [r15]
	mov	rsp, rsp
	cmp	eax, 0x2f
	lea	rsi, [rsi]
	jne	.label_138
	mov	rsp, rsp
	inc	r15
.label_138:
	cmp	byte ptr [r13], 0
	je	.label_126
	test	r12, r12
	mov	rsp, rsp
	je	.label_143
	mov	rsp, rsp
	mov	bpl, 1
	cmp	r14, 3
	jb	.label_115
	mov	byte ptr [r12 + 2], 0
	lea	rsi, [rsi]
	mov	word ptr [r12], 0x2e2e
	add	r12, 2
	nop	
	add	r14, -2
	nop	
	jmp	.label_118
.label_126:
	cmp	byte ptr [r15], 0
	jne	.label_123
	mov	r15d, OFFSET FLAT:.str.3_0
.label_123:
	lea	rdi, [rdi]
	test	r12, r12
	je	.label_131
	mov	rbp, rbp
	mov	rdi, r15
	mov	rbp, rbp
	call	strlen
	mov	rbp, rbp
	cmp	rax, r14
	jae	.label_136
	inc	rax
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, rax
	call	memcpy
	mov	rsp, rsp
	jmp	.label_142
.label_143:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str_2
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	r12d, r12d
.label_118:
	xor	ebp, ebp
	lea	rdi, [rdi]
	jmp	.label_115
	nop	dword ptr [rax]
.label_128:
	lea	rsi, [rsi]
	inc	r13
.label_115:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r13]
	cmp	eax, 0x2f
	lea	rdi, [rdi]
	je	.label_121
	mov	rsp, rsp
	test	al, al
	lea	rdi, [rdi]
	jne	.label_128
	jmp	.label_114
	nop	word ptr cs:[rax + rax]
.label_121:
	mov	rbp, rbp
	test	r12, r12
	je	.label_140
	nop	
	mov	al, 1
	cmp	r14, 4
	jb	.label_137
	mov	dword ptr [r12], 0x2e2e2f
	add	r12, 3
	add	r14, -3
	jmp	.label_134
.label_140:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.1_0
	nop	
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	r12d, r12d
.label_134:
	mov	rbp, rbp
	xor	eax, eax
.label_137:
	mov	rsp, rsp
	and	bpl, 1
	lea	rsi, [rsi]
	or	bpl, al
	mov	rsp, rsp
	jmp	.label_128
.label_114:
	cmp	byte ptr [r15], 0
	je	.label_139
	test	r12, r12
	mov	rbp, rbp
	je	.label_119
	mov	rsp, rsp
	mov	bl, 1
	cmp	r14, 1
	jbe	.label_129
	lea	rdi, [rdi]
	mov	word ptr [r12], 0x2f
	mov	rbp, rbp
	inc	r12
	mov	rbp, rbp
	dec	r14
	and	bpl, 1
	jmp	.label_132
.label_131:
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, r15
	call	fputs_unlocked
.label_142:
	mov	bl, 1
	jmp	.label_127
.label_119:
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.2_0
	lea	rdi, [rdi]
	call	fputs_unlocked
	and	bpl, 1
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, r15
	lea	rsi, [rsi]
	call	fputs_unlocked
	lea	rsi, [rsi]
	jmp	.label_120
.label_129:
	lea	rdi, [rdi]
	mov	bpl, 1
.label_132:
	nop	
	mov	rdi, r15
	call	strlen
	cmp	rax, r14
	nop	
	jae	.label_130
	lea	rsi, [rsi]
	inc	rax
	mov	rdi, r12
	lea	rdi, [rdi]
	mov	rsi, r15
	nop	
	mov	rdx, rax
	call	memcpy
.label_120:
	xor	ebx, ebx
.label_130:
	mov	rbp, rbp
	or	bpl, bl
.label_139:
	mov	bl, 1
	test	bpl, 1
	je	.label_127
.label_136:
	xor	ebx, ebx
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.5_0
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	mov	edi, 0
	mov	esi, 0x24
	nop	
	mov	edx, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	call	error
.label_127:
	mov	rsp, rsp
	mov	al, bl
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	nop	
	pop	rbp
	ret	
	nop	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x403f50

	.globl set_simple_backup_suffix
	.type set_simple_backup_suffix, @function
set_simple_backup_suffix:
	push	rbx
	mov	rbx, rdi
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_144
	mov	edi, OFFSET FLAT:.str_3
	call	getenv
	nop	
	mov	rbx, rax
	mov	eax, OFFSET FLAT:.str.1_1
	mov	rsp, rsp
	test	rbx, rbx
	nop	
	je	.label_145
.label_144:
	mov	eax, OFFSET FLAT:.str.1_1
	cmp	byte ptr [rbx], 0
	je	.label_145
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	call	last_component
	nop	
	cmp	rbx, rax
	mov	eax, OFFSET FLAT:.str.1_1
	nop	
	cmove	rax, rbx
.label_145:
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + simple_backup_suffix]],  rax
	lea	rsi, [rsi]
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403fb0

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
	sub	rsp, 0x88
	mov	dword ptr [rsp + 0x84], ecx
	mov	r15d, edx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0x40], rbp
	mov	dword ptr [rsp + 4], edi
	mov	rsp, rsp
	mov	rdi, rbp
	call	last_component
	mov	rbx, rax
	sub	rbx, rbp
	mov	qword ptr [rsp + 0x38], rbx
	mov	rdi, rax
	mov	rbp, rbp
	call	strlen
	lea	rdi, [rdi]
	mov	rbp, rax
	nop	
	add	rbp, rbx
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	lea	rsi, [rsi]
	test	rdi, rdi
	jne	.label_149
	mov	edi, OFFSET FLAT:.str_3
	lea	rsi, [rsi]
	call	getenv
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.1_1
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_154
	mov	edi, OFFSET FLAT:.str.1_1
	mov	rsp, rsp
	cmp	byte ptr [rbx], 0
	nop	
	je	.label_154
	mov	rbp, rbp
	mov	rdi, rbx
	call	last_component
	cmp	rbx, rax
	mov	edi, OFFSET FLAT:.str.1_1
	cmove	rdi, rbx
.label_154:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + simple_backup_suffix]],  rdi
.label_149:
	call	strlen
	nop	
	inc	rax
	mov	qword ptr [rsp + 0x30], rax
	cmp	rax, 9
	mov	rbp, rbp
	mov	ecx, 9
	nop	
	cmovae	rcx, rax
	lea	rdi, [rbp + rcx + 1]
	mov	qword ptr [rsp + 0x50], rdi
	nop	
	call	malloc
	nop	
	xor	r13d, r13d
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	je	.label_167
	lea	rcx, [rbp + 1]
	mov	qword ptr [rsp + 0x58], rcx
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x6c], 0xffffffff
	lea	rcx, [rbp + 4]
	mov	qword ptr [rsp + 0x78], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rbp
	xor	r12d, r12d
	mov	rsp, rsp
	mov	r13, rax
	nop	
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x70], rax
	nop	dword ptr [rax + rax]
.label_160:
	lea	rdi, [rdi]
	mov	rdi, r13
	nop	
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	call	memcpy
	mov	rbp, rbp
	cmp	r15d, 1
	lea	rsi, [rsi]
	jne	.label_151
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x28]
	lea	rdi, [r13 + rax]
	mov	r14, r13
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x30]
	call	memcpy
	mov	dword ptr [rsp + 0x14], 1
	mov	rbp, rbp
	jmp	.label_152
	nop	
.label_151:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	lea	rbx, [r13 + rax]
	mov	rdi, rbx
	nop	
	call	base_len
	mov	rbp, rbp
	mov	rbp, rax
	mov	rbp, rbp
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_165
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], r15d
	lea	rdi, [rdi]
	mov	rdi, r12
	call	rewinddir
	lea	rdi, [rdi]
	mov	r15, rbp
	lea	rdi, [rdi]
	jmp	.label_170
.label_165:
	nop	
	mov	r14w, word ptr [rbx]
	mov	word ptr [rbx], 0x2e
	lea	rdi, [rdi]
	xor	edx, edx
	nop	
	mov	edi, dword ptr [rsp + 4]
	mov	rsi, r13
	lea	rcx, [rsp + 0x6c]
	call	opendirat
	mov	r12, rax
	test	r12, r12
	je	.label_175
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x14], r15d
	lea	rdi, [rdi]
	mov	word ptr [rbx], r14w
	nop	
	mov	r15, rbp
	mov	byte ptr [rbx + r15 + 4], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbx + r15], 0x7e317e2e
.label_170:
	mov	rdi, r12
	call	readdir
	mov	rbx, rax
	lea	rsi, [rsi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_157
	lea	rsi, [rsi]
	mov	r14, r13
	mov	rbp, rbp
	lea	r13, [r15 + 4]
	lea	rax, [r15 + 2]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rax
	mov	rbp, rbp
	mov	eax, 2
	nop	
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rax
	mov	eax, 1
	nop	
	mov	qword ptr [rsp + 0x48], rax
	nop	word ptr cs:[rax + rax]
.label_177:
	mov	rsp, rsp
	lea	rbp, [rbx + 0x13]
	mov	rdi, rbp
	call	strlen
	cmp	rax, r13
	nop	
	jb	.label_153
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x38]
	lea	rdi, [r14 + rax]
	lea	rdi, [rdi]
	mov	rsi, rbp
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x20]
	call	memcmp
	nop	
	test	eax, eax
	jne	.label_153
	mov	rsp, rsp
	mov	al, byte ptr [rbx + r15 + 0x15]
	lea	rdi, [rdi]
	mov	cl, al
	lea	rdi, [rdi]
	add	cl, 0xcf
	lea	rdi, [rdi]
	movzx	ecx, cl
	mov	rbp, rbp
	cmp	ecx, 8
	mov	rbp, rbp
	ja	.label_153
	lea	rcx, [rbx + r15 + 0x13]
	lea	rsi, [rsi]
	movzx	eax, al
	cmp	eax, 0x39
	lea	rdi, [rdi]
	mov	rdx, r15
	lea	rsi, [rsi]
	sete	r15b
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rcx + 3]
	mov	ecx, eax
	add	ecx, -0x30
	mov	rbp, rbp
	cmp	ecx, 9
	mov	rbp, rbp
	ja	.label_162
	lea	rsi, [rsi]
	lea	rcx, [rbx + rdx + 0x17]
	mov	qword ptr [rsp + 0x60], rdx
	lea	rsi, [rsi]
	xor	edx, edx
	nop	dword ptr [rax]
.label_147:
	mov	rbp, rbp
	mov	rbp, rdx
	nop	
	movzx	eax, al
	mov	rbp, rbp
	cmp	eax, 0x39
	mov	rsp, rsp
	sete	al
	mov	rbp, rbp
	and	r15b, al
	movsx	eax, byte ptr [rcx + rbp]
	mov	esi, eax
	lea	rsi, [rsi]
	add	esi, -0x30
	lea	rdx, [rbp + 1]
	cmp	esi, 0xa
	jb	.label_147
	lea	rsi, [rsi]
	add	rbp, 2
	jmp	.label_156
.label_162:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x60], rdx
	lea	rsi, [rsi]
	mov	ebp, 1
.label_156:
	mov	rsp, rsp
	movzx	eax, al
	lea	rsi, [rsi]
	cmp	eax, 0x7e
	nop	
	jne	.label_159
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x60]
	nop	
	lea	rbx, [rbx + rax + 0x15]
	cmp	byte ptr [rbp + rbx + 1], 0
	je	.label_163
	mov	r15, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	jmp	.label_153
.label_159:
	nop	
	mov	r15, qword ptr [rsp + 0x60]
	jmp	.label_153
.label_163:
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x48], rbp
	lea	rdi, [rdi]
	jb	.label_168
	mov	rsp, rsp
	jne	.label_166
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	lea	rdi, [r14 + rax + 2]
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	call	memcmp
	test	eax, eax
	jle	.label_168
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x60]
	jmp	.label_153
.label_168:
	lea	rdi, [rdi]
	movzx	edx, r15b
	mov	rsp, rsp
	lea	rcx, [rdx + rbp]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x48], rcx
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x78]
	lea	rsi, [rsi]
	lea	r15, [rax + rcx]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	cmp	rax, r15
	nop	
	jae	.label_172
	lea	rdi, [rdi]
	mov	rax, r15
	lea	rdi, [rdi]
	shr	rax, 0x3e
	sete	cl
	lea	rsi, [rsi]
	shl	r15, cl
	nop	
	mov	rdi, r14
	mov	rsi, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rdx
	lea	rdi, [rdi]
	call	realloc
	nop	
	mov	rdx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	test	rax, rax
	mov	qword ptr [rsp + 0x18], r15
	jne	.label_155
	jmp	.label_148
.label_172:
	mov	rax, r14
.label_155:
	mov	qword ptr [rsp + 8], rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rax + rcx]
	mov	byte ptr [rax + rcx], 0x2e
	mov	rsp, rsp
	lea	r15, [rsi + rdx]
	mov	rsp, rsp
	mov	word ptr [rax + rcx + 1], 0x307e
	mov	r14, rax
	lea	rdi, [rdx + rsi + 2]
	lea	rdx, [rbp + 2]
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rbp, rbp
	call	memcpy
	lea	rax, [rbp + r15 + 1]
	nop	
	movzx	ecx, byte ptr [rbp + r15 + 1]
	jmp	.label_169
	nop	dword ptr [rax]
.label_180:
	mov	byte ptr [rax], 0x30
	movzx	ecx, byte ptr [rax - 1]
	dec	rax
.label_169:
	cmp	ecx, 0x39
	je	.label_180
	lea	rsi, [rsi]
	inc	cl
	nop	
	mov	byte ptr [rax], cl
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0x60]
	jmp	.label_153
.label_166:
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x60]
	nop	dword ptr [rax]
.label_153:
	mov	rsp, rsp
	mov	rdi, r12
	call	readdir
	lea	rsi, [rsi]
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_177
	mov	r13, r14
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 8]
	jmp	.label_178
.label_175:
	nop	
	mov	dword ptr [rsp + 0x14], r15d
	lea	rdi, [rdi]
	call	__errno_location
	mov	ecx, 3
	cmp	dword ptr [rax], 0xc
	je	.label_150
	mov	ecx, 2
.label_150:
	mov	word ptr [rbx], r14w
	mov	byte ptr [rbx + rbp + 4], 0
	mov	rbp, rbp
	mov	dword ptr [rbx + rbp], 0x7e317e2e
	mov	rbp, rbp
	xor	r12d, r12d
.label_178:
	cmp	ecx, 1
	lea	rsi, [rsi]
	je	.label_161
	cmp	ecx, 2
	nop	
	je	.label_157
	mov	r14, r13
	nop	
	cmp	ecx, 3
	jne	.label_152
	mov	rbp, rbp
	jmp	.label_148
.label_157:
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x14]
	cmp	eax, 2
	lea	rdi, [rdi]
	jne	.label_161
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x28]
	lea	rdi, [r13 + rax]
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	nop	
	mov	rdx, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	call	memcpy
	mov	dword ptr [rsp + 0x14], 1
.label_161:
	mov	r15d, dword ptr [rsp + 0x6c]
	mov	rbp, rbp
	mov	rdi, r13
	call	last_component
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi, rbx
	mov	rsp, rsp
	call	base_len
	mov	rbp, rax
	nop	
	cmp	rbp, 0xf
	jb	.label_173
	mov	rax, qword ptr [rsp + 0x70]
	test	rax, rax
	jne	.label_146
	nop	
	mov	r14, r13
	mov	rsp, rsp
	test	r15d, r15d
	js	.label_176
	call	__errno_location
	mov	r13, rax
	nop	
	mov	dword ptr [r13], 0
	mov	esi, 3
	lea	rsi, [rsi]
	mov	edi, r15d
	mov	rbp, rbp
	call	fpathconf
	cmp	dword ptr [r13], 1
	lea	rdi, [rdi]
	sbb	rax, 0
	jmp	.label_174
.label_173:
	mov	eax, 0xff
	lea	rsi, [rsi]
	jmp	.label_146
.label_176:
	lea	rsi, [rsi]
	mov	r15w, word ptr [rbx]
	lea	rdi, [rdi]
	mov	word ptr [rbx], 0x2e
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	r13, rax
	lea	rdi, [rdi]
	mov	dword ptr [r13], 0
	lea	rsi, [rsi]
	mov	esi, 3
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	pathconf
	cmp	dword ptr [r13], 1
	sbb	rax, 0
	nop	
	mov	word ptr [rbx], r15w
.label_174:
	nop	
	cmp	rax, -1
	mov	rdx, -1
	mov	ecx, 0xe
	cmovl	rdx, rcx
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	cmovns	rdx, rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], rdx
	mov	rax, rdx
	nop	
	mov	r13, r14
	nop	dword ptr [rax + rax]
.label_146:
	lea	rdi, [rdi]
	cmp	rax, rbp
	jae	.label_171
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rcx, [r13 + rcx]
	mov	r14, r13
	mov	rbp, rbp
	sub	rcx, rbx
	cmp	rax, rcx
	lea	rax, [rax - 1]
	lea	rdi, [rdi]
	cmova	rax, rcx
	mov	word ptr [rbx + rax], 0x7e
	mov	rsp, rsp
	jmp	.label_152
.label_171:
	mov	r14, r13
	nop	word ptr [rax + rax]
.label_152:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x84]
	nop	
	test	al, al
	lea	rsi, [rsi]
	mov	r15d, dword ptr [rsp + 0x14]
	nop	
	mov	r13, r14
	je	.label_158
	lea	rdi, [rdi]
	mov	edx, dword ptr [rsp + 0x6c]
	test	edx, edx
	jns	.label_179
	nop	
	mov	dword ptr [rsp + 0x6c], 0xffffff9c
	mov	edx, 0xffffff9c
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
.label_179:
	nop	
	cmp	r15d, 1
	setne	al
	movzx	r8d, al
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x38]
	lea	rcx, [r13 + rax]
	mov	rsp, rsp
	mov	edi, 0xffffff9c
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	call	renameatu
	test	eax, eax
	mov	rsp, rsp
	je	.label_158
	mov	rbp, rbp
	call	__errno_location
	mov	rbx, rax
	nop	
	mov	ebp, dword ptr [rbx]
	mov	rbp, rbp
	cmp	ebp, 0x11
	je	.label_160
	test	r12, r12
	je	.label_164
	mov	rsp, rsp
	mov	rdi, r12
	call	closedir
.label_164:
	lea	rdi, [rdi]
	mov	rdi, r13
	call	free
	lea	rdi, [rdi]
	mov	dword ptr [rbx], ebp
	xor	r13d, r13d
	nop	
	jmp	.label_167
.label_158:
	test	r12, r12
	nop	
	je	.label_167
	nop	
	mov	rdi, r12
	call	closedir
	jmp	.label_167
.label_148:
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	rsp, rsp
	xor	r13d, r13d
.label_167:
	lea	rdi, [rdi]
	mov	rax, r13
	add	rsp, 0x88
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	nop	
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4047e0

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
	je	.label_181
	pop	rcx
	nop	
	ret	
.label_181:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x404800
	.globl get_version
	.type get_version, @function
get_version:

	mov	rbp, rbp
	mov	eax, 2
	test	rsi, rsi
	mov	rbp, rbp
	je	.label_182
	cmp	byte ptr [rsi], 0
	je	.label_182
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
.label_182:
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404850

	.globl xget_version
	.type xget_version, @function
xget_version:
	push	rax
	lea	rdi, [rdi]
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_183
	cmp	byte ptr [rsi], 0
	lea	rdi, [rdi]
	je	.label_183
	mov	rbp, rbp
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edx, OFFSET FLAT:backup_args
	nop	
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	jmp	.label_184
.label_183:
	mov	edi, OFFSET FLAT:.str.1_2
	call	getenv
	nop	
	mov	ecx, 2
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_185
	nop	
	cmp	byte ptr [rax], 0
	mov	rbp, rbp
	je	.label_185
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str_4
	mov	edx, OFFSET FLAT:backup_args
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	mov	rbp, rbp
	mov	rsi, rax
.label_184:
	lea	rsi, [rsi]
	call	__xargmatch_internal
	nop	
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + backup_types]]
.label_185:
	lea	rsi, [rsi]
	mov	eax, ecx
	mov	rsp, rsp
	pop	rcx
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048f0

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
	mov	r14d, esi
	mov	r15, rdi
	nop	
	mov	ebp, r14d
	nop	
	and	ebp, 3
	mov	rbp, rbp
	lea	eax, [r14 + 3]
	lea	rdi, [rdi]
	test	eax, ebp
	jne	.label_200
	test	r15, r15
	je	.label_200
	movzx	eax, byte ptr [r15]
	cmp	eax, 0x2f
	lea	rdi, [rdi]
	je	.label_201
	test	al, al
	jne	.label_205
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 2
	mov	rbp, rbp
	jmp	.label_204
.label_200:
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x16
.label_204:
	xor	ebx, ebx
.label_197:
	mov	rax, rbx
	lea	rdi, [rdi]
	add	rsp, 0xe8
	lea	rdi, [rdi]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
.label_201:
	mov	edi, 0x1000
	call	xmalloc
	mov	r8, rax
	mov	byte ptr [r8], 0x2f
	lea	rax, [r8 + 0x1000]
	lea	rsi, [rsi]
	lea	r12, [r8 + 1]
	jmp	.label_227
.label_205:
	mov	rsp, rsp
	call	xgetcwd
	xor	ebx, ebx
	mov	rbp, rbp
	test	rax, rax
	nop	
	je	.label_197
	xor	esi, esi
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbx, rax
	call	__rawmemchr
	mov	r8, rbx
	lea	rsi, [rsi]
	mov	r12, rax
	sub	r12, r8
	mov	rbp, rbp
	cmp	r12, 0xfff
	jg	.label_241
	mov	esi, 0x1000
	mov	rdi, r8
	call	xrealloc
	lea	rsi, [rsi]
	mov	r8, rax
	lea	rdi, [rdi]
	add	r12, r8
	nop	
	add	rax, 0x1000
	jmp	.label_227
.label_241:
	mov	rbp, rbp
	mov	r12, rax
.label_227:
	mov	bl, byte ptr [r15]
	mov	rsp, rsp
	test	bl, bl
	je	.label_191
	mov	ecx, r14d
	nop	
	and	ecx, 4
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 4], ecx
	and	r14d, 7
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], r14
	cmp	ebp, 2
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x4c], ebp
	setne	cl
	movzx	ecx, cl
	lea	ecx, [rcx + rcx*8 + 4]
	mov	dword ptr [rsp + 0x3c], ecx
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x18], rcx
	nop	
	mov	rdx, r15
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], r15
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rcx
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x48], ecx
	mov	rbp, rbp
	xor	ebp, ebp
	lea	rdi, [rdi]
	jmp	.label_194
.label_191:
	xor	ecx, ecx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rcx
	nop	
	xor	ebp, ebp
	mov	rsp, rsp
	jmp	.label_213
.label_199:
	mov	rbp, rbp
	mov	r14, r12
	nop	
	mov	dword ptr [rsp + 0x68], 0
	lea	rsi, [rsi]
	jmp	.label_226
.label_221:
	mov	r14, r12
	cmp	eax, 0x4000
	mov	rsp, rsp
	mov	r8, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
	je	.label_230
.label_226:
	cmp	dword ptr [rsp + 0x4c], 2
	lea	rsi, [rsi]
	je	.label_230
	lea	rsi, [rsi]
	mov	cl, byte ptr [r13]
	nop	
	mov	edx, 0x14
	mov	rbp, rbp
	test	cl, cl
	nop	
	jne	.label_189
.label_230:
	mov	rbp, r15
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 8]
.label_209:
	mov	qword ptr [rsp + 8], rcx
	mov	bl, byte ptr [rdx]
	test	bl, bl
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], r12
	mov	rsp, rsp
	mov	r12, r14
	lea	rsi, [rsi]
	jne	.label_194
	mov	rsp, rsp
	jmp	.label_213
.label_235:
	mov	qword ptr [rsp + 0x20], r12
	mov	rbp, r15
	mov	rsp, rsp
	mov	rdi, rbx
	call	strlen
	nop	
	mov	r15, rax
	mov	rdi, r13
	mov	rbp, rbp
	call	strlen
	mov	rbp, rbp
	mov	r14, rax
	lea	r12, [r15 + r14 + 1]
	mov	rax, qword ptr [rsp + 0x30]
	test	rax, rax
	je	.label_210
	mov	rbp, rbp
	cmp	r12, rax
	mov	rdi, qword ptr [rsp + 0x18]
	jbe	.label_216
	mov	rbp, rbp
	mov	rsi, r12
	call	xrealloc
	lea	rsi, [rsi]
	jmp	.label_218
.label_210:
	cmp	r12, 0x1000
	mov	rsp, rsp
	mov	eax, 0x1000
	cmovbe	r12, rax
	mov	rdi, r12
	mov	rbp, rbp
	call	xmalloc
	mov	rbp, rbp
	jmp	.label_218
.label_216:
	mov	rbp, rbp
	mov	r12, rax
	lea	rdi, [rdi]
	mov	rax, rdi
.label_218:
	mov	rdi, r15
	mov	rbp, rbp
	add	rdi, rax
	mov	rbp, rbp
	inc	r14
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	r13, r15
	mov	r15, rax
	mov	rdx, r14
	call	memmove
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rdx, r13
	call	memcpy
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	lea	r14, [rcx + 1]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2f
	jne	.label_245
	mov	byte ptr [rcx], 0x2f
	lea	rdi, [rdi]
	jmp	.label_202
.label_245:
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	cmp	rdx, r14
	jbe	.label_254
	lea	rdi, [rdi]
	dec	rdx
.label_249:
	mov	r14, rdx
	cmp	r14, rcx
	jbe	.label_202
	lea	rsi, [rsi]
	lea	rdx, [r14 - 1]
	movzx	eax, byte ptr [r14 - 1]
	mov	rsp, rsp
	cmp	eax, 0x2f
	mov	rbp, rbp
	jne	.label_249
	nop	
	jmp	.label_202
.label_254:
	mov	r14, rdx
.label_202:
	mov	rdi, rbx
	mov	rbx, rcx
	call	free
	mov	rbp, rbp
	mov	r8, rbx
	mov	rdx, r15
	mov	rsp, rsp
	mov	rax, rdx
	mov	qword ptr [rsp + 0x18], rax
	mov	rbp, rbp
	mov	rcx, rdx
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	jmp	.label_209
.label_194:
	mov	qword ptr [rsp + 0x20], rbp
	mov	r13, rdx
.label_238:
	lea	rsi, [rsi]
	lea	rcx, [r8 + 1]
	nop	
	mov	r14, r13
.label_217:
	lea	rsi, [rsi]
	cmp	r12, rcx
	lea	rsi, [rsi]
	mov	rdx, r14
	ja	.label_220
	jmp	.label_225
.label_187:
	mov	bl, byte ptr [rsi]
	mov	rbp, rbp
	mov	rdx, rsi
.label_220:
	lea	rsi, [rdx + 1]
	movzx	edi, bl
	mov	rsp, rsp
	cmp	edi, 0x2f
	mov	r14, rdx
	nop	
	jne	.label_228
	nop	
	jmp	.label_187
	nop	
.label_240:
	mov	bl, byte ptr [r14 + 1]
	mov	rbp, rbp
	inc	r14
.label_228:
	mov	rsp, rsp
	movzx	ebp, bl
	cmp	ebp, 0x2f
	lea	rsi, [rsi]
	je	.label_237
	nop	
	test	bl, bl
	lea	rdi, [rdi]
	jne	.label_240
.label_237:
	mov	r15, r14
	sub	r15, rdx
	je	.label_192
	lea	rdi, [rdi]
	cmp	r15, 1
	lea	rdi, [rdi]
	jne	.label_247
	movzx	esi, byte ptr [rdx]
	cmp	esi, 0x2e
	jne	.label_251
	lea	rdi, [rdi]
	mov	bl, byte ptr [r14]
	mov	rsp, rsp
	test	bl, bl
	mov	rdx, r14
	jne	.label_220
	jmp	.label_192
.label_247:
	mov	rsp, rsp
	cmp	r15, 2
	jne	.label_190
	nop	
	cmp	edi, 0x2e
	lea	rsi, [rsi]
	jne	.label_196
	movzx	esi, byte ptr [rsi]
	mov	rsp, rsp
	cmp	esi, 0x2e
	jne	.label_196
	dec	r12
	mov	rdx, r12
	nop	dword ptr [rax + rax]
.label_214:
	mov	rbp, rbp
	mov	r12, rdx
	cmp	r12, r8
	lea	rsi, [rsi]
	jbe	.label_208
	lea	rsi, [rsi]
	lea	rdx, [r12 - 1]
	movzx	esi, byte ptr [r12 - 1]
	cmp	esi, 0x2f
	jne	.label_214
.label_208:
	lea	rsi, [rsi]
	test	bl, bl
	jne	.label_217
	lea	rdi, [rdi]
	jmp	.label_192
.label_188:
	lea	rsi, [rsi]
	mov	bl, byte ptr [r13]
	mov	rsp, rsp
	mov	r14, r13
.label_225:
	lea	rcx, [r14 + 1]
	mov	rbp, rbp
	movzx	edx, bl
	lea	rdi, [rdi]
	cmp	edx, 0x2f
	nop	
	mov	r13, r14
	jne	.label_222
	lea	rsi, [rsi]
	mov	r13, rcx
	nop	
	jmp	.label_188
.label_233:
	mov	rbp, rbp
	mov	bl, byte ptr [r13 + 1]
	nop	
	inc	r13
.label_222:
	test	bl, bl
	je	.label_232
	movzx	esi, bl
	mov	rbp, rbp
	cmp	esi, 0x2f
	lea	rsi, [rsi]
	jne	.label_233
.label_232:
	mov	r15, r13
	lea	rsi, [rsi]
	sub	r15, r14
	nop	
	je	.label_192
	lea	rdi, [rdi]
	cmp	r15, 2
	je	.label_242
	cmp	r15, 1
	lea	rdi, [rdi]
	jne	.label_244
	cmp	edx, 0x2e
	lea	rsi, [rsi]
	je	.label_248
	jmp	.label_250
.label_242:
	mov	rbp, rbp
	cmp	edx, 0x2e
	jne	.label_252
	movzx	ecx, byte ptr [rcx]
	cmp	ecx, 0x2e
	nop	
	jne	.label_252
.label_248:
	test	bl, bl
	jne	.label_188
	nop	
	jmp	.label_192
.label_251:
	mov	r15d, 1
.label_190:
	mov	r13, r14
	nop	
	mov	r14, rdx
.label_244:
	movzx	ecx, byte ptr [r12 - 1]
	cmp	ecx, 0x2f
	je	.label_198
	mov	byte ptr [r12], 0x2f
	inc	r12
.label_198:
	lea	rcx, [r12 + r15]
	cmp	rcx, rax
	mov	rbp, rbp
	jae	.label_203
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rax
	nop	
	mov	qword ptr [rsp + 0xe0], r8
	jmp	.label_207
.label_203:
	nop	
	sub	r12, r8
	lea	rsi, [rsi]
	sub	rax, r8
	nop	
	lea	rbp, [r15 + 1]
	cmp	r15, 0xfff
	mov	ecx, 0x1000
	mov	rbp, rbp
	cmovle	rbp, rcx
	mov	rbp, rbp
	add	rbp, rax
	mov	rdi, r8
	mov	rsi, rbp
	call	xrealloc
	mov	qword ptr [rsp + 0xe0], rax
	add	rbp, rax
	add	r12, rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rbp
.label_207:
	mov	rsp, rsp
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, r15
	call	memcpy
	lea	r14, [r12 + r15]
	mov	byte ptr [r12 + r15], 0
	nop	
	mov	rax, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	cmp	eax, 6
	je	.label_234
	cmp	dword ptr [rsp + 4], 0
	jne	.label_223
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rsi, qword ptr [rsp + 0xe0]
	lea	rbx, [rsp + 0x50]
	mov	rbp, rbp
	mov	rdx, rbx
	call	__lxstat
	jmp	.label_195
.label_223:
	mov	edi, 1
	mov	rsi, qword ptr [rsp + 0xe0]
	lea	rbx, [rsp + 0x50]
	mov	rdx, rbx
	call	__xstat
.label_195:
	nop	
	mov	r15, qword ptr [rsp + 0x20]
	mov	r12, r14
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	je	.label_193
	mov	rbp, rbp
	call	__errno_location
	mov	edx, dword ptr [rax]
	cmp	dword ptr [rsp + 0x4c], 1
	lea	rsi, [rsi]
	mov	rax, r13
	jne	.label_224
	nop	
.label_186:
	nop	
	movzx	ecx, byte ptr [rax]
	mov	rbp, rbp
	inc	rax
	cmp	ecx, 0x2f
	je	.label_186
	lea	rdi, [rdi]
	test	cl, cl
	setne	al
	cmp	edx, 2
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x48], edx
	mov	rbp, rbp
	movzx	eax, al
	lea	ecx, [rax + rax*8 + 4]
	mov	eax, 0xd
	mov	rbp, rbp
	cmovne	ecx, eax
	lea	rdi, [rdi]
	jmp	.label_246
.label_193:
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	mov	ecx, 0xf000
	lea	rsi, [rsi]
	and	eax, ecx
	mov	rbp, rbp
	cmp	eax, 0xa000
	nop	
	jne	.label_221
	test	r15, r15
	jne	.label_229
	mov	edi, 7
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:triple_hash
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:triple_compare_ino_str
	mov	rsp, rsp
	mov	r8d, OFFSET FLAT:triple_free
	lea	rsi, [rsi]
	call	hash_initialize
	lea	rdi, [rdi]
	mov	r15, rax
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_243
.label_229:
	mov	rdi, r15
	mov	rbp, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rsi, rbp
	mov	rsp, rsp
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	seen_file
	lea	rdi, [rdi]
	test	al, al
	je	.label_253
	cmp	dword ptr [rsp + 0x4c], 2
	mov	eax, dword ptr [rsp + 0x48]
	nop	
	mov	ecx, 0x28
	mov	rsp, rsp
	cmovne	eax, ecx
	mov	dword ptr [rsp + 0x48], eax
	mov	ecx, dword ptr [rsp + 0x3c]
.label_246:
	mov	r8, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	cmp	ecx, 4
	lea	rsi, [rsi]
	jne	.label_206
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], r15
	nop	
	jmp	.label_219
.label_253:
	mov	rdi, r15
	mov	rsi, rbp
	mov	rdx, rbx
	nop	
	call	record_file
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x80]
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	call	areadlink_with_size
	mov	rbx, rax
	mov	rbp, rbp
	test	rbx, rbx
	mov	rsp, rsp
	jne	.label_235
	nop	
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rsp + 0x4c], 2
	nop	
	jne	.label_212
	nop	
	cmp	dword ptr [rax], 0xc
	nop	
	je	.label_212
	mov	qword ptr [rsp + 0x20], r15
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0xe0]
	mov	rax, qword ptr [rsp + 0x10]
.label_219:
	lea	rdi, [rdi]
	mov	bl, byte ptr [r13]
	mov	rsp, rsp
	test	bl, bl
	lea	rsi, [rsi]
	jne	.label_238
	mov	rbp, rbp
	jmp	.label_192
.label_196:
	mov	r15d, 2
	jmp	.label_190
.label_252:
	mov	rbp, rbp
	mov	r15d, 2
	lea	rdi, [rdi]
	jmp	.label_244
.label_250:
	mov	r15d, 1
	mov	rbp, rbp
	jmp	.label_244
.label_234:
	nop	
	mov	dword ptr [rsp + 0x68], 0
	nop	
	mov	r8, qword ptr [rsp + 0xe0]
	mov	rax, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 0x20]
	nop	
	jmp	.label_226
.label_224:
	mov	dword ptr [rsp + 0x48], edx
	mov	rsp, rsp
	cmp	dword ptr [rsp + 0x4c], 0
	mov	r8, qword ptr [rsp + 0xe0]
	mov	rax, qword ptr [rsp + 0x10]
	jne	.label_199
	mov	edx, dword ptr [rsp + 0x48]
.label_189:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x48], edx
	jmp	.label_211
.label_192:
	mov	rbp, qword ptr [rsp + 0x20]
.label_213:
	mov	rsp, rsp
	lea	rcx, [r8 + 1]
	cmp	r12, rcx
	mov	rsp, rsp
	jbe	.label_215
	movzx	ecx, byte ptr [r12 - 1]
	nop	
	cmp	ecx, 0x2f
	jne	.label_215
	nop	
	dec	r12
.label_215:
	mov	rsp, rsp
	mov	byte ptr [r12], 0
	lea	rcx, [r12 + 1]
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rdi, [rdi]
	je	.label_236
	mov	rbp, rbp
	mov	esi, 1
	sub	rsi, r8
	mov	rsp, rsp
	add	rsi, r12
	mov	rdi, r8
	mov	rsp, rsp
	call	xrealloc
	mov	rsp, rsp
	mov	rbx, rax
	nop	
	jmp	.label_231
.label_236:
	lea	rsi, [rsi]
	mov	rbx, r8
.label_231:
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	call	free
	nop	
	test	rbp, rbp
	nop	
	je	.label_197
	mov	rsp, rsp
	mov	rdi, rbp
	call	hash_free
	lea	rdi, [rdi]
	jmp	.label_197
.label_206:
	nop	
	cmp	ecx, 0xd
	lea	rsi, [rsi]
	je	.label_211
	jmp	.label_197
.label_212:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x48], eax
	mov	r8, qword ptr [rsp + 0xe0]
.label_211:
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rbx, r8
	nop	
	call	free
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	call	free
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_239
	mov	rdi, r15
	call	hash_free
.label_239:
	call	__errno_location
	mov	ecx, dword ptr [rsp + 0x48]
	mov	dword ptr [rax], ecx
	nop	
	jmp	.label_204
.label_243:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405250
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
	#Procedure 0x405260

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
	je	.label_258
	xor	esi, esi
	mov	rbp, rbp
	mov	edx, 1
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fseeko
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	jne	.label_258
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	setne	bpl
.label_258:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	close_stream
	test	bpl, bpl
	nop	
	jne	.label_255
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_255
	pop	rbx
	pop	r14
	pop	rbp
	mov	rsp, rsp
	jmp	close_stdout
.label_255:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_5
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	lea	rsi, [rsi]
	jne	.label_256
	xor	edi, edi
	nop	
	mov	edx, OFFSET FLAT:.str_1
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebp
	mov	rcx, r14
	call	error
	jmp	.label_257
.label_256:
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
.label_257:
	call	close_stdout
	nop	
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x405370
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
	#Procedure 0x405380
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405390

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
	je	.label_260
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_259
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_259
.label_260:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_262
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_259:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_6
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name_0]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_261
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_1
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
.label_262:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_261:
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
	mov	r8, rbx
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405490

	.globl dir_name
	.type dir_name, @function
dir_name:
	lea	rsi, [rsi]
	push	rax
	mov	rbp, rbp
	call	mdir_name
	mov	rbp, rbp
	test	rax, rax
	je	.label_263
	pop	rcx
	ret	
.label_263:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x4054b0
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
.label_265:
	lea	rdi, [rdi]
	mov	rax, rcx
	lea	rsi, [rsi]
	cmp	r14, rax
	mov	rsp, rsp
	jae	.label_264
	lea	rcx, [rax - 1]
	nop	
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	lea	rdi, [rdi]
	je	.label_265
.label_264:
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
	#Procedure 0x405520

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	r15
	mov	rbp, rbp
	push	r14
	push	rbx
	mov	r14, rdi
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2f
	mov	rsp, rsp
	sete	al
	mov	rbp, rbp
	movzx	r15d, al
	nop	
	call	last_component
	nop	
	sub	rax, r14
	nop	dword ptr [rax]
.label_269:
	mov	rbx, rax
	mov	rsp, rsp
	cmp	r15, rbx
	mov	rsp, rsp
	jae	.label_266
	lea	rax, [rbx - 1]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [r14 + rbx - 1]
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	je	.label_269
.label_266:
	test	rbx, rbx
	sete	al
	movzx	eax, al
	mov	rbp, rbp
	lea	rdi, [rbx + rax + 1]
	mov	rsp, rsp
	call	malloc
	nop	
	mov	r15, rax
	nop	
	xor	eax, eax
	mov	rsp, rsp
	test	r15, r15
	je	.label_268
	nop	
	mov	rdi, r15
	mov	rsp, rsp
	mov	rsi, r14
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	memcpy
	nop	
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_267
	lea	rdi, [rdi]
	mov	byte ptr [r15], 0x2e
	nop	
	mov	ebx, 1
.label_267:
	mov	rbp, rbp
	mov	byte ptr [r15 + rbx], 0
	mov	rax, r15
.label_268:
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	mov	rsp, rsp
	pop	r15
	nop	
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4055e0

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_270:
	nop	
	movzx	edx, byte ptr [rdi + 1]
	lea	rdi, [rdi]
	inc	rdi
	cmp	edx, 0x2f
	mov	rbp, rbp
	je	.label_270
	xor	r8d, r8d
	mov	rax, rdi
	jmp	.label_271
	nop	dword ptr [rax + rax]
.label_272:
	mov	dl, byte ptr [rax + 1]
	mov	rbp, rbp
	inc	rax
	lea	rsi, [rsi]
	mov	r8b, cl
.label_271:
	mov	cl, 1
	movzx	esi, dl
	mov	rsp, rsp
	cmp	esi, 0x2f
	je	.label_272
	mov	rsp, rsp
	test	dl, dl
	mov	rbp, rbp
	je	.label_274
	mov	cl, r8b
	mov	rsp, rsp
	and	cl, 1
	je	.label_273
	xor	r8d, r8d
.label_273:
	lea	rsi, [rsi]
	test	cl, cl
	cmovne	rdi, rax
	mov	cl, r8b
	nop	
	jmp	.label_272
.label_274:
	mov	rsp, rsp
	mov	rax, rdi
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405660

	.globl base_len
	.type base_len, @function
base_len:
	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	call	strlen
	nop	
	mov	rcx, rax
.label_276:
	mov	rbp, rbp
	mov	rax, rcx
	lea	rsi, [rsi]
	cmp	rax, 2
	mov	rsp, rsp
	jb	.label_275
	lea	rdi, [rdi]
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_276
.label_275:
	lea	rsi, [rsi]
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4056a0

	.globl strip_trailing_slashes
	.type strip_trailing_slashes, @function
strip_trailing_slashes:
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	mov	rbx, rdi
	mov	rsp, rsp
	call	last_component
	cmp	byte ptr [rax], 0
	je	.label_277
	lea	rsi, [rsi]
	mov	rbx, rax
.label_277:
	nop	
	mov	rdi, rbx
	call	base_len
	cmp	byte ptr [rbx + rax], 0
	mov	rsp, rsp
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbx + rax], 0
	mov	al, cl
	pop	rbx
	ret	
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4056e0

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
	je	.label_278
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
	je	.label_279
	cmp	rax, rbx
	je	.label_278
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
.label_278:
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
.label_279:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405790

	.globl seen_file
	.type seen_file, @function
seen_file:
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_280
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
.label_280:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4057e0

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rax
	call	mfile_name_concat
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	je	.label_281
	lea	rsi, [rsi]
	pop	rcx
	ret	
.label_281:
	mov	rsp, rsp
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x405800

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
	je	.label_287
	movzx	ecx, byte ptr [rbx + r13 - 1]
	lea	rdi, [rdi]
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	jne	.label_289
	mov	qword ptr [rsp + 8], r14
	lea	rdi, [rdi]
	xor	r12d, r12d
	lea	rsi, [rsi]
	jmp	.label_283
.label_287:
	movzx	ecx, byte ptr [r14]
	mov	r12b, 0x2e
	lea	rsi, [rsi]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	je	.label_288
	jmp	.label_284
.label_289:
	nop	
	movzx	ecx, byte ptr [r14]
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	jne	.label_285
.label_284:
	xor	r12d, r12d
	jmp	.label_288
.label_285:
	mov	r12b, 0x2f
.label_288:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r14
.label_283:
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
	je	.label_282
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
	je	.label_286
	mov	rsp, rsp
	mov	qword ptr [rax], rbp
.label_286:
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
.label_282:
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
	#Procedure 0x405950
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405960
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405970
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405980
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
	jae	.label_290
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
	jb	.label_294
	xor	eax, eax
	nop	
	cmp	qword ptr [rcx], 0
	mov	rsp, rsp
	je	.label_297
	mov	rbp, rbp
	mov	rdi, rcx
	nop	dword ptr [rax]
.label_293:
	nop	
	mov	rdi, qword ptr [rdi + 8]
	inc	rax
	mov	rsp, rsp
	test	rdi, rdi
	lea	rdi, [rdi]
	jne	.label_293
.label_297:
	add	rcx, 0x10
.label_294:
	nop	
	test	rsi, rsi
	je	.label_290
	nop	word ptr cs:[rax + rax]
.label_296:
	cmp	qword ptr [rcx], 0
	nop	
	mov	esi, 0
	mov	rdi, rcx
	mov	rbp, rbp
	je	.label_291
	nop	word ptr cs:[rax + rax]
.label_292:
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_292
	mov	rbp, rbp
	cmp	rsi, rax
	lea	rsi, [rsi]
	cmova	rax, rsi
.label_291:
	cmp	qword ptr [rcx + 0x10], 0
	nop	
	je	.label_298
	lea	rdi, [rcx + 0x10]
	xor	esi, esi
	nop	word ptr [rax + rax]
.label_295:
	mov	rdi, qword ptr [rdi + 8]
	mov	rbp, rbp
	inc	rsi
	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rsi, [rsi]
	jne	.label_295
	mov	rsp, rsp
	cmp	rsi, rax
	nop	
	cmova	rax, rsi
.label_298:
	mov	rsp, rsp
	add	rcx, 0x20
	mov	rsp, rsp
	cmp	rcx, rdx
	mov	rsp, rsp
	jb	.label_296
.label_290:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a90
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
	jae	.label_304
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
	jb	.label_308
	xor	edx, edx
	cmp	qword ptr [rcx], 0
	mov	rsp, rsp
	je	.label_305
	mov	esi, 1
	mov	rax, rcx
	nop	dword ptr [rax + rax]
.label_307:
	mov	rbp, rbp
	inc	rdx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	test	rax, rax
	jne	.label_307
	mov	rsp, rsp
	jmp	.label_301
.label_308:
	mov	rbp, rbp
	xor	esi, esi
	jmp	.label_303
.label_305:
	xor	esi, esi
.label_301:
	add	rcx, 0x10
.label_303:
	test	r8, r8
	nop	
	je	.label_304
	nop	dword ptr [rax]
.label_309:
	cmp	qword ptr [rcx], 0
	mov	rbp, rbp
	mov	rax, rcx
	je	.label_306
	nop	dword ptr [rax]
.label_311:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	jne	.label_311
	lea	rdi, [rdi]
	inc	rsi
.label_306:
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_302
	lea	rax, [rcx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_299:
	lea	rdi, [rdi]
	inc	rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_299
	inc	rsi
.label_302:
	add	rcx, 0x20
	cmp	rcx, r9
	jb	.label_309
.label_304:
	cmp	rsi, qword ptr [rdi + 0x18]
	jne	.label_310
	lea	rdi, [rdi]
	mov	al, 1
	nop	
	cmp	rdx, qword ptr [rdi + 0x20]
	lea	rsi, [rsi]
	je	.label_300
.label_310:
	xor	eax, eax
.label_300:
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405ba0
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
	jae	.label_313
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
	jb	.label_312
	mov	rbp, rbp
	xor	ebx, ebx
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_319
	mov	rsp, rsp
	mov	rdi, rax
	nop	word ptr [rax + rax]
.label_318:
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 8]
	inc	rbx
	nop	
	test	rdi, rdi
	lea	rdi, [rdi]
	jne	.label_318
.label_319:
	add	rax, 0x10
.label_312:
	test	rsi, rsi
	je	.label_313
	nop	dword ptr [rax]
.label_323:
	cmp	qword ptr [rax], 0
	mov	esi, 0
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	je	.label_314
	nop	word ptr cs:[rax + rax]
.label_315:
	mov	rdi, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	inc	rsi
	nop	
	test	rdi, rdi
	jne	.label_315
	mov	rbp, rbp
	cmp	rsi, rbx
	cmova	rbx, rsi
.label_314:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_316
	lea	rdi, [rax + 0x10]
	xor	esi, esi
	nop	word ptr [rax + rax]
.label_317:
	mov	rdi, qword ptr [rdi + 8]
	mov	rsp, rsp
	inc	rsi
	test	rdi, rdi
	jne	.label_317
	mov	rbp, rbp
	cmp	rsi, rbx
	mov	rbp, rbp
	cmova	rbx, rsi
.label_316:
	add	rax, 0x20
	nop	
	cmp	rax, rdx
	jb	.label_323
.label_313:
	lea	rsi, [rsi]
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_7
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.1_4
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	nop	
	call	__fprintf_chk
	nop	
	movq	xmm1, r14
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_320]]
	punpckldq	xmm1, xmm2
	lea	rsi, [rsi]
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_321]]
	nop	
	subpd	xmm1, xmm3
	lea	rdi, [rdi]
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	lea	rsi, [rsi]
	mulsd	xmm0,  qword ptr [word ptr [rip + label_322]]
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
	mov	edx, OFFSET FLAT:.str.2_1
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
	.align	32
	#Procedure 0x405db0

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
	jae	.label_325
	mov	rbx, qword ptr [r14]
	nop	
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	mov	rsp, rsp
	test	rsi, rsi
	je	.label_326
	lea	rsi, [rsi]
	add	rbx, rax
	je	.label_326
	cmp	rsi, r12
	je	.label_324
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_327:
	nop	
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_328
	nop	
	mov	rbx, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_326
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx]
	nop	
	cmp	rsi, r12
	lea	rdi, [rdi]
	jne	.label_327
.label_324:
	mov	r15, r12
	jmp	.label_326
.label_328:
	nop	
	mov	r15, qword ptr [rbx]
.label_326:
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
.label_325:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e70
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	mov	rbp, rbp
	je	.label_329
	nop	
	mov	rcx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdi + 8]
	mov	rbp, rbp
	jmp	.label_332
	nop	dword ptr [rax]
.label_331:
	add	rcx, 0x10
.label_332:
	cmp	rcx, rdx
	jae	.label_330
	mov	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_331
.label_329:
	mov	rsp, rsp
	ret	
.label_330:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x405eb0
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
	jae	.label_336
	nop	
	mov	rcx, qword ptr [r14]
	lea	rdi, [rdi]
	shl	rax, 4
	nop	
	lea	rdx, [rcx + rax]
	nop	word ptr [rax + rax]
.label_338:
	nop	
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	je	.label_334
	test	rdx, rdx
	jne	.label_338
	lea	rdi, [rdi]
	jmp	.label_335
.label_334:
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_335
	mov	rax, qword ptr [rdx]
	jmp	.label_333
.label_335:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rax + rcx + 0x10]
	nop	dword ptr [rax]
.label_337:
	mov	rbp, rbp
	cmp	rcx, rdx
	mov	eax, 0
	mov	rbp, rbp
	jae	.label_333
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_337
.label_333:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_336:
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405f50
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	nop
	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_339
	nop	word ptr cs:[rax + rax]
.label_341:
	add	r9, 0x10
.label_339:
	nop	
	cmp	r9, r8
	lea	rdi, [rdi]
	jae	.label_340
	lea	rsi, [rsi]
	cmp	qword ptr [r9], 0
	je	.label_341
	test	r9, r9
	mov	rbp, rbp
	mov	r10, r9
	mov	rbp, rbp
	je	.label_341
	nop	word ptr cs:[rax + rax]
.label_342:
	mov	rsp, rsp
	cmp	rax, rdx
	jae	.label_340
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
	jne	.label_342
	mov	r8, qword ptr [rdi + 8]
	jmp	.label_341
.label_340:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405fd0
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
	jmp	.label_346
	nop	dword ptr [rax]
.label_343:
	lea	rsi, [rsi]
	add	r13, 0x10
.label_346:
	nop	
	cmp	r13, rax
	lea	rsi, [rsi]
	jae	.label_344
	mov	rdi, qword ptr [r13]
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_343
	test	r13, r13
	lea	rdi, [rdi]
	je	.label_343
	mov	rsi, r14
	lea	rsi, [rsi]
	call	r15
	mov	rbp, rbp
	test	al, al
	mov	rbp, r13
	mov	rsp, rsp
	je	.label_344
	nop	word ptr [rax + rax]
.label_347:
	mov	rsp, rsp
	inc	rbx
	mov	rbp, rbp
	mov	rbp, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	test	rbp, rbp
	je	.label_345
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_347
	jmp	.label_344
	nop	word ptr cs:[rax + rax]
.label_345:
	mov	rax, qword ptr [r12 + 8]
	mov	rbp, rbp
	jmp	.label_343
.label_344:
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
	.align	32
	#Procedure 0x4060a0
	.globl hash_string
	.type hash_string, @function
hash_string:

	nop
	mov	al, byte ptr [rdi]
	nop	
	xor	edx, edx
	test	al, al
	je	.label_349
	inc	rdi
	nop	
	xor	edx, edx
.label_348:
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
	jne	.label_348
.label_349:
	mov	rax, rdx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4060e0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	nop
	mov	eax,  dword ptr [dword ptr [rip + label_350]]
	mov	dword ptr [rdi + 0x10], eax
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406100

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
	je	.label_353
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	mov	rbp, rbp
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_360
	movss	xmm0, dword ptr [rbx + 8]
	mov	rsp, rsp
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_351]]
	jbe	.label_352
	lea	rsi, [rsi]
	movss	xmm1,  dword ptr [dword ptr [rip + label_357]]
	ucomiss	xmm1, xmm0
	jbe	.label_352
	mov	rbp, rbp
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_364]]
	lea	rsi, [rsi]
	jbe	.label_352
	movss	xmm1, dword ptr [rbx]
	lea	rsi, [rsi]
	xorps	xmm2, xmm2
	lea	rsi, [rsi]
	ucomiss	xmm1, xmm2
	jb	.label_352
	addss	xmm1,  dword ptr [dword ptr [rip + label_351]]
	ucomiss	xmm0, xmm1
	lea	rdi, [rdi]
	jbe	.label_352
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbx + 4]
	lea	rdi, [rdi]
	movss	xmm2,  dword ptr [dword ptr [rip + label_363]]
	ucomiss	xmm2, xmm0
	jb	.label_352
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	mov	rsp, rsp
	jbe	.label_352
.label_360:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_358
	lea	rsi, [rsi]
	mov	eax, r12d
	and	eax, 1
	nop	
	test	r12, r12
	js	.label_359
	mov	rbp, rbp
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_365
.label_359:
	shr	r12, 1
	mov	rsp, rsp
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	lea	rdi, [rdi]
	addss	xmm0, xmm0
.label_365:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_355]]
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
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_356]]
	nop	
	jae	.label_352
.label_358:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	mov	rsp, rsp
	jmp	.label_362
.label_361:
	mov	rbp, rbp
	add	rbx, 2
.label_362:
	cmp	rbx, -1
	mov	rbp, rbp
	je	.label_352
	cmp	rbx, 0xa
	mov	rbp, rbp
	mov	esi, 0xc
	mov	edi, 9
	mov	rbp, rbp
	mov	ecx, 3
	lea	rdi, [rdi]
	jb	.label_354
	nop	word ptr cs:[rax + rax]
.label_366:
	xor	edx, edx
	mov	rax, rbx
	lea	rsi, [rsi]
	div	rcx
	test	rdx, rdx
	nop	
	je	.label_354
	mov	rbp, rbp
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	mov	rsp, rsp
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_366
.label_354:
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_361
	mov	rbp, rbp
	mov	rax, rbx
	lea	rdi, [rdi]
	shr	rax, 0x3c
	jne	.label_352
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_352
	mov	esi, 0x10
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	rpl_calloc
	lea	rsi, [rsi]
	mov	qword ptr [r15], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_352
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
	jmp	.label_353
.label_352:
	nop	
	mov	rdi, r15
	call	free
	nop	
	xor	eax, eax
.label_353:
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
	.align	32
	#Procedure 0x4063e0

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
	.align	32
	#Procedure 0x406400

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
	#Procedure 0x406410
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
	jmp	.label_371
.label_367:
	mov	rsp, rsp
	add	r14, 0x10
.label_371:
	cmp	r14, rax
	jae	.label_372
	lea	rdi, [rdi]
	cmp	qword ptr [r14], 0
	nop	
	je	.label_367
	mov	rsp, rsp
	mov	rbx, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	nop	
	setne	cl
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_370
	nop	word ptr [rax + rax]
.label_368:
	nop	
	test	cl, 1
	je	.label_369
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	call	rax
	nop	
	mov	rax, qword ptr [r15 + 0x40]
.label_369:
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
	jne	.label_368
.label_370:
	test	cl, cl
	je	.label_373
	mov	rdi, qword ptr [r14]
	call	rax
.label_373:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	nop	
	jmp	.label_367
.label_372:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4064f0

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
	je	.label_378
	lea	rdi, [rdi]
	cmp	qword ptr [r14 + 0x20], 0
	lea	rdi, [rdi]
	je	.label_378
	mov	r15, qword ptr [r14]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 8]
	mov	rbp, rbp
	jmp	.label_380
	nop	word ptr [rax + rax]
.label_383:
	mov	rsp, rsp
	add	r15, 0x10
.label_380:
	lea	rdi, [rdi]
	cmp	r15, rax
	jae	.label_378
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_383
	test	r15, r15
	je	.label_383
	mov	rbp, rbp
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_376
	nop	dword ptr [rax]
.label_375:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_376:
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_375
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_383
.label_378:
	mov	r15, qword ptr [r14]
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	jmp	.label_381
	nop	dword ptr [rax + rax]
.label_374:
	mov	rbp, rbp
	add	r15, 0x10
.label_381:
	cmp	r15, rax
	jae	.label_379
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_374
	nop	dword ptr [rax + rax]
.label_384:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_384
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_374
.label_379:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_377
	nop	word ptr cs:[rax + rax]
.label_382:
	nop	
	mov	rbx, qword ptr [rdi + 8]
	call	free
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	jne	.label_382
.label_377:
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
	.align	32
	#Procedure 0x406620

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
	jne	.label_397
	lea	rsi, [rsi]
	mov	ecx, esi
	nop	
	and	ecx, 1
	lea	rsi, [rsi]
	test	rsi, rsi
	js	.label_388
	lea	rdi, [rdi]
	cvtsi2ss	xmm0, rsi
	lea	rdi, [rdi]
	jmp	.label_396
.label_388:
	shr	rsi, 1
	or	rcx, rsi
	mov	rsp, rsp
	cvtsi2ss	xmm0, rcx
	mov	rbp, rbp
	addss	xmm0, xmm0
.label_396:
	nop	
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_355]]
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
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_356]]
	mov	rbp, rbp
	jae	.label_385
.label_397:
	mov	rsp, rsp
	cmp	rsi, 0xa
	mov	rbp, rbp
	mov	ebx, 0xa
	mov	rbp, rbp
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_393
	nop	word ptr cs:[rax + rax]
.label_392:
	lea	rsi, [rsi]
	add	rbx, 2
.label_393:
	cmp	rbx, -1
	je	.label_385
	cmp	rbx, 0xa
	mov	rbp, rbp
	mov	esi, 0xc
	nop	
	mov	edi, 9
	lea	rsi, [rsi]
	mov	ecx, 3
	lea	rsi, [rsi]
	jb	.label_390
.label_401:
	nop	
	xor	edx, edx
	mov	rax, rbx
	nop	
	div	rcx
	test	rdx, rdx
	je	.label_390
	lea	rdi, [rdi + rsi + 4]
	nop	
	add	rcx, 2
	add	rsi, 8
	lea	rsi, [rsi]
	cmp	rdi, rbx
	jb	.label_401
.label_390:
	mov	rsp, rsp
	xor	edx, edx
	nop	
	mov	rax, rbx
	div	rcx
	mov	rsp, rsp
	test	rdx, rdx
	je	.label_392
	nop	
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rsi, [rsi]
	ja	.label_385
	mov	bpl, 1
	mov	rbp, rbp
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_391
	nop	
	mov	esi, 0x10
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_385
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
	je	.label_387
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
	jmp	.label_391
.label_387:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x48], rax
	nop	
	mov	r12, qword ptr [rsp]
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jmp	.label_403
.label_398:
	add	r12, 0x10
.label_403:
	nop	
	cmp	r12, r15
	lea	rsi, [rsi]
	jae	.label_394
	cmp	qword ptr [r12], 0
	je	.label_398
	mov	rbp, rbp
	mov	rbp, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_400
	mov	rbp, rbp
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_395:
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp]
	nop	
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	lea	rsi, [rsi]
	jae	.label_399
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	nop	
	shl	rax, 4
	lea	rdi, [rdi]
	cmp	qword ptr [rdx + rax], 0
	je	.label_402
	mov	rbp, rbp
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp + 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_386
	nop	
.label_402:
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
.label_386:
	mov	rbp, rbp
	test	rcx, rcx
	mov	rbp, rcx
	nop	
	jne	.label_395
.label_400:
	nop	
	mov	qword ptr [r12 + 8], 0
	nop	
	jmp	.label_398
.label_394:
	nop	
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rbp, rbp
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_389
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp]
	call	free
.label_385:
	mov	rbp, rbp
	xor	ebp, ebp
.label_391:
	mov	al, bpl
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
.label_399:
	mov	rbp, rbp
	call	abort
.label_389:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406990

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
	mov	qword ptr [rsp], rsi
	mov	r15, rdi
	mov	rbp, rbp
	mov	r13, qword ptr [rsi]
	mov	rbp, rbp
	mov	rax, qword ptr [rsi + 8]
	nop	
	cmp	r13, rax
	nop	
	jae	.label_415
	nop	
	test	dl, dl
	je	.label_404
	nop	dword ptr [rax]
.label_418:
	nop	
	cmp	qword ptr [r13], 0
	mov	rbp, rbp
	je	.label_422
	lea	rdi, [rdi]
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_414
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r15 + 0x10]
	nop	dword ptr [rax]
.label_409:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	nop	
	call	qword ptr [r15 + 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	cmp	rax, rsi
	jae	.label_406
	mov	rbp, rbp
	mov	rdx, qword ptr [r15]
	mov	rcx, qword ptr [rbp + 8]
	nop	
	shl	rax, 4
	mov	rsp, rsp
	cmp	qword ptr [rdx + rax], 0
	lea	rsi, [rsi]
	je	.label_416
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rdx + rax + 8], rbp
	nop	
	jmp	.label_423
	nop	word ptr cs:[rax + rax]
.label_416:
	mov	rbp, rbp
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r15 + 0x18]
	nop	
	mov	qword ptr [rbp], 0
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rbp + 8], rax
	nop	
	mov	qword ptr [r15 + 0x48], rbp
.label_423:
	test	rcx, rcx
	mov	rbp, rcx
	mov	rsp, rsp
	jne	.label_409
	mov	rax, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
.label_414:
	mov	rsp, rsp
	mov	qword ptr [r13 + 8], 0
.label_422:
	mov	rsp, rsp
	add	r13, 0x10
	mov	rsp, rsp
	cmp	r13, rax
	jb	.label_418
	jmp	.label_415
	nop	word ptr cs:[rax + rax]
.label_404:
	mov	rbp, rbp
	mov	r12, qword ptr [r13]
	mov	rbp, rbp
	test	r12, r12
	mov	rsp, rsp
	je	.label_410
	lea	rdi, [rdi]
	mov	r14, qword ptr [r13 + 8]
	test	r14, r14
	mov	rsi, qword ptr [r15 + 0x10]
	nop	
	je	.label_417
	nop	dword ptr [rax + rax]
.label_420:
	mov	rbx, qword ptr [r14]
	mov	rdi, rbx
	nop	
	call	qword ptr [r15 + 0x30]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	cmp	rax, rsi
	jae	.label_406
	mov	rdx, qword ptr [r15]
	nop	
	mov	rcx, qword ptr [r14 + 8]
	nop	
	shl	rax, 4
	nop	
	cmp	qword ptr [rdx + rax], 0
	mov	rsp, rsp
	je	.label_413
	mov	rdi, qword ptr [rdx + rax + 8]
	nop	
	mov	qword ptr [r14 + 8], rdi
	mov	qword ptr [rdx + rax + 8], r14
	lea	rdi, [rdi]
	jmp	.label_421
	nop	word ptr [rax + rax]
.label_413:
	add	rdx, rax
	nop	
	mov	qword ptr [rdx], rbx
	mov	rbp, rbp
	inc	qword ptr [r15 + 0x18]
	mov	qword ptr [r14], 0
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x48]
	nop	
	mov	qword ptr [r14 + 8], rax
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x48], r14
.label_421:
	mov	rbp, rbp
	test	rcx, rcx
	mov	r14, rcx
	jne	.label_420
	mov	r12, qword ptr [r13]
.label_417:
	mov	rbp, rbp
	mov	qword ptr [r13 + 8], 0
	mov	rbp, rbp
	mov	rdi, r12
	call	qword ptr [r15 + 0x30]
	nop	
	mov	rbx, rax
	mov	rbp, rbp
	cmp	rbx, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	jae	.label_405
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	lea	rdi, [rdi]
	cmp	qword ptr [rbp + rbx], 0
	je	.label_424
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x48]
	test	rax, rax
	je	.label_408
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x48], rcx
	jmp	.label_411
	nop	word ptr cs:[rax + rax]
.label_424:
	lea	rsi, [rsi]
	add	rbp, rbx
	mov	rbp, rbp
	mov	qword ptr [rbp], r12
	inc	qword ptr [r15 + 0x18]
	lea	rsi, [rsi]
	jmp	.label_419
.label_408:
	mov	rbp, rbp
	mov	edi, 0x10
	mov	rsp, rsp
	call	malloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_407
.label_411:
	mov	qword ptr [rax], r12
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + rbx + 8]
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp + rbx + 8], rax
.label_419:
	mov	qword ptr [r13], 0
	nop	
	mov	rax, qword ptr [rsp]
	mov	rbp, rbp
	dec	qword ptr [rax + 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
.label_410:
	mov	rsp, rsp
	add	r13, 0x10
	cmp	r13, rax
	nop	
	jb	.label_404
.label_415:
	nop	
	mov	al, 1
.label_412:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_407:
	xor	eax, eax
	jmp	.label_412
.label_406:
	call	abort
.label_405:
	mov	rsp, rsp
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406ca0

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
	je	.label_435
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
	jae	.label_435
	mov	rbx, qword ptr [r13]
	mov	rbp, rbp
	shl	rbp, 4
	mov	rbp, rbp
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	nop	
	test	rsi, rsi
	je	.label_430
	mov	rsp, rsp
	cmp	rsi, r14
	je	.label_432
	mov	rdi, r14
	nop	
	call	qword ptr [r13 + 0x38]
	test	al, al
	lea	rdi, [rdi]
	je	.label_436
	mov	rax, qword ptr [r12]
	lea	rdi, [rdi]
	jmp	.label_425
.label_432:
	mov	rax, r14
	jmp	.label_438
.label_436:
	mov	rax, qword ptr [rbx + rbp + 8]
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_430
	lea	rbp, [rbx + rbp + 8]
	nop	
.label_453:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	mov	rsp, rsp
	je	.label_447
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	mov	rsp, rsp
	test	al, al
	jne	.label_451
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_453
	nop	
	jmp	.label_430
.label_447:
	mov	rbp, rbp
	mov	rax, r14
	jmp	.label_425
.label_451:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp]
.label_425:
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_430
.label_438:
	lea	rdi, [rdi]
	xor	ebp, ebp
	test	r15, r15
	je	.label_426
	lea	rsi, [rsi]
	mov	qword ptr [r15], rax
	mov	rsp, rsp
	jmp	.label_426
.label_430:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsp, rsp
	mov	edx, eax
	and	edx, 1
	nop	
	test	rax, rax
	mov	rbp, rbp
	js	.label_445
	cvtsi2ss	xmm1, rax
	jmp	.label_446
.label_445:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	lea	rdi, [rdi]
	addss	xmm1, xmm1
.label_446:
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	edx, ecx
	and	edx, 1
	mov	rbp, rbp
	test	rcx, rcx
	mov	rbp, rbp
	js	.label_452
	cvtsi2ss	xmm0, rcx
	jmp	.label_428
.label_452:
	shr	rcx, 1
	or	rdx, rcx
	lea	rsi, [rsi]
	cvtsi2ss	xmm0, rdx
	lea	rdi, [rdi]
	addss	xmm0, xmm0
.label_428:
	lea	rdi, [rdi]
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm1, xmm3
	nop	
	jbe	.label_433
	nop	
	mov	ecx, OFFSET FLAT:default_tuning
	mov	rsp, rsp
	cmp	rax, rcx
	mov	rbp, rbp
	je	.label_441
	ucomiss	xmm2,  dword ptr [dword ptr [rip + label_351]]
	jbe	.label_429
	nop	
	movss	xmm3,  dword ptr [dword ptr [rip + label_357]]
	ucomiss	xmm3, xmm2
	jbe	.label_429
	mov	rbp, rbp
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_364]]
	jbe	.label_429
	movss	xmm3, dword ptr [rax]
	lea	rsi, [rsi]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	lea	rdi, [rdi]
	jb	.label_429
	addss	xmm3,  dword ptr [dword ptr [rip + label_351]]
	ucomiss	xmm2, xmm3
	jbe	.label_429
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5,  dword ptr [dword ptr [rip + label_363]]
	ucomiss	xmm5, xmm4
	mov	rbp, rbp
	jb	.label_429
	lea	rsi, [rsi]
	ucomiss	xmm4, xmm3
	lea	rsi, [rsi]
	ja	.label_427
.label_429:
	mov	qword ptr [word ptr [r13 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	lea	rdi, [rdi]
	movss	xmm2,  dword ptr [dword ptr [rip + label_444]]
	jmp	.label_427
.label_441:
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:default_tuning
.label_427:
	movaps	xmm3, xmm2
	mov	rsp, rsp
	mulss	xmm3, xmm0
	lea	rsi, [rsi]
	ucomiss	xmm1, xmm3
	jbe	.label_433
	nop	
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rbp, rbp
	jne	.label_454
	mov	rbp, rbp
	mulss	xmm0, xmm2
.label_454:
	lea	rsi, [rsi]
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_356]]
	mov	rsp, rsp
	jae	.label_426
	nop	
	movss	xmm1,  dword ptr [dword ptr [rip + label_355]]
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
	je	.label_426
	mov	rsi, qword ptr [r13 + 0x10]
	nop	
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	lea	rsi, [rsi]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_435
	nop	
	mov	r15, qword ptr [r13]
	mov	rsp, rsp
	shl	rbp, 4
	mov	rbp, rbp
	lea	r12, [r15 + rbp]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + rbp]
	test	rsi, rsi
	je	.label_433
	cmp	rsi, r14
	mov	rbp, rbp
	mov	rax, r14
	lea	rdi, [rdi]
	je	.label_434
	mov	rdi, r14
	mov	rbp, rbp
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_455
	mov	rbp, rbp
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	jmp	.label_434
.label_455:
	mov	rax, qword ptr [r15 + rbp + 8]
	nop	
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_433
	lea	rbp, [r15 + rbp + 8]
.label_431:
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	lea	rdi, [rdi]
	je	.label_450
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsp, rsp
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	mov	rsp, rsp
	test	al, al
	mov	rsp, rsp
	jne	.label_443
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 8]
	mov	rsp, rsp
	add	rbp, 8
	test	rax, rax
	mov	rsp, rsp
	jne	.label_431
	lea	rsi, [rsi]
	jmp	.label_433
.label_450:
	mov	rax, r14
	lea	rdi, [rdi]
	jmp	.label_434
.label_443:
	mov	rax, qword ptr [rbp]
.label_434:
	mov	rsp, rsp
	test	rax, rax
	jne	.label_437
.label_433:
	cmp	qword ptr [r12], 0
	je	.label_439
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	mov	rbp, rbp
	je	.label_442
	mov	rcx, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [r13 + 0x48], rcx
	nop	
	jmp	.label_440
.label_439:
	lea	rsi, [rsi]
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0,  xmmword ptr [word ptr [rip + label_448]]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	mov	rsp, rsp
	jmp	.label_449
.label_442:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_426
.label_440:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_449:
	lea	rdi, [rdi]
	mov	ebp, 1
.label_426:
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
.label_435:
	mov	rsp, rsp
	call	abort
.label_437:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4070e0

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
	je	.label_456
	nop	
	test	ecx, ecx
	mov	rbp, rbp
	cmove	rbx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rax, rbx
.label_456:
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbx
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407130
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
	jae	.label_475
	mov	rbp, rbp
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	nop	
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_472
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_459
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rsp, rsp
	test	al, al
	nop	
	je	.label_464
	mov	r14, qword ptr [r13]
.label_459:
	nop	
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_467
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
	jmp	.label_471
.label_464:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_472
	lea	rsi, [rsi]
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_466:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_457
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	mov	rsp, rsp
	jne	.label_461
	mov	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	lea	rsi, [rsi]
	jne	.label_466
	lea	rsi, [rsi]
	jmp	.label_472
.label_467:
	mov	qword ptr [r13], 0
	lea	rsi, [rsi]
	jmp	.label_471
.label_457:
	mov	rcx, rax
	jmp	.label_477
.label_461:
	mov	r14, qword ptr [rcx]
.label_477:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x48], rcx
.label_471:
	lea	rdi, [rdi]
	xor	r12d, r12d
	test	r14, r14
	je	.label_472
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	mov	rbp, rbp
	jne	.label_458
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_462
	mov	rsp, rsp
	cvtsi2ss	xmm1, rax
	jmp	.label_469
.label_462:
	shr	rax, 1
	mov	rsp, rsp
	or	rcx, rax
	mov	rsp, rsp
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_469:
	mov	rcx, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	nop	
	test	rcx, rcx
	js	.label_474
	cvtsi2ss	xmm0, rcx
	mov	rsp, rsp
	jmp	.label_476
.label_474:
	mov	rbp, rbp
	shr	rcx, 1
	or	rdx, rcx
	nop	
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_476:
	movaps	xmm3, xmm2
	nop	
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_458
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	lea	rsi, [rsi]
	je	.label_463
	lea	rdi, [rdi]
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_351]]
	nop	
	jbe	.label_468
	mov	rsp, rsp
	movss	xmm4,  dword ptr [dword ptr [rip + label_357]]
	ucomiss	xmm4, xmm3
	mov	rsp, rsp
	jbe	.label_468
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_468
	mov	rbp, rbp
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4,  dword ptr [dword ptr [rip + label_364]]
	jbe	.label_468
	lea	rsi, [rsi]
	movss	xmm4,  dword ptr [dword ptr [rip + label_351]]
	addss	xmm4, xmm2
	mov	rbp, rbp
	ucomiss	xmm3, xmm4
	jbe	.label_468
	movss	xmm3, dword ptr [rax + 4]
	nop	
	movss	xmm5,  dword ptr [dword ptr [rip + label_363]]
	nop	
	ucomiss	xmm5, xmm3
	jb	.label_468
	ucomiss	xmm3, xmm4
	ja	.label_460
.label_468:
	mov	qword ptr [word ptr [r15 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_460
.label_463:
	mov	eax, OFFSET FLAT:default_tuning
.label_460:
	mulss	xmm2, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm2, xmm1
	jbe	.label_458
	mulss	xmm0, dword ptr [rax + 4]
	mov	rbp, rbp
	cmp	byte ptr [rax + 0x10], 0
	mov	rsp, rsp
	jne	.label_473
	mulss	xmm0, dword ptr [rax + 8]
.label_473:
	movss	xmm1,  dword ptr [dword ptr [rip + label_355]]
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
	jne	.label_458
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_465
.label_470:
	nop	
	mov	rbx, qword ptr [rdi + 8]
	mov	rsp, rsp
	call	free
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	jne	.label_470
.label_465:
	nop	
	mov	qword ptr [r15 + 0x48], 0
.label_458:
	nop	
	mov	r12, r14
.label_472:
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
.label_475:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407480

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
	#Procedure 0x4074c0
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
	#Procedure 0x4074d0

	.globl triple_compare
	.type triple_compare, @function
triple_compare:
	nop
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_478
	nop	
	mov	rax, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_479
	lea	rsi, [rsi]
	push	rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	same_name
	mov	rsp, rsp
	add	rsp, 8
	ret	
.label_478:
	mov	rsp, rsp
	xor	eax, eax
	ret	
.label_479:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407510

	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_481
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_480
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
.label_481:
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	ret	
.label_480:
	lea	rsi, [rsi]
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407560

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
	#Procedure 0x407590

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	nop	
	sub	rsp, 0xd8
	nop	
	test	al, al
	lea	rdi, [rdi]
	je	.label_482
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
.label_482:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	dl, 0x40
	je	.label_484
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
	ja	.label_485
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	mov	rbp, rbp
	mov	dword ptr [rsp], ecx
	jmp	.label_483
.label_485:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rcx
.label_483:
	mov	ecx, dword ptr [rax]
.label_484:
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
	.align	32
	#Procedure 0x407690

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
	js	.label_486
	mov	rsp, rsp
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_487
	mov	dword ptr [r14], ebp
	mov	rsp, rsp
	jmp	.label_486
.label_487:
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
.label_486:
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
	#Procedure 0x407710

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
	je	.label_488
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
	jl	.label_490
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_490
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
	jne	.label_489
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_489:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_490:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_488:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_8
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
	#Procedure 0x407800
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
	#Procedure 0x407850
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
	#Procedure 0x407870
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
	#Procedure 0x407890
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
	#Procedure 0x407900
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
	#Procedure 0x407920
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
	je	.label_491
	test	rdx, rdx
	nop	
	je	.label_491
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_491:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407960
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
	.align	32
	#Procedure 0x407a10

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
	sub	rsp, 0xf8
	mov	ebx, r9d
	nop	
	mov	dword ptr [rsp + 0x24], ebx
	mov	r12d, r8d
	mov	r15, rcx
	mov	qword ptr [rsp + 0xe0], rdx
	mov	rbp, rbp
	mov	r13, rsi
	mov	qword ptr [rsp + 0xb8], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x140]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x138]
	mov	qword ptr [rsp + 0x18], rax
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xa8], rax
	mov	dl, bl
	mov	rbp, rbp
	shr	dl, 1
	mov	rbp, rbp
	and	dl, 1
	nop	
	mov	eax, ebx
	and	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x94], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x5c], ebx
	mov	rsp, rsp
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xa0], rax
	mov	eax, 0
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xc8], rcx
.label_537:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r12d
	lea	rsi, [rsi]
	cmp	r12d, 0xa
	lea	rdi, [rdi]
	ja	.label_559
	mov	r9d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	r10, r15
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_565]]
.label_957:
	mov	r15d, edi
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.11
	nop	
	mov	esi, r12d
	mov	r14, r10
	nop	
	mov	r13b, r8b
	mov	bl, dl
	mov	rbp, rbp
	call	gettext_quote
	mov	qword ptr [rsp + 0x18], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	rsp, rsp
	mov	esi, r12d
	call	gettext_quote
	mov	rsp, rsp
	mov	dl, bl
	mov	rsp, rsp
	mov	edi, r15d
	mov	r8b, r13b
	mov	r10, r14
	nop	
	mov	qword ptr [rsp + 0x98], rax
.label_958:
	nop	
	mov	qword ptr [rsp + 0xd8], r10
	mov	byte ptr [rsp + 0xf7], r8b
	mov	dword ptr [rsp + 0x38], edi
	test	dl, 1
	mov	rbp, rbp
	mov	r15b, dl
	mov	rbp, rbp
	mov	r14d, 0
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	jne	.label_591
	mov	al, byte ptr [rdx]
	test	al, al
	mov	r14d, 0
	je	.label_591
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_614:
	mov	rsp, rsp
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_606
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_606:
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + r14 + 1]
	mov	rsp, rsp
	inc	r14
	test	al, al
	mov	rbp, rbp
	jne	.label_614
.label_591:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x98]
	nop	
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	strlen
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa0], rax
	mov	rbp, rbp
	mov	r9d, r12d
	mov	qword ptr [rsp + 0x68], rbx
	mov	r13b, 1
	mov	rbp, rbp
	mov	sil, r15b
	mov	r10, qword ptr [rsp + 0xd8]
	nop	
	mov	r8b, byte ptr [rsp + 0xf7]
	mov	edi, dword ptr [rsp + 0x38]
	mov	r11, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	jmp	.label_492
.label_950:
	xor	r9d, r9d
	xor	r14d, r14d
	mov	rbp, rbp
	mov	r13b, al
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_492
.label_953:
	lea	rsi, [rsi]
	mov	al, 1
.label_951:
	lea	rsi, [rsi]
	mov	dl, 1
.label_954:
	nop	
	test	dl, 1
	lea	rsi, [rsi]
	mov	cl, 1
	mov	rbp, rbp
	je	.label_522
	mov	rbp, rbp
	mov	cl, al
.label_522:
	mov	al, cl
.label_952:
	nop	
	mov	r9d, 2
	lea	rsi, [rsi]
	test	dl, 1
	mov	rsp, rsp
	jne	.label_526
	test	rbp, rbp
	je	.label_531
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx], 0x27
	mov	r14d, 1
	lea	rdi, [rdi]
	jmp	.label_494
.label_526:
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_494
.label_955:
	mov	rsp, rsp
	mov	r9d, 5
	test	dl, 1
	jne	.label_539
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_544
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x22
	mov	r14d, 1
	jmp	.label_549
.label_956:
	mov	r13b, 1
	mov	rsp, rsp
	mov	r9d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xa0], rax
	mov	sil, 1
	lea	rsi, [rsi]
	jmp	.label_492
.label_531:
	mov	r14d, 1
	nop	word ptr cs:[rax + rax]
.label_494:
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0x68], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xa0], rcx
	nop	
	mov	r13b, al
	nop	
	mov	sil, dl
	jmp	.label_492
.label_539:
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_549
.label_544:
	nop	
	mov	r14d, 1
.label_549:
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0x68], rax
	mov	rbp, rbp
	mov	eax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa0], rax
	lea	rdi, [rdi]
	mov	r13b, 1
	mov	sil, dl
	nop	word ptr cs:[rax + rax]
.label_492:
	mov	qword ptr [rsp + 0x28], rsi
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x46], r13b
	cmp	qword ptr [rsp + 0x130], 0
	mov	rbp, rbp
	setne	r12b
	mov	rbp, rbp
	cmp	r9d, 2
	nop	
	setne	r15b
	sete	al
	mov	cl, r13b
	mov	rsp, rsp
	and	cl, 1
	mov	byte ptr [rsp + 0x37], cl
	lea	rsi, [rsi]
	sete	byte ptr [rsp + 0xf6]
	mov	bl, r15b
	and	bl, cl
	mov	byte ptr [rsp + 0x83], bl
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0xa0], 0
	lea	rsi, [rsi]
	setne	cl
	mov	dl, cl
	lea	rsi, [rsi]
	and	dl, bl
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x56], dl
	mov	rbp, rbp
	mov	bl, sil
	and	bl, 1
	mov	byte ptr [rsp + 0xc6], bl
	sete	dl
	lea	rdi, [rdi]
	and	al, bl
	mov	byte ptr [rsp + 0x47], al
	and	r12b, bl
	mov	byte ptr [rsp + 0x57], r12b
	mov	rsp, rsp
	or	dl, r15b
	mov	byte ptr [rsp + 0xc7], dl
	and	r13b, sil
	mov	rbp, rbp
	and	r13b, cl
	mov	byte ptr [rsp + 0xb7], r13b
	mov	rsp, rsp
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_592
	nop	dword ptr [rax]
.label_586:
	mov	rsp, rsp
	inc	r15
.label_592:
	lea	rdi, [rdi]
	cmp	r10, -1
	lea	rsi, [rsi]
	je	.label_512
	cmp	r15, r10
	jne	.label_516
	jmp	.label_517
	nop	dword ptr [rax]
.label_512:
	mov	rcx, -1
	nop	
	cmp	byte ptr [r11 + r15], 0
	mov	rsp, rsp
	je	.label_519
.label_516:
	cmp	byte ptr [rsp + 0x56], 0
	nop	
	je	.label_546
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rbx, [r15 + rax]
	mov	qword ptr [rsp + 0x88], r15
	lea	rsi, [rsi]
	cmp	rax, 2
	jb	.label_536
	lea	rdi, [rdi]
	cmp	r10, -1
	nop	
	jne	.label_536
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	rdi, r11
	mov	r12b, r8b
	mov	r13, r9
	mov	r15, r14
	lea	rsi, [rsi]
	mov	r14, r11
	nop	
	call	strlen
	mov	rbp, rbp
	mov	r11, r14
	mov	r14, r15
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0x38]
	mov	r9, r13
	mov	r8b, r12b
	mov	r10, rax
.label_536:
	mov	rsp, rsp
	cmp	rbx, r10
	lea	rdi, [rdi]
	jbe	.label_557
	mov	dword ptr [rsp + 0x84], 0
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	jmp	.label_558
	nop	dword ptr [rax]
.label_546:
	nop	
	mov	dword ptr [rsp + 0x84], 0
	lea	rsi, [rsi]
	jmp	.label_558
	nop	word ptr cs:[rax + rax]
.label_557:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], r14
	mov	r15d, edi
	lea	rdi, [rdi]
	mov	r13, r9
	mov	rsp, rsp
	mov	r12b, r8b
	lea	rsi, [rsi]
	mov	rbx, r10
	mov	rax, qword ptr [rsp + 0x88]
	lea	rdi, [r11 + rax]
	nop	
	mov	r14, r11
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xa0]
	call	memcmp
	lea	rsi, [rsi]
	test	eax, eax
	sete	al
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x84], eax
	mov	rsp, rsp
	jne	.label_590
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xc6], 0
	mov	rsp, rsp
	mov	r10, rbx
	nop	
	mov	r8b, r12b
	lea	rsi, [rsi]
	mov	r9, r13
	nop	
	mov	edi, r15d
	mov	rbp, rbp
	mov	r11, r14
	mov	r14, qword ptr [rsp + 0x38]
	nop	
	mov	r15, qword ptr [rsp + 0x88]
	je	.label_558
	jmp	.label_513
.label_590:
	mov	r10, rbx
	mov	r8b, r12b
	mov	r9, r13
	mov	edi, r15d
	lea	rsi, [rsi]
	mov	r11, r14
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x38]
	mov	r15, qword ptr [rsp + 0x88]
	nop	dword ptr [rax + rax]
.label_558:
	movzx	r12d, byte ptr [r11 + r15]
	cmp	r12, 0x7e
	ja	.label_619
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	r13b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	rsp, rsp
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_620]]
.label_970:
	test	r15, r15
	jne	.label_499
	jmp	.label_503
.label_974:
	xor	eax, eax
	cmp	r10, -1
	je	.label_505
	test	r15, r15
	jne	.label_533
	nop	
	cmp	r10, 1
	je	.label_503
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_501
.label_963:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0x37], 0
	mov	rbp, rbp
	je	.label_496
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_513
	nop	
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_527
	nop	
	mov	al, dil
	nop	
	and	al, 1
	jne	.label_527
	cmp	r14, rbp
	jae	.label_530
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_530:
	nop	
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_611
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x24
.label_611:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_543
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_543:
	nop	
	add	r14, 3
	lea	rdi, [rdi]
	mov	dil, 1
.label_527:
	mov	rcx, r14
	nop	
	cmp	rcx, rbp
	mov	rsp, rsp
	jae	.label_555
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x5c
.label_555:
	lea	r14, [rcx + 1]
	mov	rbp, rbp
	mov	al, 1
	mov	r12b, 0x30
	cmp	r9d, 2
	je	.label_561
	lea	rdx, [r15 + 1]
	cmp	rdx, r10
	jae	.label_569
	nop	
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	mov	rbp, rbp
	movzx	edx, dl
	cmp	edx, 9
	mov	rbp, rbp
	ja	.label_547
	mov	rsp, rsp
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_580
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rdx + r14], 0x30
.label_580:
	nop	
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_583
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + rdx], 0x30
.label_583:
	add	rcx, 3
	xor	r13d, r13d
	lea	rdi, [rdi]
	mov	r14, rcx
	jmp	.label_501
.label_964:
	mov	bl, 0x62
	nop	
	jmp	.label_593
.label_965:
	mov	rsp, rsp
	mov	cl, 0x74
	lea	rsi, [rsi]
	jmp	.label_545
.label_966:
	mov	bl, 0x76
	mov	rbp, rbp
	jmp	.label_593
.label_967:
	lea	rdi, [rdi]
	mov	bl, 0x66
	jmp	.label_593
.label_968:
	mov	cl, 0x72
	lea	rdi, [rdi]
	jmp	.label_545
.label_971:
	nop	
	mov	al, 1
	mov	qword ptr [rsp + 0xc8], rax
	cmp	r9d, 2
	jne	.label_594
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_610
	nop	
	test	rbp, rbp
	sete	al
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rdx, rcx
	mov	rsp, rsp
	test	rdx, rdx
	setne	cl
	lea	rsi, [rsi]
	or	cl, al
	mov	rbp, rbp
	cmove	rdx, rbp
	mov	qword ptr [rsp + 0x48], rdx
	mov	rsp, rsp
	mov	eax, 0
	cmove	rbp, rax
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_616
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_616:
	lea	rax, [r14 + 1]
	lea	rdi, [rdi]
	cmp	rax, rbp
	jae	.label_504
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x5c
.label_504:
	lea	rdi, [rdi]
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_596
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_596:
	mov	rbp, rbp
	add	r14, 3
	lea	rdi, [rdi]
	xor	edi, edi
.label_594:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	r13b, 1
	jmp	.label_501
.label_972:
	lea	rdi, [rdi]
	cmp	r9d, 5
	je	.label_525
	mov	rbp, rbp
	cmp	r9d, 2
	jne	.label_499
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_499
	nop	
	jmp	.label_613
.label_973:
	mov	rsp, rsp
	cmp	r9d, 2
	nop	
	jne	.label_538
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_541
	jmp	.label_575
.label_619:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	qword ptr [rsp + 0xd0], r9
	mov	byte ptr [rsp + 0xf7], r8b
	mov	qword ptr [rsp + 0x78], rbp
	cmp	qword ptr [rsp + 0xa8], 1
	lea	rsi, [rsi]
	jne	.label_542
	mov	rbp, rbp
	mov	rbx, r10
	mov	rbp, r11
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	r11, rbp
	nop	
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r12*2]
	shr	r13d, 0xe
	mov	rsp, rsp
	and	r13b, 1
	lea	rdi, [rdi]
	mov	edx, 1
	lea	rsi, [rsi]
	jmp	.label_573
.label_505:
	lea	rdi, [rdi]
	test	r15, r15
	jne	.label_578
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_578
.label_503:
	mov	dl, 1
.label_969:
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_581
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r13b, dl
	lea	rdi, [rdi]
	jmp	.label_501
.label_496:
	cmp	dword ptr [rsp + 0x94], 0
	mov	rsp, rsp
	jne	.label_586
	jmp	.label_499
.label_538:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	cl, r12b
	je	.label_545
.label_541:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_566
.label_545:
	cmp	byte ptr [rsp + 0xc7], 0
	mov	rbp, rbp
	mov	bl, cl
	je	.label_599
.label_593:
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x37], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_501
	jmp	.label_605
.label_542:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], 0
	lea	rsi, [rsi]
	cmp	r10, -1
	lea	rbp, [rsp + 0x70]
	jne	.label_608
	mov	rdi, r11
	mov	rbx, r11
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	r11, rbx
	mov	r10, rax
.label_608:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd8], r10
	nop	
	mov	r13b, 1
	nop	
	cmp	byte ptr [rsp + 0x47], 0
	lea	rsi, [rsi]
	mov	edx, 0
	je	.label_615
	lea	rax, [r11 + r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe8], rax
	lea	rsi, [rsi]
	mov	r13b, 1
	nop	
	xor	edx, edx
.label_576:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x88], rdx
	lea	rax, [rdx + r15]
	lea	rsi, [r11 + rax]
	mov	rsp, rsp
	mov	rdx, r10
	lea	rsi, [rsi]
	sub	rdx, rax
	lea	rdi, [rsp + 0x58]
	mov	rcx, rbp
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	rbx, rax
	cmp	rbx, -2
	lea	rdi, [rdi]
	je	.label_518
	mov	rsp, rsp
	cmp	rbx, -1
	movabs	rsi, 0x20000002b
	je	.label_523
	test	rbx, rbx
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_577
	lea	rsi, [rsi]
	cmp	rbx, 2
	nop	
	mov	rbp, qword ptr [rsp + 0x78]
	jb	.label_534
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, qword ptr [rsp + 0xe8]
	lea	rdi, [rdi]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax + rax]
.label_507:
	nop	
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	mov	rbp, rbp
	cmp	edx, 0x21
	mov	rbp, rbp
	ja	.label_553
	lea	rsi, [rsi]
	bt	rsi, rdx
	nop	
	jb	.label_556
.label_553:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbx
	jb	.label_507
.label_534:
	mov	edi, dword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_571
	mov	rbp, rbp
	xor	r13d, r13d
.label_571:
	lea	rbp, [rsp + 0x70]
	nop	
	mov	rax, qword ptr [rsp + 0x88]
	lea	rdi, [rdi]
	add	rax, rbx
	mov	rdi, rbp
	nop	
	mov	rbx, rax
	call	mbsinit
	mov	rdx, rbx
	test	eax, eax
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	je	.label_576
	jmp	.label_498
	nop	
.label_615:
	mov	qword ptr [rsp + 0x88], rdx
	lea	rax, [rdx + r15]
	lea	rsi, [rsi]
	lea	rsi, [r11 + rax]
	mov	rdx, r10
	lea	rdi, [rdi]
	sub	rdx, rax
	mov	rsp, rsp
	lea	rdi, [rsp + 0x58]
	lea	rsi, [rsi]
	mov	rcx, rbp
	mov	rbp, rbp
	mov	rbx, rbp
	call	rpl_mbrtowc
	mov	rbp, rax
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_597
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_523
	mov	rbp, rbp
	cmp	rbp, -2
	mov	rsp, rsp
	je	.label_518
	mov	edi, dword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	call	iswprint
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_552
	xor	r13d, r13d
.label_552:
	nop	
	mov	rax, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	add	rax, rbp
	mov	rsp, rsp
	mov	rbp, rbx
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rbx, rax
	lea	rdi, [rdi]
	call	mbsinit
	mov	rdx, rbx
	test	eax, eax
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_615
	lea	rsi, [rsi]
	jmp	.label_498
.label_578:
	lea	rdi, [rdi]
	mov	r10, -1
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_501
.label_525:
	cmp	dword ptr [rsp + 0x5c], 0
	lea	rdi, [rdi]
	je	.label_499
	lea	rcx, [r15 + 2]
	cmp	rcx, r10
	jae	.label_499
	movzx	eax, byte ptr [r15 + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_499
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	nop	
	cmp	edx, 0x3e
	lea	rdi, [rdi]
	ja	.label_521
	movabs	rsi, 0x7000a38200000000
	mov	rbp, rbp
	bt	rsi, rdx
	lea	rsi, [rsi]
	jae	.label_524
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_589
	lea	rdi, [rdi]
	cmp	r14, rbp
	jae	.label_535
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x3f
.label_535:
	mov	rsp, rsp
	lea	rax, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rax, rbp
	jae	.label_540
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x22
.label_540:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_587
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rax], 0x22
.label_587:
	nop	
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_510
	nop	
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x3f
.label_510:
	add	r14, 4
	xor	eax, eax
	nop	
	mov	r15, rcx
	mov	rsp, rsp
	mov	r12b, dl
	mov	rsp, rsp
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_501
.label_499:
	mov	rbp, rbp
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_501:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x83], 0
	je	.label_574
	cmp	qword ptr [rsp + 0x130], 0
	jne	.label_579
	nop	
	jmp	.label_604
	nop	dword ptr [rax + rax]
.label_574:
	cmp	byte ptr [rsp + 0x57], 0
	lea	rdi, [rdi]
	je	.label_604
.label_579:
	lea	rdi, [rdi]
	mov	cl, r12b
	lea	rdi, [rdi]
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	lea	rsi, [rsi]
	mov	cl, r12b
	shl	esi, cl
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
	jne	.label_584
	mov	rcx, qword ptr [rsp + 0x130]
	and	esi, dword ptr [rcx + rdx*4]
	mov	rbp, rbp
	jmp	.label_570
	nop	word ptr cs:[rax + rax]
.label_604:
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
.label_570:
	mov	bl, r12b
	je	.label_566
	jmp	.label_605
.label_584:
	mov	bl, r12b
.label_605:
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_513
	cmp	r9d, 2
	jne	.label_607
	mov	al, dil
	and	al, 1
	jne	.label_607
	lea	rdi, [rdi]
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_612
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_612:
	nop	
	lea	rax, [r14 + 1]
	mov	rsp, rsp
	cmp	rax, rbp
	jae	.label_618
	mov	rcx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_618:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_493
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_493:
	mov	rsp, rsp
	add	r14, 3
	mov	dil, 1
.label_607:
	mov	rbp, rbp
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_502
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_502:
	mov	rbp, rbp
	inc	r14
	jmp	.label_509
.label_533:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_501
.label_561:
	xor	r13d, r13d
	jmp	.label_501
.label_569:
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_501
.label_547:
	mov	rsp, rsp
	xor	r13d, r13d
	jmp	.label_501
.label_523:
	xor	r13d, r13d
.label_597:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	jmp	.label_498
.label_518:
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x88]
	lea	rax, [rdx + r15]
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	cmp	rax, r10
	mov	r11, qword ptr [rsp + 0xe0]
	jae	.label_532
	lea	rax, [r11 + r15]
.label_551:
	mov	rbp, rbp
	cmp	byte ptr [rax + rdx], 0
	mov	rbp, rbp
	je	.label_564
	lea	rcx, [r15 + rdx + 1]
	inc	rdx
	cmp	rcx, r10
	lea	rdi, [rdi]
	jb	.label_551
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_498
.label_532:
	xor	r13d, r13d
	jmp	.label_498
.label_564:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_498
.label_577:
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0x88]
.label_498:
	mov	rbp, rbp
	mov	rbx, r10
.label_573:
	mov	rsp, rsp
	and	r13b, 1
	lea	rdi, [rdi]
	mov	cl, r13b
	lea	rdi, [rdi]
	or	cl, byte ptr [rsp + 0xf6]
	cmp	rdx, 1
	mov	rbp, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	mov	r8b, byte ptr [rsp + 0xf7]
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0xd0]
	mov	edi, dword ptr [rsp + 0x38]
	ja	.label_567
	test	cl, cl
	je	.label_567
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_501
.label_567:
	mov	rsp, rsp
	add	rdx, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x88], rdx
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_585
	nop	dword ptr [rax]
.label_550:
	nop	
	inc	r14
	mov	rbp, rbp
	mov	r12b, byte ptr [r11 + r15 + 1]
	nop	
	mov	r15, rdx
.label_585:
	mov	rsp, rsp
	test	cl, cl
	je	.label_595
	mov	edx, dword ptr [rsp + 0x84]
	test	dl, 1
	lea	rsi, [rsi]
	je	.label_598
	cmp	r14, rbp
	jae	.label_601
	nop	
	mov	rdx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + r14], 0x5c
.label_601:
	inc	r14
	mov	dword ptr [rsp + 0x84], 0
.label_598:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_609
	nop	dword ptr [rax + rax]
.label_595:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_617
	cmp	r9d, 2
	mov	rsp, rsp
	mov	r10, rbx
	jne	.label_602
	mov	rsp, rsp
	mov	al, dil
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_602
	lea	rsi, [rsi]
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_495
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_495:
	lea	rax, [r14 + 1]
	nop	
	cmp	rax, rbp
	jae	.label_554
	mov	rdx, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_554:
	lea	rax, [r14 + 2]
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_508
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdx + rax], 0x27
.label_508:
	lea	rsi, [rsi]
	add	r14, 3
	mov	rsp, rsp
	mov	dil, 1
.label_602:
	cmp	r14, rbp
	jae	.label_514
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_514:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_600
	mov	dl, r12b
	lea	rdi, [rdi]
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], dl
.label_600:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	mov	rsp, rsp
	jae	.label_603
	mov	dl, r12b
	shr	dl, 3
	and	dl, 7
	nop	
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rsi + rax], dl
.label_603:
	nop	
	add	r14, 3
	mov	rsp, rsp
	and	r12b, 7
	or	r12b, 0x30
	mov	rbp, rbp
	mov	al, 1
.label_609:
	lea	rdx, [r15 + 1]
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x88], rdx
	lea	rsi, [rsi]
	jbe	.label_566
	mov	rbp, rbp
	test	dil, 1
	lea	rsi, [rsi]
	je	.label_560
	lea	rsi, [rsi]
	mov	bl, al
	and	bl, 1
	jne	.label_560
	nop	
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_500
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + r14], 0x27
.label_500:
	lea	rsi, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rsi, rbp
	jae	.label_582
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdi + rsi], 0x27
.label_582:
	add	r14, 2
	mov	rsp, rsp
	xor	edi, edi
.label_560:
	nop	
	mov	rbx, r10
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_550
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + r14], r12b
	jmp	.label_550
	nop	word ptr cs:[rax + rax]
.label_566:
	test	dil, 1
	je	.label_588
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_588
	nop	
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_563
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_563:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_515
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_515:
	lea	rdi, [rdi]
	add	r14, 2
	nop	
	xor	edi, edi
.label_588:
	lea	rsi, [rsi]
	mov	bl, r12b
.label_509:
	cmp	r14, rbp
	jae	.label_528
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + r14], bl
.label_528:
	inc	r14
	lea	rsi, [rsi]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	lea	rsi, [rsi]
	mov	r8b, r13b
	jmp	.label_586
.label_521:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_501
.label_524:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_501
	nop	word ptr [rax + rax]
.label_517:
	nop	
	mov	rcx, r15
.label_519:
	mov	rbp, rbp
	cmp	r9d, 2
	nop	
	setne	al
	mov	rbp, rbp
	test	r14, r14
	mov	rsp, rsp
	setne	dl
	cmp	byte ptr [rsp + 0xc6], 0
	lea	rsi, [rsi]
	je	.label_497
	mov	rsp, rsp
	or	al, dl
	je	.label_506
.label_497:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe0], r11
	cmp	r9d, 2
	nop	
	setne	al
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x46]
	nop	
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	je	.label_511
	mov	rsp, rsp
	or	al, dl
	jne	.label_511
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rdi, [rdi]
	jne	.label_529
	cmp	qword ptr [rsp + 0x48], 0
	mov	rsp, rsp
	je	.label_511
	mov	rbp, rbp
	test	rbp, rbp
	mov	rbp, rbp
	mov	r12d, r9d
	mov	al, bl
	mov	r15, rcx
	lea	rsi, [rsi]
	mov	dl, sil
	mov	r13, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	je	.label_537
.label_511:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x68]
	test	rdx, rdx
	je	.label_548
	nop	
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_548
	mov	rsp, rsp
	mov	al, byte ptr [rdx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_548
	mov	rbp, rbp
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_568:
	cmp	r14, rbp
	jae	.label_562
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_562:
	mov	rbp, rbp
	inc	r14
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	lea	rsi, [rsi]
	test	al, al
	jne	.label_568
.label_548:
	cmp	r14, rbp
	jae	.label_572
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + r14], 0
	jmp	.label_572
.label_581:
	lea	rdi, [rdi]
	mov	r9d, 2
	jmp	.label_513
.label_556:
	mov	r9d, 2
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	jmp	.label_513
.label_617:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_513
.label_506:
	lea	rdi, [rdi]
	mov	r10, rcx
	mov	rsp, rsp
	jmp	.label_513
.label_599:
	nop	
	mov	r9d, 2
.label_513:
	cmp	byte ptr [rsp + 0x37], 0
	mov	r8d, 4
	mov	rbp, rbp
	cmove	r8d, r9d
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x24]
	lea	rdi, [rdi]
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	nop	
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], 0
	nop	
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	rsi, rbp
	lea	rdi, [rdi]
	mov	rdx, r11
	nop	
	mov	rcx, r10
.label_520:
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	r14, rax
.label_572:
	lea	rdi, [rdi]
	mov	rax, r14
	lea	rdi, [rdi]
	add	rsp, 0xf8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
.label_529:
	mov	rax, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x130]
	nop	
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x24]
	jmp	.label_520
.label_610:
	mov	r9d, 2
	jmp	.label_513
.label_575:
	nop	
	mov	r9d, 2
	mov	rsp, rsp
	jmp	.label_513
.label_613:
	mov	r9d, 2
	mov	rbp, rbp
	jmp	.label_513
.label_589:
	mov	r9d, 5
	nop	
	jmp	.label_513
.label_559:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408eb0
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
	.align	32
	#Procedure 0x408ff0
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
	je	.label_621
	mov	qword ptr [rax], rbx
.label_621:
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
	#Procedure 0x409140
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_622
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_626:
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
	jl	.label_626
.label_622:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_625
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_623]], OFFSET FLAT:slot0
.label_625:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_624
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_624:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409200
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x409210

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
	js	.label_633
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_628
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_631
.label_628:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_629
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
	jne	.label_632
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_632:
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
.label_631:
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
	ja	.label_630
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
	je	.label_627
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_627:
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
.label_630:
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
.label_633:
	lea	rdi, [rdi]
	call	abort
.label_629:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x409480
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409490
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
	.align	32
	#Procedure 0x4094c0
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
	.align	32
	#Procedure 0x4094f0

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
	je	.label_634
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
.label_634:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409580
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
	je	.label_635
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
.label_635:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409620

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
	je	.label_636
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
.label_636:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4096b0
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
	je	.label_637
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
.label_637:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x409720
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_638]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_639]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_640]]
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
	.align	32
	#Procedure 0x4097c0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_638]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_639]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_640]]
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
	.align	32
	#Procedure 0x409860

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_638]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_639]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_640]]
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
	.align	32
	#Procedure 0x4098d0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_638]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_639]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_640]]
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
	.align	32
	#Procedure 0x409940

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
	je	.label_641
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
.label_641:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	32
	#Procedure 0x409a20
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_638]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_639]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_640]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_642
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_642
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
.label_642:
	nop	
	call	abort
	.section	.text
	.align	32
	#Procedure 0x409ab0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_638]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_639]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_640]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_643
	test	rdx, rdx
	je	.label_643
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
.label_643:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409b40
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_638]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_639]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_640]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_644
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_644
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
.label_644:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409be0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_638]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_639]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_640]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_645
	test	rsi, rsi
	je	.label_645
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
.label_645:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409c80
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409c90
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
	.align	32
	#Procedure 0x409cb0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsp, rsp
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409cd0

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
	.align	32
	#Procedure 0x409d00

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
	jne	.label_647
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_649
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_646
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_646
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_646
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_646
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_646
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_646
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_647
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_647
.label_649:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_646
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_646
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_646
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_646
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_646
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_646
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_648
.label_646:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_647:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_648:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_647
	mov	eax, OFFSET FLAT:.str.18_0
	jmp	.label_647
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409e70

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
	mov	r12d, r8d
	mov	rsp, rsp
	mov	r13, rcx
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
	mov	r8, r13
	lea	rdi, [rdi]
	mov	r9d, r12d
	lea	rsi, [rsi]
	call	syscall
	mov	rsp, rsp
	mov	rbx, rax
	call	__errno_location
	nop	
	test	ebx, ebx
	jns	.label_652
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0x16
	je	.label_657
	lea	rdi, [rdi]
	cmp	ecx, 0x5f
	je	.label_657
	cmp	ecx, 0x26
	mov	rbp, rbp
	jne	.label_652
.label_657:
	mov	rbp, rbp
	test	r12d, r12d
	je	.label_650
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	cmp	r12d, 2
	jb	.label_653
	nop	
	mov	rax, qword ptr [rsp]
	mov	rbp, rbp
	mov	dword ptr [rax], 0x5f
	lea	rdi, [rdi]
	mov	ebx, 0xffffffff
	mov	rbp, rbp
	jmp	.label_652
.label_650:
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	xor	r12d, r12d
.label_659:
	mov	rdi, rbp
	call	strlen
	lea	rsi, [rsi]
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	rdi, r13
	nop	
	call	strlen
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_655
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	je	.label_655
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbx + rbp - 1]
	cmp	ecx, 0x2f
	lea	rdi, [rdi]
	je	.label_660
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rax + r13 - 1]
	cmp	eax, 0x2f
	mov	rsp, rsp
	jne	.label_655
.label_660:
	lea	rcx, [rsp + 8]
	mov	edi, 1
	nop	
	mov	r8d, 0x100
	mov	esi, r15d
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	__fxstatat
	lea	rdi, [rdi]
	mov	ebx, 0xffffffff
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_652
	test	r12b, r12b
	mov	rbp, rbp
	je	.label_654
	lea	rdi, [rdi]
	mov	eax, 0xf000
	nop	
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	je	.label_655
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	mov	dword ptr [rax], 2
	lea	rdi, [rdi]
	jmp	.label_652
.label_653:
	lea	rcx, [rsp + 0x98]
	mov	edi, 1
	mov	rbp, rbp
	mov	r8d, 0x100
	mov	esi, r14d
	mov	rdx, r13
	lea	rdi, [rdi]
	call	__fxstatat
	test	eax, eax
	je	.label_658
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp]
	mov	eax, dword ptr [rax]
	mov	rbp, rbp
	mov	r12b, 1
	cmp	eax, 2
	je	.label_659
	mov	ebx, 0xffffffff
	cmp	eax, 0x4b
	jne	.label_652
.label_658:
	nop	
	mov	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x11
	mov	rsp, rsp
	mov	ebx, 0xffffffff
	nop	
	jmp	.label_652
.label_654:
	lea	rcx, [rsp + 0x98]
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	mov	r8d, 0x100
	nop	
	mov	esi, r14d
	lea	rdi, [rdi]
	mov	rdx, r13
	nop	
	call	__fxstatat
	nop	
	test	eax, eax
	je	.label_661
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax], 2
	lea	rsi, [rsi]
	jne	.label_652
	mov	rsp, rsp
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	jne	.label_652
	mov	rbp, rbp
	jmp	.label_655
.label_661:
	nop	
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsp + 0xb0]
	and	ecx, eax
	cmp	ecx, 0x4000
	nop	
	jne	.label_651
	and	eax, dword ptr [rsp + 0x20]
	mov	rbp, rbp
	cmp	eax, 0x4000
	lea	rsi, [rsi]
	jne	.label_656
.label_655:
	nop	
	mov	edi, r15d
	nop	
	mov	rsi, rbp
	lea	rsi, [rsi]
	mov	edx, r14d
	mov	rbp, rbp
	mov	rcx, r13
	call	renameat
	mov	rsp, rsp
	mov	ebx, eax
.label_652:
	mov	eax, ebx
	add	rsp, 0x128
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_651:
	mov	rax, qword ptr [rsp]
	mov	rbp, rbp
	mov	dword ptr [rax], 0x14
	lea	rdi, [rdi]
	jmp	.label_652
.label_656:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0x15
	jmp	.label_652
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a150

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
	#Procedure 0x40a170

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
	mov	dword ptr [rsp + 0x134], edx
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
	jne	.label_666
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x128], r15
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 4], r12d
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, rbp
	mov	rdx, r14
	nop	
	call	memcmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_664
	xor	ebp, ebp
	mov	rsp, rsp
	jmp	.label_665
.label_666:
	xor	ebp, ebp
	mov	rbp, rbp
	jmp	.label_665
.label_664:
	mov	rdi, r13
	mov	rsp, rsp
	call	dir_name
	lea	rdi, [rdi]
	mov	rbp, rax
	lea	rcx, [rsp + 0x98]
	lea	rsi, [rsi]
	mov	edi, 1
	mov	r8d, 0x100
	lea	rsi, [rsi]
	mov	esi, dword ptr [rsp + 4]
	mov	rdx, rbp
	call	__fxstatat
	test	eax, eax
	nop	
	je	.label_667
	call	__errno_location
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	rcx, rbp
	mov	rbp, rbp
	call	error
.label_667:
	mov	rdi, rbp
	mov	rbp, rbp
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x128]
	mov	rbp, rbp
	call	dir_name
	mov	rbx, rax
	nop	
	lea	rcx, [rsp + 8]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0x134]
	mov	rdx, rbx
	call	__fxstatat
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_663
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	rsp, rsp
	mov	rcx, rbx
	lea	rsi, [rsi]
	call	error
.label_663:
	mov	rax, qword ptr [rsp + 0xa0]
	mov	rsp, rsp
	cmp	rax, qword ptr [rsp + 0x10]
	nop	
	jne	.label_668
	nop	
	mov	rax, qword ptr [rsp + 0x98]
	cmp	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	sete	bpl
	jmp	.label_662
.label_668:
	xor	ebp, ebp
.label_662:
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	free
.label_665:
	mov	rsp, rsp
	mov	al, bpl
	lea	rsi, [rsi]
	add	rsp, 0x138
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a350

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
	sub	rsp, 0x28
	mov	rbx, r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x20], rdx
	mov	ebp, esi
	mov	rbp, rbp
	mov	r13, rdi
	nop	
	call	__errno_location
	mov	qword ptr [rsp], rax
	nop	
	mov	r12d, dword ptr [rax]
	nop	
	mov	rdi, r13
	call	strlen
	mov	r14, rax
	lea	rsi, [rsi]
	movsxd	r15, ebp
	lea	rsi, [rsi]
	lea	rax, [r15 + rbx]
	lea	rdi, [rdi]
	cmp	r14, rax
	mov	rsp, rsp
	jb	.label_673
	mov	rbp, rbp
	mov	rax, r14
	nop	
	sub	rax, rbx
	sub	rax, r15
	add	rax, r13
	mov	rbp, rbp
	mov	rcx, -1
	nop	dword ptr [rax]
.label_672:
	nop	
	movzx	edx, byte ptr [rax + rcx + 1]
	inc	rcx
	nop	
	cmp	edx, 0x58
	nop	
	je	.label_672
	mov	rsp, rsp
	cmp	rcx, rbx
	jae	.label_676
.label_673:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0x16
	mov	eax, 0xffffffff
.label_674:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_676:
	mov	rsi, rbx
	nop	
	mov	qword ptr [rsp + 0x10], rsi
	xor	ebx, ebx
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	call	randint_all_new
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rbp, rbp
	mov	eax, 0xffffffff
	test	rbp, rbp
	nop	
	je	.label_674
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xc], r12d
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	mov	rsp, rsp
	je	.label_671
	lea	rdi, [rdi]
	neg	rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rax
	sub	r14, r15
	add	r14, r13
	xor	r12d, r12d
	nop	dword ptr [rax + rax]
.label_677:
	mov	rbx, rax
	nop	word ptr cs:[rax + rax]
.label_678:
	mov	esi, 0x3d
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rbp, rbp
	call	randint_genmax
	mov	al,  byte ptr [byte ptr [rax + letters]]
	mov	byte ptr [r14 + rbx], al
	inc	rbx
	jne	.label_678
	nop	
	mov	rdi, r13
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	call	qword ptr [rsp + 0x18]
	mov	r15d, eax
	mov	rsp, rsp
	test	r15d, r15d
	mov	rsp, rsp
	jns	.label_675
	mov	rcx, r13
	nop	
	mov	rax, qword ptr [rsp]
	mov	rbp, rbp
	mov	r13d, dword ptr [rax]
	cmp	r13d, 0x11
	lea	rsi, [rsi]
	mov	r15d, 0xffffffff
	jne	.label_669
	nop	
	inc	r12d
	lea	rsi, [rsi]
	cmp	r12d, 0x3a2f7
	mov	r13, rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	jbe	.label_677
	jmp	.label_670
	nop	dword ptr [rax]
.label_671:
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x20]
	call	qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	r15d, eax
	lea	rsi, [rsi]
	test	r15d, r15d
	jns	.label_675
	mov	rbp, rbp
	mov	rcx, r13
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	r13d, dword ptr [rax]
	cmp	r13d, 0x11
	mov	rsp, rsp
	mov	r15d, 0xffffffff
	jne	.label_669
	mov	rbp, rbp
	inc	ebx
	lea	rdi, [rdi]
	cmp	ebx, 0x3a2f7
	lea	rdi, [rdi]
	mov	r13, rcx
	jbe	.label_671
.label_670:
	mov	rsp, rsp
	mov	rdi, rbp
	call	randint_all_free
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0x11
	mov	eax, 0xffffffff
	lea	rsi, [rsi]
	jmp	.label_674
.label_675:
	mov	rax, qword ptr [rsp]
	mov	rbp, rbp
	mov	r13d, dword ptr [rsp + 0xc]
	mov	dword ptr [rax], r13d
.label_669:
	mov	rdi, rbp
	nop	
	call	randint_all_free
	mov	rax, qword ptr [rsp]
	nop	
	mov	dword ptr [rax], r13d
	mov	rbp, rbp
	mov	eax, r15d
	lea	rsi, [rsi]
	jmp	.label_674
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a5c0
	.globl gen_tempname_len
	.type gen_tempname_len, @function
gen_tempname_len:

	mov	rbp, rbp
	push	rax
	mov	dword ptr [rsp + 4], edx
	nop	
	cmp	ecx, 3
	jae	.label_679
	lea	rsi, [rsi]
	movsxd	rax, ecx
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_680]]
	lea	rsi, [rsi]
	lea	rdx, [rsp + 4]
	call	try_tempname_len
	pop	rcx
	ret	
.label_679:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str_9
	mov	esi, OFFSET FLAT:.str.1_6
	mov	rsp, rsp
	mov	edx, 0x147
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.gen_tempname_len
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a610

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
	#Procedure 0x40a640

	.globl try_dir
	.type try_dir, @function
try_dir:
	mov	esi, 0x1c0
	lea	rsi, [rsi]
	jmp	mkdir
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a650

	.globl try_nocreate
	.type try_nocreate, @function
try_nocreate:
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x90
	lea	rsi, [rsi]
	mov	rax, rdi
	lea	rdx, [rsp]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	rsi, rax
	call	__lxstat
	mov	ebx, eax
	call	__errno_location
	test	ebx, ebx
	je	.label_682
	cmp	dword ptr [rax], 0x4b
	jne	.label_681
.label_682:
	mov	dword ptr [rax], 0x11
.label_681:
	xor	ecx, ecx
	cmp	dword ptr [rax], 2
	mov	eax, 0xffffffff
	cmove	eax, ecx
	nop	
	add	rsp, 0x90
	pop	rbx
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a6b0
	.globl gen_tempname
	.type gen_tempname, @function
gen_tempname:

	lea	rdi, [rdi]
	push	rax
	mov	dword ptr [rsp + 4], edx
	cmp	ecx, 3
	mov	rsp, rsp
	jae	.label_683
	mov	rsp, rsp
	movsxd	rax, ecx
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_680]]
	lea	rdx, [rsp + 4]
	nop	
	mov	r8d, 6
	mov	rsp, rsp
	call	try_tempname_len
	pop	rcx
	mov	rbp, rbp
	ret	
.label_683:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_9
	nop	
	mov	esi, OFFSET FLAT:.str.1_6
	mov	edx, 0x147
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.gen_tempname_len
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a710
	.globl try_tempname
	.type try_tempname, @function
try_tempname:

	mov	r8d, 6
	lea	rsi, [rsi]
	jmp	try_tempname_len
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a720

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
	ja	.label_684
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
	jmp	.label_685
.label_684:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_685:
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
	#Procedure 0x40a790

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
	je	.label_690
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_10
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_689
.label_690:
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
.label_689:
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
	mov	esi, OFFSET FLAT:.str.3_2
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
	ja	.label_692
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_694]]
.label_923:
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
.label_692:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_693
.label_924:
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
.label_925:
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
.label_926:
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
	jmp	.label_687
.label_927:
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
	jmp	.label_686
.label_928:
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
	jmp	.label_695
.label_929:
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
.label_695:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_686:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_687:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_691
.label_931:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_693:
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
	jmp	.label_688
.label_930:
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
.label_688:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_691:
	mov	rbp, rbp
	call	__fprintf_chk
.label_922:
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
	#Procedure 0x40ab80
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_696:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_696
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40abb0
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_700:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_697
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_699
	nop	word ptr cs:[rax + rax]
.label_697:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_699:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_698
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_700
.label_698:
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
	#Procedure 0x40ac40

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_701
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
.label_701:
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
.label_703:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_702
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_704
	nop	dword ptr [rax + rax]
.label_702:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_704:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_705
	inc	r9
	cmp	r9, 0xa
	jb	.label_703
.label_705:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ad80
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
	#Procedure 0x40ae10
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
	jb	.label_706
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_707
	test	rax, rax
	je	.label_706
.label_707:
	nop	
	pop	rbx
	ret	
.label_706:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ae60

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_708
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_709
.label_708:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_709:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ae90
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
	jb	.label_711
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_710
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_710
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_710:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_712
	test	rax, rax
	je	.label_711
.label_712:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_711:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40af10

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_713
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_713
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_713:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_714
	test	rax, rax
	nop	
	je	.label_715
.label_714:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_715:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40af60
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_716
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_720
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_719
.label_716:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_722
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_722:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_717
.label_719:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_718
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_718
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_718:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_721
	test	rax, rax
	mov	rbp, rbp
	je	.label_720
.label_721:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_720:
	call	xalloc_die
.label_717:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b040
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_724
	test	rax, rax
	mov	rbp, rbp
	je	.label_723
.label_724:
	pop	rbx
	ret	
.label_723:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40b060
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_725
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_728
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_729
	call	free
	xor	eax, eax
	jmp	.label_726
.label_725:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_727
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_729:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_726
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_727
.label_726:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_727:
	mov	rbp, rbp
	call	xalloc_die
.label_728:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b0f0
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
	je	.label_730
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_731
.label_730:
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
.label_731:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b150
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
	jb	.label_732
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_732
	pop	rcx
	ret	
.label_732:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b180

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
	je	.label_734
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_733
.label_734:
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
.label_733:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b1e0

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
	je	.label_735
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_736
.label_735:
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
.label_736:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b240

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
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b290

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
	jne	.label_737
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	mov	rsp, rsp
	je	.label_738
.label_737:
	mov	rbp, rbp
	mov	rax, rbx
	nop	
	pop	rbx
	mov	rbp, rbp
	ret	
.label_738:
	mov	rbp, rbp
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b2e0

	.globl yesno
	.type yesno, @function
yesno:
	push	rbx
	sub	rsp, 0x10
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], 0
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + stdin]]
	mov	rsp, rsp
	lea	rdi, [rsp]
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	call	__getdelim
	test	rax, rax
	jle	.label_740
	mov	rdi, qword ptr [rsp]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rax + rdi - 1]
	cmp	ecx, 0xa
	mov	rsp, rsp
	jne	.label_741
	mov	byte ptr [rdi + rax - 1], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp]
.label_741:
	call	rpmatch
	mov	rbp, rbp
	test	eax, eax
	setg	bl
	mov	rsp, rsp
	jmp	.label_739
.label_740:
	xor	ebx, ebx
.label_739:
	mov	rdi, qword ptr [rsp]
	call	free
	mov	al, bl
	nop	
	add	rsp, 0x10
	nop	
	pop	rbx
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b370

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_742
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_743
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
	je	.label_743
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
.label_742:
	mov	ecx, 1
.label_743:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b3e0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_744
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_744
	test	byte ptr [rbx + 1], 1
	je	.label_744
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_744:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b420

	.globl freadahead
	.type freadahead, @function
freadahead:
	mov	rcx, qword ptr [rdi + 0x28]
	nop	
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	nop	
	ja	.label_745
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x10]
	sub	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	nop	
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	je	.label_746
	mov	rcx, qword ptr [rdi + 0x58]
	sub	rcx, qword ptr [rdi + 0x48]
.label_746:
	lea	rdi, [rdi]
	add	rax, rcx
.label_745:
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b460

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
	jne	.label_747
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_747
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_748
.label_747:
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
.label_748:
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
	je	.label_749
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_749:
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
	#Procedure 0x40b510

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
	je	.label_750
	nop	
	cmp	r15, -2
	jb	.label_750
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_750
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_750:
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
	#Procedure 0x40b5a0

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
	mov	qword ptr [rsp + 8], rdi
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
	mov	qword ptr [rsp + 0x10], rax
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_753
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, rbp
	movabs	r15, 0x7fffffffffffffff
	nop	word ptr cs:[rax + rax]
.label_757:
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rdx, r12
	lea	rsi, [rsi]
	call	readlink
	mov	r13, rax
	nop	
	test	r13, r13
	mov	rbp, rbp
	jns	.label_759
	call	__errno_location
	nop	
	mov	rbp, rax
	mov	rbp, rbp
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	mov	rsp, rsp
	jne	.label_752
.label_759:
	mov	rsp, rsp
	cmp	r13, r12
	nop	
	jb	.label_756
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	mov	rax, r12
	mov	rsp, rsp
	shr	rax, 0x3e
	mov	rbp, rbp
	jne	.label_758
	add	r12, r12
	nop	
	jmp	.label_751
	nop	dword ptr [rax + rax]
.label_758:
	cmp	r12, r15
	mov	rsp, rsp
	mov	r12, r15
	jae	.label_754
.label_751:
	mov	rsp, rsp
	mov	rdi, r12
	mov	rbp, rbp
	call	malloc
	mov	rbp, rbp
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_757
	mov	rsp, rsp
	jmp	.label_753
.label_756:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp + 0x10], rbx
	jmp	.label_753
.label_754:
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	jmp	.label_755
.label_752:
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	call	free
	mov	dword ptr [rbp], r14d
.label_755:
	mov	rbp, rbp
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_753:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
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
	#Procedure 0x40b720

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	jmp	usage
	.section	.text
	.align	32
	#Procedure 0x40b730

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
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rbx
	lea	rsi, [rsi]
	mov	r15, rdi
	call	strlen
	mov	r12, rax
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rbx]
	test	rbp, rbp
	je	.label_767
	lea	rdi, [rdi]
	test	r14, r14
	nop	
	je	.label_768
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 8], r14
	mov	rbp, rbp
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_766:
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_760
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rbp, rbp
	call	strlen
	lea	rsi, [rsi]
	cmp	rax, r12
	lea	rsi, [rsi]
	je	.label_762
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, -1
	mov	rbp, rbp
	je	.label_765
	mov	rdi, rax
	mov	rsp, rsp
	imul	rdi, r13
	add	rdi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rsi, r14
	mov	rdx, r13
	mov	rbp, rbp
	call	memcmp
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_760
	mov	al, 1
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_760
.label_765:
	mov	qword ptr [rsp + 0x18], rbx
	nop	dword ptr [rax + rax]
.label_760:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	lea	rsi, [rsi]
	add	r14, r13
	test	rbp, rbp
	jne	.label_766
	nop	
	jmp	.label_761
.label_767:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], -1
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	nop	
	jmp	.label_761
.label_768:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rsp, rsp
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_763:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rsp, rsp
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_764
	mov	rdi, rbp
	mov	rbp, rbp
	call	strlen
	nop	
	cmp	rax, r12
	je	.label_762
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	cmp	rax, -1
	nop	
	cmove	rax, rbx
	mov	qword ptr [rsp + 0x18], rax
	je	.label_764
	lea	rdi, [rdi]
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	nop	dword ptr [rax + rax]
.label_764:
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	test	rbp, rbp
	nop	
	jne	.label_763
.label_761:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbx, -2
	mov	rbp, rbp
	cmove	rbx, qword ptr [rsp + 0x18]
.label_762:
	lea	rdi, [rdi]
	mov	rax, rbx
	lea	rdi, [rdi]
	add	rsp, 0x28
	nop	
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b930
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
	je	.label_769
	mov	esi, OFFSET FLAT:.str.1_9
	nop	
	jmp	.label_770
.label_769:
	nop	
	mov	esi, OFFSET FLAT:.str_11
.label_770:
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
	#Procedure 0x40b9d0

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
	mov	r12, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp], rbx
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.2_4
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbx]
	nop	
	test	rbx, rbx
	je	.label_776
	lea	rdi, [rdi]
	xor	r13d, r13d
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_772:
	test	r15, r15
	mov	rbp, rbp
	je	.label_771
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	lea	rdi, [rdi]
	call	memcmp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_775
.label_771:
	mov	r13,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.3_3
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_774
	nop	dword ptr [rax]
.label_775:
	mov	rbp,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rsp, rsp
	mov	rcx, rax
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.4_1
	xor	eax, eax
	mov	rdi, rbp
	call	__fprintf_chk
.label_774:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	mov	rbx, qword ptr [rax + r15*8 + 8]
	inc	r15
	add	r12, r14
	lea	rsi, [rsi]
	test	rbx, rbx
	jne	.label_772
.label_776:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_773
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_773:
	mov	rsp, rsp
	mov	esi, 0xa
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	jmp	__overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bb50

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
	sub	rsp, 0x18
	mov	rbx, r9
	lea	rsi, [rsi]
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	r14, rsi
	mov	rbp, rdi
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rsp, rsp
	mov	rdx, r12
	mov	rcx, r15
	lea	rdi, [rdi]
	call	argmatch
	mov	rsp, rsp
	test	rax, rax
	jns	.label_779
	mov	qword ptr [rsp + 8], rbp
	mov	rbp, rbp
	xor	edi, edi
	cmp	rax, -1
	je	.label_777
	mov	esi, OFFSET FLAT:.str.1_9
	mov	rsp, rsp
	jmp	.label_778
.label_777:
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_11
.label_778:
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rax
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 8
	mov	rbp, rbp
	mov	rdx, r14
	call	quotearg_n_style
	nop	
	mov	r14, rax
	nop	
	mov	edi, 1
	mov	rsi, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	call	quote_n
	mov	rbp, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rcx, r14
	mov	r8, rbp
	call	error
	mov	rsp, rsp
	mov	rdi, r13
	mov	rbp, rbp
	mov	rsi, r12
	mov	rdx, r15
	mov	rbp, rbp
	call	argmatch_valid
	mov	rsp, rsp
	call	rbx
	mov	rbp, rbp
	mov	rax, -1
.label_779:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bc70
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
	je	.label_780
	lea	rsi, [rsi]
	add	rbx, 8
	nop	dword ptr [rax]
.label_781:
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
	je	.label_780
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	mov	rbp, rbp
	test	r13, r13
	mov	eax, 0
	jne	.label_781
.label_780:
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
	#Procedure 0x40bd00

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
	jne	.label_782
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_783
	test	cl, cl
	mov	rsp, rsp
	jne	.label_783
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_783
.label_782:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_783
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_783:
	mov	eax, ebx
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40bd90

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
	je	.label_785
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_784
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_786
.label_784:
	nop	
	mov	esi, OFFSET FLAT:.str.1_10
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_785
.label_786:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_785:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40bde0

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	lea	rsi, [rsi]
	mov	cl, byte ptr [rdi]
	xor	eax, eax
	test	cl, cl
	je	.label_787
	mov	rbp, rbp
	inc	rdi
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_788:
	movsx	rcx, cl
	rol	rax, 9
	add	rax, rcx
	lea	rdi, [rdi]
	mov	cl, byte ptr [rdi]
	mov	rbp, rbp
	inc	rdi
	test	cl, cl
	mov	rsp, rsp
	jne	.label_788
.label_787:
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40be30

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
	je	.label_789
	nop	
	mov	rax, rcx
.label_789:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40be70
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
	#Procedure 0x40bea0

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	lea	rsi, [rsi]
	push	rbx
	call	randread_new
	mov	rbx, rax
	xor	eax, eax
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_790
	mov	rsp, rsp
	mov	edi, 0x18
	call	xmalloc
	mov	qword ptr [rax], rbx
	mov	rsp, rsp
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [rax + 8], xmm0
.label_790:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bee0
	.globl randint_get_source
	.type randint_get_source, @function
randint_get_source:

	nop
	mov	rax, qword ptr [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bef0

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
	sub	rsp, 0x18
	lea	rsi, [rsi]
	mov	r13, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rdi
	mov	r15, qword ptr [rdi]
	mov	rbx, qword ptr [rdi + 8]
	mov	rbp, rbp
	lea	rax, [rdi + 8]
	mov	qword ptr [rsp], rax
	nop	
	mov	r14, qword ptr [rdi + 0x10]
	lea	rbp, [r13 + 1]
	mov	rsp, rsp
	lea	r12, [rsp + 0x10]
	nop	word ptr [rax + rax]
.label_794:
	nop	
	cmp	r14, r13
	jae	.label_791
	mov	rax, r14
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_792:
	lea	rsi, [rsi]
	shl	rax, 8
	or	rax, 0xff
	mov	rbp, rbp
	inc	rdx
	lea	rdi, [rdi]
	cmp	rax, r13
	lea	rdi, [rdi]
	jb	.label_792
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, r12
	call	randread
	mov	rbp, rbp
	mov	rax, r12
	nop	word ptr cs:[rax + rax]
.label_793:
	mov	rcx, rbx
	mov	rsp, rsp
	shl	rcx, 8
	mov	rsp, rsp
	movzx	ebx, byte ptr [rax]
	or	rbx, rcx
	shl	r14, 8
	or	r14, 0xff
	nop	
	inc	rax
	nop	
	cmp	r14, r13
	jb	.label_793
.label_791:
	mov	rcx, rbx
	mov	rsi, r14
	sub	rsi, r13
	lea	rdi, [rdi]
	je	.label_795
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rax, rsi
	div	rbp
	nop	
	mov	rdi, rdx
	mov	rsp, rsp
	sub	r14, rdi
	nop	
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, rcx
	div	rbp
	lea	rsi, [rsi]
	mov	rbx, rdx
	mov	rbp, rbp
	dec	rdi
	cmp	rcx, r14
	mov	r14, rdi
	ja	.label_794
	xor	edx, edx
	mov	rax, rcx
	div	rbp
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	xor	edx, edx
	mov	rax, rsi
	div	rbp
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, rbx
	jmp	.label_796
.label_795:
	mov	rsp, rsp
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rsp]
	movups	xmmword ptr [rax], xmm0
.label_796:
	mov	rax, rcx
	mov	rbp, rbp
	add	rsp, 0x18
	mov	rbp, rbp
	pop	rbx
	nop	
	pop	r12
	nop	
	pop	r13
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c060
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
	#Procedure 0x40c080

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
	mov	esi, 0x18
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	explicit_bzero
	mov	rbp, rbp
	mov	rdi, rbx
	call	free
	mov	rbp, rbp
	mov	dword ptr [rbp], r15d
	mov	rsp, rsp
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c0e0

	.globl randread_new
	.type randread_new, @function
randread_new:
	mov	rbp, rbp
	push	r15
	nop	
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	r12, rsi
	mov	r14, rdi
	lea	rsi, [rsi]
	test	r12, r12
	mov	rsp, rsp
	je	.label_802
	nop	
	xor	ebx, ebx
	test	r14, r14
	je	.label_800
	mov	esi, OFFSET FLAT:.str_12
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	call	fopen_safer
	lea	rdi, [rdi]
	mov	rbx, rax
	nop	
	xor	r15d, r15d
	lea	rsi, [rsi]
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_801
.label_800:
	nop	
	mov	edi, 0x1038
	call	xmalloc
	mov	r15, rax
	lea	rdi, [rdi]
	mov	qword ptr [r15], rbx
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [r15 + 8]], OFFSET FLAT:randread_error
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x10], r14
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_799
	mov	rsi, r15
	add	rsi, 0x18
	cmp	r12, 0x1000
	mov	ecx, 0x1000
	cmovbe	rcx, r12
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	rdi, rbx
	call	setvbuf
	mov	rsp, rsp
	jmp	.label_801
.label_802:
	mov	edi, 0x1038
	mov	rbp, rbp
	call	xmalloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rbp, rbp
	mov	qword ptr [r15], 0
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [r15 + 8]], OFFSET FLAT:randread_error
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x10], 0
	jmp	.label_801
.label_799:
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x18], 0
	mov	r14, r15
	add	r14, 0x20
	mov	rsp, rsp
	xor	r13d, r13d
	mov	edi, OFFSET FLAT:.str.3_4
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	call	open
	mov	rbp, rbp
	mov	ebx, eax
	test	ebx, ebx
	js	.label_798
	lea	rdi, [rdi]
	cmp	r12, 0x800
	mov	edx, 0x800
	mov	rsp, rsp
	cmovbe	rdx, r12
	mov	edi, ebx
	mov	rsi, r14
	call	read
	nop	
	mov	r12, rax
	mov	rbp, rbp
	mov	edi, ebx
	nop	
	call	close
	lea	rsi, [rsi]
	xor	r13d, r13d
	test	r12, r12
	js	.label_798
	lea	rsi, [rsi]
	cmp	r12, 0x7ff
	lea	rsi, [rsi]
	mov	r13, r12
	ja	.label_797
.label_798:
	mov	eax, 0x800
	lea	rsi, [rsi]
	sub	rax, r13
	cmp	rax, 0x10
	mov	ebx, 0x10
	mov	rbp, rbp
	cmovbe	rbx, rax
	lea	rsi, [rsi]
	lea	r12, [rsp]
	xor	esi, esi
	mov	rdi, r12
	lea	rdi, [rdi]
	call	gettimeofday
	mov	rsp, rsp
	lea	rdi, [r14 + r13]
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	memcpy
	add	rbx, r13
	cmp	rbx, 0x7ff
	ja	.label_797
	mov	eax, 0x800
	mov	rsp, rsp
	sub	rax, rbx
	mov	rsp, rsp
	cmp	rax, 4
	lea	rdi, [rdi]
	mov	r12d, 4
	lea	rdi, [rdi]
	cmovbe	r12, rax
	nop	
	call	getpid
	mov	rbp, rbp
	mov	dword ptr [rsp], eax
	nop	
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsi]
	lea	rsi, [rsp]
	mov	rdx, r12
	mov	rbp, rbp
	call	memcpy
	mov	rbp, rbp
	add	r12, rbx
	lea	rsi, [rsi]
	cmp	r12, 0x7ff
	mov	rsp, rsp
	ja	.label_797
	mov	eax, 0x800
	mov	rbp, rbp
	sub	rax, r12
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getppid
	mov	dword ptr [rsp], eax
	mov	rsp, rsp
	lea	rdi, [r14 + r12]
	nop	
	lea	rsi, [rsp]
	mov	rdx, rbx
	call	memcpy
	mov	rbp, rbp
	add	rbx, r12
	cmp	rbx, 0x7ff
	ja	.label_797
	mov	eax, 0x800
	nop	
	sub	rax, rbx
	cmp	rax, 4
	lea	rdi, [rdi]
	mov	r12d, 4
	lea	rsi, [rsi]
	cmovbe	r12, rax
	call	getuid
	mov	dword ptr [rsp], eax
	mov	rsp, rsp
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp]
	nop	
	mov	rdx, r12
	mov	rbp, rbp
	call	memcpy
	add	r12, rbx
	nop	
	cmp	r12, 0x7ff
	lea	rdi, [rdi]
	ja	.label_797
	mov	rbp, rbp
	mov	eax, 0x800
	lea	rsi, [rsi]
	sub	rax, r12
	nop	
	cmp	rax, 4
	mov	rbp, rbp
	mov	ebx, 4
	cmovbe	rbx, rax
	mov	rbp, rbp
	call	getgid
	mov	rsp, rsp
	mov	dword ptr [rsp], eax
	mov	rbp, rbp
	add	r12, r14
	lea	rdi, [rdi]
	lea	rsi, [rsp]
	mov	rdi, r12
	mov	rsp, rsp
	mov	rdx, rbx
	call	memcpy
.label_797:
	mov	rdi, r14
	nop	
	call	isaac_seed
.label_801:
	mov	rax, r15
	add	rsp, 0x10
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c410
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	rsp, rsp
	mov	qword ptr [rdi + 8], rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c420
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	mov	qword ptr [rdi + 0x10], rsi
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c430

	.globl randread
	.type randread, @function
randread:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	push	r15
	nop	
	push	r14
	push	r13
	nop	
	push	r12
	nop	
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rbp, rbp
	mov	rbx, rdx
	mov	rbp, rbp
	mov	r15, rsi
	nop	
	mov	r14, rdi
	mov	rcx, qword ptr [r14]
	mov	rsp, rsp
	test	rcx, rcx
	nop	
	je	.label_808
	mov	esi, 1
	mov	rdi, r15
	mov	rdx, rbx
	mov	rbp, rbp
	call	fread_unlocked
	mov	rbp, rax
	nop	
	call	__errno_location
	mov	r12, rax
	nop	
	cmp	rbp, rbx
	mov	rsp, rsp
	je	.label_805
	nop	
.label_803:
	lea	rdi, [rdi]
	sub	rbx, rbp
	add	r15, rbp
	mov	rax, qword ptr [r14]
	mov	eax, dword ptr [rax]
	and	eax, 0x20
	mov	rbp, rbp
	cmovne	eax, dword ptr [r12]
	mov	dword ptr [r12], eax
	mov	rdi, qword ptr [r14 + 0x10]
	call	qword ptr [r14 + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [r14]
	mov	rsp, rsp
	mov	esi, 1
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rdx, rbx
	call	fread_unlocked
	mov	rbp, rax
	cmp	rbx, rbp
	jne	.label_803
	mov	rsp, rsp
	jmp	.label_805
.label_808:
	mov	r12, qword ptr [r14 + 0x18]
	mov	rsp, rsp
	lea	r13, [r14 + 0x838]
	mov	rsi, r13
	sub	rsi, r12
	add	rsi, 0x800
	lea	rsi, [rsi]
	cmp	r12, rbx
	nop	
	jae	.label_807
	lea	rbp, [r14 + 0x20]
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rdx, r12
	lea	rdi, [rdi]
	call	memcpy
	add	r15, r12
	lea	rsi, [rsi]
	sub	rbx, r12
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_806:
	nop	
	cmp	rbx, 0x800
	jb	.label_809
	mov	rdi, rbp
	mov	rsi, r15
	call	isaac_refill
	add	r15, 0x800
	mov	rbp, rbp
	add	rbx, -0x800
	jne	.label_806
	mov	rbp, rbp
	jmp	.label_804
.label_809:
	mov	rdi, rbp
	mov	rsi, r13
	mov	rsp, rsp
	call	isaac_refill
	lea	rdi, [rdi]
	mov	r12d, 0x800
	mov	rsi, r13
.label_807:
	mov	rdi, r15
	mov	rdx, rbx
	call	memcpy
	sub	r12, rbx
.label_804:
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x18], r12
.label_805:
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c5b0

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
	je	.label_810
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r14
	jmp	rpl_fclose
.label_810:
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
	#Procedure 0x40c600

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
	je	.label_811
	mov	rsp, rsp
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	lea	rsi, [rsi]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	lea	rdi, [rdi]
	jne	.label_813
	mov	esi, OFFSET FLAT:.str.1_12
	jmp	.label_812
.label_813:
	mov	esi, OFFSET FLAT:.str.2_5
.label_812:
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
.label_811:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c690

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	mov	rax, qword ptr [rdi + 0x800]
	mov	rdx, qword ptr [rdi + 0x810]
	inc	rdx
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 0x808]
	mov	rbp, rbp
	add	rcx, rdx
	mov	qword ptr [rdi + 0x810], rdx
	nop	
	lea	r9, [rdi + 0x400]
	mov	rsp, rsp
	mov	r8, rsi
	mov	r10, rdi
	nop	dword ptr [rax]
.label_815:
	mov	r11, rax
	lea	rdi, [rdi]
	shl	r11, 0x15
	mov	rbp, rbp
	xor	r11, rax
	not	r11
	add	r11, qword ptr [r10 + 0x400]
	mov	rdx, qword ptr [r10]
	nop	
	mov	eax, edx
	and	eax, 0x7f8
	add	rcx, qword ptr [rdi + rax]
	lea	rsi, [rsi]
	add	rcx, r11
	mov	qword ptr [r10], rcx
	lea	rsi, [rsi]
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	qword ptr [r8], rdx
	mov	rax, r11
	shr	rax, 5
	xor	rax, r11
	nop	
	add	rax, qword ptr [r10 + 0x408]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r10 + 8]
	lea	rdi, [rdi]
	mov	r11d, ecx
	lea	rdi, [rdi]
	and	r11d, 0x7f8
	add	rdx, rax
	lea	rsi, [rsi]
	add	rdx, qword ptr [rdi + r11]
	mov	rbp, rbp
	mov	qword ptr [r10 + 8], rdx
	mov	rsp, rsp
	shr	rdx, 8
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [r8 + 8], rcx
	mov	rsp, rsp
	mov	r11, rax
	shl	r11, 0xc
	xor	r11, rax
	lea	rdi, [rdi]
	add	r11, qword ptr [r10 + 0x410]
	mov	rdx, qword ptr [r10 + 0x10]
	mov	rsp, rsp
	mov	eax, edx
	lea	rdi, [rdi]
	and	eax, 0x7f8
	lea	rdi, [rdi]
	add	rcx, r11
	nop	
	add	rcx, qword ptr [rdi + rax]
	nop	
	mov	qword ptr [r10 + 0x10], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x10], rdx
	mov	rax, r11
	shr	rax, 0x21
	mov	rbp, rbp
	xor	rax, r11
	add	rax, qword ptr [r10 + 0x418]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r10 + 0x18]
	lea	rsi, [rsi]
	mov	r11d, ecx
	and	r11d, 0x7f8
	lea	rsi, [rsi]
	add	rdx, rax
	add	rdx, qword ptr [rdi + r11]
	lea	rsi, [rsi]
	mov	qword ptr [r10 + 0x18], rdx
	shr	rdx, 8
	mov	rbp, rbp
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [r8 + 0x18], rcx
	add	r10, 0x20
	add	r8, 0x20
	mov	rbp, rbp
	cmp	r10, r9
	jb	.label_815
	add	rsi, 0x400
	lea	r8, [rdi + 0x800]
	nop	word ptr cs:[rax + rax]
.label_814:
	mov	r10, rax
	shl	r10, 0x15
	xor	r10, rax
	not	r10
	add	r10, qword ptr [r9 - 0x400]
	mov	rsp, rsp
	mov	rdx, qword ptr [r9]
	mov	rbp, rbp
	mov	eax, edx
	and	eax, 0x7f8
	add	rcx, qword ptr [rdi + rax]
	add	rcx, r10
	mov	rsp, rsp
	mov	qword ptr [r9], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	nop	
	add	rdx, qword ptr [rdi + rcx]
	mov	rbp, rbp
	mov	qword ptr [rsi], rdx
	mov	rax, r10
	nop	
	shr	rax, 5
	lea	rsi, [rsi]
	xor	rax, r10
	add	rax, qword ptr [r9 - 0x3f8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r9 + 8]
	mov	r10d, ecx
	and	r10d, 0x7f8
	nop	
	add	rdx, rax
	add	rdx, qword ptr [rdi + r10]
	mov	qword ptr [r9 + 8], rdx
	shr	rdx, 8
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 8], rcx
	mov	r10, rax
	shl	r10, 0xc
	nop	
	xor	r10, rax
	nop	
	add	r10, qword ptr [r9 - 0x3f0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r9 + 0x10]
	mov	eax, edx
	lea	rsi, [rsi]
	and	eax, 0x7f8
	add	rcx, r10
	lea	rdi, [rdi]
	add	rcx, qword ptr [rdi + rax]
	mov	qword ptr [r9 + 0x10], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	qword ptr [rsi + 0x10], rdx
	nop	
	mov	rax, r10
	nop	
	shr	rax, 0x21
	xor	rax, r10
	nop	
	add	rax, qword ptr [r9 - 0x3e8]
	mov	rcx, qword ptr [r9 + 0x18]
	mov	r10d, ecx
	mov	rsp, rsp
	and	r10d, 0x7f8
	mov	rbp, rbp
	add	rdx, rax
	add	rdx, qword ptr [rdi + r10]
	mov	qword ptr [r9 + 0x18], rdx
	shr	rdx, 8
	mov	rsp, rsp
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [rsi + 0x18], rcx
	add	r9, 0x20
	add	rsi, 0x20
	cmp	r9, r8
	nop	
	jb	.label_814
	mov	qword ptr [rdi + 0x800], rax
	mov	qword ptr [rdi + 0x808], rcx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c970

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	mov	rsp, rsp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rsp, rsp
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	movabs	rdx, 0x647c4677a2884b7c
	nop	
	movabs	r8, 0xb9f8b322c73ac862
	mov	rbp, rbp
	movabs	rsi, 0x8c0ea5053d4712a0
	movabs	rcx, 0xb29b2e824a595524
	movabs	rax, 0x82f053db8355e0ce
	movabs	r11, 0x48fe4a0fa5a09315
	mov	rbp, rbp
	movabs	r10, 0xae985bf2cbfc89ed
	movabs	r9, 0x98f5704f6c44c0ab
	lea	rdi, [rdi]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_816:
	mov	rbp, rbp
	add	rdx, qword ptr [rdi + rbx*8]
	add	r8, qword ptr [rdi + rbx*8 + 8]
	mov	rbp, rbp
	add	rsi, qword ptr [rdi + rbx*8 + 0x10]
	add	rcx, qword ptr [rdi + rbx*8 + 0x18]
	add	rax, qword ptr [rdi + rbx*8 + 0x20]
	lea	rdi, [rdi]
	add	r11, qword ptr [rdi + rbx*8 + 0x28]
	mov	rbp, rbp
	add	r10, qword ptr [rdi + rbx*8 + 0x30]
	lea	rsi, [rsi]
	add	r9, qword ptr [rdi + rbx*8 + 0x38]
	mov	rbp, rbp
	sub	rdx, rax
	lea	rsi, [rsi]
	mov	r14, r9
	shr	r14, 9
	xor	r14, r11
	add	r9, rdx
	sub	r8, r14
	lea	r11, [r8 + rdx]
	mov	rbp, rbp
	shl	rdx, 9
	mov	r15, rdx
	nop	
	xor	r15, r10
	sub	rsi, r15
	lea	rdi, [rdi]
	mov	r10, r8
	nop	
	shr	r8, 0x17
	nop	
	xor	r9, r8
	add	r10, rsi
	sub	rcx, r9
	mov	rbp, rbp
	lea	r12, [rcx + rsi]
	lea	rsi, [rsi]
	shl	rsi, 0xf
	mov	rdx, rsi
	nop	
	xor	rdx, r11
	sub	rax, rdx
	mov	r8, rcx
	shr	r8, 0xe
	mov	rsp, rsp
	xor	r8, r10
	mov	r10, rcx
	nop	
	add	r10, rax
	mov	rbp, rbp
	sub	r14, r8
	nop	
	lea	r13, [r14 + rax]
	shl	rax, 0x14
	mov	rsi, rax
	mov	rsp, rsp
	xor	rsi, r12
	sub	r15, rsi
	mov	rcx, r14
	shr	rcx, 0x11
	mov	rsp, rsp
	xor	rcx, r10
	mov	rbp, rbp
	mov	r11, r14
	mov	rbp, rbp
	add	r11, r15
	mov	rbp, rbp
	sub	r9, rcx
	lea	r10, [r9 + r15]
	lea	rdi, [rdi]
	shl	r15, 0xe
	mov	rsp, rsp
	mov	rax, r15
	xor	rax, r13
	mov	rsp, rsp
	mov	qword ptr [rdi + rbx*8], rdx
	mov	qword ptr [rdi + rbx*8 + 8], r8
	lea	rsi, [rsi]
	mov	qword ptr [rdi + rbx*8 + 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rdi + rbx*8 + 0x18], rcx
	mov	rbp, rbp
	mov	qword ptr [rdi + rbx*8 + 0x20], rax
	mov	qword ptr [rdi + rbx*8 + 0x28], r11
	mov	qword ptr [rdi + rbx*8 + 0x30], r10
	nop	
	mov	qword ptr [rdi + rbx*8 + 0x38], r9
	nop	
	add	rbx, 8
	cmp	rbx, 0x100
	lea	rdi, [rdi]
	jl	.label_816
	xor	ebx, ebx
	nop	
.label_817:
	mov	rsp, rsp
	add	rdx, qword ptr [rdi + rbx*8]
	add	r8, qword ptr [rdi + rbx*8 + 8]
	lea	rdi, [rdi]
	add	rsi, qword ptr [rdi + rbx*8 + 0x10]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdi + rbx*8 + 0x18]
	mov	rbp, rbp
	add	rax, qword ptr [rdi + rbx*8 + 0x20]
	lea	rsi, [rsi]
	add	r11, qword ptr [rdi + rbx*8 + 0x28]
	mov	rbp, rbp
	add	r10, qword ptr [rdi + rbx*8 + 0x30]
	nop	
	add	r9, qword ptr [rdi + rbx*8 + 0x38]
	lea	rsi, [rsi]
	sub	rdx, rax
	mov	rsp, rsp
	mov	r14, r9
	shr	r14, 9
	mov	rbp, rbp
	xor	r14, r11
	mov	rbp, rbp
	add	r9, rdx
	lea	rdi, [rdi]
	sub	r8, r14
	lea	rsi, [rsi]
	lea	r12, [r8 + rdx]
	shl	rdx, 9
	xor	rdx, r10
	lea	rdi, [rdi]
	sub	rsi, rdx
	mov	r11, r8
	shr	r11, 0x17
	xor	r11, r9
	mov	rsp, rsp
	add	r8, rsi
	sub	rcx, r11
	mov	rbp, rbp
	lea	r9, [rcx + rsi]
	lea	rdi, [rdi]
	shl	rsi, 0xf
	mov	rsp, rsp
	mov	r15, rsi
	xor	r15, r12
	sub	rax, r15
	lea	rsi, [rsi]
	mov	rsi, rcx
	shr	rsi, 0xe
	xor	r8, rsi
	add	rcx, rax
	sub	r14, r8
	lea	r12, [r14 + rax]
	lea	rsi, [rsi]
	shl	rax, 0x14
	mov	rsi, rax
	xor	rsi, r9
	lea	rdi, [rdi]
	sub	rdx, rsi
	mov	rax, r14
	shr	rax, 0x11
	nop	
	xor	rcx, rax
	add	r14, rdx
	sub	r11, rcx
	mov	rsp, rsp
	lea	r10, [r11 + rdx]
	shl	rdx, 0xe
	mov	rbp, rbp
	xor	rdx, r12
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rbx*8], r15
	mov	qword ptr [rdi + rbx*8 + 8], r8
	mov	qword ptr [rdi + rbx*8 + 0x10], rsi
	mov	qword ptr [rdi + rbx*8 + 0x18], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rbx*8 + 0x20], rdx
	mov	qword ptr [rdi + rbx*8 + 0x28], r14
	mov	qword ptr [rdi + rbx*8 + 0x30], r10
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rbx*8 + 0x38], r11
	add	rbx, 8
	cmp	rbx, 0x100
	mov	r9, r11
	mov	r11, r14
	mov	rax, rdx
	mov	rdx, r15
	jl	.label_817
	mov	rsp, rsp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x800], xmm0
	mov	qword ptr [rdi + 0x810], 0
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40cca0

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
	#Procedure 0x40ccc0

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
	#Procedure 0x40ccd0

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
	js	.label_818
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_820
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
	je	.label_818
.label_820:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_818
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_819
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_819:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_818:
	lea	rsi, [rsi]
	mov	rdi, rbx
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	rbp
	nop	
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x40cd80

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
	je	.label_821
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
.label_821:
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
	ja	.label_834
	lea	rsi, [rsi]
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_829
	mov	eax, 0x514
	mov	rsp, rsp
	bt	eax, esi
	lea	rdi, [rdi]
	jb	.label_828
	mov	rsp, rsp
	test	esi, esi
	jne	.label_834
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	lea	rsi, [rsi]
	ja	.label_833
	lea	rdi, [rdi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_841
.label_834:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_827
	mov	ecx, 0x85
	mov	rbp, rbp
	bt	ecx, eax
	lea	rsi, [rsi]
	jb	.label_828
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_830
.label_829:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_826
.label_828:
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rsp, rsp
	cmp	rcx, 0x28
	nop	
	ja	.label_832
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_837
.label_832:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_837:
	mov	edx, dword ptr [rax]
.label_822:
	nop	
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
.label_826:
	mov	ebp, eax
.label_824:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_830:
	lea	rsi, [rsi]
	cmp	eax, 6
	jne	.label_827
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_831
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_835
.label_827:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_839
	mov	rax, rcx
	lea	rsi, [rsi]
	add	rax, qword ptr [rsp + 0xc0]
	nop	
	lea	ecx, [rcx + 8]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_823
.label_833:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_841:
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax]
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_822
.label_831:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_835:
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_836
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
	jns	.label_825
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_825
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
	js	.label_824
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	rsp, rsp
	mov	al, 1
	jmp	.label_840
.label_825:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_824
.label_839:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_823:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	nop	
	mov	edi, ebx
	lea	rdi, [rdi]
	call	fcntl
	nop	
	jmp	.label_826
.label_836:
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
.label_840:
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	je	.label_824
	test	ebp, ebp
	lea	rsi, [rsi]
	js	.label_824
	mov	esi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_838
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
	jne	.label_824
.label_838:
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
	jmp	.label_824
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40d150

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
	.align	32
	#Procedure 0x40d170

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
	je	.label_843
	mov	rsp, rsp
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_844
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	call	dup_safer
	mov	rsp, rsp
	mov	ebp, eax
	test	ebp, ebp
	js	.label_846
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fclose
	mov	rbp, rbp
	test	eax, eax
	jne	.label_845
	mov	rsp, rsp
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, r14
	call	fdopen
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_843
.label_845:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	lea	rdi, [rdi]
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbx], r14d
	mov	rbp, rbp
	jmp	.label_842
.label_844:
	mov	rax, rbx
	mov	rsp, rsp
	jmp	.label_843
.label_846:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_842:
	xor	eax, eax
.label_843:
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