	.section	.text
	.align	16
	#Procedure 0x4015f0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	mov	dword ptr [rbp - 0x10], edi
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x10], 0
	nop	
	je	.label_9
	jmp	.label_7
.label_7:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x18], rax
	call	gettext
	nop	
	mov	rdx,  qword ptr [word ptr [program_name]]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rax
	mov	al, 0
	mov	rbp, rbp
	call	fprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_8
.label_9:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.1
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	nop	
	call	printf
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.2
	mov	dword ptr [rbp - 4], eax
	nop	
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.3
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.4
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x30], eax
	nop	
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.5
	mov	dword ptr [rbp - 0xc], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.6
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.7
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.8
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.9
	mov	dword ptr [rbp - 0x28], eax
	nop	
	call	emit_ancillary_info
.label_8:
	mov	edi, dword ptr [rbp - 0x10]
	nop	
	call	exit
	nop	
	.section	.text
	.align	16
	#Procedure 0x4017c0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdi
	mov	rdi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x40], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
.label_15:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], cl
	je	.label_13
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x19], cl
.label_13:
	mov	al, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	test	al, 1
	jne	.label_12
	jmp	.label_14
.label_12:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	jmp	.label_15
.label_14:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_11
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x40], rax
.label_11:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.37
	call	gettext
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18
	mov	rdi, rax
	nop	
	mov	al, 0
	mov	rsp, rsp
	call	printf
	mov	edi, 5
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	esi, ecx
	mov	dword ptr [rbp - 0x2c], eax
	call	setlocale
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_10
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.39
	mov	eax, 3
	lea	rdi, [rdi]
	mov	edx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	strncmp
	mov	rsp, rsp
	cmp	eax, 0
	nop	
	je	.label_10
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.40
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
.label_10:
	nop	
	movabs	rdi, OFFSET FLAT:.str.41
	nop	
	call	gettext
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.18
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdi, rax
	nop	
	mov	al, 0
	lea	rsi, [rsi]
	call	printf
	nop	
	movabs	rdi, OFFSET FLAT:.str.42
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.43
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rcx, qword ptr [rbp - 0x28]
	nop	
	cmove	rdx, rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	al, 0
	lea	rsi, [rsi]
	call	printf
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4019d0

	.globl main
	.type main, @function
main:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x190
	nop	
	lea	rax, [rbp - 0x150]
	lea	rcx, [rbp - 0xe0]
	mov	dword ptr [rbp - 0x15c], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa4], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rsi
	mov	qword ptr [rbp - 0x178], rcx
	mov	qword ptr [rbp - 0xe8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rax]
	mov	rsp, rsp
	call	set_program_name
	lea	rdi, [rdi]
	mov	edi, 6
	nop	
	movabs	rsi, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.11
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.12
	mov	qword ptr [rbp - 0x48], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.11
	nop	
	mov	qword ptr [rbp - 0x78], rax
	call	textdomain
	nop	
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x70], rax
	call	atexit
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x20], eax
.label_62:
	movabs	rdx, OFFSET FLAT:.str.13
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:long_options
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 0xa4]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x38]
	call	getopt_long
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x90], eax
	lea	rdi, [rdi]
	cmp	eax, -1
	je	.label_46
	mov	eax, dword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0xf4], eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xfc], ecx
	nop	
	je	.label_49
	lea	rsi, [rsi]
	jmp	.label_95
.label_95:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xf4]
	sub	eax, 0xffffff7e
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x104], eax
	je	.label_55
	lea	rdi, [rdi]
	jmp	.label_58
.label_58:
	mov	eax, dword ptr [rbp - 0xf4]
	sub	eax, 0x41
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x50], eax
	je	.label_61
	mov	rbp, rbp
	jmp	.label_65
.label_65:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xf4]
	sub	eax, 0x43
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x94], eax
	je	.label_68
	mov	rbp, rbp
	jmp	.label_70
.label_70:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xf4]
	sub	eax, 0x63
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x98], eax
	je	.label_68
	mov	rbp, rbp
	jmp	.label_72
.label_72:
	mov	eax, dword ptr [rbp - 0xf4]
	sub	eax, 0x64
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x58], eax
	nop	
	je	.label_74
	jmp	.label_77
.label_77:
	mov	eax, dword ptr [rbp - 0xf4]
	lea	rdi, [rdi]
	sub	eax, 0x73
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x114], eax
	mov	rsp, rsp
	je	.label_78
	jmp	.label_83
.label_83:
	nop	
	mov	eax, dword ptr [rbp - 0xf4]
	sub	eax, 0x74
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], eax
	lea	rdi, [rdi]
	je	.label_87
	lea	rdi, [rdi]
	jmp	.label_92
.label_61:
	mov	edi, 3
	movabs	rsi, OFFSET FLAT:.str_1
	call	setlocale
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str_1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x110], rax
	nop	
	call	setlocale
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa0], rax
	nop	
	jmp	.label_22
.label_68:
	mov	byte ptr [byte ptr [complement]],  1
	jmp	.label_22
.label_74:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [delete]],  1
	jmp	.label_22
.label_78:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [squeeze_repeats]],  1
	lea	rsi, [rsi]
	jmp	.label_22
.label_87:
	mov	byte ptr [byte ptr [truncate_set1]],  1
	mov	rsp, rsp
	jmp	.label_22
.label_55:
	xor	edi, edi
	call	usage
.label_49:
	movabs	rsi, OFFSET FLAT:.str.9
	movabs	rdx, OFFSET FLAT:.str.17
	movabs	r8, OFFSET FLAT:.str.16
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r9d, eax
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	rsp, rsp
	mov	al, 0
	call	version_etc
	xor	edi, edi
	mov	rbp, rbp
	call	exit
.label_92:
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rbp, rbp
	call	usage
.label_22:
	nop	
	jmp	.label_62
.label_46:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax,  dword ptr [dword ptr [optind]]
	nop	
	mov	dword ptr [rbp - 0x158], eax
	nop	
	cmp	dword ptr [rbp - 0x158], 2
	mov	byte ptr [rbp - 0x17d], cl
	lea	rsi, [rsi]
	jne	.label_52
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [delete]]
	xor	al, 0xff
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x17d], al
.label_52:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x17d]
	and	al, 1
	nop	
	mov	byte ptr [byte ptr [translating]],  al
	mov	al,  byte ptr [byte ptr [delete]]
	and	al, 1
	movzx	ecx, al
	mov	al,  byte ptr [byte ptr [squeeze_repeats]]
	and	al, 1
	movzx	edx, al
	mov	rsp, rsp
	cmp	ecx, edx
	lea	rsi, [rsi]
	sete	al
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	mov	rbp, rbp
	add	ecx, 1
	mov	dword ptr [rbp - 0x8c], ecx
	mov	al,  byte ptr [byte ptr [delete]]
	and	al, 1
	movzx	ecx, al
	mov	rsp, rsp
	mov	al,  byte ptr [byte ptr [squeeze_repeats]]
	mov	rbp, rbp
	and	al, 1
	lea	rsi, [rsi]
	movzx	edx, al
	cmp	ecx, edx
	mov	rbp, rbp
	setle	al
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	add	ecx, 1
	mov	dword ptr [rbp - 0x1c], ecx
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x158]
	lea	rdi, [rdi]
	cmp	ecx, dword ptr [rbp - 0x8c]
	mov	rsp, rsp
	jge	.label_60
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x158], 0
	jne	.label_85
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.17_0
	call	gettext
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	lea	rdi, [rdi]
	jmp	.label_16
.label_85:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.18_0
	call	gettext
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0xa4]
	sub	ecx, 1
	lea	rdi, [rdi]
	movsxd	rdi, ecx
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdx + rdi*8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	call	quote
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edi, ecx
	mov	esi, ecx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, rax
	nop	
	mov	al, 0
	mov	rsp, rsp
	call	error
	nop	
	movabs	rcx, OFFSET FLAT:.str.21
	movabs	rdx, OFFSET FLAT:.str.20
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al,  byte ptr [byte ptr [squeeze_repeats]]
	mov	rbp, rbp
	test	al, 1
	cmovne	rcx, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rdi
	nop	
	mov	rdi, rcx
	mov	rsp, rsp
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.19
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rdx, rax
	nop	
	mov	al, 0
	lea	rsi, [rsi]
	call	fprintf
	mov	dword ptr [rbp - 0xa8], eax
.label_16:
	mov	edi, 1
	call	usage
.label_60:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1c]
	cmp	eax, dword ptr [rbp - 0x158]
	jge	.label_50
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.22
	call	gettext
	mov	ecx,  dword ptr [dword ptr [optind]]
	nop	
	add	ecx, dword ptr [rbp - 0x1c]
	movsxd	rdi, ecx
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdx + rdi*8]
	nop	
	mov	qword ptr [rbp - 0x80], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	cmp	dword ptr [rbp - 0x158], 2
	jne	.label_64
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.23
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.19
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rdx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	fprintf
	mov	dword ptr [rbp - 0x2c], eax
.label_64:
	mov	edi, 1
	call	usage
.label_50:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x178]
	call	spec_init
	movsxd	rdi,  dword ptr [dword ptr [optind]]
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + rdi*8]
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	call	parse_str
	test	al, 1
	jne	.label_82
	mov	dword ptr [rbp - 0x15c], 1
	jmp	.label_24
.label_82:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x158], 2
	jne	.label_89
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xe8]
	nop	
	call	spec_init
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	lea	rdi, [rdi]
	movsxd	rdi, eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdi, qword ptr [rcx + rdi*8]
	mov	rsi, qword ptr [rbp - 0xe8]
	nop	
	call	parse_str
	test	al, 1
	nop	
	jne	.label_23
	mov	dword ptr [rbp - 0x15c], 1
	nop	
	jmp	.label_24
.label_23:
	nop	
	jmp	.label_26
.label_89:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe8], 0
.label_26:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x178]
	mov	rsi, qword ptr [rbp - 0xe8]
	lea	rdi, [rdi]
	call	validate
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, eax
	mov	esi, eax
	lea	rdi, [rdi]
	call	xset_binary_mode
	nop	
	mov	edi, 1
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rbp, rbp
	call	xset_binary_mode
	nop	
	mov	esi, 2
	mov	rdi,  qword ptr [word ptr [stdin]]
	mov	rbp, rbp
	call	fadvise
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [squeeze_repeats]],  1
	lea	rdi, [rdi]
	je	.label_31
	cmp	dword ptr [rbp - 0x158], 1
	mov	rbp, rbp
	jne	.label_31
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:in_squeeze_set
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [complement]]
	lea	rsi, [rsi]
	and	al, 1
	movzx	esi, al
	call	set_initialize
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:io_buf
	mov	esi, 0x2000
	movabs	rdx, OFFSET FLAT:plain_read
	mov	rbp, rbp
	call	squeeze_filter
	lea	rsi, [rsi]
	jmp	.label_41
.label_31:
	test	byte ptr [byte ptr [delete]],  1
	mov	rbp, rbp
	je	.label_59
	nop	
	cmp	dword ptr [rbp - 0x158], 1
	lea	rsi, [rsi]
	jne	.label_59
	nop	
	movabs	rdx, OFFSET FLAT:in_delete_set
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x178]
	mov	al,  byte ptr [byte ptr [complement]]
	and	al, 1
	movzx	esi, al
	lea	rsi, [rsi]
	call	set_initialize
.label_28:
	movabs	rdi, OFFSET FLAT:io_buf
	lea	rdi, [rdi]
	mov	eax, 0x2000
	mov	esi, eax
	lea	rdi, [rdi]
	call	read_and_delete
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_73
	jmp	.label_76
.label_73:
	movabs	rdi, OFFSET FLAT:io_buf
	nop	
	mov	eax, 1
	mov	esi, eax
	mov	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	call	fwrite_unlocked
	cmp	rax, qword ptr [rbp - 8]
	je	.label_84
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x100], esi
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	rdx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_84:
	jmp	.label_28
.label_76:
	nop	
	jmp	.label_17
.label_59:
	nop	
	test	byte ptr [byte ptr [squeeze_repeats]],  1
	nop	
	je	.label_19
	test	byte ptr [byte ptr [delete]],  1
	lea	rdi, [rdi]
	je	.label_19
	cmp	dword ptr [rbp - 0x158], 2
	mov	rbp, rbp
	jne	.label_19
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:in_delete_set
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	mov	al,  byte ptr [byte ptr [complement]]
	nop	
	and	al, 1
	mov	rbp, rbp
	movzx	esi, al
	lea	rdi, [rdi]
	call	set_initialize
	mov	rsp, rsp
	xor	esi, esi
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:in_squeeze_set
	mov	rdi, qword ptr [rbp - 0xe8]
	call	set_initialize
	movabs	rdi, OFFSET FLAT:io_buf
	mov	esi, 0x2000
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:read_and_delete
	nop	
	call	squeeze_filter
	mov	rbp, rbp
	jmp	.label_37
.label_19:
	mov	rsp, rsp
	test	byte ptr [byte ptr [translating]],  1
	nop	
	je	.label_35
	test	byte ptr [byte ptr [complement]],  1
	mov	rbp, rbp
	je	.label_48
	xor	esi, esi
	movabs	rax, OFFSET FLAT:in_delete_set
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	set_initialize
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x10], -2
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x154], 0
.label_67:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x154], 0x100
	mov	rbp, rbp
	jge	.label_63
	mov	eax, dword ptr [rbp - 0x154]
	mov	cl, al
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x154]
	mov	byte ptr [byte ptr [+ (rdx * 1) + xlate]],  cl
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x154]
	lea	rsi, [rsi]
	add	eax, 1
	mov	dword ptr [rbp - 0x154], eax
	lea	rdi, [rdi]
	jmp	.label_67
.label_63:
	nop	
	mov	dword ptr [rbp - 0x24], 0
.label_27:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x24], 0x100
	nop	
	jge	.label_21
	movsxd	rax, dword ptr [rbp - 0x24]
	mov	rcx, qword ptr [rbp - 0x10]
	test	byte ptr [rcx + rax], 1
	lea	rsi, [rsi]
	jne	.label_75
	xor	eax, eax
	nop	
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0xe8]
	call	get_next
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x28], -1
	jne	.label_81
	mov	rsp, rsp
	test	byte ptr [byte ptr [truncate_set1]],  1
	lea	rdi, [rdi]
	je	.label_51
.label_81:
	lea	rsi, [rsi]
	jmp	.label_90
.label_51:
	movabs	rdi, OFFSET FLAT:.str.25
	movabs	rsi, OFFSET FLAT:.str.26
	mov	edx, 0x72d
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	call	__assert_fail
.label_90:
	cmp	dword ptr [rbp - 0x28], -1
	jne	.label_18
	mov	rbp, rbp
	jmp	.label_21
.label_18:
	mov	eax, dword ptr [rbp - 0x28]
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x24]
	mov	rsp, rsp
	mov	byte ptr [byte ptr [+ (rdx * 1) + xlate]],  cl
.label_75:
	jmp	.label_25
.label_25:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], eax
	lea	rsi, [rsi]
	jmp	.label_27
.label_21:
	jmp	.label_29
.label_48:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xf8], 0
.label_38:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xf8], 0x100
	mov	rbp, rbp
	jge	.label_32
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xf8]
	mov	cl, al
	nop	
	movsxd	rdx, dword ptr [rbp - 0xf8]
	mov	byte ptr [byte ptr [+ (rdx * 1) + xlate]],  cl
	mov	eax, dword ptr [rbp - 0xf8]
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xf8], eax
	jmp	.label_38
.label_32:
	nop	
	mov	rax, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x10], -2
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], -2
.label_53:
	lea	rsi, [rbp - 0x16c]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	call	get_next
	mov	rsp, rsp
	lea	rsi, [rbp - 0x17c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x184], eax
	mov	rdi, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	call	get_next
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x188], eax
	cmp	dword ptr [rbp - 0x16c], 0
	lea	rsi, [rsi]
	jne	.label_56
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x17c], 1
	jne	.label_56
	mov	dword ptr [rbp - 0x4c], 0
.label_80:
	cmp	dword ptr [rbp - 0x4c], 0x100
	lea	rdi, [rdi]
	jge	.label_66
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xf0], rax
	call	__ctype_b_loc
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x200
	cmp	edx, 0
	lea	rsi, [rsi]
	je	.label_71
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x4c]
	call	toupper
	mov	rbp, rbp
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [+ (rdx * 1) + xlate]],  cl
.label_71:
	nop	
	jmp	.label_79
.label_79:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x4c]
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], eax
	mov	rsp, rsp
	jmp	.label_80
.label_66:
	jmp	.label_45
.label_56:
	nop	
	cmp	dword ptr [rbp - 0x16c], 1
	lea	rsi, [rsi]
	jne	.label_88
	nop	
	cmp	dword ptr [rbp - 0x17c], 0
	lea	rsi, [rsi]
	jne	.label_88
	mov	dword ptr [rbp - 0x54], 0
.label_47:
	nop	
	cmp	dword ptr [rbp - 0x54], 0x100
	jge	.label_96
	nop	
	movsxd	rax, dword ptr [rbp - 0x54]
	mov	qword ptr [rbp - 0x168], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x168]
	lea	rdi, [rdi]
	movzx	edx, word ptr [rax + rcx*2]
	mov	rsp, rsp
	and	edx, 0x100
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_93
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x54]
	call	tolower
	mov	cl, al
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x54]
	mov	byte ptr [byte ptr [+ (rdx * 1) + xlate]],  cl
.label_93:
	mov	rbp, rbp
	jmp	.label_30
.label_30:
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, 1
	nop	
	mov	dword ptr [rbp - 0x54], eax
	lea	rdi, [rdi]
	jmp	.label_47
.label_96:
	jmp	.label_34
.label_88:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x184], -1
	nop	
	je	.label_36
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x188], -1
	lea	rdi, [rdi]
	jne	.label_40
.label_36:
	nop	
	jmp	.label_44
.label_40:
	mov	eax, dword ptr [rbp - 0x188]
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x184]
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [+ (rdx * 1) + xlate]],  cl
.label_34:
	jmp	.label_45
.label_45:
	cmp	dword ptr [rbp - 0x17c], 2
	je	.label_42
	mov	rdi, qword ptr [rbp - 0x178]
	call	skip_construct
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xe8]
	call	skip_construct
.label_42:
	lea	rsi, [rsi]
	jmp	.label_53
.label_44:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x184], -1
	mov	rbp, rbp
	je	.label_54
	test	byte ptr [byte ptr [truncate_set1]],  1
	lea	rsi, [rsi]
	je	.label_94
.label_54:
	jmp	.label_57
.label_94:
	movabs	rdi, OFFSET FLAT:.str.27
	movabs	rsi, OFFSET FLAT:.str.26
	nop	
	mov	edx, 0x762
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	mov	rbp, rbp
	call	__assert_fail
.label_57:
	jmp	.label_29
.label_29:
	test	byte ptr [byte ptr [squeeze_repeats]],  1
	lea	rdi, [rdi]
	je	.label_69
	mov	rbp, rbp
	xor	esi, esi
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:in_squeeze_set
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xe8]
	call	set_initialize
	nop	
	movabs	rdi, OFFSET FLAT:io_buf
	mov	esi, 0x2000
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:read_and_xlate
	call	squeeze_filter
	lea	rsi, [rsi]
	jmp	.label_33
.label_69:
	lea	rdi, [rdi]
	jmp	.label_39
.label_39:
	movabs	rdi, OFFSET FLAT:io_buf
	nop	
	mov	eax, 0x2000
	mov	esi, eax
	lea	rsi, [rsi]
	call	read_and_xlate
	mov	qword ptr [rbp - 0x88], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x88], 0
	nop	
	jne	.label_86
	mov	rsp, rsp
	jmp	.label_91
.label_86:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:io_buf
	mov	rbp, rbp
	mov	eax, 1
	mov	esi, eax
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	call	fwrite_unlocked
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	je	.label_20
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_2
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], esi
	nop	
	call	gettext
	mov	rbp, rbp
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x30]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_20:
	jmp	.label_39
.label_91:
	lea	rsi, [rsi]
	jmp	.label_33
.label_33:
	nop	
	jmp	.label_35
.label_35:
	mov	rsp, rsp
	jmp	.label_37
.label_37:
	mov	rsp, rsp
	jmp	.label_17
.label_17:
	jmp	.label_41
.label_41:
	xor	edi, edi
	call	close
	cmp	eax, 0
	je	.label_43
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.28
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x60], esi
	lea	rsi, [rsi]
	call	gettext
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x60]
	mov	rdx, rax
	mov	al, 0
	nop	
	call	error
.label_43:
	nop	
	mov	dword ptr [rbp - 0x15c], 0
.label_24:
	mov	eax, dword ptr [rbp - 0x15c]
	add	rsp, 0x190
	nop	
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402900

	.globl spec_init
	.type spec_init, @function
spec_init:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	eax, 0x20
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	rdi, rcx
	lea	rdi, [rdi]
	call	xmalloc
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	qword ptr [rax + 8], 0
	mov	rsp, rsp
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402970

	.globl parse_str
	.type parse_str, @function
parse_str:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x40
	nop	
	lea	rax, [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rsi, rax
	call	unquote
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	dl, cl
	mov	rbp, rbp
	test	al, 1
	mov	byte ptr [rbp - 0x29], dl
	mov	rbp, rbp
	jne	.label_98
	nop	
	jmp	.label_97
.label_98:
	lea	rdi, [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	build_spec_list
	nop	
	mov	byte ptr [rbp - 0x29], al
.label_97:
	mov	al, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	lea	rdi, [rbp - 0x20]
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 1], al
	lea	rdi, [rdi]
	call	es_free
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	and	al, 1
	nop	
	movzx	eax, al
	nop	
	add	rsp, 0x40
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402a00

	.globl validate
	.type validate, @function
validate:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	call	get_s1_spec_stats
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rsi + 0x20], 0
	mov	rbp, rbp
	jbe	.label_106
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.81
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	edi, 1
	nop	
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_106:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	je	.label_107
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	call	get_s2_spec_stats
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x20], 1
	jbe	.label_99
	movabs	rdi, OFFSET FLAT:.str.82
	mov	rbp, rbp
	call	gettext
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	nop	
	mov	rdx, rax
	mov	al, 0
	call	error
.label_99:
	mov	rbp, rbp
	test	byte ptr [byte ptr [translating]],  1
	mov	rbp, rbp
	je	.label_111
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x30], 1
	nop	
	je	.label_103
	movabs	rdi, OFFSET FLAT:.str.83
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_103:
	nop	
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x32], 1
	je	.label_102
	movabs	rdi, OFFSET FLAT:.str.84
	lea	rdi, [rdi]
	call	gettext
	mov	edi, 1
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rbp, rbp
	mov	rdx, rax
	mov	al, 0
	call	error
.label_102:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	validate_case_classes
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	cmp	rsi, qword ptr [rdi + 0x18]
	jbe	.label_104
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [truncate_set1]],  1
	mov	rbp, rbp
	jne	.label_109
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x18], 0
	mov	rsp, rsp
	jne	.label_100
	movabs	rdi, OFFSET FLAT:.str.85
	nop	
	call	gettext
	mov	edi, 1
	nop	
	xor	esi, esi
	mov	rsp, rsp
	mov	rdx, rax
	nop	
	mov	al, 0
	call	error
.label_100:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	nop	
	call	string2_extend
.label_109:
	lea	rdi, [rdi]
	jmp	.label_104
.label_104:
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [complement]],  1
	je	.label_101
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	test	byte ptr [rax + 0x31], 1
	je	.label_101
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	cmp	rax, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	jne	.label_110
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	homogeneous_spec_list
	test	al, 1
	jne	.label_101
.label_110:
	movabs	rdi, OFFSET FLAT:.str.86
	lea	rsi, [rsi]
	call	gettext
	nop	
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_101:
	jmp	.label_105
.label_111:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x20], 0
	jbe	.label_108
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.87
	nop	
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rdx, rax
	nop	
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_108:
	jmp	.label_105
.label_105:
	lea	rdi, [rdi]
	jmp	.label_107
.label_107:
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402cc0

	.globl set_initialize
	.type set_initialize, @function
set_initialize:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	al, sil
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	and	al, 1
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rdx + 0x10], -2
.label_113:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x18]
	call	get_next
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	cmp	eax, -1
	lea	rdi, [rdi]
	je	.label_114
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 1
	mov	rbp, rbp
	jmp	.label_113
.label_114:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 9], 1
	mov	rbp, rbp
	je	.label_112
	mov	qword ptr [rbp - 8], 0
.label_116:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0x100
	jae	.label_115
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	dl, byte ptr [rcx + rax]
	mov	rbp, rbp
	xor	dl, 0xff
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x20]
	and	dl, 1
	mov	byte ptr [rcx + rax], dl
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_116
.label_115:
	jmp	.label_112
.label_112:
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402da0

	.globl squeeze_filter
	.type squeeze_filter, @function
squeeze_filter:
	mov	rsp, rsp
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], 0x7fffffff
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], 0x7fffffff
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], 0
.label_136:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x48]
	jb	.label_138
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	call	rax
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	mov	rsp, rsp
	jne	.label_118
	nop	
	jmp	.label_122
.label_118:
	mov	qword ptr [rbp - 0x38], 0
.label_138:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x4c], 0x7fffffff
	lea	rdi, [rdi]
	jne	.label_126
	mov	rsp, rsp
	jmp	.label_129
.label_129:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x38]
	cmp	rdx, qword ptr [rbp - 0x48]
	mov	byte ptr [rbp - 5], cl
	lea	rsi, [rsi]
	jae	.label_133
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	call	to_uchar
	movzx	edi, al
	nop	
	mov	ecx, edi
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + in_squeeze_set]]
	xor	al, 0xff
	mov	byte ptr [rbp - 5], al
.label_133:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 5]
	test	al, 1
	jne	.label_121
	jmp	.label_125
.label_121:
	jmp	.label_127
.label_127:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rax, 2
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	jmp	.label_129
.label_125:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_132
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	movsx	edi, byte ptr [rcx + rax]
	mov	rbp, rbp
	call	to_uchar
	movzx	edi, al
	mov	rbp, rbp
	mov	ecx, edi
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [+ (rcx * 1) + in_squeeze_set]],  1
	mov	rbp, rbp
	je	.label_132
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
.label_132:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	jb	.label_124
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x58], rax
	nop	
	jmp	.label_130
.label_124:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x4c], edx
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x38], 0
	jbe	.label_117
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	cmp	edx, dword ptr [rbp - 0x4c]
	jne	.label_117
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rax, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rax
.label_117:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
.label_130:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x58], 0
	jbe	.label_119
	lea	rsi, [rsi]
	mov	eax, 1
	mov	esi, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	qword ptr [rbp - 0x40], rdi
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	call	fwrite_unlocked
	cmp	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	je	.label_119
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_2
	mov	rbp, rbp
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 4], esi
	call	gettext
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
.label_119:
	jmp	.label_126
.label_126:
	cmp	dword ptr [rbp - 0x4c], 0x7fffffff
	je	.label_134
	jmp	.label_128
.label_128:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x38]
	cmp	rdx, qword ptr [rbp - 0x48]
	mov	byte ptr [rbp - 6], cl
	jae	.label_135
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	nop	
	cmp	edx, dword ptr [rbp - 0x4c]
	sete	sil
	mov	byte ptr [rbp - 6], sil
.label_135:
	mov	al, byte ptr [rbp - 6]
	test	al, 1
	mov	rsp, rsp
	jne	.label_120
	mov	rbp, rbp
	jmp	.label_123
.label_120:
	mov	rbp, rbp
	jmp	.label_137
.label_137:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_128
.label_123:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	jae	.label_131
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], 0x7fffffff
.label_131:
	nop	
	jmp	.label_134
.label_134:
	jmp	.label_136
.label_122:
	mov	rsp, rsp
	add	rsp, 0x60
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403100

	.globl plain_read
	.type plain_read, @function
plain_read:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	nop	
	xor	eax, eax
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	edi, eax
	lea	rsi, [rsi]
	call	safe_read
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], -1
	lea	rdi, [rdi]
	jne	.label_139
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.96
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], esi
	call	gettext
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rdx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_139:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4031a0

	.globl read_and_delete
	.type read_and_delete, @function
read_and_delete:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x28], rsi
.label_145:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	call	plain_read
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_141
	nop	
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_147
.label_141:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], 0
.label_146:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rbp - 1], cl
	jae	.label_150
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	mov	rsp, rsp
	movzx	edi, al
	mov	ecx, edi
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + in_delete_set]]
	xor	al, 0xff
	mov	byte ptr [rbp - 1], al
.label_150:
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_152
	jmp	.label_142
.label_152:
	jmp	.label_144
.label_144:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_146
.label_142:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x10], rax
.label_143:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_148
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rcx + rax]
	nop	
	call	to_uchar
	lea	rsi, [rsi]
	movzx	edi, al
	mov	ecx, edi
	mov	rsp, rsp
	test	byte ptr [byte ptr [+ (rcx * 1) + in_delete_set]],  1
	jne	.label_151
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x30], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	byte ptr [rcx + rax], dl
.label_151:
	mov	rbp, rbp
	jmp	.label_149
.label_149:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_143
.label_148:
	mov	rbp, rbp
	jmp	.label_140
.label_140:
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_145
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
.label_147:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rsp, 0x40
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403340

	.globl get_next
	.type get_next, @function
get_next:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x40], rsi
	cmp	qword ptr [rbp - 0x40], 0
	mov	rsp, rsp
	je	.label_174
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	dword ptr [rax], 2
.label_174:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x10], -2
	mov	rbp, rbp
	jne	.label_188
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rax + 0x10], -1
.label_188:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	jne	.label_171
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	jmp	.label_177
.label_171:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	mov	eax, ecx
	mov	rbp, rbp
	mov	rdx, rax
	sub	rdx, 4
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rdx
	ja	.label_182
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_153]]
	lea	rdi, [rdi]
	jmp	rcx
.label_872:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	movzx	ecx, byte ptr [rax + 0x10]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x10], -1
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + 8], rax
	nop	
	jmp	.label_157
.label_873:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x10], -1
	lea	rdi, [rdi]
	jne	.label_178
	nop	
	mov	rax, qword ptr [rbp - 8]
	movzx	ecx, byte ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	eax, ecx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x10], rax
	mov	rsp, rsp
	jmp	.label_184
.label_178:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x10]
	mov	rsp, rsp
	add	rcx, 1
	nop	
	mov	qword ptr [rax + 0x10], rcx
.label_184:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	ecx, eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10], ecx
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	movzx	ecx, byte ptr [rdx + 0x11]
	mov	edx, ecx
	cmp	rax, rdx
	mov	rsp, rsp
	jne	.label_162
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x10], -1
.label_162:
	nop	
	jmp	.label_157
.label_874:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_187
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	edx, ecx
	sub	edx, 6
	mov	dword ptr [rbp - 0x20], ecx
	mov	dword ptr [rbp - 0x44], edx
	je	.label_156
	jmp	.label_181
.label_181:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x20]
	nop	
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	je	.label_168
	mov	rbp, rbp
	jmp	.label_173
.label_156:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0
	lea	rsi, [rsi]
	jmp	.label_176
.label_168:
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 1
	nop	
	jmp	.label_176
.label_173:
	mov	rbp, rbp
	jmp	.label_176
.label_176:
	jmp	.label_187
.label_187:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x10], -1
	mov	rbp, rbp
	jne	.label_189
	nop	
	mov	dword ptr [rbp - 0x34], 0
.label_183:
	cmp	dword ptr [rbp - 0x34], 0x100
	jge	.label_161
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	edi, dword ptr [rax + 0x10]
	mov	ecx, dword ptr [rbp - 0x34]
	mov	dl, cl
	movzx	esi, dl
	call	is_char_class_member
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_172
	mov	rbp, rbp
	jmp	.label_175
.label_172:
	lea	rsi, [rsi]
	jmp	.label_161
.label_175:
	mov	rbp, rbp
	jmp	.label_179
.label_179:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], eax
	mov	rsp, rsp
	jmp	.label_183
.label_161:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x34], 0x100
	jge	.label_185
	jmp	.label_164
.label_185:
	movabs	rdi, OFFSET FLAT:.str.97
	movabs	rsi, OFFSET FLAT:.str.26
	mov	edx, 0x434
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.get_next
	lea	rsi, [rsi]
	call	__assert_fail
.label_164:
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
.label_189:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	edi, dword ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	cl, al
	mov	rbp, rbp
	movzx	esi, cl
	lea	rsi, [rsi]
	call	is_char_class_member
	nop	
	test	al, 1
	jne	.label_186
	jmp	.label_180
.label_186:
	jmp	.label_190
.label_180:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.98
	movabs	rsi, OFFSET FLAT:.str.26
	mov	edx, 0x437
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.get_next
	call	__assert_fail
.label_190:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	ecx, eax
	nop	
	mov	dword ptr [rbp - 0x10], ecx
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	ecx, eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], ecx
.label_163:
	cmp	dword ptr [rbp - 0x34], 0x100
	mov	rbp, rbp
	jge	.label_160
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax + 0x10]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x34]
	nop	
	mov	dl, cl
	movzx	esi, dl
	call	is_char_class_member
	test	al, 1
	nop	
	jne	.label_154
	jmp	.label_158
.label_154:
	nop	
	jmp	.label_160
.label_158:
	nop	
	jmp	.label_159
.label_159:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_163
.label_160:
	cmp	dword ptr [rbp - 0x34], 0x100
	lea	rdi, [rdi]
	jge	.label_170
	movsxd	rax, dword ptr [rbp - 0x34]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x10], rax
	mov	rsp, rsp
	jmp	.label_165
.label_170:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x10], -1
.label_165:
	jmp	.label_157
.label_875:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 0x10]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x10], -1
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 8], rax
	jmp	.label_157
.label_876:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x18], 0
	mov	rsp, rsp
	jne	.label_169
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x10], -1
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	call	get_next
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_166
.label_169:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	cmp	qword ptr [rax + 0x10], -1
	nop	
	jne	.label_155
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], 0
.label_155:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rax + 0x10]
	mov	rsp, rsp
	add	rcx, 1
	nop	
	mov	qword ptr [rax + 0x10], rcx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	movzx	edx, byte ptr [rax + 0x10]
	mov	dword ptr [rbp - 0x10], edx
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x18]
	jne	.label_167
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x10], -1
.label_167:
	lea	rsi, [rsi]
	jmp	.label_166
.label_166:
	mov	rsp, rsp
	jmp	.label_157
.label_182:
	call	abort
.label_157:
	nop	
	mov	eax, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
.label_177:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x50
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4038b0

	.globl skip_construct
	.type skip_construct, @function
skip_construct:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rdi + 8]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rdi
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x10], -1
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4038f0

	.globl read_and_xlate
	.type read_and_xlate, @function
read_and_xlate:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	plain_read
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 8], 0
.label_191:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jae	.label_192
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rcx + rax]
	mov	rsp, rsp
	call	to_uchar
	lea	rsi, [rsi]
	movzx	edi, al
	mov	ecx, edi
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + xlate]]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	byte ptr [rdx + rcx], al
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_191
.label_192:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4039a0

	.globl unquote
	.type unquote, @function
unquote:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x78
	mov	qword ptr [rbp - 0x50], rdi
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	call	strlen
	nop	
	mov	qword ptr [rbp - 0x68], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x68]
	nop	
	call	xmalloc
	lea	rsi, [rsi]
	mov	ecx, 1
	mov	rbp, rbp
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi], rax
	mov	rdi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	call	xcalloc
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi + 8], rax
	mov	dword ptr [rbp - 0x38], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], 0
.label_219:
	mov	eax, dword ptr [rbp - 0x5c]
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	byte ptr [rdx + rcx], 0
	mov	rbp, rbp
	je	.label_197
	mov	eax, dword ptr [rbp - 0x5c]
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x50]
	movzx	eax, byte ptr [rdx + rcx]
	nop	
	sub	eax, 0x5c
	mov	dword ptr [rbp - 0xc], eax
	jne	.label_199
	lea	rdi, [rdi]
	jmp	.label_211
.label_211:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rcx], 1
	mov	eax, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	inc	eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	movsx	eax, byte ptr [rdx + rcx]
	test	eax, eax
	nop	
	mov	dword ptr [rbp - 0x40], eax
	je	.label_215
	mov	rsp, rsp
	jmp	.label_198
.label_198:
	nop	
	mov	eax, dword ptr [rbp - 0x40]
	mov	rsp, rsp
	add	eax, -0x30
	sub	eax, 8
	mov	dword ptr [rbp - 0x20], eax
	jb	.label_200
	nop	
	jmp	.label_206
.label_206:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	sub	eax, 0x5c
	mov	dword ptr [rbp - 0x28], eax
	je	.label_207
	lea	rdi, [rdi]
	jmp	.label_212
.label_212:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 0x61
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	je	.label_216
	jmp	.label_193
.label_193:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x44], eax
	mov	rsp, rsp
	je	.label_222
	mov	rsp, rsp
	jmp	.label_201
.label_201:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x40]
	nop	
	sub	eax, 0x66
	mov	dword ptr [rbp - 0x24], eax
	mov	rbp, rbp
	je	.label_195
	nop	
	jmp	.label_202
.label_202:
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x1c], eax
	je	.label_204
	mov	rbp, rbp
	jmp	.label_213
.label_213:
	mov	eax, dword ptr [rbp - 0x40]
	nop	
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x58], eax
	lea	rsi, [rsi]
	je	.label_208
	jmp	.label_214
.label_214:
	nop	
	mov	eax, dword ptr [rbp - 0x40]
	mov	rsp, rsp
	sub	eax, 0x74
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	je	.label_217
	mov	rbp, rbp
	jmp	.label_221
.label_221:
	mov	eax, dword ptr [rbp - 0x40]
	mov	rsp, rsp
	sub	eax, 0x76
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], eax
	lea	rdi, [rdi]
	je	.label_223
	nop	
	jmp	.label_196
.label_207:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x2d], 0x5c
	jmp	.label_194
.label_216:
	mov	byte ptr [rbp - 0x2d], 7
	mov	rsp, rsp
	jmp	.label_194
.label_222:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x2d], 8
	jmp	.label_194
.label_195:
	mov	byte ptr [rbp - 0x2d], 0xc
	jmp	.label_194
.label_204:
	nop	
	mov	byte ptr [rbp - 0x2d], 0xa
	nop	
	jmp	.label_194
.label_208:
	mov	byte ptr [rbp - 0x2d], 0xd
	jmp	.label_194
.label_217:
	nop	
	mov	byte ptr [rbp - 0x2d], 9
	jmp	.label_194
.label_223:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x2d], 0xb
	jmp	.label_194
.label_200:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x5c]
	add	ecx, 1
	mov	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rsi + rdx]
	lea	rsi, [rsi]
	sub	ecx, 0x30
	mov	dil, cl
	mov	byte ptr [rbp - 0x2d], dil
	mov	ecx, dword ptr [rbp - 0x5c]
	nop	
	add	ecx, 2
	mov	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x50]
	movsx	ecx, byte ptr [rsi + rdx]
	sub	ecx, 0x30
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	jg	.label_209
	cmp	dword ptr [rbp - 0x10], 7
	lea	rdi, [rdi]
	jg	.label_209
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	movzx	ecx, byte ptr [rbp - 0x2d]
	shl	ecx, 3
	add	ecx, dword ptr [rbp - 0x10]
	mov	dl, cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x2d], dl
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x5c]
	add	ecx, 1
	mov	dword ptr [rbp - 0x5c], ecx
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	add	ecx, 2
	mov	rbp, rbp
	mov	ecx, ecx
	mov	rbp, rbp
	mov	esi, ecx
	nop	
	mov	rdi, qword ptr [rbp - 0x50]
	movsx	ecx, byte ptr [rdi + rsi]
	lea	rsi, [rsi]
	sub	ecx, 0x30
	mov	dword ptr [rbp - 0x10], ecx
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x10]
	jg	.label_203
	cmp	dword ptr [rbp - 0x10], 7
	jg	.label_203
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x2d]
	shl	eax, 3
	add	eax, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	eax, 0x100
	jge	.label_205
	nop	
	movzx	eax, byte ptr [rbp - 0x2d]
	shl	eax, 3
	add	eax, dword ptr [rbp - 0x10]
	mov	cl, al
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x2d], cl
	nop	
	mov	eax, dword ptr [rbp - 0x5c]
	add	eax, 1
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	jmp	.label_210
.label_205:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.50
	mov	rbp, rbp
	call	gettext
	xor	ecx, ecx
	mov	edx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	mov	edi, edx
	mov	rsi, qword ptr [rbp - 0x50]
	nop	
	movsx	edx, byte ptr [rsi + rdi]
	mov	r8d, dword ptr [rbp - 0x5c]
	add	r8d, 1
	mov	rbp, rbp
	mov	r8d, r8d
	mov	esi, r8d
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x50]
	movsx	r8d, byte ptr [rdi + rsi]
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	add	r9d, 2
	mov	rsp, rsp
	mov	r9d, r9d
	mov	esi, r9d
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x50]
	movsx	r9d, byte ptr [rdi + rsi]
	mov	r10d, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	mov	esi, r10d
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	movsx	r10d, byte ptr [rdi + rsi]
	mov	r11d, dword ptr [rbp - 0x5c]
	nop	
	add	r11d, 1
	mov	rsp, rsp
	mov	r11d, r11d
	mov	esi, r11d
	nop	
	mov	rdi, qword ptr [rbp - 0x50]
	movsx	r11d, byte ptr [rdi + rsi]
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rbp - 0x5c]
	add	ebx, 2
	mov	rsp, rsp
	mov	ebx, ebx
	mov	rbp, rbp
	mov	esi, ebx
	nop	
	mov	rdi, qword ptr [rbp - 0x50]
	movsx	ebx, byte ptr [rdi + rsi]
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], edx
	lea	rsi, [rsi]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	mov	dword ptr [rsp], r10d
	mov	rsp, rsp
	mov	dword ptr [rsp + 8], r11d
	mov	dword ptr [rsp + 0x10], ebx
	lea	rsi, [rsi]
	mov	al, 0
	call	error
.label_210:
	mov	rbp, rbp
	jmp	.label_203
.label_203:
	lea	rdi, [rdi]
	jmp	.label_209
.label_209:
	mov	rsp, rsp
	jmp	.label_194
.label_215:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.51
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	nop	
	mov	esi, ecx
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rbp, rbp
	call	error
	mov	ecx, dword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	r8, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [r8 + 8]
	mov	byte ptr [r8 + rdx], 0
	mov	ecx, dword ptr [rbp - 0x5c]
	add	ecx, -1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], ecx
	mov	byte ptr [rbp - 0x2d], 0x5c
	jmp	.label_194
.label_196:
	mov	eax, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	add	eax, 1
	mov	eax, eax
	nop	
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	sil, byte ptr [rdx + rcx]
	mov	byte ptr [rbp - 0x2d], sil
.label_194:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], eax
	nop	
	mov	cl, byte ptr [rbp - 0x2d]
	mov	eax, dword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	edx, eax
	add	edx, 1
	mov	dword ptr [rbp - 0x38], edx
	mov	eax, eax
	lea	rdi, [rdi]
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdi]
	mov	byte ptr [rdi + rsi], cl
	jmp	.label_220
.label_199:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x5c]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	sil, byte ptr [rdx + rcx]
	mov	eax, dword ptr [rbp - 0x38]
	nop	
	mov	edi, eax
	add	edi, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x38], edi
	mov	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx]
	mov	rsp, rsp
	mov	byte ptr [rdx + rcx], sil
.label_220:
	jmp	.label_218
.label_218:
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	add	eax, 1
	mov	dword ptr [rbp - 0x5c], eax
	lea	rdi, [rdi]
	jmp	.label_219
.label_197:
	mov	al, 1
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	edx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x10], rdx
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	add	rsp, 0x78
	pop	rbx
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f20

	.globl build_spec_list
	.type build_spec_list, @function
build_spec_list:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x80
	nop	
	mov	qword ptr [rbp - 0x68], rdi
	nop	
	mov	qword ptr [rbp - 8], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rsi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], 0
.label_236:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 2
	mov	rcx, qword ptr [rbp - 0x68]
	nop	
	cmp	rax, qword ptr [rcx + 0x10]
	jae	.label_247
	mov	edx, 0x5b
	nop	
	mov	rdi, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x50]
	call	es_match
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_224
	jmp	.label_228
.label_224:
	lea	rsi, [rsi]
	mov	edx, 0x3a
	mov	byte ptr [rbp - 0x21], 1
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rsi, [rsi]
	call	es_match
	lea	rdi, [rdi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_239
	mov	rsp, rsp
	mov	edx, 0x3d
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	mov	rsi, rax
	call	es_match
	test	al, 1
	jne	.label_239
	nop	
	jmp	.label_246
.label_239:
	lea	rcx, [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 2
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rax + rdx + 1]
	nop	
	call	find_closing_delim
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_237
	lea	rsi, [rsi]
	jmp	.label_242
.label_237:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x50]
	add	rcx, 2
	sub	rax, rcx
	nop	
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	add	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 2
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x70], 0
	jne	.label_245
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x58]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3a
	lea	rsi, [rsi]
	jne	.label_255
	movabs	rdi, OFFSET FLAT:.str.52
	lea	rdi, [rdi]
	call	gettext
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	esi, ecx
	mov	rdx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	mov	rsp, rsp
	jmp	.label_249
.label_255:
	nop	
	movabs	rdi, OFFSET FLAT:.str.53
	mov	rsp, rsp
	call	gettext
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_249:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x22], 0
	mov	rbp, rbp
	jmp	.label_233
.label_245:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0x58]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rsp, rsp
	cmp	edx, 0x3a
	lea	rdi, [rdi]
	jne	.label_230
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x40]
	nop	
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	append_char_class
	nop	
	test	al, 1
	nop	
	jne	.label_251
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 2
	mov	rsi, rax
	mov	rsp, rsp
	call	star_digits_closebracket
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_254
	jmp	.label_231
.label_254:
	lea	rdi, [rdi]
	jmp	.label_227
.label_231:
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x70]
	call	make_printable_str
	nop	
	movabs	rdi, OFFSET FLAT:.str.54
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x78]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, rax
	mov	al, 0
	call	error
	nop	
	mov	rdi, qword ptr [rbp - 0x78]
	call	free
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x22], 0
	jmp	.label_233
.label_251:
	mov	rsp, rsp
	jmp	.label_235
.label_230:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	append_equiv_class
	test	al, 1
	mov	rbp, rbp
	jne	.label_229
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 2
	mov	rsp, rsp
	mov	rsi, rax
	lea	rdi, [rdi]
	call	star_digits_closebracket
	mov	rsp, rsp
	test	al, 1
	jne	.label_238
	jmp	.label_243
.label_238:
	jmp	.label_227
.label_243:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	nop	
	mov	rsi, qword ptr [rbp - 0x70]
	call	make_printable_str
	movabs	rdi, OFFSET FLAT:.str.55
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	call	gettext
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	edi, ecx
	nop	
	mov	qword ptr [rbp - 0x38], rsi
	mov	esi, ecx
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	free
	mov	byte ptr [rbp - 0x22], 0
	lea	rsi, [rsi]
	jmp	.label_233
.label_229:
	jmp	.label_235
.label_235:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	add	rax, 2
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_236
.label_242:
	nop	
	jmp	.label_246
.label_246:
	jmp	.label_227
.label_227:
	nop	
	lea	rdx, [rbp - 0x11]
	mov	rbp, rbp
	lea	rcx, [rbp - 0x80]
	lea	r8, [rbp - 0x20]
	nop	
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rsi, [rsi]
	mov	rsi, rax
	call	find_bracketed_repeat
	mov	dword ptr [rbp - 0x18], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	jne	.label_226
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x11]
	mov	rdx, qword ptr [rbp - 0x80]
	movzx	esi, al
	lea	rsi, [rsi]
	call	append_repeated_char
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rdx, 1
	mov	qword ptr [rbp - 0x50], rdx
	jmp	.label_225
.label_226:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x18], -1
	jne	.label_244
	mov	byte ptr [rbp - 0x21], 0
	jmp	.label_248
.label_244:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x22], 0
	mov	rbp, rbp
	jmp	.label_233
.label_248:
	jmp	.label_225
.label_225:
	test	byte ptr [rbp - 0x21], 1
	mov	rsp, rsp
	je	.label_252
	jmp	.label_236
.label_252:
	mov	rbp, rbp
	jmp	.label_228
.label_228:
	nop	
	mov	edx, 0x2d
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	rsi, rax
	call	es_match
	test	al, 1
	jne	.label_232
	jmp	.label_234
.label_232:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x58]
	nop	
	mov	dl, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x58]
	movzx	esi, dl
	movzx	edx, byte ptr [rcx + rax + 2]
	call	append_range
	test	al, 1
	nop	
	jne	.label_250
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x22], 0
	jmp	.label_233
.label_250:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 3
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_253
.label_234:
	nop	
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rcx + rax]
	call	append_normal_char
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
.label_253:
	nop	
	jmp	.label_236
.label_247:
	jmp	.label_240
.label_240:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	jae	.label_241
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x58]
	movzx	esi, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	call	append_normal_char
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_240
.label_241:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x22], 1
.label_233:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x22]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x80
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4044b0

	.globl es_free
	.type es_free, @function
es_free:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rdi]
	lea	rdi, [rdi]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	mov	rbp, rbp
	call	free
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4044f0

	.globl es_match
	.type es_match, @function
es_match:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	al, dl
	nop	
	xor	edx, edx
	mov	rbp, rbp
	mov	cl, dl
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], al
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi]
	mov	rbp, rbp
	movsx	edx, byte ptr [rdi + rsi]
	movsx	r8d, byte ptr [rbp - 0x19]
	cmp	edx, r8d
	mov	byte ptr [rbp - 9], cl
	jne	.label_256
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	dl, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	xor	dl, 0xff
	mov	byte ptr [rbp - 9], dl
.label_256:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404570

	.globl find_closing_delim
	.type find_closing_delim, @function
find_closing_delim:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	al, dl
	mov	qword ptr [rbp - 0x20], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	nop	
	mov	byte ptr [rbp - 0x11], al
	mov	qword ptr [rbp - 0x10], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rcx
.label_260:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	sub	rcx, 1
	lea	rsi, [rsi]
	cmp	rax, rcx
	jae	.label_259
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx]
	movsx	edx, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rbp - 0x11]
	cmp	edx, esi
	jne	.label_257
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x5d
	mov	rsp, rsp
	jne	.label_257
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	test	byte ptr [rcx + rax], 1
	lea	rdi, [rdi]
	jne	.label_257
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	mov	rsp, rsp
	test	byte ptr [rcx + rax + 1], 1
	jne	.label_257
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
	jmp	.label_261
.label_257:
	jmp	.label_258
.label_258:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_260
.label_259:
	mov	byte ptr [rbp - 1], 0
.label_261:
	mov	al, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	and	al, 1
	movzx	eax, al
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404680

	.globl append_char_class
	.type append_char_class, @function
append_char_class:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	look_up_char_class
	nop	
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0x270f
	mov	rsp, rsp
	jne	.label_262
	mov	byte ptr [rbp - 0x25], 0
	mov	rbp, rbp
	jmp	.label_263
.label_262:
	mov	rsp, rsp
	mov	eax, 0x20
	mov	edi, eax
	call	xmalloc
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rax], 2
	mov	ecx, dword ptr [rbp - 0x24]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rax + 0x10], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	nop	
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	je	.label_265
	lea	rdi, [rdi]
	jmp	.label_264
.label_265:
	movabs	rdi, OFFSET FLAT:.str.56
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.26
	lea	rdi, [rdi]
	mov	edx, 0x2bb
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.append_char_class
	mov	rsp, rsp
	call	__assert_fail
.label_264:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rcx + 8], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x25], 1
.label_263:
	mov	al, byte ptr [rbp - 0x25]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4047a0

	.globl star_digits_closebracket
	.type star_digits_closebracket, @function
star_digits_closebracket:
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	edx, 0x2a
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 8]
	nop	
	call	es_match
	mov	rsp, rsp
	test	al, 1
	jne	.label_268
	nop	
	mov	byte ptr [rbp - 9], 0
	jmp	.label_269
.label_268:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_267:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	jae	.label_270
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rcx]
	nop	
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	nop	
	movzx	edi, al
	nop	
	sub	edi, 0x30
	cmp	edi, 9
	lea	rsi, [rsi]
	ja	.label_266
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 8]
	mov	rsp, rsp
	test	byte ptr [rcx + rax], 1
	mov	rbp, rbp
	je	.label_271
.label_266:
	mov	rbp, rbp
	mov	edx, 0x5d
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	call	es_match
	nop	
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 9], al
	jmp	.label_269
.label_271:
	lea	rsi, [rsi]
	jmp	.label_272
.label_272:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_267
.label_270:
	mov	byte ptr [rbp - 9], 0
.label_269:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048c0

	.globl make_printable_str
	.type make_printable_str, @function
make_printable_str:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x80
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rsi, 1
	nop	
	mov	rdi, rsi
	mov	rsi, rcx
	nop	
	call	xnmalloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	qword ptr [rbp - 0x50], 0
.label_284:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	jae	.label_281
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	dl, byte ptr [rcx + rax]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x41], dl
	nop	
	movzx	esi, byte ptr [rbp - 0x41]
	lea	rsi, [rsi]
	mov	edi, esi
	sub	edi, 7
	nop	
	mov	dword ptr [rbp - 0x34], esi
	nop	
	mov	dword ptr [rbp - 0x64], edi
	je	.label_286
	jmp	.label_285
.label_285:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, 8
	nop	
	mov	dword ptr [rbp - 0x68], eax
	nop	
	je	.label_292
	nop	
	jmp	.label_289
.label_289:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, 9
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], eax
	nop	
	je	.label_274
	lea	rdi, [rdi]
	jmp	.label_282
.label_282:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	je	.label_283
	lea	rdi, [rdi]
	jmp	.label_293
.label_293:
	nop	
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, 0xb
	mov	dword ptr [rbp - 0x6c], eax
	nop	
	je	.label_275
	jmp	.label_280
.label_280:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	sub	eax, 0xc
	mov	dword ptr [rbp - 0xc], eax
	je	.label_277
	lea	rsi, [rsi]
	jmp	.label_287
.label_287:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	sub	eax, 0xd
	mov	dword ptr [rbp - 0x24], eax
	je	.label_291
	jmp	.label_276
.label_276:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, 0x5c
	mov	dword ptr [rbp - 0x60], eax
	mov	rbp, rbp
	jne	.label_278
	nop	
	jmp	.label_290
.label_290:
	movabs	rax, OFFSET FLAT:.str.69
	mov	qword ptr [rbp - 0x18], rax
	nop	
	jmp	.label_273
.label_286:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.70
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_273
.label_292:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.71
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_273
.label_277:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.72
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_273
.label_283:
	movabs	rax, OFFSET FLAT:.str.73
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_273
.label_291:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.74
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_273
.label_274:
	nop	
	movabs	rax, OFFSET FLAT:.str.75
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_273
.label_275:
	movabs	rax, OFFSET FLAT:.str.76
	nop	
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_273
.label_278:
	nop	
	movzx	eax, byte ptr [rbp - 0x41]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rcx
	lea	rsi, [rsi]
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	movzx	edx, word ptr [rax + rcx*2]
	nop	
	and	edx, 0x4000
	lea	rdi, [rdi]
	cmp	edx, 0
	je	.label_288
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x41]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x39], al
	mov	byte ptr [rbp - 0x38], 0
	nop	
	jmp	.label_279
.label_288:
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.77
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x39]
	movzx	edx, byte ptr [rbp - 0x41]
	mov	al, 0
	nop	
	call	sprintf
	mov	dword ptr [rbp - 0x40], eax
.label_279:
	lea	rax, [rbp - 0x39]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
.label_273:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	stpcpy
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_284
.label_281:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	add	rsp, 0x80
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ba0

	.globl append_equiv_class
	.type append_equiv_class, @function
append_equiv_class:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x28], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 0x18], 1
	je	.label_294
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 9], 0
	lea	rdi, [rdi]
	jmp	.label_295
.label_294:
	mov	eax, 0x20
	mov	rsp, rsp
	mov	edi, eax
	lea	rsi, [rsi]
	call	xmalloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 3
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x10], cl
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_296
	jmp	.label_297
.label_296:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.56
	movabs	rsi, OFFSET FLAT:.str.26
	mov	edx, 0x2e5
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.append_equiv_class
	nop	
	call	__assert_fail
.label_297:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	byte ptr [rbp - 9], 1
.label_295:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404cb0

	.globl find_bracketed_repeat
	.type find_bracketed_repeat, @function
find_bracketed_repeat:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x70
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x68], rdx
	mov	qword ptr [rbp - 0x48], rcx
	mov	qword ptr [rbp - 0x28], r8
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rcx, 1
	nop	
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, qword ptr [rdx + 0x10]
	nop	
	jae	.label_307
	nop	
	jmp	.label_308
.label_307:
	nop	
	movabs	rdi, OFFSET FLAT:.str.78
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.26
	mov	edx, 0x30e
	nop	
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.find_bracketed_repeat
	mov	rbp, rbp
	call	__assert_fail
.label_308:
	lea	rsi, [rsi]
	mov	edx, 0x2a
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	rbp, rbp
	mov	rsi, rax
	lea	rsi, [rsi]
	call	es_match
	test	al, 1
	jne	.label_303
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], 0xffffffff
	nop	
	jmp	.label_302
.label_303:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rax, 2
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
.label_299:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x31], cl
	jae	.label_310
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	xor	dl, 0xff
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x31], dl
.label_310:
	mov	al, byte ptr [rbp - 0x31]
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_309
	lea	rsi, [rsi]
	jmp	.label_301
.label_309:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x5d
	mov	rsp, rsp
	jne	.label_304
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	sub	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rax, 2
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	byte ptr [rax], dl
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	jne	.label_300
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rax], 0
	nop	
	jmp	.label_306
.label_300:
	nop	
	lea	rsi, [rbp - 0x50]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r8d, eax
	mov	rbp, rbp
	mov	eax, 0xa
	mov	rsp, rsp
	mov	ecx, 8
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	add	rdx, 2
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rdx, qword ptr [rdi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rdx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x60]
	movsx	r9d, byte ptr [rdx]
	lea	rdi, [rdi]
	cmp	r9d, 0x30
	cmove	eax, ecx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rbp, rbp
	call	xstrtoumax
	cmp	eax, 0
	jne	.label_298
	mov	rax, -2
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rcx]
	jb	.label_298
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x50]
	je	.label_305
.label_298:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x20]
	call	make_printable_str
	movabs	rdi, OFFSET FLAT:.str.79
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	call	gettext
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	call	quote
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	dword ptr [rbp - 0x54], 0xfffffffe
	jmp	.label_302
.label_305:
	jmp	.label_306
.label_306:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 0x54], 0
	lea	rsi, [rsi]
	jmp	.label_302
.label_304:
	nop	
	jmp	.label_311
.label_311:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_299
.label_301:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], 0xffffffff
.label_302:
	mov	eax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	add	rsp, 0x70
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fc0

	.globl append_repeated_char
	.type append_repeated_char, @function
append_repeated_char:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	al, sil
	mov	esi, 0x20
	mov	ecx, esi
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	byte ptr [rbp - 1], al
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, rcx
	call	xmalloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	dword ptr [rax], 4
	mov	rbp, rbp
	mov	r8b, byte ptr [rbp - 1]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	byte ptr [rax + 0x10], r8b
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_312
	nop	
	jmp	.label_313
.label_312:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.56
	movabs	rsi, OFFSET FLAT:.str.26
	mov	rbp, rbp
	mov	edx, 0x2cf
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.append_repeated_char
	mov	rbp, rbp
	call	__assert_fail
.label_313:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050b0

	.globl append_range
	.type append_range, @function
append_range:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, dl
	lea	rsi, [rsi]
	mov	cl, sil
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x31], cl
	mov	byte ptr [rbp - 2], al
	nop	
	movzx	edx, byte ptr [rbp - 2]
	movzx	esi, byte ptr [rbp - 0x31]
	lea	rsi, [rsi]
	cmp	edx, esi
	mov	rbp, rbp
	jge	.label_315
	mov	rbp, rbp
	movzx	edi, byte ptr [rbp - 0x31]
	call	make_printable_char
	mov	qword ptr [rbp - 0x20], rax
	movzx	edi, byte ptr [rbp - 2]
	lea	rdi, [rdi]
	call	make_printable_char
	nop	
	movabs	rdi, OFFSET FLAT:.str.80
	mov	qword ptr [rbp - 0x28], rax
	call	gettext
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rdi
	mov	edi, ecx
	mov	rsp, rsp
	mov	esi, ecx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	mov	rdi, qword ptr [rbp - 0x20]
	call	free
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
	mov	rsp, rsp
	jmp	.label_314
.label_315:
	mov	rbp, rbp
	mov	eax, 0x20
	mov	edi, eax
	nop	
	call	xmalloc
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax + 8], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	dword ptr [rax], 1
	mov	cl, byte ptr [rbp - 0x31]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	byte ptr [rax + 0x10], cl
	lea	rsi, [rsi]
	mov	cl, byte ptr [rbp - 2]
	mov	rax, qword ptr [rbp - 0x30]
	mov	byte ptr [rax + 0x11], cl
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_316
	mov	rsp, rsp
	jmp	.label_317
.label_316:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.56
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.26
	mov	edx, 0x2a5
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.append_range
	call	__assert_fail
.label_317:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
.label_314:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x405230

	.globl append_normal_char
	.type append_normal_char, @function
append_normal_char:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	al, sil
	mov	esi, 0x20
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], al
	mov	rsp, rsp
	mov	rdi, rcx
	call	xmalloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0
	mov	dl, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x10], dl
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_318
	jmp	.label_319
.label_318:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.56
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.26
	mov	rsp, rsp
	mov	edx, 0x287
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.append_normal_char
	call	__assert_fail
.label_319:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	qword ptr [rcx + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	nop	
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405310

	.globl look_up_char_class
	.type look_up_char_class, @function
look_up_char_class:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0
.label_324:
	mov	eax, dword ptr [rbp - 4]
	mov	ecx, eax
	nop	
	cmp	rcx, 0xc
	jae	.label_320
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rsi,  qword ptr [word ptr [+ (rcx * 8) + char_class_name]]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	strncmp
	cmp	eax, 0
	jne	.label_323
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	nop	
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [+ (rcx * 8) + char_class_name]]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x20]
	jne	.label_323
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_321
.label_323:
	jmp	.label_322
.label_322:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	jmp	.label_324
.label_320:
	mov	dword ptr [rbp - 0x14], 0x270f
.label_321:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4053d0

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	nop	
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 1]
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053f0

	.globl make_printable_char
	.type make_printable_char, @function
make_printable_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	mov	al, dil
	lea	rdi, [rdi]
	mov	edi, 5
	nop	
	mov	byte ptr [rbp - 0x19], al
	call	xmalloc
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	movzx	ecx, byte ptr [rbp - 0x19]
	movsxd	rax, ecx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	nop	
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + rdi*2]
	mov	rbp, rbp
	and	ecx, 0x4000
	mov	rbp, rbp
	cmp	ecx, 0
	mov	rbp, rbp
	je	.label_325
	mov	al, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	byte ptr [rcx], al
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + 1], 0
	jmp	.label_326
.label_325:
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.77
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	movzx	edx, byte ptr [rbp - 0x19]
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0xc], eax
.label_326:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4054b0

	.globl get_s1_spec_stats
	.type get_s1_spec_stats, @function
get_s1_spec_stats:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	call	get_spec_stats
	test	byte ptr [byte ptr [complement]],  1
	je	.label_327
	mov	rdi, qword ptr [rbp - 8]
	call	card_of_complement
	mov	rsp, rsp
	movsxd	rdi, eax
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], rdi
.label_327:
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405500

	.globl get_s2_spec_stats
	.type get_s2_spec_stats, @function
get_s2_spec_stats:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rsi
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	get_spec_stats
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rsi, qword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	jb	.label_328
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax + 0x20], 1
	lea	rdi, [rdi]
	jne	.label_328
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	qword ptr [rcx + 0x18], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x18], rax
.label_328:
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405590

	.globl validate_case_classes
	.type validate_case_classes, @function
validate_case_classes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	mov	qword ptr [rbp - 0x38], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x58], 0
	mov	dword ptr [rbp - 0x3c], 0
	nop	
	mov	dword ptr [rbp - 0x8c], 0
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x70], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rsi
	nop	
	mov	byte ptr [rbp - 1], 1
	mov	byte ptr [rbp - 0x71], 1
	mov	rsi, qword ptr [rbp - 0x38]
	nop	
	test	byte ptr [rsi + 0x31], 1
	lea	rsi, [rsi]
	jne	.label_334
	lea	rsi, [rsi]
	jmp	.label_342
.label_334:
	mov	dword ptr [rbp - 0x24], 0
.label_333:
	cmp	dword ptr [rbp - 0x24], 0x100
	mov	rsp, rsp
	jge	.label_348
	movsxd	rax, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x100
	mov	rsp, rsp
	cmp	edx, 0
	je	.label_338
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
.label_338:
	movsxd	rax, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x68]
	movzx	edx, word ptr [rax + rcx*2]
	mov	rsp, rsp
	and	edx, 0x200
	lea	rsi, [rsi]
	cmp	edx, 0
	je	.label_337
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
.label_337:
	jmp	.label_332
.label_332:
	mov	eax, dword ptr [rbp - 0x24]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_333
.label_348:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x10], -2
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x10], -2
.label_331:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x3c], -1
	mov	byte ptr [rbp - 0x8d], cl
	lea	rsi, [rsi]
	je	.label_344
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x8c], -1
	setne	al
	mov	byte ptr [rbp - 0x8d], al
.label_344:
	mov	al, byte ptr [rbp - 0x8d]
	test	al, 1
	jne	.label_340
	jmp	.label_346
.label_340:
	lea	rsi, [rbp - 0x5c]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	get_next
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x28]
	mov	dword ptr [rbp - 0x3c], eax
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	call	get_next
	nop	
	mov	dword ptr [rbp - 0x8c], eax
	test	byte ptr [rbp - 0x71], 1
	mov	rsp, rsp
	je	.label_339
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x28], 2
	nop	
	je	.label_339
	lea	rdi, [rdi]
	test	byte ptr [rbp - 1], 1
	je	.label_330
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x5c], 2
	lea	rdi, [rdi]
	jne	.label_339
.label_330:
	movabs	rdi, OFFSET FLAT:.str.90
	call	gettext
	mov	rsp, rsp
	mov	edi, 1
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	nop	
	call	error
.label_339:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x28], 2
	je	.label_345
	mov	rdi, qword ptr [rbp - 0x18]
	call	skip_construct
	mov	rdi, qword ptr [rbp - 0x38]
	call	skip_construct
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x5c], 1
	mov	rbp, rbp
	jne	.label_341
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_347
.label_341:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	qword ptr [rbp - 0x80], rax
.label_347:
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	sub	rax, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	sub	rdx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x18], rdx
	cmp	dword ptr [rbp - 0x28], 1
	nop	
	jne	.label_336
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x88], rax
	lea	rsi, [rsi]
	jmp	.label_329
.label_336:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x88], rax
.label_329:
	mov	rax, qword ptr [rbp - 0x88]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	sub	rdx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x18], rdx
.label_345:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x10], -1
	lea	rsi, [rsi]
	sete	cl
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x10], -1
	sete	cl
	and	cl, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x71], cl
	jmp	.label_331
.label_346:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	jb	.label_335
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x18]
	jb	.label_335
	lea	rsi, [rsi]
	jmp	.label_343
.label_335:
	movabs	rdi, OFFSET FLAT:.str.91
	movabs	rsi, OFFSET FLAT:.str.26
	mov	rsp, rsp
	mov	edx, 0x4c5
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.validate_case_classes
	call	__assert_fail
.label_343:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 8], rax
.label_342:
	mov	rsp, rsp
	add	rsp, 0x90
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405960

	.globl string2_extend
	.type string2_extend, @function
string2_extend:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	test	byte ptr [byte ptr [translating]],  1
	mov	rbp, rbp
	je	.label_349
	jmp	.label_353
.label_349:
	movabs	rdi, OFFSET FLAT:.str.92
	movabs	rsi, OFFSET FLAT:.str.26
	mov	rsp, rsp
	mov	edx, 0x55e
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.string2_extend
	lea	rsi, [rsi]
	call	__assert_fail
.label_353:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x18]
	jbe	.label_357
	mov	rsp, rsp
	jmp	.label_356
.label_357:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.93
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.26
	nop	
	mov	edx, 0x55f
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.string2_extend
	lea	rsi, [rsi]
	call	__assert_fail
.label_356:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0
	jbe	.label_354
	jmp	.label_351
.label_354:
	movabs	rdi, OFFSET FLAT:.str.94
	movabs	rsi, OFFSET FLAT:.str.26
	mov	rsp, rsp
	mov	edx, 0x560
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.string2_extend
	call	__assert_fail
.label_351:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	mov	eax, ecx
	mov	rdx, rax
	nop	
	sub	rdx, 4
	nop	
	mov	qword ptr [rbp - 0x28], rax
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	ja	.label_355
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_352]]
	jmp	rcx
.label_879:
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x10]
	mov	byte ptr [rbp - 0x29], cl
	mov	rsp, rsp
	jmp	.label_350
.label_880:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x11]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x29], cl
	jmp	.label_350
.label_881:
	movabs	rdi, OFFSET FLAT:.str.95
	call	gettext
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	mov	rsp, rsp
	mov	rdx, rax
	mov	al, 0
	nop	
	call	error
.label_883:
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x29], cl
	lea	rsi, [rsi]
	jmp	.label_350
.label_882:
	lea	rdi, [rdi]
	call	abort
.label_355:
	call	abort
.label_350:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x29]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rcx + 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rcx, qword ptr [rdx + 0x18]
	movzx	esi, al
	mov	rdx, rcx
	call	append_repeated_char
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x18], rcx
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b50

	.globl homogeneous_spec_list
	.type homogeneous_spec_list, @function
homogeneous_spec_list:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rdi + 0x10], -2
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	get_next
	mov	dword ptr [rbp - 0x18], eax
	mov	rbp, rbp
	cmp	eax, -1
	jne	.label_362
	mov	byte ptr [rbp - 1], 0
	jmp	.label_360
.label_362:
	mov	rbp, rbp
	jmp	.label_361
.label_361:
	xor	eax, eax
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	get_next
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, -1
	nop	
	je	.label_359
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x18]
	je	.label_358
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
	nop	
	jmp	.label_360
.label_358:
	jmp	.label_361
.label_359:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 1
.label_360:
	nop	
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c00

	.globl get_spec_stats
	.type get_spec_stats, @function
get_spec_stats:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x40], 0
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x20], 0
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	mov	byte ptr [rdi + 0x30], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	byte ptr [rdi + 0x32], 0
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	byte ptr [rdi + 0x31], 0
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rdi]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 8]
	mov	qword ptr [rbp - 8], rdi
.label_382:
	cmp	qword ptr [rbp - 8], 0
	nop	
	je	.label_380
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], 0
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	ecx, dword ptr [rax]
	mov	eax, ecx
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rbp, rbp
	sub	rdx, 4
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x20], rdx
	ja	.label_384
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_367]]
	jmp	rcx
.label_884:
	mov	qword ptr [rbp - 0x18], 1
	jmp	.label_365
.label_885:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	movzx	ecx, byte ptr [rax + 0x11]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	movzx	edx, byte ptr [rax + 0x10]
	mov	rsp, rsp
	cmp	ecx, edx
	mov	rsp, rsp
	jl	.label_374
	nop	
	jmp	.label_366
.label_374:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.88
	movabs	rsi, OFFSET FLAT:.str.26
	lea	rsi, [rsi]
	mov	edx, 0x4ee
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.get_spec_stats
	lea	rsi, [rsi]
	call	__assert_fail
.label_366:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	movzx	ecx, byte ptr [rax + 0x11]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	movzx	edx, byte ptr [rax + 0x10]
	sub	ecx, edx
	lea	rsi, [rsi]
	add	ecx, 1
	nop	
	movsxd	rax, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	jmp	.label_365
.label_886:
	mov	rax, qword ptr [rbp - 0x30]
	mov	byte ptr [rax + 0x31], 1
	mov	dword ptr [rbp - 0x24], 0
.label_371:
	cmp	dword ptr [rbp - 0x24], 0x100
	jge	.label_378
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	edi, dword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	dl, cl
	mov	rsp, rsp
	movzx	esi, dl
	call	is_char_class_member
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_363
	jmp	.label_364
.label_363:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_364:
	mov	rbp, rbp
	jmp	.label_369
.label_369:
	mov	eax, dword ptr [rbp - 0x24]
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], eax
	lea	rsi, [rsi]
	jmp	.label_371
.label_378:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	ecx, dword ptr [rax + 0x10]
	mov	edx, ecx
	sub	edx, 6
	mov	dword ptr [rbp - 0x4c], ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x28], edx
	lea	rsi, [rsi]
	je	.label_375
	jmp	.label_383
.label_383:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], eax
	jne	.label_381
	mov	rsp, rsp
	jmp	.label_375
.label_375:
	jmp	.label_387
.label_381:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x32], 1
.label_387:
	mov	rsp, rsp
	jmp	.label_365
.label_887:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], 0
.label_386:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x34], 0x100
	nop	
	jge	.label_370
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	cl, byte ptr [rax + 0x10]
	mov	edx, dword ptr [rbp - 0x34]
	mov	sil, dl
	lea	rdi, [rdi]
	movzx	edi, cl
	movzx	esi, sil
	call	is_equiv_class_member
	test	al, 1
	jne	.label_379
	mov	rsp, rsp
	jmp	.label_373
.label_379:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_373:
	lea	rdi, [rdi]
	jmp	.label_376
.label_376:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_386
.label_370:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	byte ptr [rax + 0x30], 1
	nop	
	jmp	.label_365
.label_888:
	nop	
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x18], 0
	mov	rsp, rsp
	jbe	.label_368
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_372
.label_368:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rax + 0x20]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rax + 0x20], rcx
.label_372:
	mov	rbp, rbp
	jmp	.label_365
.label_384:
	mov	rsp, rsp
	call	abort
.label_365:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	ja	.label_385
	cmp	qword ptr [rbp - 0x58], -2
	jbe	.label_377
.label_385:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.89
	mov	rsp, rsp
	call	gettext
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_377:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_382
.label_380:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x18], rax
	add	rsp, 0x60
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405f90

	.globl card_of_complement
	.type card_of_complement, @function
card_of_complement:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x120
	xor	esi, esi
	lea	rdi, [rdi]
	mov	eax, 0x100
	mov	rsp, rsp
	mov	edx, eax
	lea	rcx, [rbp - 0x110]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x118], 0x100
	mov	rdi, rcx
	call	memset
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x10], -2
.label_388:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 8]
	call	get_next
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x114], eax
	mov	rbp, rbp
	cmp	eax, -1
	lea	rdi, [rdi]
	je	.label_389
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x114]
	mov	cl, byte ptr [rbp + rax - 0x110]
	xor	cl, 0xff
	lea	rdi, [rdi]
	and	cl, 1
	lea	rsi, [rsi]
	movzx	edx, cl
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x118]
	sub	esi, edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x118], esi
	movsxd	rax, dword ptr [rbp - 0x114]
	mov	byte ptr [rbp + rax - 0x110], 1
	jmp	.label_388
.label_389:
	mov	eax, dword ptr [rbp - 0x118]
	mov	rsp, rsp
	add	rsp, 0x120
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406070

	.globl is_char_class_member
	.type is_char_class_member, @function
is_char_class_member:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	al, sil
	mov	dword ptr [rbp - 0x44], edi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x61], al
	mov	esi, dword ptr [rbp - 0x44]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rdx, rcx
	sub	rdx, 0xb
	mov	qword ptr [rbp - 0x40], rcx
	mov	qword ptr [rbp - 0x30], rdx
	ja	.label_392
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_391]]
	mov	rbp, rbp
	jmp	rcx
	.section	.text
	.align	16
	#Procedure 0x406380

	.globl is_equiv_class_member
	.type is_equiv_class_member, @function
is_equiv_class_member:
	push	rbp
	mov	rbp, rsp
	nop	
	mov	al, sil
	mov	rbp, rbp
	mov	cl, dil
	mov	byte ptr [rbp - 1], cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 2], al
	mov	rsp, rsp
	movzx	esi, byte ptr [rbp - 1]
	movzx	edi, byte ptr [rbp - 2]
	lea	rsi, [rsi]
	cmp	esi, edi
	mov	rsp, rsp
	sete	al
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4063c0
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
	#Procedure 0x4063f0
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
	#Procedure 0x406420

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
	je	.label_393
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_394
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_393
.label_394:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_2
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_397
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
	jmp	.label_396
.label_397:
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
.label_396:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_393:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_395
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_395:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406550

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 0x14], edi
	nop	
	mov	qword ptr [rbp - 8], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	dword ptr [rbp - 0x18], ecx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x18]
	call	posix_fadvise
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406590

	.globl fadvise
	.type fadvise, @function
fadvise:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_398
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	fileno
	xor	ecx, ecx
	mov	edi, ecx
	mov	ecx, dword ptr [rbp - 0x14]
	mov	qword ptr [rbp - 8], rdi
	mov	edi, eax
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	call	fdadvise
.label_398:
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x4065f0

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
	jne	.label_401
	movabs	rdi, OFFSET FLAT:.str_4
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	call	abort
.label_401:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_399
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_403
.label_399:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_403:
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
	jl	.label_402
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
	jne	.label_402
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.2_0
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
	jne	.label_400
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_400:
	jmp	.label_402
.label_402:
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
	#Procedure 0x406770
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
	je	.label_404
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_405
.label_404:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_405
.label_405:
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
	#Procedure 0x406820
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
	je	.label_406
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_407
.label_406:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_407
.label_407:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406880
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
	je	.label_408
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_409
.label_408:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_409
.label_409:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4068e0

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
	je	.label_410
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jmp	.label_411
.label_410:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_411
.label_411:
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
	#Procedure 0x4069e0
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
	jne	.label_412
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
.label_412:
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
	#Procedure 0x406a40

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
	jne	.label_413
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
.label_413:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_415
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_414
.label_415:
	call	abort
.label_414:
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
	#Procedure 0x406ae0
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
	je	.label_416
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_417
.label_416:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_417
.label_417:
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
	#Procedure 0x406be0

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
.label_433:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0x88], rcx
	mov	qword ptr [rbp - 0x130], rdx
	ja	.label_590
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_474]]
	jmp	rcx
.label_852:
	mov	dword ptr [rbp - 0x58], 5
	mov	byte ptr [rbp - 0x3e], 1
.label_851:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_482
	jmp	.label_486
.label_486:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_487
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x22
.label_487:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_482
.label_482:
	movabs	rax, OFFSET FLAT:.str.10
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	jmp	.label_453
.label_853:
	nop	
	mov	byte ptr [rbp - 0x89], 1
	nop	
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_453
.label_854:
	cmp	dword ptr [rbp - 0x58], 0xa
	je	.label_510
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
.label_510:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_524
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x108], rax
.label_549:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_534
	jmp	.label_535
.label_535:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_536
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rdx + rax], cl
.label_536:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_533
.label_533:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_549
.label_534:
	mov	rbp, rbp
	jmp	.label_524
.label_524:
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
	jmp	.label_453
.label_849:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x89], 1
.label_848:
	mov	byte ptr [rbp - 0x3e], 1
.label_850:
	nop	
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_568
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
.label_568:
	jmp	.label_569
.label_569:
	mov	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_570
	jmp	.label_575
.label_575:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_576
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_576:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_570
.label_570:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	mov	rsp, rsp
	jmp	.label_453
.label_847:
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_453
.label_590:
	call	abort
.label_453:
	mov	qword ptr [rbp - 0xd8], 0
.label_595:
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_593
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
	jmp	.label_594
.label_593:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], edx
.label_594:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_610
	mov	rbp, rbp
	jmp	.label_618
.label_610:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa6], 0
	nop	
	mov	byte ptr [rbp - 0x3f], 0
	mov	byte ptr [rbp - 0x91], 0
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_420
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	je	.label_420
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_420
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x68], -1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jne	.label_436
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xd0]
	jae	.label_436
	mov	rdi, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_451
.label_436:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xc8], rax
.label_451:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_420
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
	jne	.label_420
	nop	
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	je	.label_479
	jmp	.label_428
.label_479:
	nop	
	mov	byte ptr [rbp - 0xa6], 1
.label_420:
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
	ja	.label_485
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_496]]
	nop	
	jmp	rcx
.label_857:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	je	.label_501
	mov	rsp, rsp
	jmp	.label_505
.label_505:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_508
	jmp	.label_428
.label_508:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3f], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_506
	mov	rbp, rbp
	test	byte ptr [rbp - 0x42], 1
	mov	rbp, rbp
	jne	.label_506
	nop	
	jmp	.label_515
.label_515:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_518
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_518:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_525
.label_525:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_531
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_531:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_538
.label_538:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_541
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_541:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_506:
	lea	rsi, [rsi]
	jmp	.label_552
.label_552:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_553
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_553:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_606
.label_606:
	cmp	dword ptr [rbp - 0x58], 2
	je	.label_488
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_488
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x150]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_488
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_488
	nop	
	jmp	.label_580
.label_580:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_581
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x30
.label_581:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_607
.label_607:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_437
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_437:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_488
.label_488:
	mov	byte ptr [rbp - 0x3d], 0x30
	nop	
	jmp	.label_596
.label_501:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_527
	mov	rbp, rbp
	jmp	.label_556
.label_527:
	jmp	.label_596
.label_596:
	jmp	.label_463
.label_868:
	mov	eax, dword ptr [rbp - 0x58]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0x78], eax
	nop	
	mov	dword ptr [rbp - 0x90], ecx
	mov	rsp, rsp
	je	.label_608
	mov	rbp, rbp
	jmp	.label_614
.label_614:
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb4], eax
	lea	rsi, [rsi]
	je	.label_616
	jmp	.label_424
.label_608:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_426
	jmp	.label_428
.label_426:
	jmp	.label_430
.label_616:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 4
	cmp	eax, 0
	je	.label_431
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	jae	.label_431
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_431
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
	je	.label_459
	nop	
	jmp	.label_458
.label_458:
	nop	
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	jb	.label_459
	jmp	.label_467
.label_467:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x144]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_459
	jmp	.label_475
.label_475:
	mov	eax, dword ptr [rbp - 0x144]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x128], eax
	je	.label_459
	jmp	.label_481
.label_481:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0xf4], eax
	lea	rdi, [rdi]
	ja	.label_454
	jmp	.label_459
.label_459:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_490
	jmp	.label_428
.label_490:
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
	jae	.label_493
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_493:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_514
.label_514:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_516
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_516:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_520
.label_520:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_528
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_528:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_573
.label_573:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_567
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_567:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_543
.label_454:
	jmp	.label_543
.label_543:
	jmp	.label_431
.label_431:
	jmp	.label_430
.label_424:
	jmp	.label_430
.label_430:
	jmp	.label_463
.label_858:
	mov	byte ptr [rbp - 0xb6], 0x61
	jmp	.label_555
.label_859:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb6], 0x62
	jmp	.label_555
.label_863:
	mov	byte ptr [rbp - 0xb6], 0x66
	lea	rdi, [rdi]
	jmp	.label_555
.label_861:
	mov	byte ptr [rbp - 0xb6], 0x6e
	mov	rbp, rbp
	jmp	.label_441
.label_864:
	mov	byte ptr [rbp - 0xb6], 0x72
	mov	rbp, rbp
	jmp	.label_441
.label_860:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb6], 0x74
	jmp	.label_441
.label_862:
	mov	byte ptr [rbp - 0xb6], 0x76
	jmp	.label_555
.label_869:
	mov	al, byte ptr [rbp - 0x3d]
	nop	
	mov	byte ptr [rbp - 0xb6], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_499
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_526
	nop	
	jmp	.label_428
.label_526:
	lea	rsi, [rsi]
	jmp	.label_460
.label_499:
	test	byte ptr [rbp - 0x89], 1
	je	.label_558
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_558
	nop	
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rbp, rbp
	je	.label_558
	jmp	.label_460
.label_558:
	jmp	.label_441
.label_441:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	jne	.label_587
	test	byte ptr [rbp - 0x3e], 1
	je	.label_587
	jmp	.label_428
.label_587:
	mov	rsp, rsp
	jmp	.label_555
.label_555:
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_591
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb6]
	mov	byte ptr [rbp - 0x3d], al
	jmp	.label_497
.label_591:
	jmp	.label_463
.label_870:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_597
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x150]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_566
	jmp	.label_605
.label_597:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 1
	je	.label_566
.label_605:
	nop	
	jmp	.label_463
.label_566:
	jmp	.label_611
.label_611:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rbp, rbp
	je	.label_612
	lea	rsi, [rsi]
	jmp	.label_463
.label_612:
	nop	
	jmp	.label_418
.label_418:
	mov	byte ptr [rbp - 0x91], 1
.label_865:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_423
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_423
	jmp	.label_428
.label_423:
	lea	rsi, [rsi]
	jmp	.label_463
.label_867:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa5], 1
	mov	byte ptr [rbp - 0x91], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_432
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_439
	jmp	.label_428
.label_439:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_443
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x140], 0
	lea	rdi, [rdi]
	jne	.label_443
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x140], rax
	mov	qword ptr [rbp - 0x28], 0
.label_443:
	jmp	.label_452
.label_452:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_455
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_455:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_464
.label_464:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	jae	.label_470
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_470:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_480
.label_480:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_484
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_484:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_432:
	lea	rsi, [rsi]
	jmp	.label_463
.label_866:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 1
	jmp	.label_463
.label_485:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xb5], 1
	je	.label_502
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
	jmp	.label_442
.label_502:
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
	jne	.label_599
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x150]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
.label_599:
	jmp	.label_537
.label_537:
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
	jne	.label_551
	jmp	.label_530
.label_551:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], -1
	jne	.label_557
	mov	byte ptr [rbp - 0x40], 0
	jmp	.label_530
.label_557:
	nop	
	cmp	qword ptr [rbp - 0x10], -2
	jne	.label_562
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_579:
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
	jae	.label_523
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0x110]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x41], sil
.label_523:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_544
	jmp	.label_578
.label_544:
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_579
.label_578:
	jmp	.label_530
.label_562:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_435
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_435
	mov	qword ptr [rbp - 0xe8], 1
.label_429:
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_588
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
	jb	.label_422
	jmp	.label_602
.label_602:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x148], eax
	je	.label_422
	jmp	.label_609
.label_609:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	je	.label_422
	jmp	.label_615
.label_615:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x48], eax
	jne	.label_617
	mov	rsp, rsp
	jmp	.label_422
.label_422:
	mov	rsp, rsp
	jmp	.label_428
.label_617:
	jmp	.label_427
.label_427:
	mov	rsp, rsp
	jmp	.label_461
.label_461:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe8]
	add	rax, 1
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_429
.label_588:
	mov	rbp, rbp
	jmp	.label_435
.label_435:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x74]
	call	iswprint
	cmp	eax, 0
	jne	.label_577
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_577:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_440
.label_440:
	lea	rsi, [rsi]
	jmp	.label_447
.label_447:
	jmp	.label_449
.label_449:
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
	jne	.label_537
.label_530:
	jmp	.label_442
.label_442:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x40]
	and	dl, 1
	mov	byte ptr [rbp - 0x91], dl
	cmp	rcx, qword ptr [rbp - 0x110]
	nop	
	jb	.label_462
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_473
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	mov	rsp, rsp
	jne	.label_473
.label_462:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x110]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_445:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	nop	
	je	.label_489
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	jne	.label_489
	jmp	.label_491
.label_491:
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_492
	jmp	.label_428
.label_492:
	mov	byte ptr [rbp - 0x3f], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_495
	test	byte ptr [rbp - 0x42], 1
	jne	.label_495
	lea	rdi, [rdi]
	jmp	.label_503
.label_503:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_504
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_504:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_511
.label_511:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_547
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x24
.label_547:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_521
.label_521:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_542
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_542:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_495:
	jmp	.label_539
.label_539:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_540
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_540:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_545
.label_545:
	jmp	.label_548
.label_548:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_550
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
.label_550:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_561
.label_561:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_446
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
.label_446:
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
	jmp	.label_571
.label_489:
	test	byte ptr [rbp - 0xa6], 1
	lea	rsi, [rsi]
	je	.label_529
	lea	rdi, [rdi]
	jmp	.label_582
.label_582:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_584
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x5c
.label_584:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa6], 0
.label_529:
	nop	
	jmp	.label_571
.label_571:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xd8]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_592
	jmp	.label_512
.label_592:
	lea	rsi, [rsi]
	jmp	.label_598
.label_598:
	test	byte ptr [rbp - 0x42], 1
	je	.label_600
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_600
	lea	rsi, [rsi]
	jmp	.label_603
.label_603:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_604
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_604:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_613
.label_613:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_421
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_421:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_600:
	nop	
	jmp	.label_434
.label_434:
	mov	rsp, rsp
	jmp	.label_513
.label_513:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_438
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x3d]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_438:
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
	jmp	.label_445
.label_512:
	mov	rsp, rsp
	jmp	.label_460
.label_473:
	lea	rsi, [rsi]
	jmp	.label_463
.label_463:
	test	byte ptr [rbp - 0x89], 1
	mov	rbp, rbp
	je	.label_465
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_468
.label_465:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_472
.label_468:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x100], 0
	nop	
	je	.label_472
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
	jne	.label_477
.label_472:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xa6], 1
	lea	rdi, [rdi]
	jne	.label_477
	mov	rsp, rsp
	jmp	.label_460
.label_477:
	nop	
	jmp	.label_497
.label_497:
	jmp	.label_498
.label_498:
	test	byte ptr [rbp - 0x3e], 1
	mov	rbp, rbp
	je	.label_444
	jmp	.label_428
.label_444:
	mov	byte ptr [rbp - 0x3f], 1
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_471
	test	byte ptr [rbp - 0x42], 1
	lea	rdi, [rdi]
	jne	.label_471
	lea	rdi, [rdi]
	jmp	.label_509
.label_509:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_457
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_457:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_519
.label_519:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_522
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_522:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_532
.label_532:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_456
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_456:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_471:
	jmp	.label_572
.label_572:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_546
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_546:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_554
.label_554:
	nop	
	jmp	.label_460
.label_460:
	jmp	.label_559
.label_559:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x42], 1
	je	.label_560
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_560
	lea	rdi, [rdi]
	jmp	.label_563
.label_563:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_565
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_565:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_500
.label_500:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_574
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_574:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_560:
	jmp	.label_583
.label_583:
	nop	
	jmp	.label_585
.label_585:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_586
	mov	al, byte ptr [rbp - 0x3d]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_586:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x91], 1
	jne	.label_589
	mov	byte ptr [rbp - 0xb7], 0
.label_589:
	mov	rbp, rbp
	jmp	.label_556
.label_556:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_595
.label_618:
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	jne	.label_601
	cmp	dword ptr [rbp - 0x58], 2
	nop	
	jne	.label_601
	mov	rbp, rbp
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_601
	nop	
	jmp	.label_428
.label_601:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_419
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_419
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xa5], 1
	je	.label_419
	test	byte ptr [rbp - 0xb7], 1
	je	.label_425
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
	jmp	.label_448
.label_425:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jne	.label_450
	cmp	qword ptr [rbp - 0x140], 0
	lea	rsi, [rsi]
	je	.label_450
	nop	
	mov	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], 0
	jmp	.label_433
.label_450:
	jmp	.label_466
.label_466:
	mov	rbp, rbp
	jmp	.label_419
.label_419:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x108], 0
	je	.label_469
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_469
	mov	rbp, rbp
	jmp	.label_476
.label_476:
	mov	rax, qword ptr [rbp - 0x108]
	cmp	byte ptr [rax], 0
	je	.label_478
	lea	rdi, [rdi]
	jmp	.label_564
.label_564:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_483
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_483:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_494
.label_494:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_476
.label_478:
	jmp	.label_469
.label_469:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_507
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0
.label_507:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_448
.label_428:
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_517
	mov	rsp, rsp
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_517
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], 4
.label_517:
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
.label_448:
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
	#Procedure 0x408680
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
	#Procedure 0x4086f0

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
	je	.label_619
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_620
.label_619:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_620
.label_620:
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
	je	.label_621
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
.label_621:
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
	#Procedure 0x4088c0
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
.label_626:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_625
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
	jmp	.label_626
.label_625:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_624
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_622]],  rax
.label_624:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_623
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_623:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4089d0

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
	#Procedure 0x408a20

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
	jge	.label_628
	call	abort
.label_628:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 0x64]
	jg	.label_631
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
	jge	.label_632
	call	xalloc_die
.label_632:
	test	byte ptr [rbp - 0x51], 1
	je	.label_633
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_629
.label_633:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_629:
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
	je	.label_627
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_622]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_627:
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
.label_631:
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
	ja	.label_634
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
	je	.label_630
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	free
.label_630:
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
.label_634:
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
	#Procedure 0x408d50

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
	#Procedure 0x408d90
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
	#Procedure 0x408dc0
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
	#Procedure 0x408e00

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
	#Procedure 0x408e60

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
	jne	.label_635
	call	abort
.label_635:
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
	#Procedure 0x408f00

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
	#Procedure 0x408f70
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
	#Procedure 0x408fb0
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
	#Procedure 0x408ff0

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
	#Procedure 0x4090a0

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
	#Procedure 0x4090e0

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
	#Procedure 0x409110
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
	#Procedure 0x409150
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
	#Procedure 0x409230

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
	#Procedure 0x409280

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
	#Procedure 0x409320
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
	#Procedure 0x409370
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
	#Procedure 0x4093d0

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
	#Procedure 0x409410
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
	#Procedure 0x409450

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
	#Procedure 0x409490

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
	#Procedure 0x4094d0

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
	je	.label_639
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_636
.label_639:
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
	jne	.label_637
	movabs	rax, OFFSET FLAT:.str.15
	movabs	rcx, OFFSET FLAT:.str.14
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_636
.label_637:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_638
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
	jmp	.label_636
.label_638:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
.label_636:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409610

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0x1c], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdx
.label_647:
	nop	
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	call	read
	xor	edi, edi
	lea	rsi, [rsi]
	mov	edx, edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x28]
	jg	.label_640
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_646
.label_640:
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 4
	jne	.label_641
	lea	rdi, [rdi]
	jmp	.label_647
.label_641:
	call	__errno_location
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0x16
	nop	
	jne	.label_644
	mov	eax, 0x7ff00000
	mov	ecx, eax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	jae	.label_644
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0x7ff00000
	mov	rsp, rsp
	jmp	.label_645
.label_644:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	jmp	.label_646
.label_645:
	jmp	.label_643
.label_643:
	jmp	.label_642
.label_642:
	mov	rsp, rsp
	jmp	.label_647
.label_646:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409700

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
	je	.label_648
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
	jmp	.label_651
.label_648:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.1_2
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0x78]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x114], eax
.label_651:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	eax, OFFSET FLAT:.str.2_1
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
	ja	.label_652
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_650]]
	jmp	rcx
.label_905:
	jmp	.label_649
.label_906:
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
	jmp	.label_649
.label_907:
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
	jmp	.label_649
.label_908:
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
	jmp	.label_649
.label_909:
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
	jmp	.label_649
.label_910:
	nop	
	movabs	rdi, OFFSET FLAT:.str.8_0
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
	jmp	.label_649
.label_911:
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
	jmp	.label_649
.label_912:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.10_0
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
	jmp	.label_649
.label_913:
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
	jmp	.label_649
.label_914:
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
	jmp	.label_649
.label_652:
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
.label_649:
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
	#Procedure 0x409f40
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
.label_653:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_654
	mov	rbp, rbp
	jmp	.label_655
.label_655:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_653
.label_654:
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
	#Procedure 0x409ff0

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
.label_660:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x40], 0xa
	mov	byte ptr [rbp - 0x11], cl
	jae	.label_656
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], ecx
	ja	.label_662
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
	jmp	.label_661
.label_662:
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x30], rdx
.label_661:
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
.label_656:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_659
	mov	rsp, rsp
	jmp	.label_657
.label_659:
	jmp	.label_658
.label_658:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_660
.label_657:
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
	#Procedure 0x40a150

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
	je	.label_663
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
.label_663:
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
	#Procedure 0x40a310
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
	movabs	rsi, OFFSET FLAT:.str.15_0
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
	#Procedure 0x40a3c0

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
	jae	.label_664
	mov	rbp, rbp
	call	xalloc_die
.label_664:
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
	#Procedure 0x40a420

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
	jne	.label_665
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_665
	lea	rdi, [rdi]
	call	xalloc_die
.label_665:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a480
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
	jae	.label_666
	mov	rsp, rsp
	call	xalloc_die
.label_666:
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
	#Procedure 0x40a500

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
	jne	.label_667
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_667
	mov	rdi, qword ptr [rbp - 8]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_669
.label_667:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	realloc
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jne	.label_668
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_668
	lea	rsi, [rsi]
	call	xalloc_die
.label_668:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
.label_669:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a5b0

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
	jne	.label_670
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_672
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
.label_672:
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
	jae	.label_674
	call	xalloc_die
.label_674:
	lea	rsi, [rsi]
	jmp	.label_673
.label_670:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_671
	call	xalloc_die
.label_671:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_673:
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
	#Procedure 0x40a6e0

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
	#Procedure 0x40a710
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
	#Procedure 0x40a750
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
	#Procedure 0x40a7a0

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
	jb	.label_675
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	calloc
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_676
.label_675:
	lea	rsi, [rsi]
	call	xalloc_die
.label_676:
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
	#Procedure 0x40a810

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
	#Procedure 0x40a860
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
	#Procedure 0x40a8c0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.1_3
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
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a920

	.globl xset_binary_mode_error
	.type xset_binary_mode_error, @function
xset_binary_mode_error:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a930

	.globl xset_binary_mode
	.type xset_binary_mode, @function
xset_binary_mode:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], edi
	nop	
	mov	dword ptr [rbp - 4], esi
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 4]
	mov	rbp, rbp
	call	set_binary_mode
	mov	rsp, rsp
	cmp	eax, 0
	nop	
	jge	.label_677
	call	xset_binary_mode_error
.label_677:
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a970

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x100
	xor	eax, eax
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], edx
	mov	qword ptr [rbp - 0xa8], rcx
	nop	
	mov	qword ptr [rbp - 0xd8], r8
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x60], 0
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x54]
	jg	.label_720
	cmp	dword ptr [rbp - 0x54], 0x24
	lea	rdi, [rdi]
	jg	.label_720
	jmp	.label_715
.label_720:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str_6
	movabs	rsi, OFFSET FLAT:.str.1_4
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
.label_715:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_738
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	jmp	.label_681
.label_738:
	lea	rax, [rbp - 0x80]
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_681
.label_681:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xf0], rax
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x78], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x91], cl
.label_716:
	nop	
	movzx	eax, byte ptr [rbp - 0x91]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rcx
	nop	
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x90]
	movzx	edx, word ptr [rax + rcx*2]
	mov	rsp, rsp
	and	edx, 0x2000
	mov	rsp, rsp
	cmp	edx, 0
	je	.label_702
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x91], dl
	lea	rsi, [rsi]
	jmp	.label_716
.label_702:
	movzx	eax, byte ptr [rbp - 0x91]
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	jne	.label_727
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xf4], 4
	lea	rsi, [rsi]
	jmp	.label_692
.label_727:
	nop	
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	edx, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	call	strtoumax
	mov	qword ptr [rbp - 0xc8], rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	jne	.label_742
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rsp, rsp
	je	.label_683
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_683
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	nop	
	je	.label_683
	mov	qword ptr [rbp - 0xc8], 1
	jmp	.label_732
.label_683:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xf4], 4
	jmp	.label_692
.label_732:
	lea	rdi, [rdi]
	jmp	.label_719
.label_742:
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0
	je	.label_724
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	lea	rdi, [rdi]
	je	.label_708
	nop	
	mov	dword ptr [rbp - 0xf4], 4
	jmp	.label_692
.label_708:
	mov	dword ptr [rbp - 0x60], 1
.label_724:
	jmp	.label_719
.label_719:
	nop	
	cmp	qword ptr [rbp - 0xd8], 0
	jne	.label_735
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x60]
	mov	dword ptr [rbp - 0xf4], edx
	lea	rdi, [rdi]
	jmp	.label_692
.label_735:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_684
	mov	dword ptr [rbp - 0x64], 0x400
	mov	dword ptr [rbp - 0xd0], 1
	mov	rdi, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	nop	
	movsx	esi, byte ptr [rax]
	nop	
	call	strchr
	cmp	rax, 0
	jne	.label_700
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	or	edx, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xf4], edx
	mov	rbp, rbp
	jmp	.label_692
.label_700:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x9c], ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x38], edx
	nop	
	je	.label_680
	jmp	.label_729
.label_729:
	nop	
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0xdc], eax
	lea	rdi, [rdi]
	je	.label_680
	nop	
	jmp	.label_717
.label_717:
	mov	eax, dword ptr [rbp - 0x9c]
	nop	
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_680
	nop	
	jmp	.label_679
.label_679:
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rsi, [rsi]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x34], eax
	mov	rbp, rbp
	je	.label_680
	lea	rsi, [rsi]
	jmp	.label_688
.label_688:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	je	.label_680
	jmp	.label_693
.label_693:
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_680
	jmp	.label_699
.label_699:
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	add	eax, -0x59
	mov	rbp, rbp
	sub	eax, 2
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], eax
	lea	rdi, [rdi]
	jb	.label_680
	mov	rsp, rsp
	jmp	.label_711
.label_711:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_680
	jmp	.label_731
.label_731:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9c]
	mov	rbp, rbp
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xf8], eax
	lea	rdi, [rdi]
	je	.label_680
	mov	rsp, rsp
	jmp	.label_730
.label_730:
	mov	eax, dword ptr [rbp - 0x9c]
	mov	rbp, rbp
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x44], eax
	nop	
	je	.label_680
	jmp	.label_737
.label_737:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 0x74
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	jne	.label_726
	jmp	.label_680
.label_680:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0xd8]
	call	strchr
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_686
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	rsp, rsp
	mov	edx, ecx
	sub	edx, 0x42
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc0], edx
	mov	rsp, rsp
	je	.label_689
	lea	rsi, [rsi]
	jmp	.label_698
.label_698:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0x88], eax
	je	.label_689
	jmp	.label_705
.label_705:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	sub	eax, 0x69
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xbc], eax
	lea	rdi, [rdi]
	jne	.label_707
	lea	rsi, [rsi]
	jmp	.label_718
.label_718:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 2]
	lea	rsi, [rsi]
	cmp	ecx, 0x42
	jne	.label_704
	mov	eax, dword ptr [rbp - 0xd0]
	nop	
	add	eax, 2
	mov	dword ptr [rbp - 0xd0], eax
.label_704:
	jmp	.label_707
.label_689:
	mov	dword ptr [rbp - 0x64], 0x3e8
	mov	eax, dword ptr [rbp - 0xd0]
	add	eax, 1
	mov	dword ptr [rbp - 0xd0], eax
.label_707:
	jmp	.label_686
.label_686:
	nop	
	jmp	.label_726
.label_726:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rax, qword ptr [rax]
	nop	
	movsx	ecx, byte ptr [rax]
	nop	
	mov	edx, ecx
	sub	edx, 0x42
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x6c], ecx
	mov	dword ptr [rbp - 0x68], edx
	mov	rbp, rbp
	je	.label_740
	jmp	.label_728
.label_728:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x45
	nop	
	mov	dword ptr [rbp - 0x98], eax
	je	.label_687
	jmp	.label_690
.label_690:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x47
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	je	.label_706
	jmp	.label_695
.label_695:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	sub	eax, 0x4b
	nop	
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	je	.label_697
	nop	
	jmp	.label_701
.label_701:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rdi, [rdi]
	sub	eax, 0x4d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xfc], eax
	je	.label_694
	nop	
	jmp	.label_713
.label_713:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_710
	mov	rsp, rsp
	jmp	.label_723
.label_723:
	nop	
	mov	eax, dword ptr [rbp - 0x6c]
	nop	
	sub	eax, 0x54
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	nop	
	je	.label_709
	jmp	.label_725
.label_725:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x59
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x20], eax
	je	.label_691
	mov	rbp, rbp
	jmp	.label_733
.label_733:
	mov	eax, dword ptr [rbp - 0x6c]
	nop	
	sub	eax, 0x5a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb0], eax
	je	.label_734
	jmp	.label_743
.label_743:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x62
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_678
	jmp	.label_714
.label_714:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x58], eax
	je	.label_739
	jmp	.label_736
.label_736:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x67
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_706
	jmp	.label_696
.label_696:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x6b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_697
	jmp	.label_703
.label_703:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xac], eax
	je	.label_694
	jmp	.label_741
.label_741:
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x30], eax
	je	.label_709
	jmp	.label_685
.label_685:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0x24], eax
	je	.label_721
	jmp	.label_722
.label_678:
	lea	rdi, [rbp - 0xc8]
	mov	esi, 0x200
	call	bkm_scale
	nop	
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_682
.label_740:
	lea	rdi, [rbp - 0xc8]
	mov	esi, 0x400
	lea	rdi, [rdi]
	call	bkm_scale
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_682
.label_739:
	mov	dword ptr [rbp - 0x84], 0
	jmp	.label_682
.label_687:
	nop	
	lea	rdi, [rbp - 0xc8]
	mov	edx, 6
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_682
.label_706:
	lea	rdi, [rbp - 0xc8]
	mov	edx, 3
	nop	
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_682
.label_697:
	lea	rdi, [rbp - 0xc8]
	mov	edx, 1
	nop	
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_682
.label_694:
	mov	rbp, rbp
	lea	rdi, [rbp - 0xc8]
	mov	edx, 2
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x64]
	mov	rbp, rbp
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_682
.label_710:
	lea	rdi, [rbp - 0xc8]
	mov	edx, 5
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x64]
	lea	rsi, [rsi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	mov	rsp, rsp
	jmp	.label_682
.label_709:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	edx, 4
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	jmp	.label_682
.label_721:
	lea	rdi, [rbp - 0xc8]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_682
.label_691:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xc8]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_682
.label_734:
	mov	rsp, rsp
	lea	rdi, [rbp - 0xc8]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_682
.label_722:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0xa8]
	nop	
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x60]
	mov	rbp, rbp
	or	edx, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xf4], edx
	jmp	.label_692
.label_682:
	mov	eax, dword ptr [rbp - 0x84]
	or	eax, dword ptr [rbp - 0x60]
	mov	dword ptr [rbp - 0x60], eax
	mov	eax, dword ptr [rbp - 0xd0]
	mov	rcx, qword ptr [rbp - 0xf0]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	cmp	byte ptr [rcx], 0
	je	.label_712
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x60]
	or	eax, 2
	nop	
	mov	dword ptr [rbp - 0x60], eax
.label_712:
	jmp	.label_684
.label_684:
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x60]
	nop	
	mov	dword ptr [rbp - 0xf4], edx
.label_692:
	mov	eax, dword ptr [rbp - 0xf4]
	add	rsp, 0x100
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b300

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], esi
	mov	rbp, rbp
	movsxd	rdi, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, esi
	mov	rsp, rsp
	div	rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi]
	jae	.label_744
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax], -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], 1
	jmp	.label_745
.label_744:
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 8]
	imul	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 0x10], 0
.label_745:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x10]
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b380

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	dword ptr [rbp - 4], esi
	mov	dword ptr [rbp - 8], edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], 0
.label_746:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	add	ecx, -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], ecx
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	je	.label_747
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	call	bkm_scale
	mov	rsp, rsp
	or	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_746
.label_747:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b400

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
	jne	.label_748
	lea	rax, [rbp - 0x14]
	mov	qword ptr [rbp - 0x10], rax
.label_748:
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
	ja	.label_749
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_749
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_749
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
	jmp	.label_750
.label_749:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_750:
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
	#Procedure 0x40b4f0

	.globl __gl_setmode
	.type __gl_setmode, @function
__gl_setmode:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b510

	.globl __gl_setmode_check
	.type __gl_setmode_check, @function
__gl_setmode_check:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b530

	.globl set_binary_mode
	.type set_binary_mode, @function
set_binary_mode:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], esi
	mov	edi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	__gl_setmode_check
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], eax
	cmp	dword ptr [rbp - 8], 0
	je	.label_751
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_752
.label_751:
	mov	edi, dword ptr [rbp - 0xc]
	nop	
	mov	esi, dword ptr [rbp - 0x10]
	call	__gl_setmode
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_752:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b590

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
	jne	.label_753
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_756
.label_753:
	mov	rbp, rbp
	jmp	.label_754
.label_754:
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
	jne	.label_755
	jmp	.label_757
.label_755:
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
	je	.label_754
.label_757:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x1a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_756:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b680

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
	jne	.label_760
	test	byte ptr [rbp - 0x15], 1
	je	.label_759
	test	byte ptr [rbp - 0x16], 1
	lea	rsi, [rsi]
	jne	.label_760
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_759
.label_760:
	nop	
	test	byte ptr [rbp - 0x15], 1
	mov	rsp, rsp
	jne	.label_758
	call	__errno_location
	mov	dword ptr [rax], 0
.label_758:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0xffffffff
	jmp	.label_761
.label_759:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], 0
.label_761:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b760

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
	je	.label_763
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_1
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_764
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:.str.1_5
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_762
.label_764:
	mov	byte ptr [rbp - 0xd], 0
.label_762:
	jmp	.label_763
.label_763:
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
	#Procedure 0x40b800

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
	jne	.label_766
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 8], rax
.label_766:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_765
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.1_6
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_765:
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
	#Procedure 0x40b880

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
	jge	.label_770
	mov	rdi, qword ptr [rbp - 8]
	call	fclose
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	jmp	.label_768
.label_770:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_767
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
	je	.label_769
.label_767:
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_769
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_769:
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_771
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
.label_771:
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x10], eax
.label_768:
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
	#Procedure 0x40b9a0

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
	je	.label_772
	mov	rdi, qword ptr [rbp - 8]
	call	__freading
	cmp	eax, 0
	jne	.label_773
.label_772:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_774
.label_773:
	mov	rdi, qword ptr [rbp - 8]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
.label_774:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ba10

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
	je	.label_775
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
.label_775:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ba70

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
	jne	.label_776
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_776
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_776
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
	jne	.label_778
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	jmp	.label_777
.label_778:
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
	jmp	.label_777
.label_776:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
.label_777:
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
	#Procedure 0x40bb80

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
	ja	.label_779
	jmp	.label_781
.label_781:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_780
.label_779:
	lea	rsi, [rsi]
	jmp	.label_780
.label_780:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bbe0
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
	jb	.label_782
	jmp	.label_783
.label_783:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, -0x41
	lea	rdi, [rdi]
	sub	eax, 0x1a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	jb	.label_782
	nop	
	jmp	.label_786
.label_786:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, -0x61
	sub	eax, 0x19
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], eax
	mov	rbp, rbp
	ja	.label_785
	jmp	.label_782
.label_782:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x15], 1
	lea	rsi, [rsi]
	jmp	.label_784
.label_785:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x15], 0
.label_784:
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
	#Procedure 0x40bc70
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
	jb	.label_787
	nop	
	jmp	.label_788
.label_788:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	add	eax, -0x61
	nop	
	sub	eax, 0x19
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	mov	rsp, rsp
	ja	.label_789
	lea	rdi, [rdi]
	jmp	.label_787
.label_787:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	jmp	.label_790
.label_789:
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
.label_790:
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
	#Procedure 0x40bcf0
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
	ja	.label_791
	mov	rsp, rsp
	jmp	.label_793
.label_793:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_792
.label_791:
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 0
.label_792:
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
	#Procedure 0x40bd40
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
	je	.label_794
	cmp	dword ptr [rbp - 4], 9
	lea	rsi, [rsi]
	sete	al
	mov	byte ptr [rbp - 5], al
.label_794:
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
	#Procedure 0x40bd90
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
	jb	.label_795
	nop	
	jmp	.label_796
.label_796:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0xc], eax
	jne	.label_797
	lea	rsi, [rsi]
	jmp	.label_795
.label_795:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_798
.label_797:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 5], 0
.label_798:
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
	#Procedure 0x40be00
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
	ja	.label_800
	jmp	.label_799
.label_799:
	mov	byte ptr [rbp - 5], 1
	lea	rdi, [rdi]
	jmp	.label_801
.label_800:
	mov	byte ptr [rbp - 5], 0
.label_801:
	mov	al, byte ptr [rbp - 5]
	mov	rsp, rsp
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40be50
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
	ja	.label_802
	lea	rsi, [rsi]
	jmp	.label_803
.label_803:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_804
.label_802:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], 0
.label_804:
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
	#Procedure 0x40bea0
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
	ja	.label_805
	jmp	.label_806
.label_806:
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_807
.label_805:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
.label_807:
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
	#Procedure 0x40bef0
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
	ja	.label_808
	jmp	.label_810
.label_810:
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 1
	jmp	.label_809
.label_808:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], 0
.label_809:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bf40
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
	jb	.label_811
	jmp	.label_812
.label_812:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	add	eax, -0x3a
	sub	eax, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	jb	.label_811
	nop	
	jmp	.label_816
.label_816:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	eax, -0x5b
	mov	rsp, rsp
	sub	eax, 6
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_811
	jmp	.label_813
.label_813:
	mov	eax, dword ptr [rbp - 4]
	add	eax, -0x7b
	mov	rsp, rsp
	sub	eax, 3
	mov	dword ptr [rbp - 0xc], eax
	ja	.label_814
	mov	rsp, rsp
	jmp	.label_811
.label_811:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_815
.label_814:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], 0
.label_815:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bff0
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
	jb	.label_817
	mov	rbp, rbp
	jmp	.label_818
.label_818:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	jne	.label_820
	mov	rsp, rsp
	jmp	.label_817
.label_817:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_819
.label_820:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
.label_819:
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
	#Procedure 0x40c060
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
	ja	.label_821
	jmp	.label_823
.label_823:
	mov	byte ptr [rbp - 5], 1
	nop	
	jmp	.label_822
.label_821:
	mov	byte ptr [rbp - 5], 0
.label_822:
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
	#Procedure 0x40c0b0
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
	jb	.label_824
	lea	rdi, [rdi]
	jmp	.label_828
.label_828:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	eax, -0x41
	mov	rbp, rbp
	sub	eax, 6
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jb	.label_824
	jmp	.label_825
.label_825:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	add	eax, -0x61
	sub	eax, 5
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_827
	jmp	.label_824
.label_824:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_826
.label_827:
	nop	
	mov	byte ptr [rbp - 9], 0
.label_826:
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
	#Procedure 0x40c140

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
	ja	.label_829
	jmp	.label_830
.label_830:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x41
	nop	
	add	eax, 0x61
	nop	
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	jmp	.label_831
.label_829:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
.label_831:
	nop	
	mov	eax, dword ptr [rbp - 8]
	pop	rbp
	nop	
	ret	
	.section .text
	.align	16
	#Procedure 0x40c190
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
	ja	.label_832
	mov	rbp, rbp
	jmp	.label_833
.label_833:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	sub	eax, 0x61
	mov	rsp, rsp
	add	eax, 0x41
	nop	
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_834
.label_832:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_834:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
