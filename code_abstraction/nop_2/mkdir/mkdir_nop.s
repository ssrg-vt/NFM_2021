	.section	.text
	.align	16
	#Procedure 0x401850

	.globl usage
	.type usage, @function
usage:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	cmp	dword ptr [rbp - 4], 0
	lea	rdi, [rdi]
	je	.label_8
	lea	rsi, [rsi]
	jmp	.label_9
.label_9:
	movabs	rdi, OFFSET FLAT:.str
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x28], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
	jmp	.label_7
.label_8:
	movabs	rdi, OFFSET FLAT:.str.1
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [program_name]]
	nop	
	mov	rdi, rax
	mov	al, 0
	call	printf
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.2
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	nop	
	mov	dword ptr [rbp - 0x10], eax
	mov	rbp, rbp
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:.str.3
	lea	rsi, [rsi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.4
	mov	dword ptr [rbp - 0x1c], eax
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.5
	mov	dword ptr [rbp - 0xc], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.6
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.7
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	call	emit_ancillary_info
.label_7:
	mov	edi, dword ptr [rbp - 4]
	nop	
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4019e0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.19
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401a20

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rax
.label_13:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x3d], cl
	lea	rdi, [rdi]
	je	.label_11
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, qword ptr [rax]
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	sete	cl
	mov	rsp, rsp
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x3d], cl
.label_11:
	mov	al, byte ptr [rbp - 0x3d]
	mov	rbp, rbp
	test	al, 1
	nop	
	jne	.label_10
	lea	rsi, [rsi]
	jmp	.label_12
.label_10:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	nop	
	jmp	.label_13
.label_12:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	je	.label_15
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_15:
	movabs	rdi, OFFSET FLAT:.str.28
	lea	rdi, [rdi]
	call	gettext
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rdi, [rdi]
	call	printf
	lea	rdi, [rdi]
	mov	edi, 5
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], eax
	call	setlocale
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], 0
	mov	rsp, rsp
	je	.label_14
	movabs	rsi, OFFSET FLAT:.str.30
	mov	rsp, rsp
	mov	eax, 3
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	call	strncmp
	cmp	eax, 0
	je	.label_14
	movabs	rdi, OFFSET FLAT:.str.31
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
.label_14:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.32
	call	gettext
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.33
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.34
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmove	rdx, rsi
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	printf
	mov	dword ptr [rbp - 0x24], eax
	lea	rsi, [rsi]
	add	rsp, 0x40
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c30

	.globl main
	.type main, @function
main:
	nop	
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0xc0
	mov	dword ptr [rbp - 0x4c], 0
	mov	dword ptr [rbp - 0x94], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x90], 0
	mov	dword ptr [rbp - 0x84], 0x1ff
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x80], 0
	mov	qword ptr [rbp - 0x78], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7c], 0
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.9
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.10
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	call	bindtextdomain
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.9
	mov	qword ptr [rbp - 0xb0], rax
	nop	
	call	textdomain
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:close_stdout
	nop	
	mov	qword ptr [rbp - 0x40], rax
	nop	
	call	atexit
	mov	dword ptr [rbp - 0x14], eax
.label_31:
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str.11
	movabs	rcx, OFFSET FLAT:longopts
	lea	rsi, [rsi]
	xor	eax, eax
	mov	r8d, eax
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x94]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x48]
	nop	
	call	getopt_long
	mov	dword ptr [rbp - 0x98], eax
	cmp	eax, -1
	nop	
	je	.label_32
	mov	eax, dword ptr [rbp - 0x98]
	mov	ecx, eax
	lea	rsi, [rsi]
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], ecx
	lea	rsi, [rsi]
	je	.label_39
	lea	rdi, [rdi]
	jmp	.label_16
.label_16:
	nop	
	mov	eax, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	sub	eax, 0xffffff7e
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_18
	mov	rbp, rbp
	jmp	.label_23
.label_23:
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0x5a
	nop	
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_25
	nop	
	jmp	.label_37
.label_37:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	eax, 0x6d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	je	.label_28
	mov	rbp, rbp
	jmp	.label_38
.label_38:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	sub	eax, 0x70
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_40
	jmp	.label_43
.label_43:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	sub	eax, 0x76
	mov	dword ptr [rbp - 0xb8], eax
	lea	rdi, [rdi]
	je	.label_44
	lea	rdi, [rdi]
	jmp	.label_19
.label_40:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:make_ancestor
	nop	
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_22
.label_28:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	jmp	.label_22
.label_44:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.12
	call	gettext
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	jmp	.label_22
.label_25:
	nop	
	call	is_smack_enabled
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_41
	jmp	.label_45
.label_41:
	mov	rax,  qword ptr [word ptr [optarg]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_20
.label_45:
	cmp	qword ptr [word ptr [optarg]],  0
	lea	rsi, [rsi]
	je	.label_21
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.13
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	rbp, rbp
	mov	esi, ecx
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_21:
	jmp	.label_20
.label_20:
	mov	rsp, rsp
	jmp	.label_22
.label_18:
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	call	usage
.label_39:
	movabs	rsi, OFFSET FLAT:.str.7
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str.17
	movabs	r8, OFFSET FLAT:.str.15
	xor	eax, eax
	mov	r9d, eax
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	lea	rsi, [rsi]
	mov	al, 0
	lea	rsi, [rsi]
	call	version_etc
	mov	rbp, rbp
	xor	edi, edi
	call	exit
.label_19:
	mov	edi, 1
	call	usage
.label_22:
	nop	
	jmp	.label_31
.label_32:
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [optind]]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x94]
	lea	rsi, [rsi]
	jne	.label_34
	movabs	rdi, OFFSET FLAT:.str.16
	call	gettext
	nop	
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	rbp, rbp
	mov	edi, 1
	call	usage
.label_34:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_24
	mov	dword ptr [rbp - 0xc], 0
	call	is_smack_enabled
	mov	rsp, rsp
	test	al, 1
	jne	.label_27
	jmp	.label_29
.label_27:
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	call	smack_set_label_for_self
	mov	dword ptr [rbp - 0xc], eax
	lea	rdi, [rdi]
	jmp	.label_36
.label_29:
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	call	se_const
	nop	
	mov	rdi, rax
	call	setfscreatecon
	mov	dword ptr [rbp - 0xc], eax
.label_36:
	cmp	dword ptr [rbp - 0xc], 0
	nop	
	jge	.label_42
	lea	rsi, [rsi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.17_0
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x5c], esi
	call	gettext
	mov	rdi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rax
	call	quote
	nop	
	mov	edi, 1
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x5c]
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	call	error
.label_42:
	jmp	.label_24
.label_24:
	cmp	qword ptr [rbp - 0x90], 0
	jne	.label_33
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_35
.label_33:
	lea	rsi, [rsi]
	xor	edi, edi
	call	umask
	mov	dword ptr [rbp - 0x34], eax
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x34]
	call	umask
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x88], edi
	cmp	qword ptr [rbp - 0x58], 0
	mov	dword ptr [rbp - 0xa0], eax
	mov	rsp, rsp
	je	.label_17
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x58]
	call	mode_compile
	mov	qword ptr [rbp - 0x68], rax
	nop	
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_26
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.18_0
	mov	rsp, rsp
	call	gettext
	mov	rdi, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0xa8], rax
	call	quote
	mov	rsp, rsp
	mov	edi, 1
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_26:
	mov	rbp, rbp
	mov	edi, 0x1ff
	nop	
	mov	esi, 1
	lea	rax, [rbp - 0x90]
	nop	
	mov	edx, dword ptr [rbp - 0x34]
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	add	rax, 0x10
	mov	r8, rax
	call	mode_adjust
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x84], eax
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	rdi, rcx
	mov	rbp, rbp
	call	free
	jmp	.label_30
.label_17:
	nop	
	mov	dword ptr [rbp - 0x84], 0x1ff
.label_30:
	jmp	.label_35
.label_35:
	movabs	rdx, OFFSET FLAT:process_dir
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x90]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x94]
	sub	ecx,  dword ptr [dword ptr [optind]]
	mov	rsi, qword ptr [rbp - 0x48]
	movsxd	rdi,  dword ptr [dword ptr [optind]]
	lea	rdi, [rdi]
	shl	rdi, 3
	mov	rsp, rsp
	add	rsi, rdi
	mov	edi, ecx
	mov	rcx, rax
	mov	rsp, rsp
	call	savewd_process_files
	nop	
	add	rsp, 0xc0
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4021c0

	.globl make_ancestor
	.type make_ancestor, @function
make_ancestor:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	test	byte ptr [rdx + 0x14], 1
	mov	rbp, rbp
	je	.label_46
	mov	esi, 0x4000
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	defaultcon
	lea	rsi, [rsi]
	cmp	eax, 0
	jge	.label_46
	nop	
	call	__errno_location
	mov	edi, dword ptr [rax]
	nop	
	call	ignorable_ctx_err
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_46
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.41
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], esi
	mov	rbp, rbp
	call	gettext
	nop	
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x24]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
.label_46:
	mov	dword ptr [rbp - 0x44], 0xc0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	and	ecx, dword ptr [rbp - 0x44]
	cmp	ecx, 0
	setne	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x25], dl
	test	byte ptr [rbp - 0x25], 1
	je	.label_47
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x44]
	lea	rdi, [rdi]
	xor	edx, 0xffffffff
	and	ecx, edx
	lea	rsi, [rsi]
	mov	edi, ecx
	call	umask
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x50], eax
.label_47:
	mov	esi, 0x1ff
	mov	rdi, qword ptr [rbp - 0x10]
	call	mkdir
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x25], 1
	je	.label_49
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x48], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	edi, dword ptr [rax + 8]
	mov	rsp, rsp
	call	umask
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x48]
	mov	dword ptr [rbp - 0x4c], eax
	mov	dword ptr [rbp - 0x14], ecx
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	dword ptr [rax], ecx
.label_49:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 4], 0
	mov	rbp, rbp
	jne	.label_48
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0x100
	cmp	ecx, 0
	setne	dl
	nop	
	and	dl, 1
	lea	rdi, [rdi]
	movzx	ecx, dl
	mov	dword ptr [rbp - 4], ecx
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x30]
	call	announce_mkdir
.label_48:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402390

	.globl is_smack_enabled
	.type is_smack_enabled, @function
is_smack_enabled:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	and	cl, 1
	movzx	eax, cl
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4023b0

	.globl smack_set_label_for_self
	.type smack_set_label_for_self, @function
smack_set_label_for_self:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	eax, 0xffffffff
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4023d0

	.globl se_const
	.type se_const, @function
se_const:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4023e0

	.globl process_dir
	.type process_dir, @function
process_dir:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x78
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x48], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x28]
	test	byte ptr [rdx + 0x14], 1
	je	.label_53
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	jne	.label_52
	mov	esi, 0x4000
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	call	defaultcon
	cmp	eax, 0
	mov	rsp, rsp
	jge	.label_52
	call	__errno_location
	nop	
	mov	edi, dword ptr [rax]
	mov	rbp, rbp
	call	ignorable_ctx_err
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_52
	lea	rsi, [rsi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.41
	mov	rsp, rsp
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], esi
	mov	rbp, rbp
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x4c]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_52:
	jmp	.label_53
.label_53:
	movabs	r9, OFFSET FLAT:announce_mkdir
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
	lea	rsi, [rsi]
	mov	ecx, 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	r10, qword ptr [rbp - 0x28]
	mov	r11d, dword ptr [r10 + 0xc]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	ebx, dword ptr [r10 + 0x10]
	mov	dword ptr [rbp - 0x1c], ecx
	lea	rsi, [rsi]
	mov	rcx, r8
	mov	rbp, rbp
	mov	r8d, r11d
	mov	rsp, rsp
	mov	dword ptr [rsp], ebx
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 8], 0xffffffff
	mov	dword ptr [rsp + 0x10], 0xffffffff
	mov	dword ptr [rsp + 0x18], 1
	mov	dword ptr [rbp - 0x3c], eax
	nop	
	call	make_dir_parents
	mov	r8d, 1
	mov	rbp, rbp
	xor	r11d, r11d
	test	al, 1
	cmovne	r8d, r11d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x50], r8d
	cmp	dword ptr [rbp - 0x50], 0
	jne	.label_50
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x14], 1
	je	.label_50
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	mov	rsp, rsp
	je	.label_50
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	call	last_component
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	edx, ecx
	mov	rbp, rbp
	call	restorecon
	mov	rbp, rbp
	test	al, 1
	jne	.label_51
	call	__errno_location
	mov	edi, dword ptr [rax]
	lea	rdi, [rdi]
	call	ignorable_ctx_err
	test	al, 1
	jne	.label_51
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.42
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], esi
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
	call	quotearg_style
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x54]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_51:
	lea	rsi, [rsi]
	jmp	.label_50
.label_50:
	mov	eax, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rsp, 0x78
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402630

	.globl defaultcon
	.type defaultcon, @function
defaultcon:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], esi
	call	__errno_location
	lea	rdi, [rdi]
	mov	esi, 0xffffffff
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	mov	eax, esi
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402670

	.globl ignorable_ctx_err
	.type ignorable_ctx_err, @function
ignorable_ctx_err:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x5f
	mov	byte ptr [rbp - 5], al
	je	.label_54
	mov	rbp, rbp
	cmp	dword ptr [rbp - 4], 0x3d
	mov	rbp, rbp
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 5], al
.label_54:
	mov	al, byte ptr [rbp - 5]
	mov	rbp, rbp
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026c0

	.globl announce_mkdir
	.type announce_mkdir, @function
announce_mkdir:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	nop	
	cmp	qword ptr [rsi + 0x18], 0
	je	.label_55
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rax,  qword ptr [word ptr [stdout]]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	nop	
	call	quotearg_style
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, rax
	mov	al, 0
	mov	rbp, rbp
	call	prog_fprintf
.label_55:
	lea	rdi, [rdi]
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402760

	.globl restorecon
	.type restorecon, @function
restorecon:
	nop	
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dl
	mov	rbp, rbp
	mov	cl, sil
	mov	qword ptr [rbp - 0x10], rdi
	and	cl, 1
	nop	
	mov	byte ptr [rbp - 0x11], cl
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], al
	nop	
	call	__errno_location
	xor	edx, edx
	lea	rdi, [rdi]
	mov	cl, dl
	mov	rbp, rbp
	mov	dword ptr [rax], 0x5f
	nop	
	and	cl, 1
	lea	rsi, [rsi]
	movzx	eax, cl
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027c0

	.globl prog_fprintf
	.type prog_fprintf, @function
prog_fprintf:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x1d0
	test	al, al
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x30], xmm7
	nop	
	movaps	xmmword ptr [rbp - 0x170], xmm6
	movaps	xmmword ptr [rbp - 0x60], xmm5
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x10], xmm4
	nop	
	movaps	xmmword ptr [rbp - 0x180], xmm3
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x1a0], xmm2
	movaps	xmmword ptr [rbp - 0x40], xmm1
	movaps	xmmword ptr [rbp - 0x150], xmm0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1a8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x158], r9
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x190], r8
	mov	qword ptr [rbp - 0x138], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x188], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rsi
	je	.label_56
	movaps	xmm0, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0x100], xmm0
	lea	rsi, [rsi]
	movaps	xmm1, xmmword ptr [rbp - 0x40]
	movaps	xmmword ptr [rbp - 0xf0], xmm1
	lea	rdi, [rdi]
	movaps	xmm2, xmmword ptr [rbp - 0x1a0]
	movaps	xmmword ptr [rbp - 0xe0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x180]
	movaps	xmmword ptr [rbp - 0xd0], xmm3
	nop	
	movaps	xmm4, xmmword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0xc0], xmm4
	lea	rsi, [rsi]
	movaps	xmm5, xmmword ptr [rbp - 0x60]
	movaps	xmmword ptr [rbp - 0xb0], xmm5
	lea	rsi, [rsi]
	movaps	xmm6, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xa0], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x30]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x90], xmm7
.label_56:
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rbp - 0x108], rax
	nop	
	mov	rcx, qword ptr [rbp - 0x190]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x110], rcx
	mov	rdx, qword ptr [rbp - 0x138]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x118], rdx
	mov	rsi, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0x120], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	r8, qword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], r8
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1b0], rdi
	nop	
	mov	rdi,  qword ptr [word ptr [rip + program_name]]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x70]
	call	fputs_unlocked
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x70]
	nop	
	mov	r9d, OFFSET FLAT:.str_1
	mov	rbp, rbp
	mov	edi, r9d
	nop	
	mov	dword ptr [rbp - 0x74], eax
	call	fputs_unlocked
	nop	
	lea	rcx, [rbp - 0x130]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1c0], rcx
	lea	rdi, [rdi]
	lea	rcx, [rbp + 0x10]
	mov	qword ptr [rbp - 0x1c8], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1cc], 0x30
	mov	dword ptr [rbp - 0x1d0], 0x10
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x70]
	nop	
	mov	rsi, qword ptr [rbp - 0x1b0]
	mov	rsp, rsp
	lea	rdx, [rbp - 0x1d0]
	nop	
	mov	dword ptr [rbp - 0x64], eax
	call	vfprintf
	mov	rsi, qword ptr [rbp - 0x70]
	mov	edi, 0xa
	mov	dword ptr [rbp - 0x14], eax
	nop	
	call	fputc_unlocked
	mov	dword ptr [rbp - 0x13c], eax
	nop	
	add	rsp, 0x1d0
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x4029d0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [file_name]],  rdi
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a00
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	mov	al, dil
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], al
	nop	
	mov	al, byte ptr [rbp - 1]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [ignore_EPIPE]],  al
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a30

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	call	close_stream
	cmp	eax, 0
	je	.label_59
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_60
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_59
.label_60:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_3
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_58
	nop	
	call	__errno_location
	nop	
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 4], esi
	call	quotearg_colon
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str.1_0
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_61
.label_58:
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_61:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_59:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_57
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_57:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b60

	.globl last_component
	.type last_component, @function
last_component:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	byte ptr [rbp - 0x19], 0
.label_66:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	jne	.label_68
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_66
.label_68:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
.label_65:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_67
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2f
	jne	.label_63
	mov	byte ptr [rbp - 0x19], 1
	nop	
	jmp	.label_64
.label_63:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x19], 1
	lea	rdi, [rdi]
	je	.label_62
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], 0
.label_62:
	jmp	.label_64
.label_64:
	jmp	.label_69
.label_69:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_65
.label_67:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c30
	.globl base_len
	.type base_len, @function
base_len:

	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	strlen
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
.label_71:
	xor	eax, eax
	mov	cl, al
	mov	eax, 1
	lea	rsi, [rsi]
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 1], cl
	mov	rsp, rsp
	jae	.label_70
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], sil
.label_70:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	test	al, 1
	nop	
	jne	.label_72
	mov	rbp, rbp
	jmp	.label_73
.label_72:
	jmp	.label_74
.label_74:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_71
.label_73:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402cf0

	.globl make_dir_parents
	.type make_dir_parents, @function
make_dir_parents:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x158
	mov	al, byte ptr [rbp + 0x28]
	mov	r10d, dword ptr [rbp + 0x20]
	mov	r11d, dword ptr [rbp + 0x18]
	mov	rsp, rsp
	mov	ebx, dword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x138], rdi
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	qword ptr [rbp - 0xe8], rdx
	mov	qword ptr [rbp - 0x38], rcx
	mov	dword ptr [rbp - 0xe0], r8d
	mov	qword ptr [rbp - 0x30], r9
	mov	dword ptr [rbp - 0xf4], ebx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x140], r11d
	mov	dword ptr [rbp - 0x40], r10d
	and	al, 1
	mov	byte ptr [rbp - 0x139], al
	mov	rcx, qword ptr [rbp - 0x138]
	movsx	r8d, byte ptr [rcx]
	lea	rdi, [rdi]
	cmp	r8d, 0x2f
	nop	
	jne	.label_100
	xor	eax, eax
	mov	dword ptr [rbp - 0xec], eax
	jmp	.label_99
.label_100:
	mov	rdi, qword ptr [rbp - 0x18]
	call	savewd_errno
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xec], eax
.label_99:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xec]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x128], eax
	cmp	dword ptr [rbp - 0x128], 0
	mov	rsp, rsp
	jne	.label_78
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], 0
	mov	dword ptr [rbp - 0x24], 2
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xe8], 0
	je	.label_84
	mov	rdi, qword ptr [rbp - 0x138]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0x38]
	call	mkancesdirs
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jge	.label_98
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x48], -1
	jge	.label_102
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x101], 1
	jmp	.label_77
.label_102:
	mov	rsp, rsp
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x128], ecx
.label_98:
	mov	rsp, rsp
	jmp	.label_84
.label_84:
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	jg	.label_76
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x140], -1
	mov	byte ptr [rbp - 9], cl
	jne	.label_90
	cmp	dword ptr [rbp - 0x40], -1
	sete	al
	nop	
	mov	byte ptr [rbp - 9], al
.label_90:
	mov	al, byte ptr [rbp - 9]
	nop	
	and	al, 1
	mov	byte ptr [rbp - 0x149], al
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0xf4]
	lea	rsi, [rsi]
	and	ecx, 0xc00
	mov	edx, dword ptr [rbp - 0xe0]
	and	edx, 0x200
	or	ecx, edx
	cmp	ecx, 0
	lea	rdi, [rdi]
	sete	al
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0xed], al
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0xe0]
	mov	dword ptr [rbp - 0x3c], ecx
	mov	rsp, rsp
	test	byte ptr [rbp - 0x149], 1
	mov	rsp, rsp
	jne	.label_97
	mov	eax, dword ptr [rbp - 0x3c]
	and	eax, 0xffffffc0
	nop	
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_91
.label_97:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xed], 1
	nop	
	jne	.label_87
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x3c]
	and	eax, 0xffffffed
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
.label_87:
	lea	rdi, [rdi]
	jmp	.label_91
.label_91:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x138]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x48]
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rdi, rax
	mov	rbp, rbp
	call	mkdir
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_81
	mov	eax, dword ptr [rbp - 0xe0]
	and	eax, dword ptr [rbp - 0xf4]
	and	eax, 0x1ff
	lea	rsi, [rsi]
	cmp	eax, 0
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x109], cl
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x138]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	call	rdx
	mov	cl, byte ptr [rbp - 0x149]
	and	cl, 1
	movzx	eax, cl
	lea	rdi, [rdi]
	mov	cl, byte ptr [rbp - 0xed]
	and	cl, 1
	nop	
	movzx	r8d, cl
	lea	rsi, [rsi]
	and	eax, r8d
	lea	rdi, [rdi]
	mov	cl, byte ptr [rbp - 0x109]
	and	cl, 1
	movzx	r8d, cl
	and	eax, r8d
	cmp	eax, 0
	setne	cl
	mov	rsp, rsp
	and	cl, 1
	mov	byte ptr [rbp - 0x139], cl
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x24]
	or	eax, 1
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_89
.label_81:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x128], ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], 0xffffffff
.label_89:
	test	byte ptr [rbp - 0x139], 1
	je	.label_94
	cmp	dword ptr [rbp - 0x128], 0
	jne	.label_96
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x101], 1
	lea	rsi, [rsi]
	jmp	.label_77
.label_96:
	nop	
	cmp	dword ptr [rbp - 0x128], 2
	mov	rsp, rsp
	je	.label_80
	cmp	qword ptr [rbp - 0xe8], 0
	je	.label_80
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0xd8]
	nop	
	mov	rax, qword ptr [rbp - 0x138]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	stat
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_88
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc0]
	and	eax, 0xf000
	cmp	eax, 0x4000
	mov	rbp, rbp
	jne	.label_92
	mov	byte ptr [rbp - 0x101], 1
	mov	rsp, rsp
	jmp	.label_77
.label_92:
	jmp	.label_83
.label_88:
	cmp	dword ptr [rbp - 0x128], 0x11
	nop	
	jne	.label_79
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 2
	je	.label_79
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 0x14
	lea	rsi, [rsi]
	je	.label_79
	call	__errno_location
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str_4
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x12c], esi
	call	gettext
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x138]
	mov	qword ptr [rbp - 0x148], rax
	call	quote
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x12c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	nop	
	mov	byte ptr [rbp - 0x101], 0
	jmp	.label_77
.label_79:
	jmp	.label_83
.label_83:
	jmp	.label_80
.label_80:
	jmp	.label_85
.label_94:
	mov	rsp, rsp
	lea	rcx, [rbp - 0x124]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x138]
	add	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x24]
	nop	
	mov	rsi, rax
	call	savewd_chdir
	mov	dword ptr [rbp - 0x108], eax
	cmp	dword ptr [rbp - 0x108], -1
	mov	rbp, rbp
	jge	.label_95
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x101], 1
	nop	
	jmp	.label_77
.label_95:
	cmp	dword ptr [rbp - 0x108], 0
	sete	al
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x119], al
	test	byte ptr [rbp - 0x119], 1
	je	.label_103
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.5_0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	nop	
	jmp	.label_82
.label_103:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x138]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x20], rax
.label_82:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x100], rax
	mov	edi, dword ptr [rbp - 0x124]
	nop	
	mov	rsi, qword ptr [rbp - 0x100]
	mov	edx, dword ptr [rbp - 0x3c]
	mov	ecx, dword ptr [rbp - 0x140]
	mov	r8d, dword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rbp - 0xe0]
	mov	r10d, dword ptr [rbp - 0xf4]
	mov	dword ptr [rsp], r10d
	lea	rdi, [rdi]
	call	dirchownmod
	cmp	eax, 0
	jne	.label_93
	mov	byte ptr [rbp - 0x101], 1
	mov	rsp, rsp
	jmp	.label_77
.label_93:
	nop	
	cmp	dword ptr [rbp - 0x128], 0
	mov	rbp, rbp
	je	.label_75
	nop	
	cmp	dword ptr [rbp - 0x128], 2
	je	.label_86
	cmp	qword ptr [rbp - 0xe8], 0
	lea	rsi, [rsi]
	je	.label_86
	lea	rsi, [rsi]
	call	__errno_location
	cmp	dword ptr [rax], 0x14
	lea	rdi, [rdi]
	je	.label_86
.label_75:
	call	__errno_location
	nop	
	movabs	rcx, OFFSET FLAT:.str.3_0
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str.2_0
	mov	esi, dword ptr [rax]
	mov	dil, byte ptr [rbp - 0x149]
	test	dil, 1
	cmovne	rcx, rdx
	mov	rbp, rbp
	mov	rdi, rcx
	mov	dword ptr [rbp - 0xdc], esi
	nop	
	call	gettext
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x138]
	nop	
	mov	qword ptr [rbp - 0x158], rax
	call	quote
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0xdc]
	mov	rdx, qword ptr [rbp - 0x158]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	nop	
	call	error
	mov	byte ptr [rbp - 0x101], 0
	lea	rdi, [rdi]
	jmp	.label_77
.label_86:
	lea	rsi, [rsi]
	jmp	.label_101
.label_101:
	lea	rdi, [rdi]
	jmp	.label_85
.label_85:
	lea	rdi, [rdi]
	jmp	.label_76
.label_76:
	jmp	.label_78
.label_78:
	movabs	rdi, OFFSET FLAT:.str.4_0
	mov	esi, dword ptr [rbp - 0x128]
	mov	dword ptr [rbp - 0x28], esi
	mov	rbp, rbp
	call	gettext
	mov	rdi, qword ptr [rbp - 0x138]
	mov	qword ptr [rbp - 0x118], rax
	mov	rsp, rsp
	call	quote
	xor	edi, edi
	nop	
	mov	esi, dword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x118]
	mov	rcx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x101], 0
.label_77:
	mov	al, byte ptr [rbp - 0x101]
	lea	rsi, [rsi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	add	rsp, 0x158
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403390

	.globl mode_compile
	.type mode_compile, @function
mode_compile:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	eax, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb0], rdi
	mov	qword ptr [rbp - 0xc8], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xb0]
	movsx	ecx, byte ptr [rdi]
	cmp	eax, ecx
	mov	rsp, rsp
	jg	.label_149
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x38
	lea	rsi, [rsi]
	jge	.label_149
	nop	
	mov	dword ptr [rbp - 0x14], 0
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
.label_150:
	lea	rdi, [rdi]
	mov	eax, 0xfff
	mov	ecx, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	shl	ecx, 3
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsi, rdx
	add	rsi, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rsi
	movsx	edi, byte ptr [rdx]
	add	ecx, edi
	lea	rsi, [rsi]
	sub	ecx, 0x30
	mov	dword ptr [rbp - 0x14], ecx
	cmp	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	jae	.label_106
	mov	qword ptr [rbp - 0x70], 0
	jmp	.label_123
.label_106:
	mov	rbp, rbp
	jmp	.label_129
.label_129:
	xor	eax, eax
	mov	cl, al
	mov	eax, 0x30
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rdx]
	cmp	eax, esi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x8d], cl
	mov	rsp, rsp
	jg	.label_132
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x38
	mov	rbp, rbp
	setl	dl
	mov	byte ptr [rbp - 0x8d], dl
.label_132:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x8d]
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_150
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	byte ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_156
	mov	qword ptr [rbp - 0x70], 0
	jmp	.label_123
.label_156:
	mov	edi, dword ptr [rbp - 0x14]
	call	octal_to_mode
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x78], eax
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0xb0]
	sub	rcx, rdx
	cmp	rcx, 5
	nop	
	jge	.label_164
	mov	eax, dword ptr [rbp - 0x78]
	and	eax, 0xc00
	or	eax, 0x200
	lea	rdi, [rdi]
	or	eax, 0x1ff
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_112
.label_164:
	mov	eax, 0xfff
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], eax
	mov	rsp, rsp
	jmp	.label_112
.label_112:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	edi, dword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x7c]
	call	make_node_op_equals
	mov	qword ptr [rbp - 0x70], rax
	mov	rbp, rbp
	jmp	.label_123
.label_149:
	mov	qword ptr [rbp - 0xb8], 1
	nop	
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
.label_160:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	byte ptr [rax], 0
	je	.label_136
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x58]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x3d
	mov	byte ptr [rbp - 0x61], al
	je	.label_140
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x2b
	mov	byte ptr [rbp - 0x61], al
	lea	rdi, [rdi]
	je	.label_140
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	nop	
	sete	dl
	mov	byte ptr [rbp - 0x61], dl
.label_140:
	mov	al, byte ptr [rbp - 0x61]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	movsxd	rdx, ecx
	add	rdx, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0xb8], rdx
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	nop	
	jmp	.label_160
.label_136:
	mov	eax, 0x10
	lea	rsi, [rsi]
	mov	esi, eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	call	xnmalloc
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
.label_147:
	mov	dword ptr [rbp - 0x9c], 0
.label_143:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	nop	
	sub	edx, 0x2b
	mov	dword ptr [rbp - 0xa0], ecx
	mov	dword ptr [rbp - 0xd4], edx
	lea	rsi, [rsi]
	je	.label_115
	nop	
	jmp	.label_127
.label_127:
	mov	eax, dword ptr [rbp - 0xa0]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44], eax
	mov	rbp, rbp
	je	.label_115
	jmp	.label_137
.label_137:
	mov	eax, dword ptr [rbp - 0xa0]
	sub	eax, 0x3d
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	je	.label_115
	mov	rsp, rsp
	jmp	.label_146
.label_146:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa0]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0x2c], eax
	je	.label_148
	jmp	.label_154
.label_154:
	mov	eax, dword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_155
	jmp	.label_142
.label_142:
	mov	eax, dword ptr [rbp - 0xa0]
	nop	
	sub	eax, 0x6f
	mov	dword ptr [rbp - 0x68], eax
	lea	rsi, [rsi]
	je	.label_162
	nop	
	jmp	.label_165
.label_165:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xa0]
	sub	eax, 0x75
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_166
	jmp	.label_172
.label_172:
	mov	rsp, rsp
	jmp	.label_105
.label_166:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x9c]
	or	eax, 0x9c0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_108
.label_155:
	mov	eax, dword ptr [rbp - 0x9c]
	or	eax, 0x438
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_108
.label_162:
	mov	eax, dword ptr [rbp - 0x9c]
	or	eax, 0x207
	nop	
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_108
.label_148:
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rsi, [rsi]
	or	eax, 0xfff
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_108
.label_115:
	mov	rsp, rsp
	jmp	.label_138
.label_108:
	lea	rdi, [rdi]
	jmp	.label_161
.label_161:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x58], rax
	mov	rbp, rbp
	jmp	.label_143
.label_138:
	lea	rdi, [rdi]
	jmp	.label_122
.label_122:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	inc	rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rcx
	nop	
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0xca], dl
	mov	dword ptr [rbp - 0x88], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb9], 3
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rax]
	mov	edi, esi
	mov	rsp, rsp
	add	edi, -0x30
	sub	edi, 8
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x94], esi
	mov	dword ptr [rbp - 0x60], edi
	jb	.label_153
	lea	rdi, [rdi]
	jmp	.label_171
.label_171:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x94]
	nop	
	sub	eax, 0x67
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], eax
	je	.label_104
	mov	rsp, rsp
	jmp	.label_113
.label_113:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x94]
	lea	rsi, [rsi]
	sub	eax, 0x6f
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	je	.label_114
	lea	rsi, [rsi]
	jmp	.label_121
.label_121:
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x75
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	je	.label_125
	lea	rsi, [rsi]
	jmp	.label_133
.label_153:
	mov	dword ptr [rbp - 0x98], 0
.label_173:
	lea	rsi, [rsi]
	mov	eax, 0xfff
	mov	ecx, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	shl	ecx, 3
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	mov	rsi, rdx
	mov	rsp, rsp
	add	rsi, 1
	mov	qword ptr [rbp - 0x58], rsi
	movsx	edi, byte ptr [rdx]
	add	ecx, edi
	sub	ecx, 0x30
	nop	
	mov	dword ptr [rbp - 0x98], ecx
	cmp	eax, dword ptr [rbp - 0x98]
	mov	rbp, rbp
	jae	.label_139
	jmp	.label_105
.label_139:
	mov	rsp, rsp
	jmp	.label_158
.label_158:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	mov	eax, 0x30
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	movsx	esi, byte ptr [rdx]
	nop	
	cmp	eax, esi
	mov	byte ptr [rbp - 0x62], cl
	jg	.label_145
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x38
	setl	dl
	mov	byte ptr [rbp - 0x62], dl
.label_145:
	mov	al, byte ptr [rbp - 0x62]
	nop	
	test	al, 1
	mov	rbp, rbp
	jne	.label_173
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x9c], 0
	jne	.label_109
	mov	rax, qword ptr [rbp - 0x58]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_107
	mov	rax, qword ptr [rbp - 0x58]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2c
	je	.label_107
.label_109:
	mov	rbp, rbp
	jmp	.label_105
.label_107:
	nop	
	mov	dword ptr [rbp - 0x88], 0xfff
	mov	dword ptr [rbp - 0x9c], 0xfff
	mov	edi, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	call	octal_to_mode
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x84], eax
	mov	byte ptr [rbp - 0xb9], 1
	jmp	.label_128
.label_125:
	mov	dword ptr [rbp - 0x84], 0x1c0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	jmp	.label_128
.label_104:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x84], 0x38
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	lea	rsi, [rsi]
	jmp	.label_128
.label_114:
	mov	dword ptr [rbp - 0x84], 7
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_128
.label_133:
	nop	
	mov	dword ptr [rbp - 0x84], 0
	nop	
	mov	byte ptr [rbp - 0xb9], 1
.label_120:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x58
	mov	dword ptr [rbp - 0x18], ecx
	mov	dword ptr [rbp - 0x20], edx
	lea	rsi, [rsi]
	je	.label_169
	nop	
	jmp	.label_110
.label_110:
	mov	eax, dword ptr [rbp - 0x18]
	nop	
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x74], eax
	lea	rsi, [rsi]
	je	.label_111
	jmp	.label_116
.label_116:
	mov	eax, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	sub	eax, 0x73
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], eax
	mov	rsp, rsp
	je	.label_167
	jmp	.label_124
.label_124:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 0x74
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], eax
	nop	
	je	.label_126
	jmp	.label_134
.label_134:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 0x77
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x80], eax
	je	.label_135
	mov	rbp, rbp
	jmp	.label_141
.label_141:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 0x78
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x8c], eax
	mov	rbp, rbp
	je	.label_144
	nop	
	jmp	.label_151
.label_111:
	mov	eax, dword ptr [rbp - 0x84]
	or	eax, 0x124
	mov	dword ptr [rbp - 0x84], eax
	nop	
	jmp	.label_130
.label_135:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x84]
	or	eax, 0x92
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_130
.label_144:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x84]
	or	eax, 0x49
	mov	dword ptr [rbp - 0x84], eax
	nop	
	jmp	.label_130
.label_169:
	mov	byte ptr [rbp - 0xb9], 2
	jmp	.label_130
.label_167:
	mov	eax, dword ptr [rbp - 0x84]
	or	eax, 0xc00
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x84], eax
	mov	rsp, rsp
	jmp	.label_130
.label_126:
	mov	eax, dword ptr [rbp - 0x84]
	or	eax, 0x200
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_130
.label_151:
	jmp	.label_117
.label_130:
	mov	rsp, rsp
	jmp	.label_119
.label_119:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_120
.label_117:
	lea	rsi, [rsi]
	jmp	.label_128
.label_128:
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx, rax
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], rcx
	nop	
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rax
	mov	dl, byte ptr [rbp - 0xca]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	byte ptr [rax], dl
	mov	dl, byte ptr [rbp - 0xb9]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	byte ptr [rax + 1], dl
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x9c]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax + 4], esi
	mov	esi, dword ptr [rbp - 0x84]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	dword ptr [rax + 8], esi
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x88], 0
	mov	rsp, rsp
	je	.label_131
	mov	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x30], eax
	mov	rsp, rsp
	jmp	.label_163
.label_131:
	cmp	dword ptr [rbp - 0x9c], 0
	mov	rbp, rbp
	je	.label_168
	nop	
	mov	eax, dword ptr [rbp - 0x9c]
	mov	rbp, rbp
	and	eax, dword ptr [rbp - 0x84]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x48], eax
	lea	rsi, [rsi]
	jmp	.label_170
.label_168:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x84]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x48], eax
.label_170:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x30], eax
.label_163:
	mov	eax, dword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	mov	dword ptr [rcx + 0xc], eax
	mov	rsp, rsp
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x58]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x3d
	mov	byte ptr [rbp - 0xc9], al
	nop	
	je	.label_118
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x58]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x2b
	mov	byte ptr [rbp - 0xc9], al
	je	.label_118
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	sete	dl
	nop	
	mov	byte ptr [rbp - 0xc9], dl
.label_118:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xc9]
	test	al, 1
	mov	rsp, rsp
	jne	.label_122
	mov	rax, qword ptr [rbp - 0x58]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2c
	mov	rsp, rsp
	je	.label_152
	jmp	.label_157
.label_152:
	mov	rbp, rbp
	jmp	.label_159
.label_159:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_147
.label_157:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_174
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 1], 0
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rax
	lea	rsi, [rsi]
	jmp	.label_123
.label_174:
	jmp	.label_105
.label_105:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, rax
	nop	
	call	free
	nop	
	mov	qword ptr [rbp - 0x70], 0
.label_123:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	add	rsp, 0xe0
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d50

	.globl octal_to_mode
	.type octal_to_mode, @function
octal_to_mode:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d70

	.globl make_node_op_equals
	.type make_node_op_equals, @function
make_node_op_equals:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	eax, 0x20
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	dword ptr [rbp - 8], edi
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], esi
	mov	rdi, rcx
	call	xmalloc
	mov	qword ptr [rbp - 0x10], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], 0x3d
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	byte ptr [rax + 1], 1
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 4], 0xfff
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 8], esi
	mov	esi, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rax + 0xc], esi
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	byte ptr [rax + 0x11], 0
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rsp, 0x10
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e00
	.globl mode_create_from_ref
	.type mode_create_from_ref, @function
mode_create_from_ref:

	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0xa0
	nop	
	lea	rsi, [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	stat
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_176
	mov	qword ptr [rbp - 8], 0
	nop	
	jmp	.label_175
.label_176:
	mov	esi, 0xfff
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	call	make_node_op_equals
	nop	
	mov	qword ptr [rbp - 8], rax
.label_175:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xa0
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e80

	.globl mode_adjust
	.type mode_adjust, @function
mode_adjust:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	al, sil
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], edi
	and	al, 1
	mov	byte ptr [rbp - 0x51], al
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x38], edx
	mov	qword ptr [rbp - 0x40], rcx
	nop	
	mov	qword ptr [rbp - 0x30], r8
	mov	edx, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	and	edx, 0xfff
	mov	dword ptr [rbp - 0x14], edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x60], 0
.label_190:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	cmp	ecx, 0
	je	.label_197
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 4]
	mov	dword ptr [rbp - 0x5c], ecx
	nop	
	mov	dl, byte ptr [rbp - 0x51]
	mov	rbp, rbp
	xor	ecx, ecx
	test	dl, 1
	mov	esi, 0xc00
	cmovne	ecx, esi
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rax + 0xc]
	lea	rsi, [rsi]
	not	esi
	mov	rbp, rbp
	and	ecx, esi
	mov	dword ptr [rbp - 0x34], ecx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4c], ecx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	mov	esi, ecx
	sub	esi, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10], ecx
	nop	
	mov	dword ptr [rbp - 0x18], esi
	je	.label_185
	jmp	.label_184
.label_184:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	eax, 2
	mov	dword ptr [rbp - 0x58], eax
	je	.label_180
	jmp	.label_186
.label_186:
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 3
	mov	dword ptr [rbp - 8], eax
	je	.label_189
	jmp	.label_179
.label_185:
	mov	rbp, rbp
	jmp	.label_179
.label_189:
	xor	eax, eax
	mov	ecx, 0x49
	nop	
	mov	edx, 0x92
	mov	esi, 0x124
	mov	edi, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	and	edi, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], edi
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x4c]
	and	edi, 0x124
	cmp	edi, 0
	mov	rbp, rbp
	mov	edi, eax
	lea	rsi, [rsi]
	cmovne	edi, esi
	mov	esi, dword ptr [rbp - 0x4c]
	nop	
	and	esi, 0x92
	mov	rsp, rsp
	cmp	esi, 0
	mov	rbp, rbp
	mov	esi, eax
	cmovne	esi, edx
	or	edi, esi
	mov	edx, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	and	edx, 0x49
	cmp	edx, 0
	cmovne	eax, ecx
	or	edi, eax
	or	edi, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], edi
	nop	
	jmp	.label_179
.label_180:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	and	eax, 0x49
	nop	
	mov	cl, byte ptr [rbp - 0x51]
	and	cl, 1
	movzx	edx, cl
	or	eax, edx
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_192
	mov	eax, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	or	eax, 0x49
	mov	dword ptr [rbp - 0x4c], eax
.label_192:
	mov	rbp, rbp
	jmp	.label_179
.label_179:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x5c], 0
	je	.label_191
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_194
.label_191:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x38]
	mov	rbp, rbp
	xor	eax, 0xffffffff
	nop	
	mov	dword ptr [rbp - 0x1c], eax
.label_194:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	ecx, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	not	ecx
	lea	rsi, [rsi]
	and	eax, ecx
	nop	
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	rsp, rsp
	and	ecx, eax
	mov	dword ptr [rbp - 0x4c], ecx
	mov	rdx, qword ptr [rbp - 0x40]
	movsx	eax, byte ptr [rdx]
	mov	ecx, eax
	nop	
	sub	ecx, 0x2b
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], ecx
	je	.label_183
	jmp	.label_178
.label_178:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x20], eax
	lea	rdi, [rdi]
	je	.label_182
	lea	rsi, [rsi]
	jmp	.label_187
.label_187:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x3d
	mov	dword ptr [rbp - 0x50], eax
	jne	.label_193
	lea	rdi, [rdi]
	jmp	.label_195
.label_195:
	cmp	dword ptr [rbp - 0x5c], 0
	nop	
	je	.label_196
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	xor	eax, 0xffffffff
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x48], eax
	mov	rbp, rbp
	jmp	.label_181
.label_196:
	xor	eax, eax
	mov	dword ptr [rbp - 0x48], eax
	lea	rsi, [rsi]
	jmp	.label_181
.label_181:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x48]
	or	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	xor	eax, 0xffffffff
	lea	rdi, [rdi]
	and	eax, 0xfff
	lea	rsi, [rsi]
	or	eax, dword ptr [rbp - 0x60]
	mov	dword ptr [rbp - 0x60], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	and	eax, dword ptr [rbp - 4]
	or	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	jmp	.label_193
.label_183:
	mov	eax, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	or	eax, dword ptr [rbp - 0x60]
	mov	dword ptr [rbp - 0x60], eax
	nop	
	mov	eax, dword ptr [rbp - 0x4c]
	nop	
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	jmp	.label_193
.label_182:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	or	eax, dword ptr [rbp - 0x60]
	nop	
	mov	dword ptr [rbp - 0x60], eax
	nop	
	mov	eax, dword ptr [rbp - 0x4c]
	xor	eax, 0xffffffff
	lea	rdi, [rdi]
	and	eax, dword ptr [rbp - 0x14]
	nop	
	mov	dword ptr [rbp - 0x14], eax
.label_193:
	jmp	.label_188
.label_188:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_190
.label_197:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_177
	mov	eax, dword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	dword ptr [rcx], eax
.label_177:
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4041a0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_198
	movabs	rdi, OFFSET FLAT:.str_5
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	call	abort
.label_198:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_200
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_201
.label_200:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_201:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	rax, rcx
	nop	
	cmp	rax, 7
	jl	.label_199
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_1
	mov	rsp, rsp
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rcx, -7
	lea	rdi, [rdi]
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_199
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.2_1
	lea	rsi, [rsi]
	mov	eax, 3
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rdi, qword ptr [rbp - 8]
	call	strncmp
	cmp	eax, 0
	jne	.label_202
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_202:
	jmp	.label_199
.label_199:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [program_name]],  rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404320
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	nop
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], ecx
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_203
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_204
.label_203:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_204
.label_204:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, 0x38
	lea	rsi, [rsi]
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rdi, rax
	call	xmemdup
	mov	qword ptr [rbp - 0x20], rax
	mov	ecx, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], ecx
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	dword ptr [rax], ecx
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043d0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_205
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_206
.label_205:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_206
.label_206:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404430
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], esi
	mov	esi, dword ptr [rbp - 4]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], esi
	je	.label_207
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_208
.label_207:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_208
.label_208:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404490

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	al, sil
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	byte ptr [rbp - 0x29], al
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], edx
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], al
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	je	.label_209
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jmp	.label_210
.label_209:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_210
.label_210:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rax, 8
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 9]
	mov	rbp, rbp
	mov	edx, ecx
	shr	rdx, 5
	mov	rbp, rbp
	shl	rdx, 2
	mov	rsp, rsp
	add	rax, rdx
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 9]
	mov	eax, ecx
	lea	rdi, [rdi]
	and	rax, 0x1f
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x34], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x30], ecx
	nop	
	mov	ecx, esi
	nop	
	mov	esi, dword ptr [rbp - 0x30]
	shr	esi, cl
	mov	rbp, rbp
	and	esi, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], esi
	mov	esi, dword ptr [rbp - 8]
	and	esi, 1
	lea	rsi, [rsi]
	xor	esi, dword ptr [rbp - 4]
	nop	
	mov	ecx, dword ptr [rbp - 0x34]
	nop	
	shl	esi, cl
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	xor	esi, dword ptr [rax]
	mov	dword ptr [rax], esi
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404590
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 4], esi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_211
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
.label_211:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 4]
	nop	
	mov	dword ptr [rbp - 0x14], ecx
	mov	ecx, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	dword ptr [rax + 4], ecx
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4045f0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	jne	.label_212
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
.label_212:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_214
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_213
.label_214:
	call	abort
.label_213:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404690
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x40], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], r8
	nop	
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_215
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_216
.label_215:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_216
.label_216:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x38], rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	r8d, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x38]
	mov	r9d, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	r11, qword ptr [r11 + 0x30]
	nop	
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	mov	r8d, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], r8d
	mov	rbp, rbp
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], r8d
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rsp, 0x70
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404790

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	mov	rbp, rsp
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x168
	mov	rax, qword ptr [rbp + 0x20]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp + 0x18]
	nop	
	mov	r11, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0xa0], rdi
	nop	
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x150], rdx
	mov	qword ptr [rbp - 0x68], rcx
	mov	dword ptr [rbp - 0x58], r8d
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa4], r9d
	mov	qword ptr [rbp - 0x100], r11
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x120], r10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], 0
	mov	qword ptr [rbp - 0x140], 0
	mov	qword ptr [rbp - 0x108], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd0], 0
	mov	byte ptr [rbp - 0x89], 0
	mov	rbp, rbp
	call	__ctype_get_mb_cur_max
	mov	rbp, rbp
	cmp	rax, 1
	nop	
	sete	bl
	and	bl, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb5], bl
	mov	r8d, dword ptr [rbp - 0xa4]
	and	r8d, 2
	mov	rsp, rsp
	cmp	r8d, 0
	setne	bl
	and	bl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x3e], bl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x42], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa5], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb7], 1
.label_237:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0x88], rcx
	mov	qword ptr [rbp - 0x130], rdx
	ja	.label_369
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_256]]
	jmp	rcx
.label_732:
	mov	dword ptr [rbp - 0x58], 5
	mov	byte ptr [rbp - 0x3e], 1
.label_731:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_265
	jmp	.label_269
.label_269:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_270
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x22
.label_270:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_265
.label_265:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	jmp	.label_217
.label_733:
	nop	
	mov	byte ptr [rbp - 0x89], 1
	nop	
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_217
.label_734:
	cmp	dword ptr [rbp - 0x58], 0xa
	je	.label_294
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.11_0
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	gettext_quote
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x120], rax
	mov	esi, dword ptr [rbp - 0x58]
	call	gettext_quote
	mov	qword ptr [rbp - 0xc0], rax
.label_294:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_307
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x108], rax
.label_327:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_311
	jmp	.label_312
.label_312:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_314
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rdx + rax], cl
.label_314:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_324
.label_324:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_327
.label_311:
	mov	rbp, rbp
	jmp	.label_307
.label_307:
	mov	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x108], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x108]
	nop	
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd0], rax
	mov	rbp, rbp
	jmp	.label_217
.label_729:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x89], 1
.label_728:
	mov	byte ptr [rbp - 0x3e], 1
.label_730:
	nop	
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_348
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
.label_348:
	jmp	.label_352
.label_352:
	mov	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_353
	jmp	.label_357
.label_357:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_358
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_358:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_353
.label_353:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	mov	rsp, rsp
	jmp	.label_217
.label_727:
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_217
.label_369:
	call	abort
.label_217:
	mov	qword ptr [rbp - 0xd8], 0
.label_382:
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_377
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	nop	
	movzx	edx, sil
	nop	
	mov	dword ptr [rbp - 0x7c], edx
	jmp	.label_379
.label_377:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], edx
.label_379:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_396
	mov	rbp, rbp
	jmp	.label_404
.label_396:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa6], 0
	nop	
	mov	byte ptr [rbp - 0x3f], 0
	mov	byte ptr [rbp - 0x91], 0
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_258
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	je	.label_258
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_258
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x68], -1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jne	.label_225
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xd0]
	jae	.label_225
	mov	rdi, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_234
.label_225:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xc8], rax
.label_234:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_258
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x150]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_258
	nop	
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	je	.label_261
	jmp	.label_222
.label_261:
	nop	
	mov	byte ptr [rbp - 0xa6], 1
.label_258:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x150]
	mov	dl, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x3d], dl
	movzx	esi, byte ptr [rbp - 0x3d]
	lea	rdi, [rdi]
	mov	eax, esi
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	sub	rcx, 0x7e
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x18], rcx
	ja	.label_268
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_280]]
	nop	
	jmp	rcx
.label_760:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	je	.label_284
	mov	rsp, rsp
	jmp	.label_288
.label_288:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_290
	jmp	.label_222
.label_290:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3f], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_292
	mov	rbp, rbp
	test	byte ptr [rbp - 0x42], 1
	mov	rbp, rbp
	jne	.label_292
	nop	
	jmp	.label_298
.label_298:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_300
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_300:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_308
.label_308:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_310
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_310:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_316
.label_316:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_322
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_322:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_292:
	lea	rsi, [rsi]
	jmp	.label_331
.label_331:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_332
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_332:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_320
.label_320:
	cmp	dword ptr [rbp - 0x58], 2
	je	.label_347
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_347
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x150]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_347
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_347
	nop	
	jmp	.label_362
.label_362:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_363
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x30
.label_363:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_321
.label_321:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_343
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_343:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_347
.label_347:
	mov	byte ptr [rbp - 0x3d], 0x30
	nop	
	jmp	.label_383
.label_284:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_223
	mov	rbp, rbp
	jmp	.label_380
.label_223:
	jmp	.label_383
.label_383:
	jmp	.label_241
.label_771:
	mov	eax, dword ptr [rbp - 0x58]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0x78], eax
	nop	
	mov	dword ptr [rbp - 0x90], ecx
	mov	rsp, rsp
	je	.label_394
	mov	rbp, rbp
	jmp	.label_399
.label_399:
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb4], eax
	lea	rsi, [rsi]
	je	.label_401
	jmp	.label_408
.label_394:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_409
	jmp	.label_222
.label_409:
	jmp	.label_329
.label_401:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 4
	cmp	eax, 0
	je	.label_221
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	jae	.label_221
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_221
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rax + rcx + 2]
	nop	
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x144], edx
	mov	dword ptr [rbp - 0xdc], esi
	lea	rdi, [rdi]
	je	.label_238
	nop	
	jmp	.label_229
.label_229:
	nop	
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	jb	.label_238
	jmp	.label_246
.label_246:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x144]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_238
	jmp	.label_257
.label_257:
	mov	eax, dword ptr [rbp - 0x144]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x128], eax
	je	.label_238
	jmp	.label_402
.label_402:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0xf4], eax
	lea	rdi, [rdi]
	ja	.label_301
	jmp	.label_238
.label_238:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_273
	jmp	.label_222
.label_273:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3d], dl
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rax, 2
	mov	qword ptr [rbp - 0xd8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_277
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_277:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_295
.label_295:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_245
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_245:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_305
.label_305:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_414
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_414:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_359
.label_359:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_378
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_378:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_255
.label_301:
	jmp	.label_255
.label_255:
	jmp	.label_221
.label_221:
	jmp	.label_329
.label_408:
	jmp	.label_329
.label_329:
	jmp	.label_241
.label_761:
	mov	byte ptr [rbp - 0xb6], 0x61
	jmp	.label_334
.label_762:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb6], 0x62
	jmp	.label_334
.label_766:
	mov	byte ptr [rbp - 0xb6], 0x66
	lea	rdi, [rdi]
	jmp	.label_334
.label_764:
	mov	byte ptr [rbp - 0xb6], 0x6e
	mov	rbp, rbp
	jmp	.label_341
.label_767:
	mov	byte ptr [rbp - 0xb6], 0x72
	mov	rbp, rbp
	jmp	.label_341
.label_763:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb6], 0x74
	jmp	.label_341
.label_765:
	mov	byte ptr [rbp - 0xb6], 0x76
	jmp	.label_334
.label_772:
	mov	al, byte ptr [rbp - 0x3d]
	nop	
	mov	byte ptr [rbp - 0xb6], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_350
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_355
	nop	
	jmp	.label_222
.label_355:
	lea	rsi, [rsi]
	jmp	.label_248
.label_350:
	test	byte ptr [rbp - 0x89], 1
	je	.label_262
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_262
	nop	
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rbp, rbp
	je	.label_262
	jmp	.label_248
.label_262:
	jmp	.label_341
.label_341:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	jne	.label_371
	test	byte ptr [rbp - 0x3e], 1
	je	.label_371
	jmp	.label_222
.label_371:
	mov	rsp, rsp
	jmp	.label_334
.label_334:
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_375
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb6]
	mov	byte ptr [rbp - 0x3d], al
	jmp	.label_281
.label_375:
	jmp	.label_241
.label_773:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_384
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x150]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_387
	jmp	.label_393
.label_384:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 1
	je	.label_387
.label_393:
	nop	
	jmp	.label_241
.label_387:
	jmp	.label_397
.label_397:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rbp, rbp
	je	.label_304
	lea	rsi, [rsi]
	jmp	.label_241
.label_304:
	nop	
	jmp	.label_405
.label_405:
	mov	byte ptr [rbp - 0x91], 1
.label_768:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_407
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_407
	jmp	.label_222
.label_407:
	lea	rsi, [rsi]
	jmp	.label_241
.label_770:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa5], 1
	mov	byte ptr [rbp - 0x91], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_412
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_218
	jmp	.label_222
.label_218:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_224
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x140], 0
	lea	rdi, [rdi]
	jne	.label_224
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x140], rax
	mov	qword ptr [rbp - 0x28], 0
.label_224:
	jmp	.label_235
.label_235:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_236
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_236:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_242
.label_242:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	jae	.label_251
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_251:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_263
.label_263:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_267
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_267:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_412:
	lea	rsi, [rsi]
	jmp	.label_241
.label_769:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 1
	jmp	.label_241
.label_268:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xb5], 1
	je	.label_285
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x110], 1
	movzx	eax, byte ptr [rbp - 0x3d]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0xf0], rcx
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xf0]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	nop	
	cmp	edx, 0
	lea	rdi, [rdi]
	setne	sil
	and	sil, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x40], sil
	lea	rsi, [rsi]
	jmp	.label_239
.label_285:
	xor	esi, esi
	mov	eax, 8
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rcx, [rbp - 0x118]
	mov	rdi, rcx
	call	memset
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x40], 1
	cmp	qword ptr [rbp - 0x68], -1
	mov	rsp, rsp
	jne	.label_309
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x150]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
.label_309:
	jmp	.label_220
.label_220:
	lea	rdi, [rbp - 0x74]
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x118]
	nop	
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0x110]
	add	rax, qword ptr [rbp - 0x150]
	nop	
	mov	rdx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xd8]
	add	rsi, qword ptr [rbp - 0x110]
	sub	rdx, rsi
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jne	.label_330
	jmp	.label_318
.label_330:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], -1
	jne	.label_336
	mov	byte ptr [rbp - 0x40], 0
	jmp	.label_318
.label_336:
	nop	
	cmp	qword ptr [rbp - 0x10], -2
	jne	.label_340
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_360:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xd8]
	add	rdx, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x68]
	mov	byte ptr [rbp - 0x41], cl
	mov	rsp, rsp
	jae	.label_388
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0x110]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x41], sil
.label_388:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_315
	jmp	.label_337
.label_315:
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_360
.label_337:
	jmp	.label_318
.label_340:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_303
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_303
	mov	qword ptr [rbp - 0xe8], 1
.label_411:
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_373
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0xe8]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	mov	rsp, rsp
	add	esi, -0x5b
	sub	esi, 2
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x124], esi
	jb	.label_361
	jmp	.label_390
.label_390:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x148], eax
	je	.label_361
	jmp	.label_291
.label_291:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	je	.label_361
	jmp	.label_400
.label_400:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x48], eax
	jne	.label_323
	mov	rsp, rsp
	jmp	.label_361
.label_361:
	mov	rsp, rsp
	jmp	.label_222
.label_323:
	jmp	.label_410
.label_410:
	mov	rsp, rsp
	jmp	.label_364
.label_364:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe8]
	add	rax, 1
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_411
.label_373:
	mov	rbp, rbp
	jmp	.label_303
.label_303:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x74]
	call	iswprint
	cmp	eax, 0
	jne	.label_226
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_226:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_243
.label_243:
	lea	rsi, [rsi]
	jmp	.label_230
.label_230:
	jmp	.label_232
.label_232:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x118]
	nop	
	call	mbsinit
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	setne	cl
	lea	rdi, [rdi]
	xor	cl, 0xff
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_220
.label_318:
	jmp	.label_239
.label_239:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x40]
	and	dl, 1
	mov	byte ptr [rbp - 0x91], dl
	cmp	rcx, qword ptr [rbp - 0x110]
	nop	
	jb	.label_240
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_254
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	mov	rsp, rsp
	jne	.label_254
.label_240:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x110]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_228:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	nop	
	je	.label_272
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	jne	.label_272
	jmp	.label_275
.label_275:
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_276
	jmp	.label_222
.label_276:
	mov	byte ptr [rbp - 0x3f], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_279
	test	byte ptr [rbp - 0x42], 1
	jne	.label_279
	lea	rdi, [rdi]
	jmp	.label_286
.label_286:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_372
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_372:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_413
.label_413:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_299
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x24
.label_299:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_296
.label_296:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_313
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_313:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_279:
	jmp	.label_317
.label_317:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_319
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_319:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_395
.label_395:
	jmp	.label_326
.label_326:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_328
	nop	
	movzx	eax, byte ptr [rbp - 0x3d]
	nop	
	sar	eax, 6
	mov	rsp, rsp
	add	eax, 0x30
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rdx], cl
.label_328:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_252
.label_252:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_345
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x3d]
	mov	rbp, rbp
	sar	eax, 3
	lea	rsi, [rsi]
	and	eax, 7
	add	eax, 0x30
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	byte ptr [rsi + rdx], cl
.label_345:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	movzx	eax, byte ptr [rbp - 0x3d]
	lea	rsi, [rsi]
	and	eax, 7
	lea	rdi, [rdi]
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x3d], cl
	jmp	.label_354
.label_272:
	test	byte ptr [rbp - 0xa6], 1
	lea	rsi, [rsi]
	je	.label_403
	lea	rdi, [rdi]
	jmp	.label_365
.label_365:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_367
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x5c
.label_367:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa6], 0
.label_403:
	nop	
	jmp	.label_354
.label_354:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xd8]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_376
	jmp	.label_381
.label_376:
	lea	rsi, [rsi]
	jmp	.label_385
.label_385:
	test	byte ptr [rbp - 0x42], 1
	je	.label_386
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_386
	lea	rsi, [rsi]
	jmp	.label_391
.label_391:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_392
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_392:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_398
.label_398:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_406
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_406:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_386:
	nop	
	jmp	.label_415
.label_415:
	mov	rsp, rsp
	jmp	.label_416
.label_416:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_417
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x3d]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_417:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rcx
	mov	rcx, qword ptr [rbp - 0x150]
	mov	dl, byte ptr [rcx + rax + 1]
	nop	
	mov	byte ptr [rbp - 0x3d], dl
	jmp	.label_228
.label_381:
	mov	rsp, rsp
	jmp	.label_248
.label_254:
	lea	rsi, [rsi]
	jmp	.label_241
.label_241:
	test	byte ptr [rbp - 0x89], 1
	mov	rbp, rbp
	je	.label_306
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_249
.label_306:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_253
.label_249:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x100], 0
	nop	
	je	.label_253
	movzx	eax, byte ptr [rbp - 0x3d]
	lea	rsi, [rsi]
	mov	ecx, eax
	shr	rcx, 5
	mov	rdx, qword ptr [rbp - 0x100]
	mov	eax, dword ptr [rdx + rcx*4]
	nop	
	movzx	esi, byte ptr [rbp - 0x3d]
	lea	rsi, [rsi]
	mov	ecx, esi
	and	rcx, 0x1f
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	ecx, esi
	shr	eax, cl
	lea	rdi, [rdi]
	and	eax, 1
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_259
.label_253:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xa6], 1
	lea	rdi, [rdi]
	jne	.label_259
	mov	rsp, rsp
	jmp	.label_248
.label_259:
	nop	
	jmp	.label_281
.label_281:
	jmp	.label_282
.label_282:
	test	byte ptr [rbp - 0x3e], 1
	mov	rbp, rbp
	je	.label_283
	jmp	.label_222
.label_283:
	mov	byte ptr [rbp - 0x3f], 1
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_287
	test	byte ptr [rbp - 0x42], 1
	lea	rdi, [rdi]
	jne	.label_287
	lea	rdi, [rdi]
	jmp	.label_293
.label_293:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_344
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_344:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_302
.label_302:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_297
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_297:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_335
.label_335:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_271
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_271:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_287:
	jmp	.label_227
.label_227:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_325
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_325:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_333
.label_333:
	nop	
	jmp	.label_248
.label_248:
	jmp	.label_338
.label_338:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x42], 1
	je	.label_339
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_339
	lea	rdi, [rdi]
	jmp	.label_342
.label_342:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_346
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_346:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_351
.label_351:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_356
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_356:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_339:
	jmp	.label_366
.label_366:
	nop	
	jmp	.label_368
.label_368:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_370
	mov	al, byte ptr [rbp - 0x3d]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_370:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x91], 1
	jne	.label_374
	mov	byte ptr [rbp - 0xb7], 0
.label_374:
	mov	rbp, rbp
	jmp	.label_380
.label_380:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_382
.label_404:
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	jne	.label_389
	cmp	dword ptr [rbp - 0x58], 2
	nop	
	jne	.label_389
	mov	rbp, rbp
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_389
	nop	
	jmp	.label_222
.label_389:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_247
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_247
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xa5], 1
	je	.label_247
	test	byte ptr [rbp - 0xb7], 1
	je	.label_349
	mov	r8d, 5
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	r9d, dword ptr [rbp - 0xa4]
	mov	rax, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x120]
	mov	r11, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r11
	mov	rbp, rbp
	call	quotearg_buffer_restyled
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
	nop	
	jmp	.label_231
.label_349:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jne	.label_233
	cmp	qword ptr [rbp - 0x140], 0
	lea	rsi, [rsi]
	je	.label_233
	nop	
	mov	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], 0
	jmp	.label_237
.label_233:
	jmp	.label_244
.label_244:
	mov	rbp, rbp
	jmp	.label_247
.label_247:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x108], 0
	je	.label_250
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_250
	mov	rbp, rbp
	jmp	.label_219
.label_219:
	mov	rax, qword ptr [rbp - 0x108]
	cmp	byte ptr [rax], 0
	je	.label_260
	lea	rdi, [rdi]
	jmp	.label_264
.label_264:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_266
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_266:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_278
.label_278:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_219
.label_260:
	jmp	.label_250
.label_250:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_289
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0
.label_289:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_231
.label_222:
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_274
	mov	rsp, rsp
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_274
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], 4
.label_274:
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x150]
	mov	r8, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x58]
	nop	
	mov	r9d, dword ptr [rbp - 0xa4]
	and	r9d, 0xfffffffd
	lea	rsi, [rsi]
	mov	r10, qword ptr [rbp - 0x120]
	mov	r11, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x138], rcx
	mov	rcx, r8
	lea	rdi, [rdi]
	mov	r8d, eax
	mov	qword ptr [rsp], 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
.label_231:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	add	rsp, 0x168
	pop	rbx
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406230
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_alloc_mem
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4062a0

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x40], rsi
	mov	qword ptr [rbp - 0x48], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	je	.label_418
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_419
.label_418:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_419
.label_419:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	ecx, 1
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], edi
	mov	rax, qword ptr [rbp - 0x58]
	mov	edi, dword ptr [rax + 4]
	cmp	qword ptr [rbp - 0x48], 0
	nop	
	cmovne	ecx, esi
	or	edi, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], edi
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	mov	r8, qword ptr [rbp - 0x58]
	mov	r8d, dword ptr [r8]
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	mov	r10, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	r10, 8
	mov	r11, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r11 + 0x28]
	mov	rbx, qword ptr [rbp - 0x58]
	nop	
	mov	rbx, qword ptr [rbx + 0x30]
	lea	rsi, [rsi]
	mov	rdi, rdx
	lea	rsi, [rsi]
	mov	rsi, rdx
	mov	rdx, rax
	mov	qword ptr [rsp], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], r11
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rbx
	call	quotearg_buffer_restyled
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	xcharalloc
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x58]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x34]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x58]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x58]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	mov	dword ptr [rbp - 0x64], r8d
	nop	
	call	__errno_location
	nop	
	mov	r8d, dword ptr [rbp - 0x64]
	nop	
	mov	dword ptr [rax], r8d
	nop	
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_420
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
.label_420:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rsp, 0x78
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406470
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_425:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_424
	nop	
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	nop	
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	jmp	.label_425
.label_424:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_423
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_421]],  rax
.label_423:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_422
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_422:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406580

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	rdx, -1
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 8]
	call	quotearg_n_options
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4065d0

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 0x64], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x60], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	call	__errno_location
	mov	edi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x44], edi
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	cmp	dword ptr [rbp - 0x64], 0
	jge	.label_432
	call	abort
.label_432:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 0x64]
	jg	.label_427
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	sete	cl
	mov	rbp, rbp
	and	cl, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x51], cl
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0xc]
	cmp	edx, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	jge	.label_428
	call	xalloc_die
.label_428:
	test	byte ptr [rbp - 0x51], 1
	je	.label_429
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_433
.label_429:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_433:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rbp - 0x64]
	add	ecx, 1
	movsxd	rdx, ecx
	shl	rdx, 4
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsi, rdx
	call	xrealloc
	mov	qword ptr [rbp - 8], rax
	mov	qword ptr [word ptr [slotvec]],  rax
	test	byte ptr [rbp - 0x51], 1
	lea	rdi, [rdi]
	je	.label_431
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_421]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_431:
	xor	esi, esi
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	movsxd	rcx,  dword ptr [dword ptr [nslots]]
	mov	rsp, rsp
	shl	rcx, 4
	add	rax, rcx
	mov	edx, dword ptr [rbp - 0x64]
	nop	
	add	edx, 1
	mov	rbp, rbp
	sub	edx,  dword ptr [dword ptr [nslots]]
	movsxd	rcx, edx
	shl	rcx, 4
	mov	rdi, rax
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rsp, rsp
	call	memset
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x64]
	add	esi, 1
	mov	dword ptr [dword ptr [nslots]],  esi
.label_427:
	movsxd	rax, dword ptr [rbp - 0x64]
	lea	rsi, [rsi]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	movsxd	rax, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax + 4]
	lea	rsi, [rsi]
	or	ecx, 1
	mov	dword ptr [rbp - 0x20], ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rax]
	mov	rbp, rbp
	mov	r9d, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 8
	nop	
	mov	r10, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	r10, qword ptr [r10 + 0x28]
	lea	rdi, [rdi]
	mov	r11, qword ptr [rbp - 0x28]
	nop	
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	ja	.label_430
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x38], rcx
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x64]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx], rcx
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], rax
	mov	rbp, rbp
	je	.label_426
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	free
.label_426:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	call	xcharalloc
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	movsxd	rdi, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 8], rax
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x28]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x28]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	r11, qword ptr [r11 + 0x30]
	nop	
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	mov	rsp, rsp
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x40], rax
.label_430:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	add	rsp, 0x90
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406900

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	nop	
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	dword ptr [rbp - 0x14], edi
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406940
	.globl quotearg
	.type quotearg, @function
quotearg:

	nop
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	xor	eax, eax
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quotearg_n
	lea	rdi, [rdi]
	add	rsp, 0x10
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406970
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	mov	edi, eax
	mov	rsp, rsp
	call	quotearg_n_mem
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4069b0

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x50
	lea	rax, [rbp - 0x40]
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 4], esi
	nop	
	mov	qword ptr [rbp - 0x48], rdx
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 4]
	mov	rdi, rax
	call	quoting_options_from_style
	mov	rdx, -1
	lea	rcx, [rbp - 0x40]
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	call	quotearg_n_options
	lea	rdi, [rdi]
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a10

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rax, rdi
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, 0x38
	lea	r8, [rbp - 0x40]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44], esi
	mov	qword ptr [rbp - 0x50], rdi
	nop	
	mov	rdi, r8
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	call	memset
	nop	
	cmp	dword ptr [rbp - 0x44], 0xa
	jne	.label_434
	call	abort
.label_434:
	lea	rsi, [rsi]
	mov	eax, 0x38
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x44]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x40], eax
	nop	
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	memcpy
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ab0

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rsp, rsp
	lea	rax, [rbp - 0x40]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x48], edi
	nop	
	mov	dword ptr [rbp - 0x44], esi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rcx
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x44]
	nop	
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rcx, [rbp - 0x40]
	nop	
	mov	edi, dword ptr [rbp - 0x48]
	nop	
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 8]
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406b20

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 8], rsi
	mov	esi, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	mov	edi, eax
	mov	rbp, rbp
	call	quotearg_n_style
	nop	
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406b60
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_style_mem
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ba0

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x70
	mov	rbp, rbp
	mov	al, dl
	lea	rcx, [rbp - 0x68]
	lea	rdi, [rdi]
	mov	edx, 1
	movabs	r8, OFFSET FLAT:default_quoting_options
	mov	r9d, 0x38
	mov	r10d, r9d
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], al
	lea	rsi, [rsi]
	mov	rsi, rcx
	nop	
	mov	rdi, rsi
	mov	rsi, r8
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edx
	lea	rsi, [rsi]
	mov	rdx, r10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	call	memcpy
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rbp - 0x11]
	mov	edx, dword ptr [rbp - 4]
	nop	
	call	set_char_quoting
	mov	rsp, rsp
	xor	edi, edi
	lea	rcx, [rbp - 0x68]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	dword ptr [rbp - 0x2c], eax
	nop	
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x70
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c50

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	al, sil
	mov	rsi, -1
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	nop	
	mov	rdi, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rbp - 9]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406c90

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	nop	
	mov	esi, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	quotearg_char
	lea	rsi, [rsi]
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406cc0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	edx, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	quotearg_char_mem
	mov	rsp, rsp
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d00
	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	lea	rax, [rbp - 0x40]
	mov	dword ptr [rbp - 0x54], edi
	mov	dword ptr [rbp - 4], esi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], rdx
	mov	esi, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	quoting_options_from_style
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x90]
	mov	rsp, rsp
	mov	esi, 0x3a
	mov	rbp, rbp
	mov	edx, 1
	mov	ecx, 0x38
	mov	edi, ecx
	lea	rsi, [rsi]
	lea	r8, [rbp - 0x40]
	mov	r9, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rdi
	mov	rsp, rsp
	mov	rdi, r9
	nop	
	mov	dword ptr [rbp - 0x94], esi
	mov	rsi, r8
	mov	r8, qword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0x44], edx
	nop	
	mov	rdx, r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	esi, dword ptr [rbp - 0x94]
	mov	edx, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	call	set_char_quoting
	mov	rdx, -1
	mov	rsp, rsp
	lea	rcx, [rbp - 0x90]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], eax
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0xb0
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406de0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	mov	r8, -1
	mov	dword ptr [rbp - 0xc], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rcx
	mov	edi, dword ptr [rbp - 0xc]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406e30

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rax, [rbp - 0x38]
	lea	rsi, [rsi]
	movabs	r9, OFFSET FLAT:default_quoting_options
	nop	
	mov	r10d, 0x38
	mov	rbp, rbp
	mov	r11d, r10d
	mov	dword ptr [rbp - 0x3c], edi
	mov	qword ptr [rbp - 0x48], rsi
	mov	qword ptr [rbp - 0x58], rdx
	mov	qword ptr [rbp - 0x50], rcx
	mov	qword ptr [rbp - 0x68], r8
	mov	rcx, rax
	mov	rdi, rcx
	mov	rbp, rbp
	mov	rsi, r9
	mov	rbp, rbp
	mov	rdx, r11
	mov	qword ptr [rbp - 0x60], rax
	call	memcpy
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	set_custom_quoting
	lea	rcx, [rbp - 0x38]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x68]
	call	quotearg_n_options
	add	rsp, 0x70
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ed0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	edi, eax
	lea	rdi, [rdi]
	call	quotearg_n_custom
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406f20
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_custom_mem
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406f80

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:quote_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	lea	rdi, [rdi]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406fc0
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	mov	rsp, rsp
	call	quote_n_mem
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407000

	.globl quote_n
	.type quote_n, @function
quote_n:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	rdx, -1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	edi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quote_n_mem
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407040

	.globl quote
	.type quote, @function
quote:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	lea	rdi, [rdi]
	call	quote_n
	nop	
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407080

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 4], esi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_438
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_436
.label_438:
	call	locale_charset
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.13_0
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_437
	movabs	rax, OFFSET FLAT:.str.15_0
	movabs	rcx, OFFSET FLAT:.str.14
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_436
.label_437:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_435
	nop	
	movabs	rax, OFFSET FLAT:.str.18_1
	movabs	rcx, OFFSET FLAT:.str.17_1
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_436
.label_435:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
.label_436:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4071c0

	.globl savewd_init
	.type savewd_init, @function
savewd_init:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi], 0
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4071e0

	.globl savewd_errno
	.type savewd_errno, @function
savewd_errno:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	cmp	dword ptr [rdi], 4
	jne	.label_439
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 4]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_440
.label_439:
	xor	eax, eax
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_440
.label_440:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407220

	.globl savewd_chdir
	.type savewd_chdir, @function
savewd_chdir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x38], edx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x40], 0xffffffff
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], 0
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jne	.label_454
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_442
.label_454:
	xor	eax, eax
	mov	ecx, 0x20000
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	and	edx, 1
	cmp	edx, 0
	cmovne	eax, ecx
	lea	rsi, [rsi]
	or	eax, 0x10900
	lea	rdi, [rdi]
	mov	esi, eax
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0x40], eax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_455
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	dword ptr [rcx], eax
	call	__errno_location
	mov	edx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	dword ptr [rax + 4], edx
.label_455:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x40], 0
	jge	.label_450
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0xd
	lea	rsi, [rsi]
	je	.label_450
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], 0xffffffff
.label_450:
	lea	rdi, [rdi]
	jmp	.label_442
.label_442:
	cmp	dword ptr [rbp - 0x3c], 0
	jne	.label_446
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x40]
	jg	.label_449
	mov	eax, dword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	and	eax, 2
	lea	rsi, [rsi]
	cmp	eax, 0
	jne	.label_446
.label_449:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	call	savewd_save
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_443
	jmp	.label_447
.label_443:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], 0
	mov	dword ptr [rbp - 0x3c], 0xfffffffe
	lea	rsi, [rsi]
	jmp	.label_448
.label_447:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x40], 0
	mov	rsp, rsp
	jge	.label_456
	mov	rdi, qword ptr [rbp - 0x18]
	call	chdir
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	jmp	.label_445
.label_456:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x40]
	call	fchdir
	mov	dword ptr [rbp - 0x24], eax
.label_445:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], 0
	mov	rsp, rsp
	jne	.label_453
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax]
	dec	ecx
	lea	rdi, [rdi]
	mov	eax, ecx
	mov	rbp, rbp
	sub	ecx, 4
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	mov	dword ptr [rbp - 4], ecx
	ja	.label_458
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_451]]
	lea	rsi, [rsi]
	jmp	rcx
.label_797:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	dword ptr [rax], 2
	lea	rdi, [rdi]
	jmp	.label_441
.label_798:
	jmp	.label_441
.label_799:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 4], 0
	jne	.label_444
	jmp	.label_457
.label_444:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_6
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.1_2
	lea	rsi, [rsi]
	mov	edx, 0x9b
	nop	
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.savewd_chdir
	mov	rsp, rsp
	call	__assert_fail
.label_457:
	mov	rsp, rsp
	jmp	.label_441
.label_458:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.2_2
	nop	
	movabs	rsi, OFFSET FLAT:.str.1_2
	mov	edx, 0x9f
	nop	
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.savewd_chdir
	mov	rbp, rbp
	call	__assert_fail
.label_441:
	jmp	.label_453
.label_453:
	jmp	.label_448
.label_448:
	mov	rbp, rbp
	jmp	.label_446
.label_446:
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x40]
	jg	.label_452
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jne	.label_452
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x44], ecx
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x40]
	call	close
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x44]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x48], eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], ecx
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x34]
	mov	dword ptr [rax], ecx
.label_452:
	nop	
	mov	eax, dword ptr [rbp - 0x3c]
	nop	
	add	rsp, 0x50
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407500

	.globl savewd_save
	.type savewd_save, @function
savewd_save:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	eax, dword ptr [rdi]
	test	eax, eax
	mov	dword ptr [rbp - 0x1c], eax
	je	.label_459
	jmp	.label_469
.label_469:
	mov	eax, dword ptr [rbp - 0x1c]
	dec	eax
	sub	eax, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x20], eax
	lea	rdi, [rdi]
	jb	.label_467
	jmp	.label_471
.label_471:
	mov	eax, dword ptr [rbp - 0x1c]
	sub	eax, 3
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	je	.label_460
	mov	rbp, rbp
	jmp	.label_472
.label_472:
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, -4
	mov	rsp, rsp
	sub	eax, 2
	mov	dword ptr [rbp - 0xc], eax
	lea	rsi, [rsi]
	jb	.label_467
	mov	rsp, rsp
	jmp	.label_468
.label_459:
	movabs	rdi, OFFSET FLAT:.str.5_0
	xor	esi, esi
	mov	al, 0
	mov	rbp, rbp
	call	open_safer
	xor	esi, esi
	mov	dword ptr [rbp - 4], eax
	nop	
	cmp	esi, dword ptr [rbp - 4]
	jg	.label_465
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], 1
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 4], ecx
	mov	rbp, rbp
	jmp	.label_463
.label_465:
	lea	rdi, [rdi]
	call	__errno_location
	cmp	dword ptr [rax], 0xd
	nop	
	je	.label_462
	mov	rbp, rbp
	call	__errno_location
	cmp	dword ptr [rax], 0x74
	je	.label_462
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], 4
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 4], ecx
	jmp	.label_463
.label_462:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], 3
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 4], 0xffffffff
.label_460:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 4], 0
	lea	rdi, [rdi]
	jge	.label_466
	nop	
	call	fork
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	dword ptr [rcx + 4], eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	dword ptr [rcx + 4], 0
	je	.label_470
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	eax, dword ptr [rcx + 4]
	nop	
	jge	.label_464
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], 1
	lea	rdi, [rdi]
	jmp	.label_461
.label_464:
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], 4
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 4], ecx
.label_470:
	nop	
	jmp	.label_466
.label_466:
	jmp	.label_463
.label_467:
	jmp	.label_463
.label_468:
	movabs	rdi, OFFSET FLAT:.str.2_2
	nop	
	movabs	rsi, OFFSET FLAT:.str.1_2
	mov	rbp, rbp
	mov	edx, 0x63
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.savewd_save
	nop	
	call	__assert_fail
.label_463:
	mov	byte ptr [rbp - 0x21], 0
.label_461:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x21]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	lea	rdi, [rdi]
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4076f0

	.globl savewd_restore
	.type savewd_restore, @function
savewd_restore:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x50
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rdi
	mov	dword ptr [rbp - 0x4c], esi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rdi]
	mov	edi, esi
	lea	rsi, [rsi]
	mov	rax, rdi
	sub	rax, 4
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	ja	.label_485
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_483]]
	lea	rsi, [rsi]
	jmp	rcx
	.section	.text
	.align	16
	#Procedure 0x407940

	.globl savewd_finish
	.type savewd_finish, @function
savewd_finish:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	eax, dword ptr [rdi]
	lea	rsi, [rsi]
	mov	edi, eax
	mov	rcx, rdi
	mov	rsp, rsp
	sub	rcx, 4
	mov	qword ptr [rbp - 0x20], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rcx
	ja	.label_486
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_488]]
	mov	rbp, rbp
	jmp	rcx
	.section	.text
	.align	16
	#Procedure 0x407a40

	.globl savewd_process_files
	.type savewd_process_files, @function
savewd_process_files:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	lea	rax, [rbp - 8]
	mov	dword ptr [rbp - 0x34], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], 0
	mov	dword ptr [rbp - 0x40], 0
	mov	rdi, rax
	mov	rsp, rsp
	call	savewd_init
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rbp - 0x34]
	sub	r8d, 1
	mov	dword ptr [rbp - 0x3c], r8d
.label_496:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x3c]
	nop	
	jg	.label_491
	movsxd	rax, dword ptr [rbp - 0x3c]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax]
	nop	
	cmp	edx, 0x2f
	je	.label_500
	jmp	.label_491
.label_500:
	mov	rbp, rbp
	jmp	.label_493
.label_493:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, -1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_496
.label_491:
	jmp	.label_497
.label_497:
	mov	eax, dword ptr [rbp - 0x1c]
	cmp	eax, dword ptr [rbp - 0x3c]
	jge	.label_499
	mov	rsp, rsp
	lea	rdi, [rbp - 8]
	call	savewd_delegating
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_501
	mov	rbp, rbp
	lea	rsi, [rbp - 8]
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rdx + rcx*8]
	mov	rdx, qword ptr [rbp - 0x18]
	call	rax
	mov	dword ptr [rbp - 0x38], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x40]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	jge	.label_502
	mov	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x40], eax
.label_502:
	jmp	.label_501
.label_501:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	add	eax, 1
	lea	rsi, [rsi]
	movsxd	rcx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	rsp, rsp
	movsx	eax, byte ptr [rcx]
	lea	rdi, [rdi]
	cmp	eax, 0x2f
	mov	rbp, rbp
	je	.label_495
	nop	
	lea	rdi, [rbp - 8]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x40]
	call	savewd_restore
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], eax
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0xc]
	jge	.label_503
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x40], eax
.label_503:
	jmp	.label_495
.label_495:
	jmp	.label_504
.label_504:
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, 1
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_497
.label_499:
	lea	rdi, [rbp - 8]
	lea	rsi, [rsi]
	call	savewd_finish
.label_498:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x34]
	jge	.label_494
	lea	rsi, [rsi]
	lea	rsi, [rbp - 8]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x1c]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rdx + rcx*8]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	rax
	nop	
	mov	dword ptr [rbp - 0x10], eax
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x10]
	jge	.label_505
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x40], eax
.label_505:
	lea	rsi, [rsi]
	jmp	.label_492
.label_492:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_498
.label_494:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x40]
	mov	rsp, rsp
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c50

	.globl savewd_delegating
	.type savewd_delegating, @function
savewd_delegating:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	dword ptr [rdi], 3
	mov	byte ptr [rbp - 1], cl
	mov	rsp, rsp
	jne	.label_506
	nop	
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	eax, dword ptr [rcx + 4]
	setl	dl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], dl
.label_506:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ca0
	.globl getcon
	.type getcon, @function
getcon:

	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	nop	
	mov	eax, ecx
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x407cd0
	.globl freecon
	.type freecon, @function
freecon:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x407ce0
	.globl getfscreatecon
	.type getfscreatecon, @function
getfscreatecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407d10

	.globl setfscreatecon
	.type setfscreatecon, @function
setfscreatecon:
	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	nop	
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	nop	
	mov	eax, ecx
	mov	rbp, rbp
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407d50
	.globl matchpathcon
	.type matchpathcon, @function
matchpathcon:

	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdx
	call	__errno_location
	lea	rsi, [rsi]
	mov	esi, 0xffffffff
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	lea	rsi, [rsi]
	mov	eax, esi
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407d90
	.globl getfilecon
	.type getfilecon, @function
getfilecon:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, 0xffffffff
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407dd0
	.globl lgetfilecon
	.type lgetfilecon, @function
lgetfilecon:

	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	nop	
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407e10
	.globl fgetfilecon
	.type fgetfilecon, @function
fgetfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 8], rsi
	call	__errno_location
	mov	rsp, rsp
	mov	edi, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, edi
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407e50
	.globl setfilecon
	.type setfilecon, @function
setfilecon:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	call	__errno_location
	nop	
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	nop	
	mov	eax, ecx
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407e90
	.globl lsetfilecon
	.type lsetfilecon, @function
lsetfilecon:

	nop
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	nop	
	mov	eax, ecx
	lea	rdi, [rdi]
	add	rsp, 0x10
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ed0
	.globl fsetfilecon
	.type fsetfilecon, @function
fsetfilecon:

	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 0xc], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	mov	edi, 0xffffffff
	mov	rsp, rsp
	mov	dword ptr [rax], 0x5f
	mov	rbp, rbp
	mov	eax, edi
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407f10
	.globl security_check_context
	.type security_check_context, @function
security_check_context:

	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, 0xffffffff
	nop	
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	nop	
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407f50
	.globl security_check_context_raw
	.type security_check_context_raw, @function
security_check_context_raw:

	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407f90
	.globl setexeccon
	.type setexeccon, @function
setexeccon:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	nop	
	call	__errno_location
	nop	
	mov	ecx, 0xffffffff
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	mov	rsp, rsp
	add	rsp, 0x10
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407fd0
	.globl security_compute_create
	.type security_compute_create, @function
security_compute_create:

	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	ax, dx
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	word ptr [rbp - 0xa], ax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rcx
	call	__errno_location
	lea	rsi, [rsi]
	mov	edx, 0xffffffff
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	mov	eax, edx
	lea	rdi, [rdi]
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408020
	.globl string_to_security_class
	.type string_to_security_class, @function
string_to_security_class:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	dx, cx
	nop	
	mov	dword ptr [rax], 0x5f
	movzx	eax, dx
	nop	
	add	rsp, 0x10
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408050
	.globl matchpathcon_init_prefix
	.type matchpathcon_init_prefix, @function
matchpathcon_init_prefix:

	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408090

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	nop	
	push	rbp
	mov	rbp, rsp
	push	r14
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x170
	mov	qword ptr [rbp - 0xb8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rsi
	mov	qword ptr [rbp - 0x78], rdx
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], r8
	mov	qword ptr [rbp - 0x48], r9
	cmp	qword ptr [rbp - 0x60], 0
	je	.label_510
	movabs	rsi, OFFSET FLAT:.str_7
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xb8]
	nop	
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	mov	dword ptr [rbp - 0x6c], eax
	lea	rsi, [rsi]
	jmp	.label_508
.label_510:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.1_3
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0x78]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x114], eax
.label_508:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	eax, OFFSET FLAT:.str.2_3
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc8], rdi
	mov	rdi, rcx
	lea	rsi, [rsi]
	call	gettext
	mov	edx, OFFSET FLAT:version_etc_copyright
	lea	rsi, [rsi]
	mov	esi, edx
	xor	edx, edx
	mov	r8b, dl
	mov	rbp, rbp
	mov	ecx, 0x7e3
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	al, r8b
	nop	
	call	fprintf
	nop	
	mov	ecx, OFFSET FLAT:.str.3_2
	mov	rbp, rbp
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xb8]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	nop	
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rsi, rdx
	sub	rsi, 9
	nop	
	mov	dword ptr [rbp - 0xac], eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x148], rdx
	mov	qword ptr [rbp - 0xe0], rsi
	mov	rbp, rbp
	ja	.label_509
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_511]]
	jmp	rcx
.label_710:
	jmp	.label_507
.label_711:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.4_2
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x130], rax
	nop	
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x130]
	mov	rsi, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x30], eax
	jmp	.label_507
.label_712:
	movabs	rdi, OFFSET FLAT:.str.5_1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rsi, rax
	mov	al, 0
	mov	rsp, rsp
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	lea	rsi, [rsi]
	jmp	.label_507
.label_713:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.6_0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x138], rax
	call	gettext
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	nop	
	mov	rdx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	nop	
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x138]
	mov	rbp, rbp
	mov	rsi, rax
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	nop	
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	jmp	.label_507
.label_714:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.7_0
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0xd0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdi]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0xd0]
	nop	
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_507
.label_715:
	nop	
	movabs	rdi, OFFSET FLAT:.str.8
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x100], rax
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r9, qword ptr [rdi + 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xf4], eax
	nop	
	jmp	.label_507
.label_716:
	nop	
	movabs	rdi, OFFSET FLAT:.str.9_0
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x140], rax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	r9, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x140]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rdi
	mov	rdi, r10
	mov	qword ptr [rbp - 0x68], rsi
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rsp + 8], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x110], eax
	jmp	.label_507
.label_717:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.10_1
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xf0], rax
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x98]
	nop	
	mov	r8, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r9, qword ptr [rdi + 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rdi
	mov	rsp, rsp
	mov	rdi, r11
	mov	qword ptr [rbp - 0x128], rsi
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x128]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	al, 0
	nop	
	call	fprintf
	mov	dword ptr [rbp - 0x50], eax
	nop	
	jmp	.label_507
.label_718:
	movabs	rdi, OFFSET FLAT:.str.11_1
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x108], rax
	call	gettext
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x98]
	nop	
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	r10, qword ptr [r10 + 0x30]
	mov	rsp, rsp
	mov	r11, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rsp, rsp
	mov	rbx, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x58], rdi
	mov	rdi, rbx
	nop	
	mov	qword ptr [rbp - 0x120], rsi
	mov	rsi, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	lea	rsi, [rsi]
	mov	al, 0
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xe4], eax
	jmp	.label_507
.label_719:
	movabs	rdi, OFFSET FLAT:.str.12_1
	nop	
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdi]
	nop	
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdi, qword ptr [rdi + 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x98]
	mov	r10, qword ptr [r10 + 0x30]
	nop	
	mov	r11, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	rbp, rbp
	mov	r14, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc0], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x80], rsi
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], r11
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rbx
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	mov	dword ptr [rbp - 0x154], eax
	jmp	.label_507
.label_509:
	movabs	rdi, OFFSET FLAT:.str.13_1
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd8], rax
	lea	rdi, [rdi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	nop	
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdi, qword ptr [rdi + 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rsi + 0x28]
	nop	
	mov	r10, qword ptr [rbp - 0x98]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp - 0x98]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	rsp, rsp
	mov	r14, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x150], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0xa8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	nop	
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10c], eax
.label_507:
	lea	rdi, [rdi]
	add	rsp, 0x170
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4088d0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	mov	qword ptr [rbp - 0x10], r8
	mov	qword ptr [rbp - 8], 0
.label_512:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_513
	mov	rbp, rbp
	jmp	.label_514
.label_514:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_512
.label_513:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 8]
	call	version_etc_arn
	nop	
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408980

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0xa0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], 0
.label_516:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x40], 0xa
	mov	byte ptr [rbp - 0x11], cl
	jae	.label_519
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], ecx
	ja	.label_518
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_517
.label_518:
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x30], rdx
.label_517:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp + rcx*8 - 0x90], rax
	mov	rbp, rbp
	cmp	rax, 0
	setne	dl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], dl
.label_519:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_515
	mov	rsp, rsp
	jmp	.label_521
.label_515:
	jmp	.label_520
.label_520:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_516
.label_521:
	nop	
	lea	r8, [rbp - 0x90]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x40]
	nop	
	call	version_etc_arn
	add	rsp, 0xa0
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ae0

	.globl version_etc
	.type version_etc, @function
version_etc:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x1d0
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x120], xmm7
	nop	
	movaps	xmmword ptr [rbp - 0x1c0], xmm6
	movaps	xmmword ptr [rbp - 0x1a0], xmm5
	nop	
	movaps	xmmword ptr [rbp - 0x100], xmm4
	nop	
	movaps	xmmword ptr [rbp - 0x160], xmm3
	movaps	xmmword ptr [rbp - 0x140], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x20], xmm1
	movaps	xmmword ptr [rbp - 0xf0], xmm0
	nop	
	mov	qword ptr [rbp - 0x1c8], rdi
	mov	qword ptr [rbp - 0x1a8], r9
	mov	qword ptr [rbp - 0x108], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x128], rcx
	mov	qword ptr [rbp - 0x178], rdx
	mov	qword ptr [rbp - 0xd8], rsi
	lea	rsi, [rsi]
	je	.label_522
	movaps	xmm0, xmmword ptr [rbp - 0xf0]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xa0], xmm0
	lea	rdi, [rdi]
	movaps	xmm1, xmmword ptr [rbp - 0x20]
	movaps	xmmword ptr [rbp - 0x90], xmm1
	lea	rdi, [rdi]
	movaps	xmm2, xmmword ptr [rbp - 0x140]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x80], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0x70], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x100]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x60], xmm4
	lea	rdi, [rdi]
	movaps	xmm5, xmmword ptr [rbp - 0x1a0]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x50], xmm5
	mov	rbp, rbp
	movaps	xmm6, xmmword ptr [rbp - 0x1c0]
	movaps	xmmword ptr [rbp - 0x40], xmm6
	mov	rsp, rsp
	movaps	xmm7, xmmword ptr [rbp - 0x120]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x30], xmm7
.label_522:
	mov	rax, qword ptr [rbp - 0x1a8]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rcx, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rcx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x128]
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rdi, qword ptr [rbp - 0xd8]
	nop	
	mov	r8, qword ptr [rbp - 0x1c8]
	mov	qword ptr [rbp - 8], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x168], rdi
	mov	qword ptr [rbp - 0x170], rsi
	mov	qword ptr [rbp - 0x148], rdx
	lea	rdx, [rbp - 0xd0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x180], rdx
	lea	rdx, [rbp + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x188], rdx
	mov	dword ptr [rbp - 0x18c], 0x30
	mov	dword ptr [rbp - 0x190], 0x20
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x168]
	mov	rdx, qword ptr [rbp - 0x170]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x148]
	lea	r8, [rbp - 0x190]
	call	version_etc_va
	add	rsp, 0x1d0
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x408ca0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.14_0
	lea	rsi, [rsi]
	call	gettext
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.15_1
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.16_1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18
	mov	rsp, rsp
	mov	rdi, rax
	mov	al, 0
	call	printf
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.19_0
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x408d50

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	nop	
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_523
	mov	rbp, rbp
	call	xalloc_die
.label_523:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408db0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jne	.label_524
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_524
	lea	rdi, [rdi]
	call	xalloc_die
.label_524:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408e10
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	div	qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_525
	mov	rsp, rsp
	call	xalloc_die
.label_525:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	imul	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, rax
	lea	rdi, [rdi]
	call	xrealloc
	lea	rdi, [rdi]
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408e90

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	jne	.label_526
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_526
	mov	rdi, qword ptr [rbp - 8]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_528
.label_526:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	realloc
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jne	.label_527
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_527
	lea	rsi, [rsi]
	call	xalloc_die
.label_527:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
.label_528:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408f40

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x10], rdx
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jne	.label_529
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_531
	mov	eax, 0x80
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	setne	sil
	mov	rsp, rsp
	xor	sil, 0xff
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_531:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	div	qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	jae	.label_533
	call	xalloc_die
.label_533:
	lea	rsi, [rsi]
	jmp	.label_532
.label_529:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_530
	call	xalloc_die
.label_530:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_532:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	imul	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409070

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4090a0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	eax, 1
	mov	edx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	call	x2nrealloc
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4090e0
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	xor	esi, esi
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x10], rax
	call	memset
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409130
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jb	.label_534
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	calloc
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_535
.label_534:
	lea	rsi, [rsi]
	call	xalloc_die
.label_535:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4091a0

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x18]
	call	xmalloc
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	call	memcpy
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4091f0
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	strlen
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	xmemdup
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409250

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.1_4
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	nop	
	mov	dword ptr [rbp - 4], eax
	call	gettext
	mov	rsp, rsp
	xor	esi, esi
	nop	
	movabs	rdx, OFFSET FLAT:.str_2
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4092b0

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x30], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x40], rcx
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	jne	.label_536
	lea	rax, [rbp - 0x14]
	mov	qword ptr [rbp - 0x10], rax
.label_536:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	call	mbrtowc
	mov	rcx, -2
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x20]
	ja	.label_537
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_537
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_537
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x31], cl
	mov	rbp, rbp
	movzx	edx, byte ptr [rbp - 0x31]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rax], edx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 1
	jmp	.label_538
.label_537:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_538:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x4093a0

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x30], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	jne	.label_539
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_542
.label_539:
	mov	rbp, rbp
	jmp	.label_540
.label_540:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rax]
	mov	rsp, rsp
	call	c_tolower
	lea	rsi, [rsi]
	mov	cl, al
	mov	byte ptr [rbp - 0x19], cl
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	movzx	edi, byte ptr [rdx]
	call	c_tolower
	nop	
	mov	cl, al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x1a], cl
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x19]
	cmp	eax, 0
	jne	.label_541
	jmp	.label_543
.label_541:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x19]
	movzx	ecx, byte ptr [rbp - 0x1a]
	cmp	eax, ecx
	lea	rdi, [rdi]
	je	.label_540
.label_543:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x1a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_542:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409490

	.globl close_stream
	.type close_stream, @function
close_stream:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	__fpending
	cmp	rax, 0
	mov	rbp, rbp
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x16], cl
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	ferror_unlocked
	nop	
	cmp	eax, 0
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	mov	rsp, rsp
	cmp	eax, 0
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 0x15], cl
	nop	
	test	byte ptr [rbp - 1], 1
	lea	rsi, [rsi]
	jne	.label_546
	test	byte ptr [rbp - 0x15], 1
	je	.label_545
	test	byte ptr [rbp - 0x16], 1
	lea	rsi, [rsi]
	jne	.label_546
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_545
.label_546:
	nop	
	test	byte ptr [rbp - 0x15], 1
	mov	rsp, rsp
	jne	.label_544
	call	__errno_location
	mov	dword ptr [rax], 0
.label_544:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0xffffffff
	jmp	.label_547
.label_545:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], 0
.label_547:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409570

	.globl open_safer
	.type open_safer, @function
open_safer:
	mov	rsp, rsp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x1e0
	lea	rdi, [rdi]
	test	al, al
	movaps	xmmword ptr [rbp - 0xf0], xmm7
	movaps	xmmword ptr [rbp - 0x90], xmm6
	movaps	xmmword ptr [rbp - 0x10], xmm5
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x1d0], xmm4
	nop	
	movaps	xmmword ptr [rbp - 0x40], xmm3
	movaps	xmmword ptr [rbp - 0x50], xmm2
	movaps	xmmword ptr [rbp - 0xd0], xmm1
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	qword ptr [rbp - 0x78], rdi
	mov	qword ptr [rbp - 0x98], r9
	mov	qword ptr [rbp - 0xa8], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rcx
	nop	
	mov	qword ptr [rbp - 0x1a8], rdx
	mov	dword ptr [rbp - 0xd4], esi
	je	.label_548
	movaps	xmm0, xmmword ptr [rbp - 0x70]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x170], xmm0
	mov	rbp, rbp
	movaps	xmm1, xmmword ptr [rbp - 0xd0]
	movaps	xmmword ptr [rbp - 0x160], xmm1
	mov	rsp, rsp
	movaps	xmm2, xmmword ptr [rbp - 0x50]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x150], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x140], xmm3
	lea	rsi, [rsi]
	movaps	xmm4, xmmword ptr [rbp - 0x1d0]
	movaps	xmmword ptr [rbp - 0x130], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x120], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x90]
	movaps	xmmword ptr [rbp - 0x110], xmm6
	lea	rsi, [rsi]
	movaps	xmm7, xmmword ptr [rbp - 0xf0]
	movaps	xmmword ptr [rbp - 0x100], xmm7
.label_548:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x178], rax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x180], rcx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x188], rdx
	mov	rsi, qword ptr [rbp - 0x1a8]
	nop	
	mov	qword ptr [rbp - 0x190], rsi
	mov	edi, dword ptr [rbp - 0xd4]
	mov	r8, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xb8], r8
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1b4], edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1d4], 0
	mov	edi, dword ptr [rbp - 0x1b4]
	and	edi, 0x40
	mov	rbp, rbp
	cmp	edi, 0
	lea	rdi, [rdi]
	je	.label_549
	mov	rbp, rbp
	lea	rax, [rbp - 0x30]
	mov	rcx, rax
	nop	
	lea	rdx, [rbp - 0x1a0]
	mov	qword ptr [rcx + 0x10], rdx
	lea	rdi, [rdi]
	lea	rdx, [rbp + 0x10]
	mov	qword ptr [rcx + 8], rdx
	mov	dword ptr [rcx + 4], 0x30
	mov	dword ptr [rcx], 0x10
	mov	esi, dword ptr [rbp - 0x30]
	mov	rsp, rsp
	cmp	esi, 0x28
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], rax
	mov	dword ptr [rbp - 0xac], esi
	mov	rsp, rsp
	ja	.label_551
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xac]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xa0]
	nop	
	add	rcx, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_550
.label_551:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rdx
.label_550:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x30]
	mov	rsp, rsp
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x1d4], edx
	mov	qword ptr [rbp - 0x1b0], rcx
.label_549:
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x1d4]
	nop	
	xor	eax, eax
	mov	cl, al
	nop	
	mov	al, cl
	mov	rsp, rsp
	call	open
	lea	rsi, [rsi]
	mov	edi, eax
	mov	rbp, rbp
	call	fd_safer
	lea	rsi, [rsi]
	add	rsp, 0x1e0
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x4097f0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, eax
	nop	
	mov	dword ptr [rbp - 0xc], edi
	mov	byte ptr [rbp - 0xd], 1
	mov	edi, dword ptr [rbp - 0xc]
	call	setlocale
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	nop	
	je	.label_553
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_8
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_554
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:.str.1_5
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_552
.label_554:
	mov	byte ptr [rbp - 0xd], 0
.label_552:
	jmp	.label_553
.label_553:
	mov	al, byte ptr [rbp - 0xd]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	movzx	eax, al
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409890

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	edi, 0xe
	lea	rdi, [rdi]
	call	rpl_nl_langinfo
	nop	
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_556
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 8], rax
.label_556:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_555
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.1_6
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_555:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409910

	.globl mkancesdirs
	.type mkancesdirs, @function
mkancesdirs:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x70
	nop	
	mov	qword ptr [rbp - 0x28], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rcx
	mov	qword ptr [rbp - 0x60], 0
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0x50], rcx
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x29], 0
.label_573:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, 1
	nop	
	mov	qword ptr [rbp - 0x50], rcx
	lea	rsi, [rsi]
	mov	dl, byte ptr [rax]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x2a], dl
	cmp	dl, 0
	je	.label_564
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2f
	jne	.label_557
	mov	rsp, rsp
	movsx	eax, byte ptr [rbp - 0x2a]
	cmp	eax, 0x2f
	je	.label_562
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x60], rax
.label_562:
	lea	rdi, [rdi]
	jmp	.label_571
.label_557:
	movsx	eax, byte ptr [rbp - 0x2a]
	cmp	eax, 0x2f
	mov	rbp, rbp
	jne	.label_567
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0
	mov	rbp, rbp
	je	.label_567
	cmp	qword ptr [rbp - 0x60], 0
	je	.label_567
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	sub	rax, rcx
	nop	
	cmp	rax, 1
	jne	.label_569
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0x2e
	je	.label_559
.label_569:
	nop	
	mov	dword ptr [rbp - 0x3c], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], 0
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rax, rcx
	cmp	rax, 2
	jne	.label_561
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2e
	mov	rbp, rbp
	jne	.label_561
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	mov	rsp, rsp
	cmp	ecx, 0x2e
	nop	
	jne	.label_561
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x29], 0
	mov	rbp, rbp
	jmp	.label_558
.label_561:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x38]
	call	rax
	cmp	eax, 0
	lea	rdi, [rdi]
	jge	.label_565
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], ecx
	nop	
	jmp	.label_568
.label_565:
	mov	byte ptr [rbp - 0x29], 1
.label_568:
	jmp	.label_558
.label_558:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x29], 1
	je	.label_560
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	or	eax, 1
	nop	
	mov	dword ptr [rbp - 0x14], eax
.label_560:
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x48]
	mov	edx, dword ptr [rbp - 0x14]
	call	savewd_chdir
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], -1
	mov	rsp, rsp
	je	.label_572
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	byte ptr [rax], 0x2f
.label_572:
	cmp	dword ptr [rbp - 0x54], 0
	mov	rbp, rbp
	je	.label_570
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_566
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 2
	jne	.label_566
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	call	__errno_location
	mov	ecx, dword ptr [rbp - 4]
	mov	dword ptr [rax], ecx
.label_566:
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x54]
	mov	qword ptr [rbp - 0x68], rax
	mov	rsp, rsp
	jmp	.label_563
.label_570:
	jmp	.label_559
.label_559:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x48], rax
.label_567:
	lea	rsi, [rsi]
	jmp	.label_571
.label_571:
	jmp	.label_573
.label_564:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x68], rax
.label_563:
	mov	rax, qword ptr [rbp - 0x68]
	add	rsp, 0x70
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409bb0

	.globl dirchownmod
	.type dirchownmod, @function
dirchownmod:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0xf0
	mov	rsp, rsp
	mov	eax, dword ptr [rbp + 0x10]
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x38], edx
	nop	
	mov	dword ptr [rbp - 0x18], ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x30], r8d
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], r9d
	mov	dword ptr [rbp - 0xe4], eax
	nop	
	cmp	dword ptr [rbp - 8], 0
	nop	
	jge	.label_582
	nop	
	lea	rsi, [rbp - 0xe0]
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	call	stat
	mov	dword ptr [rbp - 0x4c], eax
	mov	rsp, rsp
	jmp	.label_574
.label_582:
	lea	rsi, [rbp - 0xe0]
	mov	edi, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	__fstat
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], eax
.label_574:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x4c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x20], eax
	cmp	dword ptr [rbp - 0x20], 0
	jne	.label_580
	mov	eax, dword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	nop	
	mov	eax, dword ptr [rbp - 0x3c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_586
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x14
	mov	dword ptr [rbp - 0x20], 0xffffffff
	jmp	.label_584
.label_586:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x28], 0
	cmp	dword ptr [rbp - 0x18], -1
	je	.label_594
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x18]
	cmp	eax, dword ptr [rbp - 0xc4]
	jne	.label_576
.label_594:
	cmp	dword ptr [rbp - 0x30], -1
	je	.label_578
	mov	eax, dword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	je	.label_578
.label_576:
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	jg	.label_585
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	call	fchown
	mov	dword ptr [rbp - 0x48], eax
	lea	rsi, [rsi]
	jmp	.label_589
.label_585:
	cmp	dword ptr [rbp - 0x38], -1
	je	.label_591
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x18]
	nop	
	mov	edx, dword ptr [rbp - 0x30]
	call	lchown
	mov	dword ptr [rbp - 0x1c], eax
	nop	
	jmp	.label_575
.label_591:
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x30]
	call	chown
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
.label_575:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x48], eax
.label_589:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x48]
	mov	dword ptr [rbp - 0x20], eax
	cmp	dword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	jne	.label_583
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	and	eax, 0x49
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_583
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	and	eax, 0xc00
	mov	dword ptr [rbp - 0x28], eax
.label_583:
	jmp	.label_578
.label_578:
	cmp	dword ptr [rbp - 0x20], 0
	jne	.label_587
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x3c]
	xor	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	or	eax, dword ptr [rbp - 0x28]
	mov	rsp, rsp
	and	eax, dword ptr [rbp - 0xe4]
	nop	
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_587
	xor	eax, eax
	mov	ecx, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x3c]
	and	edx, 0xfff
	mov	esi, dword ptr [rbp - 0xe4]
	mov	rsp, rsp
	xor	esi, 0xffffffff
	and	edx, esi
	nop	
	or	ecx, edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x40], ecx
	nop	
	cmp	eax, dword ptr [rbp - 8]
	jg	.label_579
	mov	edi, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x40]
	call	fchmod
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_590
.label_579:
	cmp	dword ptr [rbp - 0x38], -1
	mov	rsp, rsp
	je	.label_593
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x40]
	mov	rbp, rbp
	call	chmod
	mov	dword ptr [rbp - 4], eax
	jmp	.label_577
.label_593:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x40]
	call	chmod
	mov	dword ptr [rbp - 4], eax
.label_577:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
.label_590:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x20], eax
.label_587:
	jmp	.label_584
.label_584:
	lea	rdi, [rdi]
	jmp	.label_580
.label_580:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 8]
	jg	.label_581
	cmp	dword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	jne	.label_588
	mov	edi, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	close
	mov	dword ptr [rbp - 0x20], eax
	jmp	.label_592
.label_588:
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 8]
	call	close
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x44], eax
	mov	dword ptr [rbp - 0x24], ecx
	mov	rsp, rsp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	mov	dword ptr [rax], ecx
.label_592:
	jmp	.label_581
.label_581:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rsp, 0xf0
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409ed0

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	jg	.label_595
	cmp	dword ptr [rbp - 4], 2
	jg	.label_595
	mov	edi, dword ptr [rbp - 4]
	call	dup_safer
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	call	__errno_location
	nop	
	mov	edi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], edi
	mov	edi, dword ptr [rbp - 4]
	call	close
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], edi
	lea	rsi, [rsi]
	call	__errno_location
	nop	
	mov	edi, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], edi
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
.label_595:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409f60

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0x14], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	fileno
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_599
	mov	rdi, qword ptr [rbp - 8]
	call	fclose
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	jmp	.label_597
.label_599:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_596
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	call	fileno
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	mov	rbp, rbp
	call	lseek
	lea	rsi, [rsi]
	cmp	rax, -1
	lea	rsi, [rsi]
	je	.label_598
.label_596:
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_598
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_598:
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_600
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0xc], eax
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], 0xffffffff
.label_600:
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x10], eax
.label_597:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a080

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	je	.label_601
	mov	rdi, qword ptr [rbp - 8]
	call	__freading
	cmp	eax, 0
	jne	.label_602
.label_601:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_603
.label_602:
	mov	rdi, qword ptr [rbp - 8]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
.label_603:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a0f0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rdi]
	and	eax, 0x100
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_604
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, eax
	nop	
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	rpl_fseeko
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_604:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a150

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0xc], edx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rsi, qword ptr [rdi + 8]
	jne	.label_605
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_605
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_605
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	edi, eax
	lea	rdi, [rdi]
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_607
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	jmp	.label_606
.label_607:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rdx + 0x90], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], 0
	lea	rsi, [rsi]
	jmp	.label_606
.label_605:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
.label_606:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a260

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	add	edi, 0xffffd828
	lea	rsi, [rsi]
	sub	edi, 0xb
	mov	dword ptr [rbp - 8], edi
	ja	.label_608
	jmp	.label_610
.label_610:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_609
.label_608:
	lea	rsi, [rsi]
	jmp	.label_609
.label_609:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a2c0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	eax, edi
	lea	rsi, [rsi]
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x10], edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	jb	.label_611
	jmp	.label_612
.label_612:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, -0x41
	lea	rdi, [rdi]
	sub	eax, 0x1a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	jb	.label_611
	nop	
	jmp	.label_613
.label_613:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, -0x61
	sub	eax, 0x19
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], eax
	mov	rbp, rbp
	ja	.label_615
	jmp	.label_611
.label_611:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x15], 1
	lea	rsi, [rsi]
	jmp	.label_614
.label_615:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x15], 0
.label_614:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	movzx	eax, al
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a350
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], edi
	mov	rsp, rsp
	mov	eax, edi
	lea	rsi, [rsi]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 0xc], eax
	jb	.label_616
	nop	
	jmp	.label_617
.label_617:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	add	eax, -0x61
	nop	
	sub	eax, 0x19
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	mov	rsp, rsp
	ja	.label_618
	lea	rdi, [rdi]
	jmp	.label_616
.label_616:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	jmp	.label_619
.label_618:
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
.label_619:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	and	al, 1
	movzx	eax, al
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a3d0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	mov	dword ptr [rbp - 4], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_620
	mov	rsp, rsp
	jmp	.label_622
.label_622:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_621
.label_620:
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 0
.label_621:
	nop	
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a420
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 0x20
	nop	
	mov	byte ptr [rbp - 5], al
	lea	rdi, [rdi]
	je	.label_623
	cmp	dword ptr [rbp - 4], 9
	lea	rsi, [rsi]
	sete	al
	mov	byte ptr [rbp - 5], al
.label_623:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 5]
	mov	rbp, rbp
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a470
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	mov	eax, edi
	mov	rbp, rbp
	sub	edi, 0x20
	mov	dword ptr [rbp - 0x14], eax
	mov	dword ptr [rbp - 0x10], edi
	lea	rsi, [rsi]
	jb	.label_624
	nop	
	jmp	.label_625
.label_625:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0xc], eax
	jne	.label_626
	lea	rsi, [rsi]
	jmp	.label_624
.label_624:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_627
.label_626:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 5], 0
.label_627:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a4e0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], edi
	mov	rsp, rsp
	add	edi, -0x30
	lea	rdi, [rdi]
	sub	edi, 9
	mov	dword ptr [rbp - 4], edi
	nop	
	ja	.label_629
	jmp	.label_628
.label_628:
	mov	byte ptr [rbp - 5], 1
	lea	rdi, [rdi]
	jmp	.label_630
.label_629:
	mov	byte ptr [rbp - 5], 0
.label_630:
	mov	al, byte ptr [rbp - 5]
	mov	rsp, rsp
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a530
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	nop
	push	rbp
	mov	rbp, rsp
	nop	
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 4], edi
	lea	rdi, [rdi]
	ja	.label_631
	lea	rsi, [rsi]
	jmp	.label_633
.label_633:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_632
.label_631:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], 0
.label_632:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a580
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], edi
	mov	rsp, rsp
	ja	.label_634
	jmp	.label_635
.label_635:
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_636
.label_634:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
.label_636:
	mov	al, byte ptr [rbp - 1]
	nop	
	and	al, 1
	movzx	eax, al
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a5d0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	add	edi, -0x20
	nop	
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_637
	jmp	.label_639
.label_639:
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 1
	jmp	.label_638
.label_637:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], 0
.label_638:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a620
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 0x1c], edi
	mov	rsp, rsp
	mov	eax, edi
	add	eax, -0x21
	mov	rsp, rsp
	sub	eax, 0xf
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_641
	jmp	.label_642
.label_642:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	add	eax, -0x3a
	sub	eax, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	jb	.label_641
	nop	
	jmp	.label_645
.label_645:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	eax, -0x5b
	mov	rsp, rsp
	sub	eax, 6
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_641
	jmp	.label_643
.label_643:
	mov	eax, dword ptr [rbp - 4]
	add	eax, -0x7b
	mov	rsp, rsp
	sub	eax, 3
	mov	dword ptr [rbp - 0xc], eax
	ja	.label_640
	mov	rsp, rsp
	jmp	.label_641
.label_641:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_644
.label_640:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], 0
.label_644:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a6d0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	dword ptr [rbp - 0x14], edi
	lea	rdi, [rdi]
	mov	eax, edi
	mov	rbp, rbp
	add	eax, -9
	sub	eax, 5
	mov	dword ptr [rbp - 0xc], edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_646
	mov	rbp, rbp
	jmp	.label_647
.label_647:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	jne	.label_649
	mov	rsp, rsp
	jmp	.label_646
.label_646:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_648
.label_649:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
.label_648:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a740
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	nop
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	dword ptr [rbp - 0xc], edi
	mov	rsp, rsp
	add	edi, -0x41
	nop	
	sub	edi, 0x19
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	ja	.label_650
	jmp	.label_652
.label_652:
	mov	byte ptr [rbp - 5], 1
	nop	
	jmp	.label_651
.label_650:
	mov	byte ptr [rbp - 5], 0
.label_651:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a790
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x14], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_653
	lea	rdi, [rdi]
	jmp	.label_657
.label_657:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	eax, -0x41
	mov	rbp, rbp
	sub	eax, 6
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jb	.label_653
	jmp	.label_654
.label_654:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	add	eax, -0x61
	sub	eax, 5
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_656
	jmp	.label_653
.label_653:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_655
.label_656:
	nop	
	mov	byte ptr [rbp - 9], 0
.label_655:
	nop	
	mov	al, byte ptr [rbp - 9]
	mov	rsp, rsp
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a820

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 0xc], edi
	lea	rsi, [rsi]
	add	edi, -0x41
	lea	rdi, [rdi]
	sub	edi, 0x19
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	ja	.label_658
	jmp	.label_659
.label_659:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x41
	nop	
	add	eax, 0x61
	nop	
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	jmp	.label_660
.label_658:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
.label_660:
	nop	
	mov	eax, dword ptr [rbp - 8]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a870
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 0xc], edi
	mov	rbp, rbp
	add	edi, -0x61
	nop	
	sub	edi, 0x19
	mov	dword ptr [rbp - 8], edi
	ja	.label_661
	mov	rbp, rbp
	jmp	.label_662
.label_662:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	sub	eax, 0x61
	mov	rsp, rsp
	add	eax, 0x41
	nop	
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_663
.label_661:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_663:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a8d0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	xor	esi, esi
	nop	
	mov	edx, 3
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	mov	al, 0
	call	rpl_fcntl
	mov	rsp, rsp
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a910

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x240
	lea	rdi, [rdi]
	test	al, al
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x80], xmm7
	movaps	xmmword ptr [rbp - 0x40], xmm6
	movaps	xmmword ptr [rbp - 0x70], xmm5
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xd0], xmm4
	movaps	xmmword ptr [rbp - 0x230], xmm3
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x1d0], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x1f0], xmm1
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	mov	dword ptr [rbp - 0x20], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], r9
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x210], r8
	mov	qword ptr [rbp - 0x220], rcx
	mov	qword ptr [rbp - 0xa8], rdx
	nop	
	mov	dword ptr [rbp - 0x60], esi
	nop	
	je	.label_668
	mov	rbp, rbp
	movaps	xmm0, xmmword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x170], xmm0
	nop	
	movaps	xmm1, xmmword ptr [rbp - 0x1f0]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x1d0]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x150], xmm2
	lea	rsi, [rsi]
	movaps	xmm3, xmmword ptr [rbp - 0x230]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x140], xmm3
	lea	rsi, [rsi]
	movaps	xmm4, xmmword ptr [rbp - 0xd0]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x130], xmm4
	mov	rbp, rbp
	movaps	xmm5, xmmword ptr [rbp - 0x70]
	movaps	xmmword ptr [rbp - 0x120], xmm5
	mov	rsp, rsp
	movaps	xmm6, xmmword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x110], xmm6
	mov	rsp, rsp
	movaps	xmm7, xmmword ptr [rbp - 0x80]
	movaps	xmmword ptr [rbp - 0x100], xmm7
.label_668:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x178], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x210]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x180], rcx
	mov	rdx, qword ptr [rbp - 0x220]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x188], rdx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x190], rsi
	mov	edi, dword ptr [rbp - 0x60]
	mov	r8d, dword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], r8d
	mov	dword ptr [rbp - 0x1a4], edi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], 0xffffffff
	lea	rsi, [rsi]
	lea	r9, [rbp - 0x1a0]
	mov	qword ptr [rbp - 0x1b0], r9
	lea	r9, [rbp + 0x10]
	mov	qword ptr [rbp - 0x1b8], r9
	mov	dword ptr [rbp - 0x1bc], 0x30
	mov	dword ptr [rbp - 0x1c0], 0x10
	mov	edi, dword ptr [rbp - 0x1a4]
	test	edi, edi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x94], edi
	mov	rsp, rsp
	je	.label_672
	nop	
	jmp	.label_683
.label_683:
	nop	
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x214], eax
	je	.label_684
	jmp	.label_689
.label_672:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x1c0]
	mov	ecx, dword ptr [rbp - 0x1c0]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0xd8], rax
	nop	
	mov	dword ptr [rbp - 0x1f8], ecx
	ja	.label_690
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1f8]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0xd8]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	lea	rsi, [rsi]
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xe8], rcx
	lea	rsi, [rsi]
	jmp	.label_667
.label_690:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rcx, 8
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xe8], rdx
.label_667:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0xe0], ecx
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0xe0]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_685
.label_684:
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x1c0]
	nop	
	mov	ecx, dword ptr [rbp - 0x1c0]
	mov	rsp, rsp
	cmp	ecx, 0x28
	nop	
	mov	qword ptr [rbp - 0x88], rax
	mov	dword ptr [rbp - 0x24], ecx
	mov	rsp, rsp
	ja	.label_665
	mov	eax, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	mov	rsp, rsp
	jmp	.label_680
.label_665:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_680:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], ecx
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0x54]
	call	rpl_fcntl_DUPFD_CLOEXEC
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_685
.label_689:
	mov	eax, dword ptr [rbp - 0x1a4]
	test	eax, eax
	nop	
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	je	.label_673
	nop	
	jmp	.label_682
.label_682:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	je	.label_666
	jmp	.label_687
.label_687:
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	je	.label_673
	nop	
	jmp	.label_693
.label_693:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 3
	nop	
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	je	.label_666
	nop	
	jmp	.label_671
.label_671:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x234], eax
	nop	
	je	.label_673
	lea	rsi, [rsi]
	jmp	.label_679
.label_679:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	sub	eax, 8
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	je	.label_673
	lea	rsi, [rsi]
	jmp	.label_686
.label_686:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_666
	mov	rsp, rsp
	jmp	.label_692
.label_692:
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_673
	jmp	.label_664
.label_664:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	eax, 0xb
	nop	
	mov	dword ptr [rbp - 0x23c], eax
	nop	
	je	.label_666
	lea	rsi, [rsi]
	jmp	.label_677
.label_677:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0x400
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	je	.label_673
	jmp	.label_676
.label_676:
	nop	
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_666
	mov	rsp, rsp
	jmp	.label_688
.label_688:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	sub	eax, 0x402
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	je	.label_673
	lea	rsi, [rsi]
	jmp	.label_694
.label_694:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_673
	nop	
	jmp	.label_675
.label_675:
	nop	
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x240], eax
	lea	rdi, [rdi]
	jne	.label_678
	lea	rdi, [rdi]
	jmp	.label_666
.label_666:
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0x1a4]
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	fcntl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], eax
	lea	rsi, [rsi]
	jmp	.label_669
.label_673:
	nop	
	lea	rax, [rbp - 0x1c0]
	nop	
	mov	ecx, dword ptr [rbp - 0x1c0]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0xf0], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], ecx
	lea	rsi, [rsi]
	ja	.label_691
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xf0]
	add	rcx, qword ptr [rdx + 0x10]
	nop	
	add	eax, 8
	mov	rbp, rbp
	mov	dword ptr [rdx], eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x208], rcx
	mov	rbp, rbp
	jmp	.label_670
.label_691:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x208], rdx
.label_670:
	nop	
	mov	rax, qword ptr [rbp - 0x208]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0xac], ecx
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x1c]
	nop	
	mov	esi, dword ptr [rbp - 0x1a4]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0xac]
	nop	
	mov	al, 0
	call	fcntl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_669
.label_678:
	lea	rax, [rbp - 0x1c0]
	mov	ecx, dword ptr [rbp - 0x1c0]
	lea	rsi, [rsi]
	cmp	ecx, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x238], ecx
	lea	rdi, [rdi]
	ja	.label_674
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x238]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x90], rcx
	mov	rsp, rsp
	jmp	.label_681
.label_674:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x90], rdx
.label_681:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1d8], rax
	nop	
	mov	edi, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x1a4]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x1d8]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x5c], eax
.label_669:
	jmp	.label_685
.label_685:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	add	rsp, 0x240
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40af70

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	nop	
	xor	eax, eax
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 4], esi
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0xc]
	mov	edx, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	esi, eax
	nop	
	mov	al, 0
	mov	rsp, rsp
	call	fcntl
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 8]
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40afc0

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 8], edi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], esi
	lea	rsi, [rsi]
	cmp	eax,  dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]]
	jg	.label_695
	lea	rsi, [rsi]
	mov	esi, 0x406
	nop	
	mov	edi, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	dword ptr [rbp - 0x18], eax
	nop	
	cmp	edx, dword ptr [rbp - 0x18]
	jle	.label_702
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_697
.label_702:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_699
.label_697:
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jl	.label_703
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_703:
	mov	rbp, rbp
	jmp	.label_699
.label_699:
	jmp	.label_700
.label_695:
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
.label_700:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x18]
	jg	.label_696
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	mov	rsp, rsp
	jne	.label_696
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0x18]
	mov	al, 0
	call	fcntl
	nop	
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x14], 0
	jl	.label_701
	mov	esi, 2
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	or	eax, 1
	lea	rdi, [rdi]
	mov	edx, eax
	mov	al, 0
	call	fcntl
	cmp	eax, -1
	jne	.label_698
.label_701:
	lea	rdi, [rdi]
	call	__errno_location
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], ecx
	mov	edi, dword ptr [rbp - 0x18]
	call	close
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], ecx
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 4]
	nop	
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x18], 0xffffffff
.label_698:
	jmp	.label_696
.label_696:
	mov	eax, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b1f0

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section .text
	.align	16
	#Procedure 0x40b200

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
