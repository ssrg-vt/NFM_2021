	.section	.text
	.align	16
	#Procedure 0x401810

	.globl usage
	.type usage, @function
usage:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0x28], edi
	nop	
	cmp	dword ptr [rbp - 0x28], 0
	je	.label_9
	jmp	.label_7
.label_7:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x18], rax
	call	gettext
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [program_name]]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x20], eax
	mov	rbp, rbp
	jmp	.label_8
.label_9:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.1
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rdi, [rdi]
	call	printf
	movabs	rdi, OFFSET FLAT:.str.2
	mov	dword ptr [rbp - 0xc], eax
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.3
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], eax
	nop	
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.4
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.5
	nop	
	mov	dword ptr [rbp - 8], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.6
	mov	dword ptr [rbp - 0x24], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.7
	mov	dword ptr [rbp - 0x10], eax
	call	emit_ancillary_info
.label_8:
	mov	edi, dword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x4019a0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	nop	
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
.label_14:
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x31], cl
	je	.label_11
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rax]
	lea	rsi, [rsi]
	call	strcmp
	cmp	eax, 0
	mov	rsp, rsp
	sete	cl
	xor	cl, 0xff
	nop	
	mov	byte ptr [rbp - 0x31], cl
.label_11:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x31]
	lea	rsi, [rsi]
	test	al, 1
	nop	
	jne	.label_10
	lea	rsi, [rsi]
	jmp	.label_12
.label_10:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_14
.label_12:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	qword ptr [rax + 8], 0
	je	.label_15
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
.label_15:
	movabs	rdi, OFFSET FLAT:.str.35
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rsp, rsp
	call	printf
	mov	edi, 5
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x38], eax
	nop	
	call	setlocale
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_13
	movabs	rsi, OFFSET FLAT:.str.37
	mov	rsp, rsp
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	strncmp
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_13
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.38
	lea	rsi, [rsi]
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x10], eax
.label_13:
	movabs	rdi, OFFSET FLAT:.str.39
	lea	rsi, [rsi]
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.40
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
	mov	rbp, rbp
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.41
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmove	rdx, rsi
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	al, 0
	lea	rsi, [rsi]
	call	printf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], eax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401bb0

	.globl main
	.type main, @function
main:
	nop	
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0xe0
	mov	dword ptr [rbp - 0x88], 0
	mov	dword ptr [rbp - 0x14], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x84], 0
	nop	
	call	is_smack_enabled
	and	al, 1
	mov	byte ptr [rbp - 0xa1], al
	nop	
	mov	qword ptr [rbp - 0xa0], 0
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:.str_0
	nop	
	call	setlocale
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.9
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.9
	mov	qword ptr [rbp - 0x90], rax
	call	textdomain
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:close_stdout
	nop	
	mov	qword ptr [rbp - 0xc0], rax
	mov	rsp, rsp
	call	atexit
	mov	dword ptr [rbp - 0x60], eax
.label_19:
	movabs	rdx, OFFSET FLAT:.str.11
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:longopts
	xor	eax, eax
	nop	
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	getopt_long
	mov	dword ptr [rbp - 0x58], eax
	cmp	eax, -1
	lea	rdi, [rdi]
	je	.label_58
	mov	eax, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x54], eax
	mov	dword ptr [rbp - 0x4c], ecx
	nop	
	je	.label_60
	lea	rsi, [rsi]
	jmp	.label_67
.label_67:
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0xffffff7e
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xac], eax
	nop	
	je	.label_65
	lea	rsi, [rsi]
	jmp	.label_68
.label_68:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x48], eax
	lea	rdi, [rdi]
	je	.label_69
	mov	rbp, rbp
	jmp	.label_39
.label_39:
	mov	eax, dword ptr [rbp - 0x54]
	nop	
	sub	eax, 0x5a
	mov	dword ptr [rbp - 0xcc], eax
	lea	rsi, [rsi]
	je	.label_25
	jmp	.label_30
.label_30:
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	nop	
	sub	eax, 0x61
	mov	dword ptr [rbp - 0x50], eax
	je	.label_32
	lea	rsi, [rsi]
	jmp	.label_52
.label_52:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x67
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	je	.label_36
	lea	rsi, [rsi]
	jmp	.label_42
.label_42:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0xa8], eax
	lea	rdi, [rdi]
	je	.label_44
	jmp	.label_55
.label_55:
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x28], eax
	nop	
	je	.label_24
	jmp	.label_59
.label_59:
	mov	eax, dword ptr [rbp - 0x54]
	nop	
	sub	eax, 0x75
	mov	dword ptr [rbp - 0x98], eax
	je	.label_57
	mov	rsp, rsp
	jmp	.label_49
.label_49:
	mov	eax, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	sub	eax, 0x7a
	mov	dword ptr [rbp - 0x64], eax
	lea	rdi, [rdi]
	je	.label_37
	lea	rdi, [rdi]
	jmp	.label_63
.label_32:
	mov	rbp, rbp
	jmp	.label_26
.label_25:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x84], 0
	mov	rsp, rsp
	jne	.label_66
	movabs	rdi, OFFSET FLAT:.str.12
	call	gettext
	nop	
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_66:
	nop	
	mov	byte ptr [byte ptr [just_context]],  1
	lea	rdi, [rdi]
	jmp	.label_26
.label_36:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [just_group]],  1
	nop	
	jmp	.label_26
.label_44:
	mov	byte ptr [byte ptr [use_name]],  1
	jmp	.label_26
.label_24:
	nop	
	mov	byte ptr [byte ptr [use_real]],  1
	lea	rdi, [rdi]
	jmp	.label_26
.label_57:
	nop	
	mov	byte ptr [byte ptr [just_user]],  1
	jmp	.label_26
.label_37:
	nop	
	mov	byte ptr [byte ptr [opt_zero]],  1
	jmp	.label_26
.label_69:
	mov	byte ptr [byte ptr [just_group_list]],  1
	lea	rdi, [rdi]
	jmp	.label_26
.label_65:
	xor	edi, edi
	nop	
	call	usage
.label_60:
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.7
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str.17
	mov	rsp, rsp
	movabs	r8, OFFSET FLAT:.str.14
	movabs	r9, OFFSET FLAT:.str.15
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	r10,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, r10
	mov	qword ptr [rsp], 0
	mov	al, 0
	call	version_etc
	mov	rbp, rbp
	xor	edi, edi
	call	exit
.label_63:
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_26:
	jmp	.label_19
.label_58:
	mov	eax, dword ptr [rbp - 0x14]
	sub	eax,  dword ptr [dword ptr [optind]]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc8], rcx
	cmp	qword ptr [rbp - 0xc8], 0
	je	.label_21
	mov	rbp, rbp
	test	byte ptr [byte ptr [just_context]],  1
	je	.label_21
	movabs	rdi, OFFSET FLAT:.str.16
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rsp, rsp
	mov	rdx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_21:
	mov	al,  byte ptr [byte ptr [just_user]]
	nop	
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	mov	al,  byte ptr [byte ptr [just_group]]
	and	al, 1
	movzx	edx, al
	add	ecx, edx
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [just_group_list]]
	and	al, 1
	movzx	edx, al
	add	ecx, edx
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [just_context]]
	nop	
	and	al, 1
	lea	rsi, [rsi]
	movzx	edx, al
	lea	rdi, [rdi]
	add	ecx, edx
	lea	rdi, [rdi]
	cmp	ecx, 1
	jle	.label_45
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.17_0
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rbp, rbp
	mov	rdx, rax
	nop	
	mov	al, 0
	nop	
	call	error
.label_45:
	mov	rsp, rsp
	mov	al, 1
	test	byte ptr [byte ptr [just_user]],  1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x91], al
	lea	rsi, [rsi]
	jne	.label_16
	mov	rsp, rsp
	mov	al, 1
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [just_group]],  1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x91], al
	nop	
	jne	.label_16
	mov	al, 1
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [just_group_list]],  1
	mov	byte ptr [rbp - 0x91], al
	mov	rsp, rsp
	jne	.label_16
	mov	al,  byte ptr [byte ptr [just_context]]
	mov	byte ptr [rbp - 0x91], al
.label_16:
	mov	al, byte ptr [rbp - 0x91]
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 0x92], al
	mov	rsp, rsp
	test	byte ptr [rbp - 0x92], 1
	je	.label_51
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [use_real]],  1
	lea	rsi, [rsi]
	jne	.label_46
	mov	rbp, rbp
	test	byte ptr [byte ptr [use_name]],  1
	nop	
	je	.label_51
.label_46:
	movabs	rdi, OFFSET FLAT:.str.18_0
	lea	rsi, [rsi]
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_51:
	test	byte ptr [rbp - 0x92], 1
	lea	rsi, [rsi]
	je	.label_31
	test	byte ptr [byte ptr [opt_zero]],  1
	lea	rsi, [rsi]
	je	.label_31
	movabs	rdi, OFFSET FLAT:.str.19
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rdx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
.label_31:
	cmp	qword ptr [rbp - 0xc8], 0
	mov	rsp, rsp
	jne	.label_17
	nop	
	test	byte ptr [byte ptr [just_context]],  1
	jne	.label_22
	mov	rsp, rsp
	test	byte ptr [rbp - 0x92], 1
	lea	rsi, [rsi]
	je	.label_17
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.20
	call	getenv
	mov	rbp, rbp
	cmp	rax, 0
	jne	.label_17
.label_22:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x84], 0
	lea	rdi, [rdi]
	je	.label_48
	movabs	rdi, OFFSET FLAT:context
	mov	rsp, rsp
	call	getcon
	mov	rsp, rsp
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_48
	test	byte ptr [byte ptr [just_context]],  1
	jne	.label_38
.label_48:
	mov	rbp, rbp
	test	byte ptr [rbp - 0xa1], 1
	je	.label_54
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:context
	call	smack_new_label_from_self
	cmp	rax, 0
	lea	rdi, [rdi]
	jge	.label_54
	test	byte ptr [byte ptr [just_context]],  1
	lea	rdi, [rdi]
	je	.label_54
.label_38:
	movabs	rdi, OFFSET FLAT:.str.21
	nop	
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_54:
	mov	rsp, rsp
	jmp	.label_17
.label_17:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xc8], 1
	jb	.label_20
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, 1
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xc8], 1
	cmova	eax, ecx
	cmp	eax, 0
	setne	dl
	and	dl, 1
	mov	byte ptr [byte ptr [multiple_users]],  dl
	movsxd	rsi,  dword ptr [dword ptr [optind]]
	mov	rsp, rsp
	add	rsi, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xc8], rsi
.label_23:
	movsxd	rax,  dword ptr [dword ptr [optind]]
	cmp	rax, qword ptr [rbp - 0xc8]
	nop	
	jae	.label_41
	nop	
	mov	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [optind]]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	cmp	byte ptr [rax], 0
	je	.label_47
	movabs	rsi, OFFSET FLAT:euid
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rdx, rcx
	mov	qword ptr [rbp - 0x80], rcx
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x80]
	call	parse_user_spec
	lea	rdi, [rdi]
	cmp	rax, 0
	mov	rbp, rbp
	jne	.label_64
	mov	edi,  dword ptr [dword ptr [euid]]
	lea	rsi, [rsi]
	call	getpwuid
	mov	qword ptr [rbp - 0x20], rax
.label_64:
	lea	rsi, [rsi]
	jmp	.label_47
.label_47:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_70
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.22
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xd0], esi
	call	gettext
	lea	rsi, [rsi]
	movsxd	rdi,  dword ptr [dword ptr [optind]]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rdi*8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rsp, rsp
	call	quote
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0xd0]
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rbp, rbp
	call	error
	mov	al,  byte ptr [byte ptr [ok]]
	lea	rsi, [rsi]
	and	al, 1
	movzx	esi, al
	nop	
	and	esi, 0
	cmp	esi, 0
	setne	al
	and	al, 1
	mov	byte ptr [byte ptr [ok]],  al
	jmp	.label_50
.label_70:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax]
	call	xstrdup
	mov	qword ptr [rbp - 0xa0], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x10]
	mov	dword ptr [dword ptr [euid]],  ecx
	mov	dword ptr [dword ptr [ruid]],  ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x14]
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [egid]],  ecx
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rgid]],  ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xa0]
	call	print_stuff
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	call	free
.label_50:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	mov	dword ptr [dword ptr [optind]],  eax
	jmp	.label_23
.label_41:
	mov	rsp, rsp
	jmp	.label_29
.label_20:
	mov	dword ptr [rbp - 0x44], 0xffffffff
	mov	dword ptr [rbp - 0x5c], 0xffffffff
	mov	rsp, rsp
	test	byte ptr [byte ptr [just_user]],  1
	je	.label_33
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [use_real]],  1
	nop	
	jne	.label_40
	lea	rdi, [rdi]
	jmp	.label_43
.label_33:
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [just_group]],  1
	jne	.label_40
	mov	rbp, rbp
	test	byte ptr [byte ptr [just_group_list]],  1
	jne	.label_40
	nop	
	test	byte ptr [byte ptr [just_context]],  1
	mov	rsp, rsp
	jne	.label_40
.label_43:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0
	nop	
	call	geteuid
	mov	rbp, rbp
	mov	dword ptr [dword ptr [euid]],  eax
	nop	
	mov	eax,  dword ptr [dword ptr [euid]]
	cmp	eax, dword ptr [rbp - 0x44]
	jne	.label_62
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0
	mov	rbp, rbp
	je	.label_62
	mov	rsp, rsp
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.23
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x18]
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_62:
	lea	rsi, [rsi]
	jmp	.label_40
.label_40:
	mov	rsp, rsp
	test	byte ptr [byte ptr [just_user]],  1
	lea	rdi, [rdi]
	je	.label_27
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [use_real]],  1
	jne	.label_34
	mov	rsp, rsp
	jmp	.label_35
.label_27:
	test	byte ptr [byte ptr [just_group]],  1
	jne	.label_35
	test	byte ptr [byte ptr [just_group_list]],  1
	mov	rsp, rsp
	jne	.label_34
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [just_context]],  1
	jne	.label_35
.label_34:
	call	__errno_location
	mov	dword ptr [rax], 0
	call	getuid
	mov	dword ptr [dword ptr [ruid]],  eax
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [ruid]]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x44]
	jne	.label_53
	call	__errno_location
	cmp	dword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_53
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.24
	nop	
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x74], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x74]
	mov	rbp, rbp
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
.label_53:
	nop	
	jmp	.label_35
.label_35:
	test	byte ptr [byte ptr [just_user]],  1
	jne	.label_28
	test	byte ptr [byte ptr [just_group]],  1
	lea	rdi, [rdi]
	jne	.label_18
	nop	
	test	byte ptr [byte ptr [just_group_list]],  1
	nop	
	jne	.label_18
	test	byte ptr [byte ptr [just_context]],  1
	lea	rdi, [rdi]
	jne	.label_28
.label_18:
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0
	lea	rdi, [rdi]
	call	getegid
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [egid]],  eax
	mov	eax,  dword ptr [dword ptr [egid]]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	jne	.label_61
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_61
	lea	rsi, [rsi]
	call	__errno_location
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.25
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], esi
	lea	rsi, [rsi]
	call	gettext
	mov	rbp, rbp
	mov	edi, 1
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_61:
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0
	call	getgid
	mov	dword ptr [dword ptr [rgid]],  eax
	mov	eax,  dword ptr [dword ptr [rgid]]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	jne	.label_56
	call	__errno_location
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0
	je	.label_56
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.26
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], esi
	call	gettext
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rbp, rbp
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_56:
	mov	rsp, rsp
	jmp	.label_28
.label_28:
	mov	rdi, qword ptr [rbp - 0xa0]
	call	print_stuff
.label_29:
	mov	eax, 1
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	dl,  byte ptr [byte ptr [ok]]
	mov	rbp, rbp
	test	dl, 1
	cmovne	eax, ecx
	mov	rsp, rsp
	add	rsp, 0xe0
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402770

	.globl is_smack_enabled
	.type is_smack_enabled, @function
is_smack_enabled:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	and	cl, 1
	movzx	eax, cl
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402790

	.globl smack_new_label_from_self
	.type smack_new_label_from_self, @function
smack_new_label_from_self:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	mov	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4027b0

	.globl print_stuff
	.type print_stuff, @function
print_stuff:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	test	byte ptr [byte ptr [just_user]],  1
	je	.label_79
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [use_real]],  1
	nop	
	je	.label_84
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [ruid]]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_77
.label_84:
	mov	eax,  dword ptr [dword ptr [euid]]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
.label_77:
	mov	eax, dword ptr [rbp - 4]
	mov	edi, eax
	call	print_user
	nop	
	jmp	.label_72
.label_79:
	test	byte ptr [byte ptr [just_group]],  1
	je	.label_73
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [use_real]],  1
	je	.label_75
	mov	eax,  dword ptr [dword ptr [rgid]]
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_81
.label_75:
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [egid]]
	mov	dword ptr [rbp - 0x1c], eax
.label_81:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cl,  byte ptr [byte ptr [use_name]]
	and	cl, 1
	mov	rbp, rbp
	mov	edi, eax
	mov	rbp, rbp
	movzx	esi, cl
	call	print_group
	lea	rsi, [rsi]
	and	al, 1
	movzx	esi, al
	mov	rsp, rsp
	mov	al,  byte ptr [byte ptr [ok]]
	and	al, 1
	lea	rdi, [rdi]
	movzx	edi, al
	lea	rsi, [rsi]
	and	edi, esi
	mov	rbp, rbp
	cmp	edi, 0
	setne	al
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [byte ptr [ok]],  al
	lea	rsi, [rsi]
	jmp	.label_76
.label_73:
	test	byte ptr [byte ptr [just_group_list]],  1
	je	.label_78
	mov	eax, 0x20
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi,  dword ptr [dword ptr [ruid]]
	mov	edx,  dword ptr [dword ptr [rgid]]
	lea	rdi, [rdi]
	mov	r8d,  dword ptr [dword ptr [egid]]
	nop	
	mov	r9b,  byte ptr [byte ptr [use_name]]
	mov	r10b,  byte ptr [byte ptr [opt_zero]]
	test	r10b, 1
	cmovne	eax, ecx
	mov	r10b, al
	nop	
	and	r9b, 1
	mov	ecx, r8d
	movzx	r8d, r9b
	lea	rsi, [rsi]
	movsx	r9d, r10b
	call	print_group_list
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [ok]]
	mov	rbp, rbp
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	lea	rsi, [rsi]
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [byte ptr [ok]],  al
	jmp	.label_71
.label_78:
	nop	
	test	byte ptr [byte ptr [just_context]],  1
	nop	
	je	.label_83
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [context]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	jmp	.label_80
.label_83:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	print_full_info
.label_80:
	jmp	.label_71
.label_71:
	jmp	.label_76
.label_76:
	lea	rsi, [rsi]
	jmp	.label_72
.label_72:
	nop	
	test	byte ptr [byte ptr [opt_zero]],  1
	mov	rbp, rbp
	je	.label_74
	test	byte ptr [byte ptr [just_group_list]],  1
	mov	rbp, rbp
	je	.label_74
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [multiple_users]],  1
	lea	rsi, [rsi]
	je	.label_74
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	call	putchar_unlocked
	xor	edi, edi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	call	putchar_unlocked
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], eax
	nop	
	jmp	.label_82
.label_74:
	mov	rsp, rsp
	mov	eax, 0xa
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	dl,  byte ptr [byte ptr [opt_zero]]
	mov	rbp, rbp
	test	dl, 1
	cmovne	eax, ecx
	mov	edi, eax
	call	putchar_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x20], eax
.label_82:
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402a30

	.globl print_user
	.type print_user, @function
print_user:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0x10], edi
	mov	qword ptr [rbp - 0x28], 0
	test	byte ptr [byte ptr [use_name]],  1
	je	.label_86
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	getpwuid
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jne	.label_88
	movabs	rdi, OFFSET FLAT:.str.51
	mov	rbp, rbp
	call	gettext
	mov	rsp, rsp
	lea	rdi, [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 8], rax
	nop	
	call	uidtostr_ptr
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	esi, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	al,  byte ptr [byte ptr [ok]]
	and	al, 1
	movzx	esi, al
	and	esi, 0
	cmp	esi, 0
	lea	rsi, [rsi]
	setne	al
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [byte ptr [ok]],  al
.label_88:
	jmp	.label_86
.label_86:
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	je	.label_85
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_87
.label_85:
	lea	rdi, [rbp - 0x10]
	nop	
	call	uidtostr_ptr
	mov	qword ptr [rbp - 0x20], rax
.label_87:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xc], eax
	lea	rdi, [rdi]
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b50

	.globl print_full_info
	.type print_full_info, @function
print_full_info:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.52
	mov	qword ptr [rbp - 0x30], rdi
	mov	rdi, rax
	lea	rdi, [rdi]
	call	gettext
	nop	
	movabs	rdi, OFFSET FLAT:ruid
	nop	
	mov	qword ptr [rbp - 0x80], rax
	nop	
	call	uidtostr_ptr
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rsi, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	printf
	mov	rbp, rbp
	mov	edi,  dword ptr [dword ptr [ruid]]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x50], eax
	mov	rbp, rbp
	call	getpwuid
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], 0
	je	.label_107
	movabs	rdi, OFFSET FLAT:.str.53
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	mov	al, 0
	call	printf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x8c], eax
.label_107:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.54
	lea	rsi, [rsi]
	call	gettext
	movabs	rdi, OFFSET FLAT:rgid
	mov	qword ptr [rbp - 0x40], rax
	call	gidtostr_ptr
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, rax
	mov	al, 0
	mov	rbp, rbp
	call	printf
	mov	edi,  dword ptr [dword ptr [rgid]]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x90], eax
	mov	rsp, rsp
	call	getgrgid
	mov	qword ptr [rbp - 0x18], rax
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	je	.label_98
	movabs	rdi, OFFSET FLAT:.str.53
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rbp, rbp
	call	printf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x74], eax
.label_98:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [euid]]
	mov	rbp, rbp
	cmp	eax,  dword ptr [dword ptr [ruid]]
	je	.label_93
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.55
	call	gettext
	movabs	rdi, OFFSET FLAT:euid
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	call	uidtostr_ptr
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	edi,  dword ptr [dword ptr [euid]]
	mov	dword ptr [rbp - 0x78], eax
	call	getpwuid
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x60], 0
	mov	rbp, rbp
	je	.label_105
	movabs	rdi, OFFSET FLAT:.str.53
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x98], eax
.label_105:
	jmp	.label_93
.label_93:
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [egid]]
	cmp	eax,  dword ptr [dword ptr [rgid]]
	je	.label_94
	nop	
	movabs	rdi, OFFSET FLAT:.str.56
	lea	rsi, [rsi]
	call	gettext
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:egid
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	nop	
	call	gidtostr_ptr
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	printf
	lea	rsi, [rsi]
	mov	edi,  dword ptr [dword ptr [egid]]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], eax
	mov	rsp, rsp
	call	getgrgid
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_92
	movabs	rdi, OFFSET FLAT:.str.53
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	mov	al, 0
	call	printf
	nop	
	mov	dword ptr [rbp - 0x94], eax
.label_92:
	jmp	.label_94
.label_94:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_101
	nop	
	cmp	qword ptr [rbp - 0x60], 0
	je	.label_103
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rax + 0x14]
	nop	
	mov	dword ptr [rbp - 0x34], ecx
	mov	rsp, rsp
	jmp	.label_106
.label_103:
	mov	eax, 0xffffffff
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], eax
	lea	rsi, [rsi]
	jmp	.label_106
.label_106:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x48], eax
	mov	rbp, rbp
	jmp	.label_91
.label_101:
	mov	eax,  dword ptr [dword ptr [egid]]
	mov	dword ptr [rbp - 0x48], eax
.label_91:
	mov	rbp, rbp
	lea	rdx, [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x48]
	nop	
	call	xgetgroups
	nop	
	mov	dword ptr [rbp - 0x64], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x64], 0
	jge	.label_99
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	je	.label_102
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], esi
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x88], rax
	call	quote
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x54]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rcx, rax
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	jmp	.label_96
.label_102:
	mov	rbp, rbp
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.1_0
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x9c], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x9c]
	mov	rbp, rbp
	mov	rdx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_96:
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [ok]]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	and	ecx, 0
	nop	
	cmp	ecx, 0
	nop	
	setne	al
	and	al, 1
	mov	byte ptr [byte ptr [ok]],  al
	jmp	.label_97
.label_99:
	cmp	dword ptr [rbp - 0x64], 0
	jle	.label_95
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.59
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x44], eax
.label_95:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0
.label_90:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	cmp	eax, dword ptr [rbp - 0x64]
	jge	.label_104
	cmp	dword ptr [rbp - 4], 0
	jle	.label_108
	mov	edi, 0x2c
	lea	rsi, [rsi]
	call	putchar_unlocked
	nop	
	mov	dword ptr [rbp - 8], eax
.label_108:
	movsxd	rax, dword ptr [rbp - 4]
	shl	rax, 2
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x70]
	mov	rdi, rax
	call	gidtostr_ptr
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	movsxd	rsi, dword ptr [rbp - 4]
	mov	rdi, qword ptr [rbp - 0x70]
	nop	
	mov	edi, dword ptr [rdi + rsi*4]
	mov	dword ptr [rbp - 0x38], eax
	lea	rdi, [rdi]
	call	getgrgid
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	je	.label_100
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.53
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x58], eax
.label_100:
	jmp	.label_89
.label_89:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_90
.label_104:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [context]],  0
	lea	rsi, [rsi]
	je	.label_97
	movabs	rdi, OFFSET FLAT:.str.60
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [context]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	printf
	nop	
	mov	dword ptr [rbp - 0xc], eax
.label_97:
	lea	rdi, [rdi]
	add	rsp, 0xa0
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403090

	.globl uidtostr_ptr
	.type uidtostr_ptr, @function
uidtostr_ptr:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	movabs	rsi, OFFSET FLAT:uidtostr_ptr.buf
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rdi]
	mov	edi, eax
	call	umaxtostr
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4030d0

	.globl gidtostr_ptr
	.type gidtostr_ptr, @function
gidtostr_ptr:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:gidtostr_ptr.buf
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rdi]
	mov	edi, eax
	call	umaxtostr
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x403110

	.globl print_group_list
	.type print_group_list, @function
print_group_list:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x70
	nop	
	mov	al, r9b
	mov	r10b, r8b
	mov	qword ptr [rbp - 0x28], rdi
	mov	dword ptr [rbp - 0x34], esi
	mov	dword ptr [rbp - 0x30], edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x44], ecx
	nop	
	and	r10b, 1
	mov	byte ptr [rbp - 9], r10b
	mov	byte ptr [rbp - 0x11], al
	mov	byte ptr [rbp - 0x29], 1
	nop	
	mov	qword ptr [rbp - 0x40], 0
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	je	.label_115
	mov	edi, dword ptr [rbp - 0x34]
	call	getpwuid
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	mov	rsp, rsp
	jne	.label_118
	nop	
	mov	byte ptr [rbp - 0x29], 0
.label_118:
	mov	rbp, rbp
	jmp	.label_115
.label_115:
	nop	
	mov	edi, dword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	esi, al
	call	print_group
	test	al, 1
	jne	.label_116
	mov	byte ptr [rbp - 0x29], 0
.label_116:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x44]
	cmp	eax, dword ptr [rbp - 0x30]
	je	.label_117
	lea	rsi, [rsi]
	movsx	edi, byte ptr [rbp - 0x11]
	call	putchar_unlocked
	mov	edi, dword ptr [rbp - 0x44]
	mov	cl, byte ptr [rbp - 9]
	and	cl, 1
	movzx	esi, cl
	mov	dword ptr [rbp - 0x50], eax
	call	print_group
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_114
	mov	byte ptr [rbp - 0x29], 0
.label_114:
	mov	rsp, rsp
	jmp	.label_117
.label_117:
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	cmp	qword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x70], rdi
	lea	rdi, [rdi]
	je	.label_120
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x14]
	mov	dword ptr [rbp - 0x54], ecx
	lea	rsi, [rsi]
	jmp	.label_124
.label_120:
	nop	
	mov	eax, dword ptr [rbp - 0x44]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], eax
.label_124:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0x60]
	nop	
	mov	rdi, qword ptr [rbp - 0x70]
	mov	esi, eax
	call	xgetgroups
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], eax
	nop	
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_122
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	je	.label_112
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x48], esi
	nop	
	call	gettext
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	call	quote
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rsp, rsp
	jmp	.label_113
.label_112:
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.1_0
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x4c], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x4c]
	mov	rdx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
.label_113:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x61], 0
	jmp	.label_110
.label_122:
	mov	dword ptr [rbp - 8], 0
.label_109:
	nop	
	mov	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 0x10]
	jge	.label_121
	movsxd	rax, dword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x60]
	mov	edx, dword ptr [rcx + rax*4]
	cmp	edx, dword ptr [rbp - 0x30]
	je	.label_111
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rcx + rax*4]
	cmp	edx, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	je	.label_111
	nop	
	movsx	edi, byte ptr [rbp - 0x11]
	lea	rsi, [rsi]
	call	putchar_unlocked
	movsxd	rcx, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	edi, dword ptr [rdx + rcx*4]
	mov	sil, byte ptr [rbp - 9]
	mov	rbp, rbp
	and	sil, 1
	mov	rsp, rsp
	movzx	esi, sil
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	call	print_group
	lea	rsi, [rsi]
	test	al, 1
	nop	
	jne	.label_119
	mov	byte ptr [rbp - 0x29], 0
.label_119:
	mov	rbp, rbp
	jmp	.label_111
.label_111:
	nop	
	jmp	.label_123
.label_123:
	mov	eax, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	jmp	.label_109
.label_121:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdi, rax
	call	free
	mov	cl, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x61], cl
.label_110:
	mov	al, byte ptr [rbp - 0x61]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	lea	rsi, [rsi]
	add	rsp, 0x70
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4033d0

	.globl print_group
	.type print_group, @function
print_group:
	nop	
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	lea	rsi, [rsi]
	mov	al, sil
	mov	dword ptr [rbp - 0x28], edi
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0
	mov	byte ptr [rbp - 0x31], 1
	mov	rbp, rbp
	test	byte ptr [rbp - 0x11], 1
	mov	rsp, rsp
	je	.label_126
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x28]
	call	getgrgid
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	nop	
	jne	.label_127
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.2_0
	mov	rbp, rbp
	call	gettext
	xor	ecx, ecx
	nop	
	mov	edx, dword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	edi, edx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	edi, ecx
	nop	
	mov	esi, ecx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x31], 0
.label_127:
	jmp	.label_126
.label_126:
	cmp	qword ptr [rbp - 8], 0
	je	.label_125
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_128
.label_125:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x28]
	call	gidtostr_ptr_0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
.label_128:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	call	fputs_unlocked
	mov	rsp, rsp
	mov	cl, byte ptr [rbp - 0x31]
	mov	rsp, rsp
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], eax
	mov	eax, edx
	add	rsp, 0x40
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4034e0

	.globl gidtostr_ptr_0
	.type gidtostr_ptr_0, @function
gidtostr_ptr_0:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	movabs	rsi, OFFSET FLAT:gidtostr_ptr.buf_0
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	eax, dword ptr [rdi]
	mov	edi, eax
	call	umaxtostr
	nop	
	add	rsp, 0x10
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x403520
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
	.section	.text
	.align	16
	#Procedure 0x403550
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
	.section	.text
	.align	16
	#Procedure 0x403580

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
	je	.label_129
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_130
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_129
.label_130:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_2
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_133
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
	movabs	rdx, OFFSET FLAT:.str.1_1
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_131
.label_133:
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_3
	mov	esi, dword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_131:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_129:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_132
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_132:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4036b0

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rsi, 0x14
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	byte ptr [rsi], 0
	cmp	qword ptr [rbp - 0x20], 0
	jae	.label_134
	jmp	.label_137
.label_137:
	lea	rsi, [rsi]
	mov	eax, 0x30
	mov	rbp, rbp
	mov	ecx, eax
	mov	eax, 0xa
	mov	edx, eax
	mov	rax, qword ptr [rbp - 0x20]
	xor	esi, esi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edx, esi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	div	rdi
	lea	rdi, [rdi]
	sub	rcx, rdx
	mov	r8b, cl
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	mov	byte ptr [rcx - 1], r8b
	mov	eax, 0xa
	nop	
	mov	ecx, eax
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	xor	edx, edx
	nop	
	div	rcx
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_137
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, -1
	mov	qword ptr [rbp - 8], rcx
	nop	
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_136
.label_134:
	jmp	.label_135
.label_135:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x20]
	xor	edx, edx
	mov	rsp, rsp
	div	rcx
	add	rdx, 0x30
	mov	sil, dl
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, rcx
	lea	rsi, [rsi]
	add	rdx, -1
	mov	qword ptr [rbp - 8], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x20]
	xor	edx, edx
	div	rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	nop	
	jne	.label_135
	jmp	.label_136
.label_136:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4037f0

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
	jne	.label_140
	movabs	rdi, OFFSET FLAT:.str_4
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	call	abort
.label_140:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_138
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_142
.label_138:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_142:
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
	jl	.label_141
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_2
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
	jne	.label_141
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
	jne	.label_139
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_139:
	jmp	.label_141
.label_141:
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
	.section	.text
	.align	16
	#Procedure 0x403970
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
	je	.label_144
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_143
.label_144:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_143
.label_143:
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
	.section	.text
	.align	16
	#Procedure 0x403a20
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
	je	.label_145
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_146
.label_145:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_146
.label_146:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a80
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
	je	.label_147
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_148
.label_147:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_148
.label_148:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ae0

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
	je	.label_149
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jmp	.label_150
.label_149:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_150
.label_150:
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
	.section	.text
	.align	16
	#Procedure 0x403be0
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
	jne	.label_151
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
.label_151:
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
	.section	.text
	.align	16
	#Procedure 0x403c40

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
	jne	.label_152
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
.label_152:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_154
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_153
.label_154:
	call	abort
.label_153:
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
	.section	.text
	.align	16
	#Procedure 0x403ce0
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
	je	.label_155
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_156
.label_155:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_156
.label_156:
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
	.section	.text
	.align	16
	#Procedure 0x403de0

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
.label_169:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0x88], rcx
	mov	qword ptr [rbp - 0x130], rdx
	ja	.label_300
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_308]]
	jmp	rcx
.label_709:
	mov	dword ptr [rbp - 0x58], 5
	mov	byte ptr [rbp - 0x3e], 1
.label_708:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_314
	jmp	.label_357
.label_357:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_319
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x22
.label_319:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_314
.label_314:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	jmp	.label_191
.label_710:
	nop	
	mov	byte ptr [rbp - 0x89], 1
	nop	
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_191
.label_711:
	cmp	dword ptr [rbp - 0x58], 0xa
	je	.label_336
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
.label_336:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_187
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x108], rax
.label_177:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_160
	jmp	.label_161
.label_161:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_162
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rdx + rax], cl
.label_162:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_173
.label_173:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_177
.label_160:
	mov	rbp, rbp
	jmp	.label_187
.label_187:
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
	jmp	.label_191
.label_706:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x89], 1
.label_705:
	mov	byte ptr [rbp - 0x3e], 1
.label_707:
	nop	
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_204
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
.label_204:
	jmp	.label_208
.label_208:
	mov	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_209
	jmp	.label_213
.label_213:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_249
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_249:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_209
.label_209:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	mov	rsp, rsp
	jmp	.label_191
.label_704:
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_191
.label_300:
	call	abort
.label_191:
	mov	qword ptr [rbp - 0xd8], 0
.label_242:
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_235
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
	jmp	.label_237
.label_235:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], edx
.label_237:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_256
	mov	rbp, rbp
	jmp	.label_353
.label_256:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa6], 0
	nop	
	mov	byte ptr [rbp - 0x3f], 0
	mov	byte ptr [rbp - 0x91], 0
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_168
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	je	.label_168
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_168
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x68], -1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jne	.label_279
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xd0]
	jae	.label_279
	mov	rdi, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_291
.label_279:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xc8], rax
.label_291:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_168
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
	jne	.label_168
	nop	
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	je	.label_312
	jmp	.label_179
.label_312:
	nop	
	mov	byte ptr [rbp - 0xa6], 1
.label_168:
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
	ja	.label_317
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_166]]
	nop	
	jmp	rcx
.label_717:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	je	.label_328
	mov	rsp, rsp
	jmp	.label_332
.label_332:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_334
	jmp	.label_179
.label_334:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3f], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_234
	mov	rbp, rbp
	test	byte ptr [rbp - 0x42], 1
	mov	rbp, rbp
	jne	.label_234
	nop	
	jmp	.label_340
.label_340:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_343
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_343:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_352
.label_352:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_157
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_157:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_164
.label_164:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_170
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_170:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_234:
	lea	rsi, [rsi]
	jmp	.label_182
.label_182:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_184
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_184:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_221
.label_221:
	cmp	dword ptr [rbp - 0x58], 2
	je	.label_200
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_200
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x150]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_200
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_200
	nop	
	jmp	.label_220
.label_220:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_222
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x30
.label_222:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_346
.label_346:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_171
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_171:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_200
.label_200:
	mov	byte ptr [rbp - 0x3d], 0x30
	nop	
	jmp	.label_243
.label_328:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_262
	mov	rbp, rbp
	jmp	.label_238
.label_262:
	jmp	.label_243
.label_243:
	jmp	.label_183
.label_728:
	mov	eax, dword ptr [rbp - 0x58]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0x78], eax
	nop	
	mov	dword ptr [rbp - 0x90], ecx
	mov	rsp, rsp
	je	.label_254
	mov	rbp, rbp
	jmp	.label_261
.label_261:
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb4], eax
	lea	rsi, [rsi]
	je	.label_265
	jmp	.label_271
.label_254:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_273
	jmp	.label_179
.label_273:
	jmp	.label_180
.label_265:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 4
	cmp	eax, 0
	je	.label_215
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	jae	.label_215
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_215
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
	je	.label_188
	nop	
	jmp	.label_297
.label_297:
	nop	
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	jb	.label_188
	jmp	.label_302
.label_302:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x144]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_188
	jmp	.label_309
.label_309:
	mov	eax, dword ptr [rbp - 0x144]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x128], eax
	je	.label_188
	jmp	.label_292
.label_292:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0xf4], eax
	lea	rdi, [rdi]
	ja	.label_320
	jmp	.label_188
.label_188:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_321
	jmp	.label_179
.label_321:
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
	jae	.label_348
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_348:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_338
.label_338:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_341
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_341:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_349
.label_349:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_355
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_355:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_347
.label_347:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_218
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_218:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_158
.label_320:
	jmp	.label_158
.label_158:
	jmp	.label_215
.label_215:
	jmp	.label_180
.label_271:
	jmp	.label_180
.label_180:
	jmp	.label_183
.label_718:
	mov	byte ptr [rbp - 0xb6], 0x61
	jmp	.label_186
.label_719:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb6], 0x62
	jmp	.label_186
.label_723:
	mov	byte ptr [rbp - 0xb6], 0x66
	lea	rdi, [rdi]
	jmp	.label_186
.label_721:
	mov	byte ptr [rbp - 0xb6], 0x6e
	mov	rbp, rbp
	jmp	.label_172
.label_724:
	mov	byte ptr [rbp - 0xb6], 0x72
	mov	rbp, rbp
	jmp	.label_172
.label_720:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb6], 0x74
	jmp	.label_172
.label_722:
	mov	byte ptr [rbp - 0xb6], 0x76
	jmp	.label_186
.label_729:
	mov	al, byte ptr [rbp - 0x3d]
	nop	
	mov	byte ptr [rbp - 0xb6], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_229
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_211
	nop	
	jmp	.label_179
.label_211:
	lea	rsi, [rsi]
	jmp	.label_190
.label_229:
	test	byte ptr [rbp - 0x89], 1
	je	.label_216
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_216
	nop	
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rbp, rbp
	je	.label_216
	jmp	.label_190
.label_216:
	jmp	.label_172
.label_172:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	jne	.label_227
	test	byte ptr [rbp - 0x3e], 1
	je	.label_227
	jmp	.label_179
.label_227:
	mov	rsp, rsp
	jmp	.label_186
.label_186:
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_232
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb6]
	mov	byte ptr [rbp - 0x3d], al
	jmp	.label_236
.label_232:
	jmp	.label_183
.label_730:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_244
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x150]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_248
	jmp	.label_253
.label_244:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 1
	je	.label_248
.label_253:
	nop	
	jmp	.label_183
.label_248:
	jmp	.label_257
.label_257:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rbp, rbp
	je	.label_258
	lea	rsi, [rsi]
	jmp	.label_183
.label_258:
	nop	
	jmp	.label_268
.label_268:
	mov	byte ptr [rbp - 0x91], 1
.label_725:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_270
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_270
	jmp	.label_179
.label_270:
	lea	rsi, [rsi]
	jmp	.label_183
.label_727:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa5], 1
	mov	byte ptr [rbp - 0x91], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_276
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_281
	jmp	.label_179
.label_281:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_282
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x140], 0
	lea	rdi, [rdi]
	jne	.label_282
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x140], rax
	mov	qword ptr [rbp - 0x28], 0
.label_282:
	jmp	.label_294
.label_294:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_295
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_295:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_299
.label_299:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	jae	.label_305
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_305:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_313
.label_313:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_316
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_316:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_276:
	lea	rsi, [rsi]
	jmp	.label_183
.label_726:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 1
	jmp	.label_183
.label_317:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xb5], 1
	je	.label_329
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
	jmp	.label_195
.label_329:
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
	jne	.label_354
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x150]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
.label_354:
	jmp	.label_163
.label_163:
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
	jne	.label_181
	jmp	.label_194
.label_181:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], -1
	jne	.label_189
	mov	byte ptr [rbp - 0x40], 0
	jmp	.label_194
.label_189:
	nop	
	cmp	qword ptr [rbp - 0x10], -2
	jne	.label_356
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_217:
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
	jae	.label_175
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0x110]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x41], sil
.label_175:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_214
	jmp	.label_293
.label_214:
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_217
.label_293:
	jmp	.label_194
.label_356:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_225
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_225
	mov	qword ptr [rbp - 0xe8], 1
.label_275:
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_228
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
	jb	.label_231
	jmp	.label_251
.label_251:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x148], eax
	je	.label_231
	jmp	.label_255
.label_255:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	je	.label_231
	jmp	.label_264
.label_264:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x48], eax
	jne	.label_266
	mov	rsp, rsp
	jmp	.label_231
.label_231:
	mov	rsp, rsp
	jmp	.label_179
.label_266:
	jmp	.label_274
.label_274:
	mov	rsp, rsp
	jmp	.label_277
.label_277:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe8]
	add	rax, 1
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_275
.label_228:
	mov	rbp, rbp
	jmp	.label_225
.label_225:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x74]
	call	iswprint
	cmp	eax, 0
	jne	.label_267
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_267:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_284
.label_284:
	lea	rsi, [rsi]
	jmp	.label_287
.label_287:
	jmp	.label_289
.label_289:
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
	jne	.label_163
.label_194:
	jmp	.label_195
.label_195:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x40]
	and	dl, 1
	mov	byte ptr [rbp - 0x91], dl
	cmp	rcx, qword ptr [rbp - 0x110]
	nop	
	jb	.label_298
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_307
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	mov	rsp, rsp
	jne	.label_307
.label_298:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x110]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_286:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	nop	
	je	.label_318
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	jne	.label_318
	jmp	.label_322
.label_322:
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_323
	jmp	.label_179
.label_323:
	mov	byte ptr [rbp - 0x3f], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_325
	test	byte ptr [rbp - 0x42], 1
	jne	.label_325
	lea	rdi, [rdi]
	jmp	.label_330
.label_330:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_331
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_331:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_337
.label_337:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_283
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x24
.label_283:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_350
.label_350:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_339
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_339:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_325:
	jmp	.label_165
.label_165:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_167
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_167:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_192
.label_192:
	jmp	.label_176
.label_176:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_178
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
.label_178:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_197
.label_197:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_201
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
.label_201:
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
	jmp	.label_210
.label_318:
	test	byte ptr [rbp - 0xa6], 1
	lea	rsi, [rsi]
	je	.label_219
	lea	rdi, [rdi]
	jmp	.label_223
.label_223:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_326
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x5c
.label_326:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa6], 0
.label_219:
	nop	
	jmp	.label_210
.label_210:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xd8]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_233
	jmp	.label_241
.label_233:
	lea	rsi, [rsi]
	jmp	.label_245
.label_245:
	test	byte ptr [rbp - 0x42], 1
	je	.label_247
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_247
	lea	rsi, [rsi]
	jmp	.label_252
.label_252:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_296
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_296:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_260
.label_260:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_269
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_269:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_247:
	nop	
	jmp	.label_278
.label_278:
	mov	rsp, rsp
	jmp	.label_246
.label_246:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_280
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x3d]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_280:
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
	jmp	.label_286
.label_241:
	mov	rsp, rsp
	jmp	.label_190
.label_307:
	lea	rsi, [rsi]
	jmp	.label_183
.label_183:
	test	byte ptr [rbp - 0x89], 1
	mov	rbp, rbp
	je	.label_203
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_303
.label_203:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_306
.label_303:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x100], 0
	nop	
	je	.label_306
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
	jne	.label_310
.label_306:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xa6], 1
	lea	rdi, [rdi]
	jne	.label_310
	mov	rsp, rsp
	jmp	.label_190
.label_310:
	nop	
	jmp	.label_236
.label_236:
	jmp	.label_327
.label_327:
	test	byte ptr [rbp - 0x3e], 1
	mov	rbp, rbp
	je	.label_207
	jmp	.label_179
.label_207:
	mov	byte ptr [rbp - 0x3f], 1
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_205
	test	byte ptr [rbp - 0x42], 1
	lea	rdi, [rdi]
	jne	.label_205
	lea	rdi, [rdi]
	jmp	.label_239
.label_239:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_240
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_240:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_345
.label_345:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_351
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_351:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_159
.label_159:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_198
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_198:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_205:
	jmp	.label_344
.label_344:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_174
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_174:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_185
.label_185:
	nop	
	jmp	.label_190
.label_190:
	jmp	.label_193
.label_193:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x42], 1
	je	.label_196
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_196
	lea	rdi, [rdi]
	jmp	.label_199
.label_199:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_202
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_202:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_206
.label_206:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_212
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_212:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_196:
	jmp	.label_224
.label_224:
	nop	
	jmp	.label_226
.label_226:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_335
	mov	al, byte ptr [rbp - 0x3d]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_335:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x91], 1
	jne	.label_230
	mov	byte ptr [rbp - 0xb7], 0
.label_230:
	mov	rbp, rbp
	jmp	.label_238
.label_238:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_242
.label_353:
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	jne	.label_250
	cmp	dword ptr [rbp - 0x58], 2
	nop	
	jne	.label_250
	mov	rbp, rbp
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_250
	nop	
	jmp	.label_179
.label_250:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_263
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_263
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xa5], 1
	je	.label_263
	test	byte ptr [rbp - 0xb7], 1
	je	.label_272
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
	jmp	.label_288
.label_272:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jne	.label_290
	cmp	qword ptr [rbp - 0x140], 0
	lea	rsi, [rsi]
	je	.label_290
	nop	
	mov	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], 0
	jmp	.label_169
.label_290:
	jmp	.label_301
.label_301:
	mov	rbp, rbp
	jmp	.label_263
.label_263:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x108], 0
	je	.label_304
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_304
	mov	rbp, rbp
	jmp	.label_259
.label_259:
	mov	rax, qword ptr [rbp - 0x108]
	cmp	byte ptr [rax], 0
	je	.label_311
	lea	rdi, [rdi]
	jmp	.label_285
.label_285:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_315
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_315:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_324
.label_324:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_259
.label_311:
	jmp	.label_304
.label_304:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_333
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0
.label_333:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_288
.label_179:
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_342
	mov	rsp, rsp
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_342
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], 4
.label_342:
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
.label_288:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	add	rsp, 0x168
	pop	rbx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x405880
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
	.section	.text
	.align	16
	#Procedure 0x4058f0

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
	je	.label_358
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_359
.label_358:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_359
.label_359:
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
	je	.label_360
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
.label_360:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rsp, 0x78
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x405ac0
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
.label_365:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_364
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
	jmp	.label_365
.label_364:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_363
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_361]],  rax
.label_363:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_362
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_362:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405bd0

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
	.section	.text
	.align	16
	#Procedure 0x405c20

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
	jge	.label_367
	call	abort
.label_367:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 0x64]
	jg	.label_370
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
	jge	.label_371
	call	xalloc_die
.label_371:
	test	byte ptr [rbp - 0x51], 1
	je	.label_372
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_368
.label_372:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_368:
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
	je	.label_366
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_361]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_366:
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
.label_370:
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
	ja	.label_373
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
	je	.label_369
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	free
.label_369:
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
.label_373:
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
	.section	.text
	.align	16
	#Procedure 0x405f50

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
	.section	.text
	.align	16
	#Procedure 0x405f90
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
	.section	.text
	.align	16
	#Procedure 0x405fc0
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
	.section	.text
	.align	16
	#Procedure 0x406000

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
	.section	.text
	.align	16
	#Procedure 0x406060

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
	jne	.label_374
	call	abort
.label_374:
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
	.section	.text
	.align	16
	#Procedure 0x406100

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
	.section	.text
	.align	16
	#Procedure 0x406170
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
	.section	.text
	.align	16
	#Procedure 0x4061b0
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
	.section	.text
	.align	16
	#Procedure 0x4061f0

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
	.section	.text
	.align	16
	#Procedure 0x4062a0

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
	.section	.text
	.align	16
	#Procedure 0x4062e0

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
	.section	.text
	.align	16
	#Procedure 0x406310
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
	.section	.text
	.align	16
	#Procedure 0x406350
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
	#Procedure 0x406430

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
	.section	.text
	.align	16
	#Procedure 0x406480

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
	.section	.text
	.align	16
	#Procedure 0x406520
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
	.section	.text
	.align	16
	#Procedure 0x406570
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
	.section	.text
	.align	16
	#Procedure 0x4065d0

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
	.section	.text
	.align	16
	#Procedure 0x406610
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
	.section	.text
	.align	16
	#Procedure 0x406650

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
	.section	.text
	.align	16
	#Procedure 0x406690

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
	.section	.text
	.align	16
	#Procedure 0x4066d0

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
	je	.label_378
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_375
.label_378:
	call	locale_charset
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.13
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_376
	movabs	rax, OFFSET FLAT:.str.15_0
	movabs	rcx, OFFSET FLAT:.str.14_0
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_375
.label_376:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_377
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
	jmp	.label_375
.label_377:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
.label_375:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406810

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
	.section	.text
	.align	16
	#Procedure 0x406840
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
	#Procedure 0x406850
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
	.section	.text
	.align	16
	#Procedure 0x406880
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
	.section	.text
	.align	16
	#Procedure 0x4068c0
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
	#Procedure 0x406900
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
	.section	.text
	.align	16
	#Procedure 0x406940
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
	.section	.text
	.align	16
	#Procedure 0x406980
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
	.section	.text
	.align	16
	#Procedure 0x4069c0
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
	.section	.text
	.align	16
	#Procedure 0x406a00
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
	.section	.text
	.align	16
	#Procedure 0x406a40
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
	.section	.text
	.align	16
	#Procedure 0x406a80
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
	.section	.text
	.align	16
	#Procedure 0x406ac0
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
	.section	.text
	.align	16
	#Procedure 0x406b00
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
	.section	.text
	.align	16
	#Procedure 0x406b40
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
	.section	.text
	.align	16
	#Procedure 0x406b90
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
	#Procedure 0x406bc0
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
	.section	.text
	.align	16
	#Procedure 0x406c00

	.globl parse_user_spec
	.type parse_user_spec, @function
parse_user_spec:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x40], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	mov	qword ptr [rbp - 0x18], r8
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_379
	mov	esi, 0x3a
	mov	rdi, qword ptr [rbp - 8]
	call	strchr
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	jmp	.label_382
.label_379:
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rcx
	nop	
	jmp	.label_382
.label_382:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	mov	r8, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	r9, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	parse_with_separator
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_381
	cmp	qword ptr [rbp - 0x30], 0
	nop	
	jne	.label_381
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_381
	lea	rdi, [rdi]
	mov	esi, 0x2e
	mov	rdi, qword ptr [rbp - 8]
	call	strchr
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	nop	
	je	.label_380
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9, qword ptr [rbp - 0x18]
	call	parse_with_separator
	cmp	rax, 0
	jne	.label_380
	mov	qword ptr [rbp - 0x20], 0
.label_380:
	jmp	.label_381
.label_381:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rsp, 0x50
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x406d30

	.globl parse_with_separator
	.type parse_with_separator, @function
parse_with_separator:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0xe0
	mov	qword ptr [rbp - 0x50], rdi
	mov	qword ptr [rbp - 0x28], rsi
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], rcx
	mov	qword ptr [rbp - 0xd0], r8
	mov	qword ptr [rbp - 0x20], r9
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc0], 0
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rcx]
	nop	
	mov	dword ptr [rbp - 0xc], eax
	cmp	qword ptr [rbp - 0x88], 0
	nop	
	je	.label_395
	mov	rax, qword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9c], ecx
	lea	rsi, [rsi]
	jmp	.label_386
.label_395:
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_386
.label_386:
	mov	eax, dword ptr [rbp - 0x9c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc8], eax
	mov	qword ptr [rbp - 0x60], 0
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_403
	mov	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	mov	qword ptr [rax], 0
.label_403:
	cmp	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	je	.label_415
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rax], 0
.label_415:
	mov	qword ptr [rbp - 0x80], 0
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_385
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	byte ptr [rax], 0
	nop	
	je	.label_393
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x50]
	call	xstrdup
	mov	qword ptr [rbp - 0x80], rax
.label_393:
	jmp	.label_394
.label_385:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x50]
	sub	rax, rcx
	mov	qword ptr [rbp - 0xb8], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xb8], 0
	je	.label_406
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	add	rax, 1
	lea	rdi, [rdi]
	mov	rsi, rax
	call	xmemdup
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	byte ptr [rsi + rax], 0
.label_406:
	lea	rdi, [rdi]
	jmp	.label_394
.label_394:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_396
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax + 1]
	mov	rsp, rsp
	cmp	ecx, 0
	jne	.label_405
.label_396:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rcx
	jmp	.label_410
.label_405:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x98], rax
.label_410:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x98]
	nop	
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 0x80], 0
	lea	rsi, [rsi]
	je	.label_383
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2b
	lea	rdi, [rdi]
	jne	.label_391
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rcx
	lea	rdi, [rdi]
	jmp	.label_398
.label_391:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	nop	
	call	getpwnam
	mov	qword ptr [rbp - 0x58], rax
.label_398:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x68], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	jne	.label_409
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x28], 0
	mov	byte ptr [rbp - 0xc1], cl
	nop	
	je	.label_417
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	sete	al
	nop	
	mov	byte ptr [rbp - 0xc1], al
.label_417:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0xc1]
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0x71], al
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x71], 1
	je	.label_392
	mov	rax,  qword ptr [word ptr [parse_with_separator.E_bad_spec]]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_412
.label_392:
	xor	eax, eax
	mov	esi, eax
	mov	rsp, rsp
	mov	edx, 0xa
	lea	rcx, [rbp - 0xa8]
	movabs	r8, OFFSET FLAT:.str_0
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	call	xstrtoul
	nop	
	cmp	eax, 0
	jne	.label_384
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
	nop	
	mov	ecx, eax
	cmp	qword ptr [rbp - 0xa8], rcx
	lea	rdi, [rdi]
	ja	.label_384
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa8]
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	ecx, -1
	nop	
	je	.label_384
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], ecx
	lea	rsi, [rsi]
	jmp	.label_401
.label_384:
	mov	rax,  qword ptr [word ptr [parse_with_separator.E_invalid_user]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
.label_401:
	jmp	.label_412
.label_412:
	mov	rbp, rbp
	jmp	.label_399
.label_409:
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x10]
	nop	
	mov	dword ptr [rbp - 0xc], ecx
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	jne	.label_397
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	je	.label_397
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rax + 0x14]
	mov	dword ptr [rbp - 0xc8], ecx
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0xc8]
	call	getgrgid
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rax
	cmp	qword ptr [rbp - 0x70], 0
	mov	rsp, rsp
	je	.label_414
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_413
.label_414:
	mov	rbp, rbp
	lea	rsi, [rbp - 0x40]
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc8]
	nop	
	mov	edi, eax
	mov	rbp, rbp
	call	umaxtostr
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rax
.label_413:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x90]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	xstrdup
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], rax
	lea	rsi, [rsi]
	call	endgrent
.label_397:
	mov	rbp, rbp
	jmp	.label_399
.label_399:
	call	endpwent
.label_383:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	je	.label_407
	cmp	qword ptr [rbp - 0x60], 0
	mov	rbp, rbp
	jne	.label_407
	nop	
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x2b
	jne	.label_411
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rcx
	jmp	.label_416
.label_411:
	mov	rdi, qword ptr [rbp - 8]
	call	getgrnam
	mov	qword ptr [rbp - 0x48], rax
.label_416:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
	cmp	qword ptr [rbp - 0x70], 0
	jne	.label_387
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, eax
	lea	rdi, [rdi]
	mov	edx, 0xa
	mov	rbp, rbp
	lea	rcx, [rbp - 0xb0]
	movabs	r8, OFFSET FLAT:.str_0
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	call	xstrtoul
	cmp	eax, 0
	jne	.label_408
	mov	eax, 0xffffffff
	lea	rsi, [rsi]
	mov	ecx, eax
	cmp	qword ptr [rbp - 0xb0], rcx
	lea	rsi, [rsi]
	ja	.label_408
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb0]
	nop	
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	ecx, -1
	je	.label_408
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	ecx, eax
	mov	dword ptr [rbp - 0xc8], ecx
	jmp	.label_418
.label_408:
	nop	
	mov	rax,  qword ptr [word ptr [parse_with_separator.E_invalid_group]]
	mov	qword ptr [rbp - 0x60], rax
.label_418:
	jmp	.label_400
.label_387:
	mov	rax, qword ptr [rbp - 0x70]
	mov	ecx, dword ptr [rax + 0x10]
	mov	dword ptr [rbp - 0xc8], ecx
.label_400:
	mov	rsp, rsp
	call	endgrent
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	xstrdup
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc0], rax
.label_407:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_402
	mov	eax, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx], eax
	cmp	qword ptr [rbp - 0x88], 0
	lea	rdi, [rdi]
	je	.label_419
	mov	eax, dword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0x88]
	nop	
	mov	dword ptr [rcx], eax
.label_419:
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_390
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	mov	rcx, qword ptr [rbp - 0xd0]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], 0
.label_390:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_404
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc0], 0
.label_404:
	jmp	.label_402
.label_402:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	call	free
	mov	rdi, qword ptr [rbp - 0xc0]
	call	free
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x60], 0
	lea	rsi, [rsi]
	je	.label_388
	nop	
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_389
.label_388:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rcx
	jmp	.label_389
.label_389:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	add	rsp, 0xe0
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407370

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
	je	.label_423
	movabs	rsi, OFFSET FLAT:.str_5
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
	jmp	.label_421
.label_423:
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
.label_421:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	eax, OFFSET FLAT:.str.2_2
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
	mov	ecx, OFFSET FLAT:.str.3_0
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
	ja	.label_422
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_424]]
	jmp	rcx
.label_683:
	jmp	.label_420
.label_684:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.4_0
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
	jmp	.label_420
.label_685:
	movabs	rdi, OFFSET FLAT:.str.5_0
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
	jmp	.label_420
.label_686:
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
	jmp	.label_420
.label_687:
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
	jmp	.label_420
.label_688:
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
	jmp	.label_420
.label_689:
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
	jmp	.label_420
.label_690:
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
	jmp	.label_420
.label_691:
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
	jmp	.label_420
.label_692:
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
	jmp	.label_420
.label_422:
	movabs	rdi, OFFSET FLAT:.str.13_0
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
.label_420:
	lea	rdi, [rdi]
	add	rsp, 0x170
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407bb0
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
.label_425:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_426
	mov	rbp, rbp
	jmp	.label_427
.label_427:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_425
.label_426:
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
	.section	.text
	.align	16
	#Procedure 0x407c60

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
.label_429:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x40], 0xa
	mov	byte ptr [rbp - 0x11], cl
	jae	.label_432
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], ecx
	ja	.label_431
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
	jmp	.label_430
.label_431:
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x30], rdx
.label_430:
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
.label_432:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_428
	mov	rsp, rsp
	jmp	.label_433
.label_428:
	jmp	.label_434
.label_434:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_429
.label_433:
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
	.section	.text
	.align	16
	#Procedure 0x407dc0

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
	je	.label_435
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
.label_435:
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
	.section	.text
	.align	16
	#Procedure 0x407f80
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.14_1
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
	.section	.text
	.align	16
	#Procedure 0x408030
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
	jae	.label_436
	mov	rbp, rbp
	call	xalloc_die
.label_436:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408090

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
	jne	.label_437
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_437
	lea	rdi, [rdi]
	call	xalloc_die
.label_437:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4080f0
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
	jae	.label_438
	mov	rsp, rsp
	call	xalloc_die
.label_438:
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
	.section	.text
	.align	16
	#Procedure 0x408170

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
	jne	.label_439
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_439
	mov	rdi, qword ptr [rbp - 8]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_441
.label_439:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	realloc
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jne	.label_440
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_440
	lea	rsi, [rsi]
	call	xalloc_die
.label_440:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
.label_441:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x408220

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
	jne	.label_442
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_444
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
.label_444:
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
	jae	.label_446
	call	xalloc_die
.label_446:
	lea	rsi, [rsi]
	jmp	.label_445
.label_442:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_443
	call	xalloc_die
.label_443:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_445:
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
	.section	.text
	.align	16
	#Procedure 0x408350

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
	.section	.text
	.align	16
	#Procedure 0x408380
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
	.section	.text
	.align	16
	#Procedure 0x4083c0
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
	.section	.text
	.align	16
	#Procedure 0x408410
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
	jb	.label_447
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	calloc
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_448
.label_447:
	lea	rsi, [rsi]
	call	xalloc_die
.label_448:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408480

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
	.section	.text
	.align	16
	#Procedure 0x4084d0

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
	.section	.text
	.align	16
	#Procedure 0x408530

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
	movabs	rdx, OFFSET FLAT:.str_3
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x408590

	.globl xgetgroups
	.type xgetgroups, @function
xgetgroups:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 8], esi
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	esi, dword ptr [rbp - 8]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	call	mgetgroups
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], -1
	mov	rbp, rbp
	jne	.label_449
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_449
	call	xalloc_die
.label_449:
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408600

	.globl xstrtoul
	.type xstrtoul, @function
xstrtoul:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x100
	lea	rdi, [rdi]
	xor	eax, eax
	mov	qword ptr [rbp - 0xa0], rdi
	mov	qword ptr [rbp - 0x30], rsi
	mov	dword ptr [rbp - 0xa4], edx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rcx
	nop	
	mov	qword ptr [rbp - 0xe0], r8
	mov	dword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0xa4]
	jg	.label_450
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xa4], 0x24
	mov	rsp, rsp
	jg	.label_450
	nop	
	jmp	.label_482
.label_450:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str_6
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.1_5
	mov	edx, 0x54
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoul
	call	__assert_fail
.label_482:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_485
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], rax
	mov	rbp, rbp
	jmp	.label_502
.label_485:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_502
.label_502:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0xd8], rax
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x89], cl
.label_503:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x89]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rcx
	call	__ctype_b_loc
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	lea	rsi, [rsi]
	cmp	edx, 0
	je	.label_464
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x89], dl
	jmp	.label_503
.label_464:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x89]
	nop	
	cmp	eax, 0x2d
	mov	rsp, rsp
	jne	.label_486
	mov	dword ptr [rbp - 0xc8], 4
	nop	
	jmp	.label_457
.label_486:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xd8]
	mov	edx, dword ptr [rbp - 0xa4]
	call	strtoul
	mov	qword ptr [rbp - 0x70], rax
	nop	
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0xa0]
	nop	
	jne	.label_504
	cmp	qword ptr [rbp - 0xe0], 0
	mov	rsp, rsp
	je	.label_460
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0
	je	.label_460
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rax]
	lea	rdi, [rdi]
	call	strchr
	cmp	rax, 0
	je	.label_460
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], 1
	nop	
	jmp	.label_465
.label_460:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc8], 4
	jmp	.label_457
.label_465:
	jmp	.label_467
.label_504:
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0
	je	.label_479
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 0x22
	nop	
	je	.label_484
	mov	dword ptr [rbp - 0xc8], 4
	jmp	.label_457
.label_484:
	mov	dword ptr [rbp - 0x18], 1
.label_479:
	mov	rbp, rbp
	jmp	.label_467
.label_467:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xe0], 0
	jne	.label_498
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0xc8], edx
	nop	
	jmp	.label_457
.label_498:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0
	je	.label_497
	mov	dword ptr [rbp - 0x90], 0x400
	nop	
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	mov	rbp, rbp
	cmp	rax, 0
	jne	.label_461
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x18]
	nop	
	or	edx, 2
	mov	dword ptr [rbp - 0xc8], edx
	jmp	.label_457
.label_461:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	lea	rdi, [rdi]
	sub	edx, 0x45
	mov	dword ptr [rbp - 0xa8], ecx
	mov	dword ptr [rbp - 0x98], edx
	lea	rdi, [rdi]
	je	.label_453
	lea	rdi, [rdi]
	jmp	.label_483
.label_483:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x47
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xf0], eax
	je	.label_453
	nop	
	jmp	.label_493
.label_493:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x4b
	nop	
	mov	dword ptr [rbp - 0x74], eax
	nop	
	je	.label_453
	lea	rsi, [rsi]
	jmp	.label_501
.label_501:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_453
	jmp	.label_506
.label_506:
	mov	eax, dword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	sub	eax, 0x50
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	je	.label_453
	jmp	.label_510
.label_510:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa8]
	mov	rbp, rbp
	sub	eax, 0x54
	nop	
	mov	dword ptr [rbp - 0xcc], eax
	lea	rdi, [rdi]
	je	.label_453
	jmp	.label_451
.label_451:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa8]
	mov	rbp, rbp
	add	eax, -0x59
	sub	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x78], eax
	jb	.label_453
	mov	rsp, rsp
	jmp	.label_513
.label_513:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x50], eax
	lea	rsi, [rsi]
	je	.label_453
	lea	rsi, [rsi]
	jmp	.label_463
.label_463:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x6b
	nop	
	mov	dword ptr [rbp - 0xf8], eax
	je	.label_453
	nop	
	jmp	.label_487
.label_487:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa8]
	nop	
	sub	eax, 0x6d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x40], eax
	nop	
	je	.label_453
	jmp	.label_496
.label_496:
	nop	
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x74
	nop	
	mov	dword ptr [rbp - 0xb0], eax
	jne	.label_481
	jmp	.label_453
.label_453:
	lea	rsi, [rsi]
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0xe0]
	nop	
	call	strchr
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_494
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	sub	edx, 0x42
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x80], ecx
	nop	
	mov	dword ptr [rbp - 0xf4], edx
	mov	rbp, rbp
	je	.label_468
	mov	rsp, rsp
	jmp	.label_515
.label_515:
	mov	eax, dword ptr [rbp - 0x80]
	mov	rbp, rbp
	sub	eax, 0x44
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_468
	jmp	.label_459
.label_459:
	mov	eax, dword ptr [rbp - 0x80]
	mov	rsp, rsp
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xd0], eax
	jne	.label_462
	lea	rsi, [rsi]
	jmp	.label_471
.label_471:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	nop	
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	mov	rbp, rbp
	jne	.label_473
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_473:
	jmp	.label_462
.label_468:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x90], 0x3e8
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_462:
	lea	rsi, [rsi]
	jmp	.label_494
.label_494:
	nop	
	jmp	.label_481
.label_481:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x42
	nop	
	mov	dword ptr [rbp - 0xec], ecx
	mov	dword ptr [rbp - 4], edx
	nop	
	je	.label_499
	mov	rbp, rbp
	jmp	.label_505
.label_505:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xec]
	sub	eax, 0x45
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb4], eax
	mov	rsp, rsp
	je	.label_507
	lea	rdi, [rdi]
	jmp	.label_511
.label_511:
	mov	eax, dword ptr [rbp - 0xec]
	sub	eax, 0x47
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xac], eax
	je	.label_480
	jmp	.label_456
.label_456:
	nop	
	mov	eax, dword ptr [rbp - 0xec]
	lea	rsi, [rsi]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_452
	lea	rsi, [rsi]
	jmp	.label_508
.label_508:
	mov	eax, dword ptr [rbp - 0xec]
	lea	rsi, [rsi]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x94], eax
	je	.label_466
	mov	rsp, rsp
	jmp	.label_474
.label_474:
	mov	eax, dword ptr [rbp - 0xec]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	je	.label_476
	jmp	.label_470
.label_470:
	nop	
	mov	eax, dword ptr [rbp - 0xec]
	mov	rbp, rbp
	sub	eax, 0x54
	nop	
	mov	dword ptr [rbp - 0x28], eax
	je	.label_455
	jmp	.label_491
.label_491:
	mov	eax, dword ptr [rbp - 0xec]
	lea	rdi, [rdi]
	sub	eax, 0x59
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x20], eax
	je	.label_492
	nop	
	jmp	.label_495
.label_495:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xec]
	lea	rsi, [rsi]
	sub	eax, 0x5a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], eax
	je	.label_500
	jmp	.label_477
.label_477:
	mov	eax, dword ptr [rbp - 0xec]
	sub	eax, 0x62
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], eax
	je	.label_488
	jmp	.label_512
.label_512:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xec]
	mov	rbp, rbp
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xe8], eax
	mov	rbp, rbp
	je	.label_509
	nop	
	jmp	.label_514
.label_514:
	mov	eax, dword ptr [rbp - 0xec]
	sub	eax, 0x67
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88], eax
	lea	rdi, [rdi]
	je	.label_480
	mov	rbp, rbp
	jmp	.label_458
.label_458:
	mov	eax, dword ptr [rbp - 0xec]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	je	.label_452
	lea	rsi, [rsi]
	jmp	.label_469
.label_469:
	nop	
	mov	eax, dword ptr [rbp - 0xec]
	nop	
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	je	.label_466
	nop	
	jmp	.label_478
.label_478:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xec]
	mov	rbp, rbp
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x4c], eax
	je	.label_455
	mov	rbp, rbp
	jmp	.label_489
.label_489:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xec]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_490
	jmp	.label_472
.label_488:
	nop	
	lea	rdi, [rbp - 0x70]
	mov	rbp, rbp
	mov	esi, 0x200
	call	bkm_scale
	nop	
	mov	dword ptr [rbp - 0x60], eax
	mov	rsp, rsp
	jmp	.label_454
.label_499:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x70]
	mov	esi, 0x400
	call	bkm_scale
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x60], eax
	lea	rdi, [rdi]
	jmp	.label_454
.label_509:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x60], 0
	jmp	.label_454
.label_507:
	lea	rdi, [rbp - 0x70]
	mov	edx, 6
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x90]
	call	bkm_scale_by_power
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_454
.label_480:
	nop	
	lea	rdi, [rbp - 0x70]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x90]
	call	bkm_scale_by_power
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x60], eax
	lea	rdi, [rdi]
	jmp	.label_454
.label_452:
	lea	rdi, [rbp - 0x70]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x90]
	call	bkm_scale_by_power
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x60], eax
	mov	rbp, rbp
	jmp	.label_454
.label_466:
	lea	rdi, [rbp - 0x70]
	lea	rsi, [rsi]
	mov	edx, 2
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x90]
	call	bkm_scale_by_power
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_454
.label_476:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x70]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	call	bkm_scale_by_power
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_454
.label_455:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x70]
	lea	rdi, [rdi]
	mov	edx, 4
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x90]
	call	bkm_scale_by_power
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_454
.label_490:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x70]
	lea	rdi, [rdi]
	mov	esi, 2
	mov	rbp, rbp
	call	bkm_scale
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_454
.label_492:
	lea	rdi, [rbp - 0x70]
	nop	
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	call	bkm_scale_by_power
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_454
.label_500:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x70]
	mov	edx, 7
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x90]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_454
.label_472:
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	nop	
	mov	edx, dword ptr [rbp - 0x18]
	or	edx, 2
	nop	
	mov	dword ptr [rbp - 0xc8], edx
	mov	rbp, rbp
	jmp	.label_457
.label_454:
	mov	eax, dword ptr [rbp - 0x60]
	nop	
	or	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x18], eax
	mov	eax, dword ptr [rbp - 0x64]
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rcx]
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_475
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	or	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18], eax
.label_475:
	lea	rsi, [rsi]
	jmp	.label_497
.label_497:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc8], edx
.label_457:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc8]
	mov	rbp, rbp
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408fd0

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 4], esi
	movsxd	rdi, dword ptr [rbp - 4]
	xor	esi, esi
	mov	rbp, rbp
	mov	edx, esi
	div	rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdi]
	mov	rbp, rbp
	jae	.label_516
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 0x14], 1
	lea	rsi, [rsi]
	jmp	.label_517
.label_516:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 4]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 0x14], 0
.label_517:
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409050

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 4], edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], 0
.label_519:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rbp, rbp
	add	ecx, -1
	mov	dword ptr [rbp - 4], ecx
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_518
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 8]
	call	bkm_scale
	lea	rdi, [rdi]
	or	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_519
.label_518:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4090c0

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
	jne	.label_520
	lea	rax, [rbp - 0x14]
	mov	qword ptr [rbp - 0x10], rax
.label_520:
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
	ja	.label_521
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_521
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_521
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
	jmp	.label_522
.label_521:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_522:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4091b0

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
	jne	.label_523
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_526
.label_523:
	mov	rbp, rbp
	jmp	.label_524
.label_524:
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
	jne	.label_525
	jmp	.label_527
.label_525:
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
	je	.label_524
.label_527:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x1a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_526:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4092a0

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
	jne	.label_530
	test	byte ptr [rbp - 0x15], 1
	je	.label_529
	test	byte ptr [rbp - 0x16], 1
	lea	rsi, [rsi]
	jne	.label_530
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_529
.label_530:
	nop	
	test	byte ptr [rbp - 0x15], 1
	mov	rsp, rsp
	jne	.label_528
	call	__errno_location
	mov	dword ptr [rax], 0
.label_528:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0xffffffff
	jmp	.label_531
.label_529:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], 0
.label_531:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409380

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
	je	.label_533
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_7
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_534
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:.str.1_6
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_532
.label_534:
	mov	byte ptr [rbp - 0xd], 0
.label_532:
	jmp	.label_533
.label_533:
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
	.section	.text
	.align	16
	#Procedure 0x409420

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
	jne	.label_536
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 8], rax
.label_536:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_535
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.1_7
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_535:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4094a0

	.globl mgetgroups
	.type mgetgroups, @function
mgetgroups:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x50], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], esi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rdx
	cmp	qword ptr [rbp - 0x50], 0
	lea	rsi, [rsi]
	je	.label_543
	xor	eax, eax
	mov	rbp, rbp
	mov	edi, eax
	mov	dword ptr [rbp - 0x18], 0xa
	lea	rdi, [rdi]
	movsxd	rsi, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	realloc_groupbuf
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_557
	mov	dword ptr [rbp - 0x68], 0xffffffff
	lea	rsi, [rsi]
	jmp	.label_546
.label_557:
	jmp	.label_542
.label_542:
	lea	rcx, [rbp - 0x18]
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x1c], eax
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x54]
	nop	
	mov	rdx, qword ptr [rbp - 8]
	call	getgrouplist
	nop	
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xc], 0
	mov	rbp, rbp
	jge	.label_545
	mov	eax, dword ptr [rbp - 0x1c]
	cmp	eax, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	jne	.label_545
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	shl	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
.label_545:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	movsxd	rsi, dword ptr [rbp - 0x18]
	call	realloc_groupbuf
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	jne	.label_558
	nop	
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x58], ecx
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	free
	nop	
	mov	ecx, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], ecx
	nop	
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x68], 0xffffffff
	jmp	.label_546
.label_558:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rcx
	cmp	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	jg	.label_551
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x68], edx
	jmp	.label_546
.label_551:
	mov	rsp, rsp
	jmp	.label_542
.label_543:
	cmp	qword ptr [rbp - 0x50], 0
	lea	rsi, [rsi]
	je	.label_561
	lea	rsi, [rsi]
	xor	edi, edi
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x50]
	mov	ecx, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	call	getugroups
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	jmp	.label_544
.label_561:
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, eax
	lea	rdi, [rdi]
	call	getgroups
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
.label_544:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
	nop	
	cmp	dword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	jge	.label_553
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0x26
	jne	.label_540
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edi, eax
	lea	rsi, [rsi]
	mov	eax, 1
	lea	rsi, [rsi]
	mov	esi, eax
	call	realloc_groupbuf
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_540
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x54]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	dword ptr [rax], edx
	cmp	dword ptr [rbp - 0x54], -1
	nop	
	setne	sil
	and	sil, 1
	mov	rsp, rsp
	movzx	edx, sil
	mov	dword ptr [rbp - 0x68], edx
	lea	rdi, [rdi]
	jmp	.label_546
.label_540:
	mov	dword ptr [rbp - 0x68], 0xffffffff
	jmp	.label_546
.label_553:
	cmp	dword ptr [rbp - 0x18], 0
	je	.label_559
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_538
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x54], -1
	mov	rsp, rsp
	je	.label_538
.label_559:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x18]
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], eax
.label_538:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, eax
	movsxd	rsi, dword ptr [rbp - 0x18]
	call	realloc_groupbuf
	nop	
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jne	.label_550
	nop	
	mov	dword ptr [rbp - 0x68], 0xffffffff
	mov	rbp, rbp
	jmp	.label_546
.label_550:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_556
	mov	edi, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	ecx, dword ptr [rbp - 0x54]
	call	getugroups
	mov	dword ptr [rbp - 0x64], eax
	nop	
	jmp	.label_537
.label_556:
	mov	eax, dword ptr [rbp - 0x18]
	cmp	dword ptr [rbp - 0x54], -1
	lea	rdi, [rdi]
	setne	cl
	nop	
	and	cl, 1
	nop	
	movzx	edx, cl
	sub	eax, edx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x54], -1
	setne	cl
	lea	rdi, [rdi]
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	movsxd	rdi, edx
	lea	rsi, [rsi]
	shl	rdi, 2
	add	rsi, rdi
	lea	rdi, [rdi]
	mov	edi, eax
	nop	
	call	getgroups
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x64], eax
.label_537:
	mov	eax, dword ptr [rbp - 0x64]
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	nop	
	jge	.label_555
	mov	rbp, rbp
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x60], ecx
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x60]
	mov	dword ptr [rbp - 0x3c], ecx
	nop	
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x3c]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x68], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_546
.label_555:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_548
	nop	
	cmp	dword ptr [rbp - 0x54], -1
	je	.label_548
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
.label_548:
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	qword ptr [rdx], rcx
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0xc]
	nop	
	jge	.label_549
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], ecx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	movsxd	rdx, dword ptr [rbp - 0xc]
	shl	rdx, 2
	mov	rbp, rbp
	add	rax, rdx
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rax, 4
	mov	qword ptr [rbp - 0x30], rax
.label_547:
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_541
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, dword ptr [rbp - 0x10]
	je	.label_552
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	jne	.label_554
.label_552:
	mov	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	add	eax, -1
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	jmp	.label_560
.label_554:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rdx, rax
	mov	rbp, rbp
	add	rdx, 4
	mov	qword ptr [rbp - 8], rdx
	mov	rsp, rsp
	mov	dword ptr [rax + 4], ecx
.label_560:
	mov	rsp, rsp
	jmp	.label_539
.label_539:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 4
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_547
.label_541:
	jmp	.label_549
.label_549:
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x68], eax
.label_546:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x68]
	add	rsp, 0x70
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409970

	.globl realloc_groupbuf
	.type realloc_groupbuf, @function
realloc_groupbuf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	movabs	rax, 0x1fffffffffffffff
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_562
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	jmp	.label_563
.label_562:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	shl	rcx, 2
	mov	rdi, rax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
.label_563:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409a00

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
	jge	.label_567
	mov	rdi, qword ptr [rbp - 8]
	call	fclose
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	jmp	.label_565
.label_567:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_564
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
	je	.label_566
.label_564:
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_566
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_566:
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_568
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
.label_568:
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x10], eax
.label_565:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409b20

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
	je	.label_569
	mov	rdi, qword ptr [rbp - 8]
	call	__freading
	cmp	eax, 0
	jne	.label_570
.label_569:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_571
.label_570:
	mov	rdi, qword ptr [rbp - 8]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
.label_571:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x409b90

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
	je	.label_572
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
.label_572:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x409bf0

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
	jne	.label_573
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_573
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_573
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
	jne	.label_574
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	jmp	.label_575
.label_574:
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
	jmp	.label_575
.label_573:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
.label_575:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x409d00

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
	ja	.label_576
	jmp	.label_577
.label_577:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_578
.label_576:
	lea	rsi, [rsi]
	jmp	.label_578
.label_578:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409d60
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_579
	jmp	.label_582
.label_582:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_579
	jmp	.label_580
.label_580:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_581
	jmp	.label_579
.label_579:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_583
.label_581:
	mov	byte ptr [rbp - 1], 0
.label_583:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409dd0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_584
	jmp	.label_587
.label_587:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_585
	jmp	.label_584
.label_584:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_586
.label_585:
	mov	byte ptr [rbp - 1], 0
.label_586:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409e20
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_588
	jmp	.label_589
.label_589:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_590
.label_588:
	mov	byte ptr [rbp - 1], 0
.label_590:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409e50
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_591
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_591:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409e80
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	sub	edi, 0x20
	mov	dword ptr [rbp - 0xc], eax
	mov	dword ptr [rbp - 0x10], edi
	jb	.label_592
	jmp	.label_594
.label_594:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_595
	jmp	.label_592
.label_592:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_593
.label_595:
	mov	byte ptr [rbp - 1], 0
.label_593:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409ed0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_596
	jmp	.label_598
.label_598:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_597
.label_596:
	mov	byte ptr [rbp - 1], 0
.label_597:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409f10
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_599
	jmp	.label_601
.label_601:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_600
.label_599:
	mov	byte ptr [rbp - 1], 0
.label_600:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409f50
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_602
	jmp	.label_604
.label_604:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_603
.label_602:
	mov	byte ptr [rbp - 1], 0
.label_603:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409f90
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_605
	jmp	.label_607
.label_607:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_606
.label_605:
	mov	byte ptr [rbp - 1], 0
.label_606:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409fd0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x21
	sub	eax, 0xf
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_608
	jmp	.label_611
.label_611:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x3a
	sub	eax, 7
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_608
	jmp	.label_612
.label_612:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x5b
	sub	eax, 6
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_608
	jmp	.label_610
.label_610:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x7b
	sub	eax, 3
	mov	dword ptr [rbp - 0x1c], eax
	ja	.label_613
	jmp	.label_608
.label_608:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_609
.label_613:
	mov	byte ptr [rbp - 1], 0
.label_609:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a050
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -9
	sub	eax, 5
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_614
	jmp	.label_617
.label_617:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_616
	jmp	.label_614
.label_614:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_615
.label_616:
	mov	byte ptr [rbp - 1], 0
.label_615:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a0a0
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_618
	jmp	.label_620
.label_620:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_619
.label_618:
	mov	byte ptr [rbp - 1], 0
.label_619:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a0e0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_621
	jmp	.label_623
.label_623:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_621
	jmp	.label_622
.label_622:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_624
	jmp	.label_621
.label_621:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_625
.label_624:
	mov	byte ptr [rbp - 1], 0
.label_625:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a150

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_626
	jmp	.label_628
.label_628:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_627
.label_626:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_627:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a190
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_629
	jmp	.label_631
.label_631:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_630
.label_629:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_630:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a1d0

	.globl getugroups
	.type getugroups, @function
getugroups:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x38], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], ecx
	mov	dword ptr [rbp - 0x30], 0
	cmp	dword ptr [rbp - 0x1c], -1
	je	.label_647
	cmp	dword ptr [rbp - 4], 0
	lea	rdi, [rdi]
	je	.label_633
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x38]
	nop	
	mov	dword ptr [rdx + rcx*4], eax
.label_633:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x30]
	add	eax, 1
	nop	
	mov	dword ptr [rbp - 0x30], eax
.label_647:
	lea	rdi, [rdi]
	call	setgrent
.label_644:
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rbp, rbp
	call	getgrent
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_649
	lea	rsi, [rsi]
	jmp	.label_641
.label_649:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x28], rax
.label_639:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	je	.label_648
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax]
	lea	rsi, [rsi]
	call	strcmp
	cmp	eax, 0
	je	.label_635
	jmp	.label_638
.label_635:
	mov	dword ptr [rbp - 0x2c], 0
.label_637:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	jge	.label_634
	nop	
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_636
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	edx, dword ptr [rcx + rax*4]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	edx, dword ptr [rax + 0x10]
	mov	rsp, rsp
	jne	.label_636
	lea	rsi, [rsi]
	jmp	.label_634
.label_636:
	mov	rbp, rbp
	jmp	.label_632
.label_632:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	add	eax, 1
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_637
.label_634:
	mov	eax, dword ptr [rbp - 0x2c]
	cmp	eax, dword ptr [rbp - 0x30]
	mov	rsp, rsp
	jne	.label_640
	cmp	dword ptr [rbp - 4], 0
	je	.label_645
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	jl	.label_646
	nop	
	jmp	.label_642
.label_646:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x10]
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	dword ptr [rdx + rax*4], ecx
.label_645:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x30], 0x7fffffff
	jne	.label_643
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x4b
	jmp	.label_642
.label_643:
	mov	eax, dword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	eax, 1
	mov	dword ptr [rbp - 0x30], eax
.label_640:
	jmp	.label_638
.label_638:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rax, 8
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	nop	
	jmp	.label_639
.label_648:
	nop	
	jmp	.label_644
.label_641:
	nop	
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0
	je	.label_650
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x30], 0xffffffff
.label_650:
	lea	rsi, [rsi]
	jmp	.label_642
.label_642:
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], ecx
	lea	rsi, [rsi]
	call	endgrent
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x20], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x30]
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbp
	ret	
